/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : heimamm

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-01-14 15:03:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `heima_city`
-- ----------------------------
DROP TABLE IF EXISTS `heima_city`;
CREATE TABLE `heima_city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heima_city
-- ----------------------------
INSERT INTO `heima_city` VALUES ('1', '北京');
INSERT INTO `heima_city` VALUES ('2', '天津');
INSERT INTO `heima_city` VALUES ('3', '上海');
INSERT INTO `heima_city` VALUES ('4', '重庆');
INSERT INTO `heima_city` VALUES ('5', '河北');
INSERT INTO `heima_city` VALUES ('6', '河南');
INSERT INTO `heima_city` VALUES ('7', '云南');
INSERT INTO `heima_city` VALUES ('8', '辽宁');
INSERT INTO `heima_city` VALUES ('9', '黑龙江');
INSERT INTO `heima_city` VALUES ('10', '湖南');
INSERT INTO `heima_city` VALUES ('11', '安徽');
INSERT INTO `heima_city` VALUES ('12', '山东');
INSERT INTO `heima_city` VALUES ('13', '新疆');
INSERT INTO `heima_city` VALUES ('14', '江苏');
INSERT INTO `heima_city` VALUES ('15', '浙江');
INSERT INTO `heima_city` VALUES ('16', '江西');
INSERT INTO `heima_city` VALUES ('17', '湖北');
INSERT INTO `heima_city` VALUES ('18', '广西');
INSERT INTO `heima_city` VALUES ('19', '甘肃');
INSERT INTO `heima_city` VALUES ('20', '山西');
INSERT INTO `heima_city` VALUES ('21', '内蒙古');
INSERT INTO `heima_city` VALUES ('22', '陕西');
INSERT INTO `heima_city` VALUES ('23', '吉林');
INSERT INTO `heima_city` VALUES ('24', '福建');
INSERT INTO `heima_city` VALUES ('25', '贵州');
INSERT INTO `heima_city` VALUES ('26', '广东');
INSERT INTO `heima_city` VALUES ('27', '青海');
INSERT INTO `heima_city` VALUES ('28', '西藏');
INSERT INTO `heima_city` VALUES ('29', '四川');
INSERT INTO `heima_city` VALUES ('30', '宁夏');
INSERT INTO `heima_city` VALUES ('31', '海南');
INSERT INTO `heima_city` VALUES ('32', '台湾');
INSERT INTO `heima_city` VALUES ('33', '香港');
INSERT INTO `heima_city` VALUES ('34', '澳门');

-- ----------------------------
-- Table structure for `heima_direction`
-- ----------------------------
DROP TABLE IF EXISTS `heima_direction`;
CREATE TABLE `heima_direction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '企业简称',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='目录表';

-- ----------------------------
-- Records of heima_direction
-- ----------------------------

-- ----------------------------
-- Table structure for `heima_enterprise`
-- ----------------------------
DROP TABLE IF EXISTS `heima_enterprise`;
CREATE TABLE `heima_enterprise` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eid` varchar(255) NOT NULL DEFAULT '' COMMENT '企业编号',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '企业名称',
  `short_name` varchar(255) NOT NULL DEFAULT '' COMMENT '企业简称',
  `intro` varchar(255) NOT NULL DEFAULT '' COMMENT '企业简介',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1启用 0禁用',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='企业表';

-- ----------------------------
-- Records of heima_enterprise
-- ----------------------------
INSERT INTO `heima_enterprise` VALUES ('49', '1', '传智播客', '传智', '传智播客', '3', '传智播客', '1', '1578984734', '1578984734', '0');
INSERT INTO `heima_enterprise` VALUES ('50', '2', '黑马程序员', '黑马', '黑马', '3', '黑马', '1', '1578984758', '1578984758', '0');
INSERT INTO `heima_enterprise` VALUES ('51', '3', '阿里巴巴', '阿里', '阿里', '3', '阿里', '1', '1578984775', '1578984775', '0');

-- ----------------------------
-- Table structure for `heima_options`
-- ----------------------------
DROP TABLE IF EXISTS `heima_options`;
CREATE TABLE `heima_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL DEFAULT '0' COMMENT '题目id',
  `label` char(1) NOT NULL DEFAULT 'A' COMMENT '选项 A、B、C、D',
  `text` varchar(255) NOT NULL DEFAULT '' COMMENT '选项说明',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '图片地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=785 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heima_options
-- ----------------------------
INSERT INTO `heima_options` VALUES ('781', '91', 'A', '$(dom)形式可以将dom对象转换为jQuery对象', 'upload/20191129/fd5f03a07d95e3948860240564b180e4.jpeg');
INSERT INTO `heima_options` VALUES ('782', '91', 'B', 'dom与jQuery对象没有关系', 'upload/20191129/e93e7bb72accda7f3159cdabc4203991.jpeg');
INSERT INTO `heima_options` VALUES ('783', '91', 'C', 'dom对象可以直接调用jQuery下的方法', 'upload/20191129/b7caf98be9d0aa6764b0112ba0dfa19e.jpeg');
INSERT INTO `heima_options` VALUES ('784', '91', 'D', 'jQuery对象可以直接调用dom对象下的方法', 'upload/20191129/4067f19ab53a5e8388ad3459e23110f0.jpeg');

