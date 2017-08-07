<?php
namespace app\common\model;

/**
 * 文档类型
 * 
 */
class CmsType extends Model3 {

    protected $tableName = 'cms_type';

    /**
     * 自动验证规则
     * 
     */
    protected $_validate = array(
        array('name', 'require', '类型名称不能为空', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('name', '1,16', '类型名称长度为1-16个字符', self::EXISTS_VALIDATE, 'length', self::MODEL_BOTH),
        array('name', '', '类型名称已经存在', self::VALUE_VALIDATE, 'unique', self::MODEL_BOTH),
        array('title', 'require', '类型标题不能为空', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('title', '1,16', '类型标题长度为1-16个字符', self::EXISTS_VALIDATE, 'length'),
        array('title', '', '类型标题已经存在', self::VALUE_VALIDATE, 'unique', self::MODEL_BOTH),
    );

    /**
     * 自动完成规则
     * 
     */
    protected $_auto = array(
        array('field_sort', '{"1":["1"],"2":["9","7"]}', self::MODEL_INSERT),
        array('field_sort', 'json_encode', self::MODEL_UPDATE, 'function'),
        array('field_group', "1:基础\n2:扩展", self::MODEL_INSERT),
        array('create_time', 'time', self::MODEL_INSERT, 'function'),
        array('update_time', 'time', self::MODEL_BOTH, 'function'),
        array('status', '1', self::MODEL_INSERT),
    );
}
