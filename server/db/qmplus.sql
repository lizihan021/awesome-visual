/*
 Navicat Premium Data Transfer

 Source Server         : qmplus
 Source Server Type    : MySQL
 Source Server Version : 50644
 Source Host           : localhost:3306
 Source Schema         : qmplus

 Target Server Type    : MySQL
 Target Server Version : 50644
 File Encoding         : 65001

 Date: 06/05/2020 18:00:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule`  (
  `p_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `v0` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `v1` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `v2` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `v3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `v4` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `v5` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
INSERT INTO `casbin_rule` VALUES ('p', '888', '/base/login', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/base/register', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/createApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/getApiList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/getApiById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/deleteApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/updateApi', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/api/getAllApis', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/createAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/deleteAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/getAuthorityList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/setDataAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/updateAuthority', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/authority/copyAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getMenuList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/addBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getBaseMenuTree', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/addMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getMenuAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/deleteBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/updateBaseMenu', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/menu/getBaseMenuById', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/changePassword', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/uploadHeaderImg', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/deleteUser', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/getUserList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/user/setUserAuthority', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/fileUploadAndDownload/upload', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/fileUploadAndDownload/getFileList', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/casbin/updateCasbin', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/casbin/casbinTest/:pathParam', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/jwt/jsonInBlacklist', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/system/getSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/system/setSystemConfig', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customer', 'POST', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customer', 'PUT', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customer', 'DELETE', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customer', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/customer/customerList', 'GET', '', '', '');
INSERT INTO `casbin_rule` VALUES ('p', '888', '/autoCode/createTemp', 'POST', '', '', '');

-- ----------------------------
-- Table structure for exa_customers
-- ----------------------------
DROP TABLE IF EXISTS `exa_customers`;
CREATE TABLE `exa_customers`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `customer_phone_data` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sys_user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `sys_user_authority_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_exa_customers_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exa_customers
-- ----------------------------
INSERT INTO `exa_customers` VALUES (1, '2020-02-25 18:01:48', '2020-04-10 12:29:29', NULL, '测试客户', '1761111111', 10, '888');
INSERT INTO `exa_customers` VALUES (2, '2020-04-10 12:25:53', '2020-04-10 12:25:53', '2020-04-10 13:43:56', 'test', '123123123', 10, '888');
INSERT INTO `exa_customers` VALUES (3, '2020-04-10 13:44:12', '2020-04-10 13:44:12', '2020-04-10 13:44:13', '123123', '123123', 10, '888');
INSERT INTO `exa_customers` VALUES (4, '2020-04-10 13:47:10', '2020-04-10 13:47:10', '2020-04-10 13:47:12', '22222222', '222222222222222', 10, '888');

-- ----------------------------
-- Table structure for exa_file_chunks
-- ----------------------------
DROP TABLE IF EXISTS `exa_file_chunks`;
CREATE TABLE `exa_file_chunks`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `exa_file_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `file_chunk_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_chunk_number` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_exa_file_chunks_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for exa_file_upload_and_downloads
-- ----------------------------
DROP TABLE IF EXISTS `exa_file_upload_and_downloads`;
CREATE TABLE `exa_file_upload_and_downloads`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_file_upload_and_downloads_deleted_at`(`deleted_at`) USING BTREE,
  INDEX `idx_exa_file_upload_and_downloads_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of exa_file_upload_and_downloads
-- ----------------------------
INSERT INTO `exa_file_upload_and_downloads` VALUES (17, '2020-04-26 11:51:39', '2020-04-26 11:51:39', NULL, '10.png', 'http://qmplusimg.henrongyi.top/158787308910.png', 'png', '158787308910.png');
INSERT INTO `exa_file_upload_and_downloads` VALUES (19, '2020-04-27 15:48:38', '2020-04-27 15:48:38', NULL, 'logo.png', 'http://qmplusimg.henrongyi.top/1587973709logo.png', 'png', '1587973709logo.png');

-- ----------------------------
-- Table structure for exa_files
-- ----------------------------
DROP TABLE IF EXISTS `exa_files`;
CREATE TABLE `exa_files`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_md5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `chunk_total` int(11) NULL DEFAULT NULL,
  `is_finish` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_exa_files_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for jwt_blacklists
-- ----------------------------
DROP TABLE IF EXISTS `jwt_blacklists`;
CREATE TABLE `jwt_blacklists`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `jwt` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_jwt_blacklists_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of jwt_blacklists
-- ----------------------------
INSERT INTO `jwt_blacklists` VALUES (3, '2019-12-28 18:29:05', '2019-12-28 18:29:05', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4MTMzNzM2LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1Nzc1Mjc5MzZ9.T7ikGw-lgAAQlfMne7zPIF-PlfQMg37uBCYJ24Y_B38');
INSERT INTO `jwt_blacklists` VALUES (4, '2019-12-28 18:31:02', '2019-12-28 18:31:02', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4MTMzODUzLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1Nzc1MjgwNTN9.tDzUm4KNFeJCErNfZGfuF2tcuolga2f_2dE0nTl_UZU');
INSERT INTO `jwt_blacklists` VALUES (5, '2019-12-28 18:31:25', '2019-12-28 18:31:25', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4MTMzODcwLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1Nzc1MjgwNzB9.mspXy9sqQO_5PusPReLalodo_ybWRKxb3Ownf2r2HxE');
INSERT INTO `jwt_blacklists` VALUES (6, '2019-12-30 14:20:10', '2019-12-30 14:20:10', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4MjkxNTc2LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1Nzc2ODU3NzZ9.AR2KYShboFKsHTjwohxEkA3lytttfZqRH849sl2fNdw');
INSERT INTO `jwt_blacklists` VALUES (7, '2019-12-30 14:21:14', '2019-12-30 14:21:14', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4MjkxNjE2LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1Nzc2ODU4MTZ9.h8zbDVHM_QbBI-ejGXeQpw0S9oYHJyP4U-TwsVFus9Q');
INSERT INTO `jwt_blacklists` VALUES (8, '2019-12-30 14:21:57', '2019-12-30 14:21:57', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4MjkxNjgxLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1Nzc2ODU4ODF9.CSjolDGVpU0g7YG6TaPAlWAMdhtvnBhAi-XYYWZ6RLo');
INSERT INTO `jwt_blacklists` VALUES (9, '2019-12-30 14:25:01', '2019-12-30 14:25:01', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4MjkxODIyLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1Nzc2ODYwMjJ9.Y_s22Vh5J2ah6Kh1nZQQ8XIQspbT4I7tzc_YJqWrRWM');
INSERT INTO `jwt_blacklists` VALUES (10, '2019-12-30 14:29:26', '2019-12-30 14:29:26', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4MjkyMTU0LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1Nzc2ODYzNTR9.4HJdx-sfYE5TUUefdwi3yZ6dY_jG7WwEC_55WuGawY8');
INSERT INTO `jwt_blacklists` VALUES (11, '2019-12-30 14:43:43', '2019-12-30 14:43:43', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4MjkyMTcwLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1Nzc2ODYzNzB9.YEhupQVwjMVBB2eAcAoGG-vJczoxuUyn6KR-tDWU86I');
INSERT INTO `jwt_blacklists` VALUES (12, '2019-12-30 14:55:13', '2019-12-30 14:55:13', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4MjkzMDI3LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1Nzc2ODcyMjd9.r_sE_Z31cFdS2nCf3iyQjuiZe0Z3HPR07wKBGlUHsnk');
INSERT INTO `jwt_blacklists` VALUES (13, '2019-12-30 14:58:31', '2019-12-30 14:58:31', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4MjkzNzY2LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1Nzc2ODc5NjZ9.dYFlmyIKQZjzTCKu56wCmxXiW6zOayN_YgygCcvCyLk');
INSERT INTO `jwt_blacklists` VALUES (14, '2019-12-30 14:58:38', '2019-12-30 14:58:38', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4MjkzOTEwLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1Nzc2ODgxMTB9.pPmzsHU4UceZuPFT_G-SDdxe6FD3MuL47HkovpI-_0c');
INSERT INTO `jwt_blacklists` VALUES (15, '2019-12-30 14:58:58', '2019-12-30 14:58:58', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4MjkzOTE4LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1Nzc2ODgxMTh9.irf98R0belbXtb8x9SxsvuhiYsbHMPbHbFDxaaH0z6Q');
INSERT INTO `jwt_blacklists` VALUES (16, '2020-01-06 16:32:31', '2020-01-06 16:32:31', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTAzMjk5LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTc0OTl9.jgLfjvek7sQyuZ2TABQvLOyu_ifNw_KYzfY3VTLL4fw');
INSERT INTO `jwt_blacklists` VALUES (17, '2020-01-06 16:33:08', '2020-01-06 16:33:08', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA0MzU4LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTg1NTh9.89r6xHZUBDjfmNpmF02RjQXYTBGUiJvOEDP8pydNt-A');
INSERT INTO `jwt_blacklists` VALUES (18, '2020-01-06 16:33:18', '2020-01-06 16:33:18', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA0MzkyLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTg1OTJ9.6Yv9ZYhN-TH9H4SoZEAkjevKVX0vLHL1lVQGFpfBr2U');
INSERT INTO `jwt_blacklists` VALUES (19, '2020-01-06 16:36:06', '2020-01-06 16:36:06', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA0NDA5LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTg2MDl9._9zRRK76XH_KgrW1X9P5GTLW9dwfIixB4QUsC7M3RHA');
INSERT INTO `jwt_blacklists` VALUES (20, '2020-01-06 16:44:06', '2020-01-06 16:44:06', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA0NTcxLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTg3NzF9.5ki0TZooCorK81xWpYa-OO3RR-Bpp5am_uNCNPh4250');
INSERT INTO `jwt_blacklists` VALUES (21, '2020-01-06 16:45:50', '2020-01-06 16:45:50', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1MDUwLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTkyNTB9.A0n5faE0X0TyRb_1RvAQBLooY-peapPTD0LnJD03Ul0');
INSERT INTO `jwt_blacklists` VALUES (22, '2020-01-06 16:46:24', '2020-01-06 16:46:24', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1MTU0LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTkzNTR9.VtqTOJ-MQY2K3w4tM7HgT0z73CEOd3CDqmYqKCjXxnc');
INSERT INTO `jwt_blacklists` VALUES (23, '2020-01-06 16:47:20', '2020-01-06 16:47:20', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1MTg3LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTkzODd9.fwL1QakF30SHSaGDkPo3weIg0l7kiAGwNq_fKsFxquc');
INSERT INTO `jwt_blacklists` VALUES (24, '2020-01-06 16:47:57', '2020-01-06 16:47:57', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1MjQ0LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTk0NDR9.VoKdA0-brmUlQ5bYufIdMWrS-cCQ2ARm7_jeVtfvCpc');
INSERT INTO `jwt_blacklists` VALUES (25, '2020-01-06 16:49:08', '2020-01-06 16:49:08', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1Mjg1LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTk0ODV9.a8-zmyIlJJGdonhXAzNvNH9C-nMa-Voq4bhTbiVKJzE');
INSERT INTO `jwt_blacklists` VALUES (26, '2020-01-06 16:49:32', '2020-01-06 16:49:32', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1MzUyLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTk1NTJ9.l4e3rjtrDgRsqnQwizJ-ZXVUVM8ywSJcNJkkEVYbdzU');
INSERT INTO `jwt_blacklists` VALUES (27, '2020-01-06 16:49:58', '2020-01-06 16:49:58', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1Mzc3LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTk1Nzd9.mXUPYvmXbntrdywpBNM0j9sP991cwfhc9b0KvUM4dG4');
INSERT INTO `jwt_blacklists` VALUES (28, '2020-01-06 16:50:56', '2020-01-06 16:50:56', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1NDExLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTk2MTF9.Z21e8nWHKV5XvYg61CZCz3nMK25m_FmlxncxGMpMS0k');
INSERT INTO `jwt_blacklists` VALUES (29, '2020-01-06 16:52:03', '2020-01-06 16:52:03', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1NDY0LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTk2NjR9.qzptIyCcL_SPm6TGwXML8Rih3qYqj9GLUpWzTpSPPuI');
INSERT INTO `jwt_blacklists` VALUES (30, '2020-01-06 16:52:36', '2020-01-06 16:52:36', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1NTI3LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTk3Mjd9.D9e8qbx44CLX0ZInwNlIqTGS_sSE069TRIDkQAk7tVY');
INSERT INTO `jwt_blacklists` VALUES (31, '2020-01-06 16:54:35', '2020-01-06 16:54:35', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1NTY1LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTk3NjV9.D4EZmVAJ96kxcyIfWkT_LA81t1JCuQZcYmQkkoNhtPo');
INSERT INTO `jwt_blacklists` VALUES (32, '2020-01-06 16:55:40', '2020-01-06 16:55:40', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1NjgzLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTk4ODN9.SJL2fFMbe5VL2YWBzMlrhxbBIJhIHTUeodkEpgH1Xgo');
INSERT INTO `jwt_blacklists` VALUES (33, '2020-01-06 16:57:28', '2020-01-06 16:57:28', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1NzU4LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgyOTk5NTh9.6y12UkOeW7vz7gGTcYaN3Y-2Ut2QmjgU9WEuy_pneGM');
INSERT INTO `jwt_blacklists` VALUES (34, '2020-01-06 16:59:02', '2020-01-06 16:59:02', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1ODU1LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgzMDAwNTV9.G0q9X7Ld3cN_BO-K219b7tFAHgtpiAwqLPoxVNKsEl8');
INSERT INTO `jwt_blacklists` VALUES (35, '2020-01-06 16:59:26', '2020-01-06 16:59:26', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTc4OTA1OTQ2LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1NzgzMDAxNDZ9.cmBgWiztsnh7zF3OUNIDQKv8wzGJF7fllUv-4LlYxu8');
INSERT INTO `jwt_blacklists` VALUES (36, '2020-03-21 14:46:14', '2020-03-21 14:46:14', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTg1Mzc3ODY3LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1ODQ3NzIwNjd9.DLhWhD1FdcWLyFLcXQynKJnenbVHrSiKhlDGFRzgo5k');
INSERT INTO `jwt_blacklists` VALUES (37, '2020-03-31 14:24:35', '2020-03-31 14:24:35', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTg2MTM4MTA4LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1ODU1MzIzMDh9.Ro2F2dZLfOk2Z_OPRbweOuCpchr6HlHfQIF5qjfc8y4');
INSERT INTO `jwt_blacklists` VALUES (38, '2020-04-01 16:07:57', '2020-04-01 16:07:57', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTg2MjQwNzQyLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1ODU2MzQ5NDJ9.9qaOFu7D5cq4vxTfLi4pyO_JGcKjVAEJIcoStJWJlYg');
INSERT INTO `jwt_blacklists` VALUES (39, '2020-04-15 16:30:41', '2020-04-15 16:30:41', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTg3MDk1Njg5LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1ODY0ODk4ODl9.-cNmRAyqhylZlzakwoFY08x7RnjI3CiWTiQc_Iabb-c');
INSERT INTO `jwt_blacklists` VALUES (40, '2020-04-15 16:39:26', '2020-04-15 16:39:26', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTg3NTQ0MjUwLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1ODY5Mzg0NTB9.smVP-Rl1EkAuUVqXW7z0mpxA5O86vXj0oH4FukG-NVA');
INSERT INTO `jwt_blacklists` VALUES (41, '2020-04-15 17:08:06', '2020-04-15 17:08:06', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTg3NTQ0NzgxLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1ODY5Mzg5ODF9.OMZ08Y8aPuj40-NGEQ402LyRFBpkLWzzaqD3_tvj1h8');
INSERT INTO `jwt_blacklists` VALUES (42, '2020-04-15 17:08:28', '2020-04-15 17:08:28', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTg3NTQ2NDk0LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1ODY5NDA2OTR9.9lsoTbZrwhZ8kMXiH-Ta3A4h_yp7SwLj57mo_u5mrk4');
INSERT INTO `jwt_blacklists` VALUES (43, '2020-04-15 17:10:24', '2020-04-15 17:10:24', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTg3NTQ2NTE1LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1ODY5NDA3MTV9.5SrUrUmd4YhzlGmSpA9xJW_wbjV6yI6ty_NriIceOQo');
INSERT INTO `jwt_blacklists` VALUES (44, '2020-04-15 17:11:43', '2020-04-15 17:11:43', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTg3NTQ2NjI5LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1ODY5NDA4Mjl9.SFiomEpOshboOe0JGDa1HlJt5aQIF7IeyOsoDwl1o8E');
INSERT INTO `jwt_blacklists` VALUES (45, '2020-04-15 17:12:54', '2020-04-15 17:12:54', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTg3NTQ2NzE4LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1ODY5NDA5MTh9.xrwEknZQN2J3poarMTQvb7mX1Icicz2_f60kw36g9og');
INSERT INTO `jwt_blacklists` VALUES (46, '2020-04-15 17:14:47', '2020-04-15 17:14:47', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTg3NTQ2Nzg5LCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1ODY5NDA5ODl9.3jbdl1N0KA8ExFMWXHi3ha4aESKq8yDKDgpSH4Xdsnk');
INSERT INTO `jwt_blacklists` VALUES (47, '2020-04-22 12:04:20', '2020-04-22 12:04:20', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTg3NjE2MTYwLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1ODcwMTAzNjB9.jRHlnfXuJhp4hBE-QqCZ-lodzwK67IBkDI2xteB0OQw');
INSERT INTO `jwt_blacklists` VALUES (48, '2020-04-22 12:12:17', '2020-04-22 12:12:17', NULL, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVVUlEIjoiY2UwZDY2ODUtYzE1Zi00MTI2LWE1YjQtODkwYmM5ZDIzNTZkIiwiSUQiOjEwLCJOaWNrTmFtZSI6Iui2hee6p-euoeeQhuWRmCIsIkF1dGhvcml0eUlkIjoiODg4IiwiZXhwIjoxNTg4MTMzMjQyLCJpc3MiOiJxbVBsdXMiLCJuYmYiOjE1ODc1Mjc0NDJ9.WJ59uRUxXJ7-rUH07mE6jCfnwgfvQnpPaLU5vJ_VhWM');

-- ----------------------------
-- Table structure for sys_apis
-- ----------------------------
DROP TABLE IF EXISTS `sys_apis`;
CREATE TABLE `sys_apis`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `authority_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `api_group` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'POST',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_apis_deleted_at`(`deleted_at`) USING BTREE,
  INDEX `idx_sys_apis_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_apis
-- ----------------------------
INSERT INTO `sys_apis` VALUES (1, '2019-09-28 11:23:49', '2019-09-28 17:06:16', NULL, NULL, '/base/login', '用户登录', 'base', 'POST');
INSERT INTO `sys_apis` VALUES (2, '2019-09-28 11:32:46', '2019-09-28 17:06:11', NULL, NULL, '/base/register', '用户注册', 'base', 'POST');
INSERT INTO `sys_apis` VALUES (3, '2019-09-28 11:33:41', '2019-12-11 16:51:41', NULL, NULL, '/api/createApi', '创建api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (4, '2019-09-28 14:09:04', '2019-09-28 17:05:59', NULL, NULL, '/api/getApiList', '获取api列表', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (5, '2019-09-28 14:15:50', '2019-09-28 17:05:53', NULL, NULL, '/api/getApiById', '获取api详细信息', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (7, '2019-09-28 14:19:26', '2019-09-28 17:05:44', NULL, NULL, '/api/deleteApi', '删除Api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (8, '2019-09-28 14:19:48', '2019-09-28 17:05:39', NULL, NULL, '/api/updateApi', '更新Api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (10, '2019-09-30 15:05:38', '2019-09-30 15:05:38', NULL, NULL, '/api/getAllApis', '获取所有api', 'api', 'POST');
INSERT INTO `sys_apis` VALUES (11, '2019-09-30 15:23:09', '2019-09-30 15:23:09', NULL, NULL, '/authority/createAuthority', '创建角色', 'authority', 'POST');
INSERT INTO `sys_apis` VALUES (12, '2019-09-30 15:23:33', '2019-09-30 15:23:33', NULL, NULL, '/authority/deleteAuthority', '删除角色', 'authority', 'POST');
INSERT INTO `sys_apis` VALUES (13, '2019-09-30 15:23:57', '2019-09-30 15:23:57', NULL, NULL, '/authority/getAuthorityList', '获取角色列表', 'authority', 'POST');
INSERT INTO `sys_apis` VALUES (14, '2019-09-30 15:24:20', '2019-09-30 15:24:20', NULL, NULL, '/menu/getMenu', '获取菜单树', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (15, '2019-09-30 15:24:50', '2019-09-30 15:24:50', NULL, NULL, '/menu/getMenuList', '分页获取基础menu列表', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (16, '2019-09-30 15:25:07', '2019-09-30 15:25:07', NULL, NULL, '/menu/addBaseMenu', '新增菜单', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (17, '2019-09-30 15:25:25', '2019-09-30 15:25:25', NULL, NULL, '/menu/getBaseMenuTree', '获取用户动态路由', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (18, '2019-09-30 15:25:53', '2019-09-30 15:25:53', NULL, NULL, '/menu/addMenuAuthority', '增加menu和角色关联关系', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (19, '2019-09-30 15:26:20', '2019-09-30 15:26:20', NULL, NULL, '/menu/getMenuAuthority', '获取指定角色menu', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (20, '2019-09-30 15:26:43', '2019-09-30 15:26:43', NULL, NULL, '/menu/deleteBaseMenu', '删除菜单', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (21, '2019-09-30 15:28:05', '2019-09-30 15:28:05', NULL, NULL, '/menu/updateBaseMenu', '更新菜单', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (22, '2019-09-30 15:28:21', '2019-09-30 15:28:21', NULL, NULL, '/menu/getBaseMenuById', '根据id获取菜单', 'menu', 'POST');
INSERT INTO `sys_apis` VALUES (23, '2019-09-30 15:29:19', '2019-09-30 15:29:19', NULL, NULL, '/user/changePassword', '修改密码', 'user', 'POST');
INSERT INTO `sys_apis` VALUES (24, '2019-09-30 15:29:33', '2019-09-30 15:29:33', NULL, NULL, '/user/uploadHeaderImg', '上传头像', 'user', 'POST');
INSERT INTO `sys_apis` VALUES (25, '2019-09-30 15:30:00', '2020-05-06 16:03:47', NULL, NULL, '/user/deleteUser', '删除用户', 'user', 'DELETE');
INSERT INTO `sys_apis` VALUES (28, '2019-10-09 15:15:17', '2019-10-09 15:17:07', NULL, NULL, '/user/getUserList', '获取用户列表', 'user', 'POST');
INSERT INTO `sys_apis` VALUES (29, '2019-10-09 23:01:40', '2019-10-09 23:01:40', NULL, NULL, '/user/setUserAuthority', '修改用户角色', 'user', 'POST');
INSERT INTO `sys_apis` VALUES (30, '2019-10-26 20:14:38', '2019-10-26 20:14:38', NULL, NULL, '/fileUploadAndDownload/upload', '文件上传示例', 'fileUploadAndDownload', 'POST');
INSERT INTO `sys_apis` VALUES (31, '2019-10-26 20:14:59', '2019-10-26 20:14:59', NULL, NULL, '/fileUploadAndDownload/getFileList', '获取上传文件列表', 'fileUploadAndDownload', 'POST');
INSERT INTO `sys_apis` VALUES (32, '2019-12-12 13:28:47', '2019-12-12 13:28:47', NULL, NULL, '/casbin/updateCasbin', '更改角色api权限', 'casbin', 'POST');
INSERT INTO `sys_apis` VALUES (33, '2019-12-12 13:28:59', '2019-12-12 13:28:59', NULL, NULL, '/casbin/getPolicyPathByAuthorityId', '获取权限列表', 'casbin', 'POST');
INSERT INTO `sys_apis` VALUES (34, '2019-12-12 17:02:15', '2019-12-12 17:02:15', NULL, NULL, '/fileUploadAndDownload/deleteFile', '删除文件', 'fileUploadAndDownload', 'POST');
INSERT INTO `sys_apis` VALUES (35, '2019-12-28 18:18:07', '2019-12-28 18:18:07', NULL, NULL, '/jwt/jsonInBlacklist', 'jwt加入黑名单', 'jwt', 'POST');
INSERT INTO `sys_apis` VALUES (36, '2020-01-06 17:56:36', '2020-01-06 17:56:36', NULL, NULL, '/authority/setDataAuthority', '设置角色资源权限', 'authority', 'POST');
INSERT INTO `sys_apis` VALUES (37, '2020-01-13 14:04:05', '2020-01-13 14:04:05', NULL, NULL, '/system/getSystemConfig', '获取配置文件内容', 'system', 'POST');
INSERT INTO `sys_apis` VALUES (38, '2020-01-13 15:02:06', '2020-01-13 15:02:06', NULL, NULL, '/system/setSystemConfig', '设置配置文件内容', 'system', 'POST');
INSERT INTO `sys_apis` VALUES (39, '2020-02-25 15:32:39', '2020-02-25 15:32:39', NULL, NULL, '/customer/customer', '创建客户', 'customer', 'POST');
INSERT INTO `sys_apis` VALUES (40, '2020-02-25 15:32:51', '2020-02-25 15:34:56', NULL, NULL, '/customer/customer', '更新客户', 'customer', 'PUT');
INSERT INTO `sys_apis` VALUES (41, '2020-02-25 15:33:57', '2020-02-25 15:33:57', NULL, NULL, '/customer/customer', '删除客户', 'customer', 'DELETE');
INSERT INTO `sys_apis` VALUES (42, '2020-02-25 15:36:48', '2020-02-25 15:37:16', NULL, NULL, '/customer/customer', '获取单一客户', 'customer', 'GET');
INSERT INTO `sys_apis` VALUES (43, '2020-02-25 15:37:06', '2020-02-25 15:37:06', NULL, NULL, '/customer/customerList', '获取客户列表', 'customer', 'GET');
INSERT INTO `sys_apis` VALUES (44, '2020-03-12 14:36:54', '2020-03-12 14:56:50', NULL, NULL, '/casbin/casbinTest/:pathParam', 'RESTFUL模式测试', 'casbin', 'GET');
INSERT INTO `sys_apis` VALUES (45, '2020-03-29 23:01:28', '2020-03-29 23:01:28', NULL, NULL, '/autoCode/createTemp', '自动化代码', 'autoCode', 'POST');
INSERT INTO `sys_apis` VALUES (46, '2020-04-15 12:46:58', '2020-04-15 12:46:58', NULL, NULL, '/authority/updateAuthority', '更新角色信息', 'authority', 'PUT');
INSERT INTO `sys_apis` VALUES (47, '2020-04-20 15:14:25', '2020-04-20 15:14:25', NULL, NULL, '/authority/copyAuthority', '拷贝角色', 'authority', 'POST');

-- ----------------------------
-- Table structure for sys_authorities
-- ----------------------------
DROP TABLE IF EXISTS `sys_authorities`;
CREATE TABLE `sys_authorities`  (
  `authority_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `authority_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL,
  `deleted_at` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`authority_id`) USING BTREE,
  UNIQUE INDEX `authority_id`(`authority_id`) USING BTREE,
  INDEX `idx_sys_authorities_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_authorities
-- ----------------------------
INSERT INTO `sys_authorities` VALUES ('888', '普通用户', '0', '2020-04-04 11:44:56', '2020-04-24 10:16:42', NULL);

-- ----------------------------
-- Table structure for sys_authority_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority_menus`;
CREATE TABLE `sys_authority_menus`  (
  `sys_authority_authority_id` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `sys_base_menu_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`sys_authority_authority_id`, `sys_base_menu_id`) USING BTREE,
  INDEX `sys_authority_authority_id`(`sys_authority_authority_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_authority_menus
-- ----------------------------
INSERT INTO `sys_authority_menus` VALUES ('888', 1);
INSERT INTO `sys_authority_menus` VALUES ('888', 2);
INSERT INTO `sys_authority_menus` VALUES ('888', 3);
INSERT INTO `sys_authority_menus` VALUES ('888', 4);
INSERT INTO `sys_authority_menus` VALUES ('888', 5);
INSERT INTO `sys_authority_menus` VALUES ('888', 6);
INSERT INTO `sys_authority_menus` VALUES ('888', 17);
INSERT INTO `sys_authority_menus` VALUES ('888', 18);
INSERT INTO `sys_authority_menus` VALUES ('888', 19);
INSERT INTO `sys_authority_menus` VALUES ('888', 20);
INSERT INTO `sys_authority_menus` VALUES ('888', 21);
INSERT INTO `sys_authority_menus` VALUES ('888', 22);
INSERT INTO `sys_authority_menus` VALUES ('888', 23);
INSERT INTO `sys_authority_menus` VALUES ('888', 26);
INSERT INTO `sys_authority_menus` VALUES ('888', 33);
INSERT INTO `sys_authority_menus` VALUES ('888', 34);
INSERT INTO `sys_authority_menus` VALUES ('888', 38);
INSERT INTO `sys_authority_menus` VALUES ('888', 40);
INSERT INTO `sys_authority_menus` VALUES ('888', 41);
INSERT INTO `sys_authority_menus` VALUES ('888', 42);
INSERT INTO `sys_authority_menus` VALUES ('888', 45);

-- ----------------------------
-- Table structure for sys_base_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menus`;
CREATE TABLE `sys_base_menus`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `menu_level` int(10) UNSIGNED NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `hidden` tinyint(1) NULL DEFAULT NULL,
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(255) NULL DEFAULT NULL,
  `keep_alive` tinyint(1) NULL DEFAULT NULL,
  `default_menu` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_base_menus_deleted_at`(`deleted_at`) USING BTREE,
  INDEX `idx_sys_base_menus_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_base_menus
-- ----------------------------
INSERT INTO `sys_base_menus` VALUES (1, '2019-09-19 22:05:18', '2020-04-24 10:16:42', NULL, 0, 0, 'dashboard', 'dashboard', 0, 'view/dashboard/index.vue', '仪表盘', 'setting', '仪表盘', 1, 0, 0);
INSERT INTO `sys_base_menus` VALUES (2, '2019-09-19 22:06:17', '2020-04-30 17:50:34', NULL, 0, 0, 'about', 'about', 0, 'view/about/index.vue', '关于我们', 'info', '测试菜单', 7, 0, 0);
INSERT INTO `sys_base_menus` VALUES (3, '2019-09-19 22:06:38', '2020-04-24 10:16:43', NULL, 0, 0, 'admin', 'superAdmin', 0, 'view/superAdmin/index.vue', '超级管理员', 'user-solid', '超级管理员', 3, 0, 0);
INSERT INTO `sys_base_menus` VALUES (4, '2019-09-19 22:11:53', '2020-04-24 10:16:42', NULL, 0, 3, 'authority', 'authority', 0, 'view/superAdmin/authority/authority.vue', '角色管理', 's-custom', '角色管理', 1, 0, 0);
INSERT INTO `sys_base_menus` VALUES (5, '2019-09-19 22:13:18', '2020-04-30 17:45:27', NULL, 0, 3, 'menu', 'menu', 0, 'view/superAdmin/menu/menu.vue', '菜单管理', 's-order', '菜单管理', 2, 1, 0);
INSERT INTO `sys_base_menus` VALUES (6, '2019-09-19 22:13:36', '2020-04-24 10:16:43', NULL, 0, 3, 'api', 'api', 0, 'view/superAdmin/api/api.vue', 'api管理', 's-platform', 'api管理', 3, 1, 0);
INSERT INTO `sys_base_menus` VALUES (17, '2019-10-09 15:12:29', '2020-04-24 10:16:43', NULL, 0, 3, 'user', 'user', 0, 'view/superAdmin/user/user.vue', '用户管理', 'coordinate', '用户管理', 4, 0, 0);
INSERT INTO `sys_base_menus` VALUES (18, '2019-10-15 22:27:22', '2020-04-24 10:16:43', NULL, 0, 0, 'person', 'person', 1, 'view/person/person.vue', '个人信息', 'user-solid', '个人信息', 4, 0, 0);
INSERT INTO `sys_base_menus` VALUES (19, '2019-10-20 11:14:42', '2020-04-24 10:16:43', NULL, 0, 0, 'example', 'example', 0, 'view/example/index.vue', '示例文件', 's-management', '示例文件', 6, 0, 0);
INSERT INTO `sys_base_menus` VALUES (20, '2019-10-20 11:18:11', '2020-04-24 10:16:42', NULL, 0, 19, 'table', 'table', 0, 'view/example/table/table.vue', '表格示例', 's-order', '表格示例', 1, 0, 0);
INSERT INTO `sys_base_menus` VALUES (21, '2019-10-20 11:19:52', '2020-04-24 10:16:43', NULL, 0, 19, 'form', 'form', 0, 'view/example/form/form.vue', '表单示例', 'document', '表单示例', 2, 0, 0);
INSERT INTO `sys_base_menus` VALUES (22, '2019-10-20 11:22:19', '2020-04-24 10:16:43', NULL, 0, 19, 'rte', 'rte', 0, 'view/example/rte/rte.vue', '富文本编辑器', 'reading', '富文本编辑器', 3, 0, 0);
INSERT INTO `sys_base_menus` VALUES (23, '2019-10-20 11:23:39', '2020-04-24 10:16:43', NULL, 0, 19, 'excel', 'excel', 0, 'view/example/excel/excel.vue', 'excel导入导出', 's-marketing', 'excel导入导出', 4, 0, 0);
INSERT INTO `sys_base_menus` VALUES (26, '2019-10-20 11:27:02', '2020-04-24 10:16:43', NULL, 0, 19, 'upload', 'upload', 0, 'view/example/upload/upload.vue', '上传下载', 'upload', '上传下载', 5, 0, 0);
INSERT INTO `sys_base_menus` VALUES (33, '2020-02-17 16:20:47', '2020-04-24 10:16:43', NULL, 0, 19, 'breakpoint', 'breakpoint', 0, 'view/example/breakpoint/breakpoint.vue', '断点续传', 'upload', '断点续传', 6, 0, 0);
INSERT INTO `sys_base_menus` VALUES (34, '2020-02-24 19:48:37', '2020-04-24 10:16:43', NULL, 0, 19, 'customer', 'customer', 0, 'view/example/customer/customer.vue', '客户列表（资源示例）', 's-custom', '客户列表（资源示例）', 7, 0, 0);
INSERT INTO `sys_base_menus` VALUES (38, '2020-03-29 21:31:03', '2020-04-24 10:16:43', NULL, 0, 0, 'systemTools', 'systemTools', 0, 'view/systemTools/index.vue', '系统工具', 's-cooperation', '系统工具', 5, 0, 0);
INSERT INTO `sys_base_menus` VALUES (40, '2020-03-29 21:35:10', '2020-04-24 10:16:43', NULL, 0, 38, 'autoCode', 'autoCode', 0, 'view/systemTools/autoCode/index.vue', '代码生成器', 'cpu', '代码生成器', 1, 0, 0);
INSERT INTO `sys_base_menus` VALUES (41, '2020-03-29 21:36:26', '2020-04-24 10:16:43', NULL, 0, 38, 'formCreate', 'formCreate', 0, 'view/systemTools/formCreate/index.vue', '表单生成器', 'magic-stick', '表单生成器', 2, 0, 0);
INSERT INTO `sys_base_menus` VALUES (42, '2020-04-02 14:19:36', '2020-04-24 10:16:43', NULL, 0, 38, 'system', 'system', 0, 'view/systemTools/system/system.vue', '系统配置', 's-operation', '系统配置', 3, 0, 0);
INSERT INTO `sys_base_menus` VALUES (45, '2020-04-29 17:19:34', '2020-04-30 17:44:44', NULL, 0, 0, 'iconList', 'iconList', 0, 'view/iconList/index.vue', '图标集合', 'star-on', NULL, 2, 0, 0);

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users`  (
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `id` varchar(36) NOT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'QMPlusUser',
  `header_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'http://www.henrongyi.top/avatar/lufu.jpg',
  `authority_id` double NULL DEFAULT 888,
  `authority_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_data` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_users_deleted_at`(`deleted_at`) USING BTREE,
  INDEX `idx_sys_users_deleted_at`(`deleted_at`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users`
    (id, created_at, updated_at, nick_name, username, password, email)
VALUES
    ('6ccd780c-baba-1026-9564-5b8c656024db', '2019-09-13 17:23:46', '2020-05-06 16:09:15', '超级管理员', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'lizihan021@gmail.com'),
    ('9aa3f102-9bf0-11ea-b66a-3e16b23d18c0', '2019-09-13 17:27:29', '2019-09-13 17:27:29', 'QMPlusUser', 'a303176530', '3ec063004a6f31642261936a379fde3d', NULL);

-- ----------------------------
-- View structure for authority_menu
-- ----------------------------
DROP VIEW IF EXISTS `authority_menu`;
CREATE ALGORITHM = UNDEFINED DEFINER = `root`@`localhost` SQL SECURITY DEFINER VIEW `authority_menu` AS select `sys_base_menus`.`id` AS `id`,`sys_base_menus`.`created_at` AS `created_at`,`sys_base_menus`.`updated_at` AS `updated_at`,`sys_base_menus`.`deleted_at` AS `deleted_at`,`sys_base_menus`.`menu_level` AS `menu_level`,`sys_base_menus`.`parent_id` AS `parent_id`,`sys_base_menus`.`path` AS `path`,`sys_base_menus`.`name` AS `name`,`sys_base_menus`.`hidden` AS `hidden`,`sys_base_menus`.`component` AS `component`,`sys_base_menus`.`title` AS `title`,`sys_base_menus`.`icon` AS `icon`,`sys_base_menus`.`nick_name` AS `nick_name`,`sys_base_menus`.`sort` AS `sort`,`sys_authority_menus`.`sys_authority_authority_id` AS `authority_id`,`sys_authority_menus`.`sys_base_menu_id` AS `menu_id`,`sys_base_menus`.`keep_alive` AS `keep_alive`,`sys_base_menus`.`default_menu` AS `default_menu` from (`sys_authority_menus` join `sys_base_menus` on((`sys_authority_menus`.`sys_base_menu_id` = `sys_base_menus`.`id`)));

-- ----------------------------
-- Table structure for post_images
-- ----------------------------
DROP TABLE IF EXISTS `post_images`;
CREATE TABLE `post_images`  (
  `id` varchar(36) NOT NULL,
  `link1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link6` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link7` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link8` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link9` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of post_images
-- ----------------------------
INSERT INTO `post_images`
    (id, link1)
VALUES
    ('9b81b1c8-9c67-11ea-b66a-3e16b23d18c0', 'https://raw.githubusercontent.com/zhaoolee/ChineseBQB/master/006Hamster_%E4%BB%93%E9%BC%A0%F0%9F%90%B9BQB/webwxgetmsgimg.png'),
    ('d0afecde-9c67-11ea-b66a-3e16b23d18c0', 'https://raw.githubusercontent.com/zhaoolee/ChineseBQB/master/048SpongeBob_%E6%B5%B7%E7%BB%B5%E5%AE%9D%E5%AE%9DBQB/SpongeBob00002.jpg'),
    ('e7f2dcb2-9c67-11ea-b66a-3e16b23d18c0', 'https://raw.githubusercontent.com/zhaoolee/ChineseBQB/master/048SpongeBob_%E6%B5%B7%E7%BB%B5%E5%AE%9D%E5%AE%9DBQB/SpongeBob00003.jpg'),
    ('e9534fce-9c67-11ea-b66a-3e16b23d18c0', 'https://raw.githubusercontent.com/zhaoolee/ChineseBQB/master/048SpongeBob_%E6%B5%B7%E7%BB%B5%E5%AE%9D%E5%AE%9DBQB/SpongeBob00004.jpg'),
    ('fa80a13e-9c67-11ea-b66a-3e16b23d18c0', 'https://raw.githubusercontent.com/zhaoolee/ChineseBQB/master/048SpongeBob_%E6%B5%B7%E7%BB%B5%E5%AE%9D%E5%AE%9DBQB/SpongeBob00005.jpg'),
    ('2d147e18-9c68-11ea-b66a-3e16b23d18c0', 'https://raw.githubusercontent.com/zhaoolee/ChineseBQB/master/048SpongeBob_%E6%B5%B7%E7%BB%B5%E5%AE%9D%E5%AE%9DBQB/SpongeBob00006.jpg'),
    ('2d710bce-9c68-11ea-b66a-3e16b23d18c0', 'https://raw.githubusercontent.com/zhaoolee/ChineseBQB/master/064Trump_%E7%89%B9%E6%9C%97%E6%99%AEBQB/3.jpg');

-- ----------------------------
-- Table structure for post_items
-- ----------------------------
DROP TABLE IF EXISTS `post_items`;
CREATE TABLE `post_items`  (
  `id` varchar(36) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of post_items
-- ----------------------------
INSERT INTO `post_items` VALUES ('9a5dcde4-9c68-11ea-b66a-3e16b23d18c0', 10500);
INSERT INTO `post_items` VALUES ('ab8d199e-9c68-11ea-b66a-3e16b23d18c0', 20500);
INSERT INTO `post_items` VALUES ('b1e26862-9c68-11ea-b66a-3e16b23d18c0', 15000);
INSERT INTO `post_items` VALUES ('b8ff092a-9c68-11ea-b66a-3e16b23d18c0', 9500);

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` varchar(36) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `content` text(65535) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image_id` varchar(36),
  `item_id` varchar(36),
  `user_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  FOREIGN KEY (`image_id`) REFERENCES post_images(`id`),
  FOREIGN KEY (`item_id`) REFERENCES post_items(`id`),
  FOREIGN KEY (`user_id`) REFERENCES sys_users(`id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('fbba252e-9c68-11ea-b66a-3e16b23d18c0', '2019-09-19 11:27:29', '2019-09-19 17:27:29', NULL, '啦啦啦啦啦啦', '9b81b1c8-9c67-11ea-b66a-3e16b23d18c0', '9a5dcde4-9c68-11ea-b66a-3e16b23d18c0', '6ccd780c-baba-1026-9564-5b8c656024db');
INSERT INTO `posts` VALUES ('10b5fe6c-9c69-11ea-b66a-3e16b23d18c0', '2019-09-18 10:27:29', '2019-09-19 17:27:29', NULL, '陆垚知马莉', 'd0afecde-9c67-11ea-b66a-3e16b23d18c0', 'ab8d199e-9c68-11ea-b66a-3e16b23d18c0', '9aa3f102-9bf0-11ea-b66a-3e16b23d18c0');
INSERT INTO `posts` VALUES ('1d6a1a08-9c69-11ea-b66a-3e16b23d18c0', '2019-09-18 17:27:29', '2019-09-19 17:27:29', '2019-09-19 17:27:29', 'Nothing', NULL, NULL, '9aa3f102-9bf0-11ea-b66a-3e16b23d18c0');
INSERT INTO `posts` VALUES ('3f73f0c4-9c69-11ea-b66a-3e16b23d18c0', '2019-09-18 17:27:29', '2019-09-18 17:27:29', NULL, 'Come down from your fences, open the gate', 'e7f2dcb2-9c67-11ea-b66a-3e16b23d18c0', 'b1e26862-9c68-11ea-b66a-3e16b23d18c0', '6ccd780c-baba-1026-9564-5b8c656024db');
INSERT INTO `posts` VALUES ('6befab2a-9c69-11ea-b66a-3e16b23d18c0', '2019-09-19 17:27:20', '2019-09-19 17:27:29', NULL, 'Emmm...', 'e9534fce-9c67-11ea-b66a-3e16b23d18c0', 'b8ff092a-9c68-11ea-b66a-3e16b23d18c0', '9aa3f102-9bf0-11ea-b66a-3e16b23d18c0');
INSERT INTO `posts` VALUES ('87df054c-9c69-11ea-b66a-3e16b23d18c0', '2019-09-19 17:07:29', '2019-09-19 17:07:29', NULL, 'Hi there', 'fa80a13e-9c67-11ea-b66a-3e16b23d18c0', NULL, '6ccd780c-baba-1026-9564-5b8c656024db');
INSERT INTO `posts` VALUES ('91cdd010-9c69-11ea-b66a-3e16b23d18c0', '2019-09-15 17:24:29', '2019-09-29 17:27:29', NULL, 'Bonjour', '2d147e18-9c68-11ea-b66a-3e16b23d18c0', NULL, '6ccd780c-baba-1026-9564-5b8c656024db');
INSERT INTO `posts` VALUES ('9b846998-9c69-11ea-b66a-3e16b23d18c0', '2019-09-12 12:24:29', '2019-12-12 17:27:29', NULL, '怎么了', '2d710bce-9c68-11ea-b66a-3e16b23d18c0', NULL, '6ccd780c-baba-1026-9564-5b8c656024db');
INSERT INTO `posts` VALUES ('aa34b9e8-9c69-11ea-b66a-3e16b23d18c0', '2019-01-15 17:24:29', '2019-02-19 19:27:29', NULL, 'gbd', NULL, NULL, '9aa3f102-9bf0-11ea-b66a-3e16b23d18c0');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` varchar(36) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `content` text(65535) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `post_id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  FOREIGN KEY (`post_id`) REFERENCES posts(`id`),
  FOREIGN KEY (`user_id`) REFERENCES sys_users(`id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('02d3e4c0-9c6a-11ea-b66a-3e16b23d18c0', '2020-01-15 17:24:29', '2020-01-15 17:24:29', NULL, 'Comment 1', 'fbba252e-9c68-11ea-b66a-3e16b23d18c0', '9aa3f102-9bf0-11ea-b66a-3e16b23d18c0');
INSERT INTO `comments` VALUES ('10b9c80c-9c6a-11ea-b66a-3e16b23d18c0', '2020-01-16 17:24:29', '2020-01-16 17:24:29', NULL, 'Comment 2', 'fbba252e-9c68-11ea-b66a-3e16b23d18c0', '6ccd780c-baba-1026-9564-5b8c656024db');
INSERT INTO `comments` VALUES ('257460cc-9c6a-11ea-b66a-3e16b23d18c0', '2020-01-15 17:24:29', '2020-02-19 19:27:29', NULL, 'Comment 3', '10b5fe6c-9c69-11ea-b66a-3e16b23d18c0', '6ccd780c-baba-1026-9564-5b8c656024db');

-- ----------------------------
-- Table structure for user_create_posts
-- ----------------------------
DROP TABLE IF EXISTS `user_create_posts`;
CREATE TABLE `user_create_posts`  (
  `user_id` varchar(36) NOT NULL,
  `post_id` varchar(36) NOT NULL,
  FOREIGN KEY (`user_id`) REFERENCES sys_users(`id`),
  FOREIGN KEY (`post_id`) REFERENCES posts(`id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_create_posts
-- ----------------------------
INSERT INTO `user_create_posts` VALUES ('6ccd780c-baba-1026-9564-5b8c656024db', 'fbba252e-9c68-11ea-b66a-3e16b23d18c0');
INSERT INTO `user_create_posts` VALUES ('9aa3f102-9bf0-11ea-b66a-3e16b23d18c0', '10b5fe6c-9c69-11ea-b66a-3e16b23d18c0');
INSERT INTO `user_create_posts` VALUES ('9aa3f102-9bf0-11ea-b66a-3e16b23d18c0', '1d6a1a08-9c69-11ea-b66a-3e16b23d18c0');
INSERT INTO `user_create_posts` VALUES ('6ccd780c-baba-1026-9564-5b8c656024db', '3f73f0c4-9c69-11ea-b66a-3e16b23d18c0');
INSERT INTO `user_create_posts` VALUES ('9aa3f102-9bf0-11ea-b66a-3e16b23d18c0', '6befab2a-9c69-11ea-b66a-3e16b23d18c0');
INSERT INTO `user_create_posts` VALUES ('6ccd780c-baba-1026-9564-5b8c656024db', '87df054c-9c69-11ea-b66a-3e16b23d18c0');
INSERT INTO `user_create_posts` VALUES ('6ccd780c-baba-1026-9564-5b8c656024db', '91cdd010-9c69-11ea-b66a-3e16b23d18c0');
INSERT INTO `user_create_posts` VALUES ('6ccd780c-baba-1026-9564-5b8c656024db', '9b846998-9c69-11ea-b66a-3e16b23d18c0');
INSERT INTO `user_create_posts` VALUES ('9aa3f102-9bf0-11ea-b66a-3e16b23d18c0', 'aa34b9e8-9c69-11ea-b66a-3e16b23d18c0');

-- ----------------------------
-- Table structure for post_comments
-- ----------------------------
DROP TABLE IF EXISTS `post_comments`;
CREATE TABLE `post_comments`  (
  `post_id` varchar(36) NOT NULL,
  `comment_id` varchar(36) NOT NULL,
  FOREIGN KEY (`post_id`) REFERENCES posts(`id`),
  FOREIGN KEY (`comment_id`) REFERENCES comments(`id`)
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of post_comments
-- ----------------------------
INSERT INTO `post_comments` VALUES ('fbba252e-9c68-11ea-b66a-3e16b23d18c0', '02d3e4c0-9c6a-11ea-b66a-3e16b23d18c0');
INSERT INTO `post_comments` VALUES ('fbba252e-9c68-11ea-b66a-3e16b23d18c0', '10b9c80c-9c6a-11ea-b66a-3e16b23d18c0');
INSERT INTO `post_comments` VALUES ('10b5fe6c-9c69-11ea-b66a-3e16b23d18c0', '257460cc-9c6a-11ea-b66a-3e16b23d18c0');

SET FOREIGN_KEY_CHECKS = 1;