/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : shopdz

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-12-19 14:51:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `pre_address`
-- ----------------------------
DROP TABLE IF EXISTS `pre_address`;
CREATE TABLE `pre_address` (
  `address_id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '地址ID',
  `member_id` mediumint(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `member_username` varchar(20) NOT NULL DEFAULT '' COMMENT '登录账号',
  `true_name` varchar(50) NOT NULL DEFAULT '' COMMENT '会员姓名',
  `area_id` mediumint(10) unsigned NOT NULL DEFAULT '0' COMMENT '地区ID',
  `city_id` mediumint(9) DEFAULT '0' COMMENT '市级ID',
  `province_id` mediumint(10) unsigned NOT NULL DEFAULT '0' COMMENT '省级ID',
  `area_info` varchar(255) NOT NULL DEFAULT '' COMMENT '地区内容',
  `address` varchar(255) NOT NULL COMMENT '地址',
  `tel_phone` varchar(20) DEFAULT '' COMMENT '座机电话',
  `mob_phone` varchar(15) DEFAULT '' COMMENT '手机电话',
  `is_default` enum('0','1') NOT NULL DEFAULT '0' COMMENT '1默认收货地址',
  PRIMARY KEY (`address_id`),
  KEY `member_id` (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_address
-- ----------------------------
INSERT INTO `pre_address` VALUES ('1', '1', '', '陈可可', '37', '36', '1', '北京 北京市 东城区', '东奔西走', '18310728440', '', '1');
INSERT INTO `pre_address` VALUES ('2', '2', '', '向华居', '50', '36', '1', '北京 北京市 大兴区', '旧宫', '13436200979', '', '1');

-- ----------------------------
-- Table structure for `pre_admin`
-- ----------------------------
DROP TABLE IF EXISTS `pre_admin`;
CREATE TABLE `pre_admin` (
  `uid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL DEFAULT '' COMMENT '用户名',
  `groupid` int(4) unsigned NOT NULL DEFAULT '0' COMMENT 'id',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `email` varchar(32) NOT NULL DEFAULT '' COMMENT '电子邮件',
  `salt` varchar(32) NOT NULL DEFAULT '' COMMENT '盐值',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT 'IP',
  `isfounder` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT ' ',
  `lastdateline` int(6) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `avatar` varchar(50) DEFAULT NULL COMMENT '头像',
  `open_id` varchar(255) DEFAULT '',
  `statues` varchar(5) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_admin
-- ----------------------------
INSERT INTO `pre_admin` VALUES ('1', 'admin', '0', '709ce6deeff0fe61dd511d6aade6388a', 'admin@admin.com', 'E26iNT', '127.0.0.1', '1', '1545202156', '1540710989', '', '', '');
INSERT INTO `pre_admin` VALUES ('2', 'admins', '0', '123456', 'admin@admin.com', 'E26iNT', '127.0.0.1', '1', '1540711027', '4294967295', null, '', '');

-- ----------------------------
-- Table structure for `pre_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `pre_admin_log`;
CREATE TABLE `pre_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` char(225) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  `ip` char(20) NOT NULL DEFAULT '' COMMENT 'IP',
  `url` varchar(50) NOT NULL DEFAULT '' COMMENT 'controller&action',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_admin_log
-- ----------------------------
INSERT INTO `pre_admin_log` VALUES ('1', '商城基本信息设置-清除缓存', 'array (\n  \'radio-1-set\' => \'on\',\n  \'cleans\' => \n  array (\n    0 => \'get_special_item\',\n    1 => \'get_setting\',\n    2 => \'get_all_category\',\n    3 => \'spu\',\n  ),\n)', '1472027430', 'admin', '1', '0.0.0.0', 'Setting/clean_cache');
INSERT INTO `pre_admin_log` VALUES ('2', '登录', '登录', '1473219601', 'admin', '1', '124.207.8.66', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('3', '第三方登录', 'array (\n  \'wx_AppID\' => \'\',\n  \'wx_AppSecret\' => \'\',\n  \'wx_login\' => \'off\',\n)', '1473219659', 'admin', '1', '124.207.8.66', 'Wx/wxloginOp');
INSERT INTO `pre_admin_log` VALUES ('4', '登录', '登录', '1473228285', 'admin', '1', '124.207.8.66', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('5', '登录', '登录', '1540711024', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('6', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'\',\n  \'shop_login\' => \'\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1540711030', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('7', '商城基本信息设置-清除缓存', 'array (\n  \'radio-1-set\' => \'on\',\n  \'cleans\' => \n  array (\n    0 => \'get_special_item\',\n    1 => \'web_setting\',\n    2 => \'get_all_category\',\n    3 => \'spu\',\n  ),\n)', '1540711042', 'admin', '1', '127.0.0.1', 'Setting/clean_cache');
INSERT INTO `pre_admin_log` VALUES ('8', '支付方式', 'array (\n  \'payment_code\' => \'wx\',\n  \'payment_state\' => 1,\n  \'payment_config\' => \'a:6:{s:5:\"appid\";s:3:\"aaa\";s:9:\"appsecret\";s:4:\"aaaa\";s:5:\"mchid\";s:6:\"aaaaaa\";s:3:\"key\";s:4:\"aaaa\";s:12:\"sslcert_path\";s:32:\"Pem/2018-10-28/5bd564a15ed81.png\";s:11:\"sslkey_path\";s:32:\"Pem/2018-10-28/5bd564a3ec3cc.png\";}\',\n  \'payment_name\' => \'微信\',\n)', '1540711588', 'admin', '1', '127.0.0.1', 'Setting/payment');
INSERT INTO `pre_admin_log` VALUES ('9', '支付方式', 'array (\n  \'payment_code\' => \'alipay\',\n  \'payment_state\' => 1,\n  \'payment_config\' => \'a:6:{s:7:\"account\";s:7:\"adfasdf\";s:3:\"pid\";s:8:\"asdfasdf\";s:6:\"app_id\";s:8:\"adsfasdf\";s:9:\"seller_id\";s:8:\"asdfasdf\";s:3:\"key\";s:8:\"asdfasdf\";s:16:\"private_key_path\";s:11:\"adsfasdfasd\";}\',\n  \'payment_name\' => \'支付宝\',\n)', '1540711599', 'admin', '1', '127.0.0.1', 'Setting/payment');
INSERT INTO `pre_admin_log` VALUES ('10', '商城基本信息设置-清除缓存', 'array (\n  \'radio-1-set\' => \'on\',\n  \'cleans\' => \n  array (\n    0 => \'get_special_item\',\n    1 => \'web_setting\',\n    2 => \'get_all_category\',\n    3 => \'spu\',\n  ),\n)', '1540711612', 'admin', '1', '127.0.0.1', 'Setting/clean_cache');
INSERT INTO `pre_admin_log` VALUES ('11', '登录', '登录', '1542633178', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('12', '退出', '退出', '1542633207', 'admin', '1', '127.0.0.1', 'Login/logout');
INSERT INTO `pre_admin_log` VALUES ('13', '登录', '登录', '1542633232', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('14', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'Common/2018-11-20/5bf3fbd837ed8.png\',\n  \'shop_login\' => \'Common/2018-11-20/5bf3fbe56d174.png\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1542716411', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('15', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'Common/2018-11-20/5bf3fbd837ed8.png\',\n  \'shop_login\' => \'Common/2018-11-20/5bf3fbe56d174.png\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1542716619', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('16', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'Common/2018-11-20/5bf3fbd837ed8.png\',\n  \'shop_login\' => \'Common/2018-11-20/5bf3fbe56d174.png\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1542716626', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('17', '退出', '退出', '1542782100', 'admin', '1', '127.0.0.1', 'Login/logout');
INSERT INTO `pre_admin_log` VALUES ('18', '登录', '登录', '1542782125', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('19', '退出', '退出', '1542793955', 'admin', '1', '127.0.0.1', 'Login/logout');
INSERT INTO `pre_admin_log` VALUES ('20', '登录', '登录', '1542793974', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('21', '登录', '登录', '1542800700', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('22', '登录', '登录', '1542802991', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('23', '登录', '登录', '1542803110', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('24', '登录', '登录', '1542803268', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('25', '登录', '登录', '1542803621', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('26', '商城基本信息设置-清除缓存', 'array (\n  \'radio-1-set\' => \'on\',\n  \'cleans\' => \n  array (\n    0 => \'get_special_item\',\n    1 => \'web_setting\',\n    2 => \'get_all_category\',\n    3 => \'spu\',\n  ),\n)', '1542803832', 'admin', '1', '127.0.0.1', 'Setting/clean_cache');
INSERT INTO `pre_admin_log` VALUES ('27', '登录', '登录', '1542807285', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('28', '登录', '登录', '1542808951', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('29', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'Common/2018-11-20/5bf3fbd837ed8.png\',\n  \'shop_login\' => \'Common/2018-11-20/5bf3fbe56d174.png\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1542809294', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('30', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'Common/2018-11-20/5bf3fbd837ed8.png\',\n  \'shop_login\' => \'Common/2018-11-20/5bf3fbe56d174.png\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1542809300', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('31', '登录', '登录', '1542872371', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('32', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'Common/2018-11-20/5bf3fbd837ed8.png\',\n  \'shop_login\' => \'Common/2018-11-20/5bf3fbe56d174.png\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1542883305', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('33', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'Common/2018-11-20/5bf3fbd837ed8.png\',\n  \'shop_login\' => \'Common/2018-11-20/5bf3fbe56d174.png\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1542883311', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('34', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'Common/2018-11-20/5bf3fbd837ed8.png\',\n  \'shop_login\' => \'Common/2018-11-20/5bf3fbe56d174.png\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1542883317', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('35', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'Common/2018-11-20/5bf3fbd837ed8.png\',\n  \'shop_login\' => \'Common/2018-11-20/5bf3fbe56d174.png\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1542883322', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('36', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'Common/2018-11-20/5bf3fbd837ed8.png\',\n  \'shop_login\' => \'Common/2018-11-20/5bf3fbe56d174.png\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1542883330', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('37', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'Common/2018-11-20/5bf3fbd837ed8.png\',\n  \'shop_login\' => \'Common/2018-11-20/5bf3fbe56d174.png\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1542984043', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('38', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'Common/2018-11-20/5bf3fbd837ed8.png\',\n  \'shop_login\' => \'Common/2018-11-20/5bf3fbe56d174.png\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1542984145', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('39', '商城基本信息设置', 'array (\n  \'form_submit\' => \'submit\',\n  \'shop_name\' => \'ShopDZ商城\',\n  \'web_introduce\' => \'好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！\',\n  \'shop_logo\' => \'Common/2018-11-20/5bf3fbd837ed8.png\',\n  \'shop_login\' => \'Common/2018-11-20/5bf3fbe56d174.png\',\n  \'footer_info\' => \'ShopDZ INC.\',\n  \'record_number\' => \'京ICP：1234567\',\n  \'enterprise_contact\' => \'\',\n  \'statistics_code\' => \'&lt;script&gt;&lt;/script&gt;\',\n  \'web_status\' => 1,\n  \'close_reason\' => \'\',\n)', '1542984154', 'admin', '1', '127.0.0.1', 'Setting/base');
INSERT INTO `pre_admin_log` VALUES ('40', '登录', '登录', '1543205928', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('41', '登录', '登录', '1543224115', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('42', '登录', '登录', '1543241329', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('43', '登录', '登录', '1543241453', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('44', '登录', '登录', '1543241676', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('45', '登录', '登录', '1543300844', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('46', '登录', '登录', '1543389539', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('47', '登录', '登录', '1543394133', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('48', '登录', '登录', '1543396445', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('49', '登录', '登录', '1543481814', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('50', '登录', '登录', '1543560377', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('51', '登录', '登录', '1543574539', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('52', '登录', '登录', '1543642797', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('53', '新增优惠券模板', 'array (\n  \'rpacket_t_title\' => \'测试\',\n  \'rpacket_t_price\' => 5,\n  \'rpacket_t_limit\' => 100,\n  \'rpacket_t_total\' => 10,\n  \'rpacket_t_points\' => 500,\n  \'rpacket_t_eachlimit\' => \'1\',\n  \'rpacket_t_state\' => \'1\',\n  \'rpacket_t_start_date\' => 1543680000,\n  \'rpacket_t_end_date\' => 1543852799,\n  \'rpacket_t_save_time\' => 1543642853,\n  \'rpacket_t_desc\' => \'\',\n  \'rpacket_t_adminid\' => \'\',\n  \'rpacket_t_giveout\' => 0,\n  \'rpacket_t_used\' => 0,\n  \'rpacket_t_updatetime\' => 1543642853,\n  \'rpacket_t_recommend\' => 0,\n  \'rpacket_t_gettype\' => 0,\n  \'rpacket_t_isbuild\' => 1,\n  \'rpacket_t_mgradelimit\' => 0,\n  \'rpacket_t_wx\' => 0,\n  \'rpacket_t_share\' => 0,\n  \'rpacket_t_color\' => \'Color010\',\n)', '1543642852', 'admin', '1', '127.0.0.1', 'Coupon/add');
INSERT INTO `pre_admin_log` VALUES ('54', '登录', '登录', '1543725540', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('55', '删除优惠券模板', 'array (\n  \'checksubmit\' => \'yes\',\n  \'redpacket_t_id\' => \'1\',\n  \'key\' => \'4f9ca8aff76eb279c8c26ceba93e6f66\',\n  \'uid\' => \'2\',\n  \'PHPSESSID\' => \'6aje1o8qv4u3qan771kbvefrq1\',\n  \'pre_user_unique_id\' => \'iY83oByD\',\n  \'think_language\' => \'zh-CN\',\n  \'pre_think_language\' => \'zh-CN\',\n)', '1543731797', 'admin', '1', '127.0.0.1', 'Coupon/delete');
INSERT INTO `pre_admin_log` VALUES ('56', '登录', '登录', '1543809357', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('57', '新增优惠券模板', 'array (\n  \'rpacket_t_title\' => \'111\',\n  \'rpacket_t_price\' => 11,\n  \'rpacket_t_limit\' => 1111,\n  \'rpacket_t_total\' => 1,\n  \'rpacket_t_points\' => 11,\n  \'rpacket_t_eachlimit\' => \'1\',\n  \'rpacket_t_state\' => \'1\',\n  \'rpacket_t_start_date\' => 1544630400,\n  \'rpacket_t_end_date\' => 1545321599,\n  \'rpacket_t_save_time\' => 1543822125,\n  \'rpacket_t_desc\' => \'\',\n  \'rpacket_t_adminid\' => \'\',\n  \'rpacket_t_giveout\' => 0,\n  \'rpacket_t_used\' => 0,\n  \'rpacket_t_updatetime\' => 1543822125,\n  \'rpacket_t_recommend\' => 0,\n  \'rpacket_t_gettype\' => 0,\n  \'rpacket_t_isbuild\' => 1,\n  \'rpacket_t_mgradelimit\' => 0,\n  \'rpacket_t_wx\' => 0,\n  \'rpacket_t_share\' => 0,\n  \'rpacket_t_color\' => \'Color010\',\n)', '1543822124', 'admin', '1', '127.0.0.1', 'Coupon/add');
INSERT INTO `pre_admin_log` VALUES ('58', '登录', '登录', '1543908571', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('59', '登录', '登录', '1544077336', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('60', '登录', '登录', '1544162369', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('61', '登录', '登录', '1544163775', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('62', '登录', '登录', '1544164574', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('63', '登录', '登录', '1544164669', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('64', '登录', '登录', '1544164910', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('65', '登录', '登录', '1544165130', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('66', '登录', '登录', '1544169128', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('67', '登录', '登录', '1544172023', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('68', '登录', '登录', '1544172342', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('69', '登录', '登录', '1544237116', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('70', '登录', '登录', '1544250987', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('71', '登录', '登录', '1544251987', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('72', '登录', '登录', '1544325611', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('73', '登录', '登录', '1544422177', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('74', '登录', '登录', '1544428659', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('75', '登录', '登录', '1544428705', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('76', '登录', '登录', '1544439560', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('77', '登录', '登录', '1544514078', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('78', '登录', '登录', '1544529516', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('79', '登录', '登录', '1544532273', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('80', '登录', '登录', '1544600612', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('81', '登录', '登录', '1544609884', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('82', '登录', '登录', '1544615771', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('83', '登录', '登录', '1544688817', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('84', '登录', '登录', '1544936658', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('85', '商城基本信息设置-清除缓存', 'array (\n  \'radio-1-set\' => \'on\',\n  \'cleans\' => \n  array (\n    0 => \'get_special_item\',\n    1 => \'web_setting\',\n    2 => \'get_all_category\',\n    3 => \'spu\',\n  ),\n)', '1544937137', 'admin', '1', '127.0.0.1', 'Setting/clean_cache');
INSERT INTO `pre_admin_log` VALUES ('86', '登录', '登录', '1544939771', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('87', '登录', '登录', '1544940396', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('88', '登录', '登录', '1544944189', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('89', '登录', '登录', '1544953446', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('90', '登录', '登录', '1545030493', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('91', '登录', '登录', '1545032919', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('92', '登录', '登录', '1545109518', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('93', '登录', '登录', '1545120757', 'admin', '1', '127.0.0.1', 'Login/login');
INSERT INTO `pre_admin_log` VALUES ('94', '登录', '登录', '1545202156', 'admin', '1', '127.0.0.1', 'Login/login');

-- ----------------------------
-- Table structure for `pre_adv`
-- ----------------------------
DROP TABLE IF EXISTS `pre_adv`;
CREATE TABLE `pre_adv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('layer','bannerimg','bannertext') NOT NULL,
  `title` varchar(64) NOT NULL DEFAULT '',
  `position` enum('top','bottom','window','none') NOT NULL DEFAULT 'none',
  `clickevent` enum('url','redpacket','category','goods','none') NOT NULL DEFAULT 'none',
  `img` varchar(64) NOT NULL DEFAULT '',
  `height` smallint(6) NOT NULL DEFAULT '0',
  `content` text NOT NULL COMMENT 'html',
  `extendfield` varchar(128) NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_adv
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_area`
-- ----------------------------
DROP TABLE IF EXISTS `pre_area`;
CREATE TABLE `pre_area` (
  `area_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引ID',
  `area_name` varchar(50) NOT NULL COMMENT '地区名称',
  `area_parent_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '地区父ID',
  `area_sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `area_deep` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '地区深度，从1开始',
  `area_region` varchar(3) DEFAULT NULL COMMENT '大区名称',
  PRIMARY KEY (`area_id`),
  KEY `area_parent_id` (`area_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45086 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_area
-- ----------------------------
INSERT INTO `pre_area` VALUES ('1', '北京', '0', '0', '1', null);
INSERT INTO `pre_area` VALUES ('2', '天津', '0', '0', '1', null);
INSERT INTO `pre_area` VALUES ('3', '河北', '0', '0', '1', '华北');
INSERT INTO `pre_area` VALUES ('4', '山西', '0', '0', '1', '华北');
INSERT INTO `pre_area` VALUES ('5', '内蒙古', '0', '0', '1', '华北');
INSERT INTO `pre_area` VALUES ('6', '辽宁', '0', '0', '1', '东北');
INSERT INTO `pre_area` VALUES ('7', '吉林', '0', '0', '1', '东北');
INSERT INTO `pre_area` VALUES ('8', '黑龙江', '0', '0', '1', '东北');
INSERT INTO `pre_area` VALUES ('9', '上海', '0', '0', '1', '华东');
INSERT INTO `pre_area` VALUES ('10', '江苏', '0', '0', '1', '华东');
INSERT INTO `pre_area` VALUES ('11', '浙江', '0', '0', '1', '华东');
INSERT INTO `pre_area` VALUES ('12', '安徽', '0', '0', '1', '华东');
INSERT INTO `pre_area` VALUES ('13', '福建', '0', '0', '1', null);
INSERT INTO `pre_area` VALUES ('14', '江西', '0', '0', '1', '华东');
INSERT INTO `pre_area` VALUES ('15', '山东', '0', '0', '1', '华东');
INSERT INTO `pre_area` VALUES ('16', '河南', '0', '0', '1', '华中');
INSERT INTO `pre_area` VALUES ('17', '湖北', '0', '0', '1', '华中');
INSERT INTO `pre_area` VALUES ('18', '湖南', '0', '0', '1', '华中');
INSERT INTO `pre_area` VALUES ('19', '广东', '0', '0', '1', '华南');
INSERT INTO `pre_area` VALUES ('20', '广西', '0', '0', '1', '华南');
INSERT INTO `pre_area` VALUES ('21', '海南', '0', '0', '1', '华南');
INSERT INTO `pre_area` VALUES ('22', '重庆', '0', '0', '1', '西南');
INSERT INTO `pre_area` VALUES ('23', '四川', '0', '0', '1', '西南');
INSERT INTO `pre_area` VALUES ('24', '贵州', '0', '0', '1', '西南');
INSERT INTO `pre_area` VALUES ('25', '云南', '0', '0', '1', '西南');
INSERT INTO `pre_area` VALUES ('26', '西藏', '0', '0', '1', '西南');
INSERT INTO `pre_area` VALUES ('27', '陕西', '0', '0', '1', '西北');
INSERT INTO `pre_area` VALUES ('28', '甘肃', '0', '0', '1', '西北');
INSERT INTO `pre_area` VALUES ('29', '青海', '0', '0', '1', '西北');
INSERT INTO `pre_area` VALUES ('30', '宁夏', '0', '0', '1', '西北');
INSERT INTO `pre_area` VALUES ('31', '新疆', '0', '0', '1', '西北');
INSERT INTO `pre_area` VALUES ('32', '台湾', '0', '0', '1', '港澳台');
INSERT INTO `pre_area` VALUES ('33', '香港', '0', '0', '1', '港澳台');
INSERT INTO `pre_area` VALUES ('34', '澳门', '0', '0', '1', '港澳台');
INSERT INTO `pre_area` VALUES ('35', '海外', '0', '0', '1', '海外');
INSERT INTO `pre_area` VALUES ('36', '北京市', '1', '0', '2', null);
INSERT INTO `pre_area` VALUES ('37', '东城区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('38', '西城区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('39', '上海市', '9', '0', '2', null);
INSERT INTO `pre_area` VALUES ('40', '天津市', '2', '0', '2', null);
INSERT INTO `pre_area` VALUES ('41', '朝阳区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('42', '丰台区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('43', '石景山区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('44', '海淀区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('45', '门头沟区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('46', '房山区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('47', '通州区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('48', '顺义区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('49', '昌平区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('50', '大兴区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('51', '怀柔区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('52', '平谷区', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('53', '密云县', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('54', '延庆县', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('55', '和平区', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('56', '河东区', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('57', '河西区', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('58', '南开区', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('59', '河北区', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('60', '红桥区', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('61', '塘沽区', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('62', '重庆市', '22', '0', '2', null);
INSERT INTO `pre_area` VALUES ('64', '东丽区', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('65', '西青区', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('66', '津南区', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('67', '北辰区', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('68', '武清区', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('69', '宝坻区', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('70', '宁河县', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('71', '静海县', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('72', '蓟县', '40', '0', '3', null);
INSERT INTO `pre_area` VALUES ('73', '石家庄市', '3', '0', '2', null);
INSERT INTO `pre_area` VALUES ('74', '唐山市', '3', '0', '2', null);
INSERT INTO `pre_area` VALUES ('75', '秦皇岛市', '3', '0', '2', null);
INSERT INTO `pre_area` VALUES ('76', '邯郸市', '3', '0', '2', null);
INSERT INTO `pre_area` VALUES ('77', '邢台市', '3', '0', '2', null);
INSERT INTO `pre_area` VALUES ('78', '保定市', '3', '0', '2', null);
INSERT INTO `pre_area` VALUES ('79', '张家口市', '3', '0', '2', null);
INSERT INTO `pre_area` VALUES ('80', '承德市', '3', '0', '2', null);
INSERT INTO `pre_area` VALUES ('81', '衡水市', '3', '0', '2', null);
INSERT INTO `pre_area` VALUES ('82', '廊坊市', '3', '0', '2', null);
INSERT INTO `pre_area` VALUES ('83', '沧州市', '3', '0', '2', null);
INSERT INTO `pre_area` VALUES ('84', '太原市', '4', '0', '2', null);
INSERT INTO `pre_area` VALUES ('85', '大同市', '4', '0', '2', null);
INSERT INTO `pre_area` VALUES ('86', '阳泉市', '4', '0', '2', null);
INSERT INTO `pre_area` VALUES ('87', '长治市', '4', '0', '2', null);
INSERT INTO `pre_area` VALUES ('88', '晋城市', '4', '0', '2', null);
INSERT INTO `pre_area` VALUES ('89', '朔州市', '4', '0', '2', null);
INSERT INTO `pre_area` VALUES ('90', '晋中市', '4', '0', '2', null);
INSERT INTO `pre_area` VALUES ('91', '运城市', '4', '0', '2', null);
INSERT INTO `pre_area` VALUES ('92', '忻州市', '4', '0', '2', null);
INSERT INTO `pre_area` VALUES ('93', '临汾市', '4', '0', '2', null);
INSERT INTO `pre_area` VALUES ('94', '吕梁市', '4', '0', '2', null);
INSERT INTO `pre_area` VALUES ('95', '呼和浩特市', '5', '0', '2', null);
INSERT INTO `pre_area` VALUES ('96', '包头市', '5', '0', '2', null);
INSERT INTO `pre_area` VALUES ('97', '乌海市', '5', '0', '2', null);
INSERT INTO `pre_area` VALUES ('98', '赤峰市', '5', '0', '2', null);
INSERT INTO `pre_area` VALUES ('99', '通辽市', '5', '0', '2', null);
INSERT INTO `pre_area` VALUES ('100', '鄂尔多斯市', '5', '0', '2', null);
INSERT INTO `pre_area` VALUES ('101', '呼伦贝尔市', '5', '0', '2', null);
INSERT INTO `pre_area` VALUES ('102', '巴彦淖尔市', '5', '0', '2', null);
INSERT INTO `pre_area` VALUES ('103', '乌兰察布市', '5', '0', '2', null);
INSERT INTO `pre_area` VALUES ('104', '兴安盟', '5', '0', '2', null);
INSERT INTO `pre_area` VALUES ('105', '锡林郭勒盟', '5', '0', '2', null);
INSERT INTO `pre_area` VALUES ('106', '阿拉善盟', '5', '0', '2', null);
INSERT INTO `pre_area` VALUES ('107', '沈阳市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('108', '大连市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('109', '鞍山市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('110', '抚顺市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('111', '本溪市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('112', '丹东市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('113', '锦州市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('114', '营口市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('115', '阜新市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('116', '辽阳市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('117', '盘锦市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('118', '铁岭市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('119', '朝阳市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('120', '葫芦岛市', '6', '0', '2', null);
INSERT INTO `pre_area` VALUES ('121', '长春市', '7', '0', '2', null);
INSERT INTO `pre_area` VALUES ('122', '吉林市', '7', '0', '2', null);
INSERT INTO `pre_area` VALUES ('123', '四平市', '7', '0', '2', null);
INSERT INTO `pre_area` VALUES ('124', '辽源市', '7', '0', '2', null);
INSERT INTO `pre_area` VALUES ('125', '通化市', '7', '0', '2', null);
INSERT INTO `pre_area` VALUES ('126', '白山市', '7', '0', '2', null);
INSERT INTO `pre_area` VALUES ('127', '松原市', '7', '0', '2', null);
INSERT INTO `pre_area` VALUES ('128', '白城市', '7', '0', '2', null);
INSERT INTO `pre_area` VALUES ('129', '延边朝鲜族自治州', '7', '0', '2', null);
INSERT INTO `pre_area` VALUES ('130', '哈尔滨市', '8', '0', '2', null);
INSERT INTO `pre_area` VALUES ('131', '齐齐哈尔市', '8', '0', '2', null);
INSERT INTO `pre_area` VALUES ('132', '鸡西市', '8', '0', '2', null);
INSERT INTO `pre_area` VALUES ('133', '鹤岗市', '8', '0', '2', null);
INSERT INTO `pre_area` VALUES ('134', '双鸭山市', '8', '0', '2', null);
INSERT INTO `pre_area` VALUES ('135', '大庆市', '8', '0', '2', null);
INSERT INTO `pre_area` VALUES ('136', '伊春市', '8', '0', '2', null);
INSERT INTO `pre_area` VALUES ('137', '佳木斯市', '8', '0', '2', null);
INSERT INTO `pre_area` VALUES ('138', '七台河市', '8', '0', '2', null);
INSERT INTO `pre_area` VALUES ('139', '牡丹江市', '8', '0', '2', null);
INSERT INTO `pre_area` VALUES ('140', '黑河市', '8', '0', '2', null);
INSERT INTO `pre_area` VALUES ('141', '绥化市', '8', '0', '2', null);
INSERT INTO `pre_area` VALUES ('142', '大兴安岭地区', '8', '0', '2', null);
INSERT INTO `pre_area` VALUES ('143', '黄浦区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('144', '卢湾区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('145', '徐汇区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('146', '长宁区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('147', '静安区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('148', '普陀区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('149', '闸北区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('150', '虹口区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('151', '杨浦区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('152', '闵行区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('153', '宝山区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('154', '嘉定区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('155', '浦东新区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('156', '金山区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('157', '松江区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('158', '青浦区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('159', '南汇区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('160', '奉贤区', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('161', '崇明县', '39', '0', '3', null);
INSERT INTO `pre_area` VALUES ('162', '南京市', '10', '0', '2', null);
INSERT INTO `pre_area` VALUES ('163', '无锡市', '10', '0', '2', null);
INSERT INTO `pre_area` VALUES ('164', '徐州市', '10', '0', '2', null);
INSERT INTO `pre_area` VALUES ('165', '常州市', '10', '0', '2', null);
INSERT INTO `pre_area` VALUES ('166', '苏州市', '10', '0', '2', null);
INSERT INTO `pre_area` VALUES ('167', '南通市', '10', '0', '2', null);
INSERT INTO `pre_area` VALUES ('168', '连云港市', '10', '0', '2', null);
INSERT INTO `pre_area` VALUES ('169', '淮安市', '10', '0', '2', null);
INSERT INTO `pre_area` VALUES ('170', '盐城市', '10', '0', '2', null);
INSERT INTO `pre_area` VALUES ('171', '扬州市', '10', '0', '2', null);
INSERT INTO `pre_area` VALUES ('172', '镇江市', '10', '0', '2', null);
INSERT INTO `pre_area` VALUES ('173', '泰州市', '10', '0', '2', null);
INSERT INTO `pre_area` VALUES ('174', '宿迁市', '10', '0', '2', null);
INSERT INTO `pre_area` VALUES ('175', '杭州市', '11', '0', '2', null);
INSERT INTO `pre_area` VALUES ('176', '宁波市', '11', '0', '2', null);
INSERT INTO `pre_area` VALUES ('177', '温州市', '11', '0', '2', null);
INSERT INTO `pre_area` VALUES ('178', '嘉兴市', '11', '0', '2', null);
INSERT INTO `pre_area` VALUES ('179', '湖州市', '11', '0', '2', null);
INSERT INTO `pre_area` VALUES ('180', '绍兴市', '11', '0', '2', null);
INSERT INTO `pre_area` VALUES ('181', '舟山市', '11', '0', '2', null);
INSERT INTO `pre_area` VALUES ('182', '衢州市', '11', '0', '2', null);
INSERT INTO `pre_area` VALUES ('183', '金华市', '11', '0', '2', null);
INSERT INTO `pre_area` VALUES ('184', '台州市', '11', '0', '2', null);
INSERT INTO `pre_area` VALUES ('185', '丽水市', '11', '0', '2', null);
INSERT INTO `pre_area` VALUES ('186', '合肥市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('187', '芜湖市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('188', '蚌埠市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('189', '淮南市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('190', '马鞍山市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('191', '淮北市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('192', '铜陵市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('193', '安庆市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('194', '黄山市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('195', '滁州市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('196', '阜阳市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('197', '宿州市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('198', '巢湖市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('199', '六安市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('200', '亳州市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('201', '池州市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('202', '宣城市', '12', '0', '2', null);
INSERT INTO `pre_area` VALUES ('203', '福州市', '13', '0', '2', null);
INSERT INTO `pre_area` VALUES ('204', '厦门市', '13', '0', '2', null);
INSERT INTO `pre_area` VALUES ('205', '莆田市', '13', '0', '2', null);
INSERT INTO `pre_area` VALUES ('206', '三明市', '13', '0', '2', null);
INSERT INTO `pre_area` VALUES ('207', '泉州市', '13', '0', '2', null);
INSERT INTO `pre_area` VALUES ('208', '漳州市', '13', '0', '2', null);
INSERT INTO `pre_area` VALUES ('209', '南平市', '13', '0', '2', null);
INSERT INTO `pre_area` VALUES ('210', '龙岩市', '13', '0', '2', null);
INSERT INTO `pre_area` VALUES ('211', '宁德市', '13', '0', '2', null);
INSERT INTO `pre_area` VALUES ('212', '南昌市', '14', '0', '2', null);
INSERT INTO `pre_area` VALUES ('213', '景德镇市', '14', '0', '2', null);
INSERT INTO `pre_area` VALUES ('214', '萍乡市', '14', '0', '2', null);
INSERT INTO `pre_area` VALUES ('215', '九江市', '14', '0', '2', null);
INSERT INTO `pre_area` VALUES ('216', '新余市', '14', '0', '2', null);
INSERT INTO `pre_area` VALUES ('217', '鹰潭市', '14', '0', '2', null);
INSERT INTO `pre_area` VALUES ('218', '赣州市', '14', '0', '2', null);
INSERT INTO `pre_area` VALUES ('219', '吉安市', '14', '0', '2', null);
INSERT INTO `pre_area` VALUES ('220', '宜春市', '14', '0', '2', null);
INSERT INTO `pre_area` VALUES ('221', '抚州市', '14', '0', '2', null);
INSERT INTO `pre_area` VALUES ('222', '上饶市', '14', '0', '2', null);
INSERT INTO `pre_area` VALUES ('223', '济南市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('224', '青岛市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('225', '淄博市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('226', '枣庄市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('227', '东营市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('228', '烟台市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('229', '潍坊市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('230', '济宁市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('231', '泰安市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('232', '威海市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('233', '日照市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('234', '莱芜市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('235', '临沂市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('236', '德州市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('237', '聊城市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('238', '滨州市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('239', '菏泽市', '15', '0', '2', null);
INSERT INTO `pre_area` VALUES ('240', '郑州市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('241', '开封市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('242', '洛阳市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('243', '平顶山市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('244', '安阳市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('245', '鹤壁市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('246', '新乡市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('247', '焦作市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('248', '濮阳市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('249', '许昌市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('250', '漯河市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('251', '三门峡市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('252', '南阳市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('253', '商丘市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('254', '信阳市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('255', '周口市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('256', '驻马店市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('257', '济源市', '16', '0', '2', null);
INSERT INTO `pre_area` VALUES ('258', '武汉市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('259', '黄石市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('260', '十堰市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('261', '宜昌市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('262', '襄樊市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('263', '鄂州市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('264', '荆门市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('265', '孝感市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('266', '荆州市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('267', '黄冈市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('268', '咸宁市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('269', '随州市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('270', '恩施土家族苗族自治州', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('271', '仙桃市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('272', '潜江市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('273', '天门市', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('274', '神农架林区', '17', '0', '2', null);
INSERT INTO `pre_area` VALUES ('275', '长沙市', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('276', '株洲市', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('277', '湘潭市', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('278', '衡阳市', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('279', '邵阳市', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('280', '岳阳市', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('281', '常德市', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('282', '张家界市', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('283', '益阳市', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('284', '郴州市', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('285', '永州市', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('286', '怀化市', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('287', '娄底市', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('288', '湘西土家族苗族自治州', '18', '0', '2', null);
INSERT INTO `pre_area` VALUES ('289', '广州市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('290', '韶关市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('291', '深圳市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('292', '珠海市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('293', '汕头市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('294', '佛山市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('295', '江门市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('296', '湛江市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('297', '茂名市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('298', '肇庆市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('299', '惠州市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('300', '梅州市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('301', '汕尾市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('302', '河源市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('303', '阳江市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('304', '清远市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('305', '东莞市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('306', '中山市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('307', '潮州市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('308', '揭阳市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('309', '云浮市', '19', '0', '2', null);
INSERT INTO `pre_area` VALUES ('310', '南宁市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('311', '柳州市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('312', '桂林市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('313', '梧州市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('314', '北海市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('315', '防城港市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('316', '钦州市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('317', '贵港市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('318', '玉林市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('319', '百色市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('320', '贺州市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('321', '河池市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('322', '来宾市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('323', '崇左市', '20', '0', '2', null);
INSERT INTO `pre_area` VALUES ('324', '海口市', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('325', '三亚市', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('326', '五指山市', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('327', '琼海市', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('328', '儋州市', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('329', '文昌市', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('330', '万宁市', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('331', '东方市', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('332', '定安县', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('333', '屯昌县', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('334', '澄迈县', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('335', '临高县', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('336', '白沙黎族自治县', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('337', '昌江黎族自治县', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('338', '乐东黎族自治县', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('339', '陵水黎族自治县', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('340', '保亭黎族苗族自治县', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('341', '琼中黎族苗族自治县', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('342', '西沙群岛', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('343', '南沙群岛', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('344', '中沙群岛的岛礁及其海域', '21', '0', '2', null);
INSERT INTO `pre_area` VALUES ('345', '万州区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('346', '涪陵区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('347', '渝中区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('348', '大渡口区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('349', '江北区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('350', '沙坪坝区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('351', '九龙坡区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('352', '南岸区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('353', '北碚区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('354', '双桥区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('355', '万盛区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('356', '渝北区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('357', '巴南区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('358', '黔江区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('359', '长寿区', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('360', '綦江县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('361', '潼南县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('362', '铜梁县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('363', '大足县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('364', '荣昌县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('365', '璧山县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('366', '梁平县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('367', '城口县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('368', '丰都县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('369', '垫江县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('370', '武隆县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('371', '忠县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('372', '开县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('373', '云阳县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('374', '奉节县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('375', '巫山县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('376', '巫溪县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('377', '石柱土家族自治县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('378', '秀山土家族苗族自治县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('379', '酉阳土家族苗族自治县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('380', '彭水苗族土家族自治县', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('381', '江津市', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('382', '合川市', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('383', '永川市', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('384', '南川市', '62', '0', '3', null);
INSERT INTO `pre_area` VALUES ('385', '成都市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('386', '自贡市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('387', '攀枝花市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('388', '泸州市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('389', '德阳市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('390', '绵阳市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('391', '广元市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('392', '遂宁市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('393', '内江市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('394', '乐山市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('395', '南充市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('396', '眉山市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('397', '宜宾市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('398', '广安市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('399', '达州市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('400', '雅安市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('401', '巴中市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('402', '资阳市', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('403', '阿坝藏族羌族自治州', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('404', '甘孜藏族自治州', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('405', '凉山彝族自治州', '23', '0', '2', null);
INSERT INTO `pre_area` VALUES ('406', '贵阳市', '24', '0', '2', null);
INSERT INTO `pre_area` VALUES ('407', '六盘水市', '24', '0', '2', null);
INSERT INTO `pre_area` VALUES ('408', '遵义市', '24', '0', '2', null);
INSERT INTO `pre_area` VALUES ('409', '安顺市', '24', '0', '2', null);
INSERT INTO `pre_area` VALUES ('410', '铜仁地区', '24', '0', '2', null);
INSERT INTO `pre_area` VALUES ('411', '黔西南布依族苗族自治州', '24', '0', '2', null);
INSERT INTO `pre_area` VALUES ('412', '毕节地区', '24', '0', '2', null);
INSERT INTO `pre_area` VALUES ('413', '黔东南苗族侗族自治州', '24', '0', '2', null);
INSERT INTO `pre_area` VALUES ('414', '黔南布依族苗族自治州', '24', '0', '2', null);
INSERT INTO `pre_area` VALUES ('415', '昆明市', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('416', '曲靖市', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('417', '玉溪市', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('418', '保山市', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('419', '昭通市', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('420', '丽江市', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('421', '思茅市', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('422', '临沧市', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('423', '楚雄彝族自治州', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('424', '红河哈尼族彝族自治州', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('425', '文山壮族苗族自治州', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('426', '西双版纳傣族自治州', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('427', '大理白族自治州', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('428', '德宏傣族景颇族自治州', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('429', '怒江傈僳族自治州', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('430', '迪庆藏族自治州', '25', '0', '2', null);
INSERT INTO `pre_area` VALUES ('431', '拉萨市', '26', '0', '2', null);
INSERT INTO `pre_area` VALUES ('432', '昌都地区', '26', '0', '2', null);
INSERT INTO `pre_area` VALUES ('433', '山南地区', '26', '0', '2', null);
INSERT INTO `pre_area` VALUES ('434', '日喀则地区', '26', '0', '2', null);
INSERT INTO `pre_area` VALUES ('435', '那曲地区', '26', '0', '2', null);
INSERT INTO `pre_area` VALUES ('436', '阿里地区', '26', '0', '2', null);
INSERT INTO `pre_area` VALUES ('437', '林芝地区', '26', '0', '2', null);
INSERT INTO `pre_area` VALUES ('438', '西安市', '27', '0', '2', null);
INSERT INTO `pre_area` VALUES ('439', '铜川市', '27', '0', '2', null);
INSERT INTO `pre_area` VALUES ('440', '宝鸡市', '27', '0', '2', null);
INSERT INTO `pre_area` VALUES ('441', '咸阳市', '27', '0', '2', null);
INSERT INTO `pre_area` VALUES ('442', '渭南市', '27', '0', '2', null);
INSERT INTO `pre_area` VALUES ('443', '延安市', '27', '0', '2', null);
INSERT INTO `pre_area` VALUES ('444', '汉中市', '27', '0', '2', null);
INSERT INTO `pre_area` VALUES ('445', '榆林市', '27', '0', '2', null);
INSERT INTO `pre_area` VALUES ('446', '安康市', '27', '0', '2', null);
INSERT INTO `pre_area` VALUES ('447', '商洛市', '27', '0', '2', null);
INSERT INTO `pre_area` VALUES ('448', '兰州市', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('449', '嘉峪关市', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('450', '金昌市', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('451', '白银市', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('452', '天水市', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('453', '武威市', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('454', '张掖市', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('455', '平凉市', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('456', '酒泉市', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('457', '庆阳市', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('458', '定西市', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('459', '陇南市', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('460', '临夏回族自治州', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('461', '甘南藏族自治州', '28', '0', '2', null);
INSERT INTO `pre_area` VALUES ('462', '西宁市', '29', '0', '2', null);
INSERT INTO `pre_area` VALUES ('463', '海东地区', '29', '0', '2', null);
INSERT INTO `pre_area` VALUES ('464', '海北藏族自治州', '29', '0', '2', null);
INSERT INTO `pre_area` VALUES ('465', '黄南藏族自治州', '29', '0', '2', null);
INSERT INTO `pre_area` VALUES ('466', '海南藏族自治州', '29', '0', '2', null);
INSERT INTO `pre_area` VALUES ('467', '果洛藏族自治州', '29', '0', '2', null);
INSERT INTO `pre_area` VALUES ('468', '玉树藏族自治州', '29', '0', '2', null);
INSERT INTO `pre_area` VALUES ('469', '海西蒙古族藏族自治州', '29', '0', '2', null);
INSERT INTO `pre_area` VALUES ('470', '银川市', '30', '0', '2', null);
INSERT INTO `pre_area` VALUES ('471', '石嘴山市', '30', '0', '2', null);
INSERT INTO `pre_area` VALUES ('472', '吴忠市', '30', '0', '2', null);
INSERT INTO `pre_area` VALUES ('473', '固原市', '30', '0', '2', null);
INSERT INTO `pre_area` VALUES ('474', '中卫市', '30', '0', '2', null);
INSERT INTO `pre_area` VALUES ('475', '乌鲁木齐市', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('476', '克拉玛依市', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('477', '吐鲁番地区', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('478', '哈密地区', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('479', '昌吉回族自治州', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('480', '博尔塔拉蒙古自治州', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('481', '巴音郭楞蒙古自治州', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('482', '阿克苏地区', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('483', '克孜勒苏柯尔克孜自治州', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('484', '喀什地区', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('485', '和田地区', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('486', '伊犁哈萨克自治州', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('487', '塔城地区', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('488', '阿勒泰地区', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('489', '石河子市', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('490', '阿拉尔市', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('491', '图木舒克市', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('492', '五家渠市', '31', '0', '2', null);
INSERT INTO `pre_area` VALUES ('493', '台北市', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('494', '高雄市', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('495', '基隆市', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('496', '台中市', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('497', '台南市', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('498', '新竹市', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('499', '嘉义市', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('500', '台北县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('501', '宜兰县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('502', '桃园县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('503', '新竹县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('504', '苗栗县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('505', '台中县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('506', '彰化县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('507', '南投县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('508', '云林县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('509', '嘉义县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('510', '台南县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('511', '高雄县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('512', '屏东县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('513', '澎湖县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('514', '台东县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('515', '花莲县', '32', '0', '2', null);
INSERT INTO `pre_area` VALUES ('516', '中西区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('517', '东区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('518', '九龙城区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('519', '观塘区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('520', '南区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('521', '深水埗区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('522', '黄大仙区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('523', '湾仔区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('524', '油尖旺区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('525', '离岛区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('526', '葵青区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('527', '北区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('528', '西贡区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('529', '沙田区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('530', '屯门区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('531', '大埔区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('532', '荃湾区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('533', '元朗区', '33', '0', '2', null);
INSERT INTO `pre_area` VALUES ('534', '澳门特别行政区', '34', '0', '2', null);
INSERT INTO `pre_area` VALUES ('535', '美国', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('536', '加拿大', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('537', '澳大利亚', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('538', '新西兰', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('539', '英国', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('540', '法国', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('541', '德国', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('542', '捷克', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('543', '荷兰', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('544', '瑞士', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('545', '希腊', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('546', '挪威', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('547', '瑞典', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('548', '丹麦', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('549', '芬兰', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('550', '爱尔兰', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('551', '奥地利', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('552', '意大利', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('553', '乌克兰', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('554', '俄罗斯', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('555', '西班牙', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('556', '韩国', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('557', '新加坡', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('558', '马来西亚', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('559', '印度', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('560', '泰国', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('561', '日本', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('562', '巴西', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('563', '阿根廷', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('564', '南非', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('565', '埃及', '45055', '0', '3', null);
INSERT INTO `pre_area` VALUES ('566', '其他', '36', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1126', '井陉县', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1127', '井陉矿区', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1128', '元氏县', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1129', '平山县', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1130', '新乐市', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1131', '新华区', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1132', '无极县', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1133', '晋州市', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1134', '栾城县', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1135', '桥东区', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1136', '桥西区', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1137', '正定县', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1138', '深泽县', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1139', '灵寿县', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1140', '藁城市', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1141', '行唐县', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1142', '裕华区', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1143', '赞皇县', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1144', '赵县', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1145', '辛集市', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1146', '长安区', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1147', '高邑县', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1148', '鹿泉市', '73', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1149', '丰南区', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1150', '丰润区', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1151', '乐亭县', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1152', '古冶区', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1153', '唐海县', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1154', '开平区', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1155', '滦南县', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1156', '滦县', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1157', '玉田县', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1158', '路北区', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1159', '路南区', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1160', '迁安市', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1161', '迁西县', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1162', '遵化市', '74', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1163', '北戴河区', '75', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1164', '卢龙县', '75', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1165', '山海关区', '75', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1166', '抚宁县', '75', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1167', '昌黎县', '75', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1168', '海港区', '75', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1169', '青龙满族自治县', '75', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1170', '丛台区', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1171', '临漳县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1172', '复兴区', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1173', '大名县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1174', '峰峰矿区', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1175', '广平县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1176', '成安县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1177', '曲周县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1178', '武安市', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1179', '永年县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1180', '涉县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1181', '磁县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1182', '肥乡县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1183', '邯山区', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1184', '邯郸县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1185', '邱县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1186', '馆陶县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1187', '魏县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1188', '鸡泽县', '76', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1189', '临城县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1190', '临西县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1191', '任县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1192', '内丘县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1193', '南和县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1194', '南宫市', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1195', '威县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1196', '宁晋县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1197', '巨鹿县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1198', '平乡县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1199', '广宗县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1200', '新河县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1201', '柏乡县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1202', '桥东区', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1203', '桥西区', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1204', '沙河市', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1205', '清河县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1206', '邢台县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1207', '隆尧县', '77', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1208', '北市区', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1209', '南市区', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1210', '博野县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1211', '唐县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1212', '安国市', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1213', '安新县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1214', '定兴县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1215', '定州市', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1216', '容城县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1217', '徐水县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1218', '新市区', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1219', '易县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1220', '曲阳县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1221', '望都县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1222', '涞水县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1223', '涞源县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1224', '涿州市', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1225', '清苑县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1226', '满城县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1227', '蠡县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1228', '阜平县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1229', '雄县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1230', '顺平县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1231', '高碑店市', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1232', '高阳县', '78', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1233', '万全县', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1234', '下花园区', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1235', '宣化区', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1236', '宣化县', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1237', '尚义县', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1238', '崇礼县', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1239', '康保县', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1240', '张北县', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1241', '怀安县', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1242', '怀来县', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1243', '桥东区', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1244', '桥西区', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1245', '沽源县', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1246', '涿鹿县', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1247', '蔚县', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1248', '赤城县', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1249', '阳原县', '79', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1250', '丰宁满族自治县', '80', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1251', '兴隆县', '80', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1252', '双桥区', '80', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1253', '双滦区', '80', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1254', '围场满族蒙古族自治县', '80', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1255', '宽城满族自治县', '80', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1256', '平泉县', '80', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1257', '承德县', '80', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1258', '滦平县', '80', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1259', '隆化县', '80', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1260', '鹰手营子矿区', '80', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1261', '冀州市', '81', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1262', '安平县', '81', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1263', '故城县', '81', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1264', '景县', '81', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1265', '枣强县', '81', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1266', '桃城区', '81', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1267', '武强县', '81', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1268', '武邑县', '81', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1269', '深州市', '81', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1270', '阜城县', '81', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1271', '饶阳县', '81', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1272', '三河市', '82', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1273', '固安县', '82', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1274', '大厂回族自治县', '82', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1275', '大城县', '82', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1276', '安次区', '82', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1277', '广阳区', '82', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1278', '文安县', '82', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1279', '永清县', '82', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1280', '霸州市', '82', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1281', '香河县', '82', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1282', '东光县', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1283', '任丘市', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1284', '南皮县', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1285', '吴桥县', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1286', '孟村回族自治县', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1287', '新华区', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1288', '沧县', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1289', '河间市', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1290', '泊头市', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1291', '海兴县', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1292', '献县', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1293', '盐山县', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1294', '肃宁县', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1295', '运河区', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1296', '青县', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1297', '黄骅市', '83', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1298', '万柏林区', '84', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1299', '古交市', '84', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1300', '娄烦县', '84', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1301', '小店区', '84', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1302', '尖草坪区', '84', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1303', '晋源区', '84', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1304', '杏花岭区', '84', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1305', '清徐县', '84', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1306', '迎泽区', '84', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1307', '阳曲县', '84', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1308', '南郊区', '85', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1309', '城区', '85', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1310', '大同县', '85', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1311', '天镇县', '85', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1312', '左云县', '85', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1313', '广灵县', '85', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1314', '新荣区', '85', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1315', '浑源县', '85', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1316', '灵丘县', '85', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1317', '矿区', '85', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1318', '阳高县', '85', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1319', '城区', '86', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1320', '平定县', '86', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1321', '盂县', '86', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1322', '矿区', '86', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1323', '郊区', '86', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1324', '城区', '87', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1325', '壶关县', '87', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1326', '屯留县', '87', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1327', '平顺县', '87', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1328', '武乡县', '87', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1329', '沁县', '87', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1330', '沁源县', '87', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1331', '潞城市', '87', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1332', '襄垣县', '87', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1333', '郊区', '87', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1334', '长子县', '87', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1335', '长治县', '87', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1336', '黎城县', '87', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1337', '城区', '88', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1338', '沁水县', '88', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1339', '泽州县', '88', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1340', '阳城县', '88', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1341', '陵川县', '88', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1342', '高平市', '88', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1343', '右玉县', '89', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1344', '山阴县', '89', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1345', '平鲁区', '89', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1346', '应县', '89', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1347', '怀仁县', '89', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1348', '朔城区', '89', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1349', '介休市', '90', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1350', '和顺县', '90', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1351', '太谷县', '90', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1352', '寿阳县', '90', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1353', '左权县', '90', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1354', '平遥县', '90', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1355', '昔阳县', '90', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1356', '榆次区', '90', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1357', '榆社县', '90', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1358', '灵石县', '90', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1359', '祁县', '90', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1360', '万荣县', '91', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1361', '临猗县', '91', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1362', '垣曲县', '91', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1363', '夏县', '91', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1364', '平陆县', '91', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1365', '新绛县', '91', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1366', '永济市', '91', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1367', '河津市', '91', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1368', '盐湖区', '91', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1369', '稷山县', '91', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1370', '绛县', '91', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1371', '芮城县', '91', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1372', '闻喜县', '91', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1373', '五台县', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1374', '五寨县', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1375', '代县', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1376', '保德县', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1377', '偏关县', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1378', '原平市', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1379', '宁武县', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1380', '定襄县', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1381', '岢岚县', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1382', '忻府区', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1383', '河曲县', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1384', '神池县', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1385', '繁峙县', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1386', '静乐县', '92', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1387', '乡宁县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1388', '侯马市', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1389', '古县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1390', '吉县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1391', '大宁县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1392', '安泽县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1393', '尧都区', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1394', '曲沃县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1395', '永和县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1396', '汾西县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1397', '洪洞县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1398', '浮山县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1399', '翼城县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1400', '蒲县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1401', '襄汾县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1402', '隰县', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1403', '霍州市', '93', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1404', '中阳县', '94', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1405', '临县', '94', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1406', '交口县', '94', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1407', '交城县', '94', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1408', '兴县', '94', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1409', '孝义市', '94', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1410', '岚县', '94', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1411', '文水县', '94', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1412', '方山县', '94', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1413', '柳林县', '94', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1414', '汾阳市', '94', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1415', '石楼县', '94', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1416', '离石区', '94', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1417', '和林格尔县', '95', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1418', '回民区', '95', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1419', '土默特左旗', '95', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1420', '托克托县', '95', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1421', '新城区', '95', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1422', '武川县', '95', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1423', '清水河县', '95', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1424', '玉泉区', '95', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1425', '赛罕区', '95', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1426', '东河区', '96', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1427', '九原区', '96', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1428', '固阳县', '96', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1429', '土默特右旗', '96', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1430', '昆都仑区', '96', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1431', '白云矿区', '96', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1432', '石拐区', '96', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1433', '达尔罕茂明安联合旗', '96', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1434', '青山区', '96', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1435', '乌达区', '97', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1436', '海勃湾区', '97', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1437', '海南区', '97', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1438', '元宝山区', '98', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1439', '克什克腾旗', '98', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1440', '喀喇沁旗', '98', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1441', '宁城县', '98', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1442', '巴林右旗', '98', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1443', '巴林左旗', '98', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1444', '敖汉旗', '98', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1445', '松山区', '98', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1446', '林西县', '98', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1447', '红山区', '98', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1448', '翁牛特旗', '98', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1449', '阿鲁科尔沁旗', '98', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1450', '奈曼旗', '99', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1451', '库伦旗', '99', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1452', '开鲁县', '99', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1453', '扎鲁特旗', '99', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1454', '科尔沁区', '99', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1455', '科尔沁左翼中旗', '99', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1456', '科尔沁左翼后旗', '99', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1457', '霍林郭勒市', '99', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1458', '东胜区', '100', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1459', '乌审旗', '100', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1460', '伊金霍洛旗', '100', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1461', '准格尔旗', '100', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1462', '杭锦旗', '100', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1463', '达拉特旗', '100', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1464', '鄂东胜区', '100', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1465', '鄂托克前旗', '100', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1466', '鄂托克旗', '100', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1467', '扎兰屯市', '101', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1468', '新巴尔虎右旗', '101', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1469', '新巴尔虎左旗', '101', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1470', '根河市', '101', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1471', '海拉尔区', '101', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1472', '满洲里市', '101', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1473', '牙克石市', '101', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1474', '莫力达瓦达斡尔族自治旗', '101', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1475', '鄂伦春自治旗', '101', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1476', '鄂温克族自治旗', '101', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1477', '阿荣旗', '101', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1478', '陈巴尔虎旗', '101', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1479', '额尔古纳市', '101', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1480', '临河区', '102', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1481', '乌拉特中旗', '102', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1482', '乌拉特前旗', '102', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1483', '乌拉特后旗', '102', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1484', '五原县', '102', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1485', '杭锦后旗', '102', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1486', '磴口县', '102', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1487', '丰镇市', '103', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1488', '兴和县', '103', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1489', '凉城县', '103', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1490', '化德县', '103', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1491', '卓资县', '103', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1492', '商都县', '103', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1493', '四子王旗', '103', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1494', '察哈尔右翼中旗', '103', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1495', '察哈尔右翼前旗', '103', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1496', '察哈尔右翼后旗', '103', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1497', '集宁区', '103', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1498', '乌兰浩特市', '104', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1499', '扎赉特旗', '104', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1500', '科尔沁右翼中旗', '104', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1501', '科尔沁右翼前旗', '104', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1502', '突泉县', '104', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1503', '阿尔山市', '104', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1504', '东乌珠穆沁旗', '105', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1505', '二连浩特市', '105', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1506', '多伦县', '105', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1507', '太仆寺旗', '105', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1508', '正蓝旗', '105', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1509', '正镶白旗', '105', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1510', '苏尼特右旗', '105', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1511', '苏尼特左旗', '105', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1512', '西乌珠穆沁旗', '105', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1513', '锡林浩特市', '105', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1514', '镶黄旗', '105', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1515', '阿巴嘎旗', '105', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1516', '阿拉善右旗', '106', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1517', '阿拉善左旗', '106', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1518', '额济纳旗', '106', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1519', '东陵区', '107', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1520', '于洪区', '107', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1521', '和平区', '107', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1522', '大东区', '107', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1523', '康平县', '107', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1524', '新民市', '107', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1525', '沈北新区', '107', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1526', '沈河区', '107', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1527', '法库县', '107', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1528', '皇姑区', '107', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1529', '苏家屯区', '107', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1530', '辽中县', '107', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1531', '铁西区', '107', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1532', '中山区', '108', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1533', '庄河市', '108', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1534', '旅顺口区', '108', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1535', '普兰店市', '108', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1536', '沙河口区', '108', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1537', '瓦房店市', '108', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1538', '甘井子区', '108', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1539', '西岗区', '108', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1540', '金州区', '108', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1541', '长海县', '108', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1542', '千山区', '109', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1543', '台安县', '109', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1544', '岫岩满族自治县', '109', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1545', '海城市', '109', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1546', '立山区', '109', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1547', '铁东区', '109', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1548', '铁西区', '109', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1549', '东洲区', '110', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1550', '抚顺县', '110', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1551', '新宾满族自治县', '110', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1552', '新抚区', '110', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1553', '望花区', '110', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1554', '清原满族自治县', '110', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1555', '顺城区', '110', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1556', '南芬区', '111', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1557', '平山区', '111', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1558', '明山区', '111', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1559', '本溪满族自治县', '111', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1560', '桓仁满族自治县', '111', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1561', '溪湖区', '111', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1562', '东港市', '112', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1563', '元宝区', '112', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1564', '凤城市', '112', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1565', '宽甸满族自治县', '112', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1566', '振兴区', '112', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1567', '振安区', '112', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1568', '义县', '113', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1569', '凌河区', '113', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1570', '凌海市', '113', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1571', '北镇市', '113', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1572', '古塔区', '113', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1573', '太和区', '113', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1574', '黑山县', '113', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1575', '大石桥市', '114', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1576', '盖州市', '114', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1577', '站前区', '114', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1578', '老边区', '114', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1579', '西市区', '114', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1580', '鲅鱼圈区', '114', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1581', '太平区', '115', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1582', '彰武县', '115', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1583', '新邱区', '115', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1584', '海州区', '115', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1585', '清河门区', '115', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1586', '细河区', '115', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1587', '蒙古族自治县', '115', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1588', '太子河区', '116', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1589', '宏伟区', '116', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1590', '弓长岭区', '116', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1591', '文圣区', '116', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1592', '灯塔市', '116', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1593', '白塔区', '116', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1594', '辽阳县', '116', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1595', '兴隆台区', '117', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1596', '双台子区', '117', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1597', '大洼县', '117', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1598', '盘山县', '117', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1599', '开原市', '118', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1600', '昌图县', '118', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1601', '清河区', '118', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1602', '西丰县', '118', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1603', '调兵山市', '118', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1604', '铁岭县', '118', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1605', '银州区', '118', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1606', '凌源市', '119', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1607', '北票市', '119', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1608', '双塔区', '119', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1609', '喀喇沁左翼蒙古族自治县', '119', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1610', '建平县', '119', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1611', '朝阳县', '119', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1612', '龙城区', '119', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1613', '兴城市', '120', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1614', '南票区', '120', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1615', '建昌县', '120', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1616', '绥中县', '120', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1617', '连山区', '120', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1618', '龙港区', '120', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1619', '九台市', '121', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1620', '二道区', '121', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1621', '农安县', '121', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1622', '南关区', '121', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1623', '双阳区', '121', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1624', '宽城区', '121', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1625', '德惠市', '121', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1626', '朝阳区', '121', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1627', '榆树市', '121', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1628', '绿园区', '121', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1629', '丰满区', '122', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1630', '昌邑区', '122', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1631', '桦甸市', '122', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1632', '永吉县', '122', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1633', '磐石市', '122', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1634', '舒兰市', '122', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1635', '船营区', '122', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1636', '蛟河市', '122', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1637', '龙潭区', '122', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1638', '伊通满族自治县', '123', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1639', '公主岭市', '123', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1640', '双辽市', '123', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1641', '梨树县', '123', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1642', '铁东区', '123', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1643', '铁西区', '123', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1644', '东丰县', '124', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1645', '东辽县', '124', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1646', '西安区', '124', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1647', '龙山区', '124', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1648', '东昌区', '125', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1649', '二道江区', '125', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1650', '柳河县', '125', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1651', '梅河口市', '125', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1652', '辉南县', '125', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1653', '通化县', '125', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1654', '集安市', '125', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1655', '临江市', '126', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1656', '八道江区', '126', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1657', '抚松县', '126', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1658', '江源区', '126', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1659', '长白朝鲜族自治县', '126', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1660', '靖宇县', '126', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1661', '干安县', '127', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1662', '前郭尔罗斯蒙古族自治县', '127', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1663', '宁江区', '127', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1664', '扶余县', '127', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1665', '长岭县', '127', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1666', '大安市', '128', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1667', '洮北区', '128', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1668', '洮南市', '128', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1669', '通榆县', '128', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1670', '镇赉县', '128', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1671', '和龙市', '129', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1672', '图们市', '129', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1673', '安图县', '129', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1674', '延吉市', '129', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1675', '敦化市', '129', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1676', '汪清县', '129', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1677', '珲春市', '129', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1678', '龙井市', '129', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1679', '五常市', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1680', '依兰县', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1681', '南岗区', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1682', '双城市', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1683', '呼兰区', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1684', '哈尔滨市道里区', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1685', '宾县', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1686', '尚志市', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1687', '巴彦县', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1688', '平房区', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1689', '延寿县', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1690', '方正县', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1691', '木兰县', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1692', '松北区', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1693', '通河县', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1694', '道外区', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1695', '阿城区', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1696', '香坊区', '130', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1697', '依安县', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1698', '克东县', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1699', '克山县', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1700', '富拉尔基区', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1701', '富裕县', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1702', '建华区', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1703', '拜泉县', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1704', '昂昂溪区', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1705', '梅里斯达斡尔族区', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1706', '泰来县', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1707', '甘南县', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1708', '碾子山区', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1709', '讷河市', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1710', '铁锋区', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1711', '龙江县', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1712', '龙沙区', '131', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1713', '城子河区', '132', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1714', '密山市', '132', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1715', '恒山区', '132', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1716', '梨树区', '132', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1717', '滴道区', '132', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1718', '虎林市', '132', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1719', '鸡东县', '132', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1720', '鸡冠区', '132', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1721', '麻山区', '132', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1722', '东山区', '133', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1723', '兴安区', '133', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1724', '兴山区', '133', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1725', '南山区', '133', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1726', '向阳区', '133', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1727', '工农区', '133', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1728', '绥滨县', '133', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1729', '萝北县', '133', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1730', '友谊县', '134', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1731', '四方台区', '134', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1732', '宝山区', '134', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1733', '宝清县', '134', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1734', '尖山区', '134', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1735', '岭东区', '134', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1736', '集贤县', '134', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1737', '饶河县', '134', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1738', '大同区', '135', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1739', '杜尔伯特蒙古族自治县', '135', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1740', '林甸县', '135', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1741', '红岗区', '135', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1742', '肇州县', '135', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1743', '肇源县', '135', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1744', '胡路区', '135', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1745', '萨尔图区', '135', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1746', '龙凤区', '135', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1747', '上甘岭区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1748', '乌伊岭区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1749', '乌马河区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1750', '五营区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1751', '伊春区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1752', '南岔区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1753', '友好区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1754', '嘉荫县', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1755', '带岭区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1756', '新青区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1757', '汤旺河区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1758', '红星区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1759', '美溪区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1760', '翠峦区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1761', '西林区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1762', '金山屯区', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1763', '铁力市', '136', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1764', '东风区', '137', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1765', '前进区', '137', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1766', '同江市', '137', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1767', '向阳区', '137', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1768', '富锦市', '137', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1769', '抚远县', '137', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1770', '桦南县', '137', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1771', '桦川县', '137', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1772', '汤原县', '137', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1773', '郊区', '137', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1774', '勃利县', '138', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1775', '新兴区', '138', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1776', '桃山区', '138', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1777', '茄子河区', '138', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1778', '东宁县', '139', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1779', '东安区', '139', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1780', '宁安市', '139', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1781', '林口县', '139', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1782', '海林市', '139', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1783', '爱民区', '139', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1784', '穆棱市', '139', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1785', '绥芬河市', '139', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1786', '西安区', '139', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1787', '阳明区', '139', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1788', '五大连池市', '140', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1789', '北安市', '140', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1790', '嫩江县', '140', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1791', '孙吴县', '140', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1792', '爱辉区', '140', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1793', '车逊克县', '140', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1794', '逊克县', '140', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1795', '兰西县', '141', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1796', '安达市', '141', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1797', '庆安县', '141', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1798', '明水县', '141', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1799', '望奎县', '141', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1800', '海伦市', '141', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1801', '绥化市北林区', '141', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1802', '绥棱县', '141', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1803', '肇东市', '141', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1804', '青冈县', '141', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1805', '呼玛县', '142', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1806', '塔河县', '142', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1807', '大兴安岭地区加格达奇区', '142', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1808', '大兴安岭地区呼中区', '142', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1809', '大兴安岭地区新林区', '142', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1810', '大兴安岭地区松岭区', '142', '0', '3', null);
INSERT INTO `pre_area` VALUES ('1811', '漠河县', '142', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2027', '下关区', '162', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2028', '六合区', '162', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2029', '建邺区', '162', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2030', '栖霞区', '162', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2031', '江宁区', '162', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2032', '浦口区', '162', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2033', '溧水县', '162', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2034', '玄武区', '162', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2035', '白下区', '162', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2036', '秦淮区', '162', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2037', '雨花台区', '162', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2038', '高淳县', '162', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2039', '鼓楼区', '162', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2040', '北塘区', '163', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2041', '南长区', '163', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2042', '宜兴市', '163', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2043', '崇安区', '163', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2044', '惠山区', '163', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2045', '江阴市', '163', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2046', '滨湖区', '163', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2047', '锡山区', '163', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2048', '丰县', '164', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2049', '九里区', '164', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2050', '云龙区', '164', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2051', '新沂市', '164', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2052', '沛县', '164', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2053', '泉山区', '164', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2054', '睢宁县', '164', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2055', '贾汪区', '164', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2056', '邳州市', '164', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2057', '铜山县', '164', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2058', '鼓楼区', '164', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2059', '天宁区', '165', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2060', '戚墅堰区', '165', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2061', '新北区', '165', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2062', '武进区', '165', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2063', '溧阳市', '165', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2064', '金坛市', '165', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2065', '钟楼区', '165', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2066', '吴中区', '166', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2067', '吴江市', '166', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2068', '太仓市', '166', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2069', '常熟市', '166', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2070', '平江区', '166', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2071', '张家港市', '166', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2072', '昆山市', '166', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2073', '沧浪区', '166', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2074', '相城区', '166', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2075', '苏州工业园区', '166', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2076', '虎丘区', '166', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2077', '金阊区', '166', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2078', '启东市', '167', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2079', '如东县', '167', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2080', '如皋市', '167', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2081', '崇川区', '167', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2082', '海安县', '167', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2083', '海门市', '167', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2084', '港闸区', '167', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2085', '通州市', '167', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2086', '东海县', '168', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2087', '新浦区', '168', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2088', '海州区', '168', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2089', '灌云县', '168', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2090', '灌南县', '168', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2091', '赣榆县', '168', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2092', '连云区', '168', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2093', '楚州区', '169', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2094', '洪泽县', '169', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2095', '涟水县', '169', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2096', '淮阴区', '169', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2097', '清河区', '169', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2098', '清浦区', '169', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2099', '盱眙县', '169', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2100', '金湖县', '169', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2101', '东台市', '170', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2102', '亭湖区', '170', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2103', '响水县', '170', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2104', '大丰市', '170', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2105', '射阳县', '170', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2106', '建湖县', '170', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2107', '滨海县', '170', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2108', '盐都区', '170', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2109', '阜宁县', '170', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2110', '仪征市', '171', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2111', '宝应县', '171', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2112', '广陵区', '171', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2113', '江都市', '171', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2114', '维扬区', '171', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2115', '邗江区', '171', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2116', '高邮市', '171', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2117', '丹徒区', '172', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2118', '丹阳市', '172', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2119', '京口区', '172', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2120', '句容市', '172', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2121', '扬中市', '172', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2122', '润州区', '172', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2123', '兴化市', '173', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2124', '姜堰市', '173', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2125', '泰兴市', '173', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2126', '海陵区', '173', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2127', '靖江市', '173', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2128', '高港区', '173', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2129', '宿城区', '174', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2130', '宿豫区', '174', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2131', '沭阳县', '174', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2132', '泗洪县', '174', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2133', '泗阳县', '174', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2134', '上城区', '175', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2135', '下城区', '175', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2136', '临安市', '175', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2137', '余杭区', '175', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2138', '富阳市', '175', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2139', '建德市', '175', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2140', '拱墅区', '175', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2141', '桐庐县', '175', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2142', '江干区', '175', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2143', '淳安县', '175', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2144', '滨江区', '175', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2145', '萧山区', '175', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2146', '西湖区', '175', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2147', '余姚市', '176', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2148', '北仑区', '176', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2149', '奉化市', '176', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2150', '宁海县', '176', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2151', '慈溪市', '176', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2152', '江东区', '176', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2153', '江北区', '176', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2154', '海曙区', '176', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2155', '象山县', '176', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2156', '鄞州区', '176', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2157', '镇海区', '176', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2158', '乐清市', '177', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2159', '平阳县', '177', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2160', '文成县', '177', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2161', '永嘉县', '177', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2162', '泰顺县', '177', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2163', '洞头县', '177', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2164', '瑞安市', '177', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2165', '瓯海区', '177', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2166', '苍南县', '177', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2167', '鹿城区', '177', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2168', '龙湾区', '177', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2169', '南湖区', '178', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2170', '嘉善县', '178', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2171', '平湖市', '178', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2172', '桐乡市', '178', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2173', '海宁市', '178', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2174', '海盐县', '178', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2175', '秀洲区', '178', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2176', '南浔区', '179', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2177', '吴兴区', '179', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2178', '安吉县', '179', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2179', '德清县', '179', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2180', '长兴县', '179', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2181', '上虞市', '180', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2182', '嵊州市', '180', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2183', '新昌县', '180', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2184', '绍兴县', '180', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2185', '诸暨市', '180', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2186', '越城区', '180', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2187', '定海区', '181', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2188', '岱山县', '181', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2189', '嵊泗县', '181', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2190', '普陀区', '181', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2191', '常山县', '182', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2192', '开化县', '182', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2193', '柯城区', '182', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2194', '江山市', '182', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2195', '衢江区', '182', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2196', '龙游县', '182', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2197', '东阳市', '183', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2198', '义乌市', '183', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2199', '兰溪市', '183', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2200', '婺城区', '183', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2201', '武义县', '183', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2202', '永康市', '183', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2203', '浦江县', '183', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2204', '磐安县', '183', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2205', '金东区', '183', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2206', '三门县', '184', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2207', '临海市', '184', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2208', '仙居县', '184', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2209', '天台县', '184', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2210', '椒江区', '184', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2211', '温岭市', '184', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2212', '玉环县', '184', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2213', '路桥区', '184', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2214', '黄岩区', '184', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2215', '云和县', '185', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2216', '庆元县', '185', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2217', '景宁畲族自治县', '185', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2218', '松阳县', '185', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2219', '缙云县', '185', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2220', '莲都区', '185', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2221', '遂昌县', '185', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2222', '青田县', '185', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2223', '龙泉市', '185', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2224', '包河区', '186', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2225', '庐阳区', '186', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2226', '瑶海区', '186', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2227', '肥东县', '186', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2228', '肥西县', '186', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2229', '蜀山区', '186', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2230', '长丰县', '186', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2231', '三山区', '187', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2232', '南陵县', '187', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2233', '弋江区', '187', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2234', '繁昌县', '187', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2235', '芜湖县', '187', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2236', '镜湖区', '187', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2237', '鸠江区', '187', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2238', '五河县', '188', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2239', '固镇县', '188', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2240', '怀远县', '188', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2241', '淮上区', '188', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2242', '禹会区', '188', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2243', '蚌山区', '188', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2244', '龙子湖区', '188', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2245', '八公山区', '189', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2246', '凤台县', '189', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2247', '大通区', '189', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2248', '潘集区', '189', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2249', '田家庵区', '189', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2250', '谢家集区', '189', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2251', '当涂县', '190', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2252', '花山区', '190', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2253', '金家庄区', '190', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2254', '雨山区', '190', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2255', '杜集区', '191', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2256', '濉溪县', '191', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2257', '烈山区', '191', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2258', '相山区', '191', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2259', '狮子山区', '192', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2260', '郊区', '192', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2261', '铜官山区', '192', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2262', '铜陵县', '192', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2263', '大观区', '193', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2264', '太湖县', '193', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2265', '宜秀区', '193', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2266', '宿松县', '193', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2267', '岳西县', '193', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2268', '怀宁县', '193', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2269', '望江县', '193', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2270', '枞阳县', '193', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2271', '桐城市', '193', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2272', '潜山县', '193', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2273', '迎江区', '193', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2274', '休宁县', '194', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2275', '屯溪区', '194', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2276', '徽州区', '194', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2277', '歙县', '194', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2278', '祁门县', '194', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2279', '黄山区', '194', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2280', '黟县', '194', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2281', '全椒县', '195', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2282', '凤阳县', '195', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2283', '南谯区', '195', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2284', '天长市', '195', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2285', '定远县', '195', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2286', '明光市', '195', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2287', '来安县', '195', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2288', '琅玡区', '195', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2289', '临泉县', '196', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2290', '太和县', '196', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2291', '界首市', '196', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2292', '阜南县', '196', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2293', '颍东区', '196', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2294', '颍州区', '196', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2295', '颍泉区', '196', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2296', '颖上县', '196', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2297', '埇桥区', '197', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2298', '泗县辖', '197', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2299', '灵璧县', '197', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2300', '砀山县', '197', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2301', '萧县', '197', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2302', '含山县', '198', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2303', '和县', '198', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2304', '居巢区', '198', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2305', '庐江县', '198', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2306', '无为县', '198', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2307', '寿县', '199', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2308', '舒城县', '199', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2309', '裕安区', '199', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2310', '金安区', '199', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2311', '金寨县', '199', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2312', '霍山县', '199', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2313', '霍邱县', '199', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2314', '利辛县', '200', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2315', '涡阳县', '200', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2316', '蒙城县', '200', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2317', '谯城区', '200', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2318', '东至县', '201', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2319', '石台县', '201', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2320', '贵池区', '201', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2321', '青阳县', '201', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2322', '宁国市', '202', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2323', '宣州区', '202', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2324', '广德县', '202', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2325', '旌德县', '202', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2326', '泾县', '202', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2327', '绩溪县', '202', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2328', '郎溪县', '202', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2329', '仓山区', '203', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2330', '台江区', '203', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2331', '平潭县', '203', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2332', '晋安区', '203', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2333', '永泰县', '203', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2334', '福清市', '203', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2335', '罗源县', '203', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2336', '连江县', '203', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2337', '长乐市', '203', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2338', '闽侯县', '203', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2339', '闽清县', '203', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2340', '马尾区', '203', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2341', '鼓楼区', '203', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2342', '同安区', '204', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2343', '思明区', '204', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2344', '海沧区', '204', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2345', '湖里区', '204', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2346', '翔安区', '204', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2347', '集美区', '204', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2348', '仙游县', '205', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2349', '城厢区', '205', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2350', '涵江区', '205', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2351', '秀屿区', '205', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2352', '荔城区', '205', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2353', '三元区', '206', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2354', '大田县', '206', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2355', '宁化县', '206', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2356', '将乐县', '206', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2357', '尤溪县', '206', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2358', '建宁县', '206', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2359', '明溪县', '206', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2360', '梅列区', '206', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2361', '永安市', '206', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2362', '沙县', '206', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2363', '泰宁县', '206', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2364', '清流县', '206', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2365', '丰泽区', '207', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2366', '南安市', '207', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2367', '安溪县', '207', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2368', '德化县', '207', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2369', '惠安县', '207', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2370', '晋江市', '207', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2371', '永春县', '207', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2372', '泉港区', '207', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2373', '洛江区', '207', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2374', '石狮市', '207', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2375', '金门县', '207', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2376', '鲤城区', '207', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2377', '东山县', '208', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2378', '云霄县', '208', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2379', '华安县', '208', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2380', '南靖县', '208', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2381', '平和县', '208', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2382', '漳浦县', '208', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2383', '芗城区', '208', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2384', '诏安县', '208', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2385', '长泰县', '208', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2386', '龙文区', '208', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2387', '龙海市', '208', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2388', '光泽县', '209', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2389', '延平区', '209', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2390', '建瓯市', '209', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2391', '建阳市', '209', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2392', '政和县', '209', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2393', '松溪县', '209', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2394', '武夷山市', '209', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2395', '浦城县', '209', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2396', '邵武市', '209', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2397', '顺昌县', '209', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2398', '上杭县', '210', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2399', '新罗区', '210', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2400', '武平县', '210', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2401', '永定县', '210', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2402', '漳平市', '210', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2403', '连城县', '210', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2404', '长汀县', '210', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2405', '古田县', '211', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2406', '周宁县', '211', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2407', '寿宁县', '211', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2408', '屏南县', '211', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2409', '柘荣县', '211', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2410', '福安市', '211', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2411', '福鼎市', '211', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2412', '蕉城区', '211', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2413', '霞浦县', '211', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2414', '东湖区', '212', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2415', '南昌县', '212', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2416', '安义县', '212', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2417', '新建县', '212', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2418', '湾里区', '212', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2419', '西湖区', '212', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2420', '进贤县', '212', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2421', '青云谱区', '212', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2422', '青山湖区', '212', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2423', '乐平市', '213', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2424', '昌江区', '213', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2425', '浮梁县', '213', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2426', '珠山区', '213', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2427', '上栗县', '214', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2428', '安源区', '214', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2429', '湘东区', '214', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2430', '芦溪县', '214', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2431', '莲花县', '214', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2432', '九江县', '215', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2433', '修水县', '215', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2434', '庐山区', '215', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2435', '彭泽县', '215', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2436', '德安县', '215', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2437', '星子县', '215', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2438', '武宁县', '215', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2439', '永修县', '215', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2440', '浔阳区', '215', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2441', '湖口县', '215', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2442', '瑞昌市', '215', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2443', '都昌县', '215', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2444', '分宜县', '216', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2445', '渝水区', '216', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2446', '余江县', '217', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2447', '月湖区', '217', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2448', '贵溪市', '217', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2449', '上犹县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2450', '于都县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2451', '会昌县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2452', '信丰县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2453', '全南县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2454', '兴国县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2455', '南康市', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2456', '大余县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2457', '宁都县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2458', '安远县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2459', '定南县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2460', '寻乌县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2461', '崇义县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2462', '瑞金市', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2463', '石城县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2464', '章贡区', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2465', '赣县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2466', '龙南县', '218', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2467', '万安县', '219', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2468', '井冈山市', '219', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2469', '吉安县', '219', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2470', '吉州区', '219', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2471', '吉水县', '219', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2472', '安福县', '219', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2473', '峡江县', '219', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2474', '新干县', '219', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2475', '永丰县', '219', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2476', '永新县', '219', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2477', '泰和县', '219', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2478', '遂川县', '219', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2479', '青原区', '219', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2480', '万载县', '220', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2481', '上高县', '220', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2482', '丰城市', '220', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2483', '奉新县', '220', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2484', '宜丰县', '220', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2485', '樟树市', '220', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2486', '袁州区', '220', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2487', '铜鼓县', '220', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2488', '靖安县', '220', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2489', '高安市', '220', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2490', '东乡县', '221', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2491', '临川区', '221', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2492', '乐安县', '221', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2493', '南丰县', '221', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2494', '南城县', '221', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2495', '宜黄县', '221', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2496', '崇仁县', '221', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2497', '广昌县', '221', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2498', '资溪县', '221', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2499', '金溪县', '221', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2500', '黎川县', '221', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2501', '万年县', '222', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2502', '上饶县', '222', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2503', '余干县', '222', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2504', '信州区', '222', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2505', '婺源县', '222', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2506', '广丰县', '222', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2507', '弋阳县', '222', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2508', '德兴市', '222', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2509', '横峰县', '222', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2510', '玉山县', '222', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2511', '鄱阳县', '222', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2512', '铅山县', '222', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2513', '历下区', '223', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2514', '历城区', '223', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2515', '商河县', '223', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2516', '天桥区', '223', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2517', '市中区', '223', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2518', '平阴县', '223', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2519', '槐荫区', '223', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2520', '济阳县', '223', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2521', '章丘市', '223', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2522', '长清区', '223', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2523', '即墨市', '224', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2524', '四方区', '224', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2525', '城阳区', '224', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2526', '崂山区', '224', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2527', '市北区', '224', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2528', '市南区', '224', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2529', '平度市', '224', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2530', '李沧区', '224', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2531', '胶南市', '224', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2532', '胶州市', '224', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2533', '莱西市', '224', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2534', '黄岛区', '224', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2535', '临淄区', '225', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2536', '博山区', '225', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2537', '周村区', '225', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2538', '张店区', '225', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2539', '桓台县', '225', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2540', '沂源县', '225', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2541', '淄川区', '225', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2542', '高青县', '225', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2543', '台儿庄区', '226', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2544', '山亭区', '226', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2545', '峄城区', '226', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2546', '市中区', '226', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2547', '滕州市', '226', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2548', '薛城区', '226', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2549', '东营区', '227', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2550', '利津县', '227', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2551', '垦利县', '227', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2552', '广饶县', '227', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2553', '河口区', '227', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2554', '招远市', '228', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2555', '栖霞市', '228', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2556', '海阳市', '228', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2557', '牟平区', '228', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2558', '福山区', '228', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2559', '芝罘区', '228', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2560', '莱山区', '228', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2561', '莱州市', '228', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2562', '莱阳市', '228', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2563', '蓬莱市', '228', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2564', '长岛县', '228', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2565', '龙口市', '228', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2566', '临朐县', '229', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2567', '坊子区', '229', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2568', '奎文区', '229', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2569', '安丘市', '229', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2570', '寒亭区', '229', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2571', '寿光市', '229', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2572', '昌乐县', '229', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2573', '昌邑市', '229', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2574', '潍城区', '229', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2575', '诸城市', '229', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2576', '青州市', '229', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2577', '高密市', '229', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2578', '任城区', '230', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2579', '兖州市', '230', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2580', '嘉祥县', '230', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2581', '市中区', '230', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2582', '微山县', '230', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2583', '曲阜市', '230', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2584', '梁山县', '230', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2585', '汶上县', '230', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2586', '泗水县', '230', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2587', '邹城市', '230', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2588', '金乡县', '230', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2589', '鱼台县', '230', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2590', '东平县', '231', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2591', '宁阳县', '231', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2592', '岱岳区', '231', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2593', '新泰市', '231', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2594', '泰山区', '231', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2595', '肥城市', '231', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2596', '乳山市', '232', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2597', '文登市', '232', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2598', '环翠区', '232', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2599', '荣成市', '232', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2600', '东港区', '233', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2601', '五莲县', '233', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2602', '岚山区', '233', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2603', '莒县', '233', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2604', '莱城区', '234', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2605', '钢城区', '234', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2606', '临沭县', '235', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2607', '兰山区', '235', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2608', '平邑县', '235', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2609', '沂南县', '235', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2610', '沂水县', '235', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2611', '河东区', '235', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2612', '罗庄区', '235', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2613', '苍山县', '235', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2614', '莒南县', '235', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2615', '蒙阴县', '235', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2616', '费县', '235', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2617', '郯城县', '235', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2618', '临邑县', '236', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2619', '乐陵市', '236', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2620', '夏津县', '236', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2621', '宁津县', '236', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2622', '平原县', '236', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2623', '庆云县', '236', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2624', '德城区', '236', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2625', '武城县', '236', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2626', '禹城市', '236', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2627', '陵县', '236', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2628', '齐河县', '236', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2629', '东昌府区', '237', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2630', '东阿县', '237', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2631', '临清市', '237', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2632', '冠县', '237', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2633', '茌平县', '237', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2634', '莘县', '237', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2635', '阳谷县', '237', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2636', '高唐县', '237', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2637', '博兴县', '238', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2638', '惠民县', '238', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2639', '无棣县', '238', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2640', '沾化县', '238', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2641', '滨城区', '238', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2642', '邹平县', '238', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2643', '阳信县', '238', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2644', '东明县', '239', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2645', '单县', '239', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2646', '定陶县', '239', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2647', '巨野县', '239', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2648', '成武县', '239', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2649', '曹县', '239', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2650', '牡丹区', '239', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2651', '郓城县', '239', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2652', '鄄城县', '239', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2653', '上街区', '240', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2654', '中原区', '240', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2655', '中牟县', '240', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2656', '二七区', '240', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2657', '巩义市', '240', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2658', '惠济区', '240', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2659', '新密市', '240', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2660', '新郑市', '240', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2661', '登封市', '240', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2662', '管城回族区', '240', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2663', '荥阳市', '240', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2664', '金水区', '240', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2665', '兰考县', '241', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2666', '尉氏县', '241', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2667', '开封县', '241', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2668', '杞县', '241', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2669', '禹王台区', '241', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2670', '通许县', '241', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2671', '金明区', '241', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2672', '顺河回族区', '241', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2673', '鼓楼区', '241', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2674', '龙亭区', '241', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2675', '伊川县', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2676', '偃师市', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2677', '吉利区', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2678', '孟津县', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2679', '宜阳县', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2680', '嵩县', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2681', '新安县', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2682', '栾川县', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2683', '汝阳县', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2684', '洛宁县', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2685', '洛龙区', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2686', '涧西区', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2687', '瀍河回族区', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2688', '老城区', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2689', '西工区', '242', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2690', '卫东区', '243', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2691', '叶县', '243', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2692', '宝丰县', '243', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2693', '新华区', '243', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2694', '汝州市', '243', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2695', '湛河区', '243', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2696', '石龙区', '243', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2697', '舞钢市', '243', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2698', '郏县', '243', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2699', '鲁山县', '243', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2700', '内黄县', '244', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2701', '北关区', '244', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2702', '安阳县', '244', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2703', '文峰区', '244', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2704', '林州市', '244', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2705', '殷都区', '244', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2706', '汤阴县', '244', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2707', '滑县', '244', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2708', '龙安区', '244', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2709', '山城区', '245', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2710', '浚县', '245', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2711', '淇县', '245', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2712', '淇滨区', '245', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2713', '鹤山区', '245', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2714', '凤泉区', '246', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2715', '卫滨区', '246', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2716', '卫辉市', '246', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2717', '原阳县', '246', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2718', '封丘县', '246', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2719', '延津县', '246', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2720', '新乡县', '246', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2721', '牧野区', '246', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2722', '红旗区', '246', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2723', '获嘉县', '246', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2724', '辉县市', '246', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2725', '长垣县', '246', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2726', '中站区', '247', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2727', '修武县', '247', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2728', '博爱县', '247', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2729', '孟州市', '247', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2730', '山阳区', '247', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2731', '武陟县', '247', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2732', '沁阳市', '247', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2733', '温县', '247', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2734', '解放区', '247', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2735', '马村区', '247', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2736', '华龙区', '248', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2737', '南乐县', '248', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2738', '台前县', '248', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2739', '清丰县', '248', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2740', '濮阳县', '248', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2741', '范县', '248', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2742', '禹州市', '249', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2743', '襄城县', '249', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2744', '许昌县', '249', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2745', '鄢陵县', '249', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2746', '长葛市', '249', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2747', '魏都区', '249', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2748', '临颍县', '250', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2749', '召陵区', '250', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2750', '源汇区', '250', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2751', '舞阳县', '250', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2752', '郾城区', '250', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2753', '义马市', '251', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2754', '卢氏县', '251', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2755', '渑池县', '251', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2756', '湖滨区', '251', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2757', '灵宝市', '251', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2758', '陕县', '251', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2759', '内乡县', '252', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2760', '南召县', '252', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2761', '卧龙区', '252', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2762', '唐河县', '252', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2763', '宛城区', '252', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2764', '新野县', '252', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2765', '方城县', '252', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2766', '桐柏县', '252', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2767', '淅川县', '252', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2768', '社旗县', '252', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2769', '西峡县', '252', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2770', '邓州市', '252', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2771', '镇平县', '252', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2772', '夏邑县', '253', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2773', '宁陵县', '253', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2774', '柘城县', '253', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2775', '民权县', '253', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2776', '永城市', '253', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2777', '睢县', '253', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2778', '睢阳区', '253', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2779', '粱园区', '253', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2780', '虞城县', '253', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2781', '光山县', '254', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2782', '商城县', '254', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2783', '固始县', '254', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2784', '平桥区', '254', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2785', '息县', '254', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2786', '新县', '254', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2787', '浉河区', '254', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2788', '淮滨县', '254', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2789', '潢川县', '254', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2790', '罗山县', '254', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2791', '商水县', '255', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2792', '太康县', '255', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2793', '川汇区', '255', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2794', '扶沟县', '255', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2795', '沈丘县', '255', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2796', '淮阳县', '255', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2797', '西华县', '255', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2798', '郸城县', '255', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2799', '项城市', '255', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2800', '鹿邑县', '255', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2801', '上蔡县', '256', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2802', '平舆县', '256', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2803', '新蔡县', '256', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2804', '正阳县', '256', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2805', '汝南县', '256', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2806', '泌阳县', '256', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2807', '确山县', '256', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2808', '西平县', '256', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2809', '遂平县', '256', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2810', '驿城区', '256', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2811', '济源市', '257', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2812', '东西湖区', '258', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2813', '新洲区', '258', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2814', '武昌区', '258', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2815', '汉南区', '258', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2816', '汉阳区', '258', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2817', '江夏区', '258', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2818', '江岸区', '258', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2819', '江汉区', '258', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2820', '洪山区', '258', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2821', '硚口区', '258', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2822', '蔡甸区', '258', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2823', '青山区', '258', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2824', '黄陂区', '258', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2825', '下陆区', '259', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2826', '大冶市', '259', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2827', '西塞山区', '259', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2828', '铁山区', '259', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2829', '阳新县', '259', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2830', '黄石港区', '259', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2831', '丹江口市', '260', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2832', '张湾区', '260', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2833', '房县', '260', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2834', '竹山县', '260', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2835', '竹溪县', '260', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2836', '茅箭区', '260', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2837', '郧县', '260', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2838', '郧西县', '260', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2839', '五峰土家族自治县', '261', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2840', '伍家岗区', '261', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2841', '兴山县', '261', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2842', '夷陵区', '261', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2843', '宜都市', '261', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2844', '当阳市', '261', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2845', '枝江市', '261', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2846', '点军区', '261', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2847', '秭归县', '261', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2848', '虢亭区', '261', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2849', '西陵区', '261', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2850', '远安县', '261', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2851', '长阳土家族自治县', '261', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2852', '保康县', '262', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2853', '南漳县', '262', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2854', '宜城市', '262', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2855', '枣阳市', '262', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2856', '樊城区', '262', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2857', '老河口市', '262', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2858', '襄城区', '262', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2859', '襄阳区', '262', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2860', '谷城县', '262', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2861', '华容区', '263', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2862', '粱子湖', '263', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2863', '鄂城区', '263', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2864', '东宝区', '264', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2865', '京山县', '264', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2866', '掇刀区', '264', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2867', '沙洋县', '264', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2868', '钟祥市', '264', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2869', '云梦县', '265', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2870', '大悟县', '265', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2871', '孝南区', '265', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2872', '孝昌县', '265', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2873', '安陆市', '265', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2874', '应城市', '265', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2875', '汉川市', '265', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2876', '公安县', '266', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2877', '松滋市', '266', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2878', '江陵县', '266', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2879', '沙市区', '266', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2880', '洪湖市', '266', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2881', '监利县', '266', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2882', '石首市', '266', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2883', '荆州区', '266', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2884', '团风县', '267', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2885', '武穴市', '267', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2886', '浠水县', '267', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2887', '红安县', '267', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2888', '罗田县', '267', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2889', '英山县', '267', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2890', '蕲春县', '267', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2891', '麻城市', '267', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2892', '黄州区', '267', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2893', '黄梅县', '267', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2894', '咸安区', '268', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2895', '嘉鱼县', '268', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2896', '崇阳县', '268', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2897', '赤壁市', '268', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2898', '通城县', '268', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2899', '通山县', '268', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2900', '广水市', '269', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2901', '曾都区', '269', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2902', '利川市', '270', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2903', '咸丰县', '270', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2904', '宣恩县', '270', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2905', '巴东县', '270', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2906', '建始县', '270', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2907', '恩施市', '270', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2908', '来凤县', '270', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2909', '鹤峰县', '270', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2910', '仙桃市', '271', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2911', '潜江市', '272', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2912', '天门市', '273', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2913', '神农架林区', '274', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2914', '天心区', '275', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2915', '宁乡县', '275', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2916', '岳麓区', '275', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2917', '开福区', '275', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2918', '望城县', '275', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2919', '浏阳市', '275', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2920', '芙蓉区', '275', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2921', '长沙县', '275', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2922', '雨花区', '275', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2923', '天元区', '276', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2924', '攸县', '276', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2925', '株洲县', '276', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2926', '炎陵县', '276', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2927', '石峰区', '276', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2928', '芦淞区', '276', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2929', '茶陵县', '276', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2930', '荷塘区', '276', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2931', '醴陵市', '276', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2932', '岳塘区', '277', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2933', '湘乡市', '277', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2934', '湘潭县', '277', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2935', '雨湖区', '277', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2936', '韶山市', '277', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2937', '南岳区', '278', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2938', '常宁市', '278', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2939', '珠晖区', '278', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2940', '石鼓区', '278', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2941', '祁东县', '278', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2942', '耒阳市', '278', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2943', '蒸湘区', '278', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2944', '衡东县', '278', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2945', '衡南县', '278', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2946', '衡山县', '278', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2947', '衡阳县', '278', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2948', '雁峰区', '278', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2949', '北塔区', '279', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2950', '双清区', '279', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2951', '城步苗族自治县', '279', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2952', '大祥区', '279', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2953', '新宁县', '279', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2954', '新邵县', '279', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2955', '武冈市', '279', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2956', '洞口县', '279', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2957', '绥宁县', '279', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2958', '邵东县', '279', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2959', '邵阳县', '279', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2960', '隆回县', '279', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2961', '临湘市', '280', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2962', '云溪区', '280', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2963', '华容县', '280', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2964', '君山区', '280', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2965', '岳阳县', '280', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2966', '岳阳楼区', '280', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2967', '平江县', '280', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2968', '汨罗市', '280', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2969', '湘阴县', '280', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2970', '临澧县', '281', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2971', '安乡县', '281', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2972', '桃源县', '281', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2973', '武陵区', '281', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2974', '汉寿县', '281', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2975', '津市市', '281', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2976', '澧县', '281', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2977', '石门县', '281', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2978', '鼎城区', '281', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2979', '慈利县', '282', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2980', '桑植县', '282', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2981', '武陵源区', '282', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2982', '永定区', '282', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2983', '南县', '283', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2984', '安化县', '283', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2985', '桃江县', '283', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2986', '沅江市', '283', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2987', '资阳区', '283', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2988', '赫山区', '283', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2989', '临武县', '284', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2990', '北湖区', '284', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2991', '嘉禾县', '284', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2992', '安仁县', '284', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2993', '宜章县', '284', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2994', '桂东县', '284', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2995', '桂阳县', '284', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2996', '永兴县', '284', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2997', '汝城县', '284', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2998', '苏仙区', '284', '0', '3', null);
INSERT INTO `pre_area` VALUES ('2999', '资兴市', '284', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3000', '东安县', '285', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3001', '冷水滩区', '285', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3002', '双牌县', '285', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3003', '宁远县', '285', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3004', '新田县', '285', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3005', '江华瑶族自治县', '285', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3006', '江永县', '285', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3007', '祁阳县', '285', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3008', '蓝山县', '285', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3009', '道县', '285', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3010', '零陵区', '285', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3011', '中方县', '286', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3012', '会同县', '286', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3013', '新晃侗族自治县', '286', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3014', '沅陵县', '286', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3015', '洪江市/洪江区', '286', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3016', '溆浦县', '286', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3017', '芷江侗族自治县', '286', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3018', '辰溪县', '286', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3019', '通道侗族自治县', '286', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3020', '靖州苗族侗族自治县', '286', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3021', '鹤城区', '286', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3022', '麻阳苗族自治县', '286', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3023', '冷水江市', '287', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3024', '双峰县', '287', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3025', '娄星区', '287', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3026', '新化县', '287', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3027', '涟源市', '287', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3028', '保靖县', '288', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3029', '凤凰县', '288', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3030', '古丈县', '288', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3031', '吉首市', '288', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3032', '永顺县', '288', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3033', '泸溪县', '288', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3034', '花垣县', '288', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3035', '龙山县', '288', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3036', '萝岗区', '289', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3037', '南沙区', '289', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3038', '从化市', '289', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3039', '增城市', '289', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3040', '天河区', '289', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3041', '海珠区', '289', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3042', '番禺区', '289', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3043', '白云区', '289', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3044', '花都区', '289', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3045', '荔湾区', '289', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3046', '越秀区', '289', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3047', '黄埔区', '289', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3048', '乐昌市', '290', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3049', '乳源瑶族自治县', '290', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3050', '仁化县', '290', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3051', '南雄市', '290', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3052', '始兴县', '290', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3053', '新丰县', '290', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3054', '曲江区', '290', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3055', '武江区', '290', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3056', '浈江区', '290', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3057', '翁源县', '290', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3058', '南山区', '291', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3059', '宝安区', '291', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3060', '盐田区', '291', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3061', '福田区', '291', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3062', '罗湖区', '291', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3063', '龙岗区', '291', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3064', '斗门区', '292', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3065', '金湾区', '292', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3066', '香洲区', '292', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3067', '南澳县', '293', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3068', '潮南区', '293', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3069', '潮阳区', '293', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3070', '澄海区', '293', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3071', '濠江区', '293', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3072', '金平区', '293', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3073', '龙湖区', '293', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3074', '三水区', '294', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3075', '南海区', '294', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3076', '禅城区', '294', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3077', '顺德区', '294', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3078', '高明区', '294', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3079', '台山市', '295', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3080', '开平市', '295', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3081', '恩平市', '295', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3082', '新会区', '295', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3083', '江海区', '295', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3084', '蓬江区', '295', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3085', '鹤山市', '295', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3086', '吴川市', '296', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3087', '坡头区', '296', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3088', '廉江市', '296', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3089', '徐闻县', '296', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3090', '赤坎区', '296', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3091', '遂溪县', '296', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3092', '雷州市', '296', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3093', '霞山区', '296', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3094', '麻章区', '296', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3095', '信宜市', '297', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3096', '化州市', '297', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3097', '电白县', '297', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3098', '茂南区', '297', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3099', '茂港区', '297', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3100', '高州市', '297', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3101', '四会市', '298', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3102', '封开县', '298', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3103', '广宁县', '298', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3104', '德庆县', '298', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3105', '怀集县', '298', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3106', '端州区', '298', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3107', '高要市', '298', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3108', '鼎湖区', '298', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3109', '博罗县', '299', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3110', '惠东县', '299', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3111', '惠城区', '299', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3112', '惠阳区', '299', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3113', '龙门县', '299', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3114', '丰顺县', '300', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3115', '五华县', '300', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3116', '兴宁市', '300', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3117', '大埔县', '300', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3118', '平远县', '300', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3119', '梅县', '300', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3120', '梅江区', '300', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3121', '蕉岭县', '300', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3122', '城区', '301', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3123', '海丰县', '301', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3124', '陆丰市', '301', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3125', '陆河县', '301', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3126', '东源县', '302', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3127', '和平县', '302', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3128', '源城区', '302', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3129', '紫金县', '302', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3130', '连平县', '302', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3131', '龙川县', '302', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3132', '江城区', '303', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3133', '阳东县', '303', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3134', '阳春市', '303', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3135', '阳西县', '303', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3136', '佛冈县', '304', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3137', '清城区', '304', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3138', '清新县', '304', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3139', '英德市', '304', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3140', '连南瑶族自治县', '304', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3141', '连山壮族瑶族自治县', '304', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3142', '连州市', '304', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3143', '阳山县', '304', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3144', '东莞市', '305', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3145', '中山市', '306', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3146', '湘桥区', '307', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3147', '潮安县', '307', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3148', '饶平县', '307', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3149', '惠来县', '308', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3150', '揭东县', '308', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3151', '揭西县', '308', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3152', '普宁市', '308', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3153', '榕城区', '308', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3154', '云城区', '309', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3155', '云安县', '309', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3156', '新兴县', '309', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3157', '罗定市', '309', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3158', '郁南县', '309', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3159', '上林县', '310', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3160', '兴宁区', '310', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3161', '宾阳县', '310', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3162', '横县', '310', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3163', '武鸣县', '310', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3164', '江南区', '310', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3165', '良庆区', '310', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3166', '西乡塘区', '310', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3167', '邕宁区', '310', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3168', '隆安县', '310', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3169', '青秀区', '310', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3170', '马山县', '310', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3171', '三江侗族自治县', '311', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3172', '城中区', '311', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3173', '柳北区', '311', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3174', '柳南区', '311', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3175', '柳城县', '311', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3176', '柳江县', '311', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3177', '融安县', '311', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3178', '融水苗族自治县', '311', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3179', '鱼峰区', '311', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3180', '鹿寨县', '311', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3181', '七星区', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3182', '临桂县', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3183', '全州县', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3184', '兴安县', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3185', '叠彩区', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3186', '平乐县', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3187', '恭城瑶族自治县', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3188', '永福县', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3189', '灌阳县', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3190', '灵川县', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3191', '秀峰区', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3192', '荔浦县', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3193', '象山区', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3194', '资源县', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3195', '阳朔县', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3196', '雁山区', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3197', '龙胜各族自治县', '312', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3198', '万秀区', '313', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3199', '岑溪市', '313', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3200', '苍梧县', '313', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3201', '蒙山县', '313', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3202', '藤县', '313', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3203', '蝶山区', '313', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3204', '长洲区', '313', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3205', '合浦县', '314', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3206', '海城区', '314', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3207', '铁山港区', '314', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3208', '银海区', '314', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3209', '上思县', '315', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3210', '东兴市', '315', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3211', '港口区', '315', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3212', '防城区', '315', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3213', '浦北县', '316', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3214', '灵山县', '316', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3215', '钦北区', '316', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3216', '钦南区', '316', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3217', '平南县', '317', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3218', '桂平市', '317', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3219', '港北区', '317', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3220', '港南区', '317', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3221', '覃塘区', '317', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3222', '兴业县', '318', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3223', '北流市', '318', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3224', '博白县', '318', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3225', '容县', '318', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3226', '玉州区', '318', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3227', '陆川县', '318', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3228', '乐业县', '319', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3229', '凌云县', '319', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3230', '右江区', '319', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3231', '平果县', '319', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3232', '德保县', '319', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3233', '田东县', '319', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3234', '田林县', '319', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3235', '田阳县', '319', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3236', '西林县', '319', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3237', '那坡县', '319', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3238', '隆林各族自治县', '319', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3239', '靖西县', '319', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3240', '八步区', '320', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3241', '富川瑶族自治县', '320', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3242', '昭平县', '320', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3243', '钟山县', '320', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3244', '东兰县', '321', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3245', '凤山县', '321', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3246', '南丹县', '321', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3247', '大化瑶族自治县', '321', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3248', '天峨县', '321', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3249', '宜州市', '321', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3250', '巴马瑶族自治县', '321', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3251', '环江毛南族自治县', '321', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3252', '罗城仫佬族自治县', '321', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3253', '都安瑶族自治县', '321', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3254', '金城江区', '321', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3255', '兴宾区', '322', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3256', '合山市', '322', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3257', '忻城县', '322', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3258', '武宣县', '322', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3259', '象州县', '322', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3260', '金秀瑶族自治县', '322', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3261', '凭祥市', '323', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3262', '大新县', '323', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3263', '天等县', '323', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3264', '宁明县', '323', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3265', '扶绥县', '323', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3266', '江州区', '323', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3267', '龙州县', '323', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3268', '琼山区', '324', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3269', '秀英区', '324', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3270', '美兰区', '324', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3271', '龙华区', '324', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3272', '三亚市', '325', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3273', '五指山市', '326', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3274', '琼海市', '327', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3275', '儋州市', '328', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3276', '文昌市', '329', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3277', '万宁市', '330', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3278', '东方市', '331', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3279', '定安县', '332', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3280', '屯昌县', '333', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3281', '澄迈县', '334', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3282', '临高县', '335', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3283', '白沙黎族自治县', '336', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3284', '昌江黎族自治县', '337', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3285', '乐东黎族自治县', '338', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3286', '陵水黎族自治县', '339', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3287', '保亭黎族苗族自治县', '340', '0', '3', null);
INSERT INTO `pre_area` VALUES ('3288', '琼中黎族苗族自治县', '341', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4209', '双流县', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4210', '大邑县', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4211', '崇州市', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4212', '彭州市', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4213', '成华区', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4214', '新津县', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4215', '新都区', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4216', '武侯区', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4217', '温江区', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4218', '蒲江县', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4219', '邛崃市', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4220', '郫县', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4221', '都江堰市', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4222', '金堂县', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4223', '金牛区', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4224', '锦江区', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4225', '青白江区', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4226', '青羊区', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4227', '龙泉驿区', '385', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4228', '大安区', '386', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4229', '富顺县', '386', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4230', '沿滩区', '386', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4231', '自流井区', '386', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4232', '荣县', '386', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4233', '贡井区', '386', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4234', '东区', '387', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4235', '仁和区', '387', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4236', '盐边县', '387', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4237', '米易县', '387', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4238', '西区', '387', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4239', '叙永县', '388', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4240', '古蔺县', '388', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4241', '合江县', '388', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4242', '江阳区', '388', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4243', '泸县', '388', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4244', '纳溪区', '388', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4245', '龙马潭区', '388', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4246', '中江县', '389', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4247', '什邡市', '389', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4248', '广汉市', '389', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4249', '旌阳区', '389', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4250', '绵竹市', '389', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4251', '罗江县', '389', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4252', '三台县', '390', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4253', '北川羌族自治县', '390', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4254', '安县', '390', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4255', '平武县', '390', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4256', '梓潼县', '390', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4257', '江油市', '390', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4258', '涪城区', '390', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4259', '游仙区', '390', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4260', '盐亭县', '390', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4261', '元坝区', '391', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4262', '利州区', '391', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4263', '剑阁县', '391', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4264', '旺苍县', '391', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4265', '朝天区', '391', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4266', '苍溪县', '391', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4267', '青川县', '391', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4268', '大英县', '392', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4269', '安居区', '392', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4270', '射洪县', '392', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4271', '船山区', '392', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4272', '蓬溪县', '392', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4273', '东兴区', '393', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4274', '威远县', '393', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4275', '市中区', '393', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4276', '资中县', '393', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4277', '隆昌县', '393', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4278', '五通桥区', '394', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4279', '井研县', '394', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4280', '夹江县', '394', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4281', '峨眉山市', '394', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4282', '峨边彝族自治县', '394', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4283', '市中区', '394', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4284', '沐川县', '394', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4285', '沙湾区', '394', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4286', '犍为县', '394', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4287', '金口河区', '394', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4288', '马边彝族自治县', '394', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4289', '仪陇县', '395', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4290', '南充市嘉陵区', '395', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4291', '南部县', '395', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4292', '嘉陵区', '395', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4293', '营山县', '395', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4294', '蓬安县', '395', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4295', '西充县', '395', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4296', '阆中市', '395', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4297', '顺庆区', '395', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4298', '高坪区', '395', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4299', '东坡区', '396', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4300', '丹棱县', '396', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4301', '仁寿县', '396', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4302', '彭山县', '396', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4303', '洪雅县', '396', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4304', '青神县', '396', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4305', '兴文县', '397', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4306', '南溪县', '397', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4307', '宜宾县', '397', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4308', '屏山县', '397', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4309', '江安县', '397', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4310', '珙县', '397', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4311', '筠连县', '397', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4312', '翠屏区', '397', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4313', '长宁县', '397', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4314', '高县', '397', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4315', '华蓥市', '398', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4316', '岳池县', '398', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4317', '广安区', '398', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4318', '武胜县', '398', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4319', '邻水县', '398', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4320', '万源市', '399', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4321', '大竹县', '399', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4322', '宣汉县', '399', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4323', '开江县', '399', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4324', '渠县', '399', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4325', '达县', '399', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4326', '通川区', '399', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4327', '名山县', '400', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4328', '天全县', '400', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4329', '宝兴县', '400', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4330', '汉源县', '400', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4331', '石棉县', '400', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4332', '芦山县', '400', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4333', '荥经县', '400', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4334', '雨城区', '400', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4335', '南江县', '401', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4336', '巴州区', '401', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4337', '平昌县', '401', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4338', '通江县', '401', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4339', '乐至县', '402', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4340', '安岳县', '402', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4341', '简阳市', '402', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4342', '雁江区', '402', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4343', '九寨沟县', '403', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4344', '壤塘县', '403', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4345', '小金县', '403', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4346', '松潘县', '403', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4347', '汶川县', '403', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4348', '理县', '403', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4349', '红原县', '403', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4350', '若尔盖县', '403', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4351', '茂县', '403', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4352', '金川县', '403', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4353', '阿坝县', '403', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4354', '马尔康县', '403', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4355', '黑水县', '403', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4356', '丹巴县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4357', '乡城县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4358', '巴塘县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4359', '康定县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4360', '得荣县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4361', '德格县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4362', '新龙县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4363', '泸定县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4364', '炉霍县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4365', '理塘县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4366', '甘孜县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4367', '白玉县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4368', '石渠县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4369', '稻城县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4370', '色达县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4371', '道孚县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4372', '雅江县', '404', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4373', '会东县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4374', '会理县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4375', '冕宁县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4376', '喜德县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4377', '宁南县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4378', '布拖县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4379', '德昌县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4380', '昭觉县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4381', '普格县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4382', '木里藏族自治县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4383', '甘洛县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4384', '盐源县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4385', '美姑县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4386', '西昌', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4387', '越西县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4388', '金阳县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4389', '雷波县', '405', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4390', '乌当区', '406', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4391', '云岩区', '406', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4392', '修文县', '406', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4393', '南明区', '406', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4394', '小河区', '406', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4395', '开阳县', '406', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4396', '息烽县', '406', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4397', '清镇市', '406', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4398', '白云区', '406', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4399', '花溪区', '406', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4400', '六枝特区', '407', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4401', '水城县', '407', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4402', '盘县', '407', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4403', '钟山区', '407', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4404', '习水县', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4405', '仁怀市', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4406', '余庆县', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4407', '凤冈县', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4408', '务川仡佬族苗族自治县', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4409', '桐梓县', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4410', '正安县', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4411', '汇川区', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4412', '湄潭县', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4413', '红花岗区', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4414', '绥阳县', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4415', '赤水市', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4416', '道真仡佬族苗族自治县', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4417', '遵义县', '408', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4418', '关岭布依族苗族自治县', '409', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4419', '平坝县', '409', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4420', '普定县', '409', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4421', '紫云苗族布依族自治县', '409', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4422', '西秀区', '409', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4423', '镇宁布依族苗族自治县', '409', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4424', '万山特区', '410', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4425', '印江土家族苗族自治县', '410', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4426', '德江县', '410', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4427', '思南县', '410', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4428', '松桃苗族自治县', '410', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4429', '江口县', '410', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4430', '沿河土家族自治县', '410', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4431', '玉屏侗族自治县', '410', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4432', '石阡县', '410', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4433', '铜仁市', '410', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4434', '兴义市', '411', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4435', '兴仁县', '411', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4436', '册亨县', '411', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4437', '安龙县', '411', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4438', '普安县', '411', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4439', '晴隆县', '411', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4440', '望谟县', '411', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4441', '贞丰县', '411', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4442', '大方县', '412', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4443', '威宁彝族回族苗族自治县', '412', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4444', '毕节市', '412', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4445', '纳雍县', '412', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4446', '织金县', '412', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4447', '赫章县', '412', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4448', '金沙县', '412', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4449', '黔西县', '412', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4450', '三穗县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4451', '丹寨县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4452', '从江县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4453', '凯里市', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4454', '剑河县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4455', '台江县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4456', '天柱县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4457', '岑巩县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4458', '施秉县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4459', '榕江县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4460', '锦屏县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4461', '镇远县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4462', '雷山县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4463', '麻江县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4464', '黄平县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4465', '黎平县', '413', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4466', '三都水族自治县', '414', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4467', '平塘县', '414', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4468', '惠水县', '414', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4469', '独山县', '414', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4470', '瓮安县', '414', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4471', '福泉市', '414', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4472', '罗甸县', '414', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4473', '荔波县', '414', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4474', '贵定县', '414', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4475', '都匀市', '414', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4476', '长顺县', '414', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4477', '龙里县', '414', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4478', '东川区', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4479', '五华区', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4480', '呈贡县', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4481', '安宁市', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4482', '官渡区', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4483', '宜良县', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4484', '富民县', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4485', '寻甸回族彝族自治县', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4486', '嵩明县', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4487', '晋宁县', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4488', '盘龙区', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4489', '石林彝族自治县', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4490', '禄劝彝族苗族自治县', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4491', '西山区', '415', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4492', '会泽县', '416', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4493', '宣威市', '416', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4494', '富源县', '416', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4495', '师宗县', '416', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4496', '沾益县', '416', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4497', '罗平县', '416', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4498', '陆良县', '416', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4499', '马龙县', '416', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4500', '麒麟区', '416', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4501', '元江哈尼族彝族傣族自治县', '417', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4502', '华宁县', '417', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4503', '峨山彝族自治县', '417', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4504', '新平彝族傣族自治县', '417', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4505', '易门县', '417', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4506', '江川县', '417', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4507', '澄江县', '417', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4508', '红塔区', '417', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4509', '通海县', '417', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4510', '施甸县', '418', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4511', '昌宁县', '418', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4512', '腾冲县', '418', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4513', '隆阳区', '418', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4514', '龙陵县', '418', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4515', '大关县', '419', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4516', '威信县', '419', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4517', '巧家县', '419', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4518', '彝良县', '419', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4519', '昭阳区', '419', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4520', '水富县', '419', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4521', '永善县', '419', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4522', '盐津县', '419', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4523', '绥江县', '419', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4524', '镇雄县', '419', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4525', '鲁甸县', '419', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4526', '华坪县', '420', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4527', '古城区', '420', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4528', '宁蒗彝族自治县', '420', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4529', '永胜县', '420', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4530', '玉龙纳西族自治县', '420', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4531', '临翔区', '422', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4532', '云县', '422', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4533', '凤庆县', '422', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4534', '双江拉祜族佤族布朗族傣族自治县', '422', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4535', '永德县', '422', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4536', '沧源佤族自治县', '422', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4537', '耿马傣族佤族自治县', '422', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4538', '镇康县', '422', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4539', '元谋县', '423', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4540', '南华县', '423', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4541', '双柏县', '423', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4542', '大姚县', '423', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4543', '姚安县', '423', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4544', '楚雄市', '423', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4545', '武定县', '423', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4546', '永仁县', '423', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4547', '牟定县', '423', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4548', '禄丰县', '423', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4549', '个旧市', '424', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4550', '元阳县', '424', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4551', '屏边苗族自治县', '424', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4552', '建水县', '424', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4553', '开远市', '424', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4554', '弥勒县', '424', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4555', '河口瑶族自治县', '424', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4556', '泸西县', '424', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4557', '石屏县', '424', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4558', '红河县', '424', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4559', '绿春县', '424', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4560', '蒙自县', '424', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4561', '金平苗族瑶族傣族自治县', '424', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4562', '丘北县', '425', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4563', '富宁县', '425', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4564', '广南县', '425', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4565', '文山县', '425', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4566', '砚山县', '425', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4567', '西畴县', '425', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4568', '马关县', '425', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4569', '麻栗坡县', '425', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4570', '勐海县', '426', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4571', '勐腊县', '426', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4572', '景洪市', '426', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4573', '云龙县', '427', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4574', '剑川县', '427', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4575', '南涧彝族自治县', '427', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4576', '大理市', '427', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4577', '宾川县', '427', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4578', '巍山彝族回族自治县', '427', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4579', '弥渡县', '427', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4580', '永平县', '427', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4581', '洱源县', '427', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4582', '漾濞彝族自治县', '427', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4583', '祥云县', '427', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4584', '鹤庆县', '427', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4585', '梁河县', '428', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4586', '潞西市', '428', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4587', '瑞丽市', '428', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4588', '盈江县', '428', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4589', '陇川县', '428', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4590', '德钦县', '430', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4591', '维西傈僳族自治县', '430', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4592', '香格里拉县', '430', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4593', '城关区', '431', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4594', '堆龙德庆县', '431', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4595', '墨竹工卡县', '431', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4596', '尼木县', '431', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4597', '当雄县', '431', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4598', '曲水县', '431', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4599', '林周县', '431', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4600', '达孜县', '431', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4601', '丁青县', '432', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4602', '八宿县', '432', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4603', '察雅县', '432', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4604', '左贡县', '432', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4605', '昌都县', '432', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4606', '江达县', '432', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4607', '洛隆县', '432', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4608', '类乌齐县', '432', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4609', '芒康县', '432', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4610', '贡觉县', '432', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4611', '边坝县', '432', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4612', '乃东县', '433', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4613', '加查县', '433', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4614', '扎囊县', '433', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4615', '措美县', '433', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4616', '曲松县', '433', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4617', '桑日县', '433', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4618', '洛扎县', '433', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4619', '浪卡子县', '433', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4620', '琼结县', '433', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4621', '贡嘎县', '433', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4622', '错那县', '433', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4623', '隆子县', '433', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4624', '亚东县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4625', '仁布县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4626', '仲巴县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4627', '南木林县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4628', '吉隆县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4629', '定日县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4630', '定结县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4631', '岗巴县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4632', '康马县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4633', '拉孜县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4634', '日喀则市', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4635', '昂仁县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4636', '江孜县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4637', '白朗县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4638', '聂拉木县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4639', '萨嘎县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4640', '萨迦县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4641', '谢通门县', '434', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4642', '嘉黎县', '435', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4643', '安多县', '435', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4644', '尼玛县', '435', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4645', '巴青县', '435', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4646', '比如县', '435', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4647', '班戈县', '435', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4648', '申扎县', '435', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4649', '索县', '435', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4650', '聂荣县', '435', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4651', '那曲县', '435', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4652', '噶尔县', '436', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4653', '措勤县', '436', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4654', '改则县', '436', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4655', '日土县', '436', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4656', '普兰县', '436', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4657', '札达县', '436', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4658', '革吉县', '436', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4659', '墨脱县', '437', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4660', '察隅县', '437', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4661', '工布江达县', '437', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4662', '朗县', '437', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4663', '林芝县', '437', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4664', '波密县', '437', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4665', '米林县', '437', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4666', '临潼区', '438', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4667', '周至县', '438', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4668', '户县', '438', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4669', '新城区', '438', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4670', '未央区', '438', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4671', '灞桥区', '438', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4672', '碑林区', '438', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4673', '莲湖区', '438', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4674', '蓝田县', '438', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4675', '长安区', '438', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4676', '阎良区', '438', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4677', '雁塔区', '438', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4678', '高陵县', '438', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4679', '印台区', '439', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4680', '宜君县', '439', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4681', '王益区', '439', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4682', '耀州区', '439', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4683', '凤县', '440', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4684', '凤翔县', '440', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4685', '千阳县', '440', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4686', '太白县', '440', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4687', '岐山县', '440', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4688', '扶风县', '440', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4689', '渭滨区', '440', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4690', '眉县', '440', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4691', '金台区', '440', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4692', '陇县', '440', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4693', '陈仓区', '440', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4694', '麟游县', '440', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4695', '三原县', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4696', '干县', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4697', '兴平市', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4698', '彬县', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4699', '旬邑县', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4700', '杨陵区', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4701', '武功县', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4702', '永寿县', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4703', '泾阳县', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4704', '淳化县', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4705', '渭城区', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4706', '礼泉县', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4707', '秦都区', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4708', '长武县', '441', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4709', '临渭区', '442', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4710', '华县', '442', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4711', '华阴市', '442', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4712', '合阳县', '442', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4713', '大荔县', '442', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4714', '富平县', '442', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4715', '潼关县', '442', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4716', '澄城县', '442', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4717', '白水县', '442', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4718', '蒲城县', '442', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4719', '韩城市', '442', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4720', '吴起县', '443', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4721', '子长县', '443', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4722', '安塞县', '443', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4723', '宜川县', '443', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4724', '宝塔区', '443', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4725', '富县', '443', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4726', '延川县', '443', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4727', '延长县', '443', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4728', '志丹县', '443', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4729', '洛川县', '443', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4730', '甘泉县', '443', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4731', '黄陵县', '443', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4732', '黄龙县', '443', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4733', '佛坪县', '444', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4734', '勉县', '444', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4735', '南郑县', '444', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4736', '城固县', '444', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4737', '宁强县', '444', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4738', '汉台区', '444', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4739', '洋县', '444', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4740', '留坝县', '444', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4741', '略阳县', '444', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4742', '西乡县', '444', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4743', '镇巴县', '444', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4744', '佳县', '445', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4745', '吴堡县', '445', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4746', '子洲县', '445', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4747', '定边县', '445', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4748', '府谷县', '445', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4749', '榆林市榆阳区', '445', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4750', '横山县', '445', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4751', '清涧县', '445', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4752', '神木县', '445', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4753', '米脂县', '445', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4754', '绥德县', '445', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4755', '靖边县', '445', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4756', '宁陕县', '446', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4757', '岚皋县', '446', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4758', '平利县', '446', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4759', '旬阳县', '446', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4760', '汉滨区', '446', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4761', '汉阴县', '446', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4762', '白河县', '446', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4763', '石泉县', '446', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4764', '紫阳县', '446', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4765', '镇坪县', '446', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4766', '丹凤县', '447', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4767', '商南县', '447', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4768', '商州区', '447', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4769', '山阳县', '447', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4770', '柞水县', '447', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4771', '洛南县', '447', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4772', '镇安县', '447', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4773', '七里河区', '448', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4774', '城关区', '448', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4775', '安宁区', '448', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4776', '榆中县', '448', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4777', '永登县', '448', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4778', '皋兰县', '448', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4779', '红古区', '448', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4780', '西固区', '448', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4781', '嘉峪关市', '449', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4782', '永昌县', '450', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4783', '金川区', '450', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4784', '会宁县', '451', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4785', '平川区', '451', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4786', '景泰县', '451', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4787', '白银区', '451', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4788', '靖远县', '451', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4789', '张家川回族自治县', '452', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4790', '武山县', '452', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4791', '清水县', '452', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4792', '甘谷县', '452', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4793', '秦安县', '452', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4794', '秦州区', '452', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4795', '麦积区', '452', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4796', '凉州区', '453', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4797', '古浪县', '453', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4798', '天祝藏族自治县', '453', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4799', '民勤县', '453', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4800', '临泽县', '454', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4801', '山丹县', '454', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4802', '民乐县', '454', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4803', '甘州区', '454', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4804', '肃南裕固族自治县', '454', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4805', '高台县', '454', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4806', '华亭县', '455', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4807', '崆峒区', '455', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4808', '崇信县', '455', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4809', '庄浪县', '455', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4810', '泾川县', '455', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4811', '灵台县', '455', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4812', '静宁县', '455', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4813', '敦煌市', '456', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4814', '玉门市', '456', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4815', '瓜州县（原安西县）', '456', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4816', '肃北蒙古族自治县', '456', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4817', '肃州区', '456', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4818', '金塔县', '456', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4819', '阿克塞哈萨克族自治县', '456', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4820', '华池县', '457', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4821', '合水县', '457', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4822', '宁县', '457', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4823', '庆城县', '457', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4824', '正宁县', '457', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4825', '环县', '457', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4826', '西峰区', '457', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4827', '镇原县', '457', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4828', '临洮县', '458', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4829', '安定区', '458', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4830', '岷县', '458', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4831', '渭源县', '458', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4832', '漳县', '458', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4833', '通渭县', '458', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4834', '陇西县', '458', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4835', '两当县', '459', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4836', '宕昌县', '459', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4837', '康县', '459', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4838', '徽县', '459', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4839', '成县', '459', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4840', '文县', '459', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4841', '武都区', '459', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4842', '礼县', '459', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4843', '西和县', '459', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4844', '东乡族自治县', '460', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4845', '临夏县', '460', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4846', '临夏市', '460', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4847', '和政县', '460', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4848', '广河县', '460', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4849', '康乐县', '460', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4850', '永靖县', '460', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4851', '积石山保安族东乡族撒拉族自治县', '460', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4852', '临潭县', '461', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4853', '卓尼县', '461', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4854', '合作市', '461', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4855', '夏河县', '461', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4856', '玛曲县', '461', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4857', '碌曲县', '461', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4858', '舟曲县', '461', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4859', '迭部县', '461', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4860', '城东区', '462', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4861', '城中区', '462', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4862', '城北区', '462', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4863', '城西区', '462', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4864', '大通回族土族自治县', '462', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4865', '湟中县', '462', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4866', '湟源县', '462', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4867', '乐都县', '463', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4868', '互助土族自治县', '463', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4869', '化隆回族自治县', '463', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4870', '平安县', '463', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4871', '循化撒拉族自治县', '463', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4872', '民和回族土族自治县', '463', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4873', '刚察县', '464', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4874', '海晏县', '464', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4875', '祁连县', '464', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4876', '门源回族自治县', '464', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4877', '同仁县', '465', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4878', '尖扎县', '465', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4879', '河南蒙古族自治县', '465', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4880', '泽库县', '465', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4881', '共和县', '466', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4882', '兴海县', '466', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4883', '同德县', '466', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4884', '贵南县', '466', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4885', '贵德县', '466', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4886', '久治县', '467', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4887', '玛多县', '467', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4888', '玛沁县', '467', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4889', '班玛县', '467', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4890', '甘德县', '467', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4891', '达日县', '467', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4892', '囊谦县', '468', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4893', '曲麻莱县', '468', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4894', '杂多县', '468', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4895', '治多县', '468', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4896', '玉树县', '468', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4897', '称多县', '468', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4898', '乌兰县', '469', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4899', '冷湖行委', '469', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4900', '大柴旦行委', '469', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4901', '天峻县', '469', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4902', '德令哈市', '469', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4903', '格尔木市', '469', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4904', '茫崖行委', '469', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4905', '都兰县', '469', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4906', '兴庆区', '470', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4907', '永宁县', '470', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4908', '灵武市', '470', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4909', '西夏区', '470', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4910', '贺兰县', '470', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4911', '金凤区', '470', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4912', '大武口区', '471', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4913', '平罗县', '471', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4914', '惠农区', '471', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4915', '利通区', '472', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4916', '同心县', '472', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4917', '盐池县', '472', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4918', '青铜峡市', '472', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4919', '原州区', '473', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4920', '彭阳县', '473', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4921', '泾源县', '473', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4922', '西吉县', '473', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4923', '隆德县', '473', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4924', '中宁县', '474', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4925', '沙坡头区', '474', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4926', '海原县', '474', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4927', '东山区', '475', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4928', '乌鲁木齐县', '475', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4929', '天山区', '475', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4930', '头屯河区', '475', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4931', '新市区', '475', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4932', '水磨沟区', '475', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4933', '沙依巴克区', '475', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4934', '达坂城区', '475', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4935', '乌尔禾区', '476', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4936', '克拉玛依区', '476', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4937', '独山子区', '476', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4938', '白碱滩区', '476', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4939', '吐鲁番市', '477', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4940', '托克逊县', '477', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4941', '鄯善县', '477', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4942', '伊吾县', '478', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4943', '哈密市', '478', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4944', '巴里坤哈萨克自治县', '478', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4945', '吉木萨尔县', '479', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4946', '呼图壁县', '479', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4947', '奇台县', '479', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4948', '昌吉市', '479', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4949', '木垒哈萨克自治县', '479', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4950', '玛纳斯县', '479', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4951', '米泉市', '479', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4952', '阜康市', '479', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4953', '博乐市', '480', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4954', '温泉县', '480', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4955', '精河县', '480', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4956', '博湖县', '481', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4957', '和硕县', '481', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4958', '和静县', '481', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4959', '尉犁县', '481', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4960', '库尔勒市', '481', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4961', '焉耆回族自治县', '481', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4962', '若羌县', '481', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4963', '轮台县', '481', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4964', '乌什县', '482', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4965', '库车县', '482', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4966', '拜城县', '482', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4967', '新和县', '482', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4968', '柯坪县', '482', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4969', '沙雅县', '482', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4970', '温宿县', '482', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4971', '阿克苏市', '482', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4972', '阿瓦提县', '482', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4973', '乌恰县', '483', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4974', '阿克陶县', '483', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4975', '阿合奇县', '483', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4976', '阿图什市', '483', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4977', '伽师县', '484', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4978', '叶城县', '484', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4979', '喀什市', '484', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4980', '塔什库尔干塔吉克自治县', '484', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4981', '岳普湖县', '484', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4982', '巴楚县', '484', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4983', '泽普县', '484', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4984', '疏勒县', '484', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4985', '疏附县', '484', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4986', '英吉沙县', '484', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4987', '莎车县', '484', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4988', '麦盖提县', '484', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4989', '于田县', '485', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4990', '和田县', '485', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4991', '和田市', '485', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4992', '墨玉县', '485', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4993', '民丰县', '485', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4994', '洛浦县', '485', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4995', '皮山县', '485', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4996', '策勒县', '485', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4997', '伊宁县', '486', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4998', '伊宁市', '486', '0', '3', null);
INSERT INTO `pre_area` VALUES ('4999', '奎屯市', '486', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5000', '察布查尔锡伯自治县', '486', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5001', '尼勒克县', '486', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5002', '巩留县', '486', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5003', '新源县', '486', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5004', '昭苏县', '486', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5005', '特克斯县', '486', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5006', '霍城县', '486', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5007', '乌苏市', '487', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5008', '和布克赛尔蒙古自治县', '487', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5009', '塔城市', '487', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5010', '托里县', '487', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5011', '沙湾县', '487', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5012', '裕民县', '487', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5013', '额敏县', '487', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5014', '吉木乃县', '488', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5015', '哈巴河县', '488', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5016', '富蕴县', '488', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5017', '布尔津县', '488', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5018', '福海县', '488', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5019', '阿勒泰市', '488', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5020', '青河县', '488', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5021', '石河子市', '489', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5022', '阿拉尔市', '490', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5023', '图木舒克市', '491', '0', '3', null);
INSERT INTO `pre_area` VALUES ('5024', '五家渠市', '492', '0', '3', null);
INSERT INTO `pre_area` VALUES ('45055', '海外', '35', '0', '2', null);
INSERT INTO `pre_area` VALUES ('45077', '美国', '0', '0', '0', null);
INSERT INTO `pre_area` VALUES ('45078', '测试地址', '1298', '0', '0', null);
INSERT INTO `pre_area` VALUES ('45079', '111', '1151', '0', '4', null);
INSERT INTO `pre_area` VALUES ('45083', '1111', '55', '0', '4', null);
INSERT INTO `pre_area` VALUES ('45084', '555555', '45083', '0', '5', null);
INSERT INTO `pre_area` VALUES ('45085', '2222', '55', '0', '4', null);

-- ----------------------------
-- Table structure for `pre_article`
-- ----------------------------
DROP TABLE IF EXISTS `pre_article`;
CREATE TABLE `pre_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '索引id',
  `class_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `article_url` varchar(100) DEFAULT '' COMMENT '跳转链接',
  `article_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示，0为否，1为是，默认为1',
  `article_sort` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `article_title` varchar(100) DEFAULT '' COMMENT '标题',
  `article_content` text COMMENT '内容',
  `article_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  PRIMARY KEY (`article_id`),
  KEY `class_id` (`class_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_article
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_bank`
-- ----------------------------
DROP TABLE IF EXISTS `pre_bank`;
CREATE TABLE `pre_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` char(25) NOT NULL DEFAULT '' COMMENT '银行名字',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_bank
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_banner_template`
-- ----------------------------
DROP TABLE IF EXISTS `pre_banner_template`;
CREATE TABLE `pre_banner_template` (
  `tpl_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tpl_name` varchar(50) NOT NULL DEFAULT '' COMMENT '模板名称',
  `html` text COMMENT '模板html',
  `intro_text` varchar(500) DEFAULT '' COMMENT '说明文字',
  `intro_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '效果图片路径',
  PRIMARY KEY (`tpl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_banner_template
-- ----------------------------
INSERT INTO `pre_banner_template` VALUES ('1', '文字居中1', '<p style=\"width: 50%;margin:1.5rem auto;font-size: 2rem;height: 3rem;background: url(/static/web/img/bg1.png) repeat;background-size: 100% 100%;text-align: center;line-height:1.8;\">专题</p>', '', 'img-tit/tit1.png');
INSERT INTO `pre_banner_template` VALUES ('2', '文字居中2', '<div style=\"display: inline-block;width:100%;background#fff;height: 3rem;font-size: 2rem;text-align: center;line-height: 1.6;\">家居&nbsp;|<span style=\"font-size: 1.2rem;letter-spacing:1px;color: #aaa;padding-left: 5px;\">回家，放松身心</span></div>', '', 'img-tit/tit2.png');
INSERT INTO `pre_banner_template` VALUES ('3', '文字居左', '<div style=\"width: 100%;padding: 0 3%;text-align:left;color: #f00;font-size: 1.6rem;height: 2.8rem;line-height: 2;border-bottom: 1px solid #f0f0f0;box-sizing: border-box;-webkit-box-sizing: border-box;-moz-box-sizing: border-box;\">特色市场</div>', '', 'img-tit/tit4.png');
INSERT INTO `pre_banner_template` VALUES ('4', '文字+更多', '<div class=\"Tit5\" style=\"height: 2.8rem;border-bottom: 1px solid #f0f0f0;\">\r\n      <span style=\"background: url(/static/img/Tit5-bg.png) no-repeat left center;background-size: 16px auto;display: inline-block;vertical-align: middle;padding:5px 25px;float: left;margin-left: 3%;font-size: 1.4rem;color: #f00;\">掌上秒杀</span>\r\n      <a href=\"#\" style=\"float: right;padding-right: 3%;color: #999;background: url(/static/img/tit5-more-bg.png) no-repeat right center;background-size: 8px auto;padding-right: 16px;margin-right: 3%;line-height: 2;\">更多秒杀</a>\r\n   </div>', '', 'img-tit/tit8.png');
INSERT INTO `pre_banner_template` VALUES ('5', '图文居中1', '<div style=\"height: 2.8rem;text-align: center;background: #fff;line-height: 2.5;position: relative;\">\r\n      <span style=\"padding: 0 10px;color: #999;font-size: 1.5rem;position: relative;background: #fff;z-index:1;\">\r\n       <span style=\"background: url(/static/img/gray-text-img.png) no-repeat center center;background-size: 13px 13px;width: 13px;height: 13px;margin-right: 10px;display: inline-block;\"></span>今日福利\r\n      </span>\r\n     <p style=\"height: 1px;position: absolute;top: 50%;left: 0;background-color: #cbcbcb;width: 100%;\"></p>\r\n    </div>', '', 'img-tit/tit5.png');
INSERT INTO `pre_banner_template` VALUES ('6', '图文居中2', '<div class=\"titlebg component type39\" style=\"background: #fff;display:block;color:#051B28;font-size:14px;line-height:28px;height:28px;text-align:center\">\r\n      <span class=\"vline\" style=\"display:inline-block;border-bottom:1px solid #B4E1DC;width:34px;margin-bottom:5px;\"></span>\r\n      <img src=\"/static/img/tit6.png\" height=\"15px\" width=\"15px\" style=\"position: relative;top: 3px;\">\r\n      <span class=\"title\" style=\"color:#009F8A\">品牌资讯</span>\r\n     <span class=\"vline\" style=\"display:inline-block;border-bottom:1px solid #B4E1DC;width:34px;margin-bottom:5px;\"></span>\r\n    </div>', '', 'img-tit/tit9.png');
INSERT INTO `pre_banner_template` VALUES ('7', '图文居中3', '<div style=\"height: 2.8rem;text-align: center;\">\r\n     <span style=\"background: url(/static/img/tit3-bg.png) no-repeat center;background-size: 30px 30px;width: 30px;height:30px;display: inline-block;vertical-align: middle;\"></span>\r\n      <span style=\"color: #999;font-size: 1.5rem;padding-left: 10px;vertical-align: middle;\">进口好材料，温柔托住你的疲惫</span>\r\n    </div>', '', 'img-tit/tit6.png');
INSERT INTO `pre_banner_template` VALUES ('8', '图文居左', '<div style=\"height: 2.8rem;text-align:left;background: url(/static/img/red-bg.png) no-repeat 3% center;width: 100%;padding:0 3% 0 5%;box-sizing: border-box;-webkit-box-sizing: border-box;-moz-box-sizing: border-box;line-height: 2;font-size: 1.4rem;border-bottom: 1px solid #f0f0f0;color: #999;\">\r\n     家居日用\r\n    </div>', '', 'img-tit/tit7.png');
INSERT INTO `pre_banner_template` VALUES ('9', '查看更多', '<div style=\"margin:1.5rem 0;text-align: center;\"><a href=\"#\" style=\"margin: 0 auto;font-size: 1.8rem;text-align: center;line-height:1.8;background: url(/static/web/img/more.png) no-repeat right center;padding-right: 30px;background-size: 18px 18px;color: #666;\">查看更多</a></div>', '', 'img-tit/tit3.png');
INSERT INTO `pre_banner_template` VALUES ('10', '空白通栏', '<div style=\"background: #ccc;width: 100%;height: 2rem;\"></div>', '', 'img-tit/tit10.png');

-- ----------------------------
-- Table structure for `pre_basket`
-- ----------------------------
DROP TABLE IF EXISTS `pre_basket`;
CREATE TABLE `pre_basket` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `member_uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'id',
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'id',
  `goods_name` varchar(100) NOT NULL DEFAULT '',
  `goods_num` smallint(5) unsigned NOT NULL DEFAULT '1',
  `goods_image` varchar(100) NOT NULL DEFAULT '',
  `goods_price` float(10,2) NOT NULL DEFAULT '0.00',
  `spec_name` varchar(100) NOT NULL DEFAULT '' COMMENT '商品 规格逗号隔开的名称',
  `goods_common_id` int(11) NOT NULL DEFAULT '0' COMMENT 'spu id',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '物品添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sid_gid` (`member_uid`,`goods_id`) USING BTREE,
  KEY `member_uid` (`member_uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_basket
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_basket_nologin`
-- ----------------------------
DROP TABLE IF EXISTS `pre_basket_nologin`;
CREATE TABLE `pre_basket_nologin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sid` char(8) NOT NULL COMMENT 'id',
  `member_uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'id',
  `goods_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'id',
  `goods_name` varchar(100) NOT NULL,
  `goods_num` smallint(5) unsigned NOT NULL DEFAULT '1',
  `goods_image` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `spec_name` varchar(100) NOT NULL DEFAULT '' COMMENT '商品 规格逗号隔开的名称',
  `goods_common_id` int(11) NOT NULL COMMENT 'spu id',
  `add_time` int(10) unsigned NOT NULL COMMENT '物品添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sid_gid` (`sid`,`goods_id`) USING BTREE,
  KEY `member_uid` (`member_uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_basket_nologin
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_causes`
-- ----------------------------
DROP TABLE IF EXISTS `pre_causes`;
CREATE TABLE `pre_causes` (
  `causes_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `causes_name` char(20) NOT NULL,
  `clicknum` int(11) unsigned NOT NULL DEFAULT '0',
  `status` enum('1','2') DEFAULT '1',
  PRIMARY KEY (`causes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_causes
-- ----------------------------
INSERT INTO `pre_causes` VALUES ('1', '不能按时发货', '0', '1');
INSERT INTO `pre_causes` VALUES ('2', '认为是假货', '0', '1');
INSERT INTO `pre_causes` VALUES ('3', '质保期不符', '0', '1');
INSERT INTO `pre_causes` VALUES ('4', '商品破损、有污渍', '0', '1');
INSERT INTO `pre_causes` VALUES ('5', '效果不好不喜欢', '0', '1');

-- ----------------------------
-- Table structure for `pre_cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `pre_cms_article`;
CREATE TABLE `pre_cms_article` (
  `article_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `article_title` char(150) NOT NULL COMMENT '文章标题',
  `article_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章分类编号',
  `article_origin` char(50) NOT NULL DEFAULT '' COMMENT '文章来源',
  `article_origin_address` char(255) NOT NULL DEFAULT '' COMMENT '文章来源链接',
  `article_author` char(50) NOT NULL DEFAULT '' COMMENT '文章作者',
  `article_abstract` char(255) NOT NULL DEFAULT '' COMMENT '文章摘要',
  `article_content` text COMMENT '文章正文',
  `article_image` char(255) NOT NULL DEFAULT '' COMMENT '文章图片',
  `article_keyword` char(255) NOT NULL DEFAULT '' COMMENT '文章关键字',
  `article_link` char(255) NOT NULL DEFAULT '' COMMENT '相关文章',
  `article_goods` text NOT NULL COMMENT '相关商品',
  `article_start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章有效期开始时间',
  `article_end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章有效期结束时间',
  `article_publish_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章发布时间',
  `article_click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章点击量',
  `article_sort` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章排序0-255',
  `article_commend_flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章推荐标志0-未推荐，1-已推荐',
  `article_comment_flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文章是否允许评论1-允许，0-不允许',
  `article_verify_admin` char(50) DEFAULT NULL COMMENT '文章审核管理员',
  `article_verify_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章审核时间',
  `article_state` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1-草稿、2-待审核、3-已发布、4-回收站',
  `article_publisher_name` char(50) NOT NULL DEFAULT '' COMMENT '发布者用户名 ',
  `article_publisher_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布者编号',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文章类型1-管理员发布，2-用户投稿',
  `article_attachment_path` char(225) NOT NULL DEFAULT '' COMMENT '文章附件路径',
  `article_image_all` text NOT NULL COMMENT '文章全部图片',
  `article_modify_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章修改时间',
  `article_tag` char(255) NOT NULL DEFAULT '' COMMENT '文章标签',
  `article_comment_count` int(10) unsigned DEFAULT '0' COMMENT '文章评论数',
  `article_attitude_1` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章心情1',
  `article_attitude_2` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章心情2',
  `article_attitude_3` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章心情3',
  `article_attitude_4` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章心情4',
  `article_attitude_5` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章心情5',
  `article_attitude_6` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章心情6',
  `article_title_short` varchar(50) NOT NULL DEFAULT '' COMMENT '文章短标题',
  `article_attitude_flag` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '文章态度开关1-允许，0-不允许',
  `article_commend_image_flag` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '文章推荐标志(图文)',
  `article_share_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章分享数',
  `article_verify_reason` varchar(255) DEFAULT NULL COMMENT '审核失败原因',
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_cms_article
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_cms_article_class`
-- ----------------------------
DROP TABLE IF EXISTS `pre_cms_article_class`;
CREATE TABLE `pre_cms_article_class` (
  `class_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类编号 ',
  `class_name` char(50) NOT NULL COMMENT '分类名称',
  `class_sort` tinyint(1) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
  `class_code` char(20) NOT NULL DEFAULT '0' COMMENT '分类标识码',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_cms_article_class
-- ----------------------------
INSERT INTO `pre_cms_article_class` VALUES ('1', '帮助中心', '0', '1');

-- ----------------------------
-- Table structure for `pre_companylist`
-- ----------------------------
DROP TABLE IF EXISTS `pre_companylist`;
CREATE TABLE `pre_companylist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(56) NOT NULL DEFAULT '',
  `name` char(120) NOT NULL DEFAULT '',
  `url` char(225) NOT NULL DEFAULT '',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_companylist
-- ----------------------------
INSERT INTO `pre_companylist` VALUES ('1', 'AJ', '安捷快递', '', '1', '0');
INSERT INTO `pre_companylist` VALUES ('2', 'ANE', '安能物流', '', '1', '0');
INSERT INTO `pre_companylist` VALUES ('3', 'AXD', '安信达快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('4', 'BQXHM', '北青小红帽', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('5', 'BFDF', '百福东方', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('6', 'BTWL', '百世快运', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('7', 'CCES', 'CCES快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('8', 'CITY100', '城市100', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('9', 'COE', 'COE东方快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('10', 'CSCY', '长沙创一', '', '1', '0');
INSERT INTO `pre_companylist` VALUES ('11', 'DBL', '德邦', '', '1', '0');
INSERT INTO `pre_companylist` VALUES ('12', 'DSWL', 'D速物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('13', 'DTWL', '大田物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('14', 'EMS', 'EMS', '', '1', '0');
INSERT INTO `pre_companylist` VALUES ('15', 'FAST', '快捷速递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('16', 'FEDEX', 'FEDEX联邦(国内件）', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('17', 'FEDEX_GJ', 'FEDEX联邦(国际件）', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('18', 'FKD', '飞康达', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('19', 'GDEMS', '广东邮政', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('20', 'GSD', '共速达', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('21', 'GTO', '国通快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('22', 'GTSD', '高铁速递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('23', 'HFWL', '汇丰物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('24', 'HHTT', '天天快递', '', '1', '0');
INSERT INTO `pre_companylist` VALUES ('25', 'HLWL', '恒路物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('26', 'HOAU', '天地华宇', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('27', 'hq568', '华强物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('28', 'HTKY', '百世快递', '', '1', '0');
INSERT INTO `pre_companylist` VALUES ('29', 'HXLWL', '华夏龙物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('30', 'HYLSD', '好来运快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('31', 'JGSD', '京广速递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('32', 'JIUYE', '九曳供应链', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('33', 'JJKY', '佳吉快运', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('34', 'JLDT', '嘉里物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('35', 'JTKD', '捷特快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('36', 'JXD', '急先达', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('37', 'JYKD', '晋越快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('38', 'JYM', '加运美', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('39', 'JYWL', '佳怡物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('40', 'KYWL', '跨越物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('41', 'LB', '龙邦快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('42', 'LHT', '联昊通速递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('43', 'MHKD', '民航快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('44', 'MLWL', '明亮物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('45', 'NEDA', '能达速递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('46', 'PADTF', '平安达腾飞快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('47', 'QCKD', '全晨快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('48', 'QFKD', '全峰快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('49', 'QRT', '全日通快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('50', 'RFD', '如风达', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('51', 'SAD', '赛澳递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('52', 'SAWL', '圣安物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('53', 'SBWL', '盛邦物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('54', 'SDWL', '上大物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('55', 'SF', '顺丰快递', '', '1', '0');
INSERT INTO `pre_companylist` VALUES ('56', 'SFWL', '盛丰物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('57', 'SHWL', '盛辉物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('58', 'ST', '速通物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('59', 'STO', '申通快递', '', '1', '0');
INSERT INTO `pre_companylist` VALUES ('60', 'STWL', '速腾快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('61', 'SURE', '速尔快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('62', 'TSSTO', '唐山申通', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('63', 'UAPEX', '全一快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('64', 'UC', '优速快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('65', 'WJWL', '万家物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('66', 'WXWL', '万象物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('67', 'XBWL', '新邦物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('68', 'XFEX', '信丰快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('69', 'XYT', '希优特', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('70', 'XJ', '新杰物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('71', 'YADEX', '源安达快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('72', 'YCWL', '远成物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('73', 'YD', '韵达快递', '', '1', '0');
INSERT INTO `pre_companylist` VALUES ('74', 'YDH', '义达国际物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('75', 'YFEX', '越丰物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('76', 'YFHEX', '原飞航物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('77', 'YFSD', '亚风快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('78', 'YTKD', '运通快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('79', 'YTO', '圆通速递', '', '1', '0');
INSERT INTO `pre_companylist` VALUES ('80', 'YXKD', '亿翔快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('81', 'YZPY', '邮政平邮/小包', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('82', 'ZENY', '增益快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('83', 'ZHQKD', '汇强快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('84', 'ZJS', '宅急送', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('85', 'ZTE', '众通快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('86', 'ZTKY', '中铁快运', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('87', 'ZTO', '中通速递', '', '1', '0');
INSERT INTO `pre_companylist` VALUES ('88', 'ZTWL', '中铁物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('89', 'ZYWL', '中邮物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('90', 'AMAZON', '亚马逊物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('91', 'SUBIDA', '速必达物流', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('92', 'RFEX', '瑞丰速递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('93', 'QUICK', '快客快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('94', 'CJKD', '城际快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('95', 'CNPEX', 'CNPEX中邮快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('96', 'HOTSCM', '鸿桥供应链', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('97', 'HPTEX', '海派通物流公司', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('98', 'AYCA', '澳邮专线', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('99', 'PANEX', '泛捷快递', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('100', 'PCA', 'PCA Express', '', '0', '0');
INSERT INTO `pre_companylist` VALUES ('101', 'UEQ', 'UEQ Express', '', '0', '0');

-- ----------------------------
-- Table structure for `pre_coupons`
-- ----------------------------
DROP TABLE IF EXISTS `pre_coupons`;
CREATE TABLE `pre_coupons` (
  `coupon_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL COMMENT '商家ID',
  `coupon_name` varchar(200) NOT NULL COMMENT '优惠卷名称',
  `coupon_type` tinyint(4) NOT NULL COMMENT '优惠卷类型  1：满减  2：折扣',
  `coupon_money` int(11) DEFAULT NULL COMMENT '优惠卷吗面额',
  `discount` decimal(2,1) DEFAULT NULL COMMENT '折扣',
  `spend_money` int(11) NOT NULL COMMENT '最低消费金额',
  `coupon_des` text COMMENT '优惠活动描述',
  `send_num` int(11) NOT NULL DEFAULT '0' COMMENT '发放优惠卷数量',
  `receive_num` int(11) NOT NULL DEFAULT '0' COMMENT '领取数量',
  `valid_start_time` int(20) unsigned NOT NULL COMMENT '活动开始时间',
  `valid_end_time` int(20) unsigned NOT NULL COMMENT '活动结束时间',
  `create_time` int(20) unsigned NOT NULL,
  `status` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_coupons
-- ----------------------------
INSERT INTO `pre_coupons` VALUES ('49', '29', '测试用立减', '1', '5', '0.0', '100', null, '20', '1', '1545062400', '1546185600', '1545202207', '1');
INSERT INTO `pre_coupons` VALUES ('50', '29', '测试折扣', '2', '0', '8.8', '200', null, '9', '1', '1545062400', '1545148800', '1545048273', '1');
INSERT INTO `pre_coupons` VALUES ('51', '26', '测试用立减', '1', '100', '0.0', '10000', null, '4', '1', '1545062400', '1545580800', '1545048314', '1');
INSERT INTO `pre_coupons` VALUES ('52', '26', '测试折扣', '2', '0', '7.9', '500', null, '4', '1', '1545062400', '1546185600', '1545048361', '1');

-- ----------------------------
-- Table structure for `pre_day_count`
-- ----------------------------
DROP TABLE IF EXISTS `pre_day_count`;
CREATE TABLE `pre_day_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `count_date` int(8) NOT NULL DEFAULT '0' COMMENT '统计日期',
  `stime` int(10) NOT NULL DEFAULT '0' COMMENT '统计开始时间',
  `etime` int(10) NOT NULL DEFAULT '0' COMMENT '统计结束时间',
  `new_member_num` int(11) NOT NULL DEFAULT '0' COMMENT '新会员数',
  `order_num` int(11) NOT NULL DEFAULT '0' COMMENT '订单数',
  `order_amount` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `sell_goods_num` int(11) NOT NULL DEFAULT '0' COMMENT '商品销量',
  `order_pay_num` mediumint(5) NOT NULL DEFAULT '0' COMMENT '订单支付笔数',
  `order_pay_amount` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单支付总额',
  `pay_member_num` int(11) NOT NULL DEFAULT '0' COMMENT '订单支付人数',
  `per_member_pay` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '客单价',
  `count_year` mediumint(4) NOT NULL DEFAULT '0' COMMENT '年',
  `count_month` smallint(2) NOT NULL DEFAULT '0' COMMENT '月',
  PRIMARY KEY (`id`),
  UNIQUE KEY `count_date` (`count_date`) USING BTREE,
  KEY `etime` (`etime`) USING BTREE,
  KEY `stime` (`stime`) USING BTREE,
  KEY `count_date_2` (`count_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_day_count
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_evaluate_goods`
-- ----------------------------
DROP TABLE IF EXISTS `pre_evaluate_goods`;
CREATE TABLE `pre_evaluate_goods` (
  `geval_id` int(11) NOT NULL AUTO_INCREMENT,
  `geval_orderid` int(11) NOT NULL COMMENT '订单表自增ID',
  `geval_orderno` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '订单编号',
  `geval_ordergoodsid` int(11) NOT NULL COMMENT '订单商品表编号',
  `geval_goodsid` int(11) NOT NULL COMMENT '商品表编号',
  `geval_goodsname` char(100) NOT NULL COMMENT '商品名称',
  `geval_goodsprice` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `geval_goodsimage` char(255) NOT NULL DEFAULT '' COMMENT '商品图片',
  `geval_scores` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-5分',
  `geval_content` char(255) NOT NULL DEFAULT '' COMMENT '信誉评价内容',
  `geval_isanonymous` tinyint(1) NOT NULL DEFAULT '0' COMMENT '00表示不是 1表示是匿名评价',
  `geval_addtime` int(11) NOT NULL DEFAULT '0' COMMENT '评价时间',
  `geval_storeid` int(11) NOT NULL DEFAULT '0' COMMENT '店铺编号',
  `geval_storename` char(100) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `geval_frommemberid` int(11) NOT NULL COMMENT '评价人编号',
  `geval_frommembername` char(100) NOT NULL DEFAULT '' COMMENT '评价人名称',
  `geval_explain` char(255) NOT NULL DEFAULT '' COMMENT '解释内容',
  `geval_image` char(255) NOT NULL DEFAULT '' COMMENT '晒单图片',
  `geval_content_again` char(255) NOT NULL DEFAULT '' COMMENT '追加评价内容',
  `geval_addtime_again` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '追加评价时间',
  `geval_image_again` char(255) NOT NULL DEFAULT '' COMMENT '追加评价图片',
  `geval_explain_again` char(255) NOT NULL DEFAULT '' COMMENT '追加解释内容',
  `goods_common_id` int(11) NOT NULL COMMENT 'spu id',
  `goods_spec` char(255) NOT NULL DEFAULT '' COMMENT '商品规格',
  PRIMARY KEY (`geval_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_evaluate_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_express`
-- ----------------------------
DROP TABLE IF EXISTS `pre_express`;
CREATE TABLE `pre_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(10) NOT NULL DEFAULT '' COMMENT '快递公司编码',
  `no` char(20) NOT NULL DEFAULT '' COMMENT '快递单号',
  `data` text NOT NULL COMMENT '物流信息',
  `dateline` int(10) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`,`no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_express
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_favorites`
-- ----------------------------
DROP TABLE IF EXISTS `pre_favorites`;
CREATE TABLE `pre_favorites` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `member_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `member_name` char(150) NOT NULL DEFAULT '' COMMENT '会员名',
  `fav_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品或店铺ID',
  `fav_type` char(5) NOT NULL DEFAULT 'goods' COMMENT '类型:goods为商品,store为店铺,默认为商品',
  `fav_time` int(10) unsigned NOT NULL COMMENT '收藏时间',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺ID',
  `store_name` char(255) NOT NULL DEFAULT '' COMMENT '店铺名称',
  `sc_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '店铺分类ID',
  `goods_name` char(150) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_image` char(255) NOT NULL DEFAULT '' COMMENT '商品图片',
  `gc_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品分类ID',
  `log_price` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品收藏时价格',
  `log_msg` char(255) DEFAULT NULL COMMENT '收藏备注',
  PRIMARY KEY (`log_id`),
  KEY `member_id` (`member_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_favorites
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `pre_feedback`;
CREATE TABLE `pre_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` int(10) unsigned NOT NULL,
  `member_name` varchar(50) NOT NULL DEFAULT '0',
  `member_phone` varchar(50) NOT NULL DEFAULT '0',
  `ftime` int(10) unsigned NOT NULL DEFAULT '0',
  `content` char(255) NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `username` char(150) NOT NULL DEFAULT '',
  `ctime` int(10) unsigned NOT NULL DEFAULT '0',
  `instruction` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_foot_print`
-- ----------------------------
DROP TABLE IF EXISTS `pre_foot_print`;
CREATE TABLE `pre_foot_print` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `member_id` int(10) unsigned NOT NULL COMMENT '会员ID',
  `member_name` char(150) NOT NULL COMMENT '会员名',
  `common_goods_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品common_goods_id',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `goods_name` char(150) NOT NULL DEFAULT '' COMMENT '商品名称',
  `goods_image` char(255) NOT NULL COMMENT '商品图片',
  `gc_id` int(10) unsigned DEFAULT '0' COMMENT '商品分类ID',
  `log_price` float(10,2) DEFAULT '0.00' COMMENT '商品价格',
  `log_msg` char(255) DEFAULT NULL COMMENT '足迹备注',
  PRIMARY KEY (`log_id`),
  UNIQUE KEY `member_id_common_goods_id` (`member_id`,`common_goods_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_foot_print
-- ----------------------------
INSERT INTO `pre_foot_print` VALUES ('4', '2', '13436200979', '2', '1544100605', '全棉进口埃及长绒棉浴巾', 'Common/2016-09-07/57cfab7d15902.png', '0', '99.00', null);
INSERT INTO `pre_foot_print` VALUES ('5', '2', '13436200979', '4', '1544100677', '羊毛圈绒枪刺地毯', 'Common/2016-09-07/57cfc22bb3eee.png', '0', '1269.00', null);

-- ----------------------------
-- Table structure for `pre_generate`
-- ----------------------------
DROP TABLE IF EXISTS `pre_generate`;
CREATE TABLE `pre_generate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_generate
-- ----------------------------
INSERT INTO `pre_generate` VALUES ('1');
INSERT INTO `pre_generate` VALUES ('2');
INSERT INTO `pre_generate` VALUES ('3');
INSERT INTO `pre_generate` VALUES ('4');
INSERT INTO `pre_generate` VALUES ('5');
INSERT INTO `pre_generate` VALUES ('6');

-- ----------------------------
-- Table structure for `pre_gift`
-- ----------------------------
DROP TABLE IF EXISTS `pre_gift`;
CREATE TABLE `pre_gift` (
  `gift_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '礼品id',
  `gift_name` varchar(100) NOT NULL DEFAULT '' COMMENT '礼品名称',
  `gift_image` varchar(255) NOT NULL DEFAULT '' COMMENT '礼品图片',
  `gift_storage` mediumint(5) unsigned NOT NULL DEFAULT '0' COMMENT '礼品库存',
  `gift_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '礼品价格',
  `gift_state` tinyint(1) DEFAULT '1' COMMENT '礼品状态1正常  0 被删除',
  `credits_exchange` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1积分兑换   0 不允许',
  `gift_points` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '兑换所需要积分数量',
  `limit_num` smallint(3) NOT NULL DEFAULT '0' COMMENT '每人限兑N件',
  `start_time` int(10) NOT NULL DEFAULT '0' COMMENT '允许兑换开始时间',
  `end_time` int(10) NOT NULL DEFAULT '0' COMMENT '允许兑换结束时间',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(10) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `goods_common_id` int(10) NOT NULL DEFAULT '0' COMMENT '关联商品id',
  `goods_name` varchar(200) NOT NULL DEFAULT '' COMMENT '关联商品的商品名称',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序值',
  `gift_description` text COMMENT '礼品介绍',
  PRIMARY KEY (`gift_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_gift
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_goods`
-- ----------------------------
DROP TABLE IF EXISTS `pre_goods`;
CREATE TABLE `pre_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id skuid',
  `goods_common_id` int(11) NOT NULL COMMENT 'spu id',
  `goods_name` varchar(255) NOT NULL,
  `spec_name` varchar(100) NOT NULL DEFAULT '' COMMENT '商品 规格逗号隔开的名称',
  `goods_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '商品状态  0 下架 1 上架   3 草稿   4 回收站',
  `gc_id` int(11) NOT NULL DEFAULT '0' COMMENT 'id',
  `gc_id_1` int(11) NOT NULL DEFAULT '0' COMMENT 'id',
  `gc_id_2` int(11) NOT NULL DEFAULT '0' COMMENT 'id',
  `gc_id_3` int(11) NOT NULL DEFAULT '0' COMMENT 'id',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_storage` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `goods_image` char(255) NOT NULL DEFAULT '' COMMENT 'sku',
  `goods_barcode` char(255) NOT NULL DEFAULT '',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `update_time` int(10) NOT NULL DEFAULT '0',
  `spec_value_id_key` char(255) NOT NULL DEFAULT '' COMMENT 'id',
  `goods_spec` char(255) NOT NULL DEFAULT '' COMMENT '  id',
  `freight_type` enum('fixed','num','weight','volume') NOT NULL DEFAULT 'fixed' COMMENT '运费类型 固定运费 按件数 按重量 按体积',
  `freight` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '商品运费 起步运费',
  `freight_step_num` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '运费 步长  ',
  `freight_step_fee` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '运费每步长增加额度',
  `goods_weight` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '商品重量单位kg',
  `goods_volume` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '商品体积单位立方米',
  `sum_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '订单运费计算方式 1 累加 2 只计最大',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_goods
-- ----------------------------
INSERT INTO `pre_goods` VALUES ('1', '1', '典雅美式全棉刺绣靠枕', '太阳', '1', '2', '1', '2', '0', '59.00', '98', 'Common/2016-09-07/57cfaa9434c32.png', '', '1473227451', '1473227554', '4', 'a:1:{i:3;s:1:\"4\";}', 'fixed', '5.00', '0.00', '0.00', '0.00', '0.00', '1');
INSERT INTO `pre_goods` VALUES ('2', '1', '典雅美式全棉刺绣靠枕', '紫荆', '1', '2', '1', '2', '0', '59.00', '99', 'Common/2016-09-07/57cfaaa676aec.png', '', '1473227451', '1473227554', '5', 'a:1:{i:3;s:1:\"5\";}', 'fixed', '5.00', '0.00', '0.00', '0.00', '0.00', '1');
INSERT INTO `pre_goods` VALUES ('3', '1', '典雅美式全棉刺绣靠枕', '铃兰', '1', '2', '1', '2', '0', '59.00', '99', 'Common/2016-09-07/57cfaab2e6540.png', '', '1473227451', '1473227554', '6', 'a:1:{i:3;s:1:\"6\";}', 'fixed', '5.00', '0.00', '0.00', '0.00', '0.00', '1');
INSERT INTO `pre_goods` VALUES ('4', '1', '典雅美式全棉刺绣靠枕', '马蹄', '1', '2', '1', '2', '0', '59.00', '99', 'Common/2016-09-07/57cfaab6c1f84.png', '', '1473227451', '1473227554', '7', 'a:1:{i:3;s:1:\"7\";}', 'fixed', '5.00', '0.00', '0.00', '0.00', '0.00', '1');
INSERT INTO `pre_goods` VALUES ('5', '2', '全棉进口埃及长绒棉浴巾', '棕色', '1', '3', '1', '3', '0', '99.00', '99', 'Common/2016-09-07/57cfabe655079.png', '', '1473227760', '1473227818', '8', 'a:1:{i:1;s:1:\"8\";}', 'fixed', '2.00', '0.00', '0.00', '0.00', '0.00', '1');
INSERT INTO `pre_goods` VALUES ('6', '2', '全棉进口埃及长绒棉浴巾', '米色', '1', '3', '1', '3', '0', '99.00', '96', 'Common/2016-09-07/57cfabeb14a9a.png', '', '1473227760', '1473227818', '9', 'a:1:{i:1;s:1:\"9\";}', 'fixed', '2.00', '0.00', '0.00', '0.00', '0.00', '1');
INSERT INTO `pre_goods` VALUES ('7', '2', '全棉进口埃及长绒棉浴巾', '粉色', '1', '3', '1', '3', '0', '99.00', '99', 'Common/2016-09-07/57cfabee71ba9.png', '', '1473227760', '1473227818', '10', 'a:1:{i:1;s:2:\"10\";}', 'fixed', '2.00', '0.00', '0.00', '0.00', '0.00', '1');
INSERT INTO `pre_goods` VALUES ('8', '3', '居家棉麻涤内衣收纳盒', '十五格', '1', '4', '1', '4', '0', '45.00', '99', 'Common/2016-09-07/57cfac800417c.png', '', '1473227970', '1473228011', '11', 'a:1:{i:3;s:2:\"11\";}', 'fixed', '0.00', '0.00', '0.00', '0.00', '0.00', '1');
INSERT INTO `pre_goods` VALUES ('9', '4', '日式天然蔺草地垫', '180*180', '1', '5', '1', '5', '0', '459.00', '997', 'Common/2016-09-07/57cfc22bb3eee.png', '', '1473233529', '1473233620', '12', 'a:1:{i:2;s:2:\"12\";}', 'fixed', '10.00', '0.00', '0.00', '0.00', '0.00', '1');

-- ----------------------------
-- Table structure for `pre_goods_category`
-- ----------------------------
DROP TABLE IF EXISTS `pre_goods_category`;
CREATE TABLE `pre_goods_category` (
  `gc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品分类id',
  `gc_name` varchar(80) NOT NULL COMMENT '商品分类名称',
  `gc_parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '父级分类id',
  `gc_level` tinyint(1) NOT NULL DEFAULT '1' COMMENT '分类层级 最小为1最大为3',
  `is_leaf` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否是叶子节点 1为是 0为否',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示1为显示 0为不显示',
  `listorder` int(11) NOT NULL DEFAULT '0' COMMENT '排序值  倒叙',
  `gc_image` char(255) DEFAULT NULL COMMENT '分类logo',
  `add_admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '添加者id',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_admin_id` int(11) NOT NULL DEFAULT '0' COMMENT '最近一次修改人的时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '最近一次修改时间',
  `desc` char(255) NOT NULL DEFAULT '' COMMENT '分类描述',
  `update_mark` varchar(255) DEFAULT NULL COMMENT '被更新备注',
  PRIMARY KEY (`gc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_goods_category
-- ----------------------------
INSERT INTO `pre_goods_category` VALUES ('1', '居家', '0', '1', '0', '1', '99', '', '1', '1473219864', '1', '1473219933', '回家，放松身心', '下面增加子分类被更改');
INSERT INTO `pre_goods_category` VALUES ('2', '家居', '1', '2', '1', '1', '98', 'Common/2016-09-07/57cf8d5ba214b.png', '1', '1473219933', '0', '0', '进口好材料，温柔托住你的疲惫', null);
INSERT INTO `pre_goods_category` VALUES ('3', '毛巾', '1', '2', '1', '1', '97', 'Common/2016-09-07/57cf8d922f2bc.png', '1', '1473219988', '0', '0', '出口日本品质标准，早晨的第一个清爽体验', null);
INSERT INTO `pre_goods_category` VALUES ('4', '收纳', '1', '2', '1', '1', '96', 'Common/2016-09-07/57cf8dbb948ea.png', '1', '1473220029', '0', '0', '抗菌防霉，便利拆卸，小空间的大智慧', null);
INSERT INTO `pre_goods_category` VALUES ('5', '地毯', '1', '2', '1', '1', '95', 'Common/2016-09-07/57cf8e0e5f9ab.png', '1', '1473220111', '0', '0', '让自然界中的灵感，走进居室生活', null);

-- ----------------------------
-- Table structure for `pre_goods_common`
-- ----------------------------
DROP TABLE IF EXISTS `pre_goods_common`;
CREATE TABLE `pre_goods_common` (
  `goods_common_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'spu  id',
  `goods_name` char(255) NOT NULL,
  `goods_price` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `goods_jingle` char(255) NOT NULL DEFAULT '',
  `gc_id` int(11) NOT NULL COMMENT 'id',
  `gc_id_1` int(11) NOT NULL DEFAULT '0' COMMENT 'id',
  `gc_id_2` int(11) NOT NULL DEFAULT '0' COMMENT 'id',
  `gc_id_3` int(11) NOT NULL DEFAULT '0' COMMENT 'id',
  `goods_detail` text NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  `goods_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '  0  1    3    4 ',
  `goods_image` char(255) DEFAULT NULL COMMENT ' spu',
  `goods_list` varchar(1000) NOT NULL DEFAULT '',
  `spec` varchar(1000) DEFAULT NULL,
  `freight_type` enum('fixed','num','weight','volume') NOT NULL DEFAULT 'fixed' COMMENT '运费类型 固定运费 按件数 按重量 按体积',
  `freight` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '商品运费 起步运费',
  `freight_step_num` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '运费 步长  ',
  `freight_step_fee` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '运费每步长增加额度',
  `goods_weight` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '商品重量单位kg',
  `goods_volume` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '商品体积单位立方米',
  `sum_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '订单运费计算方式 1 累加 2 只计最大',
  `view_number` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  PRIMARY KEY (`goods_common_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_goods_common
-- ----------------------------
INSERT INTO `pre_goods_common` VALUES ('1', '典雅美式全棉刺绣靠枕', '59.00', '典雅毛线绣，精致工艺', '2', '1', '2', '0', '&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cf90cd36299.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cf90cd43c7e.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cf90cd65cda.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cf90cd67e16.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cf90cd743dc.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1473220825', '1473227554', '1', 'Common/2016-09-07/57cf9099a2a39.png', '', 'a:1:{i:3;a:4:{i:0;s:1:\"4\";i:1;s:1:\"5\";i:2;s:1:\"6\";i:3;s:1:\"7\";}}', 'fixed', '5.00', '0.00', '0.00', '0.00', '0.00', '1', '7');
INSERT INTO `pre_goods_common` VALUES ('2', '全棉进口埃及长绒棉浴巾', '99.00', '加大加厚埃及棉', '3', '1', '3', '0', '&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfaba76bc1c.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfaba772463.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfaba774c3f.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfaba78a31b.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfaba79c7fb.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfaba7aa4ba.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfaba7d01d6.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1473227692', '1473227818', '1', 'Common/2016-09-07/57cfab7d15902.png', '', 'a:1:{i:1;a:3:{i:0;s:1:\"8\";i:1;s:1:\"9\";i:2;s:2:\"10\";}}', 'fixed', '2.00', '0.00', '0.00', '0.00', '0.00', '1', '2');
INSERT INTO `pre_goods_common` VALUES ('3', '居家棉麻涤内衣收纳盒', '45.00', '生活，从规整身边的小物开始', '4', '1', '4', '0', '&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfacac315b2.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfacaca4dff.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfacacace4d.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfacace979f.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfacad5cb8b.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1473227955', '1473228011', '1', 'Common/2016-09-07/57cfac800417c.png', '', 'a:1:{i:3;a:1:{i:0;s:2:\"11\";}}', 'fixed', '0.00', '0.00', '0.00', '0.00', '0.00', '1', '0');
INSERT INTO `pre_goods_common` VALUES ('4', '羊毛圈绒枪刺地毯', '1269.00', '印度进口，手工枪刺，简约百搭', '5', '1', '5', '0', '&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfc25a1de3b.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfc25a35c10.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfc25a69aef.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfc25a86f47.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfc25acfcbe.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=\\&quot;http://shopdz.shopdz.cn/data/Attach/Common/2016-09-07/57cfc25ae7090.jpg\\&quot; style=\\&quot;\\&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1473233514', '1473233672', '1', 'Common/2016-09-07/57cfc22bb3eee.png', '', 'a:1:{i:2;a:1:{i:0;s:2:\"12\";}}', 'fixed', '10.00', '0.00', '0.00', '0.00', '0.00', '1', '3');

-- ----------------------------
-- Table structure for `pre_goods_images`
-- ----------------------------
DROP TABLE IF EXISTS `pre_goods_images`;
CREATE TABLE `pre_goods_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `goods_common_id` int(11) NOT NULL DEFAULT '0' COMMENT 'spu id',
  `image_url` varchar(255) NOT NULL DEFAULT '',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `listorder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_goods_images
-- ----------------------------
INSERT INTO `pre_goods_images` VALUES ('21', '1', 'Common/2016-09-07/57cf9099a2a39.png', '1', '0');
INSERT INTO `pre_goods_images` VALUES ('22', '1', 'Common/2016-09-07/57cf90a2a2ba2.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('23', '1', 'Common/2016-09-07/57cf909f0eea0.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('24', '1', 'Common/2016-09-07/57cf90ad60b47.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('25', '1', 'Common/2016-09-07/57cf90a8b1ecb.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('26', '2', 'Common/2016-09-07/57cfab7d15902.png', '1', '0');
INSERT INTO `pre_goods_images` VALUES ('27', '2', 'Common/2016-09-07/57cfab834bc8c.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('28', '2', 'Common/2016-09-07/57cfab876a3e3.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('29', '2', 'Common/2016-09-07/57cfab8aaa9ae.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('30', '2', 'Common/2016-09-07/57cfab8f50feb.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('31', '3', 'Common/2016-09-07/57cfac800417c.png', '1', '0');
INSERT INTO `pre_goods_images` VALUES ('32', '3', 'Common/2016-09-07/57cfac86dc0d0.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('33', '3', 'Common/2016-09-07/57cfac89441ba.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('34', '3', 'Common/2016-09-07/57cfac8c67f3b.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('35', '3', 'Common/2016-09-07/57cfac9452039.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('41', '4', 'Common/2016-09-07/57cfc22bb3eee.png', '1', '0');
INSERT INTO `pre_goods_images` VALUES ('42', '4', 'Common/2016-09-07/57cfc2335235c.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('43', '4', 'Common/2016-09-07/57cfc23749af0.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('44', '4', 'Common/2016-09-07/57cfc23a8f388.jpg', '0', '0');
INSERT INTO `pre_goods_images` VALUES ('45', '4', 'Common/2016-09-07/57cfc23ec6f45.jpg', '0', '0');

-- ----------------------------
-- Table structure for `pre_goods_param`
-- ----------------------------
DROP TABLE IF EXISTS `pre_goods_param`;
CREATE TABLE `pre_goods_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键自增id',
  `goods_common_id` int(111) NOT NULL DEFAULT '0' COMMENT '商品spuid',
  `param_name` varchar(50) NOT NULL DEFAULT '' COMMENT '参数名',
  `param_value` varchar(150) NOT NULL DEFAULT '' COMMENT '参数值',
  `listorder` int(11) NOT NULL DEFAULT '0' COMMENT '排序值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `goods_common_id` (`goods_common_id`,`param_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_goods_param
-- ----------------------------
INSERT INTO `pre_goods_param` VALUES ('1', '1', '尺寸', '45cm*45cm', '99');
INSERT INTO `pre_goods_param` VALUES ('2', '1', '面料成份', '100%全棉', '98');
INSERT INTO `pre_goods_param` VALUES ('3', '1', '内芯面料', '100%全棉', '97');
INSERT INTO `pre_goods_param` VALUES ('4', '1', '填充物', '100%聚酯纤维', '96');
INSERT INTO `pre_goods_param` VALUES ('5', '1', '重量', '470g（内芯）', '95');
INSERT INTO `pre_goods_param` VALUES ('6', '2', '尺寸', '78*150cm', '99');
INSERT INTO `pre_goods_param` VALUES ('7', '2', '重量', '700g', '98');
INSERT INTO `pre_goods_param` VALUES ('8', '2', '材质', '100%棉', '97');
INSERT INTO `pre_goods_param` VALUES ('9', '3', '面料', '棉26%麻16%涤纶58%', '99');
INSERT INTO `pre_goods_param` VALUES ('10', '3', '产地', '中国福建', '98');
INSERT INTO `pre_goods_param` VALUES ('11', '4', '顶面材料', '蔺草', '99');
INSERT INTO `pre_goods_param` VALUES ('12', '4', '内芯填充', '海绵', '98');
INSERT INTO `pre_goods_param` VALUES ('13', '4', '底面材料', '无纺布', '97');
INSERT INTO `pre_goods_param` VALUES ('14', '4', '边带材料', '100%棉', '96');

-- ----------------------------
-- Table structure for `pre_goods_spec`
-- ----------------------------
DROP TABLE IF EXISTS `pre_goods_spec`;
CREATE TABLE `pre_goods_spec` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '记录id',
  `goods_common_id` int(11) NOT NULL DEFAULT '0' COMMENT 'spu  id',
  `spec_id` int(11) NOT NULL DEFAULT '0' COMMENT '规格id',
  `spec_value_id` int(11) NOT NULL DEFAULT '0' COMMENT '规格值id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_goods_spec
-- ----------------------------
INSERT INTO `pre_goods_spec` VALUES ('1', '1', '3', '4');
INSERT INTO `pre_goods_spec` VALUES ('2', '1', '3', '5');
INSERT INTO `pre_goods_spec` VALUES ('3', '1', '3', '6');
INSERT INTO `pre_goods_spec` VALUES ('4', '1', '3', '7');
INSERT INTO `pre_goods_spec` VALUES ('5', '2', '1', '8');
INSERT INTO `pre_goods_spec` VALUES ('6', '2', '1', '9');
INSERT INTO `pre_goods_spec` VALUES ('7', '2', '1', '10');
INSERT INTO `pre_goods_spec` VALUES ('8', '3', '3', '11');
INSERT INTO `pre_goods_spec` VALUES ('9', '4', '2', '12');

-- ----------------------------
-- Table structure for `pre_member`
-- ----------------------------
DROP TABLE IF EXISTS `pre_member`;
CREATE TABLE `pre_member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员id',
  `member_username` char(150) NOT NULL DEFAULT '' COMMENT '登录账号',
  `member_mobile` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '手机号',
  `member_truename` char(150) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `member_avatar` char(255) NOT NULL DEFAULT '' COMMENT '会员头像',
  `member_sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '会员性别',
  `member_birthday` date NOT NULL DEFAULT '0000-00-00' COMMENT '生日',
  `member_passwd` varchar(32) DEFAULT '' COMMENT '会员密码',
  `salt` char(32) NOT NULL DEFAULT '' COMMENT '密码加密串',
  `member_paypwd` char(32) NOT NULL DEFAULT '' COMMENT '支付密码',
  `member_email` char(255) NOT NULL DEFAULT '' COMMENT '会员邮箱',
  `member_email_bind` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0未绑定1已绑定',
  `member_mobile_bind` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0未绑定1已绑定',
  `member_login_num` int(11) NOT NULL DEFAULT '1' COMMENT '登录次数',
  `member_time` char(10) NOT NULL DEFAULT '' COMMENT '会员注册时间',
  `member_login_time` char(10) NOT NULL DEFAULT '' COMMENT '当前登录时间',
  `member_old_login_time` char(10) NOT NULL DEFAULT '' COMMENT '上次登录时间',
  `member_login_ip` char(20) NOT NULL DEFAULT '' COMMENT '当前登录ip',
  `member_old_login_ip` char(20) NOT NULL DEFAULT '' COMMENT '上次登录ip',
  `weixin_openid` char(255) NOT NULL DEFAULT '' COMMENT '微信用户统一标识',
  `weixin_info` char(255) NOT NULL DEFAULT '' COMMENT '微信用户相关信息',
  `member_points` int(11) NOT NULL DEFAULT '0' COMMENT '会员积分',
  `member_state` tinyint(1) NOT NULL DEFAULT '1' COMMENT '会员的开启状态 1为开启 0为关闭',
  `fromid` int(11) NOT NULL DEFAULT '0' COMMENT '分享来源',
  PRIMARY KEY (`member_id`),
  UNIQUE KEY `member_id` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_member
-- ----------------------------
INSERT INTO `pre_member` VALUES ('1', '18310728440', '18310728440', '', '', '0', '0000-00-00', null, 'Q6twwe', '', '', '0', '0', '1', '1540711532', '1540711532', '', '127.0.0.1', '', '', '', '20', '1', '0');
INSERT INTO `pre_member` VALUES ('2', '13436200979', '13436200979', '', '', '0', '0000-00-00', '1b2769a02f3d2f7901ee8efe61598e50', 'vZ8RoF', '', '', '0', '0', '1', '1543402769', '1545120859', '1545112177', '127.0.0.1', '127.0.0.1', '', '', '20', '1', '0');

-- ----------------------------
-- Table structure for `pre_member_msg_tpl`
-- ----------------------------
DROP TABLE IF EXISTS `pre_member_msg_tpl`;
CREATE TABLE `pre_member_msg_tpl` (
  `mmt_code` char(150) NOT NULL COMMENT '用户消息模板编号',
  `mmt_name` char(150) NOT NULL COMMENT '模板名称',
  `mmt_message_switch` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '站内信接收开关',
  `mmt_message_content` char(255) NOT NULL DEFAULT '' COMMENT '站内信消息内容',
  `mmt_short_switch` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '短信接收开关',
  `mmt_short_content` char(255) NOT NULL DEFAULT '' COMMENT '短信接收内容',
  `mmt_wx_switch` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '微信接收开关',
  `mmt_wx_content` text NOT NULL COMMENT '微信内容',
  PRIMARY KEY (`mmt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_member_msg_tpl
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_message`
-- ----------------------------
DROP TABLE IF EXISTS `pre_message`;
CREATE TABLE `pre_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `wx_content` text COMMENT '微信发送模板',
  `wx_states` tinyint(4) DEFAULT NULL COMMENT '状态',
  `message_content` text COMMENT '短信发送模板',
  `message_states` tinyint(4) DEFAULT NULL,
  `web_content` text COMMENT '站内信发送模板',
  `web_states` tinyint(4) DEFAULT NULL,
  `web_title` char(255) DEFAULT NULL COMMENT '站内信标题',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_message
-- ----------------------------
INSERT INTO `pre_message` VALUES ('1', 'goodsout', '商品出库提醒', '您的订单已经出库。订单编号{order_sn}。【shop_name】', '1', '您的订单已经出库。订单编号@。【@】', '1', '您的订单已经出库。订单编号{order_sn}。【shop_name】', '1', '您的商品已出库');
INSERT INTO `pre_message` VALUES ('2', 'orderpayment', '订单付款', '您有一笔订单{order_sn}于{time}分钟后失效，请及时支付。【shop_name】', '1', '您有一笔订单@于@分钟后失效，请及时支付。【@】', '1', '您有一笔订单{order_sn}于{time}分钟后失效，请及时支付。【shop_name】', '1', '请支付您的订单请支付您的订单');
INSERT INTO `pre_message` VALUES ('3', 'paymentsuccess', '付款成功', '您的订单{order_sn}的款项已经收到，请留意出库通知。【shop_name】', '1', '您的订单@的款项已经收到，请留意出库通知。【@】', '1', '您的订单{order_sn}的款项已经收到，请留意出库通知。【shop_name】', '1', '您的订单已付款成功');
INSERT INTO `pre_message` VALUES ('5', 'couponexpires', '优惠券过期', '您有一个优惠券即将在{coupn_sn}过期，请记得使用。【shop_name】', '1', '您有一个优惠券即将在@过期，请记得使用。【@】', '1', '您有一个优惠券即将在{coupn_sn}过期，请记得使用。【shop_name】', '1', '您的优惠券即将过期');
INSERT INTO `pre_message` VALUES ('6', 'memberlogin', '会员注册', '1', '1', '您的验证码是@，请于@分钟内正确输入。【@】', '1', '尊敬的会员，您已经注册成功。', '1', '注册成功');
INSERT INTO `pre_message` VALUES ('7', 'pwdfind', '密码找回', '1', '1', '您的验证码是@，请于@分钟内正确输入。【@】', '1', '1', '1', null);
INSERT INTO `pre_message` VALUES ('8', 'pwdedit', '密码修改', '1', '1', '您的验证码是@，请于@分钟内正确输入。【@】', '1', '1', '1', null);
INSERT INTO `pre_message` VALUES ('9', 'orderrefund', '订单退款审核通过', '您的订单退款已经审核通过，正在等待退款。退款单号{refund_sn}。【shop_name】', '1', '您的订单退款已经审核通过，正在等待退款。退款单号@。【@】', '1', '您的订单退款已经审核通过，正在等待退款。退款单号{refund_sn}。【shop_name】', '1', '您的订单已退款成功');
INSERT INTO `pre_message` VALUES ('10', 'refundsuccess', '退款完成', '您的订单退款已完成。退款单号{refund_sn}，退款金额：{total}。【shop_name】', '1', '您的订单退款已完成。退款单号@，退款金额@。【@】', '1', '1', '1', null);
INSERT INTO `pre_message` VALUES ('11', 'returngoods', '商品退货审核通过', '您的商品退货已经审核通过，正在等待退货和退款。退货单号{return_sn}。【shop_name】', '1', '您的商品退货已经审核通过，正在等待退货和退款。退货单号@。【@】', '1', '1', '1', null);
INSERT INTO `pre_message` VALUES ('12', 'returngoodssuccess', '退货完成', '您的商品退货退款已完成。退货单号{return_sn}，退货退款金额{total}。【shop_name】', '1', '您的商品退货退款已完成。退货单号@，退货退款金额@。【@】', '1', '您的商品退货退款已完成。退货单号{return_sn}，退货退款金额{total}。【shop_name】', '1', '您的订单已退货成功');
INSERT INTO `pre_message` VALUES ('13', 'recommendbalance', '推荐奖励结算', '您最新的推荐推荐奖励已结算，您可以去商城用户中心的推荐有礼查看详情和提现。【shop_name】', '1', '您最新的推荐推荐奖励已结算，您可以去商城用户中心的推荐有礼查看详情和提现。【@】', '1', '您最新的推荐推荐奖励已结算，您可以去商城用户中心的推荐有礼查看详情和提现。【shop_name】', '1', '推荐奖励已结算');
INSERT INTO `pre_message` VALUES ('14', 'delivergoods', '管理员订单提醒', '您的商城有一笔订单{order_sn}已经支付，请及时发货。【shop_name】', '1', '您的商城有一笔订单@已经支付，请及时发货。【@】', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `pre_orders`
-- ----------------------------
DROP TABLE IF EXISTS `pre_orders`;
CREATE TABLE `pre_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_sn` bigint(20) unsigned NOT NULL,
  `pay_sn` bigint(20) unsigned NOT NULL,
  `buyer_id` int(11) unsigned NOT NULL COMMENT 'id',
  `buyer_name` char(150) NOT NULL DEFAULT '',
  `buyer_email` char(255) NOT NULL DEFAULT '',
  `buyer_phone` bigint(20) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `payment_code` char(10) NOT NULL DEFAULT '',
  `payment_time` int(10) unsigned DEFAULT '0' COMMENT '()',
  `finnshed_time` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `rcb_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `pd_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `evaluation_state` tinyint(4) DEFAULT '0' COMMENT ' 012',
  `evaluation_again_state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT ' 012',
  `order_state` tinyint(4) NOT NULL DEFAULT '10' COMMENT '0()10():;20:;30:;40:;',
  `refund_state` tinyint(4) unsigned DEFAULT '0' COMMENT ':0,1,2',
  `lock_state` tinyint(4) unsigned DEFAULT '0' COMMENT ':0,0,0',
  `delete_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '012',
  `refund_amount` decimal(10,2) DEFAULT '0.00',
  `delay_time` int(10) unsigned DEFAULT '0' COMMENT ',0',
  `order_from` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1WEB2mobile',
  `shipping_code` varchar(50) DEFAULT '',
  `order_type` tinyint(4) DEFAULT '1' COMMENT '1(),2,3',
  `chain_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  `chain_code` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `rpt_amount` decimal(10,2) unsigned DEFAULT '0.00',
  `trade_no` varchar(50) DEFAULT NULL,
  `return_state` tinyint(1) unsigned DEFAULT '0' COMMENT '退货状态:0是无退货,1是有退货',
  `payment_starttime` int(10) unsigned DEFAULT '0' COMMENT '支付发起时间',
  `refund_sn` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '最后一个退款单号',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_orders
-- ----------------------------
INSERT INTO `pre_orders` VALUES ('1', '201810281525458400', '201810281525458400', '1', '18310728440', '', '18310728440', '1540711543', '', '0', '0', '59.00', '64.00', '0.00', '0.00', '5.00', '0', '0', '10', '0', '0', '0', '0.00', '0', '1', '', '1', '0', '0', '0.00', null, '0', '1540712202', '0');
INSERT INTO `pre_orders` VALUES ('2', '201812061447216400', '201812061447216400', '2', '13436200979', '', '13436200979', '1544078839', '', '0', '0', '99.00', '101.00', '0.00', '0.00', '2.00', '0', '0', '0', '0', '0', '1', '0.00', '0', '1', '', '1', '0', '0', '0.00', null, '0', '1544079503', '0');
INSERT INTO `pre_orders` VALUES ('3', '201812061825379600', '201812061825379600', '2', '13436200979', '', '13436200979', '1544091935', '', '0', '0', '459.00', '469.00', '0.00', '0.00', '10.00', '0', '0', '10', '0', '0', '0', '0.00', '0', '1', '', '1', '0', '0', '0.00', null, '0', '1544091941', '0');
INSERT INTO `pre_orders` VALUES ('4', '201812062050408300', '201812062050408300', '2', '13436200979', '', '13436200979', '1544100637', '', '0', '0', '99.00', '101.00', '0.00', '0.00', '2.00', '0', '0', '10', '0', '0', '0', '0.00', '0', '1', '', '1', '0', '0', '0.00', null, '0', '0', '0');
INSERT INTO `pre_orders` VALUES ('5', '201812062050559700', '201812062050559700', '2', '13436200979', '', '13436200979', '1544100653', '', '0', '0', '99.00', '101.00', '0.00', '0.00', '2.00', '0', '0', '10', '0', '0', '0', '0.00', '0', '1', '', '1', '0', '0', '0.00', null, '0', '0', '0');
INSERT INTO `pre_orders` VALUES ('6', '201812062052269400', '201812062052269400', '2', '13436200979', '', '13436200979', '1544100744', '', '0', '0', '459.00', '469.00', '0.00', '0.00', '10.00', '0', '0', '10', '0', '0', '0', '0.00', '0', '1', '', '1', '0', '0', '0.00', null, '0', '1544100751', '0');

-- ----------------------------
-- Table structure for `pre_order_common`
-- ----------------------------
DROP TABLE IF EXISTS `pre_order_common`;
CREATE TABLE `pre_order_common` (
  `order_id` int(11) NOT NULL COMMENT '订单索引id',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '配送时间',
  `shipping_express_id` tinyint(1) NOT NULL DEFAULT '0' COMMENT '配送公司ID',
  `is_subscribe` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否订阅物流信息',
  `evaluation_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评价时间',
  `order_message` char(255) DEFAULT NULL COMMENT '订单留言',
  `order_pointscount` int(11) NOT NULL DEFAULT '0' COMMENT '订单赠送积分',
  `voucher_price` int(11) DEFAULT NULL COMMENT '代金券面额',
  `voucher_code` char(50) DEFAULT NULL COMMENT '代金券编码',
  `deliver_explain` text COMMENT '发货备注',
  `daddress_id` mediumint(9) NOT NULL DEFAULT '0' COMMENT '发货地址ID',
  `reciver_name` char(150) NOT NULL COMMENT '收货人姓名',
  `reciver_info` varchar(500) NOT NULL COMMENT '收货人其它信息',
  `reciver_province_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '?”?è′§?oo????o§ID',
  `reciver_city_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '收货人省级ID',
  `invoice_info` char(10) DEFAULT '' COMMENT '收货人市级ID',
  `promotion_info` char(10) DEFAULT '' COMMENT '发票信息',
  `dlyo_pickup_code` char(255) DEFAULT NULL COMMENT '提货码',
  `promotion_total` float(10,2) DEFAULT '0.00' COMMENT '订单总优惠金额（代金券，满减，平台红包）',
  `discount` tinyint(4) DEFAULT '0' COMMENT '会员折扣x%',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_order_common
-- ----------------------------
INSERT INTO `pre_order_common` VALUES ('1', '0', '0', '0', '0', '', '0', '0', '0', null, '0', '陈可可', 'a:12:{s:10:\"address_id\";s:1:\"1\";s:9:\"member_id\";s:1:\"1\";s:15:\"member_username\";s:0:\"\";s:9:\"true_name\";s:9:\"陈可可\";s:7:\"area_id\";s:2:\"37\";s:7:\"city_id\";s:2:\"36\";s:11:\"province_id\";s:1:\"1\";s:9:\"area_info\";s:26:\"北京 北京市 东城区\";s:7:\"address\";s:12:\"东奔西走\";s:9:\"tel_phone\";s:11:\"18310728440\";s:9:\"mob_phone\";s:0:\"\";s:10:\"is_default\";s:1:\"1\";}', '37', '36', '', '', null, '0.00', '0');
INSERT INTO `pre_order_common` VALUES ('2', '0', '0', '0', '0', '', '0', '0', '0', null, '0', '向华居', 'a:12:{s:10:\"address_id\";s:1:\"2\";s:9:\"member_id\";s:1:\"2\";s:15:\"member_username\";s:0:\"\";s:9:\"true_name\";s:9:\"向华居\";s:7:\"area_id\";s:2:\"50\";s:7:\"city_id\";s:2:\"36\";s:11:\"province_id\";s:1:\"1\";s:9:\"area_info\";s:26:\"北京 北京市 大兴区\";s:7:\"address\";s:6:\"旧宫\";s:9:\"tel_phone\";s:11:\"13436200979\";s:9:\"mob_phone\";s:0:\"\";s:10:\"is_default\";s:1:\"1\";}', '50', '36', '', '', null, '0.00', '0');
INSERT INTO `pre_order_common` VALUES ('3', '0', '0', '0', '0', '', '0', '0', '0', null, '0', '向华居', 'a:12:{s:10:\"address_id\";s:1:\"2\";s:9:\"member_id\";s:1:\"2\";s:15:\"member_username\";s:0:\"\";s:9:\"true_name\";s:9:\"向华居\";s:7:\"area_id\";s:2:\"50\";s:7:\"city_id\";s:2:\"36\";s:11:\"province_id\";s:1:\"1\";s:9:\"area_info\";s:26:\"北京 北京市 大兴区\";s:7:\"address\";s:6:\"旧宫\";s:9:\"tel_phone\";s:11:\"13436200979\";s:9:\"mob_phone\";s:0:\"\";s:10:\"is_default\";s:1:\"1\";}', '50', '36', '', '', null, '0.00', '0');
INSERT INTO `pre_order_common` VALUES ('4', '0', '0', '0', '0', '', '0', '0', '0', null, '0', '向华居', 'a:12:{s:10:\"address_id\";s:1:\"2\";s:9:\"member_id\";s:1:\"2\";s:15:\"member_username\";s:0:\"\";s:9:\"true_name\";s:9:\"向华居\";s:7:\"area_id\";s:2:\"50\";s:7:\"city_id\";s:2:\"36\";s:11:\"province_id\";s:1:\"1\";s:9:\"area_info\";s:26:\"北京 北京市 大兴区\";s:7:\"address\";s:6:\"旧宫\";s:9:\"tel_phone\";s:11:\"13436200979\";s:9:\"mob_phone\";s:0:\"\";s:10:\"is_default\";s:1:\"1\";}', '50', '36', '', '', null, '0.00', '0');
INSERT INTO `pre_order_common` VALUES ('5', '0', '0', '0', '0', '', '0', '0', '0', null, '0', '向华居', 'a:12:{s:10:\"address_id\";s:1:\"2\";s:9:\"member_id\";s:1:\"2\";s:15:\"member_username\";s:0:\"\";s:9:\"true_name\";s:9:\"向华居\";s:7:\"area_id\";s:2:\"50\";s:7:\"city_id\";s:2:\"36\";s:11:\"province_id\";s:1:\"1\";s:9:\"area_info\";s:26:\"北京 北京市 大兴区\";s:7:\"address\";s:6:\"旧宫\";s:9:\"tel_phone\";s:11:\"13436200979\";s:9:\"mob_phone\";s:0:\"\";s:10:\"is_default\";s:1:\"1\";}', '50', '36', '', '', null, '0.00', '0');
INSERT INTO `pre_order_common` VALUES ('6', '0', '0', '0', '0', '', '0', '0', '0', null, '0', '向华居', 'a:12:{s:10:\"address_id\";s:1:\"2\";s:9:\"member_id\";s:1:\"2\";s:15:\"member_username\";s:0:\"\";s:9:\"true_name\";s:9:\"向华居\";s:7:\"area_id\";s:2:\"50\";s:7:\"city_id\";s:2:\"36\";s:11:\"province_id\";s:1:\"1\";s:9:\"area_info\";s:26:\"北京 北京市 大兴区\";s:7:\"address\";s:6:\"旧宫\";s:9:\"tel_phone\";s:11:\"13436200979\";s:9:\"mob_phone\";s:0:\"\";s:10:\"is_default\";s:1:\"1\";}', '50', '36', '', '', null, '0.00', '0');

-- ----------------------------
-- Table structure for `pre_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `pre_order_goods`;
CREATE TABLE `pre_order_goods` (
  `rec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_id` int(11) NOT NULL COMMENT 'id',
  `goods_id` int(11) NOT NULL COMMENT 'id',
  `goods_name` char(50) NOT NULL,
  `goods_price` float(10,2) NOT NULL,
  `goods_num` smallint(5) unsigned NOT NULL DEFAULT '1',
  `goods_image` char(255) NOT NULL DEFAULT '',
  `goods_pay_price` float(10,2) unsigned NOT NULL DEFAULT '0.00',
  `store_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  `buyer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  `goods_type` char(1) NOT NULL DEFAULT '1' COMMENT '1234589',
  `promotions_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'IDID/ID/IDgoods_type',
  `commis_rate` smallint(5) unsigned NOT NULL DEFAULT '0',
  `gc_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'ID',
  `goods_spec` varchar(255) DEFAULT NULL,
  `goods_contractid` varchar(100) DEFAULT NULL COMMENT 'id',
  `evaluate_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 1 2 ',
  `goods_returnnum` int(10) unsigned DEFAULT '0' COMMENT '退货数量',
  `goods_common_id` int(11) NOT NULL COMMENT 'spu id',
  `rg_id` int(11) unsigned DEFAULT '0' COMMENT '退货时的退货id号',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_order_goods
-- ----------------------------
INSERT INTO `pre_order_goods` VALUES ('1', '1', '1', '典雅美式全棉刺绣靠枕', '59.00', '1', 'Common/2016-09-07/57cfaa9434c32.png', '0.00', '0', '1', '1', '0', '0', '2', '太阳', null, '0', '0', '1', '0', '1540711543');
INSERT INTO `pre_order_goods` VALUES ('2', '2', '6', '全棉进口埃及长绒棉浴巾', '99.00', '1', 'Common/2016-09-07/57cfabeb14a9a.png', '0.00', '0', '2', '1', '0', '0', '3', '米色', null, '0', '0', '2', '0', '1544078839');
INSERT INTO `pre_order_goods` VALUES ('3', '3', '9', '日式天然蔺草地垫', '459.00', '1', 'Common/2016-09-07/57cfc22bb3eee.png', '0.00', '0', '2', '1', '0', '0', '5', '180*180', null, '0', '0', '4', '0', '1544091935');
INSERT INTO `pre_order_goods` VALUES ('4', '4', '6', '全棉进口埃及长绒棉浴巾', '99.00', '1', 'Common/2016-09-07/57cfabeb14a9a.png', '0.00', '0', '2', '1', '0', '0', '3', '米色', null, '0', '0', '2', '0', '1544100637');
INSERT INTO `pre_order_goods` VALUES ('5', '5', '6', '全棉进口埃及长绒棉浴巾', '99.00', '1', 'Common/2016-09-07/57cfabeb14a9a.png', '0.00', '0', '2', '1', '0', '0', '3', '米色', null, '0', '0', '2', '0', '1544100653');
INSERT INTO `pre_order_goods` VALUES ('6', '6', '9', '日式天然蔺草地垫', '459.00', '1', 'Common/2016-09-07/57cfc22bb3eee.png', '0.00', '0', '2', '1', '0', '0', '5', '180*180', null, '0', '0', '4', '0', '1544100744');

-- ----------------------------
-- Table structure for `pre_order_log`
-- ----------------------------
DROP TABLE IF EXISTS `pre_order_log`;
CREATE TABLE `pre_order_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `id` char(255) NOT NULL DEFAULT '' COMMENT '订单id或者其他id',
  `idtype` varchar(50) NOT NULL COMMENT 'id类型',
  `operator_type` enum('buyer','seller','system','') NOT NULL DEFAULT '' COMMENT '操作人类型',
  `operator_id` int(11) NOT NULL DEFAULT '0' COMMENT '操作人id',
  `operator_name` varchar(50) NOT NULL DEFAULT '' COMMENT '操作人姓名',
  `log_content` varchar(1000) NOT NULL DEFAULT '' COMMENT '日志类容',
  `dateline` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_other_pay`
-- ----------------------------
DROP TABLE IF EXISTS `pre_other_pay`;
CREATE TABLE `pre_other_pay` (
  `pay_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '支付id',
  `order_sn` bigint(20) unsigned NOT NULL COMMENT '支付订单号',
  `trade_no` char(50) NOT NULL DEFAULT '' COMMENT '支付单号',
  `payment_code` char(10) NOT NULL COMMENT '支付方式',
  `order_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '支付金额',
  `pay_starttime` int(10) unsigned DEFAULT '0' COMMENT '支付发起时间',
  `before_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠前价格',
  `offer_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '优惠数额',
  `coupon_id` int(11) unsigned DEFAULT NULL COMMENT '优惠卷ID',
  `status` tinyint(10) NOT NULL DEFAULT '1' COMMENT '1：未付款 2：已付款',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `order_sn` (`order_sn`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_other_pay
-- ----------------------------
INSERT INTO `pre_other_pay` VALUES ('4', '201812111938296704', '', '', '90.00', '1544528308', '100.00', '10.00', '73', '1');
INSERT INTO `pre_other_pay` VALUES ('5', '201812111940044804', '', '', '100.00', '1544528403', '0.00', '0.00', '0', '1');
INSERT INTO `pre_other_pay` VALUES ('6', '201812161454024804', '', '', '200.00', '1544943241', '0.00', '0.00', '0', '1');
INSERT INTO `pre_other_pay` VALUES ('7', '201812161455062204', '', '', '300.00', '1544943305', '0.00', '0.00', '0', '1');

-- ----------------------------
-- Table structure for `pre_other_shop`
-- ----------------------------
DROP TABLE IF EXISTS `pre_other_shop`;
CREATE TABLE `pre_other_shop` (
  `shop_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '第三方商城id',
  `shop_code` char(16) NOT NULL DEFAULT '' COMMENT '第三方商城code',
  `shop_name` char(16) NOT NULL DEFAULT '' COMMENT '第三方商城名称',
  `shop_config` text NOT NULL COMMENT '第三方商城配置',
  `shop_state` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '第三方商城状态',
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_other_shop
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_payment`
-- ----------------------------
DROP TABLE IF EXISTS `pre_payment`;
CREATE TABLE `pre_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '支付id',
  `payment_code` char(16) NOT NULL DEFAULT '' COMMENT '支付code',
  `payment_name` char(16) NOT NULL DEFAULT '' COMMENT '支付名称',
  `payment_config` text NOT NULL,
  `payment_state` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_payment
-- ----------------------------
INSERT INTO `pre_payment` VALUES ('1', 'wx', '微信', 'a:6:{s:5:\"appid\";s:3:\"aaa\";s:9:\"appsecret\";s:4:\"aaaa\";s:5:\"mchid\";s:6:\"aaaaaa\";s:3:\"key\";s:4:\"aaaa\";s:12:\"sslcert_path\";s:32:\"Pem/2018-10-28/5bd564a15ed81.png\";s:11:\"sslkey_path\";s:32:\"Pem/2018-10-28/5bd564a3ec3cc.png\";}', '1');
INSERT INTO `pre_payment` VALUES ('2', 'alipay', '支付宝', 'a:6:{s:7:\"account\";s:7:\"adfasdf\";s:3:\"pid\";s:8:\"asdfasdf\";s:6:\"app_id\";s:8:\"adsfasdf\";s:9:\"seller_id\";s:8:\"asdfasdf\";s:3:\"key\";s:8:\"asdfasdf\";s:16:\"private_key_path\";s:11:\"adsfasdfasd\";}', '1');

-- ----------------------------
-- Table structure for `pre_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `pre_plugin`;
CREATE TABLE `pre_plugin` (
  `code` varchar(13) NOT NULL DEFAULT '' COMMENT '插件编码',
  `name` varchar(150) NOT NULL DEFAULT '' COMMENT '中文名字',
  `version` varchar(255) NOT NULL DEFAULT '' COMMENT '插件的版本',
  `author` varchar(30) NOT NULL DEFAULT '' COMMENT '插件作者',
  `config` text COMMENT '配置信息',
  `config_value` text NOT NULL COMMENT '配置值信息',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '插件描述',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否启用',
  `type` char(50) NOT NULL DEFAULT '' COMMENT '插件类型 payment支付 login 登陆 shipping物流',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `bank_code` text COMMENT '网银配置信息',
  `scene` tinyint(1) DEFAULT NULL COMMENT '使用场景 0 PC+手机 1 手机 2 PC',
  `order_type_sn` char(10) NOT NULL DEFAULT '' COMMENT '使用场景 插件使用支付系统，会在订单号尾部添加标志，只能是2位整数 比如 08 09'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_plugin
-- ----------------------------
INSERT INTO `pre_plugin` VALUES ('group', '拼团插件', '1.4', 'peter_zhou', 'N;', '', '适合v1.4', '0', 'function', 'logo.jpg', 'N;', null, '10');

-- ----------------------------
-- Table structure for `pre_points_log`
-- ----------------------------
DROP TABLE IF EXISTS `pre_points_log`;
CREATE TABLE `pre_points_log` (
  `pl_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `pl_memberid` int(11) NOT NULL COMMENT '会员ID',
  `pl_membername` char(150) NOT NULL DEFAULT '' COMMENT '会员名称',
  `pl_adminid` int(11) DEFAULT NULL COMMENT '管理员ID',
  `pl_adminname` char(150) NOT NULL DEFAULT '' COMMENT '管理员名称',
  `pl_points` int(11) NOT NULL DEFAULT '0' COMMENT '积分数负数表示扣除',
  `pl_addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `pl_desc` char(255) NOT NULL DEFAULT '' COMMENT '操作描述',
  `pl_stage` char(255) NOT NULL DEFAULT '' COMMENT '操作行为阶段',
  PRIMARY KEY (`pl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_points_log
-- ----------------------------
INSERT INTO `pre_points_log` VALUES ('1', '1', '18310728440', null, '', '20', '1540711532', '注册会员', 'register');
INSERT INTO `pre_points_log` VALUES ('2', '2', '13436200979', null, '', '20', '1543402768', '注册会员', 'register');

-- ----------------------------
-- Table structure for `pre_rbac_access`
-- ----------------------------
DROP TABLE IF EXISTS `pre_rbac_access`;
CREATE TABLE `pre_rbac_access` (
  `role_id` int(11) unsigned NOT NULL,
  `node_id` int(11) unsigned NOT NULL,
  KEY `role_id` (`role_id`) USING BTREE,
  KEY `node_id` (`node_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_rbac_access
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_rbac_admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `pre_rbac_admin_role`;
CREATE TABLE `pre_rbac_admin_role` (
  `admin_id` int(11) unsigned NOT NULL,
  `role_id` int(11) unsigned NOT NULL,
  KEY `admin_id` (`admin_id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_rbac_admin_role
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_rbac_node`
-- ----------------------------
DROP TABLE IF EXISTS `pre_rbac_node`;
CREATE TABLE `pre_rbac_node` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `name_cn` varchar(16) NOT NULL DEFAULT '',
  `level` tinyint(2) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `controller` char(100) NOT NULL DEFAULT '',
  `asmenu` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否是导航',
  `sort` tinyint(1) NOT NULL DEFAULT '127' COMMENT '排序',
  `classname` char(255) NOT NULL DEFAULT '' COMMENT '该导航导航对应的图标分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=514 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_rbac_node
-- ----------------------------
INSERT INTO `pre_rbac_node` VALUES ('244', 'category_del', '删除分类 ', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('245', 'goods_list', '商品管理', '3', '0', 'Commodity', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('246', 'sku_list', 'sku列表 ', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('247', 'spec', '商品规格', '3', '0', 'Commodity', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('248', 'spec_add', '添加规格 ', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('249', 'spec_edit', '编辑规格 ', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('250', 'spec_delete', '删除规格', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('251', 'spec_value', '规格值列表', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('252', 'spec_value_add_form', '添加规格值', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('253', 'spec_value_edit', '编辑规格值', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('254', 'spec_value_delete', '删除规格值', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('255', 'goods_add_step1', '发布商品', '3', '0', 'Commodity', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('256', 'goods_add_step2', '商品添加第二步', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('257', 'goods_edit_step2', '商品编辑第二步', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('258', 'goods_add_step3', '商品添加第三步', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('259', 'goods_add_step4', '商品添加第四步', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('260', 'goods_add_step5', '商品添加第五步', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('261', 'goods_operation', '商品操作', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('262', 'goods_recycle', '加入回收站', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('263', 'goods_remove_recycle', '移除回收站 ', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('264', 'goods_delete', '彻底删除商品 ', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('265', 'goods_sell', '商品上架 ', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('266', 'goods_un_sell', '商品下架', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('267', 'goods_move_class', '移动商品分类', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('268', 'spec_value_add', 'ajax商品规格', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('269', 'get_spec', '获取规格', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('270', 'Commodity', '商品', '1', '0', 'Commodity', '1', '3', 'sidebar-icon-goods');
INSERT INTO `pre_rbac_node` VALUES ('271', 'Coupon', '促销', '1', '0', 'Coupon', '1', '7', 'sidebar-icon-Promotion');
INSERT INTO `pre_rbac_node` VALUES ('272', 'lists', '优惠券', '3', '0', 'Coupon', '1', '1', '');
INSERT INTO `pre_rbac_node` VALUES ('273', 'save_rpacket', '添加优惠券-保存', '3', '0', 'Coupon', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('274', 'delete', '删除优惠券', '3', '0', 'Coupon', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('275', 'edit', '编辑优惠券', '3', '0', 'Coupon', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('276', 'save_edit', '保存编辑优惠券', '3', '0', 'Coupon', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('277', 'rep_list', '优惠券发放详情', '3', '0', 'Coupon', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('279', 'Member', '会员', '1', '0', 'Member', '1', '2', 'sidebar-icon-user');
INSERT INTO `pre_rbac_node` VALUES ('280', 'lists', '会员管理', '3', '0', 'Member', '1', '1', '');
INSERT INTO `pre_rbac_node` VALUES ('281', 'add', '添加会员', '3', '0', 'Member', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('282', 'points', '会员积分', '3', '0', 'Member', '1', '2', '');
INSERT INTO `pre_rbac_node` VALUES ('283', 'points_add', '添加积分', '3', '0', 'Member', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('284', 'points_setting', '规则设置', '3', '0', 'Member', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('285', 'addressshow', '添加收货地址', '3', '0', 'Member', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('286', 'member_address', '地址列表 ', '3', '0', 'Member', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('287', 'set_default', '设置默认地址', '3', '0', 'Member', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('288', 'address_del', '删除地址', '3', '0', 'Member', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('295', 'Setting', '店铺', '1', '0', 'Setting', '1', '1', 'sidebar-icon-shop');
INSERT INTO `pre_rbac_node` VALUES ('296', 'base', '基本设置', '3', '0', 'Setting', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('297', 'uplogofile', '上传文件', '3', '0', 'Setting', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('298', 'email', '邮件设置', '3', '0', 'Setting', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('299', 'email_testing', '邮箱测试', '3', '0', 'Setting', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('300', 'message', '短信设置', '3', '0', 'Setting', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('301', 'notes', '消息模板', '3', '0', 'Setting', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('302', 'notes_edit', '编辑消息模板', '3', '0', 'Setting', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('303', 'district', '地区设置', '3', '0', 'Setting', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('304', 'thirdlogin', '微信登录', '3', '0', 'Setting', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('305', 'payment', '支付方式', '3', '0', 'Setting', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('306', 'personnel', '首页管理', '3', '0', 'Setting', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('308', 'advert', '广告管理', '3', '0', 'Setting', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('309', 'System', '权限', '1', '0', 'System', '1', '11', 'sidebar-icon-Jurisdiction');
INSERT INTO `pre_rbac_node` VALUES ('310', 'lists', '管理员', '3', '0', 'System', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('311', 'add', '添加管理员', '3', '0', 'System', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('312', 'del', '删除管理员', '3', '0', 'System', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('313', 'addpermission', '添加权限组', '3', '0', 'System', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('314', 'rolelist', '权限组', '3', '0', 'System', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('315', 'editpermission', '编辑权限组', '3', '0', 'System', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('316', 'delrole', '删除权限组', '3', '0', 'System', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('317', 'log', '操作日志', '3', '0', 'System', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('318', 'Presales', '售后', '1', '0', 'Presales', '1', '5', 'sidebar-icon-Customerservice');
INSERT INTO `pre_rbac_node` VALUES ('319', 'refunds', '退款管理', '3', '0', 'Presales', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('320', 'returns', '退货管理', '3', '0', 'Presales', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('321', 'causes', '原因设置', '3', '0', 'Presales', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('322', 'feedbacks', '意见反馈', '3', '0', 'Presales', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('323', 'add', '添加优惠券', '3', '0', 'Coupon', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('324', 'show', '优惠券详情', '3', '0', 'Coupon', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('325', 'grant', '发放优惠券', '3', '0', 'Coupon', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('326', 'rep_delete', '删除用户优惠券', '3', '0', 'Coupon', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('327', 'member_packet', '优惠券明细', '3', '0', 'Coupon', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('328', 'member_packet_info', '用户优惠券详情', '3', '0', 'Coupon', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('329', 'Order', '订单', '1', '0', 'Order', '1', '4', 'sidebar-icon-order');
INSERT INTO `pre_rbac_node` VALUES ('330', 'lists', '订单列表', '3', '0', 'Order', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('331', 'detail', '订单详情', '3', '0', 'Order', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('332', 'delorder', '删除订单', '3', '0', 'Order', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('333', 'productlist', '发货管理', '3', '0', 'Order', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('334', 'evaluate', '评价管理', '3', '0', 'Presales', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('336', 'clean_cache', '清理缓存', '3', '0', 'Setting', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('338', 'json_area', 'json_area', '3', '0', 'District', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('341', 'add', 'add', '3', '0', 'Adv', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('342', 'deladv', 'deladv', '3', '0', 'Adv', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('343', 'edit', 'edit', '3', '0', 'Adv', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('344', 'itemadd', 'itemadd', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('345', 'itemedit', 'itemedit', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('346', 'imgedit', 'imgedit', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('347', 'itemlist', 'itemlist', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('348', 'itemsort', 'itemsort', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('349', 'itemstatus', 'itemstatus', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('350', 'itemdel', 'itemdel', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('351', 'itemsave', 'itemsave', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('352', 'itemtypeadd', 'itemtypeadd', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('353', 'saveadvlist', 'saveadvlist', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('354', 'saveadvhtml', 'saveadvhtml', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('355', 'saveadvnav', 'saveadvnav', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('356', 'savegoodslist', 'savegoodslist', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('357', 'isitemexist', 'isitemexist', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('358', 'html', 'html', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('359', 'showindex', 'showindex', '3', '0', 'Special', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('360', 'delarea', 'delarea', '3', '0', 'District', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('361', 'add', 'add', '3', '0', 'District', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('362', 'edit', 'edit', '3', '0', 'District', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('363', 'save', 'save', '3', '0', 'District', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('364', 'json_area_show', 'json_area_show', '3', '0', 'District', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('366', 'smsedit', 'smsedit', '3', '0', 'Setting', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('367', 'delevaluate', 'delevaluate', '3', '0', 'Presales', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('368', 'editrefund', 'editrefund', '3', '0', 'Presales', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('369', 'refunddetail', 'refunddetail', '3', '0', 'Presales', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('370', 'editreturn', 'editreturn', '3', '0', 'Presales', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('371', 'returndetail', 'returndetail', '3', '0', 'Presales', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('372', 'addcauses', 'addcauses', '3', '0', 'Presales', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('373', 'delcauses', 'delcauses', '3', '0', 'Presales', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('374', 'editfeedback', 'editfeedback', '3', '0', 'Presales', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('375', 'feedbackdetail', 'feedbackdetail', '3', '0', 'Presales', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('376', 'return_pay', 'return_pay', '3', '0', 'Presales', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('377', 'refund_pay', 'refund_pay', '3', '0', 'Presales', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('378', 'changeorder', 'changeorder', '3', '0', 'Order', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('379', 'setstorage', 'setstorage', '3', '0', 'Order', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('380', 'settrade', 'settrade', '3', '0', 'Order', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('390', 'Cms', '运营', '1', '0', 'Cms', '1', '8', 'sidebar-icon-Operate');
INSERT INTO `pre_rbac_node` VALUES ('399', 'Wx', '微信', '1', '0', 'Wx', '1', '10', 'sidebar-icon-WeChat');
INSERT INTO `pre_rbac_node` VALUES ('400', 'menutest', '菜单测试', '3', '0', 'Wx', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('401', 'sendmoban', '发送模板', '3', '0', 'Wx', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('403', 'wxloginop', '微信登录', '3', '0', 'Wx', '1', '1', '');
INSERT INTO `pre_rbac_node` VALUES ('404', 'menuop', '菜单管理', '3', '0', 'Wx', '1', '5', '');
INSERT INTO `pre_rbac_node` VALUES ('405', 'keywordsop', '关键词', '3', '0', 'Wx', '1', '6', '');
INSERT INTO `pre_rbac_node` VALUES ('407', 'Statistics', '统计', '1', '0', 'Statistics', '1', '9', 'sidebar-icon-Statistics');
INSERT INTO `pre_rbac_node` VALUES ('408', 'order', '订单统计', '3', '0', 'Statistics', '1', '126', 'sidebar-icon-order');
INSERT INTO `pre_rbac_node` VALUES ('409', 'article_class_list', '资讯分类', '3', '0', 'Cms', '1', '1', '');
INSERT INTO `pre_rbac_node` VALUES ('410', 'article_list', '资讯管理', '3', '0', 'Cms', '1', '2', '');
INSERT INTO `pre_rbac_node` VALUES ('411', 'article_class_add', 'article_class_ad', '3', '0', 'Cms', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('412', 'article_class_del', 'article_class_de', '3', '0', 'Cms', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('413', 'article_add', 'article_add', '3', '0', 'Cms', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('414', 'article_del', 'article_del', '3', '0', 'Cms', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('415', 'wxshare', '微信分享', '3', '0', 'Wx', '1', '2', '');
INSERT INTO `pre_rbac_node` VALUES ('416', 'members', '会员统计', '3', '0', 'Statistics', '1', '126', '');
INSERT INTO `pre_rbac_node` VALUES ('417', 'customer', '售后统计', '3', '0', 'Statistics', '1', '126', '');
INSERT INTO `pre_rbac_node` VALUES ('418', 'hotgoods', '热卖商品', '3', '0', 'Statistics', '1', '126', '');
INSERT INTO `pre_rbac_node` VALUES ('422', 'main', '店铺概况', '3', '0', 'Setting', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('423', 'wxrespons', '微信回复', '3', '0', 'Wx', '1', '3', '');
INSERT INTO `pre_rbac_node` VALUES ('424', 'wxtextimg', '素材库', '3', '0', 'Wx', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('435', 'category', '商品分类', '3', '0', 'Commodity', '1', '1', '');
INSERT INTO `pre_rbac_node` VALUES ('436', 'category_add', '添加分类', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('437', 'category_edit', '编辑分类', '3', '0', 'Commodity', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('438', 'info', '密码修改', '3', '0', 'System', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('439', 'menusend', 'menusend', '3', '0', 'Wx', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('440', 'menuedit', 'menuedit', '3', '0', 'Wx', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('441', 'delmenu', 'delmenu', '3', '0', 'Wx', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('442', 'uplogofile', 'uplogofile', '3', '0', 'Wx', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('443', 'bank', '银行', '3', '0', 'Cms', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('444', 'banklist', '银行列表', '3', '0', 'Cms', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('445', 'delbank', '删除银行', '3', '0', 'Cms', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('446', 'spread', '提现设置', '3', '0', 'Cms', '1', '3', '');
INSERT INTO `pre_rbac_node` VALUES ('447', 'reward', '推广设置', '3', '0', 'Cms', '1', '5', '');
INSERT INTO `pre_rbac_node` VALUES ('448', 'presales', '奖励明细', '3', '0', 'Cms', '0', '127', 'sidebar-icon-Customerservice');
INSERT INTO `pre_rbac_node` VALUES ('449', 'withdraw', '提现记录', '3', '0', 'Cms', '1', '4', '');
INSERT INTO `pre_rbac_node` VALUES ('450', 'edit', '提现审核', '3', '0', 'Cms', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('451', 'show', '查看审核结果', '3', '0', 'Cms', '0', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('452', 'key_convert', 'key_convert', '3', '0', 'Commodity', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('453', 'getdatadictionary', 'getdatadictionar', '3', '0', 'Member', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('454', 'address_list', 'address_list', '3', '0', 'Member', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('455', 'companylist', 'companylist', '3', '0', 'Order', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('456', 'query_setting', '快递设置', '3', '0', 'Order', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('457', 'expense', '运费设置', '3', '0', 'Order', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('458', 'message', '微信通知', '3', '0', 'Wx', '1', '4', '');
INSERT INTO `pre_rbac_node` VALUES ('460', 'keywordsedit', 'keywordsedit', '3', '0', 'Wx', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('461', 'delkeywords', 'delkeywords', '3', '0', 'Wx', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('462', 'messageedit', 'messageedit', '3', '0', 'Wx', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('463', 'sendmss', 'sendmss', '3', '0', 'Wx', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('464', 'reward', '推广统计', '3', '0', 'Statistics', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('466', 'searchgoods', 'searchgoods', '3', '0', 'Search', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('467', 'goods_quick_add', '快速发布', '3', '0', 'Commodity', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('471', 'notice', '消息通知', '3', '0', 'Member', '1', '3', '');
INSERT INTO `pre_rbac_node` VALUES ('472', 'template', '消息模板', '3', '0', 'Notice', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('473', 'noticeedit', 'noticeedit', '3', '0', 'Notice', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('474', 'send_notice', '发送消息', '3', '0', 'Notice', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('475', 'sendwxcard', '发送微信优惠卡券', '3', '0', 'Coupon', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('476', 'getuploadimg', 'getuploadimg', '3', '0', 'Coupon', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('477', 'group', '拼团', '3', '0', 'Coupon', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('478', 'grouplist', '拼团列表', '3', '0', 'Coupon', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('479', 'activelist', '活动列表', '3', '0', 'Coupon', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('480', 'activelist', '拼团', '3', '0', 'Coupon', '0', '2', '');
INSERT INTO `pre_rbac_node` VALUES ('481', 'group', 'group', '3', '0', 'Group', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('482', 'activelist', 'activelist', '3', '0', 'Group', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('483', 'groplist', 'groplist', '3', '0', 'Group', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('484', 'joinlists', 'joinlists', '3', '0', 'Group', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('485', 'delgroup', 'delgroup', '3', '0', 'Group', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('486', 'otherpay', '扫码支付', '3', '0', 'Cms', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('487', 'otherpay', '扫码支付', '3', '0', 'Cms', '1', '6', '');
INSERT INTO `pre_rbac_node` VALUES ('488', 'gift_list', '礼品管理', '3', '0', 'Coupon', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('489', 'gift_add', '礼品添加', '3', '0', 'Coupon', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('490', 'gift_edit', '礼品编辑', '3', '0', 'Coupon', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('491', 'gift_delete', '礼品删除', '3', '0', 'Coupon', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('492', 'usergetdatelist', '数据调用', '3', '0', 'Cms', '1', '127', '');
INSERT INTO `pre_rbac_node` VALUES ('498', 'imgtext', '素材库', '3', '0', 'Wx', '1', '126', '');
INSERT INTO `pre_rbac_node` VALUES ('499', 'usergetdate', 'usergetdate', '3', '0', 'Cms', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('500', 'usergetdateedit', 'usergetdateedit', '3', '0', 'Cms', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('501', 'deldata', 'deldata', '3', '0', 'Cms', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('502', 'updatecash', 'updatecash', '3', '0', 'Cms', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('503', 'uplogofile', 'uplogofile', '3', '0', 'Cms', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('504', 'plugins', '应用中心', '3', '0', 'Cms', '1', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('505', 'index', 'index', '3', '0', 'Plugin', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('506', 'group_same_key', 'group_same_key', '3', '0', 'Plugin', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('507', 'admin', 'admin', '3', '0', 'Plugin', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('508', 'install', 'install', '3', '0', 'Plugin', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('509', 'order_print', 'order_print', '3', '0', 'Order', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('510', 'orderlists', 'orderlists', '3', '0', 'Export', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('511', 'withdraw', 'withdraw', '3', '0', 'Export', '0', '0', '');
INSERT INTO `pre_rbac_node` VALUES ('512', 'presales', 'presales', '3', '0', 'Export', '0', '0', 'sidebar-icon-Customerservice');
INSERT INTO `pre_rbac_node` VALUES ('513', 'goods_edit_step1', '商品编辑第一步', '3', '0', 'Commodity', '0', '127', '');

-- ----------------------------
-- Table structure for `pre_rbac_role`
-- ----------------------------
DROP TABLE IF EXISTS `pre_rbac_role`;
CREATE TABLE `pre_rbac_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_rbac_role
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_rbac_siblings`
-- ----------------------------
DROP TABLE IF EXISTS `pre_rbac_siblings`;
CREATE TABLE `pre_rbac_siblings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lastid` int(11) unsigned NOT NULL DEFAULT '0',
  `nextids` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `lastid` (`lastid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_rbac_siblings
-- ----------------------------
INSERT INTO `pre_rbac_siblings` VALUES ('1', '255', '256,257,258,259,260,269');
INSERT INTO `pre_rbac_siblings` VALUES ('2', '241', '242,243,244');
INSERT INTO `pre_rbac_siblings` VALUES ('3', '245', '246,261,262,263,264,265,266,267,513');
INSERT INTO `pre_rbac_siblings` VALUES ('4', '247', '248,249,250,251,252,253,254');
INSERT INTO `pre_rbac_siblings` VALUES ('6', '272', '324,326,328,275,274,325,323');
INSERT INTO `pre_rbac_siblings` VALUES ('7', '282', '284,283');
INSERT INTO `pre_rbac_siblings` VALUES ('8', '280', '281,285,286,287,288,327,338,454');
INSERT INTO `pre_rbac_siblings` VALUES ('9', '291', '292,294,338');
INSERT INTO `pre_rbac_siblings` VALUES ('15', '296', '341,342,343');
INSERT INTO `pre_rbac_siblings` VALUES ('16', '306', '344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,466');
INSERT INTO `pre_rbac_siblings` VALUES ('17', '303', '338,360,361,362,363,364');
INSERT INTO `pre_rbac_siblings` VALUES ('18', '301', '302');
INSERT INTO `pre_rbac_siblings` VALUES ('19', '300', '366');
INSERT INTO `pre_rbac_siblings` VALUES ('20', '314', '313,315,316');
INSERT INTO `pre_rbac_siblings` VALUES ('21', '310', '311,312,313');
INSERT INTO `pre_rbac_siblings` VALUES ('22', '334', '367');
INSERT INTO `pre_rbac_siblings` VALUES ('23', '322', '374,375');
INSERT INTO `pre_rbac_siblings` VALUES ('24', '372', '372,373');
INSERT INTO `pre_rbac_siblings` VALUES ('25', '321', '372,373');
INSERT INTO `pre_rbac_siblings` VALUES ('26', '320', '370,371,376,377');
INSERT INTO `pre_rbac_siblings` VALUES ('27', '319', '377,368,369');
INSERT INTO `pre_rbac_siblings` VALUES ('28', '333', '379,380,509');
INSERT INTO `pre_rbac_siblings` VALUES ('29', '330', '331,378,332,509,510');
INSERT INTO `pre_rbac_siblings` VALUES ('30', '317', '391');
INSERT INTO `pre_rbac_siblings` VALUES ('32', '409', '411,412');
INSERT INTO `pre_rbac_siblings` VALUES ('33', '410', '413,414');
INSERT INTO `pre_rbac_siblings` VALUES ('34', '423', '1');
INSERT INTO `pre_rbac_siblings` VALUES ('35', '424', '2');
INSERT INTO `pre_rbac_siblings` VALUES ('36', '449', '451,450,511');
INSERT INTO `pre_rbac_siblings` VALUES ('37', '447', '448');
INSERT INTO `pre_rbac_siblings` VALUES ('38', '435', '244,436,437');
INSERT INTO `pre_rbac_siblings` VALUES ('39', '456', '455');
INSERT INTO `pre_rbac_siblings` VALUES ('40', '404', '440,441,439');
INSERT INTO `pre_rbac_siblings` VALUES ('41', '458', '462');
INSERT INTO `pre_rbac_siblings` VALUES ('42', '405', '460,461');
INSERT INTO `pre_rbac_siblings` VALUES ('43', '471', '472,473,474');
INSERT INTO `pre_rbac_siblings` VALUES ('44', '480', '481,482,483,484,485');
INSERT INTO `pre_rbac_siblings` VALUES ('45', '504', '505,506,507,508');
INSERT INTO `pre_rbac_siblings` VALUES ('46', '492', '499,500,501,502,503');
INSERT INTO `pre_rbac_siblings` VALUES ('47', '448', '512');

-- ----------------------------
-- Table structure for `pre_redpacket`
-- ----------------------------
DROP TABLE IF EXISTS `pre_redpacket`;
CREATE TABLE `pre_redpacket` (
  `rpacket_id` int(11) NOT NULL AUTO_INCREMENT,
  `rpacket_code` char(255) NOT NULL DEFAULT '',
  `rpacket_t_id` int(11) NOT NULL DEFAULT '0',
  `rpacket_title` char(255) NOT NULL DEFAULT '',
  `rpacket_desc` char(255) NOT NULL DEFAULT '',
  `rpacket_start_date` int(11) NOT NULL DEFAULT '0',
  `rpacket_end_date` int(11) NOT NULL DEFAULT '0',
  `rpacket_price` int(11) NOT NULL DEFAULT '0',
  `rpacket_limit` int(11) NOT NULL DEFAULT '0',
  `rpacket_state` tinyint(4) NOT NULL COMMENT '(1-,2-,3-)',
  `rpacket_active_date` int(11) NOT NULL DEFAULT '0',
  `rpacket_owner_id` int(11) NOT NULL DEFAULT '0' COMMENT 'id',
  `rpacket_owner_name` char(150) NOT NULL DEFAULT '',
  `rpacket_order_id` bigint(20) NOT NULL DEFAULT '0',
  `rpacket_pwd` char(100) NOT NULL DEFAULT '',
  `rpacket_pwd2` char(255) NOT NULL DEFAULT '' COMMENT '2',
  `rpacket_customimg` char(255) NOT NULL DEFAULT '',
  `rpacket_used_date` int(11) NOT NULL DEFAULT '0',
  `rpacket_sms_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否发送优惠券过期提醒短信 0：未发送  1： 已发送',
  `rpacket_color` char(50) NOT NULL DEFAULT '' COMMENT '优惠券颜色',
  `rpacket_t_wx_card_id` char(255) NOT NULL DEFAULT '' COMMENT '微信卡券id',
  `rpacket_openid` char(255) NOT NULL DEFAULT '' COMMENT '微信openid',
  PRIMARY KEY (`rpacket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_redpacket
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_redpacket_template`
-- ----------------------------
DROP TABLE IF EXISTS `pre_redpacket_template`;
CREATE TABLE `pre_redpacket_template` (
  `rpacket_t_id` int(11) NOT NULL AUTO_INCREMENT,
  `rpacket_t_title` char(150) NOT NULL DEFAULT '',
  `rpacket_t_desc` char(255) NOT NULL DEFAULT '',
  `rpacket_t_start_date` int(11) NOT NULL DEFAULT '0',
  `rpacket_t_end_date` int(11) NOT NULL DEFAULT '0',
  `rpacket_t_price` int(11) NOT NULL DEFAULT '0',
  `rpacket_t_limit` int(11) NOT NULL DEFAULT '0',
  `rpacket_t_adminid` int(11) NOT NULL DEFAULT '0' COMMENT 'ID',
  `rpacket_t_state` tinyint(4) NOT NULL DEFAULT '0' COMMENT '(1-,2-)',
  `rpacket_t_total` int(11) NOT NULL DEFAULT '0',
  `rpacket_t_giveout` int(11) NOT NULL DEFAULT '0',
  `rpacket_t_used` int(11) NOT NULL DEFAULT '0',
  `rpacket_t_updatetime` int(11) NOT NULL DEFAULT '0',
  `rpacket_t_points` int(11) NOT NULL DEFAULT '0',
  `rpacket_t_eachlimit` int(11) NOT NULL DEFAULT '1',
  `rpacket_t_customimg` char(255) NOT NULL DEFAULT '',
  `rpacket_t_recommend` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 0 1',
  `rpacket_t_gettype` tinyint(1) NOT NULL DEFAULT '1' COMMENT ' 1 2 3',
  `rpacket_t_isbuild` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 0 1',
  `rpacket_t_mgradelimit` tinyint(2) NOT NULL DEFAULT '0',
  `rpacket_t_save_time` int(10) NOT NULL DEFAULT '0',
  `rpacket_t_share` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推广开关   0：关闭   1：开启',
  `rpacket_t_wx` tinyint(1) NOT NULL DEFAULT '0' COMMENT '微信卡券开关 0：关闭  1：开启',
  `rpacket_t_color` char(50) NOT NULL DEFAULT 'Color010' COMMENT '优惠券颜色',
  `rpacket_t_wx_card_id` char(255) DEFAULT NULL COMMENT '微信卡卷id',
  PRIMARY KEY (`rpacket_t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_redpacket_template
-- ----------------------------
INSERT INTO `pre_redpacket_template` VALUES ('1', '111', '', '1544630400', '1545321599', '11', '1111', '0', '1', '1', '0', '0', '1543822125', '11', '1', '', '0', '0', '1', '0', '1543822125', '0', '0', 'Color010', null);

-- ----------------------------
-- Table structure for `pre_refund`
-- ----------------------------
DROP TABLE IF EXISTS `pre_refund`;
CREATE TABLE `pre_refund` (
  `refund_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL COMMENT '订单号',
  `order_sn` bigint(20) unsigned NOT NULL,
  `member_uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `member_name` char(150) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_name` char(255) NOT NULL DEFAULT '0' COMMENT '管理员名',
  `causes_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '退货原因ID',
  `causes` varchar(500) NOT NULL DEFAULT '' COMMENT '退款说明',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '申请退款时间',
  `status` enum('1','2','3','4','5','6') DEFAULT '1' COMMENT '处理状态 1-待处理 2-退款中 3-已退款 4-拒绝退款 5-待支付平台处理  6-支付平台处理失败',
  `refund_images` char(255) NOT NULL DEFAULT '' COMMENT '退款图片',
  `remark` char(255) NOT NULL DEFAULT '' COMMENT '处理备注',
  `enddate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '处理时间',
  `refund_amount` float(10,2) NOT NULL COMMENT '退款金额',
  `refund_sn` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '退款编号',
  `notify_mark` char(200) NOT NULL DEFAULT '' COMMENT '退款之后第三方通知备注',
  PRIMARY KEY (`refund_id`),
  UNIQUE KEY `refund_sn` (`refund_sn`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_refund
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_returngoods`
-- ----------------------------
DROP TABLE IF EXISTS `pre_returngoods`;
CREATE TABLE `pre_returngoods` (
  `rg_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `rec_id` int(11) unsigned NOT NULL COMMENT '商品列表id',
  `goods_id` int(11) unsigned NOT NULL COMMENT '商品id',
  `order_id` int(11) unsigned NOT NULL COMMENT '订单号',
  `order_sn` bigint(20) unsigned NOT NULL,
  `member_uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `member_name` char(150) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_name` char(150) NOT NULL DEFAULT '' COMMENT '管理员名',
  `causes_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '退货原因ID',
  `causes` char(255) NOT NULL DEFAULT '' COMMENT '退款说明',
  `dateline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '申请退款时间',
  `status` enum('1','2','3','4','5','6') DEFAULT '1' COMMENT '处理状态 1-待处理 2-退款中 3-已退款 4-拒绝退款 5-待支付平台处理  6-支付平台处理失败',
  `return_images` varchar(500) NOT NULL DEFAULT '' COMMENT '退款图片',
  `remark` char(255) NOT NULL DEFAULT '' COMMENT '处理备注',
  `enddate` int(10) unsigned DEFAULT NULL COMMENT '处理时间',
  `return_amount` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '退款金额',
  `return_goodsnum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '退货数量',
  `shipping_express_id` tinyint(1) NOT NULL DEFAULT '0' COMMENT '配送公司ID',
  `shipping_code` char(150) DEFAULT '' COMMENT '物流单号',
  `return_sn` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '退货编号',
  `notify_mark` varchar(200) NOT NULL DEFAULT '0' COMMENT '退款之后第三方通知备注',
  PRIMARY KEY (`rg_id`),
  UNIQUE KEY `return_sn` (`return_sn`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_returngoods
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_send_msg`
-- ----------------------------
DROP TABLE IF EXISTS `pre_send_msg`;
CREATE TABLE `pre_send_msg` (
  `send_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `send_phone` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `send_ip` char(20) NOT NULL DEFAULT '' COMMENT '请求IP',
  `send_type` char(50) NOT NULL DEFAULT '' COMMENT '短信类型',
  `send_text` char(255) NOT NULL DEFAULT '' COMMENT '短信内容',
  `send_wxtext` char(255) DEFAULT '',
  `send_webtext` char(255) DEFAULT '',
  `send_data` varchar(255) NOT NULL DEFAULT '' COMMENT '短信数据序列化存储',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `is_send` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否已发送 1（已发送） 0（未发送）2（待二次发送）3（发送失败） 4（订单付款未发送） 5（订单已付款）',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  PRIMARY KEY (`send_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_send_msg
-- ----------------------------
INSERT INTO `pre_send_msg` VALUES ('1', '18310728440', '127.0.0.1', 'memberlogin', '您的验证码是861517，请于3分钟内正确输入。【ShopDZ商城】', '', '', 'a:2:{i:0;i:861517;i:1;i:3;}', '1540711345', '0', '3', '1540711345');
INSERT INTO `pre_send_msg` VALUES ('2', '18310728440', '127.0.0.1', 'memberlogin', '您的验证码是791424，请于3分钟内正确输入。【ShopDZ商城】', '', '', 'a:2:{i:0;i:791424;i:1;i:3;}', '1540711399', '0', '3', '1540711399');
INSERT INTO `pre_send_msg` VALUES ('3', '18310728440', '127.0.0.1', 'orderpayment', '您有一笔订单201810281525458400于30分钟后失效，请及时支付。【ShopDZ商城】', '您有一笔订单201810281525458400于30分钟后失效，请及时支付。【ShopDZ商城】', '您有一笔订单201810281525458400于30分钟后失效，请及时支付。【ShopDZ商城】', 'a:2:{s:8:\"order_sn\";s:18:\"201810281525458400\";s:4:\"time\";i:30;}', '1540711545', '1', '4', '0');
INSERT INTO `pre_send_msg` VALUES ('4', '13436200979', '127.0.0.1', 'memberlogin', '您的验证码是246832，请于3分钟内正确输入。【ShopDZ商城】', '', '', 'a:2:{i:0;i:246832;i:1;i:3;}', '1543402723', '0', '3', '1543402723');
INSERT INTO `pre_send_msg` VALUES ('5', '13436200979', '127.0.0.1', 'memberlogin', '您的验证码是176986，请于3分钟内正确输入。【ShopDZ商城】', '', '', 'a:2:{i:0;i:176986;i:1;i:3;}', '1543402737', '0', '3', '1543402737');
INSERT INTO `pre_send_msg` VALUES ('6', '13436200979', '127.0.0.1', 'memberlogin', '您的验证码是840917，请于3分钟内正确输入。【ShopDZ商城】', '', '', 'a:2:{i:0;i:840917;i:1;i:3;}', '1543642155', '2', '3', '1543642155');
INSERT INTO `pre_send_msg` VALUES ('7', '13436200979', '127.0.0.1', 'orderpayment', '您有一笔订单201812061447216400于30分钟后失效，请及时支付。【ShopDZ商城】', '您有一笔订单201812061447216400于30分钟后失效，请及时支付。【ShopDZ商城】', '您有一笔订单201812061447216400于30分钟后失效，请及时支付。【ShopDZ商城】', 'a:2:{s:8:\"order_sn\";s:18:\"201812061447216400\";s:4:\"time\";i:30;}', '1544078841', '2', '4', '0');
INSERT INTO `pre_send_msg` VALUES ('8', '13436200979', '127.0.0.1', 'orderpayment', '您有一笔订单201812061825379600于30分钟后失效，请及时支付。【ShopDZ商城】', '您有一笔订单201812061825379600于30分钟后失效，请及时支付。【ShopDZ商城】', '您有一笔订单201812061825379600于30分钟后失效，请及时支付。【ShopDZ商城】', 'a:2:{s:8:\"order_sn\";s:18:\"201812061825379600\";s:4:\"time\";i:30;}', '1544091937', '2', '4', '0');
INSERT INTO `pre_send_msg` VALUES ('9', '13436200979', '127.0.0.1', 'memberlogin', '您的验证码是485317，请于3分钟内正确输入。【ShopDZ商城】', '', '', 'a:2:{i:0;i:485317;i:1;i:3;}', '1544093466', '2', '3', '1544093466');
INSERT INTO `pre_send_msg` VALUES ('10', '13436200979', '127.0.0.1', 'orderpayment', '您有一笔订单201812062050408300于30分钟后失效，请及时支付。【ShopDZ商城】', '您有一笔订单201812062050408300于30分钟后失效，请及时支付。【ShopDZ商城】', '您有一笔订单201812062050408300于30分钟后失效，请及时支付。【ShopDZ商城】', 'a:2:{s:8:\"order_sn\";s:18:\"201812062050408300\";s:4:\"time\";i:30;}', '1544100640', '2', '4', '0');
INSERT INTO `pre_send_msg` VALUES ('11', '13436200979', '127.0.0.1', 'orderpayment', '您有一笔订单201812062050559700于30分钟后失效，请及时支付。【ShopDZ商城】', '您有一笔订单201812062050559700于30分钟后失效，请及时支付。【ShopDZ商城】', '您有一笔订单201812062050559700于30分钟后失效，请及时支付。【ShopDZ商城】', 'a:2:{s:8:\"order_sn\";s:18:\"201812062050559700\";s:4:\"time\";i:30;}', '1544100655', '2', '4', '0');
INSERT INTO `pre_send_msg` VALUES ('12', '13436200979', '127.0.0.1', 'orderpayment', '您有一笔订单201812062052269400于30分钟后失效，请及时支付。【ShopDZ商城】', '您有一笔订单201812062052269400于30分钟后失效，请及时支付。【ShopDZ商城】', '您有一笔订单201812062052269400于30分钟后失效，请及时支付。【ShopDZ商城】', 'a:2:{s:8:\"order_sn\";s:18:\"201812062052269400\";s:4:\"time\";i:30;}', '1544100747', '2', '4', '0');

-- ----------------------------
-- Table structure for `pre_setting`
-- ----------------------------
DROP TABLE IF EXISTS `pre_setting`;
CREATE TABLE `pre_setting` (
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '配置项名称',
  `value` text NOT NULL COMMENT '配置项，序列化',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_setting
-- ----------------------------
INSERT INTO `pre_setting` VALUES ('access_token', '');
INSERT INTO `pre_setting` VALUES ('access_token_time', '');
INSERT INTO `pre_setting` VALUES ('article_content', '注册协议正文');
INSERT INTO `pre_setting` VALUES ('article_title', '注册协议');
INSERT INTO `pre_setting` VALUES ('close_reason', '');
INSERT INTO `pre_setting` VALUES ('count_code', '发呆发');
INSERT INTO `pre_setting` VALUES ('email_addr', '大的');
INSERT INTO `pre_setting` VALUES ('email_host', '');
INSERT INTO `pre_setting` VALUES ('email_id', '');
INSERT INTO `pre_setting` VALUES ('email_pass', '');
INSERT INTO `pre_setting` VALUES ('email_port', '25');
INSERT INTO `pre_setting` VALUES ('email_secure', '0');
INSERT INTO `pre_setting` VALUES ('enterprise_address', '');
INSERT INTO `pre_setting` VALUES ('enterprise_contact', '');
INSERT INTO `pre_setting` VALUES ('enterprise_name', 'ShopDZ商城');
INSERT INTO `pre_setting` VALUES ('expense', 'a:2:{s:5:\"price\";s:4:\"1000\";s:4:\"type\";s:1:\"0\";}');
INSERT INTO `pre_setting` VALUES ('express_query_id', '');
INSERT INTO `pre_setting` VALUES ('express_query_key', '');
INSERT INTO `pre_setting` VALUES ('footer_info', 'ShopDZ INC.');
INSERT INTO `pre_setting` VALUES ('form_submit', 'submit');
INSERT INTO `pre_setting` VALUES ('messagesetting', 'a:13:{s:8:\"goodsout\";a:2:{s:4:\"name\";s:18:\"商品出库提醒\";s:4:\"temp\";s:50:\"您的订单已经出库。订单编号@。【@】\";}s:12:\"orderpayment\";a:2:{s:4:\"name\";s:12:\"订单付款\";s:4:\"temp\";s:66:\"您有一笔订单@于@分钟后失效，请及时支付。【@】\";}s:14:\"paymentsuccess\";a:2:{s:4:\"name\";s:12:\"付款成功\";s:4:\"temp\";s:56:\"@的款项已经收到，请留意出库通知。【@】\";}s:9:\"couponuse\";a:2:{s:4:\"name\";s:15:\"优惠券使用\";s:4:\"temp\";s:59:\"您有优惠券已经使用，优惠券编号：@。【@】\";}s:13:\"couponexpires\";a:2:{s:4:\"name\";s:15:\"优惠券过期\";s:4:\"temp\";s:65:\"您有一个优惠券即将在@过期，请记得使用。【@】\";}s:11:\"memberlogin\";a:2:{s:4:\"name\";s:6:\"注册\";s:4:\"temp\";s:60:\"您的验证码是@，请于@分钟内正确输入。【@】\";}s:7:\"pwdfind\";a:2:{s:4:\"name\";s:12:\"密码找回\";s:4:\"temp\";s:60:\"您的验证码是@，请于@分钟内正确输入。【@】\";}s:7:\"pwdedit\";a:2:{s:4:\"name\";s:12:\"密码修改\";s:4:\"temp\";s:60:\"您的验证码是@，请于@分钟内正确输入。【@】\";}s:11:\"orderrefund\";a:2:{s:4:\"name\";s:24:\"订单退款审核通过\";s:4:\"temp\";s:83:\"您的订单退款已经审核通过，正在等待退款。退款单号@。【@】\";}s:13:\"refundsuccess\";a:2:{s:4:\"name\";s:12:\"退款完成\";s:4:\"temp\";s:69:\"您的订单退款已完成。退款单号@，退款金额@。【@】\";}s:11:\"returngoods\";a:2:{s:4:\"name\";s:24:\"商品退货审核通过\";s:4:\"temp\";s:92:\"您的商品退货已经审核通过，正在等待退货和退款。退货单号@。【@】\";}s:18:\"returngoodssuccess\";a:2:{s:4:\"name\";s:12:\"退货完成\";s:4:\"temp\";s:81:\"您的商品退货退款已完成。退货单号@，退货退款金额@。【@】\";}s:16:\"recommendbalance\";a:2:{s:4:\"name\";s:18:\"推荐奖励结算\";s:4:\"temp\";s:118:\"您最新的推荐推荐奖励已结算，您可以去商城用户中心的推荐有礼查看详情和提现。【@】\";}}');
INSERT INTO `pre_setting` VALUES ('msgpwd', '');
INSERT INTO `pre_setting` VALUES ('points_order_comments', '50');
INSERT INTO `pre_setting` VALUES ('points_order_max', '5');
INSERT INTO `pre_setting` VALUES ('points_order_rate', '20');
INSERT INTO `pre_setting` VALUES ('points_recommend_register', '1');
INSERT INTO `pre_setting` VALUES ('points_register', '20');
INSERT INTO `pre_setting` VALUES ('points_share_shopping', '1');
INSERT INTO `pre_setting` VALUES ('points_sign_in', '30');
INSERT INTO `pre_setting` VALUES ('record_number', '京ICP：1234567');
INSERT INTO `pre_setting` VALUES ('shop_goods', '');
INSERT INTO `pre_setting` VALUES ('shop_login', 'Common/2018-11-20/5bf3fbe56d174.png');
INSERT INTO `pre_setting` VALUES ('shop_logo', 'Common/2018-11-20/5bf3fbd837ed8.png');
INSERT INTO `pre_setting` VALUES ('shop_member', '');
INSERT INTO `pre_setting` VALUES ('shop_name', 'ShopDZ商城');
INSERT INTO `pre_setting` VALUES ('smg_login', '1');
INSERT INTO `pre_setting` VALUES ('smskey', '1223');
INSERT INTO `pre_setting` VALUES ('smssetting_submit', '1');
INSERT INTO `pre_setting` VALUES ('sms_account', '');
INSERT INTO `pre_setting` VALUES ('sms_login_password', '');
INSERT INTO `pre_setting` VALUES ('sms_password', '');
INSERT INTO `pre_setting` VALUES ('spread', 'a:5:{s:18:\"wx_withdraw_status\";i:0;s:24:\"wx_withdraw_audit_status\";i:0;s:8:\"maxprice\";s:4:\"2000\";s:8:\"minprice\";s:1:\"1\";s:7:\"content\";s:217:\"&lt;p&gt;&lt;span style=&quot;font-family: &amp;quot;microsoft yahei&amp;quot;; font-size: 14px; line-height: 25px; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;提现说明&lt;/span&gt;&lt;/p&gt;\";}');
INSERT INTO `pre_setting` VALUES ('spread_reward', 'a:3:{s:8:\"reward_1\";i:10;s:8:\"reward_2\";i:20;s:8:\"reward_3\";i:20;}');
INSERT INTO `pre_setting` VALUES ('statistics_code', '&lt;script&gt;&lt;/script&gt;');
INSERT INTO `pre_setting` VALUES ('status', 'on');
INSERT INTO `pre_setting` VALUES ('subval', '1');
INSERT INTO `pre_setting` VALUES ('url', 'wxRespons');
INSERT INTO `pre_setting` VALUES ('web_introduce', '好的商城，没那么贵！\r\n由Discuz!原班开发团队倾力打造！传统企业从线下销售转型互联网+的首选！');
INSERT INTO `pre_setting` VALUES ('web_status', '1');
INSERT INTO `pre_setting` VALUES ('wx_access_token', '');
INSERT INTO `pre_setting` VALUES ('wx_access_token_timeout', '');
INSERT INTO `pre_setting` VALUES ('wx_AppID', '');
INSERT INTO `pre_setting` VALUES ('wx_AppSecret', '');
INSERT INTO `pre_setting` VALUES ('wx_defaultresponse', '欢迎关注！');
INSERT INTO `pre_setting` VALUES ('wx_expire_time', '1472016613');
INSERT INTO `pre_setting` VALUES ('wx_JsApiTicket', '');
INSERT INTO `pre_setting` VALUES ('wx_login', 'off');
INSERT INTO `pre_setting` VALUES ('wx_lookresponse', '欢迎关注！');
INSERT INTO `pre_setting` VALUES ('wx_share', 'off');
INSERT INTO `pre_setting` VALUES ('wx_sharedesc', '');
INSERT INTO `pre_setting` VALUES ('wx_shareimg', '');
INSERT INTO `pre_setting` VALUES ('wx_sharetitle', '');

-- ----------------------------
-- Table structure for `pre_sms`
-- ----------------------------
DROP TABLE IF EXISTS `pre_sms`;
CREATE TABLE `pre_sms` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `to_id` int(11) NOT NULL DEFAULT '0' COMMENT 'ID',
  `to_name` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '',
  `from_id` int(11) NOT NULL DEFAULT '0',
  `from_name` varchar(50) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '    0     1     2      3',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '    0   1:    2:',
  `del_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '     0    1     2',
  `dateline` int(10) NOT NULL DEFAULT '0',
  `readtime` int(10) NOT NULL DEFAULT '0',
  `parent_sid` int(11) NOT NULL DEFAULT '0' COMMENT 'ID    sid',
  `message_ismore` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 0 1 ',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_sms
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_sms_cron`
-- ----------------------------
DROP TABLE IF EXISTS `pre_sms_cron`;
CREATE TABLE `pre_sms_cron` (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `mids` text NOT NULL COMMENT 'ID',
  `title` char(255) NOT NULL DEFAULT '',
  `message` char(255) NOT NULL DEFAULT '',
  `from_id` int(11) NOT NULL DEFAULT '0' COMMENT 'ID',
  `from_name` varchar(50) NOT NULL,
  `dateline` int(10) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '    0     1     2      3',
  `cron_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '    0    1',
  `crontime` int(10) NOT NULL DEFAULT '0',
  `parent_sid` int(10) NOT NULL DEFAULT '0' COMMENT 'ID    sid',
  `message_ismore` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 0 1 ',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_sms_cron
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_sms_log`
-- ----------------------------
DROP TABLE IF EXISTS `pre_sms_log`;
CREATE TABLE `pre_sms_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '记录ID',
  `log_phone` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `log_captcha` char(10) NOT NULL DEFAULT '' COMMENT '短信动态码',
  `log_ip` char(20) NOT NULL DEFAULT '' COMMENT '请求IP',
  `log_text` char(255) NOT NULL DEFAULT '' COMMENT '短信内容',
  `log_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '短信类型:1为注册,2为修改密码,3为找回密码,默认为1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `member_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID,注册为0',
  `is_use` int(2) NOT NULL DEFAULT '0' COMMENT '是否已验证 1（验证） 0（未验证）',
  PRIMARY KEY (`log_id`),
  KEY `log_phone` (`log_phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_sms_log
-- ----------------------------
INSERT INTO `pre_sms_log` VALUES ('1', '18310728440', '861517', '127.0.0.1', '您的验证码是861517，请于3分钟内正确输入。【ShopDZ商城】', '1', '1540711345', '0', '1');
INSERT INTO `pre_sms_log` VALUES ('2', '18310728440', '791424', '127.0.0.1', '您的验证码是791424，请于3分钟内正确输入。【ShopDZ商城】', '1', '1540711399', '0', '0');
INSERT INTO `pre_sms_log` VALUES ('3', '13436200979', '246832', '127.0.0.1', '您的验证码是246832，请于3分钟内正确输入。【ShopDZ商城】', '1', '1543402723', '0', '1');
INSERT INTO `pre_sms_log` VALUES ('4', '13436200979', '176986', '127.0.0.1', '您的验证码是176986，请于3分钟内正确输入。【ShopDZ商城】', '1', '1543402737', '0', '1');
INSERT INTO `pre_sms_log` VALUES ('5', '13436200979', '840917', '127.0.0.1', '您的验证码是840917，请于3分钟内正确输入。【ShopDZ商城】', '3', '1543642155', '2', '1');
INSERT INTO `pre_sms_log` VALUES ('6', '13436200979', '485317', '127.0.0.1', '您的验证码是485317，请于3分钟内正确输入。【ShopDZ商城】', '3', '1544093466', '2', '1');

-- ----------------------------
-- Table structure for `pre_sms_receipt`
-- ----------------------------
DROP TABLE IF EXISTS `pre_sms_receipt`;
CREATE TABLE `pre_sms_receipt` (
  `rid` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sid` int(10) NOT NULL DEFAULT '0' COMMENT 'ID',
  `readtime` int(10) NOT NULL DEFAULT '0',
  `read_userid` int(10) NOT NULL DEFAULT '0' COMMENT 'ID',
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_sms_receipt
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_sms_template`
-- ----------------------------
DROP TABLE IF EXISTS `pre_sms_template`;
CREATE TABLE `pre_sms_template` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '消息识别码',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '消息名',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '消息模板标题',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '消息模板内容',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '消息开启状态   1：开启   2：关闭',
  `dateline` int(10) NOT NULL DEFAULT '0' COMMENT '消息添加编辑时间',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_sms_template
-- ----------------------------
INSERT INTO `pre_sms_template` VALUES ('1', 'member_register', '会员注册', '注册成功', '尊敬的会员，您已经注册成功。', '1', '1473061038');
INSERT INTO `pre_sms_template` VALUES ('2', 'orderpayment', '订单付款提醒', '请支付您的订单', '您有一笔订单{$a}于{$b}分钟后失效，请及时支付。', '1', '0');
INSERT INTO `pre_sms_template` VALUES ('3', 'goodsout', '商品出库提醒', '您的商品已出库', '您的订单已经出库。订单编号{$a}。', '1', '0');
INSERT INTO `pre_sms_template` VALUES ('4', 'paymentsuccess', '付款成功提醒', '您的订单已付款成功', '编号为{$a}的订单款项已经收到，请留意出库通知。', '1', '0');
INSERT INTO `pre_sms_template` VALUES ('5', 'couponuse', '优惠券使用提醒', '您的优惠券已使用', '您有优惠券已经使用，优惠券编号：{$a}。', '1', '0');
INSERT INTO `pre_sms_template` VALUES ('6', 'couponexpires', '优惠券即将到期提醒', '您的优惠券即将过期', '您有一个优惠券即将在{$a}过期，请记得使用。', '1', '0');
INSERT INTO `pre_sms_template` VALUES ('7', 'refundsuccess', '订单退款成功提醒', '您的订单已退款成功', '您的订单退款已经审核通过，正在等待退款。订单编号{$a}，退款单号{$b}，退款金额{$c}。', '1', '0');
INSERT INTO `pre_sms_template` VALUES ('8', 'returngoodssuccess', '订单退货成功提醒', '您的订单已退货成功', '您的商品退货退款已完成。订单编号{$a}，退货单号{$b}，退货退款金额{$c}。', '1', '0');

-- ----------------------------
-- Table structure for `pre_spec`
-- ----------------------------
DROP TABLE IF EXISTS `pre_spec`;
CREATE TABLE `pre_spec` (
  `spec_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `spec_name` char(50) NOT NULL,
  `listorder` int(11) NOT NULL DEFAULT '0',
  `built_in` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1',
  PRIMARY KEY (`spec_id`),
  UNIQUE KEY `spec_name` (`spec_name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_spec
-- ----------------------------
INSERT INTO `pre_spec` VALUES ('1', '颜色', '0', '1');
INSERT INTO `pre_spec` VALUES ('2', '尺寸', '0', '1');
INSERT INTO `pre_spec` VALUES ('3', '规格', '0', '1');

-- ----------------------------
-- Table structure for `pre_special_item`
-- ----------------------------
DROP TABLE IF EXISTS `pre_special_item`;
CREATE TABLE `pre_special_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '专题项目编号',
  `special_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '专题编号',
  `item_type` varchar(50) NOT NULL DEFAULT '' COMMENT '项目类型',
  `item_data` varchar(2000) DEFAULT '' COMMENT '项目内容',
  `item_usable` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '项目是否可用 0-不可用 1-可用',
  `item_sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '项目排序',
  `item_name` varchar(16) NOT NULL DEFAULT '' COMMENT '类型名称',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_special_item
-- ----------------------------
INSERT INTO `pre_special_item` VALUES ('2', '0', 'adv_nav', 'a:4:{i:0;a:4:{s:3:\"img\";s:35:\"Common/2016-09-07/57cf91c1d43b2.png\";s:5:\"title\";s:6:\"首页\";s:4:\"type\";s:3:\"url\";s:4:\"data\";s:36:\"http://shopdz.shopdz.cn/wap/\";}i:1;a:4:{s:3:\"img\";s:35:\"Common/2016-09-07/57cf920969be6.png\";s:5:\"title\";s:6:\"订单\";s:4:\"type\";s:3:\"url\";s:4:\"data\";s:48:\"http://shopdz.shopdz.cn/wap/myorder.html\";}i:2;a:4:{s:3:\"img\";s:35:\"Common/2016-09-07/57cf9259f0873.png\";s:5:\"title\";s:9:\"购物车\";s:4:\"type\";s:3:\"url\";s:4:\"data\";s:47:\"http://shopdz.shopdz.cn/wap/basket.html\";}i:3;a:4:{s:3:\"img\";s:35:\"Common/2016-09-07/57cf925e7e7af.png\";s:5:\"title\";s:12:\"个人中心\";s:4:\"type\";s:3:\"url\";s:4:\"data\";s:47:\"http://shopdz.shopdz.cn/wap/member.html\";}}', '1', '255', '图文导航');
INSERT INTO `pre_special_item` VALUES ('3', '0', 'adv_html', '<div style=\"display: inline-block;width:100%;background#fff;height: 3rem;font-size: 2rem;text-align: center;line-height: 1.6;\">家居&nbsp;|<span style=\"font-size: 1.2rem;letter-spacing:1px;color: #aaa;padding-left: 5px;\">回家，放松身心</span></div>', '1', '255', '预置通栏模板');
INSERT INTO `pre_special_item` VALUES ('4', '0', 'goods', 'a:1:{s:5:\"goods\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";}}', '1', '255', '商品展示');
INSERT INTO `pre_special_item` VALUES ('5', '0', 'adv_img', '', '0', '255', '通栏图片广告');
INSERT INTO `pre_special_item` VALUES ('6', '0', '', '', '0', '0', '');

-- ----------------------------
-- Table structure for `pre_spec_value`
-- ----------------------------
DROP TABLE IF EXISTS `pre_spec_value`;
CREATE TABLE `pre_spec_value` (
  `spec_value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `spec_id` int(11) NOT NULL DEFAULT '0' COMMENT 'id',
  `spec_value` char(80) NOT NULL,
  `built_in` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1内置的不允许删除',
  PRIMARY KEY (`spec_value_id`),
  UNIQUE KEY `spec_id` (`spec_id`,`spec_value`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_spec_value
-- ----------------------------
INSERT INTO `pre_spec_value` VALUES ('1', '1', '白色', '0');
INSERT INTO `pre_spec_value` VALUES ('2', '2', 'XL', '0');
INSERT INTO `pre_spec_value` VALUES ('3', '3', '规格', '0');
INSERT INTO `pre_spec_value` VALUES ('4', '3', '太阳', '0');
INSERT INTO `pre_spec_value` VALUES ('5', '3', '紫荆', '0');
INSERT INTO `pre_spec_value` VALUES ('6', '3', '铃兰', '0');
INSERT INTO `pre_spec_value` VALUES ('7', '3', '马蹄', '0');
INSERT INTO `pre_spec_value` VALUES ('8', '1', '棕色', '0');
INSERT INTO `pre_spec_value` VALUES ('9', '1', '米色', '0');
INSERT INTO `pre_spec_value` VALUES ('10', '1', '粉色', '0');
INSERT INTO `pre_spec_value` VALUES ('11', '3', '十五格', '0');
INSERT INTO `pre_spec_value` VALUES ('12', '2', '180*180', '0');

-- ----------------------------
-- Table structure for `pre_spread`
-- ----------------------------
DROP TABLE IF EXISTS `pre_spread`;
CREATE TABLE `pre_spread` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `member_uid` int(11) NOT NULL COMMENT '会员id',
  `member_mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `member_truename` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `add_time` int(10) NOT NULL COMMENT '会员注册时间',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `order_sn` bigint(20) unsigned NOT NULL COMMENT '订单号',
  `spread_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '会员的开启状态 1为已结算 0为未结算',
  `spread_level` tinyint(1) NOT NULL DEFAULT '0' COMMENT '级别: 1级别 2级别 3级别   ',
  `spread_comminssion_rate` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '各等级佣金比例',
  `spread_state_time` int(10) NOT NULL DEFAULT '0' COMMENT '结算时间',
  `reward_amount` float(10,2) DEFAULT '0.00' COMMENT '提现金额',
  `refund_amount` float(10,2) DEFAULT '0.00' COMMENT '退款金额',
  `spread_type` tinyint(10) NOT NULL DEFAULT '0' COMMENT '0  订单数据  1 提现数据',
  `order_add_time` int(10) NOT NULL DEFAULT '0' COMMENT '订单生成时间',
  `cron_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 结算计划任务 1 60天后跑退款退货的orderid',
  `cron_time` int(10) NOT NULL DEFAULT '0' COMMENT '计划任务执行时间',
  `order_amount` float(10,2) DEFAULT '0.00' COMMENT '订单金额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`member_uid`,`order_id`) USING BTREE,
  KEY `member_id` (`member_uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_spread
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_spread_account`
-- ----------------------------
DROP TABLE IF EXISTS `pre_spread_account`;
CREATE TABLE `pre_spread_account` (
  `account_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `member_uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `member_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `all_price` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '该用户的所有提成，累计增加',
  `settlement_price` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '已经结算的钱，既是可提现的金额',
  `no_settlement_price` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '未结算的钱',
  `frozen_price` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现申请冻结的钱',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '申请时间',
  `enddate` int(10) unsigned DEFAULT '0' COMMENT '最后处理时间',
  `qrcode` varchar(20) NOT NULL DEFAULT '' COMMENT '推广的二维码地址',
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `member_uid` (`member_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_spread_account
-- ----------------------------
INSERT INTO `pre_spread_account` VALUES ('1', '1', '', '0.00', '0.00', '0.00', '0.00', '1540711532', '0', '');
INSERT INTO `pre_spread_account` VALUES ('2', '2', '', '0.00', '0.00', '0.00', '0.00', '1543402768', '0', '');

-- ----------------------------
-- Table structure for `pre_spread_bank`
-- ----------------------------
DROP TABLE IF EXISTS `pre_spread_bank`;
CREATE TABLE `pre_spread_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `bank_id` int(11) NOT NULL DEFAULT '0' COMMENT '银行id',
  `bank_no` char(35) NOT NULL DEFAULT '' COMMENT '银行卡号',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '银行名',
  `bank_name` varchar(20) NOT NULL DEFAULT '' COMMENT '银行卡真实姓名',
  `add_time` int(10) NOT NULL COMMENT '注册时间',
  `member_uid` bigint(20) unsigned NOT NULL COMMENT 'member_id',
  PRIMARY KEY (`id`),
  KEY `member_uid` (`member_uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_spread_bank
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_spread_order_cron`
-- ----------------------------
DROP TABLE IF EXISTS `pre_spread_order_cron`;
CREATE TABLE `pre_spread_order_cron` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `order_add_time` int(10) NOT NULL DEFAULT '0' COMMENT '订单生成时间',
  `add_time` int(10) NOT NULL DEFAULT '0' COMMENT '计划任务执行时间',
  `cron_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 未执行 1 已执行',
  `cron_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 新增订单 1 退款订单 2 退货订单',
  `cron_time` int(10) NOT NULL DEFAULT '0' COMMENT '计划任务执行时间',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_spread_order_cron
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_spread_withdraw_cash`
-- ----------------------------
DROP TABLE IF EXISTS `pre_spread_withdraw_cash`;
CREATE TABLE `pre_spread_withdraw_cash` (
  `cash_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cash_sn` bigint(20) unsigned NOT NULL COMMENT '申请单号',
  `member_uid` int(11) unsigned NOT NULL COMMENT '用户ID',
  `member_name` char(150) NOT NULL DEFAULT '' COMMENT '用户名',
  `member_mobile` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '管理员名',
  `bank_no` char(35) NOT NULL DEFAULT '' COMMENT '银行卡号/微信openid',
  `bank` char(25) NOT NULL DEFAULT '' COMMENT '银行名字',
  `bank_name` varchar(20) NOT NULL DEFAULT '' COMMENT '银行卡真实姓名',
  `add_time` int(10) unsigned NOT NULL COMMENT '申请时间',
  `status` enum('1','2','3','4') DEFAULT '1' COMMENT '处理状态 1-待处理 2-拒绝 3-同意  4-通过，打款失败',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '处理备注',
  `enddate` int(10) unsigned DEFAULT NULL COMMENT '处理时间',
  `cash_amount` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '提现金额',
  `notify_mark` varchar(200) NOT NULL DEFAULT '' COMMENT '退款之后通知备注',
  `type` enum('1','2') DEFAULT '1' COMMENT '提现类型 1-银行卡 2-微信',
  PRIMARY KEY (`cash_id`),
  UNIQUE KEY `cash_sn` (`cash_sn`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_spread_withdraw_cash
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_storage`
-- ----------------------------
DROP TABLE IF EXISTS `pre_storage`;
CREATE TABLE `pre_storage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `person` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `telphone` varchar(20) NOT NULL DEFAULT '',
  `add_province` int(4) NOT NULL DEFAULT '0' COMMENT 'id',
  `add_city` int(4) NOT NULL DEFAULT '0' COMMENT 'id',
  `add_dist` int(4) NOT NULL DEFAULT '0' COMMENT 'id',
  `add_community` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT ' 1',
  `ext_info` text NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_storage
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_store`
-- ----------------------------
DROP TABLE IF EXISTS `pre_store`;
CREATE TABLE `pre_store` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `store_name` varchar(50) NOT NULL COMMENT '商家名称',
  `address` varchar(200) NOT NULL COMMENT '商家地址',
  `announcement` varchar(100) DEFAULT NULL COMMENT '公告',
  `yy_time` varchar(50) DEFAULT NULL COMMENT '营业时间',
  `details` text COMMENT '商家简介',
  `store_tel` char(12) NOT NULL COMMENT '商家电话',
  `status` enum('2','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_store
-- ----------------------------
INSERT INTO `pre_store` VALUES ('26', '测试商家168', '北京大新', '', '', '', '13436200979', '1');
INSERT INTO `pre_store` VALUES ('29', '分小小', '北京', null, null, '', '13436200979', '1');

-- ----------------------------
-- Table structure for `pre_user_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `pre_user_coupon`;
CREATE TABLE `pre_user_coupon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户ID',
  `coupon_id` int(11) NOT NULL COMMENT '优惠卷ID',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '2:已使用 1：未使用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_user_coupon
-- ----------------------------
INSERT INTO `pre_user_coupon` VALUES ('84', '2', '52', '1');
INSERT INTO `pre_user_coupon` VALUES ('85', '2', '51', '1');
INSERT INTO `pre_user_coupon` VALUES ('86', '2', '50', '1');
INSERT INTO `pre_user_coupon` VALUES ('87', '2', '49', '1');

-- ----------------------------
-- Table structure for `pre_user_getdata`
-- ----------------------------
DROP TABLE IF EXISTS `pre_user_getdata`;
CREATE TABLE `pre_user_getdata` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `modename` varchar(255) DEFAULT NULL COMMENT '模块名称',
  `goodsnum` int(10) DEFAULT NULL COMMENT '商品数量',
  `shopdata` text COMMENT '商品调用数据',
  `usergetdata` text NOT NULL COMMENT '调用方式',
  `state` tinyint(1) DEFAULT '0' COMMENT '是否启用 1 启用 0 不启用',
  `dataline` int(11) DEFAULT NULL COMMENT '创建时间',
  `displayorder` int(11) DEFAULT NULL,
  `getcode` varchar(255) NOT NULL DEFAULT '' COMMENT '随机唯一码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `getcode` (`getcode`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_user_getdata
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `pre_user_token`;
CREATE TABLE `pre_user_token` (
  `token_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '令牌编号',
  `member_id` int(10) unsigned NOT NULL COMMENT '用户编号',
  `member_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `token` varchar(50) NOT NULL DEFAULT '' COMMENT '登录令牌',
  `login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `client_type` varchar(10) NOT NULL DEFAULT '' COMMENT '客户端类型 android wap',
  `openid` varchar(50) DEFAULT NULL COMMENT '微信支付jsapi的openid缓存',
  PRIMARY KEY (`token_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_user_token
-- ----------------------------
INSERT INTO `pre_user_token` VALUES ('1', '1', '18310728440', '850a4823a809636da3252e40d49fc489', '1540711532', 'wap', null);

-- ----------------------------
-- Table structure for `pre_wx_imgtext`
-- ----------------------------
DROP TABLE IF EXISTS `pre_wx_imgtext`;
CREATE TABLE `pre_wx_imgtext` (
  `tid` int(10) NOT NULL AUTO_INCREMENT,
  `modename` varchar(255) DEFAULT NULL,
  `content` text,
  `imgnum` tinyint(4) DEFAULT NULL,
  `dataline` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_wx_imgtext
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_wx_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `pre_wx_keywords`;
CREATE TABLE `pre_wx_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `keyword` char(255) DEFAULT NULL COMMENT '关键词',
  `content` text NOT NULL COMMENT '回复文本内容',
  `isimg` tinyint(1) DEFAULT NULL COMMENT '是否为图文 1 图文 0 文本',
  `tid` int(10) DEFAULT NULL COMMENT '素材模板id',
  `states` tinyint(1) DEFAULT NULL COMMENT '是否启用',
  `displayorder` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `keyword` (`keyword`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_wx_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_wx_menu`
-- ----------------------------
DROP TABLE IF EXISTS `pre_wx_menu`;
CREATE TABLE `pre_wx_menu` (
  `id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `lid` int(10) DEFAULT '0' COMMENT '分类id',
  `name` char(255) DEFAULT NULL COMMENT '菜单名称',
  `type` char(10) DEFAULT NULL COMMENT '菜单触发类型 click  view',
  `keywords` char(255) DEFAULT NULL COMMENT '关键词',
  `url` varchar(255) DEFAULT NULL COMMENT '菜单触发url',
  `displayorder` int(10) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_wx_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `pre_wx_message`
-- ----------------------------
DROP TABLE IF EXISTS `pre_wx_message`;
CREATE TABLE `pre_wx_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `states` tinyint(4) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pre_wx_message
-- ----------------------------
