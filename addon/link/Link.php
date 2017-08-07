<?php
namespace addon\link;

use \app\common\controller\Addon;

/**
 * 友情链接插件
 * @author jry 598821125@qq.com
 */
class Link extends Addon
{
    /**
     * 插件信息
     * 
     */
    public $info = array(
        'name'        => 'Link',
        'title'       => '友情链接插件',
        'description' => '友情链接插件',
        'status'      => 1,
        'author'      => '零云',
        'version'     => '1.0.0',
    );

    /**
     * 自定义插件后台
     * 
     */
    public $custom_adminlist = 'Link://Link/index';

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
}
