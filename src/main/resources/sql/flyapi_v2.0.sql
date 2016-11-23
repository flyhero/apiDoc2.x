/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.22
Source Server Version : 50513
Source Host           : localhost:3306
Source Database       : flyapi_v2.0

Target Server Type    : MYSQL
Target Server Version : 50513
File Encoding         : 65001

Date: 2016-11-23 14:44:04
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
-- Records of fly_comments
-- ----------------------------

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
  `update_way` int(11) DEFAULT NULL COMMENT '1.每天2.每周3.每月4.不更新',
  `update_day` int(2) DEFAULT NULL COMMENT '每月中的几号',
  `update_week` varchar(10) DEFAULT NULL COMMENT '每周中的周几',
  `update_hour` varchar(10) DEFAULT NULL COMMENT '具体的时分秒',
  `create_time` datetime NOT NULL,
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fly_data_base
-- ----------------------------

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
  `content` text,
  `is_delete` int(1) NOT NULL DEFAULT '0' COMMENT '0显示1不显示',
  PRIMARY KEY (`interface_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fly_interfaces
-- ----------------------------
INSERT INTO `fly_interfaces` VALUES ('1', '获取我的项目', '测试一下', '0', 'http://192.168.1.217:8080/flyapi/project/findUserProject.do', 'POST', '[{\"name\":\"userId\",\"isTrue\":\"true\",\"interType\":\"int\",\"des\":\"用户id\",\"state\":true}]', '{\n   \"userId\":1\n}', '{\n	\"description\":\"大学生发布的讲座\",\n	\"projectId\":1,\n	\"projectName\":\"讲座来了\",\n	\"projectVersion\":\"V1.0\"\n}', '{\n	\"msg\":\"ok\",\n	\"status\":200,\n	\"data\":\"\",\n}', '{\n	\"msg\":\"error\",\n	\"status\":200,\n	\"data\":\"\",\n}', '2016-11-16 10:26:13', '2016-11-16 10:26:15', '1', '2', null, '0');
INSERT INTO `fly_interfaces` VALUES ('2', '接口2', '测试', '0', 'http://192.168.1.217:8080/flyapi/project/findUserProject.do', 'GET', '[{\"name\":\"userId\",\"isTrue\":\"true\",\"interType\":\"int\",\"des\":\"用户id\",\"state\":true}]', '{\n   \"userId\":1\n}', '{\n	\"description\":\"大学生发布的讲座\",\n	\"projectId\":1,\n	\"projectName\":\"讲座来了\",\n	\"projectVersion\":\"V1.0\"\n}', '{\n	\"msg\":\"ok\",\n	\"status\":200,\n	\"data\":\"\",\n}', '{\n	\"msg\":\"error\",\n	\"status\":200,\n	\"data\":\"\",\n}', '2016-11-18 15:40:35', '2016-11-18 15:41:01', '1', '2', null, '0');
INSERT INTO `fly_interfaces` VALUES ('3', '景点推荐', '推荐一些新的好的景点', '0', 'http://localhost:8080/flyapi/forward/new_interfaces.html', 'POST', '[{\"name\":\"userId\",\"isTrue\":\"true\",\"interType\":\"int\",\"des\":\"用户编号\",\"state\":true}]', '{\n    “userId”：1\n}', '{\n	\"description\":\"大学生发布的讲座\",\n	\"projectId\":1,\n	\"projectName\":\"讲座来了\",\n	\"projectVersion\":\"V1.0\"\n}', '{\n	\"msg\":\"success\",\n	\"status\":200,\n	\"data\":\"\",\n}', '{\n	\"msg\":\"error\",\n	\"status\":404,\n	\"data\":\"\",\n}', '2016-11-21 12:56:43', null, '2', '2', '                # 支撑起整个互联网时代的 7 款开源软件\n				', '0');
INSERT INTO `fly_interfaces` VALUES ('4', '推荐景点', '这是对用户推荐的景点', '0', 'http://localhost:8080/flyapi/forward/new_interfaces.html', 'POST', '[{\"name\":\"id\",\"isTrue\":\"true\",\"interType\":\"int\",\"des\":\"描述\",\"state\":true}]', '{\n    \"id\":1\n}', '{\n    \"id\":1\n}', '{\n    \"id\":1\n}', '{\n    \"id\":1\n}', '2016-11-21 13:02:48', null, '2', '2', '                # 支撑起整个互联网时代的 7 款开源软件\n				', '0');
INSERT INTO `fly_interfaces` VALUES ('5', '推荐经景点', '这是为用户推荐的景点', '0', 'http://localhost:8080/flyapi/forward/new_interfaces.html', 'POST', '[{\"name\":\"id\",\"isTrue\":\"true\",\"interType\":\"int\",\"des\":\"描述\",\"state\":true}]', '{\n    \"id\":1\n}', '{\n    \"id\":1\n}', '', '{\n    \"id\":1\n}', '2016-11-21 13:06:04', null, '2', '2', '                # 支撑起整个互联网时代的 7 款开源软件\n				', '0');
INSERT INTO `fly_interfaces` VALUES ('6', '景点推荐', '这是对用户推荐景点', '0', 'http://localhost:8080/flyapi/forward/new_interfaces.html', 'POST', '[{\"name\":\"id\",\"isTrue\":\"true\",\"interType\":\"int\",\"des\":\"描述\",\"state\":true}]', '{\n    \"id\":1\n}', '{\n    \"id\":1\n}', '{\n    \"id\":1\n}', '{\n    \"id\":1\n}', '2016-11-21 13:10:37', null, '1', '2', '                # 支撑起整个互联网时代的 7 款开源软件\n				', '0');
INSERT INTO `fly_interfaces` VALUES ('7', 'qweqweqw', 'eweferfgsf', '0', 'http://localhost:8080/flyapi/forward/new_interfaces.html', 'POST', '[{\"name\":\"描述\",\"isTrue\":\"true\",\"interType\":\"int\",\"des\":\"描述\",\"state\":true}]', '{\n    \"\"id\":1\n}', '{\n    \"\"id\":1\n}', '{\n    \"\"id\":1\n}', '{\n    \"\"id\":1\n}', '2016-11-21 13:18:27', null, '2', '2', '                # 支撑起整个互联网时代的 7 款开源软件\n				', '0');
INSERT INTO `fly_interfaces` VALUES ('8', '撒旦法撒旦', '撒旦法是', '0', '是发达啊', 'POST', '[{\"name\":\"描述\",\"isTrue\":\"true\",\"interType\":\"int\",\"des\":\"描述\",\"state\":true}]', '烦死哒', '我师傅说', '撒旦法撒旦', '是打发十大', '2016-11-22 10:34:02', null, '1', '2', null, '0');
INSERT INTO `fly_interfaces` VALUES ('9', '十多个第三方', '阿斯顿发生的', '0', '撒打发士大夫撒的', 'POST', '[{\"name\":\"描述\",\"isTrue\":\"true\",\"interType\":\"int\",\"des\":\"描述\",\"state\":true}]', '多个', '第三方十大', '沙发是', '是打发是', '2016-11-22 10:36:52', null, '1', '2', null, '0');
INSERT INTO `fly_interfaces` VALUES ('10', '士大夫撒旦法', '是打发是', '0', '是对方发送', 'POST', '[{\"name\":\"描述\",\"isTrue\":\"true\",\"interType\":\"int\",\"des\":\"描述\",\"state\":true}]', '是打发', '是短发是', '是打发', '是发达', '2016-11-22 10:37:52', null, '1', '2', null, '0');
INSERT INTO `fly_interfaces` VALUES ('11', '的方式告诉对方', '东方广东省', '0', '对方告诉对方', 'POST', '[{\"name\":\"描述\",\"isTrue\":\"true\",\"interType\":\"int\",\"des\":\"描述\",\"state\":true}]', '撒旦法', '沙发', '撒旦法', '撒旦法', '2016-11-22 10:39:38', null, '1', '2', null, '0');
INSERT INTO `fly_interfaces` VALUES ('12', '排行榜', '对用户积分进行排行', '0', 'http://localhost:8080/flyapi/forward/new_interfaces.html', 'POST', '[{\"name\":\"userId\",\"isTrue\":\"true\",\"interType\":\"int\",\"des\":\"描述\",\"state\":true}]', '{\n	\"msg\":\"error\",\n	\"status\":404,\n	\"data\":\"\",\n}', '{\n	\"msg\":\"error\",\n	\"status\":404,\n	\"data\":\"\",\n}', '{\n	\"msg\":\"error\",\n	\"status\":404,\n	\"data\":\"\",\n}', '{\n	\"msg\":\"error\",\n	\"status\":404,\n	\"data\":\"\",\n}', '2016-11-22 11:23:11', null, '1', '2', '<h1 id=\"h1-u6392u884Cu699C\"><a name=\"排行榜\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>排行榜</h1><p>[TOCM]<br>[TOC]</p>\n<h2 id=\"h2-u529Fu80FDu8BF4u660E\"><a name=\"功能说明\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>功能说明</h2><h3 id=\"h3-u63A5u53E3u540Du79F0\"><a name=\"接口名称\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>接口名称</h3><p>排行榜</p>\n<h3 id=\"h3-u63A5u53E3u63CFu8FF0\"><a name=\"接口描述\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>接口描述</h3><p>对用户积分进行排行</p>\n<h3 id=\"h3-u63A5u53E3u72B6u6001\"><a name=\"接口状态\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>接口状态</h3><p>可用</p>\n<h2 id=\"h2-u8C03u7528u8BF4u660E\"><a name=\"调用说明\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>调用说明</h2><h3 id=\"h3-u8C03u7528u5730u5740\"><a name=\"调用地址\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>调用地址</h3><p><a href=\"http://localhost:8080/flyapi/forward/new_interfaces.html\">http://localhost:8080/flyapi/forward/new_interfaces.html</a></p>\n<h3 id=\"h3-u8BF7u6C42u65B9u5F0F\"><a name=\"请求方式\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>请求方式</h3><p>POST</p>\n<h3 id=\"h3-u8BF7u6C42u53C2u6570\"><a name=\"请求参数\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>请求参数</h3><table>\n<thead>\n<tr>\n<th>名称</th>\n<th>是否必须</th>\n<th>类型</th>\n<th>说明</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>userId</td>\n<td>undefined</td>\n<td>int</td>\n<td>描述</td>\n</tr>\n</tbody>\n</table>\n', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fly_module
-- ----------------------------
INSERT INTO `fly_module` VALUES ('1', '首页', '推荐一些活动的主页', '11', '2016-11-15 13:10:52', null, '0');
INSERT INTO `fly_module` VALUES ('2', '发现', '发现新鲜事物', '11', '2016-11-16 10:57:23', null, '0');
INSERT INTO `fly_module` VALUES ('3', '测试模块', '这是测试的', '15', '2016-11-22 16:51:54', null, '0');

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
  `content` text,
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` int(2) NOT NULL DEFAULT '0' COMMENT '0可用1不可用',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8 COMMENT='操作日志表';

-- ----------------------------
-- Records of fly_operate_log
-- ----------------------------
INSERT INTO `fly_operate_log` VALUES ('1', '1', '0', null, 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 13:05:27', '0');
INSERT INTO `fly_operate_log` VALUES ('2', '1', '0', null, 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 13:09:41', '0');
INSERT INTO `fly_operate_log` VALUES ('3', '1', '0', null, 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 13:27:42', '0');
INSERT INTO `fly_operate_log` VALUES ('4', '1', '0', null, 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 14:16:55', '0');
INSERT INTO `fly_operate_log` VALUES ('5', '1', '0', null, 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 14:17:27', '0');
INSERT INTO `fly_operate_log` VALUES ('6', '1', '0', null, 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 14:25:16', '0');
INSERT INTO `fly_operate_log` VALUES ('7', '1', '0', null, 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 14:31:53', '0');
INSERT INTO `fly_operate_log` VALUES ('8', '1', '0', null, 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 14:36:37', '0');
INSERT INTO `fly_operate_log` VALUES ('9', '1', '0', null, 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 14:37:19', '0');
INSERT INTO `fly_operate_log` VALUES ('10', '1', '0', null, 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 14:45:13', '0');
INSERT INTO `fly_operate_log` VALUES ('11', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 15:20:39', '0');
INSERT INTO `fly_operate_log` VALUES ('12', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 15:22:02', '0');
INSERT INTO `fly_operate_log` VALUES ('13', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 15:25:52', '0');
INSERT INTO `fly_operate_log` VALUES ('14', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 15:31:45', '0');
INSERT INTO `fly_operate_log` VALUES ('15', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 15:32:17', '0');
INSERT INTO `fly_operate_log` VALUES ('16', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 15:33:38', '0');
INSERT INTO `fly_operate_log` VALUES ('17', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 15:56:16', '0');
INSERT INTO `fly_operate_log` VALUES ('18', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 15:57:43', '0');
INSERT INTO `fly_operate_log` VALUES ('19', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:02:23', '0');
INSERT INTO `fly_operate_log` VALUES ('20', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:04:45', '0');
INSERT INTO `fly_operate_log` VALUES ('21', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:06:37', '0');
INSERT INTO `fly_operate_log` VALUES ('22', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:11:44', '0');
INSERT INTO `fly_operate_log` VALUES ('23', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:15:29', '0');
INSERT INTO `fly_operate_log` VALUES ('24', '1', '1', 'flyhero', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":1,\"userId\":1}', '2016-11-09 16:15:39', '0');
INSERT INTO `fly_operate_log` VALUES ('25', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:16:00', '0');
INSERT INTO `fly_operate_log` VALUES ('26', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:17:52', '0');
INSERT INTO `fly_operate_log` VALUES ('27', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:18:45', '0');
INSERT INTO `fly_operate_log` VALUES ('28', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:19:49', '0');
INSERT INTO `fly_operate_log` VALUES ('29', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:20:24', '0');
INSERT INTO `fly_operate_log` VALUES ('30', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:21:23', '0');
INSERT INTO `fly_operate_log` VALUES ('31', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:27:08', '0');
INSERT INTO `fly_operate_log` VALUES ('32', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:30:43', '0');
INSERT INTO `fly_operate_log` VALUES ('33', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:31:25', '0');
INSERT INTO `fly_operate_log` VALUES ('34', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:34:11', '0');
INSERT INTO `fly_operate_log` VALUES ('35', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:38:01', '0');
INSERT INTO `fly_operate_log` VALUES ('36', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:40:13', '0');
INSERT INTO `fly_operate_log` VALUES ('37', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:45:13', '0');
INSERT INTO `fly_operate_log` VALUES ('38', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:45:39', '0');
INSERT INTO `fly_operate_log` VALUES ('39', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 16:48:31', '0');
INSERT INTO `fly_operate_log` VALUES ('40', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 17:00:52', '0');
INSERT INTO `fly_operate_log` VALUES ('41', '1', '1', 'flyhero', 'UPDATE', 'project', '项目', '更新：测试项目项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"这是一个测试数据1\",\"proName\":\"测试项目\",\"projectId\":1,\"targetCount\":100}', '2016-11-09 17:01:00', '0');
INSERT INTO `fly_operate_log` VALUES ('42', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 17:01:02', '0');
INSERT INTO `fly_operate_log` VALUES ('43', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-09 17:05:10', '0');
INSERT INTO `fly_operate_log` VALUES ('44', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":2}', '2016-11-09 18:24:56', '0');
INSERT INTO `fly_operate_log` VALUES ('45', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":2}', '2016-11-09 18:25:07', '0');
INSERT INTO `fly_operate_log` VALUES ('46', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":2}', '2016-11-09 18:35:59', '0');
INSERT INTO `fly_operate_log` VALUES ('47', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-10 09:49:04', '0');
INSERT INTO `fly_operate_log` VALUES ('48', '1', '1', 'flyhero', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":1,\"userId\":1}', '2016-11-10 09:49:09', '0');
INSERT INTO `fly_operate_log` VALUES ('49', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-10 09:51:25', '0');
INSERT INTO `fly_operate_log` VALUES ('50', '1', '1', 'flyhero', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":1,\"userId\":1}', '2016-11-10 09:52:40', '0');
INSERT INTO `fly_operate_log` VALUES ('51', '1', '1', 'flyhero', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":1,\"userId\":1}', '2016-11-10 09:54:52', '0');
INSERT INTO `fly_operate_log` VALUES ('52', '1', '1', 'flyhero', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":1,\"userId\":1}', '2016-11-10 09:56:03', '0');
INSERT INTO `fly_operate_log` VALUES ('53', '1', '1', 'flyhero', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":1,\"userId\":1}', '2016-11-10 09:59:47', '0');
INSERT INTO `fly_operate_log` VALUES ('54', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-10 10:42:51', '0');
INSERT INTO `fly_operate_log` VALUES ('55', '1', '1', 'flyhero', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":1,\"userId\":1}', '2016-11-10 10:42:53', '0');
INSERT INTO `fly_operate_log` VALUES ('56', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":1}', '2016-11-10 11:15:45', '0');
INSERT INTO `fly_operate_log` VALUES ('57', '1', '1', 'flyhero', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":1,\"userId\":1}', '2016-11-10 11:15:48', '0');
INSERT INTO `fly_operate_log` VALUES ('58', '1', '1', 'flyhero', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":1,\"userId\":1}', '2016-11-10 11:22:53', '0');
INSERT INTO `fly_operate_log` VALUES ('59', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：遛遛旅游项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"和上海政府合作的一款旅游app\",\"proName\":\"遛遛旅游\",\"proVersion\":\"V1.0\",\"targetCount\":150}', '2016-11-10 13:36:45', '0');
INSERT INTO `fly_operate_log` VALUES ('60', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":2}', '2016-11-10 13:41:25', '0');
INSERT INTO `fly_operate_log` VALUES ('61', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：遛遛旅游项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"这是一个和政府合作的旅游app\",\"proName\":\"遛遛旅游\",\"proVersion\":\"V1.0\",\"targetCount\":160}', '2016-11-10 14:10:51', '0');
INSERT INTO `fly_operate_log` VALUES ('62', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：遛遛旅游项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"这是一个和政府合作的旅游app\",\"proName\":\"遛遛旅游\",\"proVersion\":\"V1.0\",\"targetCount\":160}', '2016-11-10 14:12:42', '0');
INSERT INTO `fly_operate_log` VALUES ('63', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：遛遛旅游项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"旅游类的app\",\"proName\":\"遛遛旅游\",\"proVersion\":\"V1.0\",\"targetCount\":140}', '2016-11-10 14:13:31', '0');
INSERT INTO `fly_operate_log` VALUES ('64', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：遛遛旅游项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"旅游类的app\",\"proName\":\"遛遛旅游\",\"proVersion\":\"V1.0\",\"projectId\":7,\"targetCount\":140}', '2016-11-10 14:17:14', '0');
INSERT INTO `fly_operate_log` VALUES ('65', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：遛遛旅游项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"旅游类的app\",\"proName\":\"遛遛旅游\",\"proVersion\":\"V1.0\",\"projectId\":8,\"targetCount\":140}', '2016-11-10 14:20:38', '0');
INSERT INTO `fly_operate_log` VALUES ('66', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：遛遛旅游项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"和政府合作旅游类app\",\"proName\":\"遛遛旅游\",\"proVersion\":\"V1.0\",\"projectId\":10,\"targetCount\":140}', '2016-11-10 14:43:44', '0');
INSERT INTO `fly_operate_log` VALUES ('67', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：遛遛旅游项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"和政府合作旅游类app\",\"proName\":\"遛遛旅游\",\"proVersion\":\"V1.0\",\"projectId\":9,\"targetCount\":140}', '2016-11-10 14:43:44', '0');
INSERT INTO `fly_operate_log` VALUES ('68', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：遛遛旅游项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"按时到敬爱发售\",\"proName\":\"遛遛旅游\",\"proVersion\":\"V1.0\",\"projectId\":11,\"targetCount\":140}', '2016-11-10 14:48:44', '0');
INSERT INTO `fly_operate_log` VALUES ('69', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：企鹅企鹅项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"请问\",\"proName\":\"企鹅企鹅\",\"proVersion\":\"v1.1\",\"projectId\":12,\"targetCount\":112}', '2016-11-10 14:52:11', '0');
INSERT INTO `fly_operate_log` VALUES ('70', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：王企鹅企鹅拳王项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"他如果换地方\",\"proName\":\"王企鹅企鹅拳王\",\"proVersion\":\"V1.0\",\"projectId\":13,\"targetCount\":200}', '2016-11-10 14:54:25', '0');
INSERT INTO `fly_operate_log` VALUES ('71', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：王企鹅企鹅拳王项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"他如果换地方\",\"proName\":\"王企鹅企鹅拳王\",\"proVersion\":\"V1.0\",\"projectId\":14,\"targetCount\":200}', '2016-11-10 14:54:25', '0');
INSERT INTO `fly_operate_log` VALUES ('72', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：是噻短时阿萨德项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"爱的暗示的沃尔夫\",\"proName\":\"是噻短时阿萨德\",\"proVersion\":\"v1.1\",\"projectId\":15,\"targetCount\":400}', '2016-11-10 14:58:19', '0');
INSERT INTO `fly_operate_log` VALUES ('73', '2', '0', 'admin', 'INSERT', 'project', '项目', '创建：非官方大哥说项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"阿萨德访问\",\"proName\":\"非官方大哥说\",\"proVersion\":\"V1.0\",\"projectId\":16,\"targetCount\":300}', '2016-11-10 14:59:26', '0');
INSERT INTO `fly_operate_log` VALUES ('74', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":2}', '2016-11-10 15:01:30', '0');
INSERT INTO `fly_operate_log` VALUES ('75', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":2,\"pageSize\":1,\"userId\":2}', '2016-11-10 15:01:38', '0');
INSERT INTO `fly_operate_log` VALUES ('76', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":3,\"pageSize\":1,\"userId\":2}', '2016-11-10 15:01:40', '0');
INSERT INTO `fly_operate_log` VALUES ('77', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":2}', '2016-11-10 15:01:45', '0');
INSERT INTO `fly_operate_log` VALUES ('78', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":1,\"userId\":2}', '2016-11-10 15:02:41', '0');
INSERT INTO `fly_operate_log` VALUES ('79', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:03:31', '0');
INSERT INTO `fly_operate_log` VALUES ('80', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:04:28', '0');
INSERT INTO `fly_operate_log` VALUES ('81', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:04:31', '0');
INSERT INTO `fly_operate_log` VALUES ('82', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:04:36', '0');
INSERT INTO `fly_operate_log` VALUES ('83', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:04:37', '0');
INSERT INTO `fly_operate_log` VALUES ('84', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:04:44', '0');
INSERT INTO `fly_operate_log` VALUES ('85', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:04:50', '0');
INSERT INTO `fly_operate_log` VALUES ('86', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:04:58', '0');
INSERT INTO `fly_operate_log` VALUES ('87', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:10:42', '0');
INSERT INTO `fly_operate_log` VALUES ('88', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:17:27', '0');
INSERT INTO `fly_operate_log` VALUES ('89', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:17:34', '0');
INSERT INTO `fly_operate_log` VALUES ('90', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:17:39', '0');
INSERT INTO `fly_operate_log` VALUES ('91', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:17:39', '0');
INSERT INTO `fly_operate_log` VALUES ('92', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:17:41', '0');
INSERT INTO `fly_operate_log` VALUES ('93', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:17:42', '0');
INSERT INTO `fly_operate_log` VALUES ('94', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:17:49', '0');
INSERT INTO `fly_operate_log` VALUES ('95', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:18:33', '0');
INSERT INTO `fly_operate_log` VALUES ('96', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:18:55', '0');
INSERT INTO `fly_operate_log` VALUES ('97', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:19:01', '0');
INSERT INTO `fly_operate_log` VALUES ('98', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-10 15:20:02', '0');
INSERT INTO `fly_operate_log` VALUES ('99', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-10 15:47:51', '0');
INSERT INTO `fly_operate_log` VALUES ('100', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:50:57', '0');
INSERT INTO `fly_operate_log` VALUES ('101', '2', '15', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":15,\"userId\":2}', '2016-11-10 15:51:02', '0');
INSERT INTO `fly_operate_log` VALUES ('102', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:52:45', '0');
INSERT INTO `fly_operate_log` VALUES ('103', '2', '12', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":12,\"userId\":2}', '2016-11-10 15:52:48', '0');
INSERT INTO `fly_operate_log` VALUES ('104', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-10 15:55:13', '0');
INSERT INTO `fly_operate_log` VALUES ('105', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-10 15:55:15', '0');
INSERT INTO `fly_operate_log` VALUES ('106', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-10 16:00:10', '0');
INSERT INTO `fly_operate_log` VALUES ('107', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-10 16:18:26', '0');
INSERT INTO `fly_operate_log` VALUES ('108', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 10:20:39', '0');
INSERT INTO `fly_operate_log` VALUES ('109', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 10:20:47', '0');
INSERT INTO `fly_operate_log` VALUES ('110', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 11:52:50', '0');
INSERT INTO `fly_operate_log` VALUES ('111', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 11:52:52', '0');
INSERT INTO `fly_operate_log` VALUES ('112', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 12:02:37', '0');
INSERT INTO `fly_operate_log` VALUES ('113', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 12:03:12', '0');
INSERT INTO `fly_operate_log` VALUES ('114', '2', '12', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":12,\"userId\":2}', '2016-11-15 12:03:14', '0');
INSERT INTO `fly_operate_log` VALUES ('115', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 12:12:28', '0');
INSERT INTO `fly_operate_log` VALUES ('116', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 12:12:30', '0');
INSERT INTO `fly_operate_log` VALUES ('117', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 12:15:11', '0');
INSERT INTO `fly_operate_log` VALUES ('118', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 12:15:29', '0');
INSERT INTO `fly_operate_log` VALUES ('119', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 12:15:46', '0');
INSERT INTO `fly_operate_log` VALUES ('120', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 13:09:51', '0');
INSERT INTO `fly_operate_log` VALUES ('121', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 13:09:57', '0');
INSERT INTO `fly_operate_log` VALUES ('122', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 13:11:12', '0');
INSERT INTO `fly_operate_log` VALUES ('123', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 13:14:59', '0');
INSERT INTO `fly_operate_log` VALUES ('124', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 14:40:38', '0');
INSERT INTO `fly_operate_log` VALUES ('125', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:40:40', '0');
INSERT INTO `fly_operate_log` VALUES ('126', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 14:40:48', '0');
INSERT INTO `fly_operate_log` VALUES ('127', '2', '12', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":12,\"userId\":2}', '2016-11-15 14:40:49', '0');
INSERT INTO `fly_operate_log` VALUES ('128', '2', '12', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":12,\"userId\":2}', '2016-11-15 14:42:25', '0');
INSERT INTO `fly_operate_log` VALUES ('129', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 14:44:10', '0');
INSERT INTO `fly_operate_log` VALUES ('130', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:44:14', '0');
INSERT INTO `fly_operate_log` VALUES ('131', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 14:46:25', '0');
INSERT INTO `fly_operate_log` VALUES ('132', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:46:29', '0');
INSERT INTO `fly_operate_log` VALUES ('133', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 14:48:00', '0');
INSERT INTO `fly_operate_log` VALUES ('134', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:48:02', '0');
INSERT INTO `fly_operate_log` VALUES ('135', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:50:09', '0');
INSERT INTO `fly_operate_log` VALUES ('136', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:50:46', '0');
INSERT INTO `fly_operate_log` VALUES ('137', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:51:39', '0');
INSERT INTO `fly_operate_log` VALUES ('138', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:51:58', '0');
INSERT INTO `fly_operate_log` VALUES ('139', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:53:31', '0');
INSERT INTO `fly_operate_log` VALUES ('140', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:56:16', '0');
INSERT INTO `fly_operate_log` VALUES ('141', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:57:03', '0');
INSERT INTO `fly_operate_log` VALUES ('142', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:57:21', '0');
INSERT INTO `fly_operate_log` VALUES ('143', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:57:36', '0');
INSERT INTO `fly_operate_log` VALUES ('144', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 14:58:56', '0');
INSERT INTO `fly_operate_log` VALUES ('145', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 15:00:14', '0');
INSERT INTO `fly_operate_log` VALUES ('146', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 15:03:09', '0');
INSERT INTO `fly_operate_log` VALUES ('147', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 15:04:11', '0');
INSERT INTO `fly_operate_log` VALUES ('148', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 15:28:58', '0');
INSERT INTO `fly_operate_log` VALUES ('149', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 15:32:52', '0');
INSERT INTO `fly_operate_log` VALUES ('150', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 15:33:16', '0');
INSERT INTO `fly_operate_log` VALUES ('151', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 15:35:26', '0');
INSERT INTO `fly_operate_log` VALUES ('152', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 15:37:22', '0');
INSERT INTO `fly_operate_log` VALUES ('153', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 16:16:38', '0');
INSERT INTO `fly_operate_log` VALUES ('154', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-15 16:16:46', '0');
INSERT INTO `fly_operate_log` VALUES ('155', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-15 18:08:45', '0');
INSERT INTO `fly_operate_log` VALUES ('156', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 09:49:16', '0');
INSERT INTO `fly_operate_log` VALUES ('157', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 10:29:31', '0');
INSERT INTO `fly_operate_log` VALUES ('158', '2', '11', 'admin', 'UPDATE', 'project', '项目', '更新：遛遛旅游项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"一个旅游类的app\",\"proName\":\"遛遛旅游\",\"projectId\":11,\"targetCount\":140}', '2016-11-16 10:29:56', '0');
INSERT INTO `fly_operate_log` VALUES ('159', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 10:30:09', '0');
INSERT INTO `fly_operate_log` VALUES ('160', '2', '12', 'admin', 'DELETE', 'project', '项目', '删除：企鹅企鹅项目', '{\"isDelete\":1,\"pageNumber\":1,\"pageSize\":10,\"proName\":\"企鹅企鹅\",\"projectId\":12}', '2016-11-16 10:30:25', '0');
INSERT INTO `fly_operate_log` VALUES ('161', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 10:30:26', '0');
INSERT INTO `fly_operate_log` VALUES ('162', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-16 10:30:42', '0');
INSERT INTO `fly_operate_log` VALUES ('163', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 10:57:03', '0');
INSERT INTO `fly_operate_log` VALUES ('164', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-16 10:57:06', '0');
INSERT INTO `fly_operate_log` VALUES ('165', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-16 11:25:06', '0');
INSERT INTO `fly_operate_log` VALUES ('166', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-16 11:26:13', '0');
INSERT INTO `fly_operate_log` VALUES ('167', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-16 11:28:02', '0');
INSERT INTO `fly_operate_log` VALUES ('168', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-16 11:28:16', '0');
INSERT INTO `fly_operate_log` VALUES ('169', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 11:32:33', '0');
INSERT INTO `fly_operate_log` VALUES ('170', '2', '15', 'admin', 'UPDATE', 'project', '项目', '更新：聚心涂料项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"出售涂料的app\",\"proName\":\"聚心涂料\",\"projectId\":15,\"targetCount\":400}', '2016-11-16 11:33:47', '0');
INSERT INTO `fly_operate_log` VALUES ('171', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 11:33:49', '0');
INSERT INTO `fly_operate_log` VALUES ('172', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 11:34:35', '0');
INSERT INTO `fly_operate_log` VALUES ('173', '2', '16', 'admin', 'UPDATE', 'project', '项目', '更新：安全审计项目', '{\"pageNumber\":1,\"pageSize\":10,\"proDes\":\"政府日志审查\",\"proName\":\"安全审计\",\"projectId\":16,\"targetCount\":300}', '2016-11-16 11:35:15', '0');
INSERT INTO `fly_operate_log` VALUES ('174', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 11:35:15', '0');
INSERT INTO `fly_operate_log` VALUES ('175', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 11:35:46', '0');
INSERT INTO `fly_operate_log` VALUES ('176', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 11:38:40', '0');
INSERT INTO `fly_operate_log` VALUES ('177', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-16 11:38:42', '0');
INSERT INTO `fly_operate_log` VALUES ('178', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-16 11:40:33', '0');
INSERT INTO `fly_operate_log` VALUES ('179', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-16 11:41:09', '0');
INSERT INTO `fly_operate_log` VALUES ('180', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 11:45:53', '0');
INSERT INTO `fly_operate_log` VALUES ('181', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 11:50:23', '0');
INSERT INTO `fly_operate_log` VALUES ('182', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-16 11:50:32', '0');
INSERT INTO `fly_operate_log` VALUES ('183', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 15:16:28', '0');
INSERT INTO `fly_operate_log` VALUES ('184', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-16 15:16:54', '0');
INSERT INTO `fly_operate_log` VALUES ('185', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 15:17:05', '0');
INSERT INTO `fly_operate_log` VALUES ('186', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 15:33:13', '0');
INSERT INTO `fly_operate_log` VALUES ('187', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 15:33:51', '0');
INSERT INTO `fly_operate_log` VALUES ('188', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 15:38:32', '0');
INSERT INTO `fly_operate_log` VALUES ('189', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-16 15:49:20', '0');
INSERT INTO `fly_operate_log` VALUES ('190', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-16 16:05:43', '0');
INSERT INTO `fly_operate_log` VALUES ('191', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-18 13:50:09', '0');
INSERT INTO `fly_operate_log` VALUES ('192', '2', '11', 'admin', 'INSERT', 'interface', '接口', '新建：景点推荐接口', '{\"content\":\"\",\"creator\":2,\"falseExam\":\"{\\n    \\\"id\\\":1\\n}\",\"interDes\":\"这是对用户推荐景点\",\"interName\":\"景点推荐\",\"interUrl\":\"http://localhost:8080/flyapi/forward/new_interfaces.html\",\"method\":\"POST\",\"moduleId\":1,\"param\":\"[{\\\"name\\\":\\\"id\\\",\\\"isTrue\\\":\\\"true\\\",\\\"interType\\\":\\\"int\\\",\\\"des\\\":\\\"描述\\\",\\\"state\\\":true}]\",\"requestExam\":\"{\\n    \\\"id\\\":1\\n}\",\"responseParam\":\"{\\n    \\\"id\\\":1\\n}\",\"status\":0,\"trueExam\":\"{\\n    \\\"id\\\":1\\n}\"}', '2016-11-21 13:10:37', '0');
INSERT INTO `fly_operate_log` VALUES ('193', '2', '11', 'admin', 'INSERT', 'interface', '接口', '新建：qweqweqw接口', '{\"content\":\"\",\"creator\":2,\"falseExam\":\"{\\n    \\\"\\\"id\\\":1\\n}\",\"interDes\":\"eweferfgsf\",\"interName\":\"qweqweqw\",\"interUrl\":\"http://localhost:8080/flyapi/forward/new_interfaces.html\",\"method\":\"POST\",\"moduleId\":2,\"param\":\"[{\\\"name\\\":\\\"描述\\\",\\\"isTrue\\\":\\\"true\\\",\\\"interType\\\":\\\"int\\\",\\\"des\\\":\\\"描述\\\",\\\"state\\\":true}]\",\"requestExam\":\"{\\n    \\\"\\\"id\\\":1\\n}\",\"responseParam\":\"{\\n    \\\"\\\"id\\\":1\\n}\",\"status\":0,\"trueExam\":\"{\\n    \\\"\\\"id\\\":1\\n}\"}', '2016-11-21 13:18:27', '0');
INSERT INTO `fly_operate_log` VALUES ('194', '2', '11', 'admin', 'INSERT', 'interface', '接口', '新建：撒旦法撒旦接口', '{\"content\":\"\",\"creator\":2,\"falseExam\":\"是打发十大\",\"interDes\":\"撒旦法是\",\"interName\":\"撒旦法撒旦\",\"interUrl\":\"是发达啊\",\"method\":\"POST\",\"moduleId\":1,\"param\":\"[{\\\"name\\\":\\\"描述\\\",\\\"isTrue\\\":\\\"true\\\",\\\"interType\\\":\\\"int\\\",\\\"des\\\":\\\"描述\\\",\\\"state\\\":true}]\",\"requestExam\":\"烦死哒\",\"responseParam\":\"我师傅说\",\"status\":0,\"trueExam\":\"撒旦法撒旦\"}', '2016-11-22 10:34:02', '0');
INSERT INTO `fly_operate_log` VALUES ('195', '2', '11', 'admin', 'INSERT', 'interface', '接口', '新建：十多个第三方接口', '{\"content\":\"\",\"creator\":2,\"falseExam\":\"是打发是\",\"interDes\":\"阿斯顿发生的\",\"interName\":\"十多个第三方\",\"interUrl\":\"撒打发士大夫撒的\",\"method\":\"POST\",\"moduleId\":1,\"param\":\"[{\\\"name\\\":\\\"描述\\\",\\\"isTrue\\\":\\\"true\\\",\\\"interType\\\":\\\"int\\\",\\\"des\\\":\\\"描述\\\",\\\"state\\\":true}]\",\"requestExam\":\"多个\",\"responseParam\":\"第三方十大\",\"status\":0,\"trueExam\":\"沙发是\"}', '2016-11-22 10:36:52', '0');
INSERT INTO `fly_operate_log` VALUES ('196', '2', '11', 'admin', 'INSERT', 'interface', '接口', '新建：士大夫撒旦法接口', '{\"content\":\"\",\"creator\":2,\"falseExam\":\"是发达\",\"interDes\":\"是打发是\",\"interName\":\"士大夫撒旦法\",\"interUrl\":\"是对方发送\",\"method\":\"POST\",\"moduleId\":1,\"param\":\"[{\\\"name\\\":\\\"描述\\\",\\\"isTrue\\\":\\\"true\\\",\\\"interType\\\":\\\"int\\\",\\\"des\\\":\\\"描述\\\",\\\"state\\\":true}]\",\"requestExam\":\"是打发\",\"responseParam\":\"是短发是\",\"status\":0,\"trueExam\":\"是打发\"}', '2016-11-22 10:37:52', '0');
INSERT INTO `fly_operate_log` VALUES ('197', '2', '11', 'admin', 'INSERT', 'interface', '接口', '新建：的方式告诉对方接口', '{\"content\":\"\",\"creator\":2,\"falseExam\":\"撒旦法\",\"interDes\":\"东方广东省\",\"interName\":\"的方式告诉对方\",\"interUrl\":\"对方告诉对方\",\"method\":\"POST\",\"moduleId\":1,\"param\":\"[{\\\"name\\\":\\\"描述\\\",\\\"isTrue\\\":\\\"true\\\",\\\"interType\\\":\\\"int\\\",\\\"des\\\":\\\"描述\\\",\\\"state\\\":true}]\",\"requestExam\":\"撒旦法\",\"responseParam\":\"沙发\",\"status\":0,\"trueExam\":\"撒旦法\"}', '2016-11-22 10:39:38', '0');
INSERT INTO `fly_operate_log` VALUES ('198', '2', '11', 'admin', 'INSERT', 'interface', '接口', '新建：排行榜接口', '{\"content\":\"\",\"creator\":2,\"falseExam\":\"{\\n\\t\\\"msg\\\":\\\"error\\\",\\n\\t\\\"status\\\":404,\\n\\t\\\"data\\\":\\\"\\\",\\n}\",\"interDes\":\"对用户积分进行排行\",\"interName\":\"排行榜\",\"interUrl\":\"http://localhost:8080/flyapi/forward/new_interfaces.html\",\"method\":\"POST\",\"moduleId\":1,\"param\":\"[{\\\"name\\\":\\\"userId\\\",\\\"isTrue\\\":\\\"true\\\",\\\"interType\\\":\\\"int\\\",\\\"des\\\":\\\"描述\\\",\\\"state\\\":true}]\",\"requestExam\":\"{\\n\\t\\\"msg\\\":\\\"error\\\",\\n\\t\\\"status\\\":404,\\n\\t\\\"data\\\":\\\"\\\",\\n}\",\"responseParam\":\"{\\n\\t\\\"msg\\\":\\\"error\\\",\\n\\t\\\"status\\\":404,\\n\\t\\\"data\\\":\\\"\\\",\\n}\",\"status\":0,\"trueExam\":\"{\\n\\t\\\"msg\\\":\\\"error\\\",\\n\\t\\\"status\\\":404,\\n\\t\\\"data\\\":\\\"\\\",\\n}\"}', '2016-11-22 11:23:11', '0');
INSERT INTO `fly_operate_log` VALUES ('199', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 14:52:50', '0');
INSERT INTO `fly_operate_log` VALUES ('200', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 15:01:15', '0');
INSERT INTO `fly_operate_log` VALUES ('201', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 16:31:58', '0');
INSERT INTO `fly_operate_log` VALUES ('202', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 16:32:45', '0');
INSERT INTO `fly_operate_log` VALUES ('203', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 16:32:47', '0');
INSERT INTO `fly_operate_log` VALUES ('204', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 16:35:04', '0');
INSERT INTO `fly_operate_log` VALUES ('205', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 16:36:00', '0');
INSERT INTO `fly_operate_log` VALUES ('206', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 16:38:22', '0');
INSERT INTO `fly_operate_log` VALUES ('207', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 16:43:31', '0');
INSERT INTO `fly_operate_log` VALUES ('208', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 16:44:16', '0');
INSERT INTO `fly_operate_log` VALUES ('209', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 16:44:19', '0');
INSERT INTO `fly_operate_log` VALUES ('210', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-22 16:44:34', '0');
INSERT INTO `fly_operate_log` VALUES ('211', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 16:51:05', '0');
INSERT INTO `fly_operate_log` VALUES ('212', '2', '15', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":15,\"userId\":2}', '2016-11-22 16:51:28', '0');
INSERT INTO `fly_operate_log` VALUES ('213', '2', '15', 'admin', 'INSERT', 'module', '模块', '新建：测试模块模块', '{\"moduleDes\":\"这是测试的\",\"moduleName\":\"测试模块\",\"pageNumber\":1,\"pageSize\":10,\"projectId\":15}', '2016-11-22 16:51:54', '0');
INSERT INTO `fly_operate_log` VALUES ('214', '2', '15', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":15,\"userId\":2}', '2016-11-22 16:51:59', '0');
INSERT INTO `fly_operate_log` VALUES ('215', '2', '15', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":15,\"userId\":2}', '2016-11-22 16:52:44', '0');
INSERT INTO `fly_operate_log` VALUES ('216', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 16:52:56', '0');
INSERT INTO `fly_operate_log` VALUES ('217', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-22 16:53:12', '0');
INSERT INTO `fly_operate_log` VALUES ('218', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":1}', '2016-11-22 18:19:50', '0');
INSERT INTO `fly_operate_log` VALUES ('219', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":1}', '2016-11-22 18:20:00', '0');
INSERT INTO `fly_operate_log` VALUES ('220', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-23 10:22:39', '0');
INSERT INTO `fly_operate_log` VALUES ('221', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-23 10:27:15', '0');
INSERT INTO `fly_operate_log` VALUES ('222', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-23 10:29:01', '0');
INSERT INTO `fly_operate_log` VALUES ('223', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-23 10:36:59', '0');
INSERT INTO `fly_operate_log` VALUES ('224', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-23 10:37:08', '0');
INSERT INTO `fly_operate_log` VALUES ('225', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-23 11:20:12', '0');
INSERT INTO `fly_operate_log` VALUES ('226', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-23 11:20:15', '0');
INSERT INTO `fly_operate_log` VALUES ('227', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-23 11:24:58', '0');
INSERT INTO `fly_operate_log` VALUES ('228', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-23 11:31:39', '0');
INSERT INTO `fly_operate_log` VALUES ('229', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-23 11:38:26', '0');
INSERT INTO `fly_operate_log` VALUES ('230', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-23 11:39:39', '0');
INSERT INTO `fly_operate_log` VALUES ('231', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-23 11:39:42', '0');
INSERT INTO `fly_operate_log` VALUES ('232', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-23 11:40:12', '0');
INSERT INTO `fly_operate_log` VALUES ('233', '2', '11', 'admin', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":11,\"userId\":2}', '2016-11-23 11:40:14', '0');
INSERT INTO `fly_operate_log` VALUES ('234', '1', '0', 'flyhero', 'SELECT', 'project', '项目', '查询：flyhero创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":1}', '2016-11-23 11:43:11', '0');
INSERT INTO `fly_operate_log` VALUES ('235', '1', '1', 'flyhero', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":1,\"userId\":1}', '2016-11-23 11:43:14', '0');
INSERT INTO `fly_operate_log` VALUES ('236', '1', '1', 'flyhero', 'SELECT', 'team', '成员', '查询：项目成员', '{\"pageNumber\":1,\"pageSize\":10,\"projectId\":1,\"userId\":1}', '2016-11-23 11:44:42', '0');
INSERT INTO `fly_operate_log` VALUES ('237', '2', '0', 'admin', 'SELECT', 'project', '项目', '查询：admin创建的项目', '{\"pageNumber\":1,\"pageSize\":10,\"userId\":2}', '2016-11-23 13:47:29', '0');

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
-- Records of fly_project
-- ----------------------------
INSERT INTO `fly_project` VALUES ('1', '测试项目', '这是一个测试数据1', 'V1.0', '100', '20', '2016-11-04 15:27:21', '2016-11-09 17:01:00', '0');
INSERT INTO `fly_project` VALUES ('11', '遛遛旅游', '一个旅游类的app', 'V1.0', '140', '7', '2016-11-10 14:48:44', '2016-11-22 11:23:11', '0');
INSERT INTO `fly_project` VALUES ('12', '企鹅企鹅', '请问', 'v1.1', '112', '0', '2016-11-10 14:52:11', '2016-11-16 10:30:24', '1');
INSERT INTO `fly_project` VALUES ('15', '聚心涂料', '出售涂料的app', 'v1.1', '400', '0', '2016-11-10 14:58:19', '2016-11-16 11:33:47', '0');
INSERT INTO `fly_project` VALUES ('16', '安全审计', '政府日志审查', 'V1.0', '300', '0', '2016-11-10 14:59:26', '2016-11-16 11:35:15', '0');

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
-- Records of fly_table_info
-- ----------------------------

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
-- Records of fly_user
-- ----------------------------
INSERT INTO `fly_user` VALUES ('1', 'flyhero', 'f74f58d012532877', '/static/images/head.jpg', '1', '358681286@qq.com', null, '上海荧客', '0:0:0:0:0:0:0:1', '81', '2016-10-31 17:35:42', '2016-11-23 13:38:34', '0');
INSERT INTO `fly_user` VALUES ('2', 'admin', '49ba59abbe56e057', '/static/images/head.jpg', '1', '928815309@qq.com', null, null, '0:0:0:0:0:0:0:1', '97', '2016-10-31 17:41:27', '2016-11-23 13:39:17', '0');

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

-- ----------------------------
-- Records of fly_user_project
-- ----------------------------
INSERT INTO `fly_user_project` VALUES ('1', '1', '1', '1', '1', '2016-11-04 15:26:43', '2016-11-04 15:26:46', '0');
INSERT INTO `fly_user_project` VALUES ('2', '2', '1', '0', '0', '2016-11-08 16:44:34', '2016-11-08 16:44:37', '0');
INSERT INTO `fly_user_project` VALUES ('5', '2', '11', '1', '1', '2016-11-10 14:48:44', '2016-11-16 11:45:35', '0');
INSERT INTO `fly_user_project` VALUES ('6', '2', '12', '1', '1', '2016-11-10 14:52:11', '2016-11-16 11:45:36', '1');
INSERT INTO `fly_user_project` VALUES ('9', '2', '15', '1', '1', '2016-11-10 14:58:19', '2016-11-16 11:45:37', '0');
INSERT INTO `fly_user_project` VALUES ('10', '2', '16', '1', '1', '2016-11-10 14:59:26', '2016-11-16 11:45:38', '0');
