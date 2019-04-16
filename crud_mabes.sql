/*
Navicat MySQL Data Transfer

Source Server         : other_local
Source Server Version : 100137
Source Host           : localhost:3306
Source Database       : crud_mabes

Target Server Type    : MYSQL
Target Server Version : 100137
File Encoding         : 65001

Date: 2019-04-08 13:08:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for anggota_tni
-- ----------------------------
DROP TABLE IF EXISTS `anggota_tni`;
CREATE TABLE `anggota_tni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `pangkat` varchar(255) DEFAULT NULL,
  `nrp` varchar(255) DEFAULT NULL,
  `korps` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `kesatuan` varchar(255) DEFAULT NULL,
  `matra` varchar(255) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of anggota_tni
-- ----------------------------
INSERT INTO `anggota_tni` VALUES ('1', 'Christian Rosandhy', 'fre', '665', 'f', 'df', 'df', 'df', 'Jl Bedugul no 49', 'me@tianrosandhy.com', '1');
INSERT INTO `anggota_tni` VALUES ('2', 'Onyol Gunawan', null, null, null, null, null, null, 'Jl Baturiti no 35', 'me@onyol.com', '1');
INSERT INTO `anggota_tni` VALUES ('3', 'Semvag Vochonk', null, null, null, null, null, null, 'Jl Sesetan no 29', 'me@semvag.com', '1');
INSERT INTO `anggota_tni` VALUES ('4', 'Ray Michele', null, null, null, null, null, null, 'Jl Sampoerna no 141', 'me@ray.com', '0');
INSERT INTO `anggota_tni` VALUES ('5', 'Hehehe', null, null, null, null, null, null, 'Ishssss', 'tian@malah.com', '1');

-- ----------------------------
-- Table structure for tb_karyawan
-- ----------------------------
DROP TABLE IF EXISTS `tb_karyawan`;
CREATE TABLE `tb_karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  `pangkat` varchar(255) DEFAULT NULL,
  `korps` varchar(255) DEFAULT NULL,
  `kesatuan` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `matra` varchar(255) DEFAULT NULL,
  `nrp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_karyawan
-- ----------------------------
INSERT INTO `tb_karyawan` VALUES ('1', 'Christian Rosandhy', 'Jl Bedugul no 49', 'me@tianrosandhy.com', '1', 'fre', 'f', 'df', 'df', 'df', '665');
INSERT INTO `tb_karyawan` VALUES ('2', 'Onyol Gunawan', 'Jl Baturiti no 35', 'me@onyol.com', '1', null, null, null, null, null, null);
INSERT INTO `tb_karyawan` VALUES ('3', 'Semvag Vochonk', 'Jl Sesetan no 29', 'me@semvag.com', '1', null, null, null, null, null, null);
INSERT INTO `tb_karyawan` VALUES ('4', 'Ray Michele', 'Jl Sampoerna no 141', 'me@ray.com', '0', null, null, null, null, null, null);
INSERT INTO `tb_karyawan` VALUES ('5', 'Hehehe', 'Ishssss', 'tian@malah.com', '1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'df', 'dfd', '1');
INSERT INTO `users` VALUES ('2', 'dfds', 'sdfds', '1');
SET FOREIGN_KEY_CHECKS=1;
