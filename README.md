#mavenDemo
一个简单的maven项目，搭建了ssh服务

启用了log4j监听spring，添加了ssh配置文件，增添了login示例业务

#数据库
<pre><code class="markdown">
    /*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : backendsystem

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-01-21 22:48:36
*/
CREATE DATABASE backendsystem;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '34', 'dsf', '女');



</code></pre>