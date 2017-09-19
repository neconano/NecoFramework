<?php
namespace app\common\model;

/**
 * 
 */
class Debug extends Model3 {
    /**
     * 数据库表名
     * 
     */
    protected $tableName = 'debug';


    // 获得数据
    public function do_get($id=''){

        $feature = [3 => '免费试听',
                    4 => '互动直播',
                    5 => '录播精讲',
                    6 => '口语陪练',
                    7 => '作文批改',
                    8 => '“浸泡式” 督导',
                    9 => '内部讲义',
                    10 => '在线团练群',
                    11 => '免费重听',
                    12 => '电子讲义'];

        $teacher = [3 => '钱桂明',
                    4 => '孙涛',
                    5 => '张茂浚',
                    6 => '卢雅桢',
                    7 => '智勇',
                    8 => '菲菲'];                    

        if($id){
            $w['id'] = $id;
            $info = D2('Debug')->where($w)->find();
            $info['feature'] = explode(',',$info['feature']);
            $category = explode(',',$info['category']);
            $info['category'] = $category;
            $info['lesson_type'] =explode(',',$info['lesson_type']);
            $info['teacher'] =explode(',',$info['teacher']);
        }
        $res['feature'] = $feature;
        $res['teacher'] = $teacher;
        $res['info'] = $info;
        return $res;
    }
    

    /**
     * 自动验证规则
     * 
     */
     protected $_validate = array(
        array('title','require','标题必须填写', self::EXISTS_VALIDATE, 'regex', self::MODEL_BOTH),
        array('title', '1,1024', '标题长度为1-32个字符', self::EXISTS_VALIDATE, 'length', self::MODEL_BOTH),
        array('description','require','课程描叙必须填写', self::EXISTS_VALIDATE, 'regex', self::MODEL_BOTH),
        array('feature','require','课程特色必须选择', self::EXISTS_VALIDATE, 'regex', self::MODEL_BOTH),
        array('category','require','课程分类必须填写', self::EXISTS_VALIDATE, 'regex', self::MODEL_BOTH),
        array('lesson_type','require','授课方式必须选择', self::EXISTS_VALIDATE, 'regex', self::MODEL_BOTH),
     );
    

    public function do_add($data)
    {
        $res['status'] = false;
        $data['feature']=implode(',',$data['feature']);
        $data['category']=$data['category'].','.$data['erjiradio'];
        $data['lesson_type']=implode(',',$data['lesson_type']);
        $data['teacher']=implode(',',$data['teacher']);
        
        $create = $this->create($data);
        if(!$create){
            $res['msg'] = $this->getError();
            return $res;
        }       
        if($data['id']){
            $info=$this->save($data);
        }else{
            $data['create_time']=time();
            $info=$this->add();
        }
        if ($info){
            $res['status'] = true;
            $res['msg'] = '新增成功';
        }else{
            $res['msg'] = $this->getError();
        }
        return $res;
        
    }
    



}