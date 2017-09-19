<?php
namespace app\home\controller;

/**
 * 调试
 */
class AdminDebug extends Admin
{

    // 显示后台默认页
    public function index(){
        A("home/admin/index",'controller');
    }

    public function bbb(){
        $this->display();
    }

    public function yyy(){
        $this->display('bbb');
    }

    public function ccc(){
        $this->display('bbb');
    }


}
