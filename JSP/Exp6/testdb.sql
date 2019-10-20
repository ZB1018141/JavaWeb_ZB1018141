/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : testdb

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-10-20 10:20:45
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `EMP_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `EMP_NAME` varchar(64) NOT NULL DEFAULT '',
  `JOB` varchar(20) DEFAULT NULL,
  `SALARY` float(8,2) unsigned DEFAULT NULL,
  `DEPT` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO employee VALUES ('15', '王兜兜', 'clerk', '4300.00', '10');
INSERT INTO employee VALUES ('16', '张敬', 'clerk', '4300.00', '10');
INSERT INTO employee VALUES ('18', '马明', 'manager', '5000.00', '20');

-- ----------------------------
-- Table structure for `employees`
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `age` int(3) unsigned NOT NULL DEFAULT '0',
  `education` varchar(32) DEFAULT '' COMMENT '学历',
  `address` varchar(254) DEFAULT NULL,
  `salary` float(8,2) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO employees VALUES ('1', '李家诚', '23', '其他', '海口市人民大道1800号', '8900.00');
INSERT INTO employees VALUES ('2', '张辉', '28', '本科', '广州天河区珠村市场', '19999.99');
INSERT INTO employees VALUES ('3', '林贤弟', '29', '博士', '广州白云区龙塘村120号', '18990.99');
INSERT INTO employees VALUES ('4', '王小简', '23', '本科', '海口人民大道1688号', '899.98');
INSERT INTO employees VALUES ('5', '蔡世杰', '27', '专科', '上海市宝山区联杨路2211弄26号', '15800.00');
