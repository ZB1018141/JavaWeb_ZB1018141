/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : user

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-11-17 16:54:46
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `usertable`
-- ----------------------------
DROP TABLE IF EXISTS `usertable`;
CREATE TABLE `usertable` (
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usertable
-- ----------------------------
INSERT INTO usertable VALUES ('wmr', '123');
INSERT INTO usertable VALUES ('www', '123');
INSERT INTO usertable VALUES ('ZB1018141', '12345');
INSERT INTO usertable VALUES ('', '');
INSERT INTO usertable VALUES ('ZB10181', '');
INSERT INTO usertable VALUES ('ZB10181', '');
