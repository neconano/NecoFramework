<?php
namespace app\home\controller;
use nfutil\Page;
use Hooklife\ThinkphpWechat\Wechat;
use EasyWeChat\Foundation\Application;
use think\Config;
use think\Loader;

class Index extends Home
{
    private $openid;

    public function _initialize_weixin(){
		$wx_info = API('Weixinjs')->just_get_openid();
		$this->openid = $wx_info['openid'];
		$this->assign('openid', $wx_info['openid']);
		$this->assign('signPackage', $wx_info['signPackage']);
	}

	//系统首页 
    public function index(){
		// 分享加1
		if(I('add_time') && I('openid')){
			API('Mykal')->share_add_times(I('openid'));
			$re['status'] = true;
			echo json_encode($re);
			exit;
		}
        // 发红包
        if (IS_POST) {
			if(I('dotype') == 'try_to_send_redpacket'){
				// $re = API('Mykal')->try_send_red_pakage(I('openid'),444);
				$re = API('Mykal')->try_send_red_pakage(I('openid'),I('score'));
				echo json_encode($re);
				exit;
			}
			if(I('dotype') == 'get_left_times'){
				$times = API('Mykal')->get_left_times(I('openid'));
				$re['status'] = false;
				if($times){
					$re['status'] = true;
					$re['msg'] = $times;
				}
				echo json_encode($re);
				exit;
			}
		}

		$this->_initialize_weixin();
		// 判断是否可游戏
		$check = API('Mykal')->check_user_games($this->openid);
		if(!$check['status']){
			if($check['msg'] == '没有关注'){
				$this->display('to_subscribe');
			}else{
				$this->display('over');
			}
			return;
		}

    	$this->display();
	}



}
