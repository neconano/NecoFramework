<?php
namespace app\common\api;
use app\common\api\Base;
use think\Config;
use EasyWeChat\Foundation\Application;
use Hooklife\ThinkphpWechat\Wechat;
/**
 */
class Mykal extends Base
{   

    // 判断是否可游戏
    public function check_user_games($openid){
        $re['status'] = false;
        // 初始化游戏设置
        $www['openid'] = $openid;
        $www['date'] = date('Y-m-d',time());
        $game = D2('MykalWeixinGameSet')->where($www)->find();
        if($game){
            $ok = $this->check_game_times($openid);
            if(!$ok){
                $re['msg'] = '今天已经超过次数';
                return false;
            }
        }else{
            // 获得用户信息
            $user = $this->get_user_info($openid);
            if(!$user){
                $re['msg'] = '异常错误';
                return $re;
            }
            // 判断是否关注
            if(!$user['subscribe']){
                $re['msg'] = '没有关注';
                return $re;
            }
            $data['openid'] = $openid;
            $data['date'] = date('Y-m-d',time());
            $data['game_times'] = 2;
            D2('MykalWeixinGameSet')->add($data);
        }
        $re['status'] = true;
        return $re;
    }
    
    // 获得用户信息
    public function get_user_info($openid){
		// 获得用户信息
		$token = Wechat::access_token()->getToken();
		$url = 'https://api.weixin.qq.com/cgi-bin/user/info?access_token='.$token.'&openid='.$openid.'&lang=zh_CN ';
		$user= file_get_contents($url);
		$user = json_decode($user);
        $user = object2array($user);
        return $user;
    }
    

    // 尝试发红包
    public function check_game_times($openid){
        $www22['openid'] = $openid;
        $www22['date'] = date('Y-m-d',time());
        $check_g_num = D2('MykalWeixinGameLog')->where($www22)->count();
        // 判断
        $ww['openid'] = $openid;
        $ww['date'] = date('Y-m-d',time());
        $game = D2('MykalWeixinGameSet')->where($ww)->find();
        if($check_g_num >= $game['game_times']){
            return false;
        }
        return true;
    }

    // 尝试发红包
    public function try_send_red_pakage($openid,$score){
        $re['status'] = false;
        $fail = 0;
        // 1.得分超过130分，红包范围1-1.3元
        if($score<3){
            $fail = 1;
            $re['msg'] = '得分不够';
        }
        // 2.只能得一次红包
        if(!$fail){
            $www11['openid'] = $openid;
            $www11['money'] = array('gt',0);
            $check_num = D2('MykalWeixinGameLog')->where($www11)->count();
            if($check_num){
                $fail = 1;
                $re['msg'] = '已经获得过红包';
            }
        }
        // 3.游戏最多一天玩3次
        if(!$fail){
            $ok = $this->check_game_times($openid);
            if(!$ok){
                $fail = 1;
                $re['msg'] = '今天已经超过次数';
                return $re;
            }
        }
        // 发红包
        if(!$fail){
            $result = $this->send_red_pakage($openid);
            if($result['return_code'] == 'SUCCESS'){
                // 发送成功，添加纪录
                $data['money'] = $result['total_amount'];
                $re['status'] =  true;
            }else{
                $re['msg'] = $result['return_msg'];
            }
        }
        $data['openid'] = $openid;
        $data['date'] = date('Y-m-d',time());
        $data['date_line'] = time();
        $data['score'] = $score;
        D2('MykalWeixinGameLog')->add($data);
        return $re;
    }

    // 发红包
    public function send_red_pakage($openid){
        $luckyMoneyData = [
            'mch_billno'       => 'mykal'.time(), // 订单号
            'send_name'        => '测试红包',
            're_openid'        => $openid,
            'total_num'        => 1,  //固定为1，可不传
            'total_amount'     => rand(100,130),  //单位为分，不小于100
            'wishing'          => '测试祝福语',
            'client_ip'        => '',  //可不传，不传则由 SDK 取当前客户端 IP
            'act_name'         => '测试活动',
            'remark'           => '测试备注',
        ];
        $result = API('Weixinjs')->send_red_pakage($openid,$luckyMoneyData);
		$result = json_decode($result);
        $result = object2array($result);
        return $result;
    }
        
    // 分享加1次
    public function share_add_times($openid){
        $www['openid'] = $openid;
        $www['date'] = date('Y-m-d',time());
        $data['game_times'] = 3;
        return D2('MykalWeixinGameSet')->where( $www)->save($data);
    }        

    // 获得今天剩余次数
    public function get_left_times($openid){
        $www11['openid'] = $openid;
        $www11['date'] = date('Y-m-d',time());
        $check_num = D2('MykalWeixinGameLog')->where($www11)->count();
        $set = D2('MykalWeixinGameSet')->where( $www11)->find();      
        return $set['game_times']-$check_num;
    }        



}
