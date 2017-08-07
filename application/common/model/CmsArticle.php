<?php
namespace app\common\model;

/**
 * 文章模型
 * 
 */
class CmsArticle extends Model3 {

    public $tableName = 'cms_article';

    /**
     * 自动验证规则
     * 
     */
    protected $_validate = array(
        array('title', 'require', '文章标题不能为空', self::MUST_VALIDATE, 'regex', self::MODEL_INSERT),
    );
}
