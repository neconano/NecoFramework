<?php
namespace app\home\controller;

/**
 * 扩展控制器
 */
class Addon11fasdfsaf123123 extends Home
{
    /**
     * 外部执行插件方法
     * 
     */
    public function execute($_addons = null, $_controller = null, $_action = null)
    {
        if (C('URL_CASE_INSENSITIVE')) {
            $_addons     = ucfirst(parse_name($_addons, 1));
            $_controller = parse_name($_controller, 1);
        }

        $TMPL_PARSE_STRING                  = C('TMPL_PARSE_STRING');
        $TMPL_PARSE_STRING['__ADDONROOT__'] = Env::get("url_adn_domain") .'/'. "{$_addons}";
        C('TMPL_PARSE_STRING', $TMPL_PARSE_STRING);

        if (!empty($_addons) && !empty($_controller) && !empty($_action)) {
            $Addons = A("Addons://{$_addons}/{$_controller}")->$_action();
        } else {
            $this->error('没有指定插件名称，控制器或操作！');
        }
    }

    /**
     * 模板显示 调用内置的模板引擎显示方法，
     * @access protected
     * @param string $template 指定要调用的模板文件
     * @return void
     */
    protected function display($template = '', $vars = [], $replace = [], $config = [])
    {
        $file = T('Addons://' . parse_name($_GET['_addons'], 1) . '@./' . ucfirst($_GET['_controller']) . '/' . $_GET['_action']);
        if (MODULE_MARK === 'Home') {
            if (C('current_theme')) {
                $template = './theme/' . C('current_theme') . '/home/addons/' . parse_name($_GET['_addons'], 1)
                . '/' . ucfirst($_GET['_controller']) . '/' . $_GET['_action'] . '.html';
                if (is_file($template)) {
                    $file = $template;
                }
                if (request()->isMobile()) {
                    $wap_template = './theme/' . C('current_theme') . '/home/wap/addons/' . parse_name($_GET['_addons'], 1)
                    . '/' . ucfirst($_GET['_controller']) . '/' . $_GET['_action'] . '.html';
                    if (is_file($wap_template)) {
                        $file = $wap_template;
                    }
                }
            } else {
                if (request()->isMobile()) {
                    $wap_template = './addons/' . parse_name($_GET['_addons'], 1) . '/view/wap/'
                    . ucfirst($_GET['_controller']) . '/' . $_GET['_action'] . '.html';
                    if (is_file($wap_template)) {
                        $file = $wap_template;
                    }
                }
            }
        }
        define('IS_ADDON', true);
        parent::display($file); // 重要：要避免陷入$this->display()循环
    }
}
