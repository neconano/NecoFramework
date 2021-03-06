<?php
namespace addon\link\model;
use app\common\model\Model3;

/**
 * 友情链接模型
 * 
 */
class Link extends Model3
{
    /**
     * 数据库真实表名
     * 一般为了数据库的整洁，同时又不影响Model和Controller的名称
     * 我们约定每个模块的数据表都加上相同的前缀，比如微信模块用weixin作为数据表前缀
     * 
     */
    protected $tableName = 'addon_link';

    /**
     * 自动验证规则
     * 
     */
    protected $_validate = array(
        array('title', 'require', '标题不能为空', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('title', '1,80', '标题长度为1-80个字符', self::EXISTS_VALIDATE, 'length'),
        array('title', '', '标题已经存在', self::VALUE_VALIDATE, 'unique', self::MODEL_BOTH),
        array('url', 'require', '链接不能为空', self::MUST_VALIDATE, 'regex', self::MODEL_BOTH),
        array('url', '1,255', '链接长度为1-25个字符', self::EXISTS_VALIDATE, 'length'),
        array('url', '', '链接已经存在', self::VALUE_VALIDATE, 'unique', self::MODEL_BOTH),
    );

    /**
     * 自动完成规则
     * 
     */
    protected $_auto = array(
        array('create_time', 'time', self::MODEL_INSERT, 'function'),
        array('update_time', 'time', self::MODEL_BOTH, 'function'),
        array('status', '1', self::MODEL_INSERT),
    );

    /**
     * 链接类型
     * 
     */
    public function link_type($id)
    {
        $list['1'] = '友情链接';
        $list['2'] = '合作伙伴';
        return $id ? $list[$id] : $list;
    }
}
