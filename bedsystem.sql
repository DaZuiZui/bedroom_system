/*
 Navicat Premium Data Transfer

 Source Server         : mysql in MacOS
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : localhost:3306
 Source Schema         : bedsystem

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 26/05/2023 01:15:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bed
-- ----------------------------
DROP TABLE IF EXISTS `bed`;
CREATE TABLE `bed` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bed_id` int DEFAULT NULL COMMENT '床位id',
  `builder_name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '公寓楼名字',
  `class_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '所属班级',
  `profession` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '所属专业',
  `room_id` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '房间号',
  `floor_id` int DEFAULT NULL COMMENT '楼层',
  `user_id` bigint DEFAULT NULL COMMENT '所属人',
  `sex` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '所属性别',
  `principal` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '负责人',
  `phone` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '负责人电话号码',
  `status` int DEFAULT NULL COMMENT '床位状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of bed
-- ----------------------------
BEGIN;
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (165, 1, '第6公寓', '1班', '软件工程', '101', 1, NULL, '男', 'brayn', '10086', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (166, 1, '第6公寓', '1班', '软件工程', '102', 1, NULL, '男', 'brayn', '10087', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (167, 1, '第6公寓', '1班', '软件工程', '103', 1, NULL, '男', 'brayn', '10088', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (168, 3, '第6公寓', '1班', '软件工程', '104', 1, NULL, '男', 'brayn', '10089', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (169, 1, '第6公寓', '1班', '软件工程', '105', 1, NULL, '男', 'brayn', '10090', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (170, 4, '第6公寓', '1班', '软件工程', '106', 1, NULL, '男', 'brayn', '10091', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (171, 1, '第6公寓', '1班', '软件工程', '107', 1, NULL, '男', 'brayn', '10092', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (172, 1, '第6公寓', '2班', '计算机科学', '108', 1, NULL, '男', 'brayn', '10093', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (173, 1, '第6公寓', '2班', '计算机科学', '109', 1, NULL, '男', 'brayn', '10094', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (174, 1, '第6公寓', '2班', '计算机科学', '110', 1, NULL, '男', 'brayn', '10095', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (175, 1, '第6公寓', '1班', '计算机科学', '111', 1, NULL, '男', 'brayn', '10096', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (176, 1, '第6公寓', '1班', '计算机科学', '112', 1, NULL, '男', 'brayn', '10097', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (177, 1, '第6公寓', '2班', '计算机科学', '113', 1, NULL, '男', 'brayn', '10098', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (178, 1, '第6公寓', '2班', '计算机科学', '114', 1, NULL, '男', 'brayn', '10099', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (179, 1, '第6公寓', '2班', '计算机科学', '115', 1, NULL, '男', 'brayn', '10100', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (180, 1, '第6公寓', '2班', '计算机科学', '116', 1, NULL, '男', 'brayn', '10101', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (181, 1, '第6公寓', '2班', '计算机科学', '117', 1, NULL, '男', 'brayn', '10102', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (182, 1, '第6公寓', '3班', '计算机科学', '118', 1, NULL, '男', 'brayn', '10103', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (183, 1, '第6公寓', '3班', '计算机科学', '119', 1, NULL, '男', 'brayn', '10104', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (184, 1, '第6公寓', '3班', '计算机科学', '120', 1, NULL, '男', 'brayn', '10105', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (185, 1, '第6公寓', '3班', '计算机科学', '121', 1, NULL, '男', 'brayn', '10106', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (186, 1, '第6公寓', '3班', '计算机科学', '122', 1, NULL, '男', 'brayn', '10107', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (187, 1, '第6公寓', '1班', '电子商务', '123', 1, NULL, '男', 'brayn', '10108', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (188, 1, '第6公寓', '1班', '电子商务', '124', 1, NULL, '男', 'brayn', '10109', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (189, 1, '第6公寓', '1班', '电子商务', '125', 1, NULL, '男', 'brayn', '10110', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (190, 1, '第6公寓', '1班', '电子商务', '126', 1, NULL, '男', 'brayn', '10111', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (191, 1, '第6公寓', '1班', '电子商务', '127', 1, NULL, '男', 'brayn', '10112', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (192, 1, '第6公寓', '1班', '学前教育', '128', 1, NULL, '男', 'brayn', '10113', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (193, 1, '第6公寓', '1班', '学前教育', '129', 1, NULL, '男', 'brayn', '10114', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (194, 1, '第6公寓', '1班', '学前教育', '130', 1, NULL, '男', 'brayn', '10115', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (195, 1, '第6公寓', '1班', '学前教育', '131', 1, NULL, '男', 'brayn', '10116', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (196, 1, '第6公寓', '1班', '软件工程', '132', 1, NULL, '男', 'brayn', '10117', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (197, 1, '第6公寓', '1班', '软件工程', '201', 2, NULL, '男', 'brayn', '10086', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (198, 1, '第6公寓', '1班', '软件工程', '202', 2, NULL, '男', 'brayn', '10087', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (199, 1, '第6公寓', '1班', '软件工程', '203', 2, NULL, '男', 'brayn', '10088', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (200, 3, '第6公寓', '1班', '软件工程', '204', 2, NULL, '男', 'brayn', '10089', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (201, 1, '第6公寓', '1班', '软件工程', '205', 2, NULL, '男', 'brayn', '10090', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (202, 4, '第6公寓', '1班', '软件工程', '206', 2, NULL, '男', 'brayn', '10091', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (203, 1, '第6公寓', '1班', '计算机科学', '207', 2, NULL, '男', 'brayn', '10092', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (204, 1, '第6公寓', '2班', '计算机科学', '208', 2, NULL, '男', 'brayn', '10093', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (205, 1, '第6公寓', '2班', '计算机科学', '209', 2, NULL, '男', 'brayn', '10094', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (206, 1, '第6公寓', '2班', '计算机科学', '210', 2, NULL, '男', 'brayn', '10095', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (207, 1, '第6公寓', '2班', '计算机科学', '211', 2, NULL, '男', 'brayn', '10096', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (208, 1, '第6公寓', '2班', '计算机科学', '212', 2, NULL, '男', 'brayn', '10097', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (209, 1, '第6公寓', '2班', '计算机科学', '213', 2, NULL, '男', 'brayn', '10098', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (210, 1, '第6公寓', '2班', '计算机科学', '214', 2, NULL, '男', 'brayn', '10099', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (211, 1, '第6公寓', '2班', '计算机科学', '215', 2, NULL, '男', 'brayn', '10100', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (212, 1, '第6公寓', '2班', '计算机科学', '216', 2, NULL, '男', 'brayn', '10101', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (213, 1, '第6公寓', '2班', '计算机科学', '217', 2, NULL, '男', 'brayn', '10102', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (214, 1, '第6公寓', '3班', '计算机科学', '218', 2, NULL, '男', 'brayn', '10103', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (215, 1, '第6公寓', '3班', '计算机科学', '219', 2, NULL, '男', 'brayn', '10104', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (216, 1, '第6公寓', '3班', '计算机科学', '220', 2, NULL, '男', 'brayn', '10105', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (217, 1, '第6公寓', '3班', '计算机科学', '221', 2, NULL, '男', 'brayn', '10106', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (218, 1, '第6公寓', '3班', '计算机科学', '222', 2, NULL, '男', 'brayn', '10107', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (219, 1, '第6公寓', '1班', '电子商务', '223', 2, NULL, '男', 'brayn', '10108', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (220, 1, '第6公寓', '1班', '电子商务', '224', 2, NULL, '男', 'brayn', '10109', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (221, 1, '第6公寓', '1班', '电子商务', '225', 2, NULL, '男', 'brayn', '10110', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (222, 1, '第6公寓', '1班', '电子商务', '226', 2, NULL, '男', 'brayn', '10111', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (223, 1, '第6公寓', '1班', '电子商务', '227', 2, NULL, '男', 'brayn', '10112', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (224, 1, '第6公寓', '1班', '学前教育', '228', 2, NULL, '男', 'brayn', '10113', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (225, 1, '第6公寓', '1班', '学前教育', '229', 2, NULL, '男', 'brayn', '10114', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (226, 1, '第6公寓', '1班', '学前教育', '230', 2, NULL, '男', 'brayn', '10115', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (227, 1, '第6公寓', '1班', '学前教育', '231', 2, NULL, '男', 'brayn', '10116', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (228, 1, '第6公寓', '1班', '学前教育', '232', 2, NULL, '男', 'brayn', '10117', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (229, 2, '第6公寓', '1班', '软件工程', '201', 2, NULL, '男', 'brayn', '10086', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (230, 2, '第6公寓', '1班', '软件工程', '202', 2, NULL, '男', 'brayn', '10087', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (231, 2, '第6公寓', '1班', '软件工程', '203', 2, NULL, '男', 'brayn', '10088', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (232, 2, '第6公寓', '1班', '软件工程', '204', 2, NULL, '男', 'brayn', '10089', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (233, 2, '第6公寓', '1班', '软件工程', '205', 2, NULL, '男', 'brayn', '10090', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (234, 2, '第6公寓', '1班', '软件工程', '206', 2, NULL, '男', 'brayn', '10091', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (235, 2, '第6公寓', '1班', '软件工程', '207', 2, NULL, '男', 'brayn', '10092', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (236, 2, '第6公寓', '2班', '计算机科学', '208', 2, NULL, '男', 'brayn', '10093', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (237, 2, '第6公寓', '2班', '计算机科学', '209', 2, NULL, '男', 'brayn', '10094', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (238, 2, '第6公寓', '2班', '计算机科学', '210', 2, NULL, '男', 'brayn', '10095', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (239, 2, '第6公寓', '2班', '计算机科学', '211', 2, NULL, '男', 'brayn', '10096', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (240, 2, '第6公寓', '2班', '计算机科学', '212', 2, NULL, '男', 'brayn', '10097', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (241, 2, '第6公寓', '2班', '计算机科学', '213', 2, NULL, '男', 'brayn', '10098', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (242, 2, '第6公寓', '2班', '计算机科学', '214', 2, NULL, '男', 'brayn', '10099', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (243, 2, '第6公寓', '1班', '计算机科学', '215', 2, NULL, '男', 'brayn', '10100', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (244, 2, '第6公寓', '1班', '计算机科学', '216', 2, NULL, '男', 'brayn', '10101', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (245, 2, '第6公寓', '2班', '计算机科学', '217', 2, NULL, '男', 'brayn', '10102', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (246, 2, '第6公寓', '3班', '计算机科学', '218', 2, NULL, '男', 'brayn', '10103', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (247, 2, '第6公寓', '3班', '计算机科学', '219', 2, NULL, '男', 'brayn', '10104', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (248, 2, '第6公寓', '3班', '计算机科学', '220', 2, NULL, '男', 'brayn', '10105', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (249, 2, '第6公寓', '3班', '计算机科学', '221', 2, NULL, '男', 'brayn', '10106', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (250, 2, '第6公寓', '3班', '计算机科学', '222', 2, NULL, '男', 'brayn', '10107', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (251, 2, '第6公寓', '1班', '电子商务', '223', 2, NULL, '男', 'brayn', '10108', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (252, 2, '第6公寓', '1班', '电子商务', '224', 2, NULL, '男', 'brayn', '10109', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (253, 2, '第6公寓', '1班', '电子商务', '225', 2, NULL, '男', 'brayn', '10110', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (254, 2, '第6公寓', '1班', '电子商务', '226', 2, NULL, '男', 'brayn', '10111', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (255, 2, '第6公寓', '1班', '电子商务', '227', 2, NULL, '男', 'brayn', '10112', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (256, 2, '第6公寓', '1班', '学前教育', '228', 2, NULL, '男', 'brayn', '10113', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (257, 2, '第6公寓', '1班', '学前教育', '229', 2, NULL, '男', 'brayn', '10114', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (258, 2, '第6公寓', '1班', '学前教育', '230', 2, NULL, '男', 'brayn', '10115', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (259, 2, '第6公寓', '1班', '学前教育', '231', 2, NULL, '男', 'brayn', '10116', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (261, 3, '第6公寓', '1班', '软件工程', '132', 1, NULL, '男', 'bryan', '12233', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (262, 4, '第6公寓', '1班', '软件工程', '132', 1, NULL, '男', 'brayn', '12313', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (263, 1, '第7公寓', '2班', '软件工程', '132', 1, NULL, '女', 'brayan', '1231', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (264, 2, '第7公寓', '1班', '软件工程', '132', 1, NULL, '女', 'brayn', '123', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (265, 3, '第7公寓', '3班', '软件工程', '132', 1, NULL, '女', 'bryan', '123', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (266, 4, '第7公寓', '2班', '软件工程', '132', 1, NULL, '女', 'bryan', '123', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (267, 2, '第7公寓', '1班', '软件工程', '201', 2, NULL, '女', 'brayn', '10086', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (268, 2, '第7公寓', '1班', '软件工程', '202', 2, NULL, '女', 'brayn', '10087', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (269, 2, '第7公寓', '1班', '软件工程', '203', 2, NULL, '女', 'brayn', '10088', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (270, 2, '第7公寓', '1班', '软件工程', '204', 2, NULL, '女', 'brayn', '10089', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (271, 2, '第7公寓', '1班', '软件工程', '205', 2, NULL, '女', 'brayn', '10090', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (272, 2, '第7公寓', '1班', '软件工程', '206', 2, NULL, '女', 'brayn', '10091', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (273, 2, '第7公寓', '1班', '软件工程', '207', 2, NULL, '女', 'brayn', '10092', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (274, 2, '第7公寓', '2班', '计算机科学', '208', 2, NULL, '女', 'brayn', '10093', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (275, 2, '第7公寓', '2班', '计算机科学', '209', 2, NULL, '女', 'brayn', '10094', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (276, 2, '第7公寓', '2班', '计算机科学', '210', 2, NULL, '女', 'brayn', '10095', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (277, 2, '第7公寓', '2班', '计算机科学', '211', 2, NULL, '女', 'brayn', '10096', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (278, 2, '第7公寓', '2班', '计算机科学', '212', 2, NULL, '女', 'brayn', '10097', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (279, 2, '第7公寓', '2班', '计算机科学', '213', 2, NULL, '女', 'brayn', '10098', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (280, 2, '第7公寓', '2班', '计算机科学', '214', 2, NULL, '女', 'brayn', '10099', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (281, 2, '第7公寓', '2班', '计算机科学', '215', 2, NULL, '女', 'brayn', '10100', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (282, 2, '第7公寓', '2班', '计算机科学', '216', 2, NULL, '女', 'brayn', '10101', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (283, 2, '第7公寓', '2班', '计算机科学', '217', 2, NULL, '女', 'brayn', '10102', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (284, 2, '第7公寓', '3班', '计算机科学', '218', 2, NULL, '女', 'brayn', '10103', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (285, 2, '第7公寓', '3班', '计算机科学', '219', 2, NULL, '女', 'brayn', '10104', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (286, 2, '第7公寓', '3班', '计算机科学', '220', 2, NULL, '女', 'brayn', '10105', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (287, 2, '第7公寓', '3班', '计算机科学', '221', 2, NULL, '女', 'brayn', '10106', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (288, 2, '第7公寓', '3班', '计算机科学', '222', 2, NULL, '女', 'brayn', '10107', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (289, 2, '第7公寓', '1班', '电子商务', '223', 2, NULL, '女', 'brayn', '10108', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (290, 2, '第7公寓', '1班', '电子商务', '224', 2, NULL, '女', 'brayn', '10109', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (291, 2, '第7公寓', '1班', '电子商务', '225', 2, NULL, '女', 'brayn', '10110', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (292, 2, '第7公寓', '1班', '电子商务', '226', 2, NULL, '女', 'brayn', '10111', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (293, 2, '第7公寓', '1班', '电子商务', '227', 2, NULL, '女', 'brayn', '10112', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (294, 2, '第7公寓', '1班', '学前教育', '228', 2, NULL, '女', 'brayn', '10113', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (295, 2, '第7公寓', '1班', '学前教育', '229', 2, NULL, '女', 'brayn', '10114', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (296, 2, '第7公寓', '1班', '学前教育', '230', 2, NULL, '女', 'brayn', '10115', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (297, 2, '第7公寓', '1班', '学前教育', '231', 2, NULL, '女', 'brayn', '10116', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (298, 2, '第7公寓', '1班', '计算机科学', '132', 1, NULL, '女', 'brayn', '10117', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (299, 3, '第7公寓', '1班', '软件工程', '301', 1, NULL, '女', 'brayn', '10086', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (300, 3, '第7公寓', '1班', '软件工程', '302', 1, NULL, '女', 'brayn', '10087', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (301, 3, '第7公寓', '1班', '软件工程', '303', 1, NULL, '女', 'brayn', '10088', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (302, 3, '第7公寓', '1班', '软件工程', '304', 1, NULL, '女', 'brayn', '10089', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (303, 3, '第7公寓', '1班', '软件工程', '305', 1, NULL, '女', 'brayn', '10090', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (304, 3, '第7公寓', '1班', '软件工程', '306', 1, NULL, '女', 'brayn', '10091', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (305, 3, '第7公寓', '1班', '软件工程', '307', 1, NULL, '女', 'brayn', '10092', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (306, 3, '第7公寓', '2班', '计算机科学', '308', 1, NULL, '女', 'brayn', '10093', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (307, 3, '第7公寓', '2班', '计算机科学', '309', 1, NULL, '女', 'brayn', '10094', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (308, 3, '第7公寓', '2班', '计算机科学', '310', 1, NULL, '女', 'brayn', '10095', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (309, 3, '第7公寓', '2班', '计算机科学', '311', 1, NULL, '女', 'brayn', '10096', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (310, 3, '第7公寓', '2班', '计算机科学', '312', 1, NULL, '女', 'brayn', '10097', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (311, 3, '第7公寓', '2班', '计算机科学', '313', 1, NULL, '女', 'brayn', '10098', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (312, 3, '第7公寓', '2班', '计算机科学', '314', 1, NULL, '女', 'brayn', '10099', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (313, 3, '第7公寓', '2班', '计算机科学', '315', 1, NULL, '女', 'brayn', '10100', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (314, 3, '第7公寓', '2班', '计算机科学', '316', 1, NULL, '女', 'brayn', '10101', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (315, 3, '第7公寓', '2班', '计算机科学', '317', 1, NULL, '女', 'brayn', '10102', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (316, 3, '第7公寓', '3班', '计算机科学', '318', 1, NULL, '女', 'brayn', '10103', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (317, 3, '第7公寓', '3班', '计算机科学', '319', 1, NULL, '女', 'brayn', '10104', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (318, 3, '第7公寓', '3班', '计算机科学', '320', 1, NULL, '女', 'brayn', '10105', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (319, 3, '第7公寓', '3班', '计算机科学', '321', 1, NULL, '女', 'brayn', '10106', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (320, 3, '第7公寓', '3班', '计算机科学', '322', 1, NULL, '女', 'brayn', '10107', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (321, 3, '第7公寓', '1班', '电子商务', '323', 1, NULL, '女', 'brayn', '10108', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (322, 3, '第7公寓', '1班', '电子商务', '324', 1, NULL, '女', 'brayn', '10109', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (323, 3, '第7公寓', '1班', '电子商务', '325', 1, NULL, '女', 'brayn', '10110', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (324, 3, '第7公寓', '1班', '电子商务', '326', 1, NULL, '女', 'brayn', '10111', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (325, 3, '第7公寓', '1班', '电子商务', '327', 1, NULL, '女', 'brayn', '10112', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (326, 3, '第7公寓', '1班', '学前教育', '328', 1, NULL, '女', 'brayn', '10113', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (327, 3, '第7公寓', '1班', '学前教育', '329', 1, NULL, '女', 'brayn', '10114', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (328, 3, '第7公寓', '1班', '学前教育', '330', 1, NULL, '女', 'brayn', '10115', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (329, 3, '第7公寓', '1班', '学前教育', '331', 1, NULL, '女', 'brayn', '10116', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (330, 3, '第7公寓', '1班', '计算机科学', '332', 1, NULL, '女', 'brayn', '10117', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (332, 3, '第7公寓', '1班', '软件工程', '301', 3, NULL, '女', 'brayn', '10086', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (333, 3, '第7公寓', '1班', '软件工程', '302', 3, NULL, '女', 'brayn', '10087', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (334, 3, '第7公寓', '1班', '软件工程', '303', 3, NULL, '女', 'brayn', '10088', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (335, 3, '第7公寓', '1班', '软件工程', '304', 3, NULL, '女', 'brayn', '10089', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (336, 3, '第7公寓', '1班', '软件工程', '305', 3, NULL, '女', 'brayn', '10090', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (337, 3, '第7公寓', '1班', '软件工程', '306', 3, NULL, '女', 'brayn', '10091', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (338, 3, '第7公寓', '1班', '软件工程', '307', 3, NULL, '女', 'brayn', '10092', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (339, 3, '第7公寓', '2班', '计算机科学', '308', 3, NULL, '女', 'brayn', '10093', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (340, 3, '第7公寓', '2班', '计算机科学', '309', 3, NULL, '女', 'brayn', '10094', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (341, 3, '第7公寓', '2班', '计算机科学', '310', 3, NULL, '女', 'brayn', '10095', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (342, 3, '第7公寓', '2班', '计算机科学', '311', 3, NULL, '女', 'brayn', '10096', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (343, 3, '第7公寓', '2班', '计算机科学', '312', 3, NULL, '女', 'brayn', '10097', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (344, 3, '第7公寓', '2班', '计算机科学', '313', 3, NULL, '女', 'brayn', '10098', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (345, 3, '第7公寓', '2班', '计算机科学', '314', 3, NULL, '女', 'brayn', '10099', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (346, 3, '第7公寓', '2班', '计算机科学', '315', 3, NULL, '女', 'brayn', '10100', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (347, 3, '第7公寓', '2班', '计算机科学', '316', 3, NULL, '女', 'brayn', '10101', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (348, 3, '第7公寓', '2班', '计算机科学', '317', 3, NULL, '女', 'brayn', '10102', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (349, 3, '第7公寓', '3班', '计算机科学', '318', 3, NULL, '女', 'brayn', '10103', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (350, 3, '第7公寓', '3班', '计算机科学', '319', 3, NULL, '女', 'brayn', '10104', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (351, 3, '第7公寓', '3班', '计算机科学', '320', 3, NULL, '女', 'brayn', '10105', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (352, 3, '第7公寓', '3班', '计算机科学', '321', 3, NULL, '女', 'brayn', '10106', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (353, 3, '第7公寓', '3班', '计算机科学', '322', 3, NULL, '女', 'brayn', '10107', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (354, 3, '第7公寓', '1班', '电子商务', '323', 3, NULL, '女', 'brayn', '10108', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (355, 3, '第7公寓', '1班', '电子商务', '324', 3, NULL, '女', 'brayn', '10109', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (356, 3, '第7公寓', '1班', '电子商务', '325', 3, NULL, '女', 'brayn', '10110', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (357, 3, '第7公寓', '1班', '电子商务', '326', 3, NULL, '女', 'brayn', '10111', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (358, 3, '第7公寓', '1班', '电子商务', '327', 3, NULL, '女', 'brayn', '10112', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (359, 3, '第7公寓', '1班', '学前教育', '328', 3, NULL, '女', 'brayn', '10113', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (360, 3, '第7公寓', '1班', '学前教育', '329', 3, NULL, '女', 'brayn', '10114', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (361, 3, '第7公寓', '1班', '学前教育', '330', 3, NULL, '女', 'brayn', '10115', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (362, 3, '第7公寓', '1班', '学前教育', '331', 3, NULL, '女', 'brayn', '10116', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (363, 3, '第7公寓', '1班', '计算机科学', '332', 3, NULL, '女', 'brayn', '10117', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (364, 1, '第7公寓', '1班', '计算机科学', '333', 1, NULL, '女', 'brayn', '10117', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (365, 4, '第7公寓', '1班', '软件工程', '301', 3, NULL, '女', 'brayn', '10086', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (366, 4, '第7公寓', '1班', '软件工程', '302', 3, NULL, '女', 'brayn', '10087', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (367, 4, '第7公寓', '1班', '软件工程', '303', 3, NULL, '女', 'brayn', '10088', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (368, 4, '第7公寓', '1班', '软件工程', '304', 3, NULL, '女', 'brayn', '10089', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (369, 4, '第7公寓', '1班', '软件工程', '305', 3, NULL, '女', 'brayn', '10090', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (370, 4, '第7公寓', '1班', '软件工程', '306', 3, NULL, '女', 'brayn', '10091', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (371, 4, '第7公寓', '1班', '软件工程', '307', 3, NULL, '女', 'brayn', '10092', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (372, 4, '第7公寓', '2班', '计算机科学', '308', 3, NULL, '女', 'brayn', '10093', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (373, 4, '第7公寓', '2班', '计算机科学', '309', 3, NULL, '女', 'brayn', '10094', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (374, 4, '第7公寓', '2班', '计算机科学', '310', 3, NULL, '女', 'brayn', '10095', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (375, 4, '第7公寓', '2班', '计算机科学', '311', 3, NULL, '女', 'brayn', '10096', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (376, 4, '第7公寓', '2班', '计算机科学', '312', 3, NULL, '女', 'brayn', '10097', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (377, 4, '第7公寓', '2班', '计算机科学', '313', 3, NULL, '女', 'brayn', '10098', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (378, 4, '第7公寓', '2班', '计算机科学', '314', 3, NULL, '女', 'brayn', '10099', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (379, 4, '第7公寓', '2班', '计算机科学', '315', 3, NULL, '女', 'brayn', '10100', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (380, 4, '第7公寓', '2班', '计算机科学', '316', 3, NULL, '女', 'brayn', '10101', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (381, 4, '第7公寓', '2班', '计算机科学', '317', 3, NULL, '女', 'brayn', '10102', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (382, 4, '第7公寓', '3班', '计算机科学', '318', 3, NULL, '女', 'brayn', '10103', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (383, 4, '第7公寓', '3班', '计算机科学', '319', 3, NULL, '女', 'brayn', '10104', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (384, 4, '第7公寓', '3班', '计算机科学', '320', 3, NULL, '女', 'brayn', '10105', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (385, 4, '第7公寓', '3班', '计算机科学', '321', 3, NULL, '女', 'brayn', '10106', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (386, 4, '第7公寓', '3班', '计算机科学', '322', 3, NULL, '女', 'brayn', '10107', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (387, 4, '第7公寓', '1班', '电子商务', '323', 3, NULL, '女', 'brayn', '10108', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (388, 4, '第7公寓', '1班', '电子商务', '324', 3, NULL, '女', 'brayn', '10109', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (389, 4, '第7公寓', '1班', '电子商务', '325', 3, NULL, '女', 'brayn', '10110', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (390, 4, '第7公寓', '1班', '电子商务', '326', 3, NULL, '女', 'brayn', '10111', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (391, 4, '第7公寓', '1班', '电子商务', '327', 3, NULL, '女', 'brayn', '10112', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (392, 4, '第7公寓', '1班', '学前教育', '328', 3, NULL, '女', 'brayn', '10113', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (393, 4, '第7公寓', '1班', '学前教育', '329', 3, NULL, '女', 'brayn', '10114', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (394, 4, '第7公寓', '1班', '学前教育', '330', 3, NULL, '女', 'brayn', '10115', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (395, 4, '第7公寓', '1班', '学前教育', '331', 3, NULL, '女', 'brayn', '10116', 0);
INSERT INTO `bed` (`id`, `bed_id`, `builder_name`, `class_name`, `profession`, `room_id`, `floor_id`, `user_id`, `sex`, `principal`, `phone`, `status`) VALUES (396, 4, '第7公寓', '1班', '计算机科学', '332', 3, NULL, '女', 'brayn', '10117', 0);
COMMIT;

-- ----------------------------
-- Table structure for bedinfo
-- ----------------------------
DROP TABLE IF EXISTS `bedinfo`;
CREATE TABLE `bedinfo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  `builder_name` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `bed_id` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL COMMENT 'userid',
  `floor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of bedinfo
-- ----------------------------
BEGIN;
INSERT INTO `bedinfo` (`id`, `room_id`, `builder_name`, `bed_id`, `user_id`, `floor_id`) VALUES (17, '112', '第6公寓', 176, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for builder
-- ----------------------------
DROP TABLE IF EXISTS `builder`;
CREATE TABLE `builder` (
  `id` bigint NOT NULL COMMENT '主键',
  `name` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '楼名字',
  `max_floor` int DEFAULT NULL COMMENT '有几层楼',
  `sex` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of builder
-- ----------------------------
BEGIN;
INSERT INTO `builder` (`id`, `name`, `max_floor`, `sex`) VALUES (1, '第6公寓', 6, '男');
INSERT INTO `builder` (`id`, `name`, `max_floor`, `sex`) VALUES (2, '第7公寓', 7, '女');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '姓名',
  `username` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'ic',
  `password` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL COMMENT 'passwrod',
  `role` int DEFAULT NULL COMMENT 'role',
  `sex` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '性别',
  `mojar` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '专业',
  `college` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '学院',
  `class_id` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '班级',
  `grade` int DEFAULT NULL COMMENT 'grade',
  `principal` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL COMMENT '负责人',
  `create_by` bigint DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` int DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2776 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `name`, `username`, `password`, `role`, `sex`, `mojar`, `college`, `class_id`, `grade`, `principal`, `create_by`, `create_time`, `update_by`, `update_time`, `status`) VALUES (1, '杨易达', 'y51288033', 'admin', 1, '男', '计算机科学', '信息学院', '1班', 2021, '信息学院专业社团', 1, '2023-05-21 23:10:36', NULL, NULL, 1);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `role`, `sex`, `mojar`, `college`, `class_id`, `grade`, `principal`, `create_by`, `create_time`, `update_by`, `update_time`, `status`) VALUES (2, '李天佑', 'test2', 'admin', 1, '男', '软件工程', '信息学院', '1班', 2021, '信息学院', 1, '2023-05-24 00:15:15', NULL, NULL, 1);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `role`, `sex`, `mojar`, `college`, `class_id`, `grade`, `principal`, `create_by`, `create_time`, `update_by`, `update_time`, `status`) VALUES (3, '刘同菲', 'test1', 'admin', 0, '男', '软件工程', '信息学院', '1班', 2021, '信息学院', 1, '2023-05-24 23:31:20', NULL, NULL, 1);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `role`, `sex`, `mojar`, `college`, `class_id`, `grade`, `principal`, `create_by`, `create_time`, `update_by`, `update_time`, `status`) VALUES (4, '女生A', 'test3', 'admin', 0, '女', '软件工程', '信息学院', '1班', 2021, '信息学院', 1, '2023-05-25 00:07:58', NULL, NULL, 1);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `role`, `sex`, `mojar`, `college`, `class_id`, `grade`, `principal`, `create_by`, `create_time`, `update_by`, `update_time`, `status`) VALUES (5, '女生B', 'test4', 'admin', 0, '女', '软件工程', '信息学院', '2班', 2021, '信息学院', 1, '2023-05-25 00:13:32', NULL, NULL, 1);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `role`, `sex`, `mojar`, `college`, `class_id`, `grade`, `principal`, `create_by`, `create_time`, `update_by`, `update_time`, `status`) VALUES (6, '女生C', 'test5', 'admin', 0, '女', '软件工程', '信息学院', '2班', 2021, '信息学院', 1, '2023-05-25 00:17:41', NULL, NULL, 1);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `role`, `sex`, `mojar`, `college`, `class_id`, `grade`, `principal`, `create_by`, `create_time`, `update_by`, `update_time`, `status`) VALUES (7, '女生D', 'test6', 'admin', 0, '女', '软件工程', '信息学院', '3班', 2021, '信息学院', 1, '2023-05-25 00:18:05', NULL, NULL, 1);
INSERT INTO `user` (`id`, `name`, `username`, `password`, `role`, `sex`, `mojar`, `college`, `class_id`, `grade`, `principal`, `create_by`, `create_time`, `update_by`, `update_time`, `status`) VALUES (8, '测试', 'test7', 'admin', 0, '男', '软件工程', '信息学院', '1班', 2021, '信息学院', 1, '2023-05-25 15:23:02', NULL, NULL, 1);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
