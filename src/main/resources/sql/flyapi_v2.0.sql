/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.22
Source Server Version : 50513
Source Host           : localhost:3306
Source Database       : flyapi_v2.0

Target Server Type    : MYSQL
Target Server Version : 50513
File Encoding         : 65001

Date: 2016-11-16 16:37:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fly_comments
-- ----------------------------
DROP TABLE IF EXISTS `fly_comments`;
CREATE TABLE `fly_comments` (
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '评论人',
  `content` varchar(255) NOT NULL COMMENT '评论内容',
  `interface_id` int(11) DEFAULT '0' COMMENT '接口id',
  `target_id` int(11) DEFAULT NULL COMMENT '被回复人id',
  `create_time` datetime NOT NULL,
  `is_delete` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fly_data_base
-- ----------------------------
DROP TABLE IF EXISTS `fly_data_base`;
CREATE TABLE `fly_data_base` (
  `db_id` int(11) NOT NULL AUTO_INCREMENT,
  `db_url` varchar(100) NOT NULL,
  `db_name` varchar(50) NOT NULL,
  `db_root` varchar(10) NOT NULL,
  `db_password` varchar(20) NOT NULL,
  `db_driver` varchar(50) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fly_interfaces
-- ----------------------------
DROP TABLE IF EXISTS `fly_interfaces`;
CREATE TABLE `fly_interfaces` (
  `interface_id` int(11) NOT NULL AUTO_INCREMENT,
  `inter_name` varchar(50) NOT NULL DEFAULT '' COMMENT '接口名称',
  `inter_des` varchar(255) DEFAULT '' COMMENT '接口描述',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0可用1废弃',
  `inter_url` varchar(255) NOT NULL DEFAULT '' COMMENT '接口地址',
  `method` varchar(10) NOT NULL DEFAULT '' COMMENT '请求方式',
  `param` text COMMENT '请求参数',
  `request_exam` text COMMENT '请求示例',
  `response_param` text COMMENT '返回参数说明',
  `true_exam` text COMMENT '返回成功示例',
  `false_exam` text COMMENT '返回失败示例',
  `create_time` datetime DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `module_id` int(11) DEFAULT NULL,
  `creator` int(11) NOT NULL COMMENT '创建者',
  `is_delete` int(1) NOT NULL DEFAULT '0' COMMENT '0显示1不显示',
  PRIMARY KEY (`interface_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fly_module
-- ----------------------------
DROP TABLE IF EXISTS `fly_module`;
CREATE TABLE `fly_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(50) NOT NULL COMMENT '模块名称',
  `module_des` varchar(255) DEFAULT NULL COMMENT '描述',
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_detele` int(2) NOT NULL DEFAULT '0' COMMENT '0可用1不可用',
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fly_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `fly_operate_log`;
CREATE TABLE `fly_operate_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL COMMENT '项目名',
  `user_name` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operate_type` varchar(20) NOT NULL COMMENT '操作类型：update,insert,delete,select',
  `model_class` varchar(20) NOT NULL COMMENT '模块：project,module,interface',
  `model_name` varchar(20) DEFAULT NULL COMMENT '模块名：某项目，某模块，某接口',
  `remark` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` int(2) NOT NULL DEFAULT '0' COMMENT '0可用1不可用',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8 COMMENT='操作日志表';

-- ----------------------------
-- Table structure for fly_project
-- ----------------------------
DROP TABLE IF EXISTS `fly_project`;
CREATE TABLE `fly_project` (
  `project_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目编号',
  `pro_name` varchar(100) NOT NULL COMMENT '项目名称',
  `pro_des` varchar(255) NOT NULL COMMENT '项目描述',
  `pro_version` varchar(10) NOT NULL COMMENT '版本号',
  `target_count` int(11) NOT NULL DEFAULT '100' COMMENT '预计接口数量',
  `done_count` int(11) NOT NULL DEFAULT '0' COMMENT '完成接口数量',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` int(2) DEFAULT '0' COMMENT '0可用1不可用',
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='项目表';

-- ----------------------------
-- Table structure for fly_table_info
-- ----------------------------
DROP TABLE IF EXISTS `fly_table_info`;
CREATE TABLE `fly_table_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `db_id` int(11) NOT NULL,
  `TABLE_SCHEMA` varchar(255) DEFAULT NULL,
  `TABLE_NAME` varchar(255) DEFAULT NULL,
  `COLUMN_NAME` varchar(255) DEFAULT NULL,
  `IS_NULLABLE` varchar(10) DEFAULT NULL,
  `COLUMN_TYPE` varchar(255) DEFAULT NULL,
  `COLUMN_KEY` varchar(255) DEFAULT NULL,
  `COLUMN_DEFAULT` varchar(255) DEFAULT NULL,
  `COLUMN_COMMENT` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for fly_user
-- ----------------------------
DROP TABLE IF EXISTS `fly_user`;
CREATE TABLE `fly_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `avatar_url` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `sex` int(2) DEFAULT '0' COMMENT '0女1男',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `company` varchar(255) DEFAULT NULL COMMENT '公司',
  `login_ip` varchar(50) NOT NULL COMMENT '登录Ip',
  `login_count` int(11) NOT NULL DEFAULT '0' COMMENT '登录次数',
  `create_time` datetime NOT NULL COMMENT '注册时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后登录时间',
  `is_delete` int(2) NOT NULL DEFAULT '0' COMMENT '0可用1不可用',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Table structure for fly_user_project
-- ----------------------------
DROP TABLE IF EXISTS `fly_user_project`;
CREATE TABLE `fly_user_project` (
  `up_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `project_id` int(11) NOT NULL COMMENT '项目id',
  `is_edit` int(2) NOT NULL DEFAULT '1' COMMENT '0可读1可编辑',
  `is_creator` int(2) NOT NULL COMMENT '是否创建者（0否，1是）',
  `create_time` datetime DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` int(2) NOT NULL DEFAULT '0' COMMENT '0可用1不可用',
  PRIMARY KEY (`up_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
