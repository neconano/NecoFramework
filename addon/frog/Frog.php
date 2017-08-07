<?php
namespace addon\frog;

use \app\common\controller\Addon;

/**
 * 青蛙插件
 * @author tomato
 */
class Frog extends Addon
{
    /**
     * 插件信息
     * 
     */
    public $info = array(
        'name'        => 'Frog',
        'title'       => '青蛙挂件',
        'description' => '有什么能帮您的么？',
        'status'      => 1,
        'author'      => '零云',
        'version'     => '1.0.0',
    );

    /**
     * 插件所需钩子
     * 
     */
    public $hooks = array(
        '0' => 'PageFooter',
    );

    /**
     * 插件安装方法
     * 
     */
    public function install()
    {
        return true;
    }

    /**
     * 插件卸载方法
     * 
     */
    public function uninstall()
    {
        return true;
    }

    /**
     * 实现的PageFooter钩子方法
     * 
     */
    public function PageFooter($param)
    {
        $config = $this->getConfig();
        $this->assign('config', $config);
        if (isset($config['status']) && $config['status'] == '1') {
            $this->display('index');
        }
    }
}
