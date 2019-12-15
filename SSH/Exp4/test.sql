/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2019-12-15 12:11:38
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `info`
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO info VALUES ('1', 'zzf', 'zzf');
INSERT INTO info VALUES ('2', 'zzuli', 'zzuli');
INSERT INTO info VALUES ('5', '郑州', 'a');
INSERT INTO info VALUES ('6', '河南', '123');
INSERT INTO info VALUES ('8', 'yinweiaiqing', '123456');

-- ----------------------------
-- Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `ITEMNO` varchar(20) DEFAULT NULL,
  `ITEMNAME` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO items VALUES ('1', '001', 'A商品');
INSERT INTO items VALUES ('2', '002', 'B商品');
INSERT INTO items VALUES ('3', '003', 'C商品');
INSERT INTO items VALUES ('4', '001', 'A商品');
INSERT INTO items VALUES ('5', '002', 'B商品');
INSERT INTO items VALUES ('6', '003', 'C商品');
INSERT INTO items VALUES ('7', '001', 'A商品');
INSERT INTO items VALUES ('8', '002', 'B商品');
INSERT INTO items VALUES ('9', '003', 'C商品');
INSERT INTO items VALUES ('10', '001', 'A商品');
INSERT INTO items VALUES ('11', '002', 'B商品');
INSERT INTO items VALUES ('12', '003', 'C商品');
INSERT INTO items VALUES ('13', '001', 'A商品');
INSERT INTO items VALUES ('14', '002', 'B商品');
INSERT INTO items VALUES ('15', '003', 'C商品');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `ID` int(4) NOT NULL AUTO_INCREMENT,
  `ORDERNO` varchar(20) DEFAULT NULL,
  `MONEY` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO orders VALUES ('1', 'A00001', '2100.50');
INSERT INTO orders VALUES ('2', 'A00002', '3680.00');

-- ----------------------------
-- Table structure for `selecteditems`
-- ----------------------------
DROP TABLE IF EXISTS `selecteditems`;
CREATE TABLE `selecteditems` (
  `ORDERID` int(4) NOT NULL DEFAULT '0',
  `ITEMID` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ORDERID`,`ITEMID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selecteditems
-- ----------------------------
INSERT INTO selecteditems VALUES ('1', '1');
INSERT INTO selecteditems VALUES ('1', '2');
INSERT INTO selecteditems VALUES ('2', '2');
INSERT INTO selecteditems VALUES ('2', '3');

-- ----------------------------
-- Table structure for `t_use_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_use_info`;
CREATE TABLE `t_use_info` (
  `int_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`int_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_use_info
-- ----------------------------
INSERT INTO t_use_info VALUES ('1', 'sina', '123');
INSERT INTO t_use_info VALUES ('2', 'qq', '321');
INSERT INTO t_use_info VALUES ('3', 'shengli', '1234');
INSERT INTO t_use_info VALUES ('4', 'tencent', '567');
INSERT INTO t_use_info VALUES ('5', 'zzf', '666');
INSERT INTO t_use_info VALUES ('6', 'ss', 'ss');
INSERT INTO t_use_info VALUES ('7', 's', 's');
INSERT INTO t_use_info VALUES ('8', 's', 's');
INSERT INTO t_use_info VALUES ('9', 'ZB1018141', '123456');

-- ----------------------------
-- Table structure for `z`
-- ----------------------------
DROP TABLE IF EXISTS `z`;
CREATE TABLE `z` (
  `a` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of z
-- ----------------------------
