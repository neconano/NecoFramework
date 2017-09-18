<?php
namespace app\home\admin;
use app\admin\controller\Admin;
use nfutil\Page;

/**
 * 调试
 * 
 */
class Debug extends Admin
{

    public function index() {
        // 搜索
        $keyword = I('keyword', '', 'string');
        $condition = array('like','%'.$keyword.'%');
        $map['id|title'] = array($condition, $condition, $condition,'_multi'=>true);

        if(I('s_cat1')){
            if(I('s_cat2'))
            $map['category'] = I('s_cat1').','.I('s_cat2') ;
            else
            $map['category'] = array('like',I('s_cat1').'%') ;
        }
        //排序
        if (I('dotype')=='sort'){
            if(!I('id'))
                $this->error("发生错误");
            $data['sort']=I('post.sort');
            $w['id'] = I('id');
            $re = D2('Debug')->where($w)->save($data);
            if($re !== false)
                $this->success("成功");
            $this->error("排序失败");
        }
        if (I('s_new')){
            $map['is_new']=I('s_new');
        }
        if (I('hot')){
            $map['is_hot']=I('hot');
        }
        $map['status'] = array('egt', '0');  // 禁用和正常状态
        $data_list = D2('Debug')
                   ->page(!empty(I('p'))?I('p'):1, C('ADMIN_PAGE_ROWS'))
                   ->where($map)
                   ->order('sort desc, id desc')
                   ->select();

        $page = new Page(D2('Debug')->where($map)->count(), C('ADMIN_PAGE_ROWS'));

        // 使用Builder快速建立列表页面。
        $builder = new \nfutil\builder\ListBuilder();
        // 设置搜索页
        $listbuilder = APP_PATH . strtolower(request()->module()) . '/view/admin/'.strtolower(request()->controller()).'/'.strtolower(request()->action()).'.html';

        // 设置最热按钮
        $hot['model']                   = 'dw_course_lesson';
        $hot['name']                    = 'set_hot';
        $hot['title']                   = '热门';
        $hot['callback']                = 'set_course_hot';
        $hot[$hot['name'].'0']['name']  = $new['name'];
        $hot[$hot['name'].'0']['title'] = '设置最热';
        $hot[$hot['name'].'0']['class'] = 'label label-success-outline label-pill ajax-get confirm';
        $hot[$hot['name'].'0']['href']  = url('set_new_hot',['id'=>'__data_id__','set_type'=>'hot']);
        $hot[$hot['name'].'1']['name']  = $new['name'];
        $hot[$hot['name'].'1']['title'] = '取消最热';
        $hot[$hot['name'].'1']['class'] = 'label label-warning-outline label-pill ajax-get confirm';
        $hot[$hot['name'].'1']['href']  = url('set_new_hot',['id'=>'__data_id__','set_type'=>'hot']);
        // 设置最新按钮
        $new['model']                   = 'dw_course_lesson';
        $new['name']                    = 'set_new';
        $new['title']                   = '最新';
        $new['callback']                = 'set_course_new';
        $new[$new['name'].'0']['name']  = $new['name'];
        $new[$new['name'].'0']['title'] = '设置最新';
        $new[$new['name'].'0']['class'] = 'label label-success-outline label-pill ajax-get confirm';
        $new[$new['name'].'0']['href']  = url('set_new_hot',['id'=>'__data_id__','set_type'=>'new']);
        $new[$new['name'].'1']['name']  = $new['name'];
        $new[$new['name'].'1']['title'] = '取消最新';
        $new[$new['name'].'1']['class'] = 'label label-warning-outline label-pill ajax-get confirm';
        $new[$new['name'].'1']['href']  = url('set_new_hot',['id'=>'__data_id__','set_type'=>'new']);

        $builder->setMetaTitle('模型列表')  // 设置页面标题
            ->addTopButton('addnew')    // 添加新增按钮
            ->addTopButton('resume')  // 添加启用按钮
            ->addTopButton('forbid')  // 添加禁用按钮
            ->setSearch('请输入ID/模型标题', U('index'))
            ->addTableColumn('id', 'ID')
            ->addTableColumn('title', '标题')
            ->addTableColumn('create_time', '创建时间', 'time')
            ->addTableColumn('click','点击量')
            ->addTableColumn('sort', '排序','','','10%')
            ->addTableColumn('status', '状态', 'status')
            ->addTableColumn('right_button', '操作', 'btn')
            ->setTableDataList($data_list)     // 数据列表
            ->setTableDataPage($page->show())  // 数据列表分页
            ->addRightButton('edit',['href'=>url('add',['id'=>'__data_id__'])])           // 添加编辑按钮
            ->addRightButton('forbid', ['model'=>'dw_course_lesson'])  // 添加禁用/启用按钮
            ->addRightButton('self',['name'=>'schedule','title'=>'课程安排','href'=>url('schedule_manage',['lesson_id'=>'__data_id__'])])
            ->addRightButton('self',$hot)
            ->addRightButton('self',$new)
            ->setTemplate('builder/list')
            ->display('',['_listbuilder_layout'=>$listbuilder]);
    }

    // 设置最热
    public function set_new_hot($id,$set_type){
        if(!$id || !$set_type)
            $this->error('错误');
        $w['id'] = $id;
        $lesson = D2('Debug')->where($w)->find();
        if($set_type == 'hot')
        $data['is_hot'] = $lesson['is_hot'] == 1 ? 0 : 1;
        if($set_type == 'new')
        $data['is_new'] = $lesson['is_new'] == 1 ? 0 : 1;
        D2('Debug')->where($w)->save($data);
        $this->success('成功');
    }

    public function yyy(){
        $this->display('bbb');
    }

}
