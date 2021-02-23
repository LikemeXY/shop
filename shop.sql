/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 03/11/2020 11:20:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', 'e10adc3949ba59abbe56e057f20f883e');

-- ----------------------------
-- Table structure for color
-- ----------------------------
DROP TABLE IF EXISTS `color`;
CREATE TABLE `color`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `color_id` int(0) NULL DEFAULT NULL,
  `color_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 186 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of color
-- ----------------------------
INSERT INTO `color` VALUES (1, 1, '红色');
INSERT INTO `color` VALUES (2, 1, '黑色');
INSERT INTO `color` VALUES (3, 1, '白色');
INSERT INTO `color` VALUES (4, 1, '肤色');
INSERT INTO `color` VALUES (5, 2, '红色');
INSERT INTO `color` VALUES (6, 2, '白色');
INSERT INTO `color` VALUES (7, 2, '黑色');
INSERT INTO `color` VALUES (8, 2, '肤色');
INSERT INTO `color` VALUES (9, 3, '黑色');
INSERT INTO `color` VALUES (10, 3, '白色');
INSERT INTO `color` VALUES (11, 3, '黄色');
INSERT INTO `color` VALUES (12, 3, '绿色');
INSERT INTO `color` VALUES (13, 4, '红色');
INSERT INTO `color` VALUES (14, 4, '灰色');
INSERT INTO `color` VALUES (15, 4, '黑色');
INSERT INTO `color` VALUES (16, 5, '粉色');
INSERT INTO `color` VALUES (17, 5, '绿色');
INSERT INTO `color` VALUES (18, 5, '黑色');
INSERT INTO `color` VALUES (19, 6, '粉色');
INSERT INTO `color` VALUES (20, 6, '黑色');
INSERT INTO `color` VALUES (21, 6, '灰蓝');
INSERT INTO `color` VALUES (22, 7, '黑色');
INSERT INTO `color` VALUES (23, 7, '白色');
INSERT INTO `color` VALUES (24, 7, '粉色');
INSERT INTO `color` VALUES (25, 8, '黑色');
INSERT INTO `color` VALUES (26, 8, '白色');
INSERT INTO `color` VALUES (27, 8, '红色');
INSERT INTO `color` VALUES (28, 8, '灰色');
INSERT INTO `color` VALUES (29, 9, '白色');
INSERT INTO `color` VALUES (30, 9, '黄色');
INSERT INTO `color` VALUES (31, 9, '绿色');
INSERT INTO `color` VALUES (32, 9, '黑色');
INSERT INTO `color` VALUES (33, 10, '白色');
INSERT INTO `color` VALUES (34, 10, '粉色');
INSERT INTO `color` VALUES (35, 10, '灰色');
INSERT INTO `color` VALUES (36, 11, '白色');
INSERT INTO `color` VALUES (37, 11, '绿色');
INSERT INTO `color` VALUES (38, 11, '黑色');
INSERT INTO `color` VALUES (39, 12, '白色');
INSERT INTO `color` VALUES (40, 12, '粉色');
INSERT INTO `color` VALUES (41, 12, '黄色');
INSERT INTO `color` VALUES (42, 12, '灰色');
INSERT INTO `color` VALUES (43, 13, '绿色');
INSERT INTO `color` VALUES (44, 13, '黑色');
INSERT INTO `color` VALUES (45, 13, '粉色');
INSERT INTO `color` VALUES (46, 14, '粉色');
INSERT INTO `color` VALUES (47, 14, '黑色');
INSERT INTO `color` VALUES (48, 14, '肉色');
INSERT INTO `color` VALUES (49, 14, '灰色');
INSERT INTO `color` VALUES (50, 15, '白色');
INSERT INTO `color` VALUES (51, 15, '红色');
INSERT INTO `color` VALUES (52, 15, '黑色');
INSERT INTO `color` VALUES (53, 16, '黑色');
INSERT INTO `color` VALUES (54, 16, '灰色');
INSERT INTO `color` VALUES (55, 16, '粉红');
INSERT INTO `color` VALUES (56, 17, '黑色');
INSERT INTO `color` VALUES (57, 17, '紫色');
INSERT INTO `color` VALUES (58, 18, '红色');
INSERT INTO `color` VALUES (59, 18, '黑色');
INSERT INTO `color` VALUES (60, 18, '白色');
INSERT INTO `color` VALUES (61, 19, '黑色');
INSERT INTO `color` VALUES (62, 19, '米色');
INSERT INTO `color` VALUES (63, 20, '白色');
INSERT INTO `color` VALUES (64, 20, '黑色');
INSERT INTO `color` VALUES (65, 20, '粉色');
INSERT INTO `color` VALUES (66, 21, '白色');
INSERT INTO `color` VALUES (67, 22, '黑色');
INSERT INTO `color` VALUES (68, 22, '白色');
INSERT INTO `color` VALUES (69, 23, '黑色');
INSERT INTO `color` VALUES (70, 23, '白色');
INSERT INTO `color` VALUES (71, 23, '灰色');
INSERT INTO `color` VALUES (72, 24, '黑色');
INSERT INTO `color` VALUES (73, 24, '米色');
INSERT INTO `color` VALUES (74, 24, '白色');
INSERT INTO `color` VALUES (75, 24, '粉色');
INSERT INTO `color` VALUES (76, 25, '黑色');
INSERT INTO `color` VALUES (77, 25, '黄色');
INSERT INTO `color` VALUES (78, 25, '白色');
INSERT INTO `color` VALUES (79, 25, '蓝色');
INSERT INTO `color` VALUES (80, 26, '黑色');
INSERT INTO `color` VALUES (81, 26, '玫红色');
INSERT INTO `color` VALUES (82, 26, '酒红色');
INSERT INTO `color` VALUES (83, 27, '红色');
INSERT INTO `color` VALUES (84, 27, '黑色');
INSERT INTO `color` VALUES (85, 28, '粉红');
INSERT INTO `color` VALUES (86, 29, '棕黄色');
INSERT INTO `color` VALUES (87, 29, '蓝色');
INSERT INTO `color` VALUES (88, 30, '浅蓝色');
INSERT INTO `color` VALUES (89, 30, '浅粉色');
INSERT INTO `color` VALUES (90, 30, '黑色');
INSERT INTO `color` VALUES (91, 31, '橘色');
INSERT INTO `color` VALUES (92, 31, '棕色');
INSERT INTO `color` VALUES (93, 31, '浅蓝色');
INSERT INTO `color` VALUES (94, 32, '粉色');
INSERT INTO `color` VALUES (95, 32, '蓝色');
INSERT INTO `color` VALUES (96, 33, '酒红色');
INSERT INTO `color` VALUES (97, 33, '棕蓝色');
INSERT INTO `color` VALUES (98, 33, '黑色');
INSERT INTO `color` VALUES (99, 34, '条纹色');
INSERT INTO `color` VALUES (100, 34, '浅蓝色');
INSERT INTO `color` VALUES (101, 34, '棕色');
INSERT INTO `color` VALUES (102, 35, '米黄色');
INSERT INTO `color` VALUES (103, 35, '白色');
INSERT INTO `color` VALUES (104, 35, '棕色');
INSERT INTO `color` VALUES (105, 36, '红色');
INSERT INTO `color` VALUES (106, 37, '豹纹色');
INSERT INTO `color` VALUES (107, 37, '粉红色');
INSERT INTO `color` VALUES (108, 37, '肤色');
INSERT INTO `color` VALUES (109, 38, '黑色');
INSERT INTO `color` VALUES (110, 38, '粉红色');
INSERT INTO `color` VALUES (111, 39, '红色');
INSERT INTO `color` VALUES (112, 39, '黑色');
INSERT INTO `color` VALUES (113, 40, '蓝色');
INSERT INTO `color` VALUES (114, 40, '黑色');
INSERT INTO `color` VALUES (115, 40, '玫红色');
INSERT INTO `color` VALUES (116, 40, '白色');
INSERT INTO `color` VALUES (117, 41, '紫色');
INSERT INTO `color` VALUES (118, 41, '粉红色');
INSERT INTO `color` VALUES (119, 41, '白色');
INSERT INTO `color` VALUES (120, 42, '玫红色');
INSERT INTO `color` VALUES (121, 42, '黑色');
INSERT INTO `color` VALUES (122, 42, '浅蓝色');
INSERT INTO `color` VALUES (123, 42, '藏蓝色');
INSERT INTO `color` VALUES (124, 43, '黑色');
INSERT INTO `color` VALUES (125, 43, '肤色');
INSERT INTO `color` VALUES (126, 44, '黑色');
INSERT INTO `color` VALUES (127, 44, '红色');
INSERT INTO `color` VALUES (128, 45, '浅紫色');
INSERT INTO `color` VALUES (129, 45, '黑色');
INSERT INTO `color` VALUES (130, 46, '黑色');
INSERT INTO `color` VALUES (131, 46, '酒红色');
INSERT INTO `color` VALUES (132, 46, '浅黄色');
INSERT INTO `color` VALUES (133, 46, '浅蓝色');
INSERT INTO `color` VALUES (134, 47, '浅绿色');
INSERT INTO `color` VALUES (135, 48, '白色');
INSERT INTO `color` VALUES (136, 49, '棕蓝色');
INSERT INTO `color` VALUES (137, 49, '白色');
INSERT INTO `color` VALUES (138, 49, '黑色');
INSERT INTO `color` VALUES (139, 50, '豹纹色');
INSERT INTO `color` VALUES (140, 50, '浅粉色');
INSERT INTO `color` VALUES (141, 51, '棕蓝色');
INSERT INTO `color` VALUES (142, 51, '黑色');
INSERT INTO `color` VALUES (143, 51, '玫蓝色');
INSERT INTO `color` VALUES (144, 51, '米黄色');
INSERT INTO `color` VALUES (145, 52, '黑色');
INSERT INTO `color` VALUES (146, 52, '肤色');
INSERT INTO `color` VALUES (147, 52, '橘红色');
INSERT INTO `color` VALUES (148, 52, '浅绿色');
INSERT INTO `color` VALUES (149, 53, '黑色');
INSERT INTO `color` VALUES (150, 53, '白色');
INSERT INTO `color` VALUES (151, 54, '浅绿色');
INSERT INTO `color` VALUES (152, 54, '白色');
INSERT INTO `color` VALUES (153, 55, '黑色');
INSERT INTO `color` VALUES (154, 55, '灰色');
INSERT INTO `color` VALUES (155, 55, '肤色');
INSERT INTO `color` VALUES (156, 55, '白色');
INSERT INTO `color` VALUES (157, 56, '白色');
INSERT INTO `color` VALUES (158, 57, '粉红色');
INSERT INTO `color` VALUES (159, 58, '酒红色');
INSERT INTO `color` VALUES (160, 58, '浅绿色');
INSERT INTO `color` VALUES (161, 58, '浅蓝色');
INSERT INTO `color` VALUES (162, 58, '黑色');
INSERT INTO `color` VALUES (163, 59, '玫红色');
INSERT INTO `color` VALUES (164, 60, '黑色');
INSERT INTO `color` VALUES (165, 60, '玫红色');
INSERT INTO `color` VALUES (166, 61, '黑色');
INSERT INTO `color` VALUES (167, 61, '粉色');
INSERT INTO `color` VALUES (168, 61, '紫色');
INSERT INTO `color` VALUES (169, 62, '黑色');
INSERT INTO `color` VALUES (170, 63, '豹纹白色');
INSERT INTO `color` VALUES (171, 64, '黑色');
INSERT INTO `color` VALUES (172, 64, '白色');
INSERT INTO `color` VALUES (173, 64, '粉红');
INSERT INTO `color` VALUES (174, 65, '黑色');
INSERT INTO `color` VALUES (175, 65, '灰色');
INSERT INTO `color` VALUES (176, 66, '黑色');
INSERT INTO `color` VALUES (177, 66, '粉红');
INSERT INTO `color` VALUES (178, 66, '灰色');
INSERT INTO `color` VALUES (179, 67, '黑色');
INSERT INTO `color` VALUES (180, 67, '白色');
INSERT INTO `color` VALUES (181, 67, '红色');
INSERT INTO `color` VALUES (182, 67, '灰色');
INSERT INTO `color` VALUES (183, 68, '红色');
INSERT INTO `color` VALUES (184, 68, '黑色');
INSERT INTO `color` VALUES (185, 68, '灰色');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `img_id` int(0) NULL DEFAULT NULL,
  `img_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 398 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES (1, 1, 'a1');