-- ----------------------------
-- Table structure for `heima_questions`
-- ----------------------------
DROP TABLE IF EXISTS `heima_questions`;
CREATE TABLE `heima_questions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `subject` int(11) NOT NULL DEFAULT '0' COMMENT '学科id',
  `step` tinyint(4) NOT NULL DEFAULT '1' COMMENT '阶段1、初级 2、中级 3、高级',
  `enterprise` int(11) NOT NULL DEFAULT '0' COMMENT '企业id',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '省市',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '题型 1单选 、2多选 、3简答',
  `difficulty` tinyint(4) NOT NULL DEFAULT '1' COMMENT '题目难度 1简单 、2一般 、3困难',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1正常 0禁用',
  `reads` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '创建者id',
  `single_select_answer` char(1) NOT NULL DEFAULT '' COMMENT '单选答案',
  `multiple_select_answer` char(20) NOT NULL DEFAULT '' COMMENT '多选答案',
  `short_answer` text COMMENT '简答题答案',
  `video` varchar(255) NOT NULL DEFAULT '' COMMENT '解析视频地址',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `answer_analyze` text COMMENT '答案解析',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heima_questions
-- ----------------------------
INSERT INTO `heima_questions` VALUES ('91', '<p>dom与jQuery对象的说法正确的是？</p>', '97', '1', '50', '440000,440300,440306', '1', '1', '1', '0', '3', 'A', '', null, '', 'jQuery对象是dom对象之间的关系', '<p>jQuery对象是dom对象的集合可以使用</p><p>$(dom)将dom对象转换为jQuery对象。使用jquery[序号]获取到dom对象</p><p><br></p>', '1578985065', '1578985065', '0');

-- ----------------------------
-- Table structure for `heima_role`
-- ----------------------------
DROP TABLE IF EXISTS `heima_role`;
CREATE TABLE `heima_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` char(10) NOT NULL DEFAULT '学生' COMMENT '角色名称',
  `rule_ids` varchar(255) NOT NULL DEFAULT '' COMMENT '角色权限',
  `is_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heima_role
-- ----------------------------
INSERT INTO `heima_role` VALUES ('1', '超级管理员', '', '0', '0', '0');
INSERT INTO `heima_role` VALUES ('2', '管理员', '', '0', '0', '0');
INSERT INTO `heima_role` VALUES ('3', '老师', '', '0', '0', '0');
INSERT INTO `heima_role` VALUES ('4', '学生', '', '0', '0', '0');

-- ----------------------------
-- Table structure for `heima_subject`
-- ----------------------------
DROP TABLE IF EXISTS `heima_subject`;
CREATE TABLE `heima_subject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` varchar(255) NOT NULL DEFAULT '' COMMENT '学科编号',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '学科名称',
  `short_name` varchar(255) NOT NULL DEFAULT '' COMMENT '学科检查',
  `intro` varchar(255) NOT NULL DEFAULT '' COMMENT '学科简介',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1启用 0禁用',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='学科表';

-- ----------------------------
-- Records of heima_subject
-- ----------------------------
INSERT INTO `heima_subject` VALUES ('97', 'QD001', '前段与移动开发', '前段', '前段与移动开发', '3', '', '1', '1578984566', '1578984578', '0');
INSERT INTO `heima_subject` VALUES ('98', 'JAVA001', 'JavaWeb', 'JavaWeb', 'JavaWeb', '3', 'JavaWeb', '1', '1578984672', '1578984672', '0');

-- ----------------------------
-- Table structure for `heima_user`
-- ----------------------------
DROP TABLE IF EXISTS `heima_user`;
CREATE TABLE `heima_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `phone` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` char(6) NOT NULL DEFAULT '' COMMENT '加密盐',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 1启用 0禁用',
  `role_id` int(4) NOT NULL DEFAULT '2' COMMENT '角色',
  `is_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除  1删除 0正常',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of heima_user
-- ----------------------------
INSERT INTO `heima_user` VALUES ('1', '18511111111', '18511111111@qq.com', '18511111111', '2f96a71deb945a160f885562ab0e42d2', '2745', 'upload/20200114/53043f648b360ac32398c365d9c4d2db.jpg', '初始超级管理员', '1', '1', '0', '1578984111', '1578984111');
INSERT INTO `heima_user` VALUES ('2', '18522222222', '18522222222@qq.com', '18522222222', 'c81a398012f3da4d66e83233fa511b5a', '2854', '', '初始管理员', '1', '2', '0', '1578984189', '1578984189');
INSERT INTO `heima_user` VALUES ('3', 'phper_leo', 'phper_leo@163.com', '18520409113', '6d0370af18250e1f242e8e6bf9ce078a', '4473', 'upload/20200114/53043f648b360ac32398c365d9c4d2db.jpg', '初始管理员', '1', '1', '0', '1578983974', '1578983974');
