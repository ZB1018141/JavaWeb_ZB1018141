/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : onetoone

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-12-15 12:12:14
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `PROVINCE` varchar(40) DEFAULT NULL,
  `CITY` varchar(40) DEFAULT NULL,
  `STREET` varchar(100) DEFAULT NULL,
  `ZIPCODE` char(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO address VALUES ('1', '北京市', '北京市', '清华园', '100084');
INSERT INTO address VALUES ('2', '北京市', '北京市', '清华园', '100084');
INSERT INTO address VALUES ('3', '北京市', '北京市', '清华园', '100084');
INSERT INTO address VALUES ('4', '北京市', '北京市', '清华园', '100084');
INSERT INTO address VALUES ('5', '北京市', '北京市', '清华园', '100084');
INSERT INTO address VALUES ('6', '北京市', '北京市', '清华园', '100084');
INSERT INTO address VALUES ('7', '北京市', '北京市', '清华园', '100084');
INSERT INTO address VALUES ('8', '北京市', '北京市', '清华园', '100084');
INSERT INTO address VALUES ('9', '南通市', '如皋市', '长江镇', '100084');
INSERT INTO address VALUES ('10', '南通市', '如皋市', '长江镇', '100084');
INSERT INTO address VALUES ('11', '南通市', '如皋市', '长江镇', '100084');

-- ----------------------------
-- Table structure for `client`
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `CLIENTNAME` char(20) DEFAULT NULL,
  `PHONE` char(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ADDRESS` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FKgby9flep6jwyqxum53hf1368k` (`ADDRESS`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO client VALUES ('1', '李想', '010-56565566', 'lixiang@163.com', '1');
INSERT INTO client VALUES ('2', '李想', '010-56565566', 'lixiang@163.com', '2');
INSERT INTO client VALUES ('3', '李想', '010-56565566', 'lixiang@163.com', '3');
INSERT INTO client VALUES ('4', '李想', '010-56565566', 'lixiang@163.com', '4');
INSERT INTO client VALUES ('5', '李想', '010-56565566', 'lixiang@163.com', '5');
INSERT INTO client VALUES ('6', '李想', '010-56565566', 'lixiang@163.com', '6');
INSERT INTO client VALUES ('7', '李想', '010-56565566', 'lixiang@163.com', '7');
INSERT INTO client VALUES ('8', '李想', '010-56565566', 'lixiang@163.com', '8');
INSERT INTO client VALUES ('9', '王小兜', '010-56565566', 'wangxiaodou@163.com', '9');
INSERT INTO client VALUES ('10', '王小兜', '010-56565566', 'wangxiaodou@163.com', '10');
INSERT INTO client VALUES ('11', '王小兜', '010-56565566', 'wangxiaodou@163.com', '11');

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `COMPANYNAME` varchar(100) DEFAULT NULL,
  `LINKMAN` char(20) DEFAULT NULL,
  `TELEPHONE` char(20) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO company VALUES ('1', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO company VALUES ('2', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO company VALUES ('3', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO company VALUES ('4', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO company VALUES ('5', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO company VALUES ('6', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO company VALUES ('7', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO company VALUES ('8', '清华大学出版社', '白立军', '010-60772015', 'bailj@163.com');
INSERT INTO company VALUES ('9', '北京大学出版社', '王兜兜', '010-12345678', 'bailj@163.com');
INSERT INTO company VALUES ('10', '北京大学出版社', '王兜兜', '010-12345678', 'bailj@163.com');
INSERT INTO company VALUES ('11', '北京大学出版社', '王兜兜', '010-12345678', 'bailj@163.com');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `CNAME` char(20) DEFAULT NULL,
  `BANK` varchar(40) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO customer VALUES ('1', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('2', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('3', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('4', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('5', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('6', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('7', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('8', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('9', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('10', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('11', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('12', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('13', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('14', '清华大学出版社', '9559501012356789', '010-62772015');
INSERT INTO customer VALUES ('15', '清华大学出版社', '9559501012356789', '010-62772015');

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `ID` int(4) NOT NULL DEFAULT '0',
  `LOGINNAME` char(20) DEFAULT NULL,
  `LOGINPWD` char(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO login VALUES ('1', 'QQ', '123');
INSERT INTO login VALUES ('2', 'QQ', '123');
INSERT INTO login VALUES ('3', 'QQ', '123');
INSERT INTO login VALUES ('4', 'QQ', '123');
INSERT INTO login VALUES ('5', 'QQ', '123');
INSERT INTO login VALUES ('6', 'QQ', '123');
INSERT INTO login VALUES ('7', 'QQ', '123');
INSERT INTO login VALUES ('8', 'QQ', '123');
INSERT INTO login VALUES ('9', 'ZB1018141', '123456');
INSERT INTO login VALUES ('10', 'ZB1018141', '123456');
INSERT INTO login VALUES ('11', 'ZB1018141', '123456');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `ORDERNO` varchar(20) DEFAULT NULL,
  `MONEY` double(10,2) DEFAULT NULL,
  `CUSTOMER_ID` int(4) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKj873jmqhgjvvg1qksp3ppjr8m` (`CUSTOMER_ID`),
  CONSTRAINT `FKj873jmqhgjvvg1qksp3ppjr8m` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO orders VALUES ('1', '1352616636265', '1146.22', '1');
INSERT INTO orders VALUES ('2', '1352616636343', '3395.08', '1');
INSERT INTO orders VALUES ('3', '1352616636406', '4436.91', '1');
INSERT INTO orders VALUES ('4', '1350827980312', '7712.85', '1');
INSERT INTO orders VALUES ('5', '1350827980328', '5835.16', '1');
INSERT INTO orders VALUES ('6', '1350827980343', '691.22', '1');
INSERT INTO orders VALUES ('7', '1515208381443', '1402.09', '1');
INSERT INTO orders VALUES ('8', '1515208381587', '8921.71', '1');
INSERT INTO orders VALUES ('9', '1515208381689', '961.40', '1');
INSERT INTO orders VALUES ('10', '1515208683097', '9760.75', '1');
INSERT INTO orders VALUES ('11', '1515208683168', '2936.74', '1');
INSERT INTO orders VALUES ('12', '1515208683214', '9758.54', '1');
INSERT INTO orders VALUES ('13', '1515219925885', '441.97', '1');
INSERT INTO orders VALUES ('14', '1515219925952', '1544.57', '1');
INSERT INTO orders VALUES ('15', '1515219925993', '1140.59', '1');
INSERT INTO orders VALUES ('16', '1515578046597', '9328.35', '1');
INSERT INTO orders VALUES ('17', '1515578046665', '4548.61', '1');
INSERT INTO orders VALUES ('18', '1515578046715', '9595.12', '1');
INSERT INTO orders VALUES ('19', '1515578489162', '7648.23', '1');
INSERT INTO orders VALUES ('20', '1515578489283', '9475.87', '1');
INSERT INTO orders VALUES ('21', '1515578489329', '1825.85', '1');
INSERT INTO orders VALUES ('22', '1515578599785', '8925.00', '1');
INSERT INTO orders VALUES ('23', '1515578599876', '5597.58', '1');
INSERT INTO orders VALUES ('24', '1515578599914', '7573.03', '1');
INSERT INTO orders VALUES ('25', '1515579053180', '3554.85', '1');
INSERT INTO orders VALUES ('26', '1515579053266', '8014.73', '1');
INSERT INTO orders VALUES ('27', '1515579053297', '7622.25', '1');
INSERT INTO orders VALUES ('28', '1576296597842', '7009.54', '1');
INSERT INTO orders VALUES ('29', '1576296597872', '1803.74', '1');
INSERT INTO orders VALUES ('30', '1576296597922', '4678.51', '1');
INSERT INTO orders VALUES ('31', '1576296612947', '9395.86', '1');
INSERT INTO orders VALUES ('32', '1576296613021', '2992.71', '1');
INSERT INTO orders VALUES ('33', '1576296613090', '118.32', '1');
INSERT INTO orders VALUES ('34', '1576298218186', '1384.80', '1');
INSERT INTO orders VALUES ('35', '1576298218226', '5359.56', '1');
INSERT INTO orders VALUES ('36', '1576298218276', '913.89', '1');
INSERT INTO orders VALUES ('37', '1576298326390', '7496.66', '1');
INSERT INTO orders VALUES ('38', '1576298326420', '5612.21', '1');
INSERT INTO orders VALUES ('39', '1576298326450', '3024.37', '1');
INSERT INTO orders VALUES ('40', '1576299150079', '7255.11', '1');
INSERT INTO orders VALUES ('41', '1576299150109', '4297.70', '1');
INSERT INTO orders VALUES ('42', '1576299150149', '6971.79', '1');