INSERT INTO `images` VALUES (2, 1, 'a1.1');
INSERT INTO `images` VALUES (3, 1, 'a1.2');
INSERT INTO `images` VALUES (4, 2, 'a2');
INSERT INTO `images` VALUES (5, 2, 'a2.1');
INSERT INTO `images` VALUES (6, 2, 'a2.2');
INSERT INTO `images` VALUES (7, 3, 'a3');
INSERT INTO `images` VALUES (8, 3, 'a3.1');
INSERT INTO `images` VALUES (9, 3, 'a3.2');
INSERT INTO `images` VALUES (10, 4, 'a4');
INSERT INTO `images` VALUES (11, 4, 'a4.2');
INSERT INTO `images` VALUES (12, 4, 'a4.3');
INSERT INTO `images` VALUES (13, 4, 'a4.4');
INSERT INTO `images` VALUES (14, 5, 'a5');
INSERT INTO `images` VALUES (15, 5, 'a5.2');
INSERT INTO `images` VALUES (16, 5, 'a5.3');
INSERT INTO `images` VALUES (17, 5, 'a5.4');
INSERT INTO `images` VALUES (18, 6, 'a6');
INSERT INTO `images` VALUES (19, 6, 'a6.1');
INSERT INTO `images` VALUES (20, 6, 'a6.2');
INSERT INTO `images` VALUES (21, 7, 'a7');
INSERT INTO `images` VALUES (22, 7, 'a7.1');
INSERT INTO `images` VALUES (23, 7, 'a7.2');
INSERT INTO `images` VALUES (24, 7, 'a7.4');
INSERT INTO `images` VALUES (25, 8, 'a8');
INSERT INTO `images` VALUES (26, 8, 'a8.1');
INSERT INTO `images` VALUES (27, 8, 'a8.2');
INSERT INTO `images` VALUES (28, 8, 'a8.3');
INSERT INTO `images` VALUES (29, 9, 'a9');
INSERT INTO `images` VALUES (30, 9, 'a9.1');
INSERT INTO `images` VALUES (31, 9, 'a9.2');
INSERT INTO `images` VALUES (32, 9, 'a9.3');
INSERT INTO `images` VALUES (33, 10, 'a10');
INSERT INTO `images` VALUES (34, 10, 'a10.1');
INSERT INTO `images` VALUES (35, 10, 'a10.2');
INSERT INTO `images` VALUES (36, 10, 'a10.3');
INSERT INTO `images` VALUES (37, 11, 'a11');
INSERT INTO `images` VALUES (38, 11, 'a11.1');
INSERT INTO `images` VALUES (39, 11, 'a11.2');
INSERT INTO `images` VALUES (40, 11, 'a11.3');
INSERT INTO `images` VALUES (41, 12, 'a13');
INSERT INTO `images` VALUES (42, 12, 'a13.1');
INSERT INTO `images` VALUES (43, 12, 'a13.2');
INSERT INTO `images` VALUES (44, 12, 'a13.3');
INSERT INTO `images` VALUES (45, 13, 'a15');
INSERT INTO `images` VALUES (46, 13, 'a15.1');
INSERT INTO `images` VALUES (47, 13, 'a15.2');
INSERT INTO `images` VALUES (48, 13, 'a15.3');
INSERT INTO `images` VALUES (49, 14, 'a16');
INSERT INTO `images` VALUES (50, 14, 'a16.1');
INSERT INTO `images` VALUES (51, 14, 'a16.2');
INSERT INTO `images` VALUES (52, 14, 'a16.3');
INSERT INTO `images` VALUES (53, 15, 'a18');
INSERT INTO `images` VALUES (54, 15, 'a18.1');
INSERT INTO `images` VALUES (55, 16, 'a20');
INSERT INTO `images` VALUES (56, 16, 'a20.1');
INSERT INTO `images` VALUES (57, 16, 'a20.2');
INSERT INTO `images` VALUES (58, 16, 'a20.3');
INSERT INTO `images` VALUES (59, 16, 'a20.4');
INSERT INTO `images` VALUES (60, 17, 'a21');
INSERT INTO `images` VALUES (61, 17, 'a21.1');
INSERT INTO `images` VALUES (62, 17, 'a21.2');
INSERT INTO `images` VALUES (63, 17, 'a21.3');
INSERT INTO `images` VALUES (64, 18, 'a22');
INSERT INTO `images` VALUES (65, 18, 'a22.1');
INSERT INTO `images` VALUES (66, 18, 'a22.2');
INSERT INTO `images` VALUES (67, 18, 'a22.3');
INSERT INTO `images` VALUES (68, 18, 'a22.4');
INSERT INTO `images` VALUES (69, 19, 'a23');
INSERT INTO `images` VALUES (70, 19, 'a231');
INSERT INTO `images` VALUES (71, 19, 'a23.2');
INSERT INTO `images` VALUES (72, 19, 'a23.3');
INSERT INTO `images` VALUES (73, 19, 'a23.4');
INSERT INTO `images` VALUES (74, 20, 'a24');
INSERT INTO `images` VALUES (75, 20, 'a24.1');
INSERT INTO `images` VALUES (76, 20, 'a24.2');
INSERT INTO `images` VALUES (77, 20, 'a24.3');
INSERT INTO `images` VALUES (78, 21, 'a25');
INSERT INTO `images` VALUES (79, 21, 'a25.1');
INSERT INTO `images` VALUES (80, 21, 'a25.2');
INSERT INTO `images` VALUES (81, 21, 'a25.3');
INSERT INTO `images` VALUES (82, 21, 'a25.4');
INSERT INTO `images` VALUES (83, 22, 'a26');
INSERT INTO `images` VALUES (84, 22, 'a26.1');
INSERT INTO `images` VALUES (85, 22, 'a26.2');
INSERT INTO `images` VALUES (86, 23, 'a27');
INSERT INTO `images` VALUES (87, 23, 'a27.1');
INSERT INTO `images` VALUES (88, 23, 'a27.2');
INSERT INTO `images` VALUES (89, 24, 'a28');
INSERT INTO `images` VALUES (90, 24, 'a28.1');
INSERT INTO `images` VALUES (91, 24, 'a28.2');
INSERT INTO `images` VALUES (92, 24, 'a28.3');
INSERT INTO `images` VALUES (93, 25, 'a29');
INSERT INTO `images` VALUES (94, 25, 'a29.1');
INSERT INTO `images` VALUES (95, 25, 'a29.2');
INSERT INTO `images` VALUES (96, 26, 'a30');
INSERT INTO `images` VALUES (97, 26, 'a30.1');
INSERT INTO `images` VALUES (98, 26, 'a30.2');
INSERT INTO `images` VALUES (99, 26, 'a30.3');
INSERT INTO `images` VALUES (100, 27, 'a31');
INSERT INTO `images` VALUES (101, 27, 'a31.1');
INSERT INTO `images` VALUES (102, 27, 'a31.2');
INSERT INTO `images` VALUES (103, 27, 'a31.3');
INSERT INTO `images` VALUES (104, 27, 'a31.4');
INSERT INTO `images` VALUES (105, 28, 'a32');
INSERT INTO `images` VALUES (106, 28, 'a32.1');
INSERT INTO `images` VALUES (107, 28, 'a32.2');
INSERT INTO `images` VALUES (108, 28, 'a32.3');
INSERT INTO `images` VALUES (109, 28, 'a32.4');
INSERT INTO `images` VALUES (110, 29, 'a33');
INSERT INTO `images` VALUES (111, 29, 'a33.1');
INSERT INTO `images` VALUES (112, 29, 'a33.2');
INSERT INTO `images` VALUES (113, 29, 'a33.3');
INSERT INTO `images` VALUES (114, 30, 'a34');
INSERT INTO `images` VALUES (115, 30, 'a34.1');
INSERT INTO `images` VALUES (116, 30, 'a34.2');
INSERT INTO `images` VALUES (117, 30, 'a34.3');
INSERT INTO `images` VALUES (118, 31, 'a35');
INSERT INTO `images` VALUES (119, 31, 'a35.1');
INSERT INTO `images` VALUES (120, 31, 'a35.2');
INSERT INTO `images` VALUES (121, 31, 'a35.3');
INSERT INTO `images` VALUES (122, 32, 'a36');
INSERT INTO `images` VALUES (123, 32, 'a36.1');
INSERT INTO `images` VALUES (124, 32, 'a36.2');
INSERT INTO `images` VALUES (125, 32, 'a36.3');
INSERT INTO `images` VALUES (126, 33, 'a37');
INSERT INTO `images` VALUES (127, 33, 'a37.1');
INSERT INTO `images` VALUES (128, 33, 'a37.2');
INSERT INTO `images` VALUES (129, 33, 'a37.3');
INSERT INTO `images` VALUES (130, 34, 'a38');
INSERT INTO `images` VALUES (131, 34, 'a38.1');
INSERT INTO `images` VALUES (132, 34, 'a38.2');
INSERT INTO `images` VALUES (133, 35, 'a39');
INSERT INTO `images` VALUES (134, 35, 'a39.1');
INSERT INTO `images` VALUES (135, 35, 'a39.2');
INSERT INTO `images` VALUES (136, 35, 'a39.3');
INSERT INTO `images` VALUES (137, 36, 'a40');
INSERT INTO `images` VALUES (138, 36, 'a40.1');
INSERT INTO `images` VALUES (139, 36, 'a40.2');
INSERT INTO `images` VALUES (140, 36, 'a40.3');
INSERT INTO `images` VALUES (141, 37, 'a41');
INSERT INTO `images` VALUES (142, 37, 'a41.1');
INSERT INTO `images` VALUES (143, 37, 'a41.2');
INSERT INTO `images` VALUES (144, 37, 'a41.3');
INSERT INTO `images` VALUES (145, 38, 'a42');
INSERT INTO `images` VALUES (146, 38, 'a42.1');
INSERT INTO `images` VALUES (147, 38, 'a42.2');
INSERT INTO `images` VALUES (148, 38, 'a42.3');
INSERT INTO `images` VALUES (149, 39, 'a43');
INSERT INTO `images` VALUES (150, 39, 'a43.1');
INSERT INTO `images` VALUES (151, 39, 'a43.2');
INSERT INTO `images` VALUES (152, 39, 'a43.3');
INSERT INTO `images` VALUES (153, 40, 'a44');
INSERT INTO `images` VALUES (154, 40, 'a44.1');
INSERT INTO `images` VALUES (155, 40, 'a44.2');
INSERT INTO `images` VALUES (156, 40, 'a44.3');
INSERT INTO `images` VALUES (157, 41, 'a45');
INSERT INTO `images` VALUES (158, 41, 'a45.1');
INSERT INTO `images` VALUES (159, 41, 'a45.2');
INSERT INTO `images` VALUES (160, 42, 'a46');
INSERT INTO `images` VALUES (161, 42, 'a46.1');
INSERT INTO `images` VALUES (162, 42, 'a46.2');
INSERT INTO `images` VALUES (163, 42, 'a46.3');
INSERT INTO `images` VALUES (164, 43, 'a47');
INSERT INTO `images` VALUES (165, 43, 'a47.1');
INSERT INTO `images` VALUES (166, 43, 'a47.2');
INSERT INTO `images` VALUES (167, 43, 'a47.3');
INSERT INTO `images` VALUES (168, 44, 'a48');
INSERT INTO `images` VALUES (169, 44, 'a48.1');
INSERT INTO `images` VALUES (170, 44, 'a48.2');
INSERT INTO `images` VALUES (171, 45, 'a49');
INSERT INTO `images` VALUES (172, 45, 'a49.1');
INSERT INTO `images` VALUES (173, 45, 'a49.2');
INSERT INTO `images` VALUES (174, 45, 'a49.3');
INSERT INTO `images` VALUES (175, 46, 'a50');
INSERT INTO `images` VALUES (176, 46, 'a50.1');
INSERT INTO `images` VALUES (177, 46, 'a50.2');
INSERT INTO `images` VALUES (178, 46, 'a50.3');
INSERT INTO `images` VALUES (179, 47, 'a51');
INSERT INTO `images` VALUES (180, 47, 'a51.1');
INSERT INTO `images` VALUES (181, 47, 'a51.2');
INSERT INTO `images` VALUES (182, 47, 'a51.3');
INSERT INTO `images` VALUES (183, 48, 'a52');
INSERT INTO `images` VALUES (184, 48, 'a52.1');
INSERT INTO `images` VALUES (185, 48, 'a52.2');
INSERT INTO `images` VALUES (186, 48, 'a52.3');
INSERT INTO `images` VALUES (187, 49, 'a53');
INSERT INTO `images` VALUES (188, 49, 'a53.1');
INSERT INTO `images` VALUES (189, 49, 'a53.2');
INSERT INTO `images` VALUES (190, 50, 'a54');
INSERT INTO `images` VALUES (191, 50, 'a54.1');
INSERT INTO `images` VALUES (192, 50, 'a54.2');
INSERT INTO `images` VALUES (193, 50, 'a54.3');
INSERT INTO `images` VALUES (194, 51, 'a55');
INSERT INTO `images` VALUES (195, 51, 'a55.1');
INSERT INTO `images` VALUES (196, 51, 'a55.2');
INSERT INTO `images` VALUES (197, 51, 'a55.3');
INSERT INTO `images` VALUES (198, 52, 'a56');
INSERT INTO `images` VALUES (199, 52, 'a56.1');
INSERT INTO `images` VALUES (200, 52, 'a56.2');
INSERT INTO `images` VALUES (201, 52, 'a56.3');
INSERT INTO `images` VALUES (202, 53, 'a57');
INSERT INTO `images` VALUES (203, 53, 'a57.1');
INSERT INTO `images` VALUES (204, 53, 'a57.2');
INSERT INTO `images` VALUES (205, 53, 'a57.3');
INSERT INTO `images` VALUES (206, 54, 'a58');
INSERT INTO `images` VALUES (207, 54, 'a58.1');
INSERT INTO `images` VALUES (208, 54, 'a58.2');
INSERT INTO `images` VALUES (209, 54, 'a58.3');
INSERT INTO `images` VALUES (210, 55, 'a59');
INSERT INTO `images` VALUES (211, 55, 'a59.1');
INSERT INTO `images` VALUES (212, 55, 'a59.2');
INSERT INTO `images` VALUES (213, 55, 'a59.3');
INSERT INTO `images` VALUES (214, 56, 'a60');
INSERT INTO `images` VALUES (215, 56, 'a60.1');
INSERT INTO `images` VALUES (216, 56, 'a60.2');
INSERT INTO `images` VALUES (217, 56, 'a60.3');
INSERT INTO `images` VALUES (218, 57, 'a61');
INSERT INTO `images` VALUES (219, 57, 'a61.1');
INSERT INTO `images` VALUES (220, 57, 'a61.2');
INSERT INTO `images` VALUES (221, 57, 'a61.3');
INSERT INTO `images` VALUES (222, 58, 'a62');
INSERT INTO `images` VALUES (223, 58, 'a62.1');
INSERT INTO `images` VALUES (224, 58, 'a62.2');
INSERT INTO `images` VALUES (225, 58, 'a62.3');
INSERT INTO `images` VALUES (226, 59, 'a63');
INSERT INTO `images` VALUES (227, 59, 'a63.1');
INSERT INTO `images` VALUES (228, 59, 'a63.2');
INSERT INTO `images` VALUES (229, 59, 'a63.3');
INSERT INTO `images` VALUES (230, 60, 'a64');
INSERT INTO `images` VALUES (231, 60, 'a64.1');
INSERT INTO `images` VALUES (232, 60, 'a64.2');
INSERT INTO `images` VALUES (233, 60, 'a64.3');
INSERT INTO `images` VALUES (234, 61, 'a65');
INSERT INTO `images` VALUES (235, 61, 'a65.1');
INSERT INTO `images` VALUES (236, 61, 'a65.2');
INSERT INTO `images` VALUES (237, 61, 'a65.3');
INSERT INTO `images` VALUES (238, 62, 'a66');
INSERT INTO `images` VALUES (239, 62, 'a66.1');
INSERT INTO `images` VALUES (240, 62, 'a66.2');
INSERT INTO `images` VALUES (241, 63, 'a67');
INSERT INTO `images` VALUES (242, 63, 'a67.1');
INSERT INTO `images` VALUES (243, 63, 'a67.2');
INSERT INTO `images` VALUES (244, 63, 'a67.3');
INSERT INTO `images` VALUES (245, 64, 'a68');
INSERT INTO `images` VALUES (246, 64, 'a68.1');
INSERT INTO `images` VALUES (247, 64, 'a68.2');
INSERT INTO `images` VALUES (248, 65, 'a69');
INSERT INTO `images` VALUES (249, 65, 'a69.1');
INSERT INTO `images` VALUES (250, 65, 'a69.2');
INSERT INTO `images` VALUES (251, 65, 'a69.3');
INSERT INTO `images` VALUES (252, 66, 'a70');
INSERT INTO `images` VALUES (253, 66, 'a70.1');
INSERT INTO `images` VALUES (254, 66, 'a70.2');
INSERT INTO `images` VALUES (255, 66, 'a70.3');
INSERT INTO `images` VALUES (256, 67, 'a71');
INSERT INTO `images` VALUES (257, 67, 'a71.1');
INSERT INTO `images` VALUES (258, 67, 'a71.2');
INSERT INTO `images` VALUES (259, 67, 'a71.3');
INSERT INTO `images` VALUES (260, 68, 'a72');
INSERT INTO `images` VALUES (261, 68, 'a72.1');
INSERT INTO `images` VALUES (262, 68, 'a72.2');
INSERT INTO `images` VALUES (263, 68, 'a72.3');
INSERT INTO `images` VALUES (264, 69, 'a73');
INSERT INTO `images` VALUES (265, 69, 'a73.1');
INSERT INTO `images` VALUES (266, 69, 'a73.2');
INSERT INTO `images` VALUES (267, 69, 'a73.3');
INSERT INTO `images` VALUES (268, 70, 'a74');
INSERT INTO `images` VALUES (269, 70, 'a74.1');
INSERT INTO `images` VALUES (270, 70, 'a74.2');
INSERT INTO `images` VALUES (271, 70, 'a74.3');
INSERT INTO `images` VALUES (272, 71, 'a75');
INSERT INTO `images` VALUES (273, 71, 'a75.1');
INSERT INTO `images` VALUES (274, 71, 'a75.2');
INSERT INTO `images` VALUES (275, 71, 'a75.3');
INSERT INTO `images` VALUES (276, 72, 'a76');
INSERT INTO `images` VALUES (277, 72, 'a76.1');
INSERT INTO `images` VALUES (278, 72, 'a76.2');
INSERT INTO `images` VALUES (279, 73, 'a77');
INSERT INTO `images` VALUES (280, 73, 'a77.1');
INSERT INTO `images` VALUES (281, 73, 'a77.2');
INSERT INTO `images` VALUES (282, 73, 'a77.3');
INSERT INTO `images` VALUES (283, 74, 'a78');
INSERT INTO `images` VALUES (284, 74, 'a78.1');
INSERT INTO `images` VALUES (285, 74, 'a78.2');
INSERT INTO `images` VALUES (286, 74, 'a78.3');
INSERT INTO `images` VALUES (287, 75, 'a79');
INSERT INTO `images` VALUES (288, 75, 'a79.1');
INSERT INTO `images` VALUES (289, 75, 'a79.2');
INSERT INTO `images` VALUES (290, 75, 'a79.3');
INSERT INTO `images` VALUES (291, 76, 'a80');
INSERT INTO `images` VALUES (292, 76, 'a80.1');
INSERT INTO `images` VALUES (293, 76, 'a80.2');
INSERT INTO `images` VALUES (294, 76, 'a80.3');
INSERT INTO `images` VALUES (295, 77, 'a81');
INSERT INTO `images` VALUES (296, 77, 'a81.1');
INSERT INTO `images` VALUES (297, 77, 'a81.2');
INSERT INTO `images` VALUES (298, 77, 'a81.3');
INSERT INTO `images` VALUES (299, 77, 'a81.4');
INSERT INTO `images` VALUES (300, 78, 'a82');
INSERT INTO `images` VALUES (301, 78, 'a82.1');
INSERT INTO `images` VALUES (302, 78, 'a82.2');
INSERT INTO `images` VALUES (303, 78, 'a82.3');
INSERT INTO `images` VALUES (304, 78, 'a82.4');
INSERT INTO `images` VALUES (305, 79, 'b1');
INSERT INTO `images` VALUES (306, 79, 'b1.1');
INSERT INTO `images` VALUES (307, 79, 'b1.2');
INSERT INTO `images` VALUES (308, 79, 'b1.3');
INSERT INTO `images` VALUES (309, 80, 'b2');
INSERT INTO `images` VALUES (310, 80, 'b2.1');
INSERT INTO `images` VALUES (311, 80, 'b2.2');
INSERT INTO `images` VALUES (312, 80, 'b2.3');
INSERT INTO `images` VALUES (313, 81, 'b3');
INSERT INTO `images` VALUES (314, 81, 'b3.1');
INSERT INTO `images` VALUES (315, 81, 'b3.2');
INSERT INTO `images` VALUES (316, 81, 'b3.3');
INSERT INTO `images` VALUES (317, 82, 'b4');
INSERT INTO `images` VALUES (318, 82, 'b4.1');
INSERT INTO `images` VALUES (319, 82, 'b4.2');
INSERT INTO `images` VALUES (320, 82, 'b4.3');
INSERT INTO `images` VALUES (321, 83, 'b5');
INSERT INTO `images` VALUES (322, 83, 'b5.1');
INSERT INTO `images` VALUES (323, 83, 'b5.2');
INSERT INTO `images` VALUES (324, 83, 'b5.3');
INSERT INTO `images` VALUES (325, 84, 'b6');
INSERT INTO `images` VALUES (326, 84, 'b6.1');
INSERT INTO `images` VALUES (327, 84, 'b6.2');
INSERT INTO `images` VALUES (328, 84, 'b6.3');
INSERT INTO `images` VALUES (329, 89, 'c1');
INSERT INTO `images` VALUES (330, 89, 'c1.1');
INSERT INTO `images` VALUES (331, 89, 'c1.2');
INSERT INTO `images` VALUES (332, 89, 'c1.3');
INSERT INTO `images` VALUES (333, 89, 'c1.4');
INSERT INTO `images` VALUES (334, 90, 'c2');
INSERT INTO `images` VALUES (335, 90, 'c2.1');
INSERT INTO `images` VALUES (336, 90, 'c2.2');
INSERT INTO `images` VALUES (337, 90, 'c2.3');
INSERT INTO `images` VALUES (338, 90, 'c2.4');
INSERT INTO `images` VALUES (339, 91, 'c3');
INSERT INTO `images` VALUES (340, 91, 'c3.1');
INSERT INTO `images` VALUES (341, 91, 'c3.2');
INSERT INTO `images` VALUES (342, 91, 'c3.3');
INSERT INTO `images` VALUES (343, 92, 'c4');
INSERT INTO `images` VALUES (344, 92, 'c4.1');
INSERT INTO `images` VALUES (345, 93, 'c5');
INSERT INTO `images` VALUES (346, 93, 'c5.1');
INSERT INTO `images` VALUES (347, 93, 'c5.2');
INSERT INTO `images` VALUES (348, 93, 'c5.3');
INSERT INTO `images` VALUES (349, 93, 'c5.4');
INSERT INTO `images` VALUES (350, 94, 'c6');
INSERT INTO `images` VALUES (351, 94, 'c6.1');
INSERT INTO `images` VALUES (352, 94, 'c6.2');
INSERT INTO `images` VALUES (353, 94, 'c6.3');
INSERT INTO `images` VALUES (354, 95, 'c7');
INSERT INTO `images` VALUES (355, 95, 'c7.1');
INSERT INTO `images` VALUES (356, 95, 'c7.2');
INSERT INTO `images` VALUES (357, 95, 'c7.3');
INSERT INTO `images` VALUES (358, 95, 'c7.4');
INSERT INTO `images` VALUES (359, 96, 'c8');
INSERT INTO `images` VALUES (360, 96, 'c8.1');
INSERT INTO `images` VALUES (361, 96, 'c8.2');
INSERT INTO `images` VALUES (362, 96, 'c8.3');
INSERT INTO `images` VALUES (363, 97, 'c9');
INSERT INTO `images` VALUES (364, 97, 'c9.1');
INSERT INTO `images` VALUES (365, 97, 'c9.2');
INSERT INTO `images` VALUES (366, 97, 'c9.3');
INSERT INTO `images` VALUES (367, 97, 'c9.4');
INSERT INTO `images` VALUES (368, 98, 'd1');
INSERT INTO `images` VALUES (369, 98, 'd1.1');
INSERT INTO `images` VALUES (370, 98, 'd1.2');
INSERT INTO `images` VALUES (371, 98, 'd1.3');
INSERT INTO `images` VALUES (372, 98, 'd1.4');
INSERT INTO `images` VALUES (373, 99, 'd2');
INSERT INTO `images` VALUES (374, 99, 'd2.1');
INSERT INTO `images` VALUES (375, 99, 'd2.2');
INSERT INTO `images` VALUES (376, 99, 'd2.3');
INSERT INTO `images` VALUES (377, 99, 'd2.4');
INSERT INTO `images` VALUES (378, 85, 'd3');
INSERT INTO `images` VALUES (379, 85, 'd3.1');
INSERT INTO `images` VALUES (380, 85, 'd3.2');
INSERT INTO `images` VALUES (381, 85, 'd3.3');
INSERT INTO `images` VALUES (382, 85, 'd3.4');
INSERT INTO `images` VALUES (383, 86, 'd4');
INSERT INTO `images` VALUES (384, 86, 'd4.1');
INSERT INTO `images` VALUES (385, 86, 'd4.2');
INSERT INTO `images` VALUES (386, 86, 'd4.3');
INSERT INTO `images` VALUES (387, 86, 'd4.4');
INSERT INTO `images` VALUES (388, 86, 'd4.5');
INSERT INTO `images` VALUES (389, 87, 'd5');
INSERT INTO `images` VALUES (390, 87, 'd5.1');
INSERT INTO `images` VALUES (391, 87, 'd5.2');
INSERT INTO `images` VALUES (392, 87, 'd5.3');
INSERT INTO `images` VALUES (393, 87, 'd5.4');
INSERT INTO `images` VALUES (394, 88, 'd6');
INSERT INTO `images` VALUES (395, 88, 'd6.1');
INSERT INTO `images` VALUES (396, 88, 'd6.2');
INSERT INTO `images` VALUES (397, 88, 'd6.3');

