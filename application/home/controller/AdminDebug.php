<?php
namespace app\home\controller;

/**
 * 调试
 */
class AdminDebug extends Admin
{

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
