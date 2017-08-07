<?php

// 模块信息配置
return array(
    // 模块信息
    'info'       => array(
        'name'        => 'Home',
        'title'       => '用户界面',
        'icon'        => 'fa fa-cog',
        'icon_color'  => '#3CA6F1',
        'description' => '用户界面',
        'developer'   => 'Neconano',
        'version'     => '1.0.0',
    ),

    // 用户后台目录
    'user_nav' => array(
        'admin_menu_1' => array(
            '11000' => array(
                'pid'   => '0',
                'title' => '调试主导航1',
                'icon'  => 'fa fa-user',
            ),
            '11100' => array(
                'pid'   => '11000',
                'title' => '调试主导航1一级',
                'icon'  => 'fa fa-rss-square',
            ),
            '11110' => array(
                'pid'   => '11100',
                'title' => '调试主导航1二级bbb',
                'icon'  => 'fa',
                'url'   => 'adminDebug/bbb',
            ),
            '11120' => array(
                'pid'   => '11100',
                'title' => '调试主导航1二级yyy',
                'icon'  => 'fa',
                'url'   => 'adminDebug/yyy',
            ),
        ),
        // 注意key值
        'admin_menu_2' => array(
            '21000' => array(
                'pid'   => '0',
                'title' => '调试主导航2',
                'icon'  => 'fa fa-user',
            ),
            '21100' => array(
                'pid'   => '21000',
                'title' => '调试主导航2一级',
                'icon'  => 'fa fa-rss-square',
            ),
            '21110' => array(
                'pid'   => '21100',
                'title' => '调试主导航2二级ccc',
                'icon'  => 'fa',
                'url'   => 'adminDebug/ccc',
            ),
        ),



    ),



    // 系统菜单及权限节点配置
    'admin_menu' => array(
        '1' => array(
            'pid'   => '0',
            'title' => '调试主导航3',
            'icon'  => 'fa fa-user',
        ),
        '2' => array(
            'pid'   => '1',
            'title' => '调试主导航3一级',
            'icon'  => 'fa fa-rss-square',
        ),
        '3' => array(
            'pid'   => '2',
            'title' => '调试主导航3二级bbb',
            'icon'  => 'fa',
            'url'   => 'home/debug/bbb',
        ),
        '4' => array(
            'pid'   => '2',
            'title' => '调试主导航3二级yyy',
            'icon'  => 'fa',
            'url'   => 'home/debug/yyy',
        ),

    )



);
