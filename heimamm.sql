/*
Navicat MySQL Data Transfer

Source Server         : 172.16.0.190
Source Server Version : 50562
Source Host           : 172.16.0.190:3306
Source Database       : heimamm

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-11-10 12:11:47
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
  `tag` varchar(255) NOT NULL DEFAULT '' COMMENT '企业所属领域',
  `creater` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1启用 0禁用',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='企业表';

-- ----------------------------
-- Records of heima_enterprise
-- ----------------------------
INSERT INTO `heima_enterprise` VALUES ('15', 'HM001', '黑马程序员', '黑马', '黑马程序员输出基地', '互联网', '48', '企业备注', '1', '1573145279', '1573145296', '0');
INSERT INTO `heima_enterprise` VALUES ('16', 'FN1002', '阿里巴巴', '阿里', '互联网巨头', '金融', '49', '互联网巨头', '1', '1573153653', '1573153653', '0');
INSERT INTO `heima_enterprise` VALUES ('17', 'FN003', '京东', '京东', '', '互联网', '49', '', '1', '1573153749', '1573153749', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heima_options
-- ----------------------------
INSERT INTO `heima_options` VALUES ('97', '27', 'A', 'cookie存储在客户端', '');
INSERT INTO `heima_options` VALUES ('98', '27', 'B', 'session存储在服务端', '');
INSERT INTO `heima_options` VALUES ('99', '27', 'C', 'cookie禁用后session不能使用', '');
INSERT INTO `heima_options` VALUES ('100', '27', 'D', 'cookie禁用后session可以通过localstorage存储标识', '');
INSERT INTO `heima_options` VALUES ('110', '28', 'B', '有道理', 'upload/20191108/9d4ec34b6208445df5438126e6c7b213.jpg');
INSERT INTO `heima_options` VALUES ('109', '28', 'A', '不错', 'upload/20191108/c812b7457d79c7917a56fccbf48993c6.jpg');
INSERT INTO `heima_options` VALUES ('111', '28', 'C', '扯淡', '');
INSERT INTO `heima_options` VALUES ('112', '28', 'D', '不信', '');
INSERT INTO `heima_options` VALUES ('113', '30', 'A', '继续饿', '');
INSERT INTO `heima_options` VALUES ('114', '30', 'B', '很饿', '');
INSERT INTO `heima_options` VALUES ('115', '30', 'C', '饿着吧', '');
INSERT INTO `heima_options` VALUES ('116', '30', 'D', '饿死你', '');
INSERT INTO `heima_options` VALUES ('117', '31', 'A', '1', '');
INSERT INTO `heima_options` VALUES ('118', '31', 'B', '2', '');
INSERT INTO `heima_options` VALUES ('119', '31', 'C', '3', '');
INSERT INTO `heima_options` VALUES ('120', '31', 'D', '4', '');

-- ----------------------------
-- Table structure for `heima_questions`
-- ----------------------------
DROP TABLE IF EXISTS `heima_questions`;
CREATE TABLE `heima_questions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `subject` int(11) NOT NULL DEFAULT '0' COMMENT '学科id',
  `step` varchar(11) NOT NULL DEFAULT '' COMMENT '阶段',
  `tag` varchar(255) NOT NULL DEFAULT '' COMMENT '领域',
  `enterprise` int(11) NOT NULL DEFAULT '0' COMMENT '企业id',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '省市',
  `type` char(4) NOT NULL DEFAULT '' COMMENT '题型 单选 、多选 、简答',
  `difficulty` char(4) NOT NULL DEFAULT '' COMMENT '题目难度 简单 、一般 、困难',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1整除 0禁用',
  `reads` int(11) NOT NULL DEFAULT '0',
  `creater` int(11) NOT NULL DEFAULT '0' COMMENT '创建者id',
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
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of heima_questions
-- ----------------------------
INSERT INTO `heima_questions` VALUES ('27', '<p>cookie与session的区别	</p>', '11', '初级', '', '15', '北京市,市辖区', '多选', '简单', '1', '0', '48', '', 'A,B,D', null, 'upload/20191108/7ee070301cb187c9e494cb687950072a.mp4', 'session与cookie', '<p>cookie是存储在客户端，session存储在服务端，但是session是基于cookie的基础之上所实现，借助于http协议中的头信息完成</p>', '1573145987', '1573145987', '0');
INSERT INTO `heima_questions` VALUES ('28', '<p>我们为什么要学习前端呢?挣钱!</p>', '11', '初级', '', '15', '河北省,秦皇岛市', '多选', '困难', '1', '0', '47', '', 'A,B', null, 'upload/20191108/fe4a137cc3cfcb9c2494e28dd3ff4de4.mp4', '加油学习', '<p>好好学习</p>', '1573146374', '1573146699', '0');
INSERT INTO `heima_questions` VALUES ('29', '<p>好困!</p>', '11', '中级', '', '16', '河北省,秦皇岛市', '简答', '困难', '1', '0', '49', '', '', '困就困!', 'upload/20191108/275ae3387c690d7870006e6f770b3a5e.mp4', '有点困!', '<p>继续困!</p>', '1573153700', '1573153700', '0');
INSERT INTO `heima_questions` VALUES ('30', '<p>好饿!</p>', '11', '初级', '', '17', '天津市,市辖区', '单选', '简单', '1', '0', '49', 'A', '', null, '', '有点饿', '<p>还是饿</p>', '1573153796', '1573153796', '0');
INSERT INTO `heima_questions` VALUES ('31', '<p>22222</p>', '12', '中级', '', '17', '北京市,市辖区', '单选', '简单', '1', '0', '48', 'A', '', null, 'upload/20191108/5d9b17bb56e38df5ea79a0b43705198a.mp4', '666666', '<p>55555</p>', '1573155177', '1573155177', '0');
INSERT INTO `heima_questions` VALUES ('32', 'js原型链', '12', '中级', '', '16', '天津市,市辖区', '简答', '一般', '1', '0', '48', '', '', 'js原型链', 'upload/20191108/6972cd6aea7bfc4c80914c34770faf16.mp4', 'js原型链', '<p>55555</p>', '1573155259', '1573155259', '0');
INSERT INTO `heima_questions` VALUES ('33', '<p>js原型链标题</p>', '12', '中级', '', '16', '北京市,市辖区', '简答', '简单', '1', '0', '48', '', '', 'js原型链答案', 'upload/20191108/70c80c723415480f0eacd19df75eca84.mp4', 'js原型链备注', '<p>js原型链答案解析</p>', '1573155371', '1573155371', '0');

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
  `creater` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建者ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 1启用 0禁用',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `is_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='学科表';

-- ----------------------------
-- Records of heima_subject
-- ----------------------------
INSERT INTO `heima_subject` VALUES ('11', 'QD001', '前端与移动开发', '前端', '前端与移动开发2', '48', '学科备注', '1', '1573145610', '1573145641', '0');
INSERT INTO `heima_subject` VALUES ('12', 'JV002', 'JavaScript', 'JavaScript', 'JavaScript', '48', 'JavaScript备注', '1', '1573154926', '1573154926', '0');

-- ----------------------------
-- Table structure for `heima_user`
-- ----------------------------
DROP TABLE IF EXISTS `heima_user`;
CREATE TABLE `heima_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '' COMMENT '昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `phone` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` char(6) NOT NULL DEFAULT '' COMMENT '加密盐',
  `avatar` varchar(255) NOT NULL DEFAULT 'face.jpg' COMMENT '头像',
  `origin` char(4) NOT NULL DEFAULT '前台' COMMENT '来源',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态 1启用 0禁用',
  `role` char(4) NOT NULL DEFAULT '学生' COMMENT '角色 学生、 老师、管理员',
  `is_del` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除  1删除 0正常',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of heima_user
-- ----------------------------
INSERT INTO `heima_user` VALUES ('47', '贺鹏程', 'buhe@qq.com', '19926586810', '3af6a6f2d913f877ead2949a325a5614', '2141', 'upload/20191108/ecb399608a1f9e02790b9b6ae1169641.JPG', '前台', '', '1', '管理员', '0', '2019', '1573143710');
INSERT INTO `heima_user` VALUES ('48', '刘洋洋', 'phper_leo@163.com', '18520409113', '9eb877d6b4ca4ddd9de9114c84327bdd', '5414', 'upload/20191108/999e627275f0efdbc2a335844c2dbf99.jpg', '前台', '备注信息', '1', '管理员', '0', '1970', '1573145224');
INSERT INTO `heima_user` VALUES ('49', '老贺', 'laohe@qq.com', '19926586899', 'ef05398382a9c21e467aa5c7dbc745ed', '5260', 'upload/20191108/9e3e4ce939f71964cd4d25facfcb81ad.jpeg', '前台', '', '1', '学生', '1', '1573153573', '1573181927');
INSERT INTO `heima_user` VALUES ('50', '盐焗西兰花', '123@qq.com', '18666275538', '2083508f618229231e43470025d4e4c9', '7360', 'face.jpg', '前台', '', '1', '学生', '0', '1573174510', '1573174551');
INSERT INTO `heima_user` VALUES ('51', '杰克', 'highven.wang@qq.com', '18666097147', '60f97829d8c1240568fe683f7c683420', '5451', 'face.jpg', '前台', '', '0', '学生', '0', '1573188776', '1573188776');
INSERT INTO `heima_user` VALUES ('52', '胡凌皓', '123456@qq.com', '18666666666', '48baee093d0365b43005754b20d12b33', '4604', 'face.jpg', '后台', '测试账号', '1', '老师', '1', '1573358906', '1573358981');
