<?php
namespace app\home\controller;
use app\common\controller\Controller;

/**
 * 后台控制器基类
 * 用户后台操作必须继承该类
 */
class Admin extends Controller
{

    /**
     * 初始化方法
     * 
     */
    protected function _initialize()
    {
        // 登录检测
        if (!is_login()) {
            $this->redirect('Login/login');
        }

        // 设置后台display标记
        S('admin_menu_mark','user_nav');

        // 在多标签模式下，防止跳出后台框架
        $current_url = request()->module() . '/' . request()->controller() . '/' . request()->action();
        if ( strtolower(request()->module() . '/admin/index') !== strtolower($current_url)) {
            $this->assign('_admin_tabs', config('admin_tabs'));
            $this->assign('lock_url', U('admin/index') );
        }

    }


    // 显示后台默认页
    public function index(){
        $this->display();
    }


    /**
     * 切换开关类型状态
     * 
     */
    public function toggle($name)
    {
        $con          = array();
        $con['type']  = 'toggle';
        $con['name']  = $name;
        $config_model = D2('AdminConfig');
        $info         = $config_model->where($con)->find();
        if (!$info) {
            $this->error('不存在该配置');
        }
        if ($info['value'] == '1') {
            $result = $config_model->where($con)->setField('value', '0');
            if ($result) {
                $this->success('关闭' . $info['title'] . '成功');
            } else {
                $this->error('关闭' . $info['title'] . '失败' . $config_model->getError());
            }
        }
        if ($info['value'] == '0') {
            $result = $config_model->where($con)->setField('value', '1');
            if ($result) {
                $this->success('开启' . $info['title'] . '成功');
            } else {
                $this->error('开启' . $info['title'] . '失败' . $config_model->getError());
            }
        }
    }

}
