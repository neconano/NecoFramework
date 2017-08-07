<?php
namespace app\home\admin;
use app\admin\controller\Admin;

/**
 * 调试
 * 
 */
class Debug extends Admin
{

    public function bbb(){
        $this->display();
    }

    public function yyy(){
        $this->display('bbb');
    }

}