-- ----------------------------
-- Table structure for orderrecord
-- ----------------------------
DROP TABLE IF EXISTS `orderrecord`;
CREATE TABLE `orderrecord`  (
  `r_id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `p_id` int(0) NOT NULL COMMENT '商品ID',
  `p_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '尺寸',
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '颜色',
  `price` decimal(10, 2) NOT NULL COMMENT '单价',
  `total_price` decimal(10, 2) NOT NULL COMMENT '总价',
  `number` int(0) NOT NULL COMMENT '数量',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '电话',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '地区',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '详细地址',
  `message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '留言',
  `pay_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '支付方式',
  `status` int(0) NOT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderrecord
-- ----------------------------
INSERT INTO `orderrecord` VALUES (1, '20201102235744RCV968', 9, '日本冰丝二代降温内衣女士套装无痕无钢圈蕾丝文胸睡眠内衣裤\r\n', '80A+M', '绿色', 1825.00, 1825.00, 1, 'lin', '13543654865', '安徽省/合肥市/庐阳区', '白云广场350号', '', '1', 0, '2020-11-02 23:57:44');
INSERT INTO `orderrecord` VALUES (2, '20201103023153FKC815', 9, '日本冰丝二代降温内衣女士套装无痕无钢圈蕾丝文胸睡眠内衣裤\n', '80A+M', '黑色', 1825.00, 7300.00, 4, 'lin', '13543654865', '安徽省/合肥市/庐阳区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:31:53');
INSERT INTO `orderrecord` VALUES (3, '20201103023153FKC815', 7, '2020秋冬新款法式性感内衣女舒适无钢圈文胸无痕薄款小胸\n', '75B', '黄色', 858.00, 1716.00, 2, 'lin', '13543654865', '安徽省/合肥市/庐阳区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:31:54');
INSERT INTO `orderrecord` VALUES (4, '20201103023153FKC815', 89, '手表男AR2453黑武士休闲钢带防水男表AR1895\n', '', '', 1738.00, 3476.00, 2, 'lin', '13543654865', '安徽省/合肥市/庐阳区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:31:54');
INSERT INTO `orderrecord` VALUES (5, '20201103023153FKC815', 85, '唇釉500 401口红黑管红管405番茄红201 200 400 402\n', '500金闪红鲤鱼/黑管', '', 360.00, 360.00, 1, 'lin', '13543654865', '安徽省/合肥市/庐阳区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:31:54');
INSERT INTO `orderrecord` VALUES (6, '20201103023153FKC815', 1, '女士 内衣文胸肉色黑肩带蕾丝性感', '70B', '黑色', 1316.00, 1316.00, 1, 'lin', '13543654865', '安徽省/合肥市/庐阳区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:31:54');
INSERT INTO `orderrecord` VALUES (7, '20201103023153FKC815', 11, '外贸爆款蕾丝性感小胸薄款文胸套装 聚拢两排扣调整型女士内衣\n', '70B+XS', '粉色', 1728.00, 1728.00, 1, 'lin', '13543654865', '安徽省/合肥市/庐阳区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:31:54');
INSERT INTO `orderrecord` VALUES (8, '20201103023153FKC815', 9, '日本冰丝二代降温内衣女士套装无痕无钢圈蕾丝文胸睡眠内衣裤\n', '80A+S', '粉色', 1825.00, 1825.00, 1, 'lin', '13543654865', '安徽省/合肥市/庐阳区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:31:54');
INSERT INTO `orderrecord` VALUES (9, '20201103023153FKC815', 7, '2020秋冬新款法式性感内衣女舒适无钢圈文胸无痕薄款小胸\n', '75A', '白色', 858.00, 858.00, 1, 'lin', '13543654865', '安徽省/合肥市/庐阳区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:31:54');
INSERT INTO `orderrecord` VALUES (10, '20201103023413288286', 9, '日本冰丝二代降温内衣女士套装无痕无钢圈蕾丝文胸睡眠内衣裤\n', '80A+M', '黑色', 1825.00, 7300.00, 4, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:34:13');
INSERT INTO `orderrecord` VALUES (11, '20201103023413288286', 7, '2020秋冬新款法式性感内衣女舒适无钢圈文胸无痕薄款小胸\n', '75B', '黄色', 858.00, 1716.00, 2, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:34:13');
INSERT INTO `orderrecord` VALUES (12, '20201103023413288286', 89, '手表男AR2453黑武士休闲钢带防水男表AR1895\n', '', '', 1738.00, 3476.00, 2, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:34:13');
INSERT INTO `orderrecord` VALUES (13, '20201103023413288286', 85, '唇釉500 401口红黑管红管405番茄红201 200 400 402\n', '500金闪红鲤鱼/黑管', '', 360.00, 360.00, 1, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:34:13');
INSERT INTO `orderrecord` VALUES (14, '20201103023413288286', 1, '女士 内衣文胸肉色黑肩带蕾丝性感', '70B', '黑色', 1316.00, 1316.00, 1, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:34:13');
INSERT INTO `orderrecord` VALUES (15, '20201103023413288286', 11, '外贸爆款蕾丝性感小胸薄款文胸套装 聚拢两排扣调整型女士内衣\n', '70B+XS', '粉色', 1728.00, 1728.00, 1, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:34:13');
INSERT INTO `orderrecord` VALUES (16, '20201103023413288286', 9, '日本冰丝二代降温内衣女士套装无痕无钢圈蕾丝文胸睡眠内衣裤\n', '80A+S', '粉色', 1825.00, 1825.00, 1, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:34:13');
INSERT INTO `orderrecord` VALUES (17, '20201103023413288286', 7, '2020秋冬新款法式性感内衣女舒适无钢圈文胸无痕薄款小胸\n', '75A', '白色', 858.00, 858.00, 1, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:34:13');
INSERT INTO `orderrecord` VALUES (18, '20201103023655I3E694', 9, '日本冰丝二代降温内衣女士套装无痕无钢圈蕾丝文胸睡眠内衣裤\n', '80A+M', '黑色', 1825.00, 7300.00, 4, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:36:55');
INSERT INTO `orderrecord` VALUES (19, '20201103023655I3E694', 7, '2020秋冬新款法式性感内衣女舒适无钢圈文胸无痕薄款小胸\n', '75B', '黄色', 858.00, 1716.00, 2, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:36:55');
INSERT INTO `orderrecord` VALUES (20, '20201103023655I3E694', 89, '手表男AR2453黑武士休闲钢带防水男表AR1895\n', '', '', 1738.00, 3476.00, 2, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:36:55');
INSERT INTO `orderrecord` VALUES (21, '20201103023655I3E694', 85, '唇釉500 401口红黑管红管405番茄红201 200 400 402\n', '500金闪红鲤鱼/黑管', '', 360.00, 360.00, 1, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:36:55');
INSERT INTO `orderrecord` VALUES (22, '20201103023655I3E694', 1, '女士 内衣文胸肉色黑肩带蕾丝性感', '70B', '黑色', 1316.00, 1316.00, 1, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:36:55');
INSERT INTO `orderrecord` VALUES (23, '20201103023655I3E694', 11, '外贸爆款蕾丝性感小胸薄款文胸套装 聚拢两排扣调整型女士内衣\n', '70B+XS', '粉色', 1728.00, 1728.00, 1, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:36:55');
INSERT INTO `orderrecord` VALUES (24, '20201103023655I3E694', 9, '日本冰丝二代降温内衣女士套装无痕无钢圈蕾丝文胸睡眠内衣裤\n', '80A+S', '粉色', 1825.00, 1825.00, 1, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:36:55');
INSERT INTO `orderrecord` VALUES (25, '20201103023655I3E694', 7, '2020秋冬新款法式性感内衣女舒适无钢圈文胸无痕薄款小胸\n', '75A', '白色', 858.00, 858.00, 1, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', 'hhh', '1', 0, '2020-11-03 02:36:55');
INSERT INTO `orderrecord` VALUES (26, '20201103025011WAQ429', 9, '日本冰丝二代降温内衣女士套装无痕无钢圈蕾丝文胸睡眠内衣裤\r\n', '80A+M', '绿色', 1825.00, 1825.00, 1, 'lin', '13543654865', '安徽省/芜湖市/弋江区', '白云广场350号', '', '1', 0, '2020-11-03 02:50:11');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `p_id` int(0) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img_index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `img_id` int(0) NULL DEFAULT NULL,
  `size_id` int(0) NOT NULL,
  `color_id` int(0) NOT NULL,
  `ori_price` decimal(10, 2) NOT NULL COMMENT '原价',
  `price` decimal(10, 2) NOT NULL COMMENT '价格',
  `sold_num` int(0) NOT NULL COMMENT '已售数',
  `category` int(0) NOT NULL COMMENT '1-女士，2-男士，3手表，4-口红',
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '女士 内衣文胸肉色黑肩带蕾丝性感', 'a1', 1, 1, 1, 1666.00, 1316.00, 22, 1);
INSERT INTO `product` VALUES (2, '内衣女士奢侈品 Black L (INT)', 'a2', 2, 1, 2, 1399.00, 1199.00, 21, 1);
INSERT INTO `product` VALUES (3, '内衣女士奢侈品女士针织比基尼内衣', 'a3', 3, 1, 2, 1599.00, 1299.00, 33, 1);
INSERT INTO `product` VALUES (4, '文胸套装前扣性感内衣厚款小胸聚拢调整型上托美背内衣裤女士胸罩', 'a4', 4, 2, 2, 2200.00, 1758.00, 10, 1);
INSERT INTO `product` VALUES (5, '性感文胸套装蕾丝贝壳杯内衣女无钢圈收副乳聚拢上托', 'a5', 5, 2, 2, 2224.00, 1824.00, 14, 1);
INSERT INTO `product` VALUES (6, '夏季薄款内衣女文胸套装女士性感蕾丝大码聚拢上托大胸显小超\r\n', 'a6', 6, 2, 1, 2666.00, 2166.00, 12, 1);
INSERT INTO `product` VALUES (7, '2020秋冬新款法式性感内衣女舒适无钢圈文胸无痕薄款小胸\r\n', 'a7', 7, 1, 3, 1366.00, 858.00, 33, 1);
INSERT INTO `product` VALUES (8, '超薄透气中腰纯棉裆蕾丝内裤 女士透明网纱镂空内裤\r\n', 'a8', 8, 3, 4, 1388.00, 928.00, 40, 1);
INSERT INTO `product` VALUES (9, '日本冰丝二代降温内衣女士套装无痕无钢圈蕾丝文胸睡眠内衣裤\r\n', 'a9', 9, 2, 5, 2668.00, 1825.00, 31, 1);
INSERT INTO `product` VALUES (10, '日本冰丝二代降温内衣女士套装无痕无钢圈蕾丝文胸睡眠运动内衣裤\r\n', 'a10', 10, 2, 6, 1888.00, 1238.00, 32, 1);
INSERT INTO `product` VALUES (11, '外贸爆款蕾丝性感小胸薄款文胸套装 聚拢两排扣调整型女士内衣\r\n', 'a11', 11, 2, 7, 2688.00, 1728.00, 17, 1);
INSERT INTO `product` VALUES (12, '外贸情趣内裤一片式内裤女 简约开叉t字裤纯棉低腰性感丁字裤\r\n', 'a13', 12, 1, 8, 1288.00, 768.00, 26, 1);
INSERT INTO `product` VALUES (13, '网红爆款三杠美背吊带抹胸内衣女无痕裹胸性感聚拢背心打底文胸\r\n', 'a15', 13, 1, 9, 1688.00, 1128.00, 43, 1);
INSERT INTO `product` VALUES (14, '新款套装胸罩三角杯法式蕾丝性感少女学生款内衣裤文胸套装女\r\n', 'a16', 14, 2, 10, 2688.00, 1688.00, 41, 1);
INSERT INTO `product` VALUES (15, '爆款 大U美背内衣女无钢圈聚拢抹胸带胸垫吊带文胸运动背心裹胸女\r\n', 'a18', 15, 1, 11, 1288.00, 768.00, 83, 1);
INSERT INTO `product` VALUES (16, '美背文胸内衣女无钢圈吊带网红爆款背心式打底带胸垫交叉裹胸抹胸\r\n', 'a20', 16, 1, 12, 1555.00, 728.00, 45, 1);
INSERT INTO `product` VALUES (17, '蕾丝性感内衣文胸套装 无钢圈\r\n', 'a21', 17, 4, 13, 1688.00, 1088.00, 52, 1);
INSERT INTO `product` VALUES (18, '纯棉无钢圈运动文胸 大码瑜伽内衣防震背心式聚拢睡眠美背胸罩\r\n', 'a22', 18, 1, 14, 3358.00, 2358.00, 51, 1);
INSERT INTO `product` VALUES (19, '新品蕾丝内衣女小胸衣聚拢收副乳上托无钢圈调整型性感文胸套装\r\n', 'a23', 19, 4, 0, 2366.00, 1728.00, 77, 1);
INSERT INTO `product` VALUES (20, '性感蕾丝超薄透明内衣套装女\r\n', 'a24', 20, 2, 7, 1399.00, 1049.00, 79, 1);
INSERT INTO `product` VALUES (21, '少女美屋夏季性感蕾丝无海绵美肩内衣超薄透明白色文胸诱惑奶罩女\r\n', 'a25', 21, 1, 15, 1298.00, 1048.00, 36, 1);
INSERT INTO `product` VALUES (22, '纯棉丝网高腰内裤\r\n', 'a26', 22, 5, 16, 888.00, 638.00, 59, 1);
INSERT INTO `product` VALUES (23, '情调衣人内裤女士日系大码蕾丝透明薄纱低腰性感系带诱惑三角裤头\r\n', 'a27', 23, 5, 17, 958.00, 608.00, 76, 1);
INSERT INTO `product` VALUES (24, '本命年大红色无钢圈内衣少女性感蕾丝胸罩超薄挂脖式美背文胸\r\n', 'a28', 24, 1, 18, 978.00, 728.00, 31, 1);
INSERT INTO `product` VALUES (25, '蕾丝冰丝女士性感低腰三角裤\r\n', 'a29', 25, 5, 19, 986.00, 736.00, 94, 1);
INSERT INTO `product` VALUES (26, '性感透明网纱薄蕾丝内裤女式诱惑低腰三角裤头半包臀透视\r\n', 'a30', 26, 5, 20, 1286.00, 936.00, 65, 1);
INSERT INTO `product` VALUES (27, '性感内裤女式镂空冰丝三角裤低腰棉裆透明蕾丝无痕裤头\r\n', 'a31', 27, 5, 21, 1598.00, 1048.00, 59, 1);
INSERT INTO `product` VALUES (28, '女款文胸\r\n', 'a32', 28, 6, 22, 899.00, 649.00, 65, 1);
INSERT INTO `product` VALUES (29, '欧美蕾丝内裤\r\n', 'a33', 29, 5, 23, 1068.00, 818.00, 52, 1);
INSERT INTO `product` VALUES (30, '休闲长筒文胸\r\n', 'a34', 30, 6, 24, 989.00, 639.00, 75, 1);
INSERT INTO `product` VALUES (31, '甜美少女梦套装\r\n', 'a35', 31, 7, 25, 2038.00, 1588.00, 35, 1);
INSERT INTO `product` VALUES (32, '温馨优雅蕾丝套装\r\n', 'a36', 32, 7, 26, 1688.00, 1338.00, 28, 1);
INSERT INTO `product` VALUES (33, '妩媚蕾丝性感吊带睡衣\r\n', 'a37', 33, 8, 27, 4288.00, 3638.00, 26, 1);
INSERT INTO `product` VALUES (34, '性感蕾丝性感吊带睡衣\r\n', 'a38', 34, 8, 28, 3899.00, 3449.00, 25, 1);
INSERT INTO `product` VALUES (35, '压缩滑面蕾丝套\r\n', 'a39', 35, 7, 29, 2588.00, 2038.00, 30, 1);
INSERT INTO `product` VALUES (36, '蝴蝶花纹蕾丝套\r\n', 'a40', 36, 1, 30, 2088.00, 1738.00, 23, 1);
INSERT INTO `product` VALUES (37, '细纹性感套装\r\n', 'a41', 37, 7, 31, 2938.00, 2388.00, 56, 1);
INSERT INTO `product` VALUES (38, '妩媚动人型套装\r\n', 'a42', 38, 2, 32, 2888.00, 2238.00, 84, 1);
INSERT INTO `product` VALUES (39, '温馨优雅套装\r\n', 'a43', 39, 7, 33, 1866.00, 1416.00, 45, 1);
INSERT INTO `product` VALUES (40, '美式最火蕾丝套装\r\n', 'a44', 40, 7, 34, 1688.00, 1238.00, 84, 1);
INSERT INTO `product` VALUES (41, '时尚个性蕾丝套装\r\n', 'a45', 41, 7, 35, 1988.00, 1638.00, 40, 1);
INSERT INTO `product` VALUES (42, '甜美蕾丝性感吊带睡衣\r\n', 'a46', 42, 8, 36, 3599.00, 3049.00, 80, 1);
INSERT INTO `product` VALUES (43, '豹纹前扣文胸\r\n', 'a47', 43, 6, 37, 1899.00, 1349.00, 36, 1);
INSERT INTO `product` VALUES (44, '青春少女型套装\r\n', 'a48', 44, 2, 38, 2838.00, 2188.00, 43, 1);
INSERT INTO `product` VALUES (45, '青春少女款套装\r\n', 'a49', 45, 2, 39, 2088.00, 1738.00, 43, 1);
INSERT INTO `product` VALUES (46, '花纹蕾丝文胸\r\n', 'a50', 46, 6, 40, 1588.00, 1238.00, 35, 1);
INSERT INTO `product` VALUES (47, '连体蝎子蕾丝套装\r\n', 'a51', 47, 8, 0, 4288.00, 3738.00, 17, 1);
INSERT INTO `product` VALUES (48, '前系绳个性套装\r\n', 'a52', 48, 9, 0, 2966.00, 2416.00, 20, 1);
INSERT INTO `product` VALUES (49, '性感胸罩d杯e杯大胸显小内衣套装少女夏薄款文胸蕾丝\r\n', 'a53', 49, 2, 41, 2188.00, 1438.00, 43, 1);
INSERT INTO `product` VALUES (50, '性感饱满文胸\r\n', 'a54', 50, 6, 42, 1699.00, 1349.00, 33, 1);
INSERT INTO `product` VALUES (51, '纯棉前扣套装\r\n', 'a55', 51, 7, 43, 3196.00, 2746.00, 31, 1);
INSERT INTO `product` VALUES (52, '妩媚甜美型套装\r\n', 'a56', 52, 2, 44, 3668.00, 2718.00, 45, 1);
INSERT INTO `product` VALUES (53, '双重罩时尚文胸\r\n', 'a57', 53, 1, 45, 2189.00, 1739.00, 72, 1);
INSERT INTO `product` VALUES (54, '娇气可爱蕾丝套装\r\n', 'a58', 54, 7, 46, 2868.00, 2518.00, 67, 1);
INSERT INTO `product` VALUES (55, '磁吸前扣套装\r\n', 'a59', 55, 7, 47, 3266.00, 2316.00, 11, 1);
INSERT INTO `product` VALUES (56, '蕾丝性感吊带睡衣\r\n', 'a60', 56, 8, 48, 5998.00, 4048.00, 51, 1);
INSERT INTO `product` VALUES (57, '无肩带浪漫套装\r\n', 'a61', 57, 7, 49, 2686.00, 1736.00, 20, 1);
INSERT INTO `product` VALUES (58, '豹纹蕾丝套装\r\n', 'a62', 58, 7, 50, 3368.00, 2418.00, 63, 1);
INSERT INTO `product` VALUES (59, '蝴蝶带蕾丝套装\r\n', 'a63', 59, 7, 51, 3888.00, 2938.00, 55, 1);
INSERT INTO `product` VALUES (60, '细腻温雅文胸\r\n', 'a64', 60, 6, 52, 1699.00, 1049.00, 36, 1);
INSERT INTO `product` VALUES (61, '连体性感蕾丝套\r\n', 'a65', 61, 7, 53, 3998.00, 3048.00, 33, 1);
INSERT INTO `product` VALUES (62, '雅典蕾丝性感吊带睡衣\r\n', 'a66', 62, 0, 0, 3888.00, 3338.00, 23, 1);
INSERT INTO `product` VALUES (63, '连衣短裙蕾丝套\r\n', 'a67', 63, 8, 54, 3888.00, 2938.00, 43, 1);
INSERT INTO `product` VALUES (64, '性感丝网内裤\r\n', 'a68', 64, 5, 55, 1288.00, 838.00, 72, 1);
INSERT INTO `product` VALUES (65, '蜘蛛网蕾丝套装\r\n', 'a69', 65, 7, 53, 5388.00, 4388.00, 263, 1);
INSERT INTO `product` VALUES (66, '学生服情趣套装\r\n', 'a70', 66, 7, 56, 4268.00, 3268.00, 446, 1);
INSERT INTO `product` VALUES (67, '欧式最新情趣套装\r\n', 'a71', 67, 8, 57, 5438.00, 4438.00, 876, 1);
INSERT INTO `product` VALUES (68, '花纹丝网套装\r\n', 'a72', 68, 7, 58, 2996.00, 2046.00, 43, 1);
INSERT INTO `product` VALUES (69, '玫瑰花纹情趣套装\r\n', 'a73', 69, 7, 59, 3999.00, 3049.00, 22, 1);
INSERT INTO `product` VALUES (70, '黑玫瑰连体蕾丝套装\r\n', 'a74', 70, 8, 53, 6288.00, 5338.00, 35, 1);
INSERT INTO `product` VALUES (71, '黑玫瑰连体情趣套装\r\n', 'a75', 71, 10, 60, 4688.00, 3738.00, 18, 1);
INSERT INTO `product` VALUES (72, '系结丝网内裤\r\n', 'a76', 72, 11, 61, 1538.00, 1088.00, 23, 1);
INSERT INTO `product` VALUES (73, '超骚丝网情趣套装\r\n', 'a77', 73, 8, 62, 6388.00, 5388.00, 759, 1);
INSERT INTO `product` VALUES (74, '风骚马鞭丝袜情趣套装\r\n', 'a78', 74, 8, 62, 5388.00, 4388.00, 123, 1);
INSERT INTO `product` VALUES (75, '小白豹纹情趣套装\r\n', 'a79', 75, 7, 63, 4380.00, 3430.00, 23, 1);
INSERT INTO `product` VALUES (76, '女式背心内衣\r\n', 'a80', 76, 6, 64, 1598.00, 1048.00, 10, 1);
INSERT INTO `product` VALUES (77, '时尚内衣款\r\n', 'a81', 77, 6, 65, 1530.00, 1180.00, 69, 1);
INSERT INTO `product` VALUES (78, '时尚内衣款\r\n', 'a82', 78, 6, 66, 968.00, 818.00, 13, 1);
INSERT INTO `product` VALUES (79, '男士纯棉三角内裤\r\n', 'b1', 79, 12, 0, 1368.00, 868.00, 761, 2);
INSERT INTO `product` VALUES (80, '男士时尚平角内裤\r\n', 'b2', 80, 13, 0, 1838.00, 1238.00, 7841, 2);
INSERT INTO `product` VALUES (81, '男士高尚平角内裤\r\n', 'b3', 81, 13, 67, 1576.00, 876.00, 543, 2);
INSERT INTO `product` VALUES (82, '男士性感三角内裤\r\n', 'b4', 82, 3, 0, 938.00, 538.00, 868, 2);
INSERT INTO `product` VALUES (83, '男士纯棉平角内裤\r\n', 'b5', 83, 13, 68, 1668.00, 1268.00, 101, 2);
INSERT INTO `product` VALUES (84, '男士内裤真冰丝平角裤四角裤头裤衩\r\n', 'b6', 84, 13, 68, 2188.00, 1188.00, 4460, 2);
INSERT INTO `product` VALUES (85, '唇釉500 401口红黑管红管405番茄红201 200 400 402\r\n', 'd3', 85, 14, 0, 420.00, 360.00, 6081, 4);
INSERT INTO `product` VALUES (86, '唇釉500 401口红黑管红管405番茄红201 200 400 402\r\n', 'd4', 86, 15, 0, 1238.00, 838.00, 4000, 4);
INSERT INTO `product` VALUES (87, '限量红管黑管唇釉口红套装自组土豪礼盒\r\n', 'd5', 87, 16, 0, 2888.00, 2388.00, 4760, 4);
INSERT INTO `product` VALUES (88, '阿玛尼誓爱哑光唇膏口红\r\n', 'd6', 88, 17, 0, 2322.00, 1322.00, 4361, 4);
INSERT INTO `product` VALUES (89, '手表男AR2453黑武士休闲钢带防水男表AR1895\r\n', 'c1', 89, 0, 0, 2738.00, 1738.00, 928, 3);
INSERT INTO `product` VALUES (90, '时装女士手表 满天星星空手表女 细钢带石英潮流时\r\n', 'c2', 90, 0, 0, 3638.00, 2638.00, 520, 3);
INSERT INTO `product` VALUES (91, '手表女士满天星璀璨星空石英表新款AR11091\r\n', 'c3', 91, 0, 0, 2758.00, 1758.00, 408, 3);
INSERT INTO `product` VALUES (92, '男士手表 星期日历双显时尚石英腕表AR1999\r\n', 'c4', 92, 0, 0, 4288.00, 3688.00, 177, 3);
INSERT INTO `product` VALUES (93, '商务经典钢带石英手表大表盘AR0389\r\n', 'c5', 93, 0, 0, 6599.00, 4599.00, 154, 3);
INSERT INTO `product` VALUES (94, '进口皮带情侣手表 时尚端庄男女石英表AR80015\r\n', 'c6', 94, 0, 0, 7380.00, 5380.00, 438, 3);
INSERT INTO `product` VALUES (95, '手表AR1979 时尚米兰带石英男士手表AR1828\r\n', 'c7', 95, 0, 0, 2688.00, 1688.00, 708, 3);
INSERT INTO `product` VALUES (96, '手表男士皮带简约腕表石英男表AR25002502\r\n', 'c8', 96, 0, 0, 2168.00, 1568.00, 299, 3);
INSERT INTO `product` VALUES (97, '手表女 满天星玫瑰金镶钻石英腕表AR192611059\r\n', 'c9', 97, 0, 0, 3380.00, 2380.00, 259, 3);
INSERT INTO `product` VALUES (98, '繁仙境 口红国货品牌不易脱妆哑光雾面保湿滋润女 中国风雕花口红\r\n', 'd1', 98, 0, 0, 1888.00, 1338.00, 38, 4);
INSERT INTO `product` VALUES (99, '雾面磨砂小冰块丝绒哑光口红持久防水不易沾杯唇膏滋润保湿唇代发\r\n', 'd2', 99, 0, 0, 1288.00, 838.00, 82, 4);

-- ----------------------------
-- Table structure for size
-- ----------------------------
DROP TABLE IF EXISTS `size`;
CREATE TABLE `size`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `size_id` int(0) NULL DEFAULT NULL,
  `size_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 139 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of size
-- ----------------------------
INSERT INTO `size` VALUES (1, 1, '70A', NULL);
INSERT INTO `size` VALUES (2, 1, '75A', NULL);
INSERT INTO `size` VALUES (3, 1, '80A', NULL);
INSERT INTO `size` VALUES (4, 1, '70B', NULL);
INSERT INTO `size` VALUES (5, 1, '75B', NULL);
INSERT INTO `size` VALUES (6, 1, '80B', NULL);
INSERT INTO `size` VALUES (7, 1, '70C', NULL);
INSERT INTO `size` VALUES (8, 1, '75C', NULL);
INSERT INTO `size` VALUES (9, 1, '80C', NULL);
INSERT INTO `size` VALUES (10, 2, '80A+S', NULL);
INSERT INTO `size` VALUES (11, 2, '80A+M', NULL);
INSERT INTO `size` VALUES (12, 2, '70B+XS', NULL);
INSERT INTO `size` VALUES (13, 2, '70B+S', NULL);
INSERT INTO `size` VALUES (14, 2, '70B+M', NULL);
INSERT INTO `size` VALUES (15, 2, '75B+XS', NULL);
INSERT INTO `size` VALUES (16, 2, '75B+S', NULL);
INSERT INTO `size` VALUES (17, 2, '75B+M', NULL);
INSERT INTO `size` VALUES (18, 2, '80B+XS', NULL);
INSERT INTO `size` VALUES (19, 2, '80B+S', NULL);
INSERT INTO `size` VALUES (20, 2, '80B+M', NULL);
INSERT INTO `size` VALUES (21, 3, 'S', NULL);
INSERT INTO `size` VALUES (22, 3, 'M', NULL);
INSERT INTO `size` VALUES (23, 3, 'L', NULL);
INSERT INTO `size` VALUES (24, 3, 'XL', NULL);
INSERT INTO `size` VALUES (25, 4, '80A+S', NULL);
INSERT INTO `size` VALUES (26, 4, '80A+M', NULL);
INSERT INTO `size` VALUES (27, 4, '70B+S', NULL);
INSERT INTO `size` VALUES (28, 4, '70B+M', NULL);
INSERT INTO `size` VALUES (29, 4, '75B+S', NULL);
INSERT INTO `size` VALUES (30, 4, '75B+M', NULL);
INSERT INTO `size` VALUES (31, 4, '80B+S', NULL);
INSERT INTO `size` VALUES (32, 4, '80B+M', NULL);
INSERT INTO `size` VALUES (33, 4, '75C+S', NULL);
INSERT INTO `size` VALUES (34, 4, '75C+M', NULL);
INSERT INTO `size` VALUES (35, 4, '80C+S', NULL);
INSERT INTO `size` VALUES (36, 4, '80C+M', NULL);
INSERT INTO `size` VALUES (57, 5, 'S', NULL);
INSERT INTO `size` VALUES (58, 5, 'M', NULL);
INSERT INTO `size` VALUES (59, 5, 'XS', NULL);
INSERT INTO `size` VALUES (60, 6, '75A', NULL);
INSERT INTO `size` VALUES (61, 6, '80A', NULL);
INSERT INTO `size` VALUES (62, 6, '70B', NULL);
INSERT INTO `size` VALUES (63, 6, '75B', NULL);
INSERT INTO `size` VALUES (64, 6, '80B', NULL);
INSERT INTO `size` VALUES (65, 6, '75C', NULL);
INSERT INTO `size` VALUES (66, 6, '80C', NULL);
INSERT INTO `size` VALUES (67, 7, '80A+S', NULL);
INSERT INTO `size` VALUES (68, 7, '80A+M', NULL);
INSERT INTO `size` VALUES (69, 7, '70B+XS', NULL);
INSERT INTO `size` VALUES (70, 7, '70B+S', NULL);
INSERT INTO `size` VALUES (71, 7, '70B+M', NULL);
INSERT INTO `size` VALUES (72, 7, '75B+XS', NULL);
INSERT INTO `size` VALUES (73, 7, '75B+S', NULL);
INSERT INTO `size` VALUES (74, 7, '75B+M', NULL);
INSERT INTO `size` VALUES (75, 7, '80B+XS', NULL);
INSERT INTO `size` VALUES (76, 7, '80B+S', NULL);
INSERT INTO `size` VALUES (77, 7, '80B+M', NULL);
INSERT INTO `size` VALUES (78, 7, '75C+XS', NULL);
INSERT INTO `size` VALUES (79, 7, '75C+S', NULL);
INSERT INTO `size` VALUES (80, 7, '75C+M', NULL);
INSERT INTO `size` VALUES (81, 7, '80C+XS', NULL);
INSERT INTO `size` VALUES (82, 7, '80C+S', NULL);
INSERT INTO `size` VALUES (83, 7, '80C+M', NULL);
INSERT INTO `size` VALUES (84, 8, 'M', NULL);
INSERT INTO `size` VALUES (85, 8, 'L', NULL);
INSERT INTO `size` VALUES (86, 8, 'XL', NULL);
INSERT INTO `size` VALUES (87, 8, 'XXL', NULL);
INSERT INTO `size` VALUES (88, 8, 'XXXL', NULL);
INSERT INTO `size` VALUES (89, 9, '80A+S', NULL);
INSERT INTO `size` VALUES (90, 9, '80A+M', NULL);
INSERT INTO `size` VALUES (91, 9, '70B+XS', NULL);
INSERT INTO `size` VALUES (92, 9, '70B+S', NULL);
INSERT INTO `size` VALUES (93, 9, '70B+M', NULL);
INSERT INTO `size` VALUES (94, 9, '75B+XS', NULL);
INSERT INTO `size` VALUES (95, 9, '75B+S', NULL);
INSERT INTO `size` VALUES (96, 9, '75B+M', NULL);
INSERT INTO `size` VALUES (97, 9, '80B+XS', NULL);
INSERT INTO `size` VALUES (98, 9, '80B+S', NULL);
INSERT INTO `size` VALUES (99, 9, '80B+M', NULL);
INSERT INTO `size` VALUES (100, 9, '75C+XS', NULL);
INSERT INTO `size` VALUES (101, 9, '75C+S', NULL);
INSERT INTO `size` VALUES (102, 9, '75C+M', NULL);
INSERT INTO `size` VALUES (103, 9, '80C+XS', NULL);
INSERT INTO `size` VALUES (104, 9, '80C+S', NULL);
INSERT INTO `size` VALUES (105, 9, '80C+M', NULL);
INSERT INTO `size` VALUES (106, 9, '80C+XS', NULL);
INSERT INTO `size` VALUES (107, 10, 'M', NULL);
INSERT INTO `size` VALUES (108, 10, 'L', NULL);
INSERT INTO `size` VALUES (109, 10, 'XL', NULL);
INSERT INTO `size` VALUES (110, 10, 'XXL', NULL);
INSERT INTO `size` VALUES (112, 11, 'XS', NULL);
INSERT INTO `size` VALUES (113, 11, 'S', NULL);
INSERT INTO `size` VALUES (114, 11, 'M', NULL);
INSERT INTO `size` VALUES (115, 12, 'S', NULL);
INSERT INTO `size` VALUES (116, 12, 'ML', NULL);
INSERT INTO `size` VALUES (117, 12, 'L', NULL);
INSERT INTO `size` VALUES (118, 12, 'XL', NULL);
INSERT INTO `size` VALUES (119, 13, 'S', NULL);
INSERT INTO `size` VALUES (120, 13, 'M', NULL);
INSERT INTO `size` VALUES (121, 13, 'L', NULL);
INSERT INTO `size` VALUES (122, 13, 'XL', NULL);
INSERT INTO `size` VALUES (123, 13, 'XXL', NULL);
INSERT INTO `size` VALUES (124, 13, 'XXXL', NULL);
INSERT INTO `size` VALUES (125, 14, '405番茄红/红管', 360.00);
INSERT INTO `size` VALUES (126, 14, ' 400复古色/红管', 360.00);
INSERT INTO `size` VALUES (127, 14, '500金闪红鲤鱼/黑管', 428.00);
INSERT INTO `size` VALUES (128, 14, '400浆果色/黑管', 428.00);
INSERT INTO `size` VALUES (129, 15, '\r\n红色/红管', 738.00);
INSERT INTO `size` VALUES (130, 15, '红色/黑管', 810.00);
INSERT INTO `size` VALUES (131, 15, '粉色/红管', 738.00);
INSERT INTO `size` VALUES (132, 15, '粉色/黑管', 810.00);
INSERT INTO `size` VALUES (133, 16, '12支红管唇粙长礼盒', 2388.00);
INSERT INTO `size` VALUES (134, 16, '红管黑管12支', 2508.00);
INSERT INTO `size` VALUES (135, 16, '6支气垫+口红+唇粙心形套装', 2588.00);
INSERT INTO `size` VALUES (136, 16, '9支唇粙+气垫礼盒', 2688.00);
INSERT INTO `size` VALUES (137, 17, '红管', 538.00);
INSERT INTO `size` VALUES (138, 17, '黑管', 598.00);

SET FOREIGN_KEY_CHECKS = 1;
