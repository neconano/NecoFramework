/*
Navicat MySQL Data Transfer

Source Server         : lc
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : neco_framework

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-08-07 10:23:14
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
INSERT INTO `nf_admin_module` VALUES ('2', 'Home', '用户界面', '', 'fa fa-cog', '#3CA6F1', '用户界面', 'Neconano', '1.0.0', '{\"admin_menu_1\":{\"11000\":{\"pid\":\"0\",\"title\":\"\\u8c03\\u8bd5\\u4e3b\\u5bfc\\u822a1\",\"icon\":\"fa fa-user\",\"id\":\"11000\"},\"11100\":{\"pid\":\"11000\",\"title\":\"\\u8c03\\u8bd5\\u4e3b\\u5bfc\\u822a1\\u4e00\\u7ea7\",\"icon\":\"fa fa-rss-square\",\"id\":\"11100\"},\"11110\":{\"pid\":\"11100\",\"title\":\"\\u8c03\\u8bd5\\u4e3b\\u5bfc\\u822a1\\u4e8c\\u7ea7bbb\",\"icon\":\"fa\",\"url\":\"adminDebug\\/bbb\",\"id\":\"11110\"},\"11120\":{\"pid\":\"11100\",\"title\":\"\\u8c03\\u8bd5\\u4e3b\\u5bfc\\u822a1\\u4e8c\\u7ea7yyy\",\"icon\":\"fa\",\"url\":\"adminDebug\\/yyy\",\"id\":\"11120\"}},\"admin_menu_2\":{\"21000\":{\"pid\":\"0\",\"title\":\"\\u8c03\\u8bd5\\u4e3b\\u5bfc\\u822a2\",\"icon\":\"fa fa-user\",\"id\":\"21000\"},\"21100\":{\"pid\":\"21000\",\"title\":\"\\u8c03\\u8bd5\\u4e3b\\u5bfc\\u822a2\\u4e00\\u7ea7\",\"icon\":\"fa fa-rss-square\",\"id\":\"21100\"},\"21110\":{\"pid\":\"21100\",\"title\":\"\\u8c03\\u8bd5\\u4e3b\\u5bfc\\u822a2\\u4e8c\\u7ea7ccc\",\"icon\":\"fa\",\"url\":\"adminDebug\\/ccc\",\"id\":\"21110\"}}}', '', '{\"1\":{\"pid\":\"0\",\"title\":\"\\u8c03\\u8bd5\\u4e3b\\u5bfc\\u822a3\",\"icon\":\"fa fa-user\",\"id\":\"1\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u8c03\\u8bd5\\u4e3b\\u5bfc\\u822a3\\u4e00\\u7ea7\",\"icon\":\"fa fa-rss-square\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u8c03\\u8bd5\\u4e3b\\u5bfc\\u822a3\\u4e8c\\u7ea7bbb\",\"icon\":\"fa\",\"url\":\"home\\/debug\\/bbb\",\"id\":\"3\"},\"4\":{\"pid\":\"2\",\"title\":\"\\u8c03\\u8bd5\\u4e3b\\u5bfc\\u822a3\\u4e8c\\u7ea7yyy\",\"icon\":\"fa\",\"url\":\"home\\/debug\\/yyy\",\"id\":\"4\"}}', '0', '1500429936', '1501555855', '0', '1');
INSERT INTO `nf_admin_module` VALUES ('3', 'Cms', 'CMS门户', '', 'fa fa-cog', '#3CA6F1', 'CMS门户', 'Neconano', '1.0.0', '', '{\"need_check\":\"0\",\"toggle_comment\":\"1\",\"group_list\":\"1:\\u9ed8\\u8ba4\",\"cate\":\"a:1\",\"taglib\":[\"Cms\"]}', '{\"1\":{\"id\":\"1\",\"pid\":\"0\",\"title\":\"CMS\",\"icon\":\"fa fa-newspaper-o\"},\"2\":{\"pid\":\"1\",\"title\":\"\\u5185\\u5bb9\\u7ba1\\u7406\",\"icon\":\"fa fa-folder-open-o\",\"id\":\"2\"},\"3\":{\"pid\":\"2\",\"title\":\"\\u6587\\u7ae0\\u914d\\u7f6e\",\"icon\":\"fa fa-wrench\",\"url\":\"Cms\\/Index\\/module_config\",\"id\":\"3\"},\"4\":{\"pid\":\"2\",\"title\":\"\\u6587\\u6863\\u6a21\\u578b\",\"icon\":\"fa fa-th-large\",\"url\":\"Cms\\/Type\\/index\",\"id\":\"4\"},\"5\":{\"pid\":\"4\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Type\\/add\",\"id\":\"5\"},\"6\":{\"pid\":\"4\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Type\\/edit\",\"id\":\"6\"},\"7\":{\"pid\":\"4\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Type\\/setStatus\",\"id\":\"7\"},\"8\":{\"pid\":\"4\",\"title\":\"\\u5b57\\u6bb5\\u7ba1\\u7406\",\"icon\":\"fa fa-database\",\"url\":\"Cms\\/Attribute\\/index\",\"id\":\"8\"},\"9\":{\"pid\":\"8\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Attribute\\/add\",\"id\":\"9\"},\"10\":{\"pid\":\"8\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Attribute\\/edit\",\"id\":\"10\"},\"11\":{\"pid\":\"8\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Attribute\\/setStatus\",\"id\":\"11\"},\"12\":{\"pid\":\"2\",\"title\":\"\\u680f\\u76ee\\u5206\\u7c7b\",\"icon\":\"fa fa-navicon\",\"url\":\"Cms\\/Category\\/index\",\"id\":\"12\"},\"13\":{\"pid\":\"12\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Category\\/add\",\"id\":\"13\"},\"14\":{\"pid\":\"12\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Category\\/edit\",\"id\":\"14\"},\"15\":{\"pid\":\"12\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Category\\/setStatus\",\"id\":\"15\"},\"16\":{\"pid\":\"12\",\"title\":\"\\u6587\\u6863\\u7ba1\\u7406\",\"icon\":\"fa fa-edit\",\"url\":\"Cms\\/Index\\/index\",\"id\":\"16\"},\"17\":{\"pid\":\"16\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Index\\/add\",\"id\":\"17\"},\"18\":{\"pid\":\"16\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Index\\/edit\",\"id\":\"18\"},\"19\":{\"pid\":\"16\",\"title\":\"\\u65b0\\u589e\",\"url\":\"Cms\\/Index\\/setStatus\",\"id\":\"19\"},\"36\":{\"pid\":\"2\",\"title\":\"\\u56de\\u6536\\u7ad9\",\"icon\":\"fa fa-recycle\",\"url\":\"Cms\\/Index\\/recycle\",\"id\":\"36\"},\"37\":{\"pid\":\"36\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Notice\\/setStatus\",\"id\":\"37\"},\"38\":{\"pid\":\"2\",\"title\":\"\\u4e3e\\u62a5\\u5217\\u8868\",\"icon\":\"fa fa-info-circle\",\"url\":\"Cms\\/Report\\/index\",\"id\":\"38\"},\"39\":{\"pid\":\"38\",\"title\":\"\\u7f16\\u8f91\",\"url\":\"Cms\\/Report\\/edit\",\"id\":\"39\"},\"40\":{\"pid\":\"38\",\"title\":\"\\u8bbe\\u7f6e\\u72b6\\u6001\",\"url\":\"Cms\\/Report\\/setStatus\",\"id\":\"40\"}}', '0', '1501571982', '1501571982', '0', '1');
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
INSERT INTO `nf_admin_session` VALUES ('nf_admin_bbs851m5vd15u5a8vj8aruc253', 0x6E665F61646D696E5F7C613A323A7B733A393A22757365725F61757468223B613A353A7B733A333A22756964223B733A313A2231223B733A383A22757365726E616D65223B733A353A2261646D696E223B733A383A226E69636B6E616D65223B733A31353A22E8B685E7BAA7E7AEA1E79086E59198223B733A363A22617661746172223B733A313A2230223B733A31303A226176617461725F75726C223B733A34383A22687474703A2F2F7075622E6E662E636F6D2F6E662F686F6D652F696D672F64656661756C742F6176617461722E706E67223B7D733A31343A22757365725F617574685F7369676E223B733A34303A2234346239316436333830333465633537663066623137643265386237356362663262396463353438223B7D, '1', '1502072425');

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
