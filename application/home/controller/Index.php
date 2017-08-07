<?php
namespace app\home\controller;
use nfutil\Page;

/**
 * 前台默认控制器
 * 
 */
class Index extends Home
{
    /**
     * 默认方法
     * 
     */
    public function index()
    {
        // abort(404,'调试模式下，测试异常输出');
        $this->assign('meta_title', "首页");
        $this->display();
    }

    // +----------------------------------------------------------------------
    // | 导航模块文章
    // +----------------------------------------------------------------------

    /**
     * 单页类型
     * 
     */
    public function page($id)
    {
        $nav_object    = D2('AdminNav');
        $con['id']     = $id;
        $con['status'] = 1;
        $info          = $nav_object->where($con)->find();
        if (!$info) {
            $this->error('文章不存在或已禁用');
        }

        // 显示模板
        $template = get_template('nav', $info['lists_template']);

        $this->assign('info', $info);
        $this->assign('meta_title', $info['title']);
        $this->display($template);
    }

    /**
     * 文章列表
     * 
     */
    public function lists($cid)
    {
        $nav_object    = D2('AdminNav');
        $con['id']     = $cid;
        $con['status'] = 1;
        $info          = $nav_object->where($con)->find();
        if (!$info) {
            $this->error('文章不存在或已禁用');
        }

        // 文章列表
        $map['status'] = 1;
        $map['cid']    = $cid;
        $p             = input('get.p', 1);
        $post_object   = D2('AdminPost');
        $data_list     = $post_object
            ->where($map)
            ->page($p, C("ADMIN_PAGE_ROWS"))
            ->order("sort desc,id desc")
            ->select();
        $page = new Page(
            $post_object->where($map)->count(),
            C("ADMIN_PAGE_ROWS")
        );
        
        // 显示模板
        $template = get_template('nav', $info['lists_template']);

        $this->assign('data_list', $data_list);
        $this->assign('page', $page->show());
        $this->assign('meta_title', $info['title']);
        $this->display($template);
    }

    /**
     * 文章详情
     * 
     */
    public function post($id)
    {
        $post_object   = D2('AdminPost');
        $con['id']     = $id;
        $con['status'] = 1;
        $info          = $post_object->where($con)->find();
        if (!$info) {
            $this->error('文章不存在或已禁用');
        }

        // 阅读量加1
        $result = $post_object->where(array('id' => $id))->SetInc('view_count');

        // 显示模板
        $template = get_template('nav', 'detail');

        $this->assign('info', $info);
        $this->assign('meta_title', $info['title']);
        $this->display($template);
    }


}
