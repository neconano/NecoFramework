/*
Navicat MySQL Data Transfer

Source Server         : lc
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : neco_framework

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-09-19 14:13:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for nf_addon_link
-- ----------------------------
DROP TABLE IF EXISTS `nf_addon_link`;
CREATE TABLE `nf_addon_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `logo` varchar(255) NOT NULL DEFAULT '' COMMENT 'logo',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `type` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of nf_addon_link
-- ----------------------------
INSERT INTO `nf_addon_link` VALUES ('1', '青云', '/addon/Link/img/qingcloud.png', 'http://qingcloud.com', '2', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('2', '氪空间', '/addon/Link/img/krspace.png', 'http://krspace.cn', '2', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('3', '阿里云', '/addon/Link/img/aliyun.png', 'http://aliyun.com', '2', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('4', 'Coding', '/addon/Link/img/coding.png', 'http://coding.net', '2', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('5', '七牛云', '/addon/Link/img/qiniu.png', 'http://qiniu.com', '2', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('6', 'Ucloud', '/addon/Link/img/ucloud.png', 'http://ucloud.cn', '2', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('7', '开源中国', '/addon/Link/img/oschina.png', 'http://oschina.net', '2', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('10', '猿团', '', 'http://www.yuantuan.com', '1', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('11', '36氪', '', 'http://36kr.com', '1', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('12', '程序员客栈', '', 'http://www.proginn.com', '1', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('13', 'Leangoo敏捷协作工具', '', 'http://www.leangoo.com', '1', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('14', '百度软件开放平台', '', 'http://open.rj.baidu.com', '1', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('15', '快递100', '', 'http://kuaidi100.com', '1', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('16', 'Framework7', '', 'http://framework7.taobao.org', '1', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('17', 'Cordova', '', 'http://cordova.apache.org', '1', '1481175884', '1481175884', '0', '1');
INSERT INTO `nf_addon_link` VALUES ('18', 'ThinkPHP', '', 'http://thinkphp.cn', '1', '1481175884', '1481175884', '0', '1');

-- ----------------------------
-- Table structure for nf_admin_access
-- ----------------------------
DROP TABLE IF EXISTS `nf_admin_access`;
CREATE TABLE `nf_admin_access` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `group` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '管理员用户组',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='后台管理员与用户组对应关系表';

-- ----------------------------
-- Records of nf_admin_access
-- ----------------------------
INSERT INTO `nf_admin_access` VALUES ('1', '1', '1', '1438651748', '1438651748', '0', '1');
INSERT INTO `nf_admin_access` VALUES ('2', '2', '2', '1500343055', '1500346218', '0', '1');

-- ----------------------------
-- Table structure for nf_admin_addon
-- ----------------------------
DROP TABLE IF EXISTS `nf_admin_addon`;
CREATE TABLE `nf_admin_addon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) DEFAULT NULL COMMENT '插件名或标识',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '中文名',
  `description` text NOT NULL COMMENT '插件描述',
  `config` text COMMENT '配置',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `version` varchar(8) NOT NULL DEFAULT '' COMMENT '版本号',
  `adminlist` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台列表',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '插件类型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='插件表';

-- ----------------------------
-- Records of nf_admin_addon
-- ----------------------------
INSERT INTO `nf_admin_addon` VALUES ('1', 'Frog', '青蛙挂件', '有什么能帮您的么？', '{\"status\":\"1\",\"frog_say\":\"\\u6253100\\u5143\\u5230\\u6211\\u652f\\u4ed8\\u5b9d\\u6211\\u4eec\\u8fd8\\u662f\\u597d\\u670b\\u53cb~\"}', '零云', '1.0.0', '0', '0', '1484561439', '1484561439', '0', '1');
INSERT INTO `nf_admin_addon` VALUES ('2', 'Link', '友情链接插件', '友情链接插件', 'null', '零云', '1.0.0', '1', '0', '1484561441', '1484561441', '0', '1');
INSERT INTO `nf_admin_addon` VALUES ('3', 'RocketToTop', '小火箭返回顶部', '小火箭返回顶部', '{\"status\":\"1\"}', '零云', '1.0.0', '0', '0', '1484561441', '1484561441', '0', '1');

-- ----------------------------
-- Table structure for nf_admin_config
-- ----------------------------
DROP TABLE IF EXISTS `nf_admin_config`;
CREATE TABLE `nf_admin_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '配置标题',
  `name` varchar(32) DEFAULT NULL COMMENT '配置名称',
  `value` text NOT NULL COMMENT '配置值',
  `group` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `type` varchar(16) NOT NULL DEFAULT '' COMMENT '配置类型',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '配置额外值',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of nf_admin_config
-- ----------------------------
INSERT INTO `nf_admin_config` VALUES ('1', '站点开关', 'TOGGLE_WEB_SITE', '1', '1', 'toggle', '0:关闭\r\n1:开启', '站点关闭后将不能访问', '1378898976', '1406992386', '1', '1');
INSERT INTO `nf_admin_config` VALUES ('2', '网站标题', 'WEB_SITE_TITLE', 'NecoFramework', '1', 'text', '', '网站标题前台显示标题', '1378898976', '1501652737', '2', '1');
INSERT INTO `nf_admin_config` VALUES ('3', '网站口号', 'WEB_SITE_SLOGAN', '自用传播', '1', 'text', '', '网站口号、宣传标语、一句话介绍', '1434081649', '1434081649', '3', '1');
INSERT INTO `nf_admin_config` VALUES ('4', '网站LOGO', 'WEB_SITE_LOGO', '', '1', 'picture', '', '网站LOGO', '1407003397', '1407004692', '4', '1');
INSERT INTO `nf_admin_config` VALUES ('5', '网站反色LOGO', 'WEB_SITE_LOGO_INVERSE', '', '1', 'picture', '', '匹配深色背景上的LOGO', '1476700797', '1476700797', '5', '1');
INSERT INTO `nf_admin_config` VALUES ('6', '网站描述', 'WEB_SITE_DESCRIPTION', '追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等开放化低耦合设计', '1', 'textarea', '', '网站搜索引擎描述', '1378898976', '1501652700', '6', '1');
INSERT INTO `nf_admin_config` VALUES ('7', '网站关键字', 'WEB_SITE_KEYWORD', '', '1', 'textarea', '', '网站搜索引擎关键字', '1378898976', '1381390100', '7', '1');
INSERT INTO `nf_admin_config` VALUES ('8', '版权信息', 'WEB_SITE_COPYRIGHT', 'Copyright © NecoFramework All rights reserved', '1', 'text', '', '设置在网站底部显示的版权信息', '1406991855', '1501654997', '8', '1');
INSERT INTO `nf_admin_config` VALUES ('9', '网站备案号', 'WEB_SITE_ICP', '', '1', 'text', '', '设置在网站底部显示的备案号', '1378900335', '1415983236', '9', '1');
INSERT INTO `nf_admin_config` VALUES ('10', '站点统计', 'WEB_SITE_STATISTICS', '', '1', 'textarea', '', '支持百度、Google、cnzz等所有Javascript的统计代码', '1378900335', '1415983236', '10', '1');
INSERT INTO `nf_admin_config` VALUES ('11', '公司名称', 'COMPANY_TITLE', '', '3', 'text', '', '', '1481014715', '1481014715', '1', '1');
INSERT INTO `nf_admin_config` VALUES ('12', '公司地址', 'COMPANY_ADDRESS', '', '3', 'text', '', '', '1481014768', '1481014768', '2', '1');
INSERT INTO `nf_admin_config` VALUES ('13', '公司邮箱', 'COMPANY_EMAIL', '', '3', 'text', '', '', '1481014914', '1481014914', '3', '1');
INSERT INTO `nf_admin_config` VALUES ('14', '公司电话', 'COMPANY_PHONE', '', '3', 'text', '', '', '1481014961', '1481014961', '4', '1');
INSERT INTO `nf_admin_config` VALUES ('15', '公司QQ', 'COMPANY_QQ', '', '3', 'text', '', '', '1481015016', '1481015016', '5', '1');
INSERT INTO `nf_admin_config` VALUES ('16', '公司QQ群', 'COMPANY_QQQUN', '', '3', 'text', '', '', '1481015198', '1481015198', '6', '1');
INSERT INTO `nf_admin_config` VALUES ('17', '网站二维码', 'QR_CODE', '', '3', 'picture', '', '', '1481009623', '1481009623', '7', '1');
INSERT INTO `nf_admin_config` VALUES ('18', 'IOS二维码', 'QR_IOS', '', '3', 'picture', '', '', '1481009623', '1481009623', '8', '1');
INSERT INTO `nf_admin_config` VALUES ('19', '安卓二维码', 'QR_ANDROID', '', '3', 'picture', '', '', '1481009921', '1481009921', '9', '1');
INSERT INTO `nf_admin_config` VALUES ('20', '微信二维码', 'QR_WEIXIN', '', '3', 'picture', '', '', '1481009959', '1481009959', '10', '1');
INSERT INTO `nf_admin_config` VALUES ('21', '文件上传大小', 'UPLOAD_FILE_SIZE', '2', '5', 'num', '', '文件上传大小单位：MB', '1428681031', '1428681031', '1', '1');
INSERT INTO `nf_admin_config` VALUES ('22', '图片上传大小', 'UPLOAD_IMAGE_SIZE', '0.5', '5', 'num', '', '图片上传大小单位：MB', '1428681071', '1428681071', '2', '1');
INSERT INTO `nf_admin_config` VALUES ('23', '后台多标签', 'ADMIN_TABS', '0', '5', 'toggle', '0:关闭\r\n1:开启', '', '1453445526', '1453445526', '3', '1');
INSERT INTO `nf_admin_config` VALUES ('24', '分页数量', 'ADMIN_PAGE_ROWS', '10', '5', 'num', '', '分页时每页的记录数', '1434019462', '1434019481', '4', '1');
INSERT INTO `nf_admin_config` VALUES ('25', '后台主题', 'ADMIN_THEME', 'admin', '5', 'select', 'admin:默认主题\r\naliyun:阿里云风格', '后台界面主题', '1436678171', '1436690570', '5', '1');
INSERT INTO `nf_admin_config` VALUES ('26', '导航分组', 'NAV_GROUP_LIST', 'top:顶部导航\r\nmain:主导航\r\nbottom:底部导航\r\nwap_bottom:Wap底部导航', '5', 'array', '', '导航分组', '1458382037', '1458382061', '6', '1');
INSERT INTO `nf_admin_config` VALUES ('27', '配置分组', 'CONFIG_GROUP_LIST', '1:基本\r\n3:扩展\r\n5:系统\r\n7:部署', '5', 'array', '', '配置分组', '1379228036', '1426930700', '7', '1');
INSERT INTO `nf_admin_config` VALUES ('28', '开发模式', 'DEVELOP_MODE', '1', '7', 'toggle', '1:开启\r\n0:关闭', '开发模式下会显示菜单管理、配置管理、数据字典等开发者工具', '1432393583', '1432393583', '1', '1');
INSERT INTO `nf_admin_config` VALUES ('29', '页面Trace', 'APP_TRACE', '0', '7', 'toggle', '0:关闭\r\n1:开启', '是否显示页面Trace信息', '1387165685', '1387165685', '2', '1');

-- ----------------------------
-- Table structure for nf_admin_group
-- ----------------------------
DROP TABLE IF EXISTS `nf_admin_group`;
CREATE TABLE `nf_admin_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级部门ID',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '部门名称',
  `icon` varchar(31) NOT NULL DEFAULT '' COMMENT '图标',
  `menu_auth` text NOT NULL COMMENT '权限列表',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='部门信息表';

-- ----------------------------
-- Records of nf_admin_group
-- ----------------------------
INSERT INTO `nf_admin_group` VALUES ('1', '0', '超级管理员', '', '', '1426881003', '1427552428', '0', '1');
INSERT INTO `nf_admin_group` VALUES ('2', '0', 'admin1', '', '{\"Admin\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"12\",\"13\",\"14\",\"15\",\"16\",\"17\",\"18\",\"19\",\"20\",\"21\",\"22\"]}', '1500262145', '1501039077', '0', '1');
INSERT INTO `nf_admin_group` VALUES ('3', '0', 'user1', '', 'null', '1501039750', '1501039750', '0', '1');

-- ----------------------------
-- Table structure for nf_admin_hook
-- ----------------------------
DROP TABLE IF EXISTS `nf_admin_hook`;
CREATE TABLE `nf_admin_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '钩子ID',
  `name` varchar(32) DEFAULT NULL COMMENT '钩子名称',
  `description` text NOT NULL COMMENT '描述',
  `addons` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子挂载的插件',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '类型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='钩子表';

-- ----------------------------
-- Records of nf_admin_hook
-- ----------------------------
INSERT INTO `nf_admin_hook` VALUES ('1', 'AdminIndex', '后台首页小工具', '后台首页小工具', '1', '1446522155', '1446522155', '1');
INSERT INTO `nf_admin_hook` VALUES ('2', 'FormBuilderExtend', 'FormBuilder类型扩展Builder', '', '1', '1447831268', '1447831268', '1');
INSERT INTO `nf_admin_hook` VALUES ('3', 'UploadFile', '上传文件钩子', '', '1', '1407681961', '1407681961', '1');
INSERT INTO `nf_admin_hook` VALUES ('4', 'PageHeader', '页面header钩子，一般用于加载插件CSS文件和代码', '', '1', '1407681961', '1407681961', '1');
INSERT INTO `nf_admin_hook` VALUES ('5', 'PageFooter', '页面footer钩子，一般用于加载插件CSS文件和代码', 'Frog,RocketToTop', '1', '1407681961', '1407681961', '1');
INSERT INTO `nf_admin_hook` VALUES ('6', 'CommonHook', '通用钩子，自定义用途，一般用来定制特殊功能', '', '1', '1456147822', '1456147822', '1');

-- ----------------------------
-- Table structure for nf_admin_module
-- ----------------------------
DROP TABLE IF EXISTS `nf_admin_module`;
CREATE TABLE `nf_admin_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(31) DEFAULT NULL COMMENT '名称',
  `title` varchar(63) NOT NULL DEFAULT '' COMMENT '标题',
  `logo` varchar(63) NOT NULL DEFAULT '' COMMENT '图片图标',
  `icon` varchar(31) NOT NULL DEFAULT '' COMMENT '字体图标',
  `icon_color` varchar(7) NOT NULL DEFAULT '' COMMENT '字体图标颜色',
  `description` varchar(127) NOT NULL DEFAULT '' COMMENT '描述',
  `developer` varchar(31) NOT NULL DEFAULT '' COMMENT '开发者',
  `version` varchar(7) NOT NULL DEFAULT '' COMMENT '版本',
  `user_nav` text NOT NULL COMMENT '个人中心导航',
  `config` text NOT NULL COMMENT '配置',
  `admin_menu` text NOT NULL COMMENT '菜单节点',
  `is_system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许卸载',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='模块功能表';

-- ----------------------------
-- Records of nf_admin_module
-- ----------------------------
INSERT INTO `nf_admin_module` VALUES ('1', 'Admin', '系统', '', 'fa fa-cog', '#3CA6F1', '核心系统', 'Neconano', '2.0.0', '', '', '{\"1\":{\"pid\":\"0\",\"title\":\"\\u7cfb\\u7edf\",\"icon\":\"fa fa-cog\",\"level\":\"system\",\"id\":\"1\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u7cfb\\u7edf\\u529f\\u80fd\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u7cfb\\u7edf\\u8bbe\\u7f6e\",\"icon\":\"fa fa-wrench\",\"url\":\"Admin\\/Config\\/group\",\"id\":\"3\"},\"4\":{\"pid\":\"3\",\"title\":\"\\u4fee\\u6539\\u8bbe\\u7f6e\",\"url\":\"Admin\\/Config\\/groupSave\",\"id\":\"4\"},\"5\":{\"pid\":\"2\",\"title\":\"\\u5bfc\\u822a\\u7ba1\\u7406\",\"icon\":\"fa fa-map-signs\",\"url\":\"Admin\\/Nav\\/index\",\"id\":\"5\"},\"6\":{\"pid\":\"5\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Nav\\/add\",\"id\":\"6\"},\"7\":{\"pid\":\"5\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Nav\\/edit\",\"id\":\"7\"},\"8\":{\"pid\":\"5\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Nav\\/setStatus\",\"id\":\"8\"},\"9\":{\"pid\":\"2\",\"title\":\"\\u5e7b\\u706f\\u7ba1\\u7406\",\"icon\":\"fa fa-image\",\"url\":\"Admin\\/Slider\\/index\",\"id\":\"9\"},\"10\":{\"pid\":\"9\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Slider\\/add\",\"id\":\"10\"},\"11\":{\"pid\":\"9\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Slider\\/edit\",\"id\":\"11\"},\"12\":{\"pid\":\"9\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Slider\\/setStatus\",\"id\":\"12\"},\"13\":{\"pid\":\"2\",\"title\":\"\\u914d\\u7f6e\\u7ba1\\u7406\",\"icon\":\"fa fa-cogs\",\"url\":\"Admin\\/Config\\/index\",\"id\":\"13\"},\"14\":{\"pid\":\"13\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Config\\/add\",\"id\":\"14\"},\"15\":{\"pid\":\"13\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Config\\/edit\",\"id\":\"15\"},\"16\":{\"pid\":\"13\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Config\\/setStatus\",\"id\":\"16\"},\"17\":{\"pid\":\"2\",\"title\":\"\\u4e0a\\u4f20\\u7ba1\\u7406\",\"icon\":\"fa fa-upload\",\"url\":\"Admin\\/Upload\\/index\",\"id\":\"17\"},\"18\":{\"pid\":\"17\",\"title\":\"\\u4e0a\\u4f20\\u6587\\u4ef6\",\"url\":\"Admin\\/Upload\\/upload\",\"id\":\"18\"},\"19\":{\"pid\":\"17\",\"title\":\"\\u5220\\u9664\\u6587\\u4ef6\",\"url\":\"Admin\\/Upload\\/delete\",\"id\":\"19\"},\"20\":{\"pid\":\"17\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Upload\\/setStatus\",\"id\":\"20\"},\"21\":{\"pid\":\"17\",\"title\":\"\\u4e0b\\u8f7d\\u8fdc\\u7a0b\\u56fe\\u7247\",\"url\":\"Admin\\/Upload\\/downremoteimg\",\"id\":\"21\"},\"22\":{\"pid\":\"17\",\"title\":\"\\u6587\\u4ef6\\u6d4f\\u89c8\",\"url\":\"Admin\\/Upload\\/fileManager\",\"id\":\"22\"},\"23\":{\"pid\":\"1\",\"title\":\"\\u7cfb\\u7edf\\u6743\\u9650\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"23\"},\"24\":{\"pid\":\"23\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa fa-user\",\"url\":\"Admin\\/User\\/index\",\"id\":\"24\"},\"25\":{\"pid\":\"24\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/User\\/add\",\"id\":\"25\"},\"26\":{\"pid\":\"24\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/User\\/edit\",\"id\":\"26\"},\"27\":{\"pid\":\"24\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/User\\/setStatus\",\"id\":\"27\"},\"28\":{\"pid\":\"23\",\"title\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"icon\":\"fa fa-lock\",\"url\":\"Admin\\/Access\\/index\",\"id\":\"28\"},\"29\":{\"pid\":\"28\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Access\\/add\",\"id\":\"29\"},\"30\":{\"pid\":\"28\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Access\\/edit\",\"id\":\"30\"},\"31\":{\"pid\":\"28\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Access\\/setStatus\",\"id\":\"31\"},\"32\":{\"pid\":\"23\",\"title\":\"\\u7528\\u6237\\u7ec4\\u7ba1\\u7406\",\"icon\":\"fa fa-sitemap\",\"url\":\"Admin\\/Group\\/index\",\"id\":\"32\"},\"33\":{\"pid\":\"32\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Admin\\/Group\\/add\",\"id\":\"33\"},\"34\":{\"pid\":\"32\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Admin\\/Group\\/edit\",\"id\":\"34\"},\"35\":{\"pid\":\"32\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Group\\/setStatus\",\"id\":\"35\"},\"36\":{\"pid\":\"1\",\"title\":\"\\u6269\\u5c55\\u4e2d\\u5fc3\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"36\"},\"44\":{\"pid\":\"36\",\"title\":\"\\u529f\\u80fd\\u6a21\\u5757\",\"icon\":\"fa fa-th-large\",\"url\":\"Admin\\/Module\\/index\",\"id\":\"44\"},\"45\":{\"pid\":\"44\",\"title\":\"\\u5b89\\u88c5\",\"url\":\"Admin\\/Module\\/install\",\"id\":\"45\"},\"46\":{\"pid\":\"44\",\"title\":\"\\u5378\\u8f7d\",\"url\":\"Admin\\/Module\\/uninstall\",\"id\":\"46\"},\"47\":{\"pid\":\"44\",\"title\":\"\\u66f4\\u65b0\\u4fe1\\u606f\",\"url\":\"Admin\\/Module\\/updateInfo\",\"id\":\"47\"},\"48\":{\"pid\":\"44\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Module\\/setStatus\",\"id\":\"48\"},\"49\":{\"pid\":\"36\",\"title\":\"\\u63d2\\u4ef6\\u7ba1\\u7406\",\"icon\":\"fa fa-th\",\"url\":\"Admin\\/Addon\\/index\",\"id\":\"49\"},\"50\":{\"pid\":\"49\",\"title\":\"\\u5b89\\u88c5\",\"url\":\"Admin\\/Addon\\/install\",\"id\":\"50\"},\"51\":{\"pid\":\"49\",\"title\":\"\\u5378\\u8f7d\",\"url\":\"Admin\\/Addon\\/uninstall\",\"id\":\"51\"},\"52\":{\"pid\":\"49\",\"title\":\"\\u8fd0\\u884c\",\"url\":\"Admin\\/Addon\\/execute\",\"id\":\"52\"},\"53\":{\"pid\":\"49\",\"title\":\"\\u8bbe\\u7f6e\",\"url\":\"Admin\\/Addon\\/config\",\"id\":\"53\"},\"54\":{\"pid\":\"49\",\"title\":\"\\u540e\\u53f0\\u7ba1\\u7406\",\"url\":\"Admin\\/Addon\\/adminList\",\"id\":\"54\"},\"55\":{\"pid\":\"54\",\"title\":\"\\u65b0\\u589e\\u6570\\u636e\",\"url\":\"Admin\\/Addon\\/adminAdd\",\"id\":\"55\"},\"56\":{\"pid\":\"54\",\"title\":\"\\u7f16\\u8f91\\u6570\\u636e\",\"url\":\"Admin\\/Addon\\/adminEdit\",\"id\":\"56\"},\"57\":{\"pid\":\"54\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Admin\\/Addon\\/setStatus\",\"id\":\"57\"}}', '1', '1438651748', '1500427725', '0', '1');
INSERT INTO `nf_admin_module` VALUES ('2', 'Home', '自定义样例', '', 'fa fa-cog', '#3CA6F1', '自定义样例', 'Neconano', '1.0.0', '{\"admin_menu_1\":{\"11000\":{\"pid\":\"0\",\"title\":\"\\u81ea\\u5b9a\\u4e49\\u6837\\u4f8b\",\"icon\":\"fa fa-user\",\"id\":\"11000\"},\"11100\":{\"pid\":\"11000\",\"title\":\"\\u81ea\\u5b9a\\u4e49\\u6837\\u4f8b1\\u4e00\\u7ea7\",\"icon\":\"fa fa-rss-square\",\"id\":\"11100\"},\"11110\":{\"pid\":\"11100\",\"title\":\"\\u81ea\\u5b9a\\u4e49\\u6837\\u4f8b1\\u4e8c\\u7ea7bbb\",\"icon\":\"fa\",\"url\":\"adminDebug\\/bbb\",\"id\":\"11110\"},\"11120\":{\"pid\":\"11100\",\"title\":\"\\u81ea\\u5b9a\\u4e49\\u6837\\u4f8b1\\u4e8c\\u7ea7yyy\",\"icon\":\"fa\",\"url\":\"adminDebug\\/yyy\",\"id\":\"11120\"}},\"admin_menu_2\":{\"21000\":{\"pid\":\"0\",\"title\":\"\\u81ea\\u5b9a\\u4e49\\u6837\\u4f8b2\",\"icon\":\"fa fa-user\",\"id\":\"21000\"},\"21100\":{\"pid\":\"21000\",\"title\":\"\\u81ea\\u5b9a\\u4e49\\u6837\\u4f8b2\\u4e00\\u7ea7\",\"icon\":\"fa fa-rss-square\",\"id\":\"21100\"},\"21110\":{\"pid\":\"21100\",\"title\":\"\\u81ea\\u5b9a\\u4e49\\u6837\\u4f8b2\\u4e8c\\u7ea7ccc\",\"icon\":\"fa\",\"url\":\"adminDebug\\/ccc\",\"id\":\"21110\"}}}', '', '{\"1\":{\"pid\":\"0\",\"title\":\"\\u81ea\\u5b9a\\u4e49\\u6837\\u4f8b\",\"icon\":\"fa fa-user\",\"id\":\"1\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u81ea\\u5b9a\\u4e49\\u6837\\u4f8b\\u4e00\\u7ea7\",\"icon\":\"fa fa-rss-square\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u81ea\\u5b9a\\u4e49\\u6837\\u4f8b\\u4e8c\\u7ea7index\",\"icon\":\"fa\",\"url\":\"home\\/debug\\/index\",\"id\":\"3\"},\"4\":{\"pid\":\"2\",\"title\":\"\\u81ea\\u5b9a\\u4e49\\u6837\\u4f8b3\\u4e8c\\u7ea7yyy\",\"icon\":\"fa\",\"url\":\"home\\/debug\\/yyy\",\"id\":\"4\"}}', '0', '1500429936', '1505727465', '0', '1');
INSERT INTO `nf_admin_module` VALUES ('3', 'Cms', 'CMS门户', '', 'fa fa-cog', '#3CA6F1', 'CMS门户', 'Neconano', '1.0.0', '', '{\"need_check\":\"0\",\"toggle_comment\":\"1\",\"group_list\":\"1:\\u9ed8\\u8ba4\",\"cate\":\"a:1\",\"taglib\":[\"Cms\"]}', '{\"1\":{\"id\":\"1\",\"pid\":\"0\",\"title\":\"CMS\",\"icon\":\"fa fa-newspaper-o\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u5185\\u5bb9\\u7ba1\\u7406\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u6587\\u7ae0\\u914d\\u7f6e\",\"icon\":\"fa fa-wrench\",\"url\":\"Cms\\/Index\\/module_config\",\"id\":\"3\"},\"4\":{\"pid\":\"2\",\"title\":\"\\u6587\\u6863\\u6a21\\u578b\",\"icon\":\"fa fa-th-large\",\"url\":\"Cms\\/Type\\/index\",\"id\":\"4\"},\"5\":{\"pid\":\"4\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Type\\/add\",\"id\":\"5\"},\"6\":{\"pid\":\"4\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Type\\/edit\",\"id\":\"6\"},\"7\":{\"pid\":\"4\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Type\\/setStatus\",\"id\":\"7\"},\"8\":{\"pid\":\"4\",\"title\":\"\\u5b57\\u6bb5\\u7ba1\\u7406\",\"icon\":\"fa fa-database\",\"url\":\"Cms\\/Attribute\\/index\",\"id\":\"8\"},\"9\":{\"pid\":\"8\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Attribute\\/add\",\"id\":\"9\"},\"10\":{\"pid\":\"8\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Attribute\\/edit\",\"id\":\"10\"},\"11\":{\"pid\":\"8\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Attribute\\/setStatus\",\"id\":\"11\"},\"12\":{\"pid\":\"2\",\"title\":\"\\u680f\\u76ee\\u5206\\u7c7b\",\"icon\":\"fa fa-navicon\",\"url\":\"Cms\\/Category\\/index\",\"id\":\"12\"},\"13\":{\"pid\":\"12\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Category\\/add\",\"id\":\"13\"},\"14\":{\"pid\":\"12\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Category\\/edit\",\"id\":\"14\"},\"15\":{\"pid\":\"12\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Category\\/setStatus\",\"id\":\"15\"},\"16\":{\"pid\":\"12\",\"title\":\"\\u6587\\u6863\\u7ba1\\u7406\",\"icon\":\"fa fa-edit\",\"url\":\"Cms\\/Index\\/index\",\"id\":\"16\"},\"17\":{\"pid\":\"16\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Index\\/add\",\"id\":\"17\"},\"18\":{\"pid\":\"16\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Index\\/edit\",\"id\":\"18\"},\"19\":{\"pid\":\"16\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Index\\/setStatus\",\"id\":\"19\"},\"36\":{\"pid\":\"2\",\"title\":\"\\u56de\\u6536\\u7ad9\",\"icon\":\"fa fa-recycle\",\"url\":\"Cms\\/Index\\/recycle\",\"id\":\"36\"},\"37\":{\"pid\":\"36\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Notice\\/setStatus\",\"id\":\"37\"},\"38\":{\"pid\":\"2\",\"title\":\"\\u4e3e\\u62a5\\u5217\\u8868\",\"icon\":\"fa fa-info-circle\",\"url\":\"Cms\\/Report\\/index\",\"id\":\"38\"},\"39\":{\"pid\":\"38\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Report\\/edit\",\"id\":\"39\"},\"40\":{\"pid\":\"38\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Report\\/setStatus\",\"id\":\"40\"}}', '0', '1501571982', '1505727463', '0', '1');
INSERT INTO `nf_admin_module` VALUES ('4', 'User', '用户中心', '', 'fa fa-cog', '#3CA6F1', '用户中心', 'Neconano', '1.0.0', '', '{\"status\":\"1\",\"reg_toggle\":\"1\",\"allow_reg_type\":[\"username\"],\"deny_username\":\"\",\"user_protocol\":\"\\u8bf7\\u5728\\u201c\\u540e\\u53f0\\u2014\\u2014\\u7528\\u6237\\u2014\\u2014\\u7528\\u6237\\u8bbe\\u7f6e\\u201d\\u4e2d\\u8bbe\\u7f6e\",\"behavior\":[\"User\"]}', '{\"1\":{\"pid\":\"0\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa fa-user\",\"id\":\"1\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u7528\\u6237\\u8bbe\\u7f6e\",\"icon\":\"fa fa-wrench\",\"url\":\"User\\/Index\\/module_config\",\"id\":\"3\"},\"4\":{\"pid\":\"2\",\"title\":\"\\u7528\\u6237\\u7edf\\u8ba1\",\"icon\":\"fa fa-area-chart\",\"url\":\"User\\/Index\\/index\",\"id\":\"4\"},\"5\":{\"pid\":\"2\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa fa-list\",\"url\":\"User\\/User\\/index\",\"id\":\"5\"},\"6\":{\"pid\":\"5\",\"title\":\"\\u65b0\\u589e\",\"url\":\"User\\/User\\/add\",\"id\":\"6\"},\"7\":{\"pid\":\"5\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"User\\/User\\/edit\",\"id\":\"7\"},\"8\":{\"pid\":\"5\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"User\\/User\\/setStatus\",\"id\":\"8\"},\"9\":{\"pid\":\"2\",\"title\":\"\\u7528\\u6237\\u7c7b\\u578b\",\"icon\":\"fa fa-user\",\"url\":\"User\\/Type\\/index\",\"id\":\"9\"},\"10\":{\"pid\":\"9\",\"title\":\"\\u65b0\\u589e\",\"url\":\"User\\/Type\\/add\",\"id\":\"10\"},\"11\":{\"pid\":\"9\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"User\\/Type\\/edit\",\"id\":\"11\"},\"12\":{\"pid\":\"9\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"User\\/Type\\/setStatus\",\"id\":\"12\"},\"13\":{\"pid\":\"9\",\"title\":\"\\u5b57\\u6bb5\\u7ba1\\u7406\",\"icon\":\"fa fa-users\",\"url\":\"User\\/Attribute\\/index\",\"id\":\"13\"},\"14\":{\"pid\":\"13\",\"title\":\"\\u65b0\\u589e\",\"url\":\"User\\/Attribute\\/add\",\"id\":\"14\"},\"15\":{\"pid\":\"13\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"User\\/Attribute\\/edit\",\"id\":\"15\"},\"16\":{\"pid\":\"13\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"User\\/Attribute\\/setStatus\",\"id\":\"16\"}}', '0', '1501741207', '1501742444', '0', '1');

-- ----------------------------
-- Table structure for nf_admin_nav
-- ----------------------------
DROP TABLE IF EXISTS `nf_admin_nav`;
CREATE TABLE `nf_admin_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group` varchar(11) NOT NULL DEFAULT '' COMMENT '分组',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '导航标题',
  `type` varchar(15) NOT NULL DEFAULT '' COMMENT '导航类型',
  `value` text COMMENT '导航值',
  `target` varchar(11) NOT NULL DEFAULT '' COMMENT '打开方式',
  `icon` varchar(32) NOT NULL DEFAULT '' COMMENT '图标',
  `lists_template` varchar(63) NOT NULL DEFAULT '' COMMENT '列表页模板',
  `detail_template` varchar(63) NOT NULL DEFAULT '' COMMENT '详情页模板',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='前台导航表';

-- ----------------------------
-- Records of nf_admin_nav
-- ----------------------------
INSERT INTO `nf_admin_nav` VALUES ('1', 'bottom', '0', '关于', 'page', '', '', '', '', '', '1449742225', '1449742255', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('2', 'bottom', '1', '关于我们', 'page', '', '', '', '', '', '1449742312', '1449742312', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('4', 'bottom', '1', '服务产品', 'page', '', '', '', '', '', '1449742597', '1449742651', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('5', 'bottom', '1', '商务合作', 'page', '', '', '', '', '', '1449742664', '1449742664', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('6', 'bottom', '1', '加入我们', 'page', '', '', '', '', '', '1449742678', '1449742697', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('7', 'bottom', '0', '帮助', 'page', '', '', '', '', '', '1449742688', '1449742688', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('8', 'bottom', '7', '用户协议', 'page', '', '', '', '', '', '1449742706', '1449742706', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('9', 'bottom', '7', '意见反馈', 'page', '', '', '', '', '', '1449742716', '1449742716', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('10', 'bottom', '7', '常见问题', 'page', '', '', '', '', '', '1449742728', '1449742728', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('11', 'bottom', '0', '联系方式', 'page', '', '', '', '', '', '1449742742', '1449742742', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('12', 'bottom', '11', '联系我们', 'page', '', '', '', '', '', '1449742752', '1449742752', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('13', 'bottom', '11', '新浪微博', 'page', '', '', '', '', '', '1449742802', '1449742802', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('14', 'main', '0', '首页', 'link', '/', '', '', '', '', '1457084559', '1501663004', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('15', 'main', '0', '产品中心', 'post', null, '', '', 'lists', 'detail', '1457084559', '1501664592', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('16', 'main', '0', 'cms栏目', 'module', 'Cms', '', '', '', '', '1457084572', '1501723817', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('20', 'wap_bottom', '0', '首页', 'link', '', '', 'fa-home', '', '', '1458382401', '1458382401', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('21', 'wap_bottom', '0', '消息', 'module', 'Im', '', 'fa-commenting-o', '', '', '1458382603', '1461381689', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('22', 'wap_bottom', '0', '钱包', 'module', 'Wallet', '', 'fa-wallet', '', '', '1458382637', '1461381704', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('23', 'wap_bottom', '0', '我的', 'module', 'User', '', 'fa-user', '', '', '1458382814', '1461207462', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('24', 'top', '0', '用户界面', 'module', 'Home', '', 'fa fa-cog', '', '', '1500429936', '1500429936', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('25', 'top', '0', 'CMS门户', 'module', 'Cms', '', 'fa fa-cog', '', '', '1501571982', '1501571982', '0', '1');
INSERT INTO `nf_admin_nav` VALUES ('26', 'top', '0', '用户中心', 'module', 'User', '', 'fa fa-cog', '', '', '1501741207', '1501741207', '0', '1');

-- ----------------------------
-- Table structure for nf_admin_post
-- ----------------------------
DROP TABLE IF EXISTS `nf_admin_post`;
CREATE TABLE `nf_admin_post` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `title` varchar(127) NOT NULL DEFAULT '' COMMENT '标题',
  `cover` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '封面',
  `abstract` varchar(255) DEFAULT '' COMMENT '摘要',
  `content` text COMMENT '内容',
  `view_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='文章列表';

-- ----------------------------
-- Records of nf_admin_post
-- ----------------------------
INSERT INTO `nf_admin_post` VALUES ('1', '15', 'NecoFramework测试', '0', '', '<span style=\"color:#777777;white-space:normal;\">追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等开放化低耦合设计</span>', '16', '1501664267', '1501664267', '0', '1');

-- ----------------------------
-- Table structure for nf_admin_session
-- ----------------------------
DROP TABLE IF EXISTS `nf_admin_session`;
CREATE TABLE `nf_admin_session` (
  `session_id` varchar(255) NOT NULL,
  `session_data` blob,
  `uid` int(11) unsigned DEFAULT NULL COMMENT '用户ID',
  `update_time` int(11) unsigned NOT NULL COMMENT '更新时间',
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='session存储表';

-- ----------------------------
-- Records of nf_admin_session
-- ----------------------------
INSERT INTO `nf_admin_session` VALUES ('nf_admin_qear89cijq1u0l9lhukpv63os1', 0x6E665F61646D696E5F7C613A323A7B733A393A22757365725F61757468223B613A353A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A383A226E69636B6E616D65223B733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B733A363A22617661746172223B733A313A2230223B733A31303A226176617461725F75726C223B733A34383A22687474703A2F2F7075622E6E662E636F6D2F6E662F686F6D652F696D672F64656661756C742F6176617461722E706E67223B7D733A31343A22757365725F617574685F7369676E223B733A34303A2234346239316436333830333465633537663066623137643265386237356362663262396463353438223B7D, '1', '1505799921');

-- ----------------------------
-- Table structure for nf_admin_slider
-- ----------------------------
DROP TABLE IF EXISTS `nf_admin_slider`;
CREATE TABLE `nf_admin_slider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '幻灯ID',
  `title` char(80) NOT NULL DEFAULT '' COMMENT '标题',
  `cover` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '封面ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '点击链接',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='幻灯切换表';

-- ----------------------------
-- Records of nf_admin_slider
-- ----------------------------

-- ----------------------------
-- Table structure for nf_admin_upload
-- ----------------------------
DROP TABLE IF EXISTS `nf_admin_upload`;
CREATE TABLE `nf_admin_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'UID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `url` varchar(255) DEFAULT '' COMMENT '文件链接',
  `ext` char(4) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) DEFAULT '' COMMENT '文件sha1编码',
  `location` varchar(15) NOT NULL DEFAULT '' COMMENT '文件存储位置',
  `download` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='文件上传表';

-- ----------------------------
-- Records of nf_admin_upload
-- ----------------------------
INSERT INTO `nf_admin_upload` VALUES ('13', '1', 'logo.png', '/image/2017-07-19/596f1376d678f.png', '', 'png', '6639', '055e21ae49485911f19e829ccf035574', 'eaf41884caf07eb909522cb85408bfe0dbec0ee3', 'Local', '0', '1500451702', '1500451702', '0', '1');
INSERT INTO `nf_admin_upload` VALUES ('16', '3', 'user.jpg', '/image/2017-08-03/598299a1b9d6b.jpg', '', 'jpg', '17500', 'c952126967ef573531a39d9021d35e4c', 'c551d0829cbb807b76c2ebc276a148a5d56657b8', 'Local', '0', '1501731233', '1501731233', '0', '1');
INSERT INTO `nf_admin_upload` VALUES ('19', '3', '391837041043.jpeg', '/image/2017-08-03/5982bcffc66b6.jpeg', '', 'jpeg', '5412', '854865a69a70af1c7724e408cbccd346', 'e8d7d3a3105c9ca189809864fa05fa9f43bf36e7', 'Local', '0', '1501740287', '1501740287', '0', '1');

-- ----------------------------
-- Table structure for nf_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `nf_admin_user`;
CREATE TABLE `nf_admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'UID',
  `user_type` int(11) NOT NULL DEFAULT '1' COMMENT '用户类型',
  `nickname` varchar(63) DEFAULT NULL COMMENT '昵称',
  `username` varchar(31) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(63) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(63) NOT NULL DEFAULT '' COMMENT '邮箱',
  `email_bind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '邮箱验证',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `mobile_bind` tinyint(1) NOT NULL DEFAULT '0' COMMENT '邮箱验证',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `score` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `reg_ip` bigint(20) DEFAULT '0' COMMENT '注册IP',
  `reg_type` varchar(15) NOT NULL DEFAULT '' COMMENT '注册方式',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='用户账号表';

-- ----------------------------
-- Records of nf_admin_user
-- ----------------------------
INSERT INTO `nf_admin_user` VALUES ('1', '1', '超级管理员', 'admin', '51e2d3e619bd5c20ced6608262853f87', '', '0', '', '0', '0', '0', '0.00', '0', '', '1438651748', '1500543912', '1');
INSERT INTO `nf_admin_user` VALUES ('2', '1', 'admin1', 'admin1', '51e2d3e619bd5c20ced6608262853f87', '', '0', '', '0', '13', '0', '0.00', null, 'admin', '1500020222', '1501039692', '1');
INSERT INTO `nf_admin_user` VALUES ('3', '1', null, 'user1', '51e2d3e619bd5c20ced6608262853f87', '', '0', '', '0', '19', '0', '0.00', null, 'admin', '1501039731', '1501039731', '1');
INSERT INTO `nf_admin_user` VALUES ('4', '1', 'user2', 'user2', 'cd96d3886ebac6f855d8d833e950f63d', '', '0', '', '0', '', '0', '0.00', null, 'username', '1501755040', '1501755040', '1');
INSERT INTO `nf_admin_user` VALUES ('5', '1', 'user3', 'user3', 'cd96d3886ebac6f855d8d833e950f63d', '', '0', '', '0', '', '0', '0.00', null, 'username', '1501755199', '1501755199', '1');
INSERT INTO `nf_admin_user` VALUES ('6', '1', 'user4', 'user4', 'cd96d3886ebac6f855d8d833e950f63d', '', '0', '', '0', '', '0', '0.00', null, 'username', '1501755301', '1501755301', '-1');

-- ----------------------------
-- Table structure for nf_cms_article
-- ----------------------------
DROP TABLE IF EXISTS `nf_cms_article`;
CREATE TABLE `nf_cms_article` (
  `id` int(11) unsigned NOT NULL COMMENT '文档ID',
  `title` varchar(127) NOT NULL DEFAULT '' COMMENT '标题',
  `abstract` varchar(255) NOT NULL DEFAULT '' COMMENT '简介',
  `content` text NOT NULL COMMENT '正文内容',
  `tags` varchar(127) NOT NULL COMMENT '标签',
  `cover` int(11) NOT NULL DEFAULT '0' COMMENT '封面图片ID',
  `file` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '附件',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章类型扩展表';

-- ----------------------------
-- Records of nf_cms_article
-- ----------------------------
INSERT INTO `nf_cms_article` VALUES ('1', 'OpenCMF v1.1.0正式版发布！', 'OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。', '                <span style=\"color:#777777;\">OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ', '', '1', '0');
INSERT INTO `nf_cms_article` VALUES ('2', 'OpenCMF v1.1.0正式版发布！', 'OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。', '                <span style=\"color:#777777;\">OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ', '', '1', '0');
INSERT INTO `nf_cms_article` VALUES ('3', 'OpenCMF v1.1.0正式版发布！', 'OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。', '                <span style=\"color:#777777;\">OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ', '', '1', '0');
INSERT INTO `nf_cms_article` VALUES ('4', 'OpenCMF v1.1.0正式版发布！', 'OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。', '                <span style=\"color:#777777;\">OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ', '', '1', '0');
INSERT INTO `nf_cms_article` VALUES ('5', 'OpenCMF v1.1.0正式版发布！', 'OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。', '                <span style=\"color:#777777;\">OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ', '', '1', '0');
INSERT INTO `nf_cms_article` VALUES ('6', 'OpenCMF v1.1.0正式版发布！', 'OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。', '                <span style=\"color:#777777;\">OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ', '', '1', '0');
INSERT INTO `nf_cms_article` VALUES ('7', 'OpenCMF v1.1.0正式版发布！', 'OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。', '                <span style=\"color:#777777;\">OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ', '', '1', '0');
INSERT INTO `nf_cms_article` VALUES ('8', 'OpenCMF v1.1.0正式版发布！', 'OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。', '                <span style=\"color:#777777;\">OpenCMF是一套基于统一核心的通用互联网+信息化服务解决方案，追求简单、高效、卓越。可轻松实现支持多终端的WEB产品快速搭建、部署、上线。系统功能采用模块化、组件化、插件化等低耦合设计，应用商城拥有丰富的功能模块、插件、主题，便于用户灵活扩展和二次开发。</span>            ', '', '1', '0');

-- ----------------------------
-- Table structure for nf_cms_attribute
-- ----------------------------
DROP TABLE IF EXISTS `nf_cms_attribute`;
CREATE TABLE `nf_cms_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '字段标题',
  `field` varchar(100) NOT NULL DEFAULT '' COMMENT '字段定义',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '数据类型',
  `value` varchar(100) NOT NULL DEFAULT '' COMMENT '字段默认值',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  `doc_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '文档模型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='文档属性字段表';

-- ----------------------------
-- Records of nf_cms_attribute
-- ----------------------------
INSERT INTO `nf_cms_attribute` VALUES ('1', 'cid', '分类', 'int(11) unsigned NOT NULL ', 'select', '0', '所属分类', '1', '', '0', '1383891233', '1384508336', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('2', 'uid', '用户ID', 'int(11) unsigned NOT NULL ', 'num', '0', '用户ID', '0', '', '0', '1383891233', '1384508336', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('3', 'view', '阅读量', 'varchar(255) NOT NULL', 'num', '0', '标签', '0', '', '0', '1413303715', '1413303715', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('4', 'comment', '评论数', 'int(11) unsigned NOT NULL ', 'num', '0', '评论数', '0', '', '0', '1383891233', '1383894927', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('5', 'good', '赞数', 'int(11) unsigned NOT NULL ', 'num', '0', '赞数', '0', '', '0', '1383891233', '1384147827', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('6', 'bad', '踩数', 'int(11) unsigned NOT NULL ', 'num', '0', '踩数', '0', '', '0', '1407646362', '1407646362', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('7', 'create_time', '创建时间', 'int(11) unsigned NOT NULL ', 'datetime', '0', '创建时间', '1', '', '0', '1383891233', '1383895903', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('8', 'update_time', '更新时间', 'int(11) unsigned NOT NULL ', 'datetime', '0', '更新时间', '0', '', '0', '1383891233', '1384508277', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('9', 'sort', '排序', 'int(11) unsigned NOT NULL ', 'num', '0', '用于显示的顺序', '1', '', '0', '1383891233', '1383895757', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('10', 'status', '数据状态', 'tinyint(4) NOT NULL ', 'radio', '1', '数据状态', '0', '-1:删除\r\n0:禁用\r\n1:正常', '0', '1383891233', '1384508496', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('11', 'title', '标题', 'char(127) NOT NULL ', 'text', '', '文档标题', '1', '', '3', '1383891233', '1383894778', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('12', 'abstract', '简介', 'varchar(255) NOT NULL', 'textarea', '', '文档简介', '1', '', '3', '1383891233', '1384508496', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('13', 'content', '正文内容', 'text', 'kindeditor', '', '文章正文内容', '1', '', '3', '1383891233', '1384508496', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('14', 'tags', '文章标签', 'varchar(127) NOT NULL', 'tags', '', '标签', '1', '', '3', '1383891233', '1384508496', '0', '1');
INSERT INTO `nf_cms_attribute` VALUES ('15', 'cover', '封面', 'int(11) unsigned NOT NULL ', 'picture', '0', '文档封面', '1', '', '3', '1383891233', '1384508496', '0', '0');
INSERT INTO `nf_cms_attribute` VALUES ('16', 'file', '附件', 'int(11) unsigned NOT NULL ', 'file', '0', '附件', '1', '', '3', '1439454552', '1501582768', '0', '1');

-- ----------------------------
-- Table structure for nf_cms_category
-- ----------------------------
DROP TABLE IF EXISTS `nf_cms_category`;
CREATE TABLE `nf_cms_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父分类ID',
  `group` tinyint(4) NOT NULL DEFAULT '0' COMMENT '分组',
  `doc_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '分类模型',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '分类名称',
  `url` varchar(127) NOT NULL COMMENT '链接地址',
  `content` text NOT NULL COMMENT '内容',
  `index_template` varchar(32) NOT NULL DEFAULT '' COMMENT '列表封面模版',
  `detail_template` varchar(32) NOT NULL DEFAULT '' COMMENT '详情页模版',
  `post_auth` tinyint(4) NOT NULL DEFAULT '0' COMMENT '投稿权限',
  `icon` varchar(32) NOT NULL DEFAULT '' COMMENT '缩略图',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='栏目分类表';

-- ----------------------------
-- Records of nf_cms_category
-- ----------------------------
INSERT INTO `nf_cms_category` VALUES ('1', '0', '1', '3', '产品中心', '', '                                                                                                                                                                                                                                ', 'lists', 'detail', '1', 'fa fa-send-o', '1431926468', '1501662719', '0', '1');
INSERT INTO `nf_cms_category` VALUES ('2', '0', '1', '3', '新闻动态', '', '                            ', 'lists', 'detail_cate', '1', 'fa-search', '1446449071', '1501727147', '0', '1');

-- ----------------------------
-- Table structure for nf_cms_comment
-- ----------------------------
DROP TABLE IF EXISTS `nf_cms_comment`;
CREATE TABLE `nf_cms_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论父ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `nickname` varchar(63) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `data_id` int(11) unsigned NOT NULL COMMENT '数据ID',
  `content` text NOT NULL COMMENT '评论内容',
  `good` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '赞数',
  `bad` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '踩数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `ip` varchar(15) NOT NULL COMMENT '来源IP',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档评论表';

-- ----------------------------
-- Records of nf_cms_comment
-- ----------------------------

-- ----------------------------
-- Table structure for nf_cms_index
-- ----------------------------
DROP TABLE IF EXISTS `nf_cms_index`;
CREATE TABLE `nf_cms_index` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类ID',
  `doc_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '文档类型ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布者ID',
  `view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `comment` int(11) NOT NULL DEFAULT '0' COMMENT '评论数',
  `good` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '赞数',
  `bad` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '踩数',
  `mark` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '收藏',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='文档类型基础表';

-- ----------------------------
-- Records of nf_cms_index
-- ----------------------------
INSERT INTO `nf_cms_index` VALUES ('1', '1', '3', '1', '0', '0', '0', '0', '0', '1449839213', '1449839263', '0', '1');
INSERT INTO `nf_cms_index` VALUES ('2', '1', '3', '1', '0', '0', '0', '0', '0', '1449839213', '1449839263', '0', '1');
INSERT INTO `nf_cms_index` VALUES ('3', '1', '3', '1', '0', '0', '0', '0', '0', '1449839213', '1449839263', '0', '1');
INSERT INTO `nf_cms_index` VALUES ('4', '1', '3', '1', '0', '0', '0', '0', '0', '1449839213', '1449839263', '0', '1');
INSERT INTO `nf_cms_index` VALUES ('5', '1', '3', '1', '0', '0', '0', '0', '0', '1449839213', '1449839263', '0', '1');
INSERT INTO `nf_cms_index` VALUES ('6', '1', '3', '1', '1', '0', '0', '0', '0', '1449839213', '1449839263', '0', '1');
INSERT INTO `nf_cms_index` VALUES ('7', '1', '3', '1', '7', '0', '0', '0', '0', '1449839213', '1449839263', '0', '1');
INSERT INTO `nf_cms_index` VALUES ('8', '2', '3', '1', '17', '0', '0', '0', '0', '1449839213', '1449839263', '0', '1');

-- ----------------------------
-- Table structure for nf_cms_mark
-- ----------------------------
DROP TABLE IF EXISTS `nf_cms_mark`;
CREATE TABLE `nf_cms_mark` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `data_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '数据ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '关注时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏表';

-- ----------------------------
-- Records of nf_cms_mark
-- ----------------------------

-- ----------------------------
-- Table structure for nf_cms_report
-- ----------------------------
DROP TABLE IF EXISTS `nf_cms_report`;
CREATE TABLE `nf_cms_report` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'UID',
  `data_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '举报项ID',
  `reason` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '举报理由',
  `abstract` text NOT NULL COMMENT '详情',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='举报信息表';

-- ----------------------------
-- Records of nf_cms_report
-- ----------------------------

-- ----------------------------
-- Table structure for nf_cms_type
-- ----------------------------
DROP TABLE IF EXISTS `nf_cms_type`;
CREATE TABLE `nf_cms_type` (
  `id` tinyint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '模型ID',
  `name` char(16) NOT NULL DEFAULT '' COMMENT '模型名称',
  `title` char(16) NOT NULL DEFAULT '' COMMENT '模型标题',
  `icon` varchar(32) NOT NULL DEFAULT '' COMMENT '缩略图',
  `main_field` int(11) NOT NULL DEFAULT '0' COMMENT '主要字段',
  `list_field` varchar(127) NOT NULL DEFAULT '' COMMENT '列表显示字段',
  `filter_field` varchar(127) NOT NULL DEFAULT '' COMMENT '前台筛选字段',
  `field_sort` varchar(255) NOT NULL COMMENT '表单字段排序',
  `field_group` varchar(255) NOT NULL DEFAULT '' COMMENT '表单字段分组',
  `system` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '系统类型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='文档模型表';

-- ----------------------------
-- Records of nf_cms_type
-- ----------------------------
INSERT INTO `nf_cms_type` VALUES ('1', 'link', '链接', 'fa fa-link', '0', '', '', '', '', '1', '1426580628', '1426580628', '0', '1');
INSERT INTO `nf_cms_type` VALUES ('2', 'page', '单页', 'fa fa-file-text', '0', '', '', '', '', '1', '1426580628', '1426580628', '0', '1');
INSERT INTO `nf_cms_type` VALUES ('3', 'article', '文章', 'fa fa-file-word-o', '11', '11', '', '{\"1\":[\"1\",\"11\",\"12\",\"13\",\"14\",\"16\"],\"2\":[\"9\",\"7\"]}', '1:基础\r\n2:扩展', '0', '1426580628', '1501582791', '0', '1');

-- ----------------------------
-- Table structure for nf_debug
-- ----------------------------
DROP TABLE IF EXISTS `nf_debug`;
CREATE TABLE `nf_debug` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_1` varchar(255) DEFAULT NULL COMMENT '封面',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `lesson_flag` varchar(20) DEFAULT '0' COMMENT '可试学 1是',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `cost` int(11) DEFAULT '0' COMMENT '课程价格',
  `prime_cost` int(11) DEFAULT '0' COMMENT '原价',
  `feature` varchar(80) DEFAULT NULL COMMENT '特色',
  `category` varchar(80) DEFAULT NULL COMMENT '分类 1 英语 2日语 ',
  `lesson_type` varchar(80) DEFAULT NULL COMMENT '授课方式  2线上直播  3 线下录播',
  `end_time` varchar(20) DEFAULT NULL COMMENT '有效时间',
  `total_hour` varchar(20) DEFAULT NULL COMMENT '课时总数',
  `suit_people` text COMMENT '适合人群',
  `coures_content` text COMMENT '课程简介',
  `study_target` text COMMENT '学习目标',
  `book_1` int(11) DEFAULT NULL COMMENT '教材图片',
  `book_description` varchar(255) DEFAULT NULL COMMENT '教材描述',
  `teacher` varchar(80) DEFAULT NULL COMMENT '授课老师',
  `is_new` tinyint(2) DEFAULT '0' COMMENT '最新',
  `is_hot` tinyint(2) DEFAULT '0' COMMENT '最热',
  `create_time` int(11) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0' COMMENT '状态',
  `sort` tinyint(3) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='课程内容';

-- ----------------------------
-- Records of nf_debug
-- ----------------------------
INSERT INTO `nf_debug` VALUES ('1', '57', '雅思词汇加强课（4000+词汇基础班）', '0', '认知词汇+高级学术词汇', '0', '0', '3,,5,,,,9,10,11,', '1,11', '1,2', '0', '20', '需要提高词汇量的同学，词汇量达到7000+  <br>\r\n111', '                                                                                <p class=\"MsoNormal\">\r\n	<span>录播词汇加强课是针对以上各门课程的辅课，俗话说</span>“无砖，楼难砌，无词，言无力”大外雅思在线团队根据学生同学此项痛点，精心锻造此项课程。学生根据自身水平，有三项类别可选，囊扩考试所用的基础词汇加学术词汇，为你屠雅事半功倍。\r\n</p>                                                            ', '                                                                                认知词汇+高级学术词汇<br />\r\n核心词汇的学习<br />\r\n成簇词的学习<br />\r\n词汇造句练习<br />                                                            ', '0', '独家内部纸质版讲义', ',4,,,,', '0', '0', null, '1', '1');
INSERT INTO `nf_debug` VALUES ('2', '48', ' 托福在线 60-80 提高课程', '0', '认识托福考试评分原则和标准，并理解各分数段的达标条件；', '0', '0', '3,4,5,6,7,8,9,10,11,', '1,12', '2,3', '0', '40', '语法知识和词汇基础较为薄弱；过往托福考试成绩低于 75 分。', '<p class=\"MsoNormal\">\r\n	<span>托福在线</span>60-80 <span>提高课程是大外在线托福教研团队根据多年经验推出的托福培训课程，由</span><span>40</span><span>小时国内名师方法课</span><span>+60</span><span>小时线下能力提高课组成，改变了以往单纯学习应试技巧，不管能力是否提高的培训模式，真正做到先提能力再提分数。 </span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>托福在线</span>60-80 <span>提高课面向语法知识和词汇基础较为薄弱；过往托福考试成绩低于 </span><span>75 </span><span>分的学员。</span>\r\n</p>', '认识托福考试评分原则和标准，并理解各分数段的达标条件；<br />\r\n熟练掌握托福基础词汇和必备语法知识；<br />\r\n系统掌握高效的英语提升方法；<br />\r\n了解并熟练应用各科核心技巧。<br />', '0', '独家内部纸质版讲义', '3,4,5,6,7,8', '0', '1', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('3', '50', '托福在线 81-95 提高课程', '0', '熟练掌握托福达标词汇并完善语法知识', '0', '0', '3,4,5,6,7,8,9,10,11,', '1,12', '2,3', '0', '40', '具备托福考试需要的基本词汇量，语法知识完备；过往托福考试成绩 75-80 分。', '托福在线81-95 提高课程是大外在线托福教研团队根据多年经验推出的托福培训课程，由40小时国内名师方法课+60小时线下能力提高课组成，改变了以往单纯学习应试技巧，不管能力是否提高的培训模式，真正做到先提能力再提分数。&nbsp;<br />\r\n托福在线81-95 提高课面向具备托福考试需要的基本词汇量，语法知识完备；过往托福考试成绩 75-80 分的学员。<br />', '充分认识目标分数与自身能力之间的差距；<br />\r\n熟练掌握托福达标词汇并完善语法知识；<br />\r\n熟练掌握高效的英语提升方法；<br />\r\n了解并熟练应用各科高分技巧。<br />', '0', '独家内部纸质版讲义', '3,4,5,6,7,8', '0', '1', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('4', '52', '托福在线 95-100+ 提高课程', '0', '精准应用各科高分技巧', '0', '0', '3,4,5,6,7,8,9,10,11,', '1,12', '2,3', '0', '40', '具备托福考试需要熟练掌握的 7500 词汇，语法知识完备；过往托福考试成绩 81-90 分', '<p class=\"MsoNormal\">\r\n	<span>托福在线</span>95-100+ <span>提高课程是大外在线托福教研团队根据多年经验推出的托福培训课程，由</span><span>40</span><span>小时国内名师方法课</span><span>+60</span><span>小时线下能力提高课组成，改变了以往单纯学习应试技巧，不管能力是否提高的培训模式，真正做到先提能力再提分数。 </span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>托福在线</span>95-100+ <span>提高课面向具备托福考试需要熟练掌握的 </span><span>7500 </span><span>词汇，语法知识完备；过往托福考试成绩 </span><span>81-90 </span><span>分的学员。</span>\r\n</p>', '充分认识并理解托福高分标准；<br />\r\n熟练掌握完备的托福词汇知识和语法知识；<br />\r\n精准应用各科高分技巧；<br />\r\n提高英语知识以外的学术能力水平。<br />', '0', '独家内部纸质版讲义', '3,4,5,6,7,8', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('5', '53', '托福在线 “四对一”快速通关课程', '0', '充分认识并理解托福考试规则和分数段要求', '0', '0', '3,4,5,6,7,8,9,10,11,', '1,12', null, '0', '40', '仅需要了解考试内容及形式，并掌握应试技巧的同学。', '<p class=\"MsoNormal\">\r\n	<span>托福在线</span>“四对一”快速通关课程是大外在线托福教研团队根据多年经验推出的托福培训课程，由<span>40</span><span>小时国内名师方法课组成，改变了以往单纯学习应试技巧，不管能力是否提高的培训模式，真正做到先提能力再提分数。 </span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>托福在线</span>“四对一”快速通关课主要面向仅需要了解考试内容及形式，并掌握应试技巧的同学。\r\n</p>', '充分认识并理解托福考试规则和分数段要求；<br />\r\n掌握正确的英语能力提升方法；<br />\r\n熟练把握托福各科的题型特征和答题技巧。<br />', '0', '独家内部纸质版讲义', '3,4,5,6,7,8', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('6', '54', '托福在线VIP单科 1v1', '0', '口语，听力，阅读，写作四科 单科起报（四门最多）', '0', '0', '3,4,5,6,7,8,9,10,11,', '1,12', '2', '0', '0', '需要短期内快速提高托福单科成绩的同学。', '                <p class=\"MsoNormal\">\r\n	<span>托福在线</span>VIP<span>单科</span>1v1<span>是大外在线托福教研团队根据多年经验推出的托福培训课程，由国内名师主讲，单科起报。改变了以往单纯学习应试技巧，不管能力是否提高的培训模式，真正做到先提能力再提分数。</span> \r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>托福在线</span>VIP<span>单科</span><span>1v1</span><span>主要面向仅需要短期内快速提高托福思单科成绩的同学。</span>\r\n</p>            ', '                <p>\r\n	口语，听力，阅读，写作四科<br />\r\n单科起报（四门最多）<br />\r\n线上40h课程中的单科内容，<br />\r\n老师1对1针对学生痛点来解决问题，<br />\r\n课上学生有问题及时反馈解决。\r\n</p>            ', '0', '独家内部纸质版讲义', ',4,,,,', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('7', '55', '托福在线VIP全科 1v1', '0', '线上40h课程中的单科内容， 老师1对1针对学生痛点来解决问题', '0', '0', '3,4,5,6,7,8,9,10,11,', '1,12', '2', '0', '40', '需要短期内快速提高托福全科成绩的同学。', '                                <p class=\"MsoNormal\">\r\n	<span>托福在线</span>VIP<span>全科</span><span>1v1</span><span>是大外在线托福教研团队根据多年经验推出的托福培训课程，由国内名师主讲的全科方法课。改变了以往单纯学习应试技巧，不管能力是否提高的培训模式，真正做到先提能力再提分数。 </span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>托福在线</span>VIP<span>单科</span><span>1v1</span><span>主要面向需要短期内快速提高托福全科成绩的同学。</span>\r\n</p>                        ', '                                <p>\r\n	口语，听力，阅读，写作四科<br />\r\n四门必报<br />\r\n线上40h课程中的单科内容，<br />\r\n老师1对1针对学生痛点来解决问题，<br />\r\n课上学生有问题及时反馈解决。<br />\r\n</p>                        ', '0', '独家内部纸质版讲义', ',4,,,,', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('8', '61', '托福词汇加强课 （6000+词汇基础班）', '0', '认知词汇+高级学术词汇', '0', '0', '3,,5,,,,9,10,11,', '1,12', '1', '0', '20', '需要提高词汇量的同学，词汇量达到8500+ ', '                                <p class=\"MsoNormal\">\r\n	<span>录播词汇加强课是针对以上各门课程的辅课，俗话说</span>“无砖，楼难砌，无词，言无力”大外托福在线团队根据学生同学此项痛点，精心锻造此项课程。学生根据自身水平，有三项类别可选，囊扩考试所用的基础词汇加学术词汇，为你屠雅事半功倍。\r\n</p>                        ', '                                认知词汇+高级学术词汇<br />\r\n核心词汇的学习<br />\r\n成簇词的学习<br />\r\n词汇造句练习<br />                        ', '0', '独家内部纸质版讲义', ',4,,,,', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('9', '62', '产品定义及课前要求', '0', '从产品入门到精通的全方位学习课程  BAT资深产品总监亲身参与课程研发及教授 ', '0', '0', '3,4,5,,,8,,10,11,', '3,31', '2', '0', '60', '1、 社科、商业、计算机专业学生最低要求； 2、 想要成为产品经理和从事相关工作', '                                产品经理的前世今生<br />\r\n传统行业与产品经理的关系与区别<br />\r\n产品经理的工作职责、能力模型及产品思维（以某一线大厂内部考核体系为例）<br />\r\n产品经理典型任务、常用工具及文档规范<br />\r\n练习：规划你自己的产品经理发展路径<br />\r\n产品经理面试标准与方法<br />                        ', '                                从产品入门到精通的全方位学习课程 <br />\r\nBAT资深产品总监亲身参与课程研发及教授 <br />\r\n理论学习+实战演练 <br />\r\n洞察用户需求 · 修炼产品功力 · 打造极致用户体验<br />                        ', '0', '', ',,,,,', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('10', '28', ' 雅思在线提高班 （5.5分）', '0', '熟练掌握雅思基础词汇和必备语法知识，系统掌握高效的英语提升方法', '0', '0', '3,4,5,6,7,8,9,10,11,', '1,11', '2,3', '0', '40', '', '                <p>\r\n	雅思在线提高班（5.5分）是大外在线雅思教研团队根据多年经验推出的雅思培训课程，由40小时国内名师方法课+60小时线下能力提高课组成，改变了以往单纯学习应试技巧，不管能力是否提高的培训模式，真正做到先提能力再提分数。 \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n雅思在线提高班（5.5分）主要面向英语基础较为薄弱；过往雅思成绩低于5.5分的学员。<br />            ', '                <p>\r\n	口语：5-6分 听力：6分 阅读：6分 写作：5-6分                          \r\n</p>\r\n<p>\r\n	认识雅思考试评分原则和标准，并理解各分数段的达标条件；\r\n</p>\r\n<p>\r\n	熟练掌握雅思基础词汇和必备语法知识；\r\n</p>\r\n<p>\r\n	系统掌握高效的英语提升方法；\r\n</p>\r\n了解并熟练应用各科核心技巧。<br />            ', '0', '独家内部纸质版讲义', '3,4,5,6,,', '1', '1', null, '1', '2');
INSERT INTO `nf_debug` VALUES ('11', '60', '雅思在线通关班 （6-6.5分）', '0', '熟练掌握雅思达标词汇并完善语法知识', '0', '0', '3,4,5,6,7,8,9,10,11,', '1,11', '2,3', '0', '40', '熟练掌握4000+词汇，语法知识完备；过往雅思成绩不低于5.5分。', '                                <p class=\"MsoNormal\">\r\n	雅思在线通关班（<span>6-6.5</span>分）是大外在线雅思教研团队根据多年经验推出的雅思培训课程，由<span>40</span>小时国内名师方法课<span>+60</span>小时线下能力提高课组成，改变了以往单纯学习应试技巧，不管能力是否提高的培训模式，真正做到先提能力再提分数。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	雅思在线通关班（<span>6-6.5</span>分）主要面向熟练掌握<span>4000+</span>词汇，语法知识完备；过往雅思成绩不低于<span>5.5</span>分的学员。<span></span>\r\n</p>                        ', '                                <p>\r\n	充分认识目标分数与自身能力之间的差距；\r\n</p>\r\n<p>\r\n	熟练掌握雅思达标词汇并完善语法知识；\r\n</p>\r\n<p>\r\n	熟练掌握高效的英语提升方法；\r\n</p>\r\n了解并熟练应用各科高分技巧。<br />                        ', '0', '独家纸质版讲义', '3,4,5,6,,', '1', '1', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('12', '37', 'N1考前冲刺辅导班', '0', '熟练掌握N1核心词汇和必备文法知识；系统掌握高效的日语N1提升方法', '0', '0', '3,4,5,,,,,10,11,12', '2,21', '1,2', '0', '170', '具有日语N2级水平，打算备战能力考N1级的学员。', '                本课程是专门为有N2的日语基础，并且想快速达到N1水平学员开设的考前冲刺精品课！课程从词汇、语法、听力、阅读四大方面进行考级解析，及专项高分的解题技巧，由授课经验丰富的老师，带你高效解决日语N1难题。            ', '                1.掌握8000-10000单词，200条中高级语法；<br />\r\n2.提高词汇、文法、会话阅读、听力等日语技能；<br />\r\n3.顺利通过N1能力考试或JTEST等其他考试；<br />\r\n4.应对日语能力考N1级，达到高级日语水平。<br />            ', '0', '电子版讲义', ',,,,7,8', '1', '1', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('13', '38', '雅思在线拔高班 （7分+）', '0', '熟练掌握雅思基础词汇和必备语法知识', '0', '0', '3,4,5,6,7,8,9,10,11', '1,11', '2,3', '0', '40', '熟练掌握5000+词http://dufl.jiemo.net/admin.php/course/lesson/index.html汇，语法知识完备；过往雅思成绩不低于6分。', '<p class=\"MsoNormal\">\r\n	<span>雅思在线拔高班（</span>7<span>分</span><span>+</span><span>）是大外在线雅思教研团队根据多年经验推出的雅思培训课程，由</span><span>40</span><span>小时国内名师方法课</span><span>+60</span><span>小时线下能力提高课组成，改变了以往单纯学习应试技巧，不管能力是否提高的培训模式，真正做到先提能力再提分数。 </span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>雅思在线拔高班（</span>7<span>分</span><span>+</span><span>）主要面向熟练掌握</span><span>5000+</span><span>词汇，语法知识完备；过往雅思成绩不低于</span><span>6</span><span>分的学员。</span>\r\n</p>', '充分认识并理解雅思高分标准；<br />\r\n熟练掌握完备的雅思词汇知识和语法知识；<br />\r\n精准应用各科高分技巧；<br />\r\n提高英语知识以外的学术能力水平。<br />', '0', '独家内部纸质版讲义', '3,4,5,6', '1', '1', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('14', '29', '雅思在线方法强化班 （四合一）', '0', '熟练把握雅思各科的题型特征和答题技巧。', '0', '0', '3,4,5,6,7,8,9,10,11,', '1,11', '2,3', '0', '40', '仅需要了解考试内容及形式，并掌握应试技巧的同学。', '<p class=\"MsoNormal\">\r\n	<span>雅思在线方法强化班（四合一）是大外在线雅思教研团队根据多年经验推出的雅思培训课程，由</span>40<span>小时国内名师方法课组成，改变了以往单纯学习应试技巧，不管能力是否提高的培训模式，真正做到先提能力再提分数。 </span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	雅思在线方法强化班（四合一）主要面向仅需要了解考试内容及形式，并掌握应试技巧的同学。\r\n</p>', '充分认识并理解雅思考试规则和分数段要求；<br />\r\n掌握正确的英语能力提升方法；<br />\r\n熟练把握雅思各科的题型特征和答题技巧。<br />', '0', '充分认识并理解雅思考试规则和分数段要求； 掌握正确的英语能力提升方法； 熟练把握雅思各科的题型特征和答题技巧。', '3,4,5,6,7,8', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('15', '41', '零基础N1直达班', '0', '熟练掌握N1核心词汇和必备文法知识；系统掌握高效的日语N1提升方法', '0', '0', '3,4,5,,,,,10,11,12', '2,21', '1,2', '0', '510', '1、日语零基础或稍有基础，想要系统学习日语的同学； 2、希望顺利通过N1考试的同学； 3、爱好日语、喜欢动漫、日剧、日本音乐，想独立看懂、听懂日语的同学； 4、想去日本旅游、留学、工作，希望可以用日语交流沟通的同学； 5、想进入日企工作，或者已经在日企希望通过提高日语水平获得升职加薪的同学； 6、具备一定日语基础，不准备考试但是希望日语综合能力进一步提高的同学。', '本课程是专门为零日语基础，并且想快速达到N1水平学员开设直达班！课程从词汇、语法、听力、阅读四大方面进行考级解析，及专项高分的解题技巧，由授课经验丰富的老师，带你高效全面提升日语能力。', '1、提升日语综合能力，听说读写能力得到全面提升，零基础直达日语高级水平；<br />\r\n2、掌握8000-10000单词，800条语法，能够熟练使用日语，具备N1应试技巧，顺利通过日语能力考试N1级别；<br />\r\n3、对日本文化的认识和理解更加深入，适应赴日旅行和留学的需要；<br />\r\n4、学完之后具备学习JTEST（A-D）或日语口译笔译课程的基础。<br />', '0', '电子版讲义', ',,,,7,8', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('16', '42', '雅思在线VIP单科 1v1', '0', '口语，听力，阅读，写作四科 单科起报（四门最多）', '0', '0', '3,4,5,6,7,8,9,10,11,', '1,11', '2', '0', '0', '需要短期内快速提高雅思单科成绩的同学。', '<p class=\"MsoNormal\">\r\n	<span>雅思在线</span>VIP<span>单科</span><span>1v1</span><span>是大外在线雅思教研团队根据多年经验推出的雅思培训课程，由国内名师主讲，单科起报。改变了以往单纯学习应试技巧，不管能力是否提高的培训模式，真正做到先提能力再提分数。 </span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>雅思在线</span>VIP<span>单科</span><span>1v1</span><span>主要面向仅需要短期内快速提高雅思单科成绩的同学。</span>\r\n</p>', '口语，听力，阅读，写作四科<br />\r\n单科起报（四门最多）<br />\r\n线上40h课程中的单科内容，<br />\r\n老师1对1针对学生痛点来解决问题，<br />\r\n课上学生有问题及时反馈解决。<br />', '0', '独家内部纸质版讲义', '3,4,5,6,7,8', '0', '1', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('17', '43', 'N2考前冲刺辅导班', '0', '熟练掌握N2核心词汇和必备文法知识；系统掌握高效的日语N2提升方法；', '0', '0', '3,4,5,,,,,10,11,12', '2,22', '1,2', '1', '101', '（1） 具备日语国际能力考试N3水平或相当于N3水平的学员。 （2） 完成新标准日本语中级（上）学习的学员。 （3） 希望了解N2考试题型、考试技巧、以及考试准备和复习计划的学员。 （4） 有去日企工作或到日本定居、留学打算和计划的学员', '本课程是专门为有一定的日语基础，并且想快速达到N2水平学员开设的考前冲刺精品课！课程从词汇、语法、听力、阅读四大方面进行考级解析，及专项高分的解题技巧，由授课经验丰富的老师，带你高效解决日语N2难题。', '（1）词汇：全面精讲N2核心词汇，答题技巧及窍门，以及多种发音特征，边学边练、稳固扎实。<br />\r\n（2）语法：全解析N2文法200、N3文法语法考点，特定的考级文法突破秘诀，综合提高N2应试与应用能力全面、系统的进行讲解，以点带面全方位复习巩固。<br />\r\n（3）听力：教授答题技巧，结合真题、模拟题，各个类型题逐个击破！<br />\r\n（4）阅读：在阅读考试文章中，培养日式思维，纠正历年考试中的常见错误思维，避免进入误区，并传授解题技巧与应试对策，快速，精准！<br />', '0', '电子版讲义', ',,,,7,8', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('18', '44', '雅思在线VIP全科 1v1', '0', '线上40h课程中的单科内容， 老师1对1针对学生痛点来解决问题', '0', '0', '3,4,5,6,7,8,9,10,11,', '1,11', '2', '0', '40', '需要短期内快速提高雅思全科成绩的同学。', '<p class=\"MsoNormal\">\r\n	<span>雅思在线</span>VIP<span>全科</span><span>1v1</span><span>是大外在线雅思教研团队根据多年经验推出的雅思培训课程，由国内名师主讲的全科方法课。改变了以往单纯学习应试技巧，不管能力是否提高的培训模式，真正做到先提能力再提分数。 </span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>雅思在线</span>VIP<span>单科</span><span>1v1</span><span>主要面向需要短期内快速提高雅思全科成绩的同学。</span>\r\n</p>', '口语，听力，阅读，写作四科<br />\r\n四门必报<br />\r\n线上40h课程中的单科内容，<br />\r\n老师1对1针对学生痛点来解决问题，<br />\r\n课上学生有问题及时反馈解决。<br />', '0', '独家内部纸质版讲义', '3,4,5,6,7,', '0', '1', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('19', '45', '零基础N2直达班', '0', '零基础至N2水平一步到位，帮助提高听说读写能力全面提升', '0', '0', '3,4,5,,,,,10,11,12', '2,22', '1,2', '1', '340', '1. 日语零基础，想要系统学习日语的同学； 2. 希望顺利通过考试的同学； 3. 爱好日语、喜欢动漫、日剧、日本音乐的同学； 4. 想去日本旅游、留学、工作，希望可以用日语交流的同学； 5. 想进入日企工作，或者已经在日企希望通过提高日语水平获得升职加薪的同学。', '本课程是专门为零日语基础，并且想快速达到N2水平学员开设直达班！课程从词汇、语法、听力、阅读四大方面进行考级解析，及专项高分的解题技巧，由授课经验丰富的老师，带你高效全面提升日语能力。', '1. 提升日语综合能力，听说读写能力得到全面提升，从零基础直达日语中级水平；<br />\r\n2. 掌握4000-7000单词，200条中级语法，能够熟练使用日语进行交流，具备N2应试技巧，顺利通过日语能力考试新二级、JTEST等其他考试；<br />\r\n3. 加深对日本文化的了解，适应出国旅游、留学等需要。<br />', '0', '电子版讲义+纸质版教辅材料', ',,,,7,8', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('20', '46', '考研日语强化班', '0', '分项精讲，紧扣真题，提高备考效率，提升考试成绩', '0', '0', '3,4,5,,,,,10,11,12', '2,23', '1,2', '1', '90', '1、准备参考203公共日语全国统一考试的考生； 2、准备参加二外考研日语自主出题考试的考生； 3、进行一定程度的考研备考复习，但心理没底的考试，想通过强化进一步提高的学生； 4、学完日语中级，如标日中级，新编日语第四册，具有日本语能力测试N2级水平的学生', '<p>\r\n	该课程结合历年考试的要求，对考点进行提炼分类和汇总。全面梳理日语中高级语法体系；对精选的历年考题的讲解和练习，归纳考研日语必备的词汇和句型；传授解题技巧，提高日语阅读能力，并具备日语文章书写及日汉长句互译能力。&nbsp;\r\n</p>\r\n系统的复习、指导和练习，使学员日语成绩在原有基础上大程度地获得提高，达到或超出考研日语的要求，同时提升日语的综合能力。\"<br />', '<p>\r\n	1、强化语法、阅读、写作等方面的技能；\r\n</p>\r\n<p>\r\n	2、以真题为准绳，熟悉考试题型，掌握考试技巧；\r\n</p>\r\n3、掌握考研公共日语考试必备知识，顺利通过考研日语考试。<br />', '0', '电子版讲义', ',,,,7,8', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('21', '68', '大外在线法语零基础兴趣班（0-A1）', '0', '课程从发音入门开始，逐步学习日常交流技巧，初步理解法语文字、掌握基本礼节用语、基本句型及1500个左右词汇。', '0', '0', '3,4,5,,,,,10,11,', '5,51', '2,3', '0', '120', '1、 对法语有兴趣的业余爱好者 2、 有意将法语作为第二外语的学员 3、 偶尔在生活或工作中使用法语人群 4、计划到法语区旅游的学员', '                <p class=\"MsoNormal\">\r\n	<span>课程从发音入门开始，逐步学习日常交流技巧，初步理解</span><span>法语</span><span>文字、掌握基本礼节用语、基本句型及</span>1500<span>个左右词汇</span><span>。</span><span>能够</span><span>实操日常交流使用</span><span>频率较高的惯用语。能够阅读简单的文章，进行简单的会话交流</span><span>。</span><span>以家庭，学校，购物，住房，文化，体育等实际生活场景为主要内容，全面培养听力理解和会话表达能力，并融会贯通相关的语法内容，能根据具体的场景，礼貌地表达自己的思想。</span>\r\n</p>            ', '                <p class=\"MsoNormal\">\r\n	1<span>、</span><span>掌握</span><span>约</span>600<span>个单词及</span><span>一些基本的句法</span><span>、</span><span>语法及</span><span>日常的口语表达</span><span>，</span><span>并达到法语</span>A1<span>的水平；</span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	2<span>、</span><span>能介绍自己及他人并能针对个人背景资料，例如住在哪里、认识的人、以及拥有的事物等主题做出问答</span>；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	3<span>、</span><span>能在</span><span>对方说话速度语速缓慢、用词清晰并随时提供协助的前提下，做简单的互动与交流</span>；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	4<span>、</span><span>能理解并使用熟悉的日常表达法、基本词汇以求满足具体的需求。</span>\r\n</p>            ', '0', '', ',,,,,', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('22', '69', '大外在线法语留学强化班（0-B2）', '0', '课程从发音入门开始，从听说读写四方面，由浅入深学习法语语法', '0', '0', '3,4,5,,,,,10,11,', '5,51', '2', '0', '270', '1、 社科、商业专业学生最低要求 2、 在法从事一般类型工作的务工人员 3、想考取法语B2等级的学员', '                <p class=\"MsoNormal\">\r\n	<span>课程从发音入门开始，</span><span>从听说读写四方面，由浅入深学习法语语法，学习运用法语的词法，现在、过去、将来等</span>16<span>种时态及</span><span>5</span><span>大语态；通过课文学习</span><span>能够阅读</span><span>各类专业</span><span>文章</span><span>；</span><span>通过听力和口语练习，听懂生活和学术词汇，并</span><span>进行</span><span>熟练</span><span>的</span><span>生活和学术</span><span>会话交流</span><span>；</span><span>能够书写专业的文章及论文。</span>\r\n</p>            ', '                <p class=\"MsoNormal\" align=\"justify\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	1、<span>能达到</span>7000-8000<span>的词汇量；</span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	2、扎实地掌握法语语法，能理解复杂文章的关键内容；\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	3<span>、</span>能听懂较长的报告会和演讲。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	4<span>、能用熟练的口语表达自己的观点并阐述论据</span>，<span>与以</span>法语<span>为母语</span>者<span>做互动时保持一定流畅度</span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	5<span>、</span><span>能针对广泛的主题拟写清楚详细的文章，并能针对各种题目进行讨论，分析利弊。</span>\r\n</p>            ', '0', '', ',,,,,', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('23', '70', '大外在线法语留学全程班（0-B2）', '0', '法语入门、中级提高、听力专项训练、口语专项训练、应试训练、面试解决方案等六大模块', '0', '0', '3,4,5,,,,,10,11,', '5,51', '2,3', '0', '500', '1、 社科、商业专业学生最低要求； 2、 在法从事一般类型工作的务工人员。 3、想考取法语B2等级者', '                <p class=\"MsoNormal\">\r\n	<span>法语入门、中级提高、听力专项训练、口语专项训练、应试训练、面试解决方案等六大模块；由多年致力法语留学考试（</span>TCF/TEF/CELA<span>）的中、外教共同担纲，采用中、法文双轨教材制度，为每一位有意愿留学法语国家的学员奉上全方位的语言能力养成方案</span><span>,</span><span>务求在有限的学习时间之内，实现语言能力与考试成绩双达标。</span>\r\n</p>            ', '                <p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	1<span>、</span><span>能达到</span>7000-8000<span>的词汇量；</span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"text-align:justify;\">\r\n	2<span>、</span>扎实地掌握法语语法，能理解复杂文章的关键内容；\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	3<span>、</span>能听懂较长的报告会和演讲。\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	4<span>、能用熟练的口语表达自己的观点并阐述论据</span>，<span>与以</span>法语<span>为母语</span>者<span>做互动时保持一定流畅度</span>\r\n</p>\r\n<p class=\"MsoNormal\" align=\"justify\" style=\"margin-left:0.0000pt;text-indent:0.0000pt;text-align:justify;\">\r\n	5<span>、</span><span>能针对广泛的主题拟写清楚详细的文章，并能针对各种题目进行讨论，分析利弊。</span>\r\n</p>            ', '0', '', ',,,,,', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('24', '63', 'Axure基础教程', '0', 'Axure是一款制作交互原型的软件，用它可以制作网页原型，手机App原型。这本教程从0开始，教大家制作一个非常完整，交互内容非常丰富的网页原型。', '0', '0', '3,,,,,,,,,', ',', null, '0', '60', '网页/APP设计、产品经理教程', '                                Axure是一款制作交互原型的软件，用它可以制作网页原型，手机App原型。这本教程从0开始，教大家制作一个非常完整，交互内容非常丰富的网页原型。学完本教程，基本就能吃透这款软件，自己就能举一反三，制作各式各样地原型了。                        ', '                                学习Axure RP非常必要。而秒秒学推出的《交互原型设计：Axure RP》绝对是你学习Axure RP 的启蒙教程。这门教程，将用11个章节对Axure软件进行系统、全面的学习。而全新的交互式软件培训功能，能模拟Axure软件互动操作，理论+实战双结合，让您轻松享受交互式学习的乐趣。现在就让我们一起打开《交互原型设计：Axure RP》，迈入界面与交互设计的大门吧！                        ', '0', '', ',,,,,', '0', '0', null, '1', '4');
INSERT INTO `nf_debug` VALUES ('25', '64', 'Xmind基础教程', '0', 'XMind作为国内使用广泛的思维导图软件，拥有强大的功能、优秀的用户体验和操作简单的特点，正在为200万用户提供更高的生产力及创造力。', '0', '0', '3,4,5,,,8,,10,11,', '3,31', '2', '0', '80', '1.互联网从业者 2.追求高效工作方式', '                思维导图被广泛应用在学习还有办公领域，它所呈现的是每个人不同的思维体系，每个人对同一件事情都有着不一样的看法。思维导图就能将你想事情的过程非常清晰的展现在你面前。<br />\r\n<div>\r\n	<br />\r\n</div>            ', '                头脑风暴是一个产生创意的好方法。XMind的头脑风暴模式主要由两部分组成：全屏的编辑器和计时器。<br />\r\n全屏编辑器同时还拥有全部的编辑功能，虽然没有菜单和工具栏，我们可以使用快捷键+右键菜单来添加联系、外框、概要、标签、图标等等可视化信息。<br />\r\n计时器使用得当可以很好的帮助我们提高工作效率，思想的火花跳跃不停。<br />            ', '0', '', ',,,,,', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('26', '65', '墨刀基础教程', '0', '墨刀是一个原型设计工具，可以快速构建移动应用原型与线框图，支持云端保存和实时手机预览。', '0', '0', null, ',', null, '0', '60', '产品新人，交互设计师', '                墨刀是一个原型设计工具，可以快速构建移动应用原型与线框图，支持云端保存和实时手机预览。今天主要是做一个墨刀的基础使用教程，就不重点介绍和对比各原型工具的优缺点了（有空的话我会单独做一篇原型工具的对比分析）。希望这篇教程可以帮助墨刀的初学者快速上手该软件。            ', '                “墨刀”总的来说操作是非常方便的，如果有其他的原型工具基础，用起来可能更好上手。本身支持手机预览功能，更加方便于移动产品的创建和展示。本人也推荐app的产品或设计师使用墨刀来快速创建原型，可以加快自己的制作和展现的时间。            ', '0', '', null, '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('27', '66', '大学英语四级考试强化课程', '0', '大学英语四级考试强化课程是大外在线雅思教研团队根据多年经验推出的短期有针对性的四级应试技巧强化课程。', '0', '0', '3,4,5,,7,8,9,10,11,', '4,41', '1,2', '0', '16', '报名参加大学英语四/六级考试的大学生', '                <p class=\"MsoNormal\">\r\n	<span>大学英语四级考试强化课程是大外在线雅思教研团队根据多年经验推出的短期有针对性的四级应试技巧强化课程。该课程由拥有多年英语四</span><span>级考试培训经验的一线教师担纲，通过在线视频直播或录播的形式让学生能够随时随地了解并掌握英语四</span><span>考试的规则和技巧，从而迅速大幅度提升考试通过概率。 </span>\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	<span>需要特别指出的是，为了能够保障课程效果，在课程开始学习课程之前，四级学生应当熟练掌握高中程度的英语词汇量（</span>3500<span>）</span>\r\n</p>            ', '                <p class=\"MsoNormal\">\r\n	了解大学英语四级考试规则和考试形式；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	掌握正确的英语听力训练方法；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	提高英语快速阅读能力；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	掌握三类体裁的作文写作能力；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	熟练掌握和应用英语高级语法和词汇；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	掌握快速解题技巧。\r\n</p>            ', '0', '独家内部纸质版讲义', ',4,,,,', '0', '0', null, '1', '0');
INSERT INTO `nf_debug` VALUES ('28', '67', '大学英语六级考试强化课程', '0', '大学英语六级考试强化课程是大外在线雅思教研团队根据多年经验推出的短期有针对性的六级应试技巧强化课程。', '0', '0', '3,4,5,,7,8,9,10,11,', '4,42', '1,2', '0', '16', '报名参加大学英语六级考试的大学生', '大学英语六级考试强化课程是大外在线雅思教研团队根据多年经验推出的短期有针对性的六级应试技巧强化课程。该课程由拥有多年英语六级考试培训经验的一线教师担纲，通过在线视频直播或录播的形式让学生能够随时随地了解并掌握英语六考试的规则和技巧，从而迅速大幅度提升考试通过概率。 <br />\r\n需要特别指出的是，为了能够保障课程效果，在课程开始学习课程之前，六级学生应当熟练掌握四级程度的英语词汇量（4500）<br />', '<p class=\"MsoNormal\">\r\n	了解大学英语六级考试规则和考试形式；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	掌握正确的英语听力训练方法；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	提高英语快速阅读能力；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	掌握三类体裁的作文写作能力；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	熟练掌握和应用英语高级语法和词汇；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	掌握快速解题技巧。\r\n</p>', '0', '', ',4,,,,', '0', '0', null, '1', '2');
INSERT INTO `nf_debug` VALUES ('29', '67', '大学英语六级考试词汇强化课程', '0', '大学英语六级考试词汇强化课程是大外在线雅思教研团队根据多年经验推出的短期有针对性的六级词汇应试技巧强化课程。', '0', '0', '3,4,5,,7,8,9,10,11,', '4,42', '1,2', '0', '60', '报名参加大学英语六级考试的大学生', '<span>大学英语六级考试强化课程是大外在线雅思教研团队根据多年经验推出的短期有针对性的六级应试技巧词汇强化课程。</span><br />\r\n<span>需要特别指出的是，为了能够保障课程效果，在课程开始学习课程之前，六级学生应当熟练掌握四级程度的英语词汇量（4500）</span>', '<p class=\"MsoNormal\">\r\n	了解大学英语六级考试规则和考试形式；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	掌握正确的英语听力训练方法；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	提高英语快速阅读能力；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	掌握三类体裁的作文写作能力；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	熟练掌握和应用英语高级语法和词汇；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	掌握快速解题技巧。\r\n</p>', '0', '', ',4,,,,', '0', '0', null, '1', '1');
INSERT INTO `nf_debug` VALUES ('30', '66', '大学英语四级考试词汇强化课程', '0', '大学英语四级考试词汇强化课程是大外在线雅思教研团队根据多年经验推出的短期有针对性的四级词汇应试技巧强化课程。', '0', '0', '3,4,5,,7,8,9,10,11,', '4,41', '1,2', '0', '60', '报名参加大学英语四级考试的大学生', '<span>大学英语四级考试强化课程是大外在线雅思教研团队根据多年经验推出的短期有针对性的四级应试技巧词汇强化课程。</span><br />\r\n<span>需要特别指出的是，为了能够保障课程效果，在课程开始学习课程之前，<span>四级学生应当熟练掌握高中程度的英语词汇量（</span><span>3500</span><span>）</span></span>', '<p class=\"MsoNormal\">\r\n	了解大学英语四级考试规则和考试形式；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	掌握正确的英语听力训练方法；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	提高英语快速阅读能力；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	掌握三类体裁的作文写作能力；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	熟练掌握和应用英语高级语法和词汇；\r\n</p>\r\n<p class=\"MsoNormal\">\r\n	掌握快速解题技巧。\r\n</p>', '0', '', ',4,,,,', '0', '1', null, '1', '3');

-- ----------------------------
-- Table structure for nf_user_attribute
-- ----------------------------
DROP TABLE IF EXISTS `nf_user_attribute`;
CREATE TABLE `nf_user_attribute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '字段名',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '字段标题',
  `field` varchar(100) NOT NULL DEFAULT '' COMMENT '字段定义',
  `type` varchar(20) NOT NULL DEFAULT '' COMMENT '数据类型',
  `value` varchar(100) NOT NULL DEFAULT '' COMMENT '字段默认值',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  `user_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '文档模型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户模块：用户属性字段表';

-- ----------------------------
-- Records of nf_user_attribute
-- ----------------------------
INSERT INTO `nf_user_attribute` VALUES ('1', 'gender', '性别', 'tinyint(3)  NOT NULL ', 'radio', '0', '性别', '1', '1:男\n-1:女\r\n0:保密\r\n', '1', '1438651748', '1438651748', '1');
INSERT INTO `nf_user_attribute` VALUES ('2', 'city', '所在城市', 'varchar(15) NOT NULL', 'text', '', '常住城市', '1', '', '1', '1442026468', '1442123810', '1');
INSERT INTO `nf_user_attribute` VALUES ('3', 'summary', '签名', 'varchar(127) NOT NULL', 'text', '', '签名', '1', '', '1', '1438651748', '1501742715', '1');

-- ----------------------------
-- Table structure for nf_user_message
-- ----------------------------
DROP TABLE IF EXISTS `nf_user_message`;
CREATE TABLE `nf_user_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '消息父ID',
  `title` varchar(1024) NOT NULL DEFAULT '' COMMENT '消息标题',
  `content` text COMMENT '消息内容',
  `type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0系统消息,1评论消息,2私信消息',
  `to_uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '接收用户ID',
  `from_uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '私信消息发信用户ID',
  `is_read` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否已读',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户消息表';

-- ----------------------------
-- Records of nf_user_message
-- ----------------------------

-- ----------------------------
-- Table structure for nf_user_person
-- ----------------------------
DROP TABLE IF EXISTS `nf_user_person`;
CREATE TABLE `nf_user_person` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `gender` tinyint(3) NOT NULL DEFAULT '0' COMMENT '性别',
  `summary` varchar(127) NOT NULL COMMENT '签名',
  `city` varchar(15) NOT NULL COMMENT '所在城市',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户模块：个人类型扩展信息表';

-- ----------------------------
-- Records of nf_user_person
-- ----------------------------

-- ----------------------------
-- Table structure for nf_user_type
-- ----------------------------
DROP TABLE IF EXISTS `nf_user_type`;
CREATE TABLE `nf_user_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(31) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '标题',
  `list_field` varchar(127) NOT NULL DEFAULT '' COMMENT '搜索字段',
  `home_template` varchar(127) NOT NULL DEFAULT '' COMMENT '主页模版',
  `center_template` varchar(127) NOT NULL DEFAULT '' COMMENT '个人中心模板',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户模块：用户类型表';

-- ----------------------------
-- Records of nf_user_type
-- ----------------------------
INSERT INTO `nf_user_type` VALUES ('1', 'person', '个人', '1', '', '', '1438651748', '1501742681', '0', '1');
