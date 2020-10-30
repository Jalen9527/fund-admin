/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : funds

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 30/10/2020 09:47:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `uri` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, 0, 1, 'Index', 'feather icon-bar-chart-2', '/', '2020-10-13 14:01:23', NULL);
INSERT INTO `admin_menu` VALUES (2, 0, 2, 'Admin', 'feather icon-settings', NULL, '2020-10-13 14:01:23', '2020-10-14 13:15:49');
INSERT INTO `admin_menu` VALUES (3, 2, 3, '管理用户', 'fa-address-card', 'auth/users', '2020-10-13 14:01:23', '2020-10-14 14:26:29');
INSERT INTO `admin_menu` VALUES (4, 2, 4, 'Roles', '', 'auth/roles', '2020-10-13 14:01:23', NULL);
INSERT INTO `admin_menu` VALUES (5, 2, 5, 'Permission', '', 'auth/permissions', '2020-10-13 14:01:23', NULL);
INSERT INTO `admin_menu` VALUES (6, 2, 6, 'Menu', '', 'auth/menu', '2020-10-13 14:01:23', NULL);
INSERT INTO `admin_menu` VALUES (7, 2, 7, 'Operation log', '', 'auth/logs', '2020-10-13 14:01:23', NULL);
INSERT INTO `admin_menu` VALUES (8, 0, 8, '基金用户管理', 'fa-align-right', 'user/list', '2020-10-14 13:18:25', '2020-10-17 12:16:50');
INSERT INTO `admin_menu` VALUES (10, 0, 10, '统计', 'fa-bar-chart', NULL, '2020-10-14 16:17:00', '2020-10-14 16:17:00');
INSERT INTO `admin_menu` VALUES (12, 10, 12, '基金统计', NULL, 'foud/log', '2020-10-14 16:17:58', '2020-10-30 01:36:09');
INSERT INTO `admin_menu` VALUES (13, 10, 13, '每日基金', 'fa-align-center', 'foud/day', '2020-10-17 12:15:57', '2020-10-30 01:36:15');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 485 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-19 10:33:07', '2020-10-19 10:33:07');
INSERT INTO `admin_operation_log` VALUES (2, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-19 10:33:09', '2020-10-19 10:33:09');
INSERT INTO `admin_operation_log` VALUES (3, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-19 10:33:11', '2020-10-19 10:33:11');
INSERT INTO `admin_operation_log` VALUES (4, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-19 10:33:13', '2020-10-19 10:33:13');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-20 01:34:19', '2020-10-20 01:34:19');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:34:22', '2020-10-20 01:34:22');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-10-20 01:34:27', '2020-10-20 01:34:27');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-10-20 01:35:01', '2020-10-20 01:35:01');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-20 01:35:28', '2020-10-20 01:35:28');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-20 01:35:45', '2020-10-20 01:35:45');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-20 01:36:33', '2020-10-20 01:36:33');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-20 01:36:52', '2020-10-20 01:36:52');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:36:57', '2020-10-20 01:36:57');
INSERT INTO `admin_operation_log` VALUES (14, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:37:00', '2020-10-20 01:37:00');
INSERT INTO `admin_operation_log` VALUES (15, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-20 01:37:18', '2020-10-20 01:37:18');
INSERT INTO `admin_operation_log` VALUES (16, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:37:19', '2020-10-20 01:37:19');
INSERT INTO `admin_operation_log` VALUES (17, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:37:21', '2020-10-20 01:37:21');
INSERT INTO `admin_operation_log` VALUES (18, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:37:21', '2020-10-20 01:37:21');
INSERT INTO `admin_operation_log` VALUES (19, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:37:22', '2020-10-20 01:37:22');
INSERT INTO `admin_operation_log` VALUES (20, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:37:23', '2020-10-20 01:37:23');
INSERT INTO `admin_operation_log` VALUES (21, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:37:23', '2020-10-20 01:37:23');
INSERT INTO `admin_operation_log` VALUES (22, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-20 01:38:29', '2020-10-20 01:38:29');
INSERT INTO `admin_operation_log` VALUES (23, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:38:31', '2020-10-20 01:38:31');
INSERT INTO `admin_operation_log` VALUES (24, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-20 01:38:40', '2020-10-20 01:38:40');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:38:47', '2020-10-20 01:38:47');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:38:50', '2020-10-20 01:38:50');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:38:53', '2020-10-20 01:38:53');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:38:54', '2020-10-20 01:38:54');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:38:57', '2020-10-20 01:38:57');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:39:02', '2020-10-20 01:39:02');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:39:03', '2020-10-20 01:39:03');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:39:04', '2020-10-20 01:39:04');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:39:05', '2020-10-20 01:39:05');
INSERT INTO `admin_operation_log` VALUES (34, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-20 01:41:59', '2020-10-20 01:41:59');
INSERT INTO `admin_operation_log` VALUES (35, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:42:03', '2020-10-20 01:42:03');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:42:06', '2020-10-20 01:42:06');
INSERT INTO `admin_operation_log` VALUES (37, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-20 01:42:06', '2020-10-20 01:42:06');
INSERT INTO `admin_operation_log` VALUES (38, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-20 01:42:07', '2020-10-20 01:42:07');
INSERT INTO `admin_operation_log` VALUES (39, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"2L1xavOJ50NfLZbJrcG2SRkwYRLHmQ2lML1jlo3b\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-20 01:42:11', '2020-10-20 01:42:11');
INSERT INTO `admin_operation_log` VALUES (40, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-20 01:42:12', '2020-10-20 01:42:12');
INSERT INTO `admin_operation_log` VALUES (41, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:42:16', '2020-10-20 01:42:16');
INSERT INTO `admin_operation_log` VALUES (42, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:42:17', '2020-10-20 01:42:17');
INSERT INTO `admin_operation_log` VALUES (43, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:42:18', '2020-10-20 01:42:18');
INSERT INTO `admin_operation_log` VALUES (44, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:42:20', '2020-10-20 01:42:20');
INSERT INTO `admin_operation_log` VALUES (45, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-20 01:42:42', '2020-10-20 01:42:42');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:43:08', '2020-10-20 01:43:08');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:43:09', '2020-10-20 01:43:09');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-20 01:43:10', '2020-10-20 01:43:10');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-20 02:38:18', '2020-10-20 02:38:18');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-20 02:38:20', '2020-10-20 02:38:20');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-20 02:39:00', '2020-10-20 02:39:00');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-20 02:39:55', '2020-10-20 02:39:55');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-20 02:39:56', '2020-10-20 02:39:56');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-20 02:42:40', '2020-10-20 02:42:40');
INSERT INTO `admin_operation_log` VALUES (55, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-21 01:10:13', '2020-10-21 01:10:13');
INSERT INTO `admin_operation_log` VALUES (56, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"teSW0MpUHGREJO81fKrK9YWceKHUhYuiKyuIYHpu\",\"username\":\"admin\",\"password\":\"147******\"}', '2020-10-21 01:10:18', '2020-10-21 01:10:18');
INSERT INTO `admin_operation_log` VALUES (57, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"teSW0MpUHGREJO81fKrK9YWceKHUhYuiKyuIYHpu\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-21 01:10:22', '2020-10-21 01:10:22');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-21 01:10:22', '2020-10-21 01:10:22');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-21 02:28:22', '2020-10-21 02:28:22');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-21 02:33:59', '2020-10-21 02:33:59');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-21 02:34:02', '2020-10-21 02:34:02');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-21 02:34:04', '2020-10-21 02:34:04');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-21 02:34:08', '2020-10-21 02:34:08');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-21 02:34:09', '2020-10-21 02:34:09');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-21 02:34:11', '2020-10-21 02:34:11');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-21 02:34:11', '2020-10-21 02:34:11');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-21 02:34:12', '2020-10-21 02:34:12');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-21 02:34:14', '2020-10-21 02:34:14');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-21 02:34:15', '2020-10-21 02:34:15');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-21 02:34:17', '2020-10-21 02:34:17');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-21 02:34:18', '2020-10-21 02:34:18');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-10-21 03:02:28', '2020-10-21 03:02:28');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-10-21 03:02:43', '2020-10-21 03:02:43');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-10-21 03:02:49', '2020-10-21 03:02:49');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-10-21 03:02:54', '2020-10-21 03:02:54');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-10-21 03:03:18', '2020-10-21 03:03:18');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-10-21 03:04:39', '2020-10-21 03:04:39');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-10-21 03:05:09', '2020-10-21 03:05:09');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-10-21 03:33:00', '2020-10-21 03:33:00');
INSERT INTO `admin_operation_log` VALUES (80, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"iV7HitdoU8oBmQElREoz7GRWnvBjFcOE1nV6CEdn\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-22 06:13:18', '2020-10-22 06:13:18');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-10-22 06:13:19', '2020-10-22 06:13:19');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-22 06:13:24', '2020-10-22 06:13:24');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-22 06:13:26', '2020-10-22 06:13:26');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-22 06:14:55', '2020-10-22 06:14:55');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-22 06:14:58', '2020-10-22 06:14:58');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-22 06:15:12', '2020-10-22 06:15:12');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-22 06:15:13', '2020-10-22 06:15:13');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-22 06:15:14', '2020-10-22 06:15:14');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-22 06:16:13', '2020-10-22 06:16:13');
INSERT INTO `admin_operation_log` VALUES (90, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-28 01:20:36', '2020-10-28 01:20:36');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-28 01:20:37', '2020-10-28 01:20:37');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:20:41', '2020-10-28 01:20:41');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:24:34', '2020-10-28 01:24:34');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:24:35', '2020-10-28 01:24:35');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:24:43', '2020-10-28 01:24:43');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:26:21', '2020-10-28 01:26:21');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:27:45', '2020-10-28 01:27:45');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:28:43', '2020-10-28 01:28:43');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:34:29', '2020-10-28 01:34:29');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:35:33', '2020-10-28 01:35:33');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:36:44', '2020-10-28 01:36:44');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:37:53', '2020-10-28 01:37:53');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:38:23', '2020-10-28 01:38:23');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:38:25', '2020-10-28 01:38:25');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:39:31', '2020-10-28 01:39:31');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:41:39', '2020-10-28 01:41:39');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:41:51', '2020-10-28 01:41:51');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:42:06', '2020-10-28 01:42:06');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:42:18', '2020-10-28 01:42:18');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:42:23', '2020-10-28 01:42:23');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:42:45', '2020-10-28 01:42:45');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:42:48', '2020-10-28 01:42:48');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:42:58', '2020-10-28 01:42:58');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:43:17', '2020-10-28 01:43:17');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:43:20', '2020-10-28 01:43:20');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:43:31', '2020-10-28 01:43:31');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:43:49', '2020-10-28 01:43:49');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:44:00', '2020-10-28 01:44:00');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:46:49', '2020-10-28 01:46:49');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:47:14', '2020-10-28 01:47:14');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:47:29', '2020-10-28 01:47:29');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":null},\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:47:31', '2020-10-28 01:47:31');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"},\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:47:34', '2020-10-28 01:47:34');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":null},\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:47:36', '2020-10-28 01:47:36');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"2\"},\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:47:38', '2020-10-28 01:47:38');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"1\"},\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:47:40', '2020-10-28 01:47:40');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":null},\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:47:41', '2020-10-28 01:47:41');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":null}}', '2020-10-28 01:48:35', '2020-10-28 01:48:35');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":null}}', '2020-10-28 01:48:36', '2020-10-28 01:48:36');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"0\"},\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:48:38', '2020-10-28 01:48:38');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"2\"},\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:48:39', '2020-10-28 01:48:39');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":\"1\"},\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:48:40', '2020-10-28 01:48:40');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_selector\":{\"action\":null},\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:48:41', '2020-10-28 01:48:41');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":null,\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:49:12', '2020-10-28 01:49:12');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"3\",\"user_id\":null,\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:49:14', '2020-10-28 01:49:14');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"6\",\"user_id\":null,\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:49:15', '2020-10-28 01:49:15');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"12\",\"user_id\":null,\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:49:17', '2020-10-28 01:49:17');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"28\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:49:21', '2020-10-28 01:49:21');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"3\",\"user_id\":\"28\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:49:22', '2020-10-28 01:49:22');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"3\",\"user_id\":\"28\",\"_pjax\":\"#pjax-container\",\"_selector\":{\"action\":\"0\"}}', '2020-10-28 01:49:24', '2020-10-28 01:49:24');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"6\",\"user_id\":\"28\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:49:26', '2020-10-28 01:49:26');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"12\",\"user_id\":\"28\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:49:27', '2020-10-28 01:49:27');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:50:04', '2020-10-28 01:50:04');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:50:06', '2020-10-28 01:50:06');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:50:07', '2020-10-28 01:50:07');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:50:09', '2020-10-28 01:50:09');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:50:15', '2020-10-28 01:50:15');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 01:50:17', '2020-10-28 01:50:17');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-28 02:02:27', '2020-10-28 02:02:27');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:02:29', '2020-10-28 02:02:29');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:02:36', '2020-10-28 02:02:36');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1005\",\"fund_rate\":\"1\",\"day\":\"2020-10-28\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1013.04\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:02:42', '2020-10-28 02:02:42');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:02:42', '2020-10-28 02:02:42');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:03:16', '2020-10-28 02:03:16');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:03:25', '2020-10-28 02:03:25');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:03:35', '2020-10-28 02:03:35');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62377\",\"fund_amount\":\"100\",\"fund_rate\":\"1\",\"fund_sum\":null,\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:08:09', '2020-10-28 02:08:09');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62377\",\"fund_amount\":\"100\",\"fund_rate\":\"1\",\"fund_sum\":null,\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:08:11', '2020-10-28 02:08:11');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62377\",\"fund_amount\":\"100\",\"fund_rate\":\"1\",\"fund_sum\":null,\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:09:02', '2020-10-28 02:09:02');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62377\",\"fund_amount\":\"100\",\"fund_rate\":\"1\",\"fund_sum\":null,\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:09:07', '2020-10-28 02:09:07');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:09:07', '2020-10-28 02:09:07');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:09:21', '2020-10-28 02:09:21');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:09:40', '2020-10-28 02:09:40');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:09:57', '2020-10-28 02:09:57');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:10:05', '2020-10-28 02:10:05');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '[]', '2020-10-28 02:10:30', '2020-10-28 02:10:30');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\"}', '2020-10-28 02:10:32', '2020-10-28 02:10:32');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\"}', '2020-10-28 02:10:53', '2020-10-28 02:10:53');
INSERT INTO `admin_operation_log` VALUES (169, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\"}', '2020-10-28 02:11:02', '2020-10-28 02:11:02');
INSERT INTO `admin_operation_log` VALUES (170, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\"}', '2020-10-28 02:11:07', '2020-10-28 02:11:07');
INSERT INTO `admin_operation_log` VALUES (171, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\"}', '2020-10-28 02:11:16', '2020-10-28 02:11:16');
INSERT INTO `admin_operation_log` VALUES (172, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\"}', '2020-10-28 02:11:42', '2020-10-28 02:11:42');
INSERT INTO `admin_operation_log` VALUES (173, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:12:40', '2020-10-28 02:12:40');
INSERT INTO `admin_operation_log` VALUES (174, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-28 02:12:42', '2020-10-28 02:12:42');
INSERT INTO `admin_operation_log` VALUES (175, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:12:46', '2020-10-28 02:12:46');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:13:09', '2020-10-28 02:13:09');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:13:26', '2020-10-28 02:13:26');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:13:51', '2020-10-28 02:13:51');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:14:01', '2020-10-28 02:14:01');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:14:07', '2020-10-28 02:14:07');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:14:11', '2020-10-28 02:14:11');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:14:33', '2020-10-28 02:14:33');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:15:10', '2020-10-28 02:15:10');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:16:26', '2020-10-28 02:16:26');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:16:59', '2020-10-28 02:16:59');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:17:07', '2020-10-28 02:17:07');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:17:14', '2020-10-28 02:17:14');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:17:22', '2020-10-28 02:17:22');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:17:22', '2020-10-28 02:17:22');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:17:26', '2020-10-28 02:17:26');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"202.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:17:31', '2020-10-28 02:17:31');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"202.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:17:40', '2020-10-28 02:17:40');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:17:40', '2020-10-28 02:17:40');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:17:46', '2020-10-28 02:17:46');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:18:01', '2020-10-28 02:18:01');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:18:03', '2020-10-28 02:18:03');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"2.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:18:09', '2020-10-28 02:18:09');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:18:09', '2020-10-28 02:18:09');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:18:11', '2020-10-28 02:18:11');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:18:45', '2020-10-28 02:18:45');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:18:48', '2020-10-28 02:18:48');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"2.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:19:16', '2020-10-28 02:19:16');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:19:16', '2020-10-28 02:19:16');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:19:19', '2020-10-28 02:19:19');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:19:34', '2020-10-28 02:19:34');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:19:36', '2020-10-28 02:19:36');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"300\",\"fund_rate\":\"2.00\",\"day\":\"2020-10-27\",\"mark\":null,\"fund_sum\":\"202.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:20:03', '2020-10-28 02:20:03');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:20:03', '2020-10-28 02:20:03');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:20:05', '2020-10-28 02:20:05');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:20:11', '2020-10-28 02:20:11');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:23:47', '2020-10-28 02:23:47');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:23:49', '2020-10-28 02:23:49');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"300\",\"fund_rate\":\"2.00\",\"day\":\"2020-10-26\",\"mark\":null,\"fund_sum\":\"303.00\",\"_method\":\"PUT\",\"_token\":\"JeiUABwow6SrQfPVcZT9I1kv9OikxpGRYmYomwGA\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 02:23:54', '2020-10-28 02:23:54');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:23:55', '2020-10-28 02:23:55');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:23:57', '2020-10-28 02:23:57');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:23:59', '2020-10-28 02:23:59');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:24:12', '2020-10-28 02:24:12');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\"}', '2020-10-28 02:24:35', '2020-10-28 02:24:35');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\"}', '2020-10-28 02:25:14', '2020-10-28 02:25:14');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 02:27:19', '2020-10-28 02:27:19');
INSERT INTO `admin_operation_log` VALUES (221, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-28 08:30:49', '2020-10-28 08:30:49');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-28 08:30:49', '2020-10-28 08:30:49');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:30:51', '2020-10-28 08:30:51');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:30:52', '2020-10-28 08:30:52');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:30:58', '2020-10-28 08:30:58');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"2.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"303.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 08:31:22', '2020-10-28 08:31:22');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:31:23', '2020-10-28 08:31:23');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:31:33', '2020-10-28 08:31:33');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:31:34', '2020-10-28 08:31:34');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:32:54', '2020-10-28 08:32:54');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:32:59', '2020-10-28 08:32:59');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:33:00', '2020-10-28 08:33:00');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:33:01', '2020-10-28 08:33:01');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:33:04', '2020-10-28 08:33:04');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"2.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 08:33:45', '2020-10-28 08:33:45');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:33:45', '2020-10-28 08:33:45');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:33:46', '2020-10-28 08:33:46');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:34:29', '2020-10-28 08:34:29');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:34:30', '2020-10-28 08:34:30');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:34:33', '2020-10-28 08:34:33');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"2.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 08:34:59', '2020-10-28 08:34:59');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:34:59', '2020-10-28 08:34:59');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:35:03', '2020-10-28 08:35:03');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:51:27', '2020-10-28 08:51:27');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:51:29', '2020-10-28 08:51:29');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"-1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"202.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 08:51:34', '2020-10-28 08:51:34');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:51:35', '2020-10-28 08:51:35');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:51:38', '2020-10-28 08:51:38');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:52:12', '2020-10-28 08:52:12');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:52:14', '2020-10-28 08:52:14');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"-1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"202.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 08:52:17', '2020-10-28 08:52:17');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"-1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"202.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 08:52:23', '2020-10-28 08:52:23');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"202.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 08:52:27', '2020-10-28 08:52:27');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"202.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 08:53:08', '2020-10-28 08:53:08');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"202.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 08:53:11', '2020-10-28 08:53:11');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"202.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 08:53:32', '2020-10-28 08:53:32');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"202.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 08:53:50', '2020-10-28 08:53:50');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"202.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 08:53:55', '2020-10-28 08:53:55');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '[]', '2020-10-28 08:54:04', '2020-10-28 08:54:04');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\"}', '2020-10-28 08:54:14', '2020-10-28 08:54:14');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\"}', '2020-10-28 08:54:22', '2020-10-28 08:54:22');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"200\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\"}', '2020-10-28 08:54:29', '2020-10-28 08:54:29');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\"}', '2020-10-28 08:54:44', '2020-10-28 08:54:44');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\"}', '2020-10-28 08:54:49', '2020-10-28 08:54:49');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:54:49', '2020-10-28 08:54:49');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:54:52', '2020-10-28 08:54:52');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:54:58', '2020-10-28 08:54:58');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:54:59', '2020-10-28 08:54:59');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"-1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"uSZiShXWKONztKVUT3Y6Zt1D95LaWQZm6NQwX1AP\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-28 08:55:03', '2020-10-28 08:55:03');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:55:03', '2020-10-28 08:55:03');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:55:05', '2020-10-28 08:55:05');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:55:19', '2020-10-28 08:55:19');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 08:56:20', '2020-10-28 08:56:20');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-28 08:56:58', '2020-10-28 08:56:58');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-28 08:59:22', '2020-10-28 08:59:22');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-28 08:59:30', '2020-10-28 08:59:30');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-28 09:00:55', '2020-10-28 09:00:55');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-28 09:02:56', '2020-10-28 09:02:56');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"28\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:03:01', '2020-10-28 09:03:01');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"28\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:03:03', '2020-10-28 09:03:03');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"28\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:03:06', '2020-10-28 09:03:06');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"28\"}', '2020-10-28 09:03:11', '2020-10-28 09:03:11');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"28\"}', '2020-10-28 09:03:23', '2020-10-28 09:03:23');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:03:43', '2020-10-28 09:03:43');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"28\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:03:45', '2020-10-28 09:03:45');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:03:50', '2020-10-28 09:03:50');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:03:51', '2020-10-28 09:03:51');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\"}', '2020-10-28 09:04:26', '2020-10-28 09:04:26');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\"}', '2020-10-28 09:04:29', '2020-10-28 09:04:29');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\"}', '2020-10-28 09:04:32', '2020-10-28 09:04:32');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:04:36', '2020-10-28 09:04:36');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"28\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:04:38', '2020-10-28 09:04:38');
INSERT INTO `admin_operation_log` VALUES (293, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"28\"}', '2020-10-28 09:04:42', '2020-10-28 09:04:42');
INSERT INTO `admin_operation_log` VALUES (294, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"28\"}', '2020-10-28 09:04:53', '2020-10-28 09:04:53');
INSERT INTO `admin_operation_log` VALUES (295, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:04:59', '2020-10-28 09:04:59');
INSERT INTO `admin_operation_log` VALUES (296, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:05:03', '2020-10-28 09:05:03');
INSERT INTO `admin_operation_log` VALUES (297, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:05:10', '2020-10-28 09:05:10');
INSERT INTO `admin_operation_log` VALUES (298, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:05:13', '2020-10-28 09:05:13');
INSERT INTO `admin_operation_log` VALUES (299, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:05:27', '2020-10-28 09:05:27');
INSERT INTO `admin_operation_log` VALUES (300, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:05:29', '2020-10-28 09:05:29');
INSERT INTO `admin_operation_log` VALUES (301, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:05:31', '2020-10-28 09:05:31');
INSERT INTO `admin_operation_log` VALUES (302, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:05:34', '2020-10-28 09:05:34');
INSERT INTO `admin_operation_log` VALUES (303, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:05:36', '2020-10-28 09:05:36');
INSERT INTO `admin_operation_log` VALUES (304, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:05:40', '2020-10-28 09:05:40');
INSERT INTO `admin_operation_log` VALUES (305, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"28\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:05:42', '2020-10-28 09:05:42');
INSERT INTO `admin_operation_log` VALUES (306, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:05:45', '2020-10-28 09:05:45');
INSERT INTO `admin_operation_log` VALUES (307, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:06:06', '2020-10-28 09:06:06');
INSERT INTO `admin_operation_log` VALUES (308, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\",\"_pjax\":\"#pjax-container\",\"_selector\":{\"action\":null}}', '2020-10-28 09:06:11', '2020-10-28 09:06:11');
INSERT INTO `admin_operation_log` VALUES (309, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:06:14', '2020-10-28 09:06:14');
INSERT INTO `admin_operation_log` VALUES (310, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:06:15', '2020-10-28 09:06:15');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"3\",\"user_id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:06:22', '2020-10-28 09:06:22');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"3\",\"user_id\":\"5\"}', '2020-10-28 09:07:17', '2020-10-28 09:07:17');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"6\",\"user_id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:08:49', '2020-10-28 09:08:49');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"12\",\"user_id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:09:08', '2020-10-28 09:09:08');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"6\",\"user_id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:09:10', '2020-10-28 09:09:10');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"12\",\"user_id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:09:11', '2020-10-28 09:09:11');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"6\",\"user_id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:09:13', '2020-10-28 09:09:13');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"6\",\"user_id\":\"5\"}', '2020-10-28 09:09:27', '2020-10-28 09:09:27');
INSERT INTO `admin_operation_log` VALUES (319, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:09:47', '2020-10-28 09:09:47');
INSERT INTO `admin_operation_log` VALUES (320, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:09:48', '2020-10-28 09:09:48');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-28 09:26:56', '2020-10-28 09:26:56');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-28 09:27:08', '2020-10-28 09:27:08');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"28\",\"_pjax\":\"#pjax-container\"}', '2020-10-28 09:27:12', '2020-10-28 09:27:12');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-28 12:45:56', '2020-10-28 12:45:56');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-28 12:46:05', '2020-10-28 12:46:05');
INSERT INTO `admin_operation_log` VALUES (326, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-29 02:16:03', '2020-10-29 02:16:03');
INSERT INTO `admin_operation_log` VALUES (327, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-29 05:51:45', '2020-10-29 05:51:45');
INSERT INTO `admin_operation_log` VALUES (328, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"ZZqfG4431Etva34jdNIfZIUt0ScIrubv0EsPa5cI\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-29 05:51:50', '2020-10-29 05:51:50');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-29 05:51:50', '2020-10-29 05:51:50');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-29 05:54:14', '2020-10-29 05:54:14');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-29 05:55:13', '2020-10-29 05:55:13');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-29 05:55:53', '2020-10-29 05:55:53');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-29 05:56:27', '2020-10-29 05:56:27');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-29 05:57:10', '2020-10-29 05:57:10');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 05:59:22', '2020-10-29 05:59:22');
INSERT INTO `admin_operation_log` VALUES (336, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-29 05:59:22', '2020-10-29 05:59:22');
INSERT INTO `admin_operation_log` VALUES (337, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"X1myYibQdD9ins8JJ1Ww77WLbXT6CIYq3mNXjclj\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-29 05:59:27', '2020-10-29 05:59:27');
INSERT INTO `admin_operation_log` VALUES (338, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-29 05:59:30', '2020-10-29 05:59:30');
INSERT INTO `admin_operation_log` VALUES (339, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"X1myYibQdD9ins8JJ1Ww77WLbXT6CIYq3mNXjclj\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-29 05:59:39', '2020-10-29 05:59:39');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-29 05:59:39', '2020-10-29 05:59:39');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 05:59:41', '2020-10-29 05:59:41');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 05:59:45', '2020-10-29 05:59:45');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 05:59:47', '2020-10-29 05:59:47');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 05:59:48', '2020-10-29 05:59:48');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 05:59:49', '2020-10-29 05:59:49');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 05:59:52', '2020-10-29 05:59:52');
INSERT INTO `admin_operation_log` VALUES (347, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-29 05:59:52', '2020-10-29 05:59:52');
INSERT INTO `admin_operation_log` VALUES (348, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"icUiYCLVmuAUEByIbgWqqGNlKGjOC7TyM5yCC9E5\",\"username\":\"\\u7528\\u62377\",\"password\":\"123******\"}', '2020-10-29 05:59:56', '2020-10-29 05:59:56');
INSERT INTO `admin_operation_log` VALUES (349, 29, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-29 05:59:56', '2020-10-29 05:59:56');
INSERT INTO `admin_operation_log` VALUES (350, 29, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-29 05:59:56', '2020-10-29 05:59:56');
INSERT INTO `admin_operation_log` VALUES (351, 29, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 05:59:58', '2020-10-29 05:59:58');
INSERT INTO `admin_operation_log` VALUES (352, 29, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 05:59:59', '2020-10-29 05:59:59');
INSERT INTO `admin_operation_log` VALUES (353, 29, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-29 06:01:50', '2020-10-29 06:01:50');
INSERT INTO `admin_operation_log` VALUES (354, 29, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:01:58', '2020-10-29 06:01:58');
INSERT INTO `admin_operation_log` VALUES (355, 29, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-29 06:01:58', '2020-10-29 06:01:58');
INSERT INTO `admin_operation_log` VALUES (356, 29, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:01:59', '2020-10-29 06:01:59');
INSERT INTO `admin_operation_log` VALUES (357, 29, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-29 06:01:59', '2020-10-29 06:01:59');
INSERT INTO `admin_operation_log` VALUES (358, 29, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-29 06:25:20', '2020-10-29 06:25:20');
INSERT INTO `admin_operation_log` VALUES (359, 29, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-29 06:25:35', '2020-10-29 06:25:35');
INSERT INTO `admin_operation_log` VALUES (360, 29, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-29 06:26:04', '2020-10-29 06:26:04');
INSERT INTO `admin_operation_log` VALUES (361, 29, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:30:55', '2020-10-29 06:30:55');
INSERT INTO `admin_operation_log` VALUES (362, 29, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:30:56', '2020-10-29 06:30:56');
INSERT INTO `admin_operation_log` VALUES (363, 29, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:34:31', '2020-10-29 06:34:31');
INSERT INTO `admin_operation_log` VALUES (364, 29, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-29 06:34:31', '2020-10-29 06:34:31');
INSERT INTO `admin_operation_log` VALUES (365, 29, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:34:34', '2020-10-29 06:34:34');
INSERT INTO `admin_operation_log` VALUES (366, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-29 06:34:35', '2020-10-29 06:34:35');
INSERT INTO `admin_operation_log` VALUES (367, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-29 06:34:39', '2020-10-29 06:34:39');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-29 06:34:39', '2020-10-29 06:34:39');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:34:45', '2020-10-29 06:34:45');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:34:51', '2020-10-29 06:34:51');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1010\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-29\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1015.05\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 06:47:46', '2020-10-29 06:47:46');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1010\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-29\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1015.05\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 06:48:17', '2020-10-29 06:48:17');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:48:18', '2020-10-29 06:48:18');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:48:23', '2020-10-29 06:48:23');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:48:25', '2020-10-29 06:48:25');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:48:31', '2020-10-29 06:48:31');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:48:37', '2020-10-29 06:48:37');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:48:40', '2020-10-29 06:48:40');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:48:43', '2020-10-29 06:48:43');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:48:47', '2020-10-29 06:48:47');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1020\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-29\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1020.10\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 06:48:50', '2020-10-29 06:48:50');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1020.10\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 06:49:00', '2020-10-29 06:49:00');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:49:00', '2020-10-29 06:49:00');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:49:07', '2020-10-29 06:49:07');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1020\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-30\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 06:49:23', '2020-10-29 06:49:23');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:49:23', '2020-10-29 06:49:23');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:51:37', '2020-10-29 06:51:37');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-27\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1030.20\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 06:51:49', '2020-10-29 06:51:49');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-27\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1030.20\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 06:52:16', '2020-10-29 06:52:16');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:52:16', '2020-10-29 06:52:16');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:52:24', '2020-10-29 06:52:24');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-29\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 06:52:25', '2020-10-29 06:52:25');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:52:32', '2020-10-29 06:52:32');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:52:34', '2020-10-29 06:52:34');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"-1.00\",\"day\":\"2020-10-29\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 06:54:11', '2020-10-29 06:54:11');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"-1.00\",\"day\":\"2020-10-29\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 06:54:31', '2020-10-29 06:54:31');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:54:32', '2020-10-29 06:54:32');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:54:36', '2020-10-29 06:54:36');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1001\",\"fund_rate\":\"-1.00\",\"day\":\"2020-10-29\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 06:54:42', '2020-10-29 06:54:42');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:54:47', '2020-10-29 06:54:47');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\",\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:54:49', '2020-10-29 06:54:49');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:55:05', '2020-10-29 06:55:05');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:55:20', '2020-10-29 06:55:20');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"-1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 06:55:24', '2020-10-29 06:55:24');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:55:24', '2020-10-29 06:55:24');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:55:27', '2020-10-29 06:55:27');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"29\",\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:55:34', '2020-10-29 06:55:34');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:56:13', '2020-10-29 06:56:13');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/user/list/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:56:15', '2020-10-29 06:56:15');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin/user/list/29', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"-1.00\",\"day\":\"2020-10-28\",\"mark\":null,\"fund_sum\":\"101.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 06:56:19', '2020-10-29 06:56:19');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 06:56:19', '2020-10-29 06:56:19');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-29 08:02:42', '2020-10-29 08:02:42');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:02:49', '2020-10-29 08:02:49');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:02:51', '2020-10-29 08:02:51');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:03:14', '2020-10-29 08:03:14');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:03:15', '2020-10-29 08:03:15');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:03:18', '2020-10-29 08:03:18');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-29\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:03:21', '2020-10-29 08:03:21');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:03:21', '2020-10-29 08:03:21');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:03:43', '2020-10-29 08:03:43');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-29\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:03:44', '2020-10-29 08:03:44');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-29\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:04:00', '2020-10-29 08:04:00');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-30\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:04:04', '2020-10-29 08:04:04');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-30\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:04:07', '2020-10-29 08:04:07');
INSERT INTO `admin_operation_log` VALUES (425, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-30\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:04:15', '2020-10-29 08:04:15');
INSERT INTO `admin_operation_log` VALUES (426, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:04:20', '2020-10-29 08:04:20');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-27\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:04:23', '2020-10-29 08:04:23');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-26\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:04:26', '2020-10-29 08:04:26');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-25\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:04:29', '2020-10-29 08:04:29');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-24\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:04:32', '2020-10-29 08:04:32');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-23\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:04:35', '2020-10-29 08:04:35');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:04:39', '2020-10-29 08:04:39');
INSERT INTO `admin_operation_log` VALUES (433, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"days\":\"1\",\"user_id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:04:53', '2020-10-29 08:04:53');
INSERT INTO `admin_operation_log` VALUES (434, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:04:57', '2020-10-29 08:04:57');
INSERT INTO `admin_operation_log` VALUES (435, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:04:59', '2020-10-29 08:04:59');
INSERT INTO `admin_operation_log` VALUES (436, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-27\",\"mark\":null,\"fund_sum\":\"1000.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:05:02', '2020-10-29 08:05:02');
INSERT INTO `admin_operation_log` VALUES (437, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:05:03', '2020-10-29 08:05:03');
INSERT INTO `admin_operation_log` VALUES (438, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:05:17', '2020-10-29 08:05:17');
INSERT INTO `admin_operation_log` VALUES (439, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-29\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:05:19', '2020-10-29 08:05:19');
INSERT INTO `admin_operation_log` VALUES (440, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-28\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:05:22', '2020-10-29 08:05:22');
INSERT INTO `admin_operation_log` VALUES (441, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-27\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:05:24', '2020-10-29 08:05:24');
INSERT INTO `admin_operation_log` VALUES (442, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-26\",\"mark\":\"\\u589e\\u52a0reta\",\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"H87R3RpapckGfhPusOFyRC5u8FkUXOKw1JLFBedw\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/user\\/list\"}', '2020-10-29 08:05:27', '2020-10-29 08:05:27');
INSERT INTO `admin_operation_log` VALUES (443, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-29 08:05:27', '2020-10-29 08:05:27');
INSERT INTO `admin_operation_log` VALUES (444, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"200\"}', '2020-10-29 08:45:43', '2020-10-29 08:45:43');
INSERT INTO `admin_operation_log` VALUES (445, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\"}', '2020-10-29 08:45:45', '2020-10-29 08:45:45');
INSERT INTO `admin_operation_log` VALUES (446, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"20\"}', '2020-10-29 08:45:47', '2020-10-29 08:45:47');
INSERT INTO `admin_operation_log` VALUES (447, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"30\"}', '2020-10-29 08:45:48', '2020-10-29 08:45:48');
INSERT INTO `admin_operation_log` VALUES (448, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"50\"}', '2020-10-29 08:45:49', '2020-10-29 08:45:49');
INSERT INTO `admin_operation_log` VALUES (449, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"100\"}', '2020-10-29 08:45:51', '2020-10-29 08:45:51');
INSERT INTO `admin_operation_log` VALUES (450, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"200\"}', '2020-10-29 08:45:52', '2020-10-29 08:45:52');
INSERT INTO `admin_operation_log` VALUES (451, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\"}', '2020-10-29 08:45:54', '2020-10-29 08:45:54');
INSERT INTO `admin_operation_log` VALUES (452, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"200\"}', '2020-10-29 08:46:05', '2020-10-29 08:46:05');
INSERT INTO `admin_operation_log` VALUES (453, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"10\"}', '2020-10-29 08:46:06', '2020-10-29 08:46:06');
INSERT INTO `admin_operation_log` VALUES (454, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-30 01:14:16', '2020-10-30 01:14:16');
INSERT INTO `admin_operation_log` VALUES (455, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"qFoxdQZ2ZtE9El4Jp4UbZDXArRfkRLEH3Wke9kiM\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-30 01:22:18', '2020-10-30 01:22:18');
INSERT INTO `admin_operation_log` VALUES (456, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2020-10-30 01:22:18', '2020-10-30 01:22:18');
INSERT INTO `admin_operation_log` VALUES (457, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:22:28', '2020-10-30 01:22:28');
INSERT INTO `admin_operation_log` VALUES (458, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-30 01:27:36', '2020-10-30 01:27:36');
INSERT INTO `admin_operation_log` VALUES (459, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-30 01:27:42', '2020-10-30 01:27:42');
INSERT INTO `admin_operation_log` VALUES (460, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-30 01:34:00', '2020-10-30 01:34:00');
INSERT INTO `admin_operation_log` VALUES (461, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:36:01', '2020-10-30 01:36:01');
INSERT INTO `admin_operation_log` VALUES (462, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-30 01:36:06', '2020-10-30 01:36:06');
INSERT INTO `admin_operation_log` VALUES (463, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u57fa\\u91d1\\u7edf\\u8ba1\",\"icon\":null,\"uri\":\"foud\\/log\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"qFoxdQZ2ZtE9El4Jp4UbZDXArRfkRLEH3Wke9kiM\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-30 01:36:09', '2020-10-30 01:36:09');
INSERT INTO `admin_operation_log` VALUES (464, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:36:09', '2020-10-30 01:36:09');
INSERT INTO `admin_operation_log` VALUES (465, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-30 01:36:11', '2020-10-30 01:36:11');
INSERT INTO `admin_operation_log` VALUES (466, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-30 01:36:13', '2020-10-30 01:36:13');
INSERT INTO `admin_operation_log` VALUES (467, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u6bcf\\u65e5\\u57fa\\u91d1\",\"icon\":\"fa-align-center\",\"uri\":\"foud\\/day\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"qFoxdQZ2ZtE9El4Jp4UbZDXArRfkRLEH3Wke9kiM\",\"_previous_\":\"http:\\/\\/funds.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-30 01:36:15', '2020-10-30 01:36:15');
INSERT INTO `admin_operation_log` VALUES (468, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:36:15', '2020-10-30 01:36:15');
INSERT INTO `admin_operation_log` VALUES (469, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:36:17', '2020-10-30 01:36:17');
INSERT INTO `admin_operation_log` VALUES (470, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-30 01:36:17', '2020-10-30 01:36:17');
INSERT INTO `admin_operation_log` VALUES (471, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-30 01:39:10', '2020-10-30 01:39:10');
INSERT INTO `admin_operation_log` VALUES (472, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-30 01:43:52', '2020-10-30 01:43:52');
INSERT INTO `admin_operation_log` VALUES (473, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-30 01:45:30', '2020-10-30 01:45:30');
INSERT INTO `admin_operation_log` VALUES (474, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"aLkJdNhdEKkDjdH5Mi6bcBkNFikpwIevml6MHsEn\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-30 01:45:33', '2020-10-30 01:45:33');
INSERT INTO `admin_operation_log` VALUES (475, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-30 01:45:33', '2020-10-30 01:45:33');
INSERT INTO `admin_operation_log` VALUES (476, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:45:38', '2020-10-30 01:45:38');
INSERT INTO `admin_operation_log` VALUES (477, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:45:40', '2020-10-30 01:45:40');
INSERT INTO `admin_operation_log` VALUES (478, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:45:41', '2020-10-30 01:45:41');
INSERT INTO `admin_operation_log` VALUES (479, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:45:43', '2020-10-30 01:45:43');
INSERT INTO `admin_operation_log` VALUES (480, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:45:44', '2020-10-30 01:45:44');
INSERT INTO `admin_operation_log` VALUES (481, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:45:45', '2020-10-30 01:45:45');
INSERT INTO `admin_operation_log` VALUES (482, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:45:46', '2020-10-30 01:45:46');
INSERT INTO `admin_operation_log` VALUES (483, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:45:46', '2020-10-30 01:45:46');
INSERT INTO `admin_operation_log` VALUES (484, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-30 01:45:48', '2020-10-30 01:45:48');

-- ----------------------------
-- Table structure for admin_permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_menu`;
CREATE TABLE `admin_permission_menu`  (
  `permission_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_permission_menu_permission_id_menu_id_unique`(`permission_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_permission_menu
-- ----------------------------
INSERT INTO `admin_permission_menu` VALUES (2, 1, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (3, 1, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (4, 1, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (5, 1, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (6, 1, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (2, 8, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (3, 8, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (4, 8, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (5, 8, NULL, NULL);
INSERT INTO `admin_permission_menu` VALUES (6, 8, NULL, NULL);

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `http_method` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES (1, 'Auth management', 'auth-management', '', '', 1, 0, '2020-10-13 14:01:23', NULL);
INSERT INTO `admin_permissions` VALUES (2, 'Users', 'users', '', '/auth/users*', 2, 1, '2020-10-13 14:01:23', NULL);
INSERT INTO `admin_permissions` VALUES (3, 'Roles', 'roles', '', '/auth/roles*', 3, 1, '2020-10-13 14:01:23', NULL);
INSERT INTO `admin_permissions` VALUES (4, 'Permissions', 'permissions', '', '/auth/permissions*', 4, 1, '2020-10-13 14:01:23', NULL);
INSERT INTO `admin_permissions` VALUES (5, 'Menu', 'menu', '', '/auth/menu*', 5, 1, '2020-10-13 14:01:23', NULL);
INSERT INTO `admin_permissions` VALUES (6, 'Operation log', 'operation-log', '', '/auth/logs*', 6, 1, '2020-10-13 14:01:23', NULL);
INSERT INTO `admin_permissions` VALUES (7, '主页', '/', '', '/home*', 7, 0, '2020-10-14 14:12:36', '2020-10-14 14:21:49');
INSERT INTO `admin_permissions` VALUES (8, '基金用户管理', 'fundUser', '', '/user/list*', 8, 0, '2020-10-14 14:13:54', '2020-10-17 12:17:52');
INSERT INTO `admin_permissions` VALUES (9, '用户权限', 'userRole', '', '/auth/users/*/edit', 9, 0, '2020-10-14 14:15:35', '2020-10-14 14:15:35');
INSERT INTO `admin_permissions` VALUES (10, '统计', 'fund', '', '/foud/log*,/foud/day*', 10, 0, '2020-10-17 07:55:32', '2020-10-17 07:56:59');
INSERT INTO `admin_permissions` VALUES (11, '基金统计记录', 'fundlog', '', '/foud/log*', 11, 10, '2020-10-17 07:57:41', '2020-10-17 12:28:46');
INSERT INTO `admin_permissions` VALUES (12, '基金每日记录', 'fundday', '', '/foud/day*', 12, 10, '2020-10-17 12:18:27', '2020-10-17 12:18:27');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `role_id` bigint(20) NOT NULL,
  `menu_id` bigint(20) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_role_menu_role_id_menu_id_unique`(`role_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (1, 2, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (2, 1, NULL, NULL);
INSERT INTO `admin_role_menu` VALUES (1, 8, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions`  (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_role_permissions_role_id_permission_id_unique`(`role_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES (2, 9, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 2, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 3, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 4, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 5, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 6, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 7, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 8, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 7, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 11, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 9, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 11, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (1, 12, NULL, NULL);
INSERT INTO `admin_role_permissions` VALUES (2, 12, NULL, NULL);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users`  (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  UNIQUE INDEX `admin_role_users_role_id_user_id_unique`(`role_id`, `user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES (1, 1, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 2, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 17, '2020-10-14 15:37:51', '2020-10-14 15:37:51');
INSERT INTO `admin_role_users` VALUES (2, 16, '2020-10-14 15:37:27', '2020-10-14 15:37:27');
INSERT INTO `admin_role_users` VALUES (2, 4, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 5, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 3, NULL, NULL);
INSERT INTO `admin_role_users` VALUES (2, 18, '2020-10-14 15:40:15', '2020-10-14 15:40:15');
INSERT INTO `admin_role_users` VALUES (2, 19, '2020-10-17 05:26:18', '2020-10-17 05:26:18');
INSERT INTO `admin_role_users` VALUES (2, 26, '2020-10-17 11:46:33', '2020-10-17 11:46:33');
INSERT INTO `admin_role_users` VALUES (2, 24, '2020-10-17 10:28:52', '2020-10-17 10:28:52');
INSERT INTO `admin_role_users` VALUES (2, 25, '2020-10-17 11:26:11', '2020-10-17 11:26:11');
INSERT INTO `admin_role_users` VALUES (2, 27, '2020-10-17 11:49:15', '2020-10-17 11:49:15');
INSERT INTO `admin_role_users` VALUES (2, 28, '2020-10-17 11:52:24', '2020-10-17 11:52:24');
INSERT INTO `admin_role_users` VALUES (2, 29, '2020-10-28 02:09:07', '2020-10-28 02:09:07');

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES (1, 'Administrator', 'administrator', '2020-10-13 14:01:23', '2020-10-13 14:01:24');
INSERT INTO `admin_roles` VALUES (2, '用户', 'user', '2020-10-13 14:01:54', '2020-10-13 14:01:54');

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_users_username_unique`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$jxdnSMqHp/vD8EWUlyu5h.FPd6g58wyXiEhQ5fp.EM0AGnVlLZsdK', 'Administrator', NULL, 'NZEATVnp1lmpaV7AUXlElrSaM6lIJI9MQPUPZxsh1JVPAjYe1lSCjBtoKW2r', '2020-10-20 01:26:33', '2020-10-20 01:26:33');
INSERT INTO `admin_users` VALUES (29, '用户7', '$2y$10$nT1D7ZFzIlbDCPyyR9cX/uyK1Tbcnn0eQTWpBw/nNLBBVNq9CdPNK', '用户7', NULL, 'He4OZDtFKScvXFBqaIrxf8MZnk33VppZI0dKdlqQBhmKL4Csn8m9sS0rhUaY', '2020-10-28 02:09:07', '2020-10-28 02:09:07');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `queue` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_foud_day
-- ----------------------------
DROP TABLE IF EXISTS `user_foud_day`;
CREATE TABLE `user_foud_day`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `fund_sum` decimal(11, 2) NULL DEFAULT NULL COMMENT '基金总净值：公式：基金份额+（基金份额*基金净值率）',
  `day` date NOT NULL COMMENT '日期',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`, `day`) USING BTREE,
  UNIQUE INDEX `userid,day`(`user_id`, `day`) USING BTREE COMMENT '两个字段唯一索引'
) ENGINE = MyISAM AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '记录用户基金每日的最终数据' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of user_foud_day
-- ----------------------------
INSERT INTO `user_foud_day` VALUES (5, 5, 1004.00, '2020-10-14', '2020-10-14 16:08:15', '2020-10-14 16:15:42');
INSERT INTO `user_foud_day` VALUES (6, 5, 105.00, '2020-10-15', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (7, 5, 110.00, '2020-10-16', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (8, 5, 1013.00, '2020-10-17', NULL, '2020-10-17 07:52:02');
INSERT INTO `user_foud_day` VALUES (9, 5, 120.00, '2020-10-18', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (10, 5, 125.00, '2020-10-19', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (11, 5, 119.00, '2020-10-20', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (12, 1, 120.00, '2020-10-15', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (13, 1, 1234.00, '2020-10-17', '2020-10-17 05:26:18', '2020-10-17 10:19:55');
INSERT INTO `user_foud_day` VALUES (21, 28, 1013.00, '2020-10-16', '2020-10-17 11:52:24', '2020-10-17 12:10:53');
INSERT INTO `user_foud_day` VALUES (22, 28, 1020.00, '2020-10-17', '2020-10-17 11:52:51', '2020-10-17 12:11:46');
INSERT INTO `user_foud_day` VALUES (23, 28, 1014.00, '2020-10-15', '2020-10-17 12:12:12', '2020-10-17 12:12:12');
INSERT INTO `user_foud_day` VALUES (24, 28, 1011.00, '2020-10-12', '2020-10-17 12:12:37', '2020-10-17 12:12:37');
INSERT INTO `user_foud_day` VALUES (25, 28, 1021.00, '2020-10-13', '2020-10-17 12:12:49', '2020-10-17 12:12:49');
INSERT INTO `user_foud_day` VALUES (26, 28, 1031.00, '2020-10-14', '2020-10-17 12:13:37', '2020-10-17 12:14:08');
INSERT INTO `user_foud_day` VALUES (27, 5, 1010.00, '2020-10-28', '2020-10-28 02:02:42', '2020-10-29 06:49:00');
INSERT INTO `user_foud_day` VALUES (28, 29, 101.00, '2020-10-28', '2020-10-28 02:09:07', '2020-10-28 08:54:44');
INSERT INTO `user_foud_day` VALUES (29, 29, 303.00, '2020-10-27', '2020-10-28 02:20:03', '2020-10-28 02:20:03');
INSERT INTO `user_foud_day` VALUES (30, 29, 303.00, '2020-10-26', '2020-10-28 02:23:54', '2020-10-28 02:23:54');
INSERT INTO `user_foud_day` VALUES (31, 5, 300.00, '2020-09-26', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (32, 5, 300.00, '2020-08-26', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (33, 5, 250.00, '2020-04-26', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (34, 5, 280.00, '2020-06-26', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (35, 5, 1010.00, '2020-10-29', '2020-10-29 06:48:17', '2020-10-29 08:03:21');
INSERT INTO `user_foud_day` VALUES (36, 5, 1030.00, '2020-10-30', '2020-10-29 06:49:23', '2020-10-29 06:49:23');
INSERT INTO `user_foud_day` VALUES (37, 5, 1010.00, '2020-10-27', '2020-10-29 06:52:16', '2020-10-29 06:52:16');
INSERT INTO `user_foud_day` VALUES (38, 29, 101.00, '2020-10-29', '2020-10-29 06:54:32', '2020-10-29 06:54:32');
INSERT INTO `user_foud_day` VALUES (39, 1, 1010.00, '2020-10-27', '2020-10-29 08:05:03', '2020-10-29 08:05:03');
INSERT INTO `user_foud_day` VALUES (40, 5, 1010.00, '2020-10-26', '2020-10-29 08:05:27', '2020-10-29 08:05:27');

-- ----------------------------
-- Table structure for user_foud_log
-- ----------------------------
DROP TABLE IF EXISTS `user_foud_log`;
CREATE TABLE `user_foud_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `fund_amount` decimal(11, 2) NULL DEFAULT NULL COMMENT '基金份额',
  `fund_rate` decimal(11, 2) NULL DEFAULT NULL COMMENT '基金净值率',
  `fund_sum` decimal(11, 2) NULL DEFAULT NULL COMMENT '基金总净值：公式：基金份额+（基金份额*基金净值率）',
  `fund_mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `fund_sum_log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总净值差额',
  `type` int(1) NULL DEFAULT NULL COMMENT '记录的类型：0每日自动更新，1用户操作，2管理员操作',
  `action` int(1) NULL DEFAULT NULL COMMENT '记录操作的类型，1新增，2减少',
  `day` date NULL DEFAULT NULL COMMENT '记录日期',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '记录用户基金每次操作的数据记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_foud_log
-- ----------------------------
INSERT INTO `user_foud_log` VALUES (4, 5, 1000.00, 1.00, 1010.00, NULL, NULL, 2, 1, NULL, '2020-10-14 16:08:15', '2020-10-14 16:08:15');
INSERT INTO `user_foud_log` VALUES (2, 1, 1000.00, 1.00, 1010.00, NULL, NULL, 2, 1, NULL, '2020-10-14 15:50:01', '2020-10-14 15:50:01');
INSERT INTO `user_foud_log` VALUES (3, 1, 999.00, 1.00, 1009.00, NULL, NULL, 2, 1, NULL, '2020-10-14 16:07:33', '2020-10-14 16:07:33');
INSERT INTO `user_foud_log` VALUES (5, 5, 1000.00, 1.00, 1005.00, '', NULL, 2, 1, NULL, '2020-10-14 16:08:50', '2020-10-14 16:08:50');
INSERT INTO `user_foud_log` VALUES (6, 5, 999.00, 1.00, 1004.00, '', NULL, 2, 1, NULL, '2020-10-14 16:15:42', '2020-10-14 16:15:42');
INSERT INTO `user_foud_log` VALUES (33, 25, 1000.00, 1.50, 1015.00, NULL, '1015', 2, 1, NULL, '2020-10-17 11:26:11', '2020-10-17 11:26:11');
INSERT INTO `user_foud_log` VALUES (8, 5, 999.00, 1.00, 1004.00, '', NULL, 2, 1, NULL, '2020-10-17 06:01:31', '2020-10-17 06:01:31');
INSERT INTO `user_foud_log` VALUES (9, 5, 999.00, 1.00, 1004.00, '', NULL, 2, 1, NULL, '2020-10-17 06:01:48', '2020-10-17 06:01:48');
INSERT INTO `user_foud_log` VALUES (10, 5, 1000.00, 1.00, 1005.00, '', NULL, 2, 2, NULL, '2020-10-17 06:19:38', '2020-10-17 06:19:38');
INSERT INTO `user_foud_log` VALUES (11, 5, 999.00, 1.00, 1004.00, '', NULL, 2, 2, NULL, '2020-10-17 06:20:07', '2020-10-17 06:20:07');
INSERT INTO `user_foud_log` VALUES (12, 5, 998.00, 1.00, 1003.00, '', NULL, 2, 2, NULL, '2020-10-17 06:31:58', '2020-10-17 06:31:58');
INSERT INTO `user_foud_log` VALUES (13, 5, 1000.00, 1.00, 1005.00, '', NULL, 2, 2, NULL, '2020-10-17 06:32:45', '2020-10-17 06:32:45');
INSERT INTO `user_foud_log` VALUES (14, 5, 1002.00, 1.00, 1007.00, '', NULL, 2, 1, NULL, '2020-10-17 06:34:46', '2020-10-17 06:34:46');
INSERT INTO `user_foud_log` VALUES (15, 5, 1000.00, 1.00, 1005.00, '', NULL, 2, 2, NULL, '2020-10-17 06:41:26', '2020-10-17 06:41:26');
INSERT INTO `user_foud_log` VALUES (16, 5, 1000.00, 1.00, 1005.00, '', NULL, 2, 1, NULL, '2020-10-17 06:42:03', '2020-10-17 06:42:03');
INSERT INTO `user_foud_log` VALUES (17, 1, 100.00, 1.00, 101.00, '', NULL, 2, 1, NULL, '2020-10-17 06:43:30', '2020-10-17 06:43:30');
INSERT INTO `user_foud_log` VALUES (18, 5, 1002.00, 1.00, 1007.00, '', NULL, 2, 1, NULL, '2020-10-17 06:46:43', '2020-10-17 06:46:43');
INSERT INTO `user_foud_log` VALUES (19, 5, 1006.00, 1.00, 1011.00, '', NULL, 2, 1, NULL, '2020-10-17 07:03:00', '2020-10-17 07:03:00');
INSERT INTO `user_foud_log` VALUES (20, 5, 1010.00, 1.00, 1015.00, '', NULL, 2, 1, NULL, '2020-10-17 07:17:44', '2020-10-17 07:17:44');
INSERT INTO `user_foud_log` VALUES (21, 5, 1011.00, 1.00, 1016.00, '', NULL, 2, 1, NULL, '2020-10-17 07:19:15', '2020-10-17 07:19:15');
INSERT INTO `user_foud_log` VALUES (23, 5, 1001.00, 1.00, 1006.00, '减少', NULL, 2, 2, NULL, '2020-10-17 07:25:05', '2020-10-17 07:25:05');
INSERT INTO `user_foud_log` VALUES (24, 5, 1000.00, 0.50, 1005.00, '减少', '-1', 2, 2, NULL, '2020-10-17 07:37:13', '2020-10-17 07:37:13');
INSERT INTO `user_foud_log` VALUES (25, 5, 1001.00, 0.50, 1006.01, '减少', '1', 2, 1, NULL, '2020-10-17 07:37:35', '2020-10-17 07:37:35');
INSERT INTO `user_foud_log` VALUES (26, 5, 1003.00, 0.50, 1008.02, '减少', '2.005', 2, 1, NULL, '2020-10-17 07:48:37', '2020-10-17 07:48:37');
INSERT INTO `user_foud_log` VALUES (27, 5, 1005.00, 0.50, 1010.03, '减少', '2.005', 2, 1, NULL, '2020-10-17 07:48:45', '2020-10-17 07:48:45');
INSERT INTO `user_foud_log` VALUES (28, 5, 1005.00, 0.80, 1013.04, '增加reta', '3.01', 2, 0, NULL, '2020-10-17 07:52:02', '2020-10-17 07:52:02');
INSERT INTO `user_foud_log` VALUES (35, 28, 1000.00, 1.00, 1010.00, NULL, '0', 2, 0, NULL, '2020-10-17 11:52:51', '2020-10-17 11:52:51');
INSERT INTO `user_foud_log` VALUES (34, 28, 1000.00, 1.00, 1010.00, NULL, '1010', 2, 1, NULL, '2020-10-17 11:52:24', '2020-10-17 11:52:24');
INSERT INTO `user_foud_log` VALUES (32, 24, 111111.00, 1.25, 112499.89, NULL, '112499.8875', 2, 1, NULL, '2020-10-17 10:28:52', '2020-10-17 10:28:52');
INSERT INTO `user_foud_log` VALUES (36, 28, 1002.00, 1.00, 1012.02, NULL, '2.02', 2, 1, '2020-10-17', '2020-10-17 12:10:32', '2020-10-17 12:10:32');
INSERT INTO `user_foud_log` VALUES (37, 28, 1003.00, 1.00, 1013.03, NULL, '1.01', 2, 1, '2020-10-16', '2020-10-17 12:10:53', '2020-10-17 12:10:53');
INSERT INTO `user_foud_log` VALUES (38, 28, 1010.00, 1.10, 1021.11, NULL, '8.08', 2, 1, '2020-10-17', '2020-10-17 12:11:39', '2020-10-17 12:11:39');
INSERT INTO `user_foud_log` VALUES (39, 28, 1009.00, 1.10, 1020.10, NULL, '-1.011', 2, 2, '2020-10-17', '2020-10-17 12:11:46', '2020-10-17 12:11:46');
INSERT INTO `user_foud_log` VALUES (40, 28, 1003.00, 1.10, 1014.03, NULL, '-6.067', 2, 2, '2020-10-15', '2020-10-17 12:12:12', '2020-10-17 12:12:12');
INSERT INTO `user_foud_log` VALUES (41, 28, 1000.00, 1.10, 1011.00, NULL, '-3.03', 2, 2, '2020-10-12', '2020-10-17 12:12:37', '2020-10-17 12:12:37');
INSERT INTO `user_foud_log` VALUES (42, 28, 1010.00, 1.10, 1021.11, NULL, '10.11', 2, 1, '2020-10-13', '2020-10-17 12:12:49', '2020-10-17 12:12:49');
INSERT INTO `user_foud_log` VALUES (43, 28, 1021.00, 1.10, 1032.23, NULL, '11.121', 2, 1, '2020-10-14', '2020-10-17 12:13:37', '2020-10-17 12:13:37');
INSERT INTO `user_foud_log` VALUES (44, 28, 1020.00, 1.10, 1031.22, NULL, '-1.01', 2, 2, '2020-10-14', '2020-10-17 12:14:08', '2020-10-17 12:14:08');
INSERT INTO `user_foud_log` VALUES (45, 5, 1005.00, 1.00, 1015.05, '增加reta', '10.1505', 2, 0, '2020-10-28', '2020-10-28 02:02:42', '2020-10-28 02:02:42');
INSERT INTO `user_foud_log` VALUES (46, 29, 100.00, 1.00, 101.00, NULL, '1.01', 2, 1, '2020-10-28', '2020-10-28 02:09:07', '2020-10-28 02:09:07');
INSERT INTO `user_foud_log` VALUES (47, 29, 200.00, 1.00, 202.00, NULL, '2.02', 2, 1, '2020-10-28', '2020-10-28 02:17:22', '2020-10-28 02:17:22');
INSERT INTO `user_foud_log` VALUES (48, 29, 100.00, 1.00, 101.00, NULL, '1.01', 2, 2, '2020-10-28', '2020-10-28 02:17:40', '2020-10-28 02:17:40');
INSERT INTO `user_foud_log` VALUES (49, 29, 100.00, 2.00, 101.00, NULL, '2.02', 2, 0, '2020-10-28', '2020-10-28 02:18:09', '2020-10-28 02:18:09');
INSERT INTO `user_foud_log` VALUES (50, 29, 200.00, 2.00, 202.00, NULL, '4.04', 2, 1, '2020-10-28', '2020-10-28 02:19:16', '2020-10-28 02:19:16');
INSERT INTO `user_foud_log` VALUES (51, 29, 300.00, 2.00, 303.00, NULL, '6.0600000000000005', 2, 1, '2020-10-27', '2020-10-28 02:20:03', '2020-10-27 02:20:03');
INSERT INTO `user_foud_log` VALUES (52, 29, 300.00, 2.00, 303.00, NULL, '6.0600000000000005', 2, 0, '2020-10-26', '2020-10-28 02:23:54', '2020-10-26 02:23:54');
INSERT INTO `user_foud_log` VALUES (53, 29, 100.00, 2.00, 101.00, NULL, '2', 2, 2, '2020-10-28', '2020-10-28 08:31:22', '2020-10-28 08:31:22');
INSERT INTO `user_foud_log` VALUES (54, 29, 100.00, 2.00, 101.00, NULL, '2.02', 2, 0, '2020-10-28', '2020-10-28 08:33:45', '2020-10-28 08:33:45');
INSERT INTO `user_foud_log` VALUES (55, 29, 200.00, 2.00, 202.00, NULL, '4.04', 2, 1, '2020-10-28', '2020-10-28 08:34:59', '2020-10-28 08:34:59');
INSERT INTO `user_foud_log` VALUES (56, 29, 200.00, -1.00, 202.00, NULL, '4.04', 2, 0, '2020-10-28', '2020-10-28 08:51:34', '2020-10-28 08:51:34');
INSERT INTO `user_foud_log` VALUES (57, 29, 100.00, 1.00, 101.00, NULL, '1.01', 2, 2, '2020-10-28', '2020-10-28 08:54:49', '2020-10-28 08:54:49');
INSERT INTO `user_foud_log` VALUES (58, 29, 100.00, -1.00, 101.00, NULL, '-1.01', 2, 0, '2020-10-28', '2020-10-28 08:55:03', '2020-10-28 08:55:03');
INSERT INTO `user_foud_log` VALUES (59, 5, 1010.00, 1.00, 1020.10, '增加reta', '10.200999999999999', 2, 1, '2020-10-29', '2020-10-29 06:48:17', '2020-10-29 06:48:17');
INSERT INTO `user_foud_log` VALUES (60, 5, 1000.00, 1.00, 1010.00, '增加reta', '10.1', 2, 2, '2020-10-28', '2020-10-29 06:49:00', '2020-10-28 06:49:00');
INSERT INTO `user_foud_log` VALUES (61, 5, 1020.00, 1.00, 1030.20, '增加reta', '10.302000000000001', 2, 1, '2020-10-30', '2020-10-29 06:49:23', '2020-10-30 06:49:23');
INSERT INTO `user_foud_log` VALUES (62, 5, 1000.00, 1.00, 1010.00, '增加reta', '10.1', 2, 2, '2020-10-27', '2020-10-29 06:52:16', '2020-10-27 06:52:16');
INSERT INTO `user_foud_log` VALUES (63, 29, 100.00, -1.00, 101.00, NULL, '-1.01', 2, 0, '2020-10-29', '2020-10-29 06:54:32', '2020-10-29 06:54:32');
INSERT INTO `user_foud_log` VALUES (64, 29, 100.00, -1.00, 101.00, NULL, '-1.01', 2, 0, '2020-10-28', '2020-10-29 06:55:24', '2020-10-28 06:55:24');
INSERT INTO `user_foud_log` VALUES (65, 29, 100.00, -1.00, 101.00, NULL, '-1.01', 2, 0, '2020-10-28', '2020-10-29 06:56:19', '2020-10-28 06:56:19');
INSERT INTO `user_foud_log` VALUES (66, 5, 1000.00, 1.00, 1010.00, '增加reta', '10.1', 2, 0, '2020-10-29', '2020-10-29 08:03:21', '2020-10-29 08:03:21');
INSERT INTO `user_foud_log` VALUES (67, 1, 1000.00, 1.00, 1010.00, NULL, '10.1', 2, 1, '2020-10-27', '2020-10-29 08:05:03', '2020-10-27 08:05:03');
INSERT INTO `user_foud_log` VALUES (68, 5, 1000.00, 1.00, 1010.00, '增加reta', '10.1', 2, 0, '2020-10-26', '2020-10-29 08:05:27', '2020-10-26 08:05:27');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `fund_amount` decimal(11, 2) NULL DEFAULT NULL COMMENT '基金份额',
  `fund_rate` decimal(11, 2) NULL DEFAULT NULL COMMENT '基金净值率',
  `fund_sum` decimal(11, 2) NULL DEFAULT NULL COMMENT '基金总净值：公式：基金份额+（基金份额*基金净值率）',
  `created_at` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `mark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (5, '用户5', 1000.00, 1.00, 1010.00, '2020-10-14 15:02:42', '2020-10-29 08:05:27', '增加reta');
INSERT INTO `users` VALUES (28, 'testUser', 1020.00, 1.10, 1031.22, '2020-10-17 11:52:24', '2020-10-17 12:14:07', NULL);
INSERT INTO `users` VALUES (1, '管理员', 1000.00, 1.00, 1010.00, NULL, '2020-10-29 08:05:02', NULL);
INSERT INTO `users` VALUES (29, '用户7', 100.00, -1.00, 101.00, '2020-10-28 02:09:07', '2020-10-29 06:56:19', NULL);

SET FOREIGN_KEY_CHECKS = 1;
