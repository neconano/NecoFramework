<?php
namespace app\common\api;
use app\common\api\Base;
use think\Config;
use EasyWeChat\Foundation\Application;

/**
 */
class Weixinjs extends Base{
    
    private $CreateOauth;
    private $JSSDK;
    private $appid;
    private $appsecret;
    
    protected function _init(){
        $wechat = Config::get('wechat');
        $this->appid = $wechat['app_id'];
        $this->appsecret = $wechat['secret'];
        $access_token = "access_token.json";
        $jsapi_ticket = "jsapi_ticket.json";
		$this->CreateOauth = new \weixin\CreateOauth ($this->appid,$this->appsecret,30);
        $this->JSSDK = new \weixin\JSSDK ($this->appid,$this->appsecret,$access_token,$jsapi_ticket);
    }

    /**
     * 授权页面
     */
    public function need_auth(){
		/*判断Cookie存留*/
		if(cookie('weixininfo')){
			$userinfo = cookie('weixininfo');
		}
		else{
			/*获得授权验证*/
			$code = $_GET['code'];
			$userinfo = $this->createOauthUrlForCode('',$code);
		}
		$wx_info['userinfo'] = $userinfo;
		$wx_info['signPackage'] = $this->getSignPackage();
		return $wx_info;
	}
	
    /**
     * 非授权页面
     */
    public function just_get_openid(){
		/*判断Cookie存留*/
		if(cookie('openid')){
			$openid = cookie('openid');
		}
		else{
			$code = $_GET['code'];
			//不弹出确认
			$openid = $this->createOauthUrlLite('',$code);
		}
		/*初始化*/
		$wx_info['openid'] = $openid;
		$wx_info['signPackage'] = $this->getSignPackage();
		return $wx_info;
	}

	/*获得授权验证*/
	/*执行逻辑：首先编译URL请求地址，判断是否已经授权（既用不弹出授权判断），如果未授权则弹出授权*/
	public function createOauthUrlForCode($call_url='',$code=''){
		if(!$call_url)
			$call_url = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
		if($code){
			$this->setCode($code);
			$userinfo = $this->getUserInfo();
			if($userinfo['openid']){
				cookie('openid',$userinfo['openid']);
				cookie('weixininfo',$userinfo);
				return $userinfo;
			}
			else
				$this->CreateOauth = new \weixin\CreateOauth ($this->appid,$this->appsecret,30,true);
		}
		$url = $this->CreateOauth->createOauthUrlForCode($call_url);
		Header("Location: $url");
	}
	
	/*获得openid*/
	public function createOauthUrlLite($call_url='',$code=''){
		if(!$call_url)
            $call_url = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
		if($code){
            $this->setCode($code);
            $openid = $this->getOpenid();
			if($openid){
				cookie('openid',$openid);
				return $openid;
            }else{
                return false;
            }
		}
		$url = $this->CreateOauth->createOauthUrlForCode($call_url);
		Header("Location: $url");
	}

	public function setCode($code){
		$this->CreateOauth->setCode($code);
	}

	// 认证后获得用户信息
	public function getUserInfo(){
		return $this->CreateOauth->getUserInfo();
	}

	// 获得jssdk
	public function getSignPackage($url=""){
		return $this->JSSDK->getSignPackage($url);
	}

	/*验证后获得openid*/
	public function getOpenid(){
		$openid = $this->CreateOauth->getOpenid();
		cookie('openid',$openid);
		return $openid;
	}
	

    // 发红包
    public function send_red_pakage($openid,$luckyMoneyData){
        if(!$openid || !$luckyMoneyData){
            return false;
        }
        $options = Config::get('wechat');
        $options['payment'] = Config::get('payment');
        $app = new Application($options);
        $luckyMoney = $app->lucky_money;
        $result = $luckyMoney->send($luckyMoneyData, \EasyWeChat\Payment\LuckyMoney\API::TYPE_NORMAL);
        return $result; 
    }
	
	
	
	
}