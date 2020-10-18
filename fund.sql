/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : fund

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 18/10/2020 20:27:57
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
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `admin_menu` VALUES (12, 10, 12, '基金统计记录', NULL, 'foud/log', '2020-10-14 16:17:58', '2020-10-17 12:19:52');
INSERT INTO `admin_menu` VALUES (13, 10, 13, '用户每日基金', 'fa-align-center', 'foud/day', '2020-10-17 12:15:57', '2020-10-17 12:19:29');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1328 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES (1, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-10-13 14:01:32', '2020-10-13 14:01:32');
INSERT INTO `admin_operation_log` VALUES (2, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:01:36', '2020-10-13 14:01:36');
INSERT INTO `admin_operation_log` VALUES (3, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:01:38', '2020-10-13 14:01:38');
INSERT INTO `admin_operation_log` VALUES (4, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:01:39', '2020-10-13 14:01:39');
INSERT INTO `admin_operation_log` VALUES (5, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:01:40', '2020-10-13 14:01:40');
INSERT INTO `admin_operation_log` VALUES (6, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-13 14:01:41', '2020-10-13 14:01:41');
INSERT INTO `admin_operation_log` VALUES (7, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"\\u7528\\u6237\",\"permissions\":null,\"_token\":\"TIcl1RxmbqAiND80bLAzTi72JTstB9MybGdK7mxB\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-13 14:01:54', '2020-10-13 14:01:54');
INSERT INTO `admin_operation_log` VALUES (8, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:01:54', '2020-10-13 14:01:54');
INSERT INTO `admin_operation_log` VALUES (9, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:02:01', '2020-10-13 14:02:01');
INSERT INTO `admin_operation_log` VALUES (10, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-13 14:02:06', '2020-10-13 14:02:06');
INSERT INTO `admin_operation_log` VALUES (11, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"\\u7528\\u62371\",\"name\":\"\\u7528\\u62371\",\"avatar\":null,\"_file_\":null,\"password\":\"123******\",\"password_confirmation\":\"123******\",\"roles\":[\"2\",null],\"_token\":\"TIcl1RxmbqAiND80bLAzTi72JTstB9MybGdK7mxB\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/users\"}', '2020-10-13 14:02:20', '2020-10-13 14:02:20');
INSERT INTO `admin_operation_log` VALUES (12, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:02:21', '2020-10-13 14:02:21');
INSERT INTO `admin_operation_log` VALUES (13, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:02:30', '2020-10-13 14:02:30');
INSERT INTO `admin_operation_log` VALUES (14, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-13 14:02:30', '2020-10-13 14:02:30');
INSERT INTO `admin_operation_log` VALUES (15, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"mH5gLFEY0Rp3qnxx7pTP5j6HeXhHAE2OA97bb1hc\",\"username\":\"\\u7528\\u62371\",\"password\":\"123******\"}', '2020-10-13 14:02:37', '2020-10-13 14:02:37');
INSERT INTO `admin_operation_log` VALUES (16, 2, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-13 14:02:37', '2020-10-13 14:02:37');
INSERT INTO `admin_operation_log` VALUES (17, 2, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:02:40', '2020-10-13 14:02:40');
INSERT INTO `admin_operation_log` VALUES (18, 2, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:02:41', '2020-10-13 14:02:41');
INSERT INTO `admin_operation_log` VALUES (19, 2, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:02:43', '2020-10-13 14:02:43');
INSERT INTO `admin_operation_log` VALUES (20, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:02:44', '2020-10-13 14:02:44');
INSERT INTO `admin_operation_log` VALUES (21, 2, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:02:45', '2020-10-13 14:02:45');
INSERT INTO `admin_operation_log` VALUES (22, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:02:48', '2020-10-13 14:02:48');
INSERT INTO `admin_operation_log` VALUES (23, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-13 14:02:48', '2020-10-13 14:02:48');
INSERT INTO `admin_operation_log` VALUES (24, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"JaWmWGoFpq9e2o92ToYRWalLHTuuiKu023N8hzoN\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-13 14:02:51', '2020-10-13 14:02:51');
INSERT INTO `admin_operation_log` VALUES (25, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-13 14:02:51', '2020-10-13 14:02:51');
INSERT INTO `admin_operation_log` VALUES (26, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:02:53', '2020-10-13 14:02:53');
INSERT INTO `admin_operation_log` VALUES (27, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:02:56', '2020-10-13 14:02:56');
INSERT INTO `admin_operation_log` VALUES (28, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:02:58', '2020-10-13 14:02:58');
INSERT INTO `admin_operation_log` VALUES (29, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:06:47', '2020-10-13 14:06:47');
INSERT INTO `admin_operation_log` VALUES (30, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 14:46:28', '2020-10-13 14:46:28');
INSERT INTO `admin_operation_log` VALUES (31, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 15:06:09', '2020-10-13 15:06:09');
INSERT INTO `admin_operation_log` VALUES (32, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 15:06:10', '2020-10-13 15:06:10');
INSERT INTO `admin_operation_log` VALUES (33, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-13 15:06:13', '2020-10-13 15:06:13');
INSERT INTO `admin_operation_log` VALUES (34, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-14 13:00:30', '2020-10-14 13:00:30');
INSERT INTO `admin_operation_log` VALUES (35, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"orhYEqH60xmZ8UHlwzRmTVpZ3UAFMjMHEp4jcaJ1\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-14 13:00:35', '2020-10-14 13:00:35');
INSERT INTO `admin_operation_log` VALUES (36, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-10-14 13:00:36', '2020-10-14 13:00:36');
INSERT INTO `admin_operation_log` VALUES (37, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:10:04', '2020-10-14 13:10:04');
INSERT INTO `admin_operation_log` VALUES (38, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-14 13:10:05', '2020-10-14 13:10:05');
INSERT INTO `admin_operation_log` VALUES (39, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"8NelIF3vz9xbHKb5MIYScamb7coPRvYp4gpXsUDn\",\"username\":\"\\u7528\\u62372\",\"password\":\"123******\"}', '2020-10-14 13:10:12', '2020-10-14 13:10:12');
INSERT INTO `admin_operation_log` VALUES (40, 3, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-14 13:10:12', '2020-10-14 13:10:12');
INSERT INTO `admin_operation_log` VALUES (41, 3, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:15:10', '2020-10-14 13:15:10');
INSERT INTO `admin_operation_log` VALUES (42, 3, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:15:12', '2020-10-14 13:15:12');
INSERT INTO `admin_operation_log` VALUES (43, 3, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:15:14', '2020-10-14 13:15:14');
INSERT INTO `admin_operation_log` VALUES (44, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-14 13:15:15', '2020-10-14 13:15:15');
INSERT INTO `admin_operation_log` VALUES (45, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"IGWTJbKhKinlfaTskfjb8OZASy1x53MRBVvbjTM7\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-14 13:15:17', '2020-10-14 13:15:17');
INSERT INTO `admin_operation_log` VALUES (46, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-14 13:15:18', '2020-10-14 13:15:18');
INSERT INTO `admin_operation_log` VALUES (47, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:15:21', '2020-10-14 13:15:21');
INSERT INTO `admin_operation_log` VALUES (48, 1, 'admin/auth/permissions/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 13:15:31', '2020-10-14 13:15:31');
INSERT INTO `admin_operation_log` VALUES (49, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:15:39', '2020-10-14 13:15:39');
INSERT INTO `admin_operation_log` VALUES (50, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:15:41', '2020-10-14 13:15:41');
INSERT INTO `admin_operation_log` VALUES (51, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 13:15:43', '2020-10-14 13:15:43');
INSERT INTO `admin_operation_log` VALUES (52, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Admin\",\"icon\":\"feather icon-settings\",\"uri\":null,\"roles\":[\"1\",null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-14 13:15:49', '2020-10-14 13:15:49');
INSERT INTO `admin_operation_log` VALUES (53, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:15:49', '2020-10-14 13:15:49');
INSERT INTO `admin_operation_log` VALUES (54, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 13:15:51', '2020-10-14 13:15:51');
INSERT INTO `admin_operation_log` VALUES (55, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:16:11', '2020-10-14 13:16:11');
INSERT INTO `admin_operation_log` VALUES (56, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"fund\",\"tb\":\"users\"}', '2020-10-14 13:16:17', '2020-10-14 13:16:17');
INSERT INTO `admin_operation_log` VALUES (57, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"users\"}', '2020-10-14 13:16:17', '2020-10-14 13:16:17');
INSERT INTO `admin_operation_log` VALUES (58, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"users\",\"exist-table\":\"fund|users\",\"model_name\":\"App\\\\Models\\\\User\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\User\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"fund_amount\",\"translation\":\"\\u57fa\\u91d1\\u4efd\\u989d\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u57fa\\u91d1\\u4efd\\u989d\"},{\"name\":\"fund_rate\",\"translation\":\"\\u57fa\\u91d1\\u51c0\\u503c\\u7387\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u57fa\\u91d1\\u51c0\\u503c\\u7387\"},{\"name\":\"fund_sum\",\"translation\":\"\\u57fa\\u91d1\\u603b\\u51c0\\u503c\\uff1a\\u516c\\u5f0f\\uff1a\\u57fa\\u91d1\\u4efd\\u989d+\\uff08\\u57fa\\u91d1\\u4efd\\u989d*\\u57fa\\u91d1\\u51c0\\u503c\\u7387\\uff09\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u57fa\\u91d1\\u603b\\u51c0\\u503c\\uff1a\\u516c\\u5f0f\\uff1a\\u57fa\\u91d1\\u4efd\\u989d+\\uff08\\u57fa\\u91d1\\u4efd\\u989d*\\u57fa\\u91d1\\u51c0\\u503c\\u7387\\uff09\"},{\"name\":\"name\",\"translation\":\"\\u7528\\u6237\\u540d\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u7528\\u6237\\u540d\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:16:50', '2020-10-14 13:16:50');
INSERT INTO `admin_operation_log` VALUES (59, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-10-14 13:16:51', '2020-10-14 13:16:51');
INSERT INTO `admin_operation_log` VALUES (60, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:17:45', '2020-10-14 13:17:45');
INSERT INTO `admin_operation_log` VALUES (61, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:17:46', '2020-10-14 13:17:46');
INSERT INTO `admin_operation_log` VALUES (62, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u57fa\\u91d1\\u7ba1\\u7406\",\"icon\":null,\"uri\":null,\"roles\":[null],\"permissions\":null,\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:18:25', '2020-10-14 13:18:25');
INSERT INTO `admin_operation_log` VALUES (63, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 13:18:27', '2020-10-14 13:18:27');
INSERT INTO `admin_operation_log` VALUES (64, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u57fa\\u91d1\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":null,\"uri\":\"user\\/list\",\"roles\":[null],\"permissions\":null,\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:18:52', '2020-10-14 13:18:52');
INSERT INTO `admin_operation_log` VALUES (65, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 13:18:54', '2020-10-14 13:18:54');
INSERT INTO `admin_operation_log` VALUES (66, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 13:18:56', '2020-10-14 13:18:56');
INSERT INTO `admin_operation_log` VALUES (67, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 13:19:03', '2020-10-14 13:19:03');
INSERT INTO `admin_operation_log` VALUES (68, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u57fa\\u91d1\\u7ba1\\u7406\",\"icon\":\"fa-align-right\",\"uri\":null,\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-14 13:19:12', '2020-10-14 13:19:12');
INSERT INTO `admin_operation_log` VALUES (69, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:19:13', '2020-10-14 13:19:13');
INSERT INTO `admin_operation_log` VALUES (70, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 13:19:14', '2020-10-14 13:19:14');
INSERT INTO `admin_operation_log` VALUES (71, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-14 13:19:33', '2020-10-14 13:19:33');
INSERT INTO `admin_operation_log` VALUES (72, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:19:44', '2020-10-14 13:19:44');
INSERT INTO `admin_operation_log` VALUES (73, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '[]', '2020-10-14 13:20:15', '2020-10-14 13:20:15');
INSERT INTO `admin_operation_log` VALUES (74, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:22:49', '2020-10-14 13:22:49');
INSERT INTO `admin_operation_log` VALUES (75, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:23:00', '2020-10-14 13:23:00');
INSERT INTO `admin_operation_log` VALUES (76, 1, 'admin/auth/permissions/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 13:23:04', '2020-10-14 13:23:04');
INSERT INTO `admin_operation_log` VALUES (77, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:23:15', '2020-10-14 13:23:15');
INSERT INTO `admin_operation_log` VALUES (78, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:23:17', '2020-10-14 13:23:17');
INSERT INTO `admin_operation_log` VALUES (79, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 13:23:21', '2020-10-14 13:23:21');
INSERT INTO `admin_operation_log` VALUES (80, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"\\u7528\\u6237\",\"permissions\":\"2\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-14 13:23:31', '2020-10-14 13:23:31');
INSERT INTO `admin_operation_log` VALUES (81, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:23:32', '2020-10-14 13:23:32');
INSERT INTO `admin_operation_log` VALUES (82, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:23:37', '2020-10-14 13:23:37');
INSERT INTO `admin_operation_log` VALUES (83, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:23:40', '2020-10-14 13:23:40');
INSERT INTO `admin_operation_log` VALUES (84, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '[]', '2020-10-14 13:24:12', '2020-10-14 13:24:12');
INSERT INTO `admin_operation_log` VALUES (85, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '[]', '2020-10-14 13:24:20', '2020-10-14 13:24:20');
INSERT INTO `admin_operation_log` VALUES (86, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '[]', '2020-10-14 13:24:50', '2020-10-14 13:24:50');
INSERT INTO `admin_operation_log` VALUES (87, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '[]', '2020-10-14 13:24:58', '2020-10-14 13:24:58');
INSERT INTO `admin_operation_log` VALUES (88, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '[]', '2020-10-14 13:25:10', '2020-10-14 13:25:10');
INSERT INTO `admin_operation_log` VALUES (89, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:25:44', '2020-10-14 13:25:44');
INSERT INTO `admin_operation_log` VALUES (90, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:25:49', '2020-10-14 13:25:49');
INSERT INTO `admin_operation_log` VALUES (91, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:25:54', '2020-10-14 13:25:54');
INSERT INTO `admin_operation_log` VALUES (92, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:26:12', '2020-10-14 13:26:12');
INSERT INTO `admin_operation_log` VALUES (93, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:26:13', '2020-10-14 13:26:13');
INSERT INTO `admin_operation_log` VALUES (94, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:30:24', '2020-10-14 13:30:24');
INSERT INTO `admin_operation_log` VALUES (95, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 13:30:28', '2020-10-14 13:30:28');
INSERT INTO `admin_operation_log` VALUES (96, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:30:29', '2020-10-14 13:30:29');
INSERT INTO `admin_operation_log` VALUES (97, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:30:34', '2020-10-14 13:30:34');
INSERT INTO `admin_operation_log` VALUES (98, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 13:31:05', '2020-10-14 13:31:05');
INSERT INTO `admin_operation_log` VALUES (99, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 13:31:38', '2020-10-14 13:31:38');
INSERT INTO `admin_operation_log` VALUES (100, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 13:31:50', '2020-10-14 13:31:50');
INSERT INTO `admin_operation_log` VALUES (101, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 13:32:15', '2020-10-14 13:32:15');
INSERT INTO `admin_operation_log` VALUES (102, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 13:34:51', '2020-10-14 13:34:51');
INSERT INTO `admin_operation_log` VALUES (103, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '[]', '2020-10-14 13:37:57', '2020-10-14 13:37:57');
INSERT INTO `admin_operation_log` VALUES (104, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:38:06', '2020-10-14 13:38:06');
INSERT INTO `admin_operation_log` VALUES (105, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:38:13', '2020-10-14 13:38:13');
INSERT INTO `admin_operation_log` VALUES (106, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:40:25', '2020-10-14 13:40:25');
INSERT INTO `admin_operation_log` VALUES (107, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:40:44', '2020-10-14 13:40:44');
INSERT INTO `admin_operation_log` VALUES (108, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"111\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:40:59', '2020-10-14 13:40:59');
INSERT INTO `admin_operation_log` VALUES (109, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"111\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:41:23', '2020-10-14 13:41:23');
INSERT INTO `admin_operation_log` VALUES (110, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"111\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:42:23', '2020-10-14 13:42:23');
INSERT INTO `admin_operation_log` VALUES (111, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"111\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:42:42', '2020-10-14 13:42:42');
INSERT INTO `admin_operation_log` VALUES (112, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"111\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:43:15', '2020-10-14 13:43:15');
INSERT INTO `admin_operation_log` VALUES (113, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"111\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:43:36', '2020-10-14 13:43:36');
INSERT INTO `admin_operation_log` VALUES (114, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"111\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:43:53', '2020-10-14 13:43:53');
INSERT INTO `admin_operation_log` VALUES (115, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"111\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:43:59', '2020-10-14 13:43:59');
INSERT INTO `admin_operation_log` VALUES (116, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"111\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:44:29', '2020-10-14 13:44:29');
INSERT INTO `admin_operation_log` VALUES (117, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"111\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:44:42', '2020-10-14 13:44:42');
INSERT INTO `admin_operation_log` VALUES (118, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"111\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:45:09', '2020-10-14 13:45:09');
INSERT INTO `admin_operation_log` VALUES (119, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:45:17', '2020-10-14 13:45:17');
INSERT INTO `admin_operation_log` VALUES (120, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:45:42', '2020-10-14 13:45:42');
INSERT INTO `admin_operation_log` VALUES (121, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-1\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:46:08', '2020-10-14 13:46:08');
INSERT INTO `admin_operation_log` VALUES (122, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-10\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:46:33', '2020-10-14 13:46:33');
INSERT INTO `admin_operation_log` VALUES (123, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-10\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:47:19', '2020-10-14 13:47:19');
INSERT INTO `admin_operation_log` VALUES (124, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-10\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:47:22', '2020-10-14 13:47:22');
INSERT INTO `admin_operation_log` VALUES (125, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-10\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:47:42', '2020-10-14 13:47:42');
INSERT INTO `admin_operation_log` VALUES (126, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-10\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:48:18', '2020-10-14 13:48:18');
INSERT INTO `admin_operation_log` VALUES (127, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-10\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:48:59', '2020-10-14 13:48:59');
INSERT INTO `admin_operation_log` VALUES (128, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-10\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:50:39', '2020-10-14 13:50:39');
INSERT INTO `admin_operation_log` VALUES (129, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-10\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:50:46', '2020-10-14 13:50:46');
INSERT INTO `admin_operation_log` VALUES (130, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-10\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:52:11', '2020-10-14 13:52:11');
INSERT INTO `admin_operation_log` VALUES (131, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-10\",\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:52:23', '2020-10-14 13:52:23');
INSERT INTO `admin_operation_log` VALUES (132, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:52:23', '2020-10-14 13:52:23');
INSERT INTO `admin_operation_log` VALUES (133, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:53:00', '2020-10-14 13:53:00');
INSERT INTO `admin_operation_log` VALUES (134, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '[]', '2020-10-14 13:53:03', '2020-10-14 13:53:03');
INSERT INTO `admin_operation_log` VALUES (135, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '[]', '2020-10-14 13:53:26', '2020-10-14 13:53:26');
INSERT INTO `admin_operation_log` VALUES (136, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-10.00\",\"fund_sum\":null,\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 13:53:29', '2020-10-14 13:53:29');
INSERT INTO `admin_operation_log` VALUES (137, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:53:29', '2020-10-14 13:53:29');
INSERT INTO `admin_operation_log` VALUES (138, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:53:34', '2020-10-14 13:53:34');
INSERT INTO `admin_operation_log` VALUES (139, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-10.00\",\"fund_sum\":null,\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 13:53:49', '2020-10-14 13:53:49');
INSERT INTO `admin_operation_log` VALUES (140, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:53:50', '2020-10-14 13:53:50');
INSERT INTO `admin_operation_log` VALUES (141, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:53:52', '2020-10-14 13:53:52');
INSERT INTO `admin_operation_log` VALUES (142, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '[]', '2020-10-14 13:56:09', '2020-10-14 13:56:09');
INSERT INTO `admin_operation_log` VALUES (143, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:56:13', '2020-10-14 13:56:13');
INSERT INTO `admin_operation_log` VALUES (144, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:56:15', '2020-10-14 13:56:15');
INSERT INTO `admin_operation_log` VALUES (145, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1\",\"fund_sum\":null,\"name\":\"\\u7528\\u62372\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 13:56:24', '2020-10-14 13:56:24');
INSERT INTO `admin_operation_log` VALUES (146, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:56:25', '2020-10-14 13:56:25');
INSERT INTO `admin_operation_log` VALUES (147, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:56:30', '2020-10-14 13:56:30');
INSERT INTO `admin_operation_log` VALUES (148, 1, 'admin/user/list/1', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"-10.00\",\"fund_sum\":null,\"name\":\"\\u7528\\u62371\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 13:56:34', '2020-10-14 13:56:34');
INSERT INTO `admin_operation_log` VALUES (149, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 13:56:35', '2020-10-14 13:56:35');
INSERT INTO `admin_operation_log` VALUES (150, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-14 14:01:58', '2020-10-14 14:01:58');
INSERT INTO `admin_operation_log` VALUES (151, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-14 14:02:27', '2020-10-14 14:02:27');
INSERT INTO `admin_operation_log` VALUES (152, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:02:30', '2020-10-14 14:02:30');
INSERT INTO `admin_operation_log` VALUES (153, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"fund_amount\":\"1111\",\"fund_rate\":\"1\",\"fund_sum\":null,\"name\":\"\\u7528\\u62373\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 14:02:42', '2020-10-14 14:02:42');
INSERT INTO `admin_operation_log` VALUES (154, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"fund_amount\":\"1111\",\"fund_rate\":\"1\",\"fund_sum\":null,\"name\":\"\\u7528\\u62373\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 14:03:48', '2020-10-14 14:03:48');
INSERT INTO `admin_operation_log` VALUES (155, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:03:49', '2020-10-14 14:03:49');
INSERT INTO `admin_operation_log` VALUES (156, 1, 'admin/user/list/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:03:51', '2020-10-14 14:03:51');
INSERT INTO `admin_operation_log` VALUES (157, 1, 'admin/user/list/3', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1500\",\"fund_rate\":\"1.00\",\"fund_sum\":\"1122.11\",\"name\":\"\\u7528\\u62373\",\"_method\":\"PUT\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 14:04:01', '2020-10-14 14:04:01');
INSERT INTO `admin_operation_log` VALUES (158, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:04:02', '2020-10-14 14:04:02');
INSERT INTO `admin_operation_log` VALUES (159, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-14 14:04:48', '2020-10-14 14:04:48');
INSERT INTO `admin_operation_log` VALUES (160, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:04:52', '2020-10-14 14:04:52');
INSERT INTO `admin_operation_log` VALUES (161, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '[]', '2020-10-14 14:05:05', '2020-10-14 14:05:05');
INSERT INTO `admin_operation_log` VALUES (162, 1, 'admin/user/list/1/edit', 'GET', '127.0.0.1', '[]', '2020-10-14 14:05:21', '2020-10-14 14:05:21');
INSERT INTO `admin_operation_log` VALUES (163, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:05:25', '2020-10-14 14:05:25');
INSERT INTO `admin_operation_log` VALUES (164, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:05:38', '2020-10-14 14:05:38');
INSERT INTO `admin_operation_log` VALUES (165, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '[]', '2020-10-14 14:05:56', '2020-10-14 14:05:56');
INSERT INTO `admin_operation_log` VALUES (166, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62374\",\"fund_amount\":\"1000000\",\"fund_rate\":\"0.25\",\"_token\":\"3xtjXG606JdbnLzAr1mCedhApPYUdzZYJ77bqZDm\"}', '2020-10-14 14:06:11', '2020-10-14 14:06:11');
INSERT INTO `admin_operation_log` VALUES (167, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:06:11', '2020-10-14 14:06:11');
INSERT INTO `admin_operation_log` VALUES (168, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:06:29', '2020-10-14 14:06:29');
INSERT INTO `admin_operation_log` VALUES (169, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-14 14:06:29', '2020-10-14 14:06:29');
INSERT INTO `admin_operation_log` VALUES (170, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"f5gYx5pa4ZeadBROiVJUAkX5bBY4mrm3Mc65SgWL\",\"username\":\"\\u7528\\u62376\",\"password\":\"123******\"}', '2020-10-14 14:06:37', '2020-10-14 14:06:37');
INSERT INTO `admin_operation_log` VALUES (171, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"f5gYx5pa4ZeadBROiVJUAkX5bBY4mrm3Mc65SgWL\",\"username\":\"\\u7528\\u62374\",\"password\":\"123******\"}', '2020-10-14 14:06:49', '2020-10-14 14:06:49');
INSERT INTO `admin_operation_log` VALUES (172, 6, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-14 14:06:58', '2020-10-14 14:06:58');
INSERT INTO `admin_operation_log` VALUES (173, 6, 'admin/auth/logout', 'GET', '127.0.0.1', '[]', '2020-10-14 14:06:59', '2020-10-14 14:06:59');
INSERT INTO `admin_operation_log` VALUES (174, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-14 14:07:08', '2020-10-14 14:07:08');
INSERT INTO `admin_operation_log` VALUES (175, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"sJPOVBQi3jmVOSaWGgtGBMRou7LmtTRUGpRp4PeU\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-14 14:07:15', '2020-10-14 14:07:15');
INSERT INTO `admin_operation_log` VALUES (176, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-10-14 14:07:16', '2020-10-14 14:07:16');
INSERT INTO `admin_operation_log` VALUES (177, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:07:18', '2020-10-14 14:07:18');
INSERT INTO `admin_operation_log` VALUES (178, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:07:22', '2020-10-14 14:07:22');
INSERT INTO `admin_operation_log` VALUES (179, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:07:23', '2020-10-14 14:07:23');
INSERT INTO `admin_operation_log` VALUES (180, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:07:27', '2020-10-14 14:07:27');
INSERT INTO `admin_operation_log` VALUES (181, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Index\",\"icon\":\"feather icon-bar-chart-2\",\"uri\":\"\\/\",\"roles\":[\"1\",\"2\",null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-14 14:07:54', '2020-10-14 14:07:54');
INSERT INTO `admin_operation_log` VALUES (182, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:07:54', '2020-10-14 14:07:54');
INSERT INTO `admin_operation_log` VALUES (183, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 14:07:56', '2020-10-14 14:07:56');
INSERT INTO `admin_operation_log` VALUES (184, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 14:07:58', '2020-10-14 14:07:58');
INSERT INTO `admin_operation_log` VALUES (185, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:08:04', '2020-10-14 14:08:04');
INSERT INTO `admin_operation_log` VALUES (186, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:08:10', '2020-10-14 14:08:10');
INSERT INTO `admin_operation_log` VALUES (187, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:08:16', '2020-10-14 14:08:16');
INSERT INTO `admin_operation_log` VALUES (188, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:08:21', '2020-10-14 14:08:21');
INSERT INTO `admin_operation_log` VALUES (189, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:08:23', '2020-10-14 14:08:23');
INSERT INTO `admin_operation_log` VALUES (190, 1, 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"slug\":\"administrator\",\"name\":\"Administrator\",\"permissions\":\"2,3,4,5,6\",\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-14 14:08:27', '2020-10-14 14:08:27');
INSERT INTO `admin_operation_log` VALUES (191, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:08:28', '2020-10-14 14:08:28');
INSERT INTO `admin_operation_log` VALUES (192, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2020-10-14 14:08:31', '2020-10-14 14:08:31');
INSERT INTO `admin_operation_log` VALUES (193, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:08:36', '2020-10-14 14:08:36');
INSERT INTO `admin_operation_log` VALUES (194, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:08:40', '2020-10-14 14:08:40');
INSERT INTO `admin_operation_log` VALUES (195, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:08:41', '2020-10-14 14:08:41');
INSERT INTO `admin_operation_log` VALUES (196, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"\\u7528\\u6237\",\"permissions\":\"2\",\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-14 14:09:02', '2020-10-14 14:09:02');
INSERT INTO `admin_operation_log` VALUES (197, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:09:02', '2020-10-14 14:09:02');
INSERT INTO `admin_operation_log` VALUES (198, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:09:04', '2020-10-14 14:09:04');
INSERT INTO `admin_operation_log` VALUES (199, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:09:08', '2020-10-14 14:09:08');
INSERT INTO `admin_operation_log` VALUES (200, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u57fa\\u91d1\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":null,\"uri\":\"user\\/list\",\"roles\":[\"1\",null],\"permissions\":\"2,3,4,5,6\",\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-14 14:09:22', '2020-10-14 14:09:22');
INSERT INTO `admin_operation_log` VALUES (201, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:09:23', '2020-10-14 14:09:23');
INSERT INTO `admin_operation_log` VALUES (202, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 14:09:24', '2020-10-14 14:09:24');
INSERT INTO `admin_operation_log` VALUES (203, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:09:26', '2020-10-14 14:09:26');
INSERT INTO `admin_operation_log` VALUES (204, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Index\",\"icon\":\"feather icon-bar-chart-2\",\"uri\":\"\\/\",\"roles\":[\"1\",\"2\",null],\"permissions\":\"2,3,4,5,6\",\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-14 14:09:32', '2020-10-14 14:09:32');
INSERT INTO `admin_operation_log` VALUES (205, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:09:33', '2020-10-14 14:09:33');
INSERT INTO `admin_operation_log` VALUES (206, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 14:09:35', '2020-10-14 14:09:35');
INSERT INTO `admin_operation_log` VALUES (207, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 14:09:39', '2020-10-14 14:09:39');
INSERT INTO `admin_operation_log` VALUES (208, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:09:41', '2020-10-14 14:09:41');
INSERT INTO `admin_operation_log` VALUES (209, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:10:07', '2020-10-14 14:10:07');
INSERT INTO `admin_operation_log` VALUES (210, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:10:17', '2020-10-14 14:10:17');
INSERT INTO `admin_operation_log` VALUES (211, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:10:20', '2020-10-14 14:10:20');
INSERT INTO `admin_operation_log` VALUES (212, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u57fa\\u91d1\\u7ba1\\u7406\",\"icon\":\"fa-align-right\",\"uri\":null,\"roles\":[\"1\",null],\"permissions\":\"2,3,4,5,6\",\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-14 14:10:31', '2020-10-14 14:10:31');
INSERT INTO `admin_operation_log` VALUES (213, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:10:32', '2020-10-14 14:10:32');
INSERT INTO `admin_operation_log` VALUES (214, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 14:10:34', '2020-10-14 14:10:34');
INSERT INTO `admin_operation_log` VALUES (215, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:10:36', '2020-10-14 14:10:36');
INSERT INTO `admin_operation_log` VALUES (216, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:10:41', '2020-10-14 14:10:41');
INSERT INTO `admin_operation_log` VALUES (217, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Index\",\"icon\":\"feather icon-bar-chart-2\",\"uri\":\"\\/\",\"roles\":[\"1\",\"2\",null],\"permissions\":\"2,3,4,5,6\",\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-14 14:10:48', '2020-10-14 14:10:48');
INSERT INTO `admin_operation_log` VALUES (218, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:10:48', '2020-10-14 14:10:48');
INSERT INTO `admin_operation_log` VALUES (219, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 14:10:50', '2020-10-14 14:10:50');
INSERT INTO `admin_operation_log` VALUES (220, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:10:57', '2020-10-14 14:10:57');
INSERT INTO `admin_operation_log` VALUES (221, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:11:07', '2020-10-14 14:11:07');
INSERT INTO `admin_operation_log` VALUES (222, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:11:12', '2020-10-14 14:11:12');
INSERT INTO `admin_operation_log` VALUES (223, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:11:15', '2020-10-14 14:11:15');
INSERT INTO `admin_operation_log` VALUES (224, 1, 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"slug\":\"administrator\",\"name\":\"Administrator\",\"permissions\":\"2,3,4,5,6\",\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-14 14:11:19', '2020-10-14 14:11:19');
INSERT INTO `admin_operation_log` VALUES (225, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:11:20', '2020-10-14 14:11:20');
INSERT INTO `admin_operation_log` VALUES (226, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:11:24', '2020-10-14 14:11:24');
INSERT INTO `admin_operation_log` VALUES (227, 1, 'admin/auth/permissions/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:11:30', '2020-10-14 14:11:30');
INSERT INTO `admin_operation_log` VALUES (228, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:11:45', '2020-10-14 14:11:45');
INSERT INTO `admin_operation_log` VALUES (229, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"\\/\",\"name\":\"\\u4e3b\\u9875\",\"http_method\":[null],\"http_path\":[null],\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\"}', '2020-10-14 14:12:36', '2020-10-14 14:12:36');
INSERT INTO `admin_operation_log` VALUES (230, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:12:36', '2020-10-14 14:12:36');
INSERT INTO `admin_operation_log` VALUES (231, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:12:58', '2020-10-14 14:12:58');
INSERT INTO `admin_operation_log` VALUES (232, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"fund\",\"name\":\"\\u57fa\\u91d1\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":[\"\\/user\\/list*\",null],\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/permissions\"}', '2020-10-14 14:13:54', '2020-10-14 14:13:54');
INSERT INTO `admin_operation_log` VALUES (233, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:13:55', '2020-10-14 14:13:55');
INSERT INTO `admin_operation_log` VALUES (234, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:13:58', '2020-10-14 14:13:58');
INSERT INTO `admin_operation_log` VALUES (235, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:14:01', '2020-10-14 14:14:01');
INSERT INTO `admin_operation_log` VALUES (236, 1, 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"slug\":\"administrator\",\"name\":\"Administrator\",\"permissions\":\"2,3,4,5,6,7,8\",\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-14 14:14:06', '2020-10-14 14:14:06');
INSERT INTO `admin_operation_log` VALUES (237, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:14:06', '2020-10-14 14:14:06');
INSERT INTO `admin_operation_log` VALUES (238, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:14:08', '2020-10-14 14:14:08');
INSERT INTO `admin_operation_log` VALUES (239, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"\\u7528\\u6237\",\"permissions\":\"2,7\",\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-14 14:14:13', '2020-10-14 14:14:13');
INSERT INTO `admin_operation_log` VALUES (240, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:14:14', '2020-10-14 14:14:14');
INSERT INTO `admin_operation_log` VALUES (241, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:14:19', '2020-10-14 14:14:19');
INSERT INTO `admin_operation_log` VALUES (242, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:14:23', '2020-10-14 14:14:23');
INSERT INTO `admin_operation_log` VALUES (243, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"userRole\",\"name\":\"\\u7528\\u6237\\u6743\\u9650\",\"http_method\":[null],\"http_path\":[\"\\/auth\\/users\\/*\\/edit\",null],\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/permissions\"}', '2020-10-14 14:15:35', '2020-10-14 14:15:35');
INSERT INTO `admin_operation_log` VALUES (244, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:15:36', '2020-10-14 14:15:36');
INSERT INTO `admin_operation_log` VALUES (245, 1, 'admin/auth/permissions/9/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:15:41', '2020-10-14 14:15:41');
INSERT INTO `admin_operation_log` VALUES (246, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:15:47', '2020-10-14 14:15:47');
INSERT INTO `admin_operation_log` VALUES (247, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:15:51', '2020-10-14 14:15:51');
INSERT INTO `admin_operation_log` VALUES (248, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"\\u7528\\u6237\",\"permissions\":\"7,9\",\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-14 14:15:59', '2020-10-14 14:15:59');
INSERT INTO `admin_operation_log` VALUES (249, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:15:59', '2020-10-14 14:15:59');
INSERT INTO `admin_operation_log` VALUES (250, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:16:20', '2020-10-14 14:16:20');
INSERT INTO `admin_operation_log` VALUES (251, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:16:26', '2020-10-14 14:16:26');
INSERT INTO `admin_operation_log` VALUES (252, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:16:34', '2020-10-14 14:16:34');
INSERT INTO `admin_operation_log` VALUES (253, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:18:16', '2020-10-14 14:18:16');
INSERT INTO `admin_operation_log` VALUES (254, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:18:21', '2020-10-14 14:18:21');
INSERT INTO `admin_operation_log` VALUES (255, 1, 'admin/auth/users/1', 'PUT', '127.0.0.1', '{\"username\":\"admin\",\"name\":\"Administrator\",\"avatar\":null,\"_file_\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[null],\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/users\"}', '2020-10-14 14:18:25', '2020-10-14 14:18:25');
INSERT INTO `admin_operation_log` VALUES (256, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:18:26', '2020-10-14 14:18:26');
INSERT INTO `admin_operation_log` VALUES (257, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:18:49', '2020-10-14 14:18:49');
INSERT INTO `admin_operation_log` VALUES (258, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:18:52', '2020-10-14 14:18:52');
INSERT INTO `admin_operation_log` VALUES (259, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:18:53', '2020-10-14 14:18:53');
INSERT INTO `admin_operation_log` VALUES (260, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-10-14 14:19:26', '2020-10-14 14:19:26');
INSERT INTO `admin_operation_log` VALUES (261, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:19:37', '2020-10-14 14:19:37');
INSERT INTO `admin_operation_log` VALUES (262, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:19:41', '2020-10-14 14:19:41');
INSERT INTO `admin_operation_log` VALUES (263, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:19:45', '2020-10-14 14:19:45');
INSERT INTO `admin_operation_log` VALUES (264, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:20:20', '2020-10-14 14:20:20');
INSERT INTO `admin_operation_log` VALUES (265, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"\\/\",\"name\":\"\\u4e3b\\u9875\",\"http_method\":[null],\"http_path\":[\"\\/dcat-api\\/action*\",null],\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/permissions\"}', '2020-10-14 14:20:31', '2020-10-14 14:20:31');
INSERT INTO `admin_operation_log` VALUES (266, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:20:32', '2020-10-14 14:20:32');
INSERT INTO `admin_operation_log` VALUES (267, 1, 'admin/auth/permissions/9/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:20:37', '2020-10-14 14:20:37');
INSERT INTO `admin_operation_log` VALUES (268, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:21:05', '2020-10-14 14:21:05');
INSERT INTO `admin_operation_log` VALUES (269, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:21:08', '2020-10-14 14:21:08');
INSERT INTO `admin_operation_log` VALUES (270, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:21:37', '2020-10-14 14:21:37');
INSERT INTO `admin_operation_log` VALUES (271, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:21:40', '2020-10-14 14:21:40');
INSERT INTO `admin_operation_log` VALUES (272, 1, 'admin/auth/permissions/7', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"\\/\",\"name\":\"\\u4e3b\\u9875\",\"http_method\":[null],\"http_path\":[\"\\/home*\",null],\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/permissions\"}', '2020-10-14 14:21:49', '2020-10-14 14:21:49');
INSERT INTO `admin_operation_log` VALUES (273, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:21:49', '2020-10-14 14:21:49');
INSERT INTO `admin_operation_log` VALUES (274, 1, 'admin/home', 'GET', '127.0.0.1', '[]', '2020-10-14 14:21:55', '2020-10-14 14:21:55');
INSERT INTO `admin_operation_log` VALUES (275, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-14 14:25:39', '2020-10-14 14:25:39');
INSERT INTO `admin_operation_log` VALUES (276, 1, 'admin/auth/permissions/7/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:25:53', '2020-10-14 14:25:53');
INSERT INTO `admin_operation_log` VALUES (277, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:25:56', '2020-10-14 14:25:56');
INSERT INTO `admin_operation_log` VALUES (278, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:25:58', '2020-10-14 14:25:58');
INSERT INTO `admin_operation_log` VALUES (279, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"\\u7528\\u6237\",\"permissions\":\"7,9\",\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-14 14:26:00', '2020-10-14 14:26:00');
INSERT INTO `admin_operation_log` VALUES (280, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:26:01', '2020-10-14 14:26:01');
INSERT INTO `admin_operation_log` VALUES (281, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:26:02', '2020-10-14 14:26:02');
INSERT INTO `admin_operation_log` VALUES (282, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:26:09', '2020-10-14 14:26:09');
INSERT INTO `admin_operation_log` VALUES (283, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:26:18', '2020-10-14 14:26:18');
INSERT INTO `admin_operation_log` VALUES (284, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u7528\\u6237\",\"icon\":\"fa-address-card\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-14 14:26:29', '2020-10-14 14:26:29');
INSERT INTO `admin_operation_log` VALUES (285, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:26:30', '2020-10-14 14:26:30');
INSERT INTO `admin_operation_log` VALUES (286, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 14:26:31', '2020-10-14 14:26:31');
INSERT INTO `admin_operation_log` VALUES (287, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 14:26:36', '2020-10-14 14:26:36');
INSERT INTO `admin_operation_log` VALUES (288, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:26:41', '2020-10-14 14:26:41');
INSERT INTO `admin_operation_log` VALUES (289, 1, 'admin/auth/users/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:26:45', '2020-10-14 14:26:45');
INSERT INTO `admin_operation_log` VALUES (290, 1, 'admin/auth/users/6', 'PUT', '127.0.0.1', '{\"username\":\"\\u7528\\u62374\",\"name\":\"\\u7528\\u62374\",\"avatar\":null,\"_file_\":null,\"password\":null,\"password_confirmation\":null,\"roles\":[\"2\",null],\"_method\":\"PUT\",\"_token\":\"4S5NFnGeCTxhJ8X37iNIaZ3eeAfHaRgqSUXvlUmb\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/users\"}', '2020-10-14 14:26:49', '2020-10-14 14:26:49');
INSERT INTO `admin_operation_log` VALUES (291, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:26:50', '2020-10-14 14:26:50');
INSERT INTO `admin_operation_log` VALUES (292, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:26:57', '2020-10-14 14:26:57');
INSERT INTO `admin_operation_log` VALUES (293, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-14 14:26:57', '2020-10-14 14:26:57');
INSERT INTO `admin_operation_log` VALUES (294, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"QrL0Mo1a15X9bCxwT139hINHqCuUllzWgZPLjv2C\",\"username\":\"\\u7528\\u62374\",\"password\":\"123******\"}', '2020-10-14 14:27:05', '2020-10-14 14:27:05');
INSERT INTO `admin_operation_log` VALUES (295, 6, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-14 14:27:05', '2020-10-14 14:27:05');
INSERT INTO `admin_operation_log` VALUES (296, 6, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:27:14', '2020-10-14 14:27:14');
INSERT INTO `admin_operation_log` VALUES (297, 6, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:27:15', '2020-10-14 14:27:15');
INSERT INTO `admin_operation_log` VALUES (298, 6, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:27:16', '2020-10-14 14:27:16');
INSERT INTO `admin_operation_log` VALUES (299, 6, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:27:17', '2020-10-14 14:27:17');
INSERT INTO `admin_operation_log` VALUES (300, 6, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:27:19', '2020-10-14 14:27:19');
INSERT INTO `admin_operation_log` VALUES (301, 6, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"\\u7528\\u623799\",\"avatar\":null,\"_file_\":null,\"old_password\":\"123456\",\"password\":\"456******\",\"password_confirmation\":\"456******\",\"_method\":\"PUT\",\"_token\":\"fjUMLPy6lXCRtbntlmmeSsnDhliIWiQSFVcT8iNT\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\"}', '2020-10-14 14:27:44', '2020-10-14 14:27:44');
INSERT INTO `admin_operation_log` VALUES (302, 6, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:27:44', '2020-10-14 14:27:44');
INSERT INTO `admin_operation_log` VALUES (303, 6, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:27:51', '2020-10-14 14:27:51');
INSERT INTO `admin_operation_log` VALUES (304, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-14 14:27:51', '2020-10-14 14:27:51');
INSERT INTO `admin_operation_log` VALUES (305, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"Ea0dvGCEm9W84n8lEinmz0xKy0FE4LyELEn8xVxi\",\"username\":\"\\u7528\\u62374\",\"password\":\"123******\"}', '2020-10-14 14:27:56', '2020-10-14 14:27:56');
INSERT INTO `admin_operation_log` VALUES (306, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"Ea0dvGCEm9W84n8lEinmz0xKy0FE4LyELEn8xVxi\",\"username\":\"\\u7528\\u62374\",\"password\":\"456******\"}', '2020-10-14 14:28:03', '2020-10-14 14:28:03');
INSERT INTO `admin_operation_log` VALUES (307, 6, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-14 14:28:03', '2020-10-14 14:28:03');
INSERT INTO `admin_operation_log` VALUES (308, 6, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:28:09', '2020-10-14 14:28:09');
INSERT INTO `admin_operation_log` VALUES (309, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-14 14:28:09', '2020-10-14 14:28:09');
INSERT INTO `admin_operation_log` VALUES (310, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"1UXhl6xVkuYdBo4bLTJh79lsfSy4ECU8w5SHDrzL\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-14 14:28:13', '2020-10-14 14:28:13');
INSERT INTO `admin_operation_log` VALUES (311, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-14 14:28:13', '2020-10-14 14:28:13');
INSERT INTO `admin_operation_log` VALUES (312, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:28:16', '2020-10-14 14:28:16');
INSERT INTO `admin_operation_log` VALUES (313, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-14 14:28:36', '2020-10-14 14:28:36');
INSERT INTO `admin_operation_log` VALUES (314, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:28:46', '2020-10-14 14:28:46');
INSERT INTO `admin_operation_log` VALUES (315, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:28:53', '2020-10-14 14:28:53');
INSERT INTO `admin_operation_log` VALUES (316, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:28:59', '2020-10-14 14:28:59');
INSERT INTO `admin_operation_log` VALUES (317, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:29:16', '2020-10-14 14:29:16');
INSERT INTO `admin_operation_log` VALUES (318, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:29:18', '2020-10-14 14:29:18');
INSERT INTO `admin_operation_log` VALUES (319, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-14 14:29:19', '2020-10-14 14:29:19');
INSERT INTO `admin_operation_log` VALUES (320, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"SRgxJjyTBIaKN8zd9nNCgUzSCnfxbAgHjaZc3WJv\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-14 14:29:22', '2020-10-14 14:29:22');
INSERT INTO `admin_operation_log` VALUES (321, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-14 14:29:23', '2020-10-14 14:29:23');
INSERT INTO `admin_operation_log` VALUES (322, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:35:25', '2020-10-14 14:35:25');
INSERT INTO `admin_operation_log` VALUES (323, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:35:26', '2020-10-14 14:35:26');
INSERT INTO `admin_operation_log` VALUES (324, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:35:29', '2020-10-14 14:35:29');
INSERT INTO `admin_operation_log` VALUES (325, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 14:35:31', '2020-10-14 14:35:31');
INSERT INTO `admin_operation_log` VALUES (326, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"100\",\"fund_rate\":\"-8\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 14:35:46', '2020-10-14 14:35:46');
INSERT INTO `admin_operation_log` VALUES (327, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"100\",\"fund_rate\":\"-8\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 14:35:52', '2020-10-14 14:35:52');
INSERT INTO `admin_operation_log` VALUES (328, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"100\",\"fund_rate\":\"-8\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 14:41:14', '2020-10-14 14:41:14');
INSERT INTO `admin_operation_log` VALUES (329, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:02:24', '2020-10-14 15:02:24');
INSERT INTO `admin_operation_log` VALUES (330, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:02:28', '2020-10-14 15:02:28');
INSERT INTO `admin_operation_log` VALUES (331, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"11111\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:02:37', '2020-10-14 15:02:37');
INSERT INTO `admin_operation_log` VALUES (332, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"11111\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:02:42', '2020-10-14 15:02:42');
INSERT INTO `admin_operation_log` VALUES (333, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:02:43', '2020-10-14 15:02:43');
INSERT INTO `admin_operation_log` VALUES (334, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:02:51', '2020-10-14 15:02:51');
INSERT INTO `admin_operation_log` VALUES (335, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62376\",\"fund_amount\":\"11111\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:02:59', '2020-10-14 15:02:59');
INSERT INTO `admin_operation_log` VALUES (336, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62376\",\"fund_amount\":\"11111\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:03:41', '2020-10-14 15:03:41');
INSERT INTO `admin_operation_log` VALUES (337, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62376\",\"fund_amount\":\"11111\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:04:23', '2020-10-14 15:04:23');
INSERT INTO `admin_operation_log` VALUES (338, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"100\",\"fund_rate\":\"-8\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:06:26', '2020-10-14 15:06:26');
INSERT INTO `admin_operation_log` VALUES (339, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"100\",\"fund_rate\":\"-8\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:09:27', '2020-10-14 15:09:27');
INSERT INTO `admin_operation_log` VALUES (340, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62376\",\"fund_amount\":\"100\",\"fund_rate\":\"-8\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:09:54', '2020-10-14 15:09:54');
INSERT INTO `admin_operation_log` VALUES (341, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62377\",\"fund_amount\":\"100\",\"fund_rate\":\"-8\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:10:22', '2020-10-14 15:10:22');
INSERT INTO `admin_operation_log` VALUES (342, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62378\",\"fund_amount\":\"100\",\"fund_rate\":\"-8\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:10:26', '2020-10-14 15:10:26');
INSERT INTO `admin_operation_log` VALUES (343, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '[]', '2020-10-14 15:12:54', '2020-10-14 15:12:54');
INSERT INTO `admin_operation_log` VALUES (344, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62376\",\"fund_amount\":\"1000\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\"}', '2020-10-14 15:13:06', '2020-10-14 15:13:06');
INSERT INTO `admin_operation_log` VALUES (345, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:13:07', '2020-10-14 15:13:07');
INSERT INTO `admin_operation_log` VALUES (346, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:14:18', '2020-10-14 15:14:18');
INSERT INTO `admin_operation_log` VALUES (347, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62376\",\"fund_amount\":\"1000\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:16:02', '2020-10-14 15:16:02');
INSERT INTO `admin_operation_log` VALUES (348, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '[]', '2020-10-14 15:16:51', '2020-10-14 15:16:51');
INSERT INTO `admin_operation_log` VALUES (349, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62376\",\"fund_amount\":\"1000\",\"fund_rate\":\"1\",\"id\":null,\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\"}', '2020-10-14 15:17:02', '2020-10-14 15:17:02');
INSERT INTO `admin_operation_log` VALUES (350, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '[]', '2020-10-14 15:21:07', '2020-10-14 15:21:07');
INSERT INTO `admin_operation_log` VALUES (351, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62377\",\"fund_amount\":\"11111\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\"}', '2020-10-14 15:22:28', '2020-10-14 15:22:28');
INSERT INTO `admin_operation_log` VALUES (352, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62377\",\"fund_amount\":\"11111\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\"}', '2020-10-14 15:23:19', '2020-10-14 15:23:19');
INSERT INTO `admin_operation_log` VALUES (353, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:23:20', '2020-10-14 15:23:20');
INSERT INTO `admin_operation_log` VALUES (354, 1, 'admin/user/list/7', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-14 15:24:05', '2020-10-14 15:24:05');
INSERT INTO `admin_operation_log` VALUES (355, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:24:05', '2020-10-14 15:24:05');
INSERT INTO `admin_operation_log` VALUES (356, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:24:07', '2020-10-14 15:24:07');
INSERT INTO `admin_operation_log` VALUES (357, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62378\",\"fund_amount\":\"100000\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:24:18', '2020-10-14 15:24:18');
INSERT INTO `admin_operation_log` VALUES (358, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62378\",\"fund_amount\":\"100000\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:25:03', '2020-10-14 15:25:03');
INSERT INTO `admin_operation_log` VALUES (359, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '[]', '2020-10-14 15:25:29', '2020-10-14 15:25:29');
INSERT INTO `admin_operation_log` VALUES (360, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u623710\",\"fund_amount\":\"1111\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\"}', '2020-10-14 15:26:32', '2020-10-14 15:26:32');
INSERT INTO `admin_operation_log` VALUES (361, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:26:33', '2020-10-14 15:26:33');
INSERT INTO `admin_operation_log` VALUES (362, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:28:32', '2020-10-14 15:28:32');
INSERT INTO `admin_operation_log` VALUES (363, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u623711\",\"fund_amount\":\"999\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:28:43', '2020-10-14 15:28:43');
INSERT INTO `admin_operation_log` VALUES (364, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u623711\",\"fund_amount\":\"999\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:28:55', '2020-10-14 15:28:55');
INSERT INTO `admin_operation_log` VALUES (365, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u623711\",\"fund_amount\":\"999\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:29:22', '2020-10-14 15:29:22');
INSERT INTO `admin_operation_log` VALUES (366, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:29:22', '2020-10-14 15:29:22');
INSERT INTO `admin_operation_log` VALUES (367, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:29:25', '2020-10-14 15:29:25');
INSERT INTO `admin_operation_log` VALUES (368, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"11111\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:29:27', '2020-10-14 15:29:27');
INSERT INTO `admin_operation_log` VALUES (369, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:29:28', '2020-10-14 15:29:28');
INSERT INTO `admin_operation_log` VALUES (370, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:29:35', '2020-10-14 15:29:35');
INSERT INTO `admin_operation_log` VALUES (371, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\",\"fund_amount\":\"0\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:29:39', '2020-10-14 15:29:39');
INSERT INTO `admin_operation_log` VALUES (372, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:29:39', '2020-10-14 15:29:39');
INSERT INTO `admin_operation_log` VALUES (373, 1, 'admin/user/list/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:29:59', '2020-10-14 15:29:59');
INSERT INTO `admin_operation_log` VALUES (374, 1, 'admin/user/list/14', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\",\"fund_amount\":\"1\",\"fund_rate\":null,\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:30:07', '2020-10-14 15:30:07');
INSERT INTO `admin_operation_log` VALUES (375, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:30:07', '2020-10-14 15:30:07');
INSERT INTO `admin_operation_log` VALUES (376, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:33:16', '2020-10-14 15:33:16');
INSERT INTO `admin_operation_log` VALUES (377, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:33:48', '2020-10-14 15:33:48');
INSERT INTO `admin_operation_log` VALUES (378, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:33:51', '2020-10-14 15:33:51');
INSERT INTO `admin_operation_log` VALUES (379, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:33:53', '2020-10-14 15:33:53');
INSERT INTO `admin_operation_log` VALUES (380, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:33:56', '2020-10-14 15:33:56');
INSERT INTO `admin_operation_log` VALUES (381, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"100\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:34:28', '2020-10-14 15:34:28');
INSERT INTO `admin_operation_log` VALUES (382, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:34:29', '2020-10-14 15:34:29');
INSERT INTO `admin_operation_log` VALUES (383, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:34:33', '2020-10-14 15:34:33');
INSERT INTO `admin_operation_log` VALUES (384, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:34:35', '2020-10-14 15:34:35');
INSERT INTO `admin_operation_log` VALUES (385, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:34:36', '2020-10-14 15:34:36');
INSERT INTO `admin_operation_log` VALUES (386, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-10-14 15:36:27', '2020-10-14 15:36:27');
INSERT INTO `admin_operation_log` VALUES (387, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-10-14 15:37:04', '2020-10-14 15:37:04');
INSERT INTO `admin_operation_log` VALUES (388, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:37:08', '2020-10-14 15:37:08');
INSERT INTO `admin_operation_log` VALUES (389, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:37:10', '2020-10-14 15:37:10');
INSERT INTO `admin_operation_log` VALUES (390, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:37:15', '2020-10-14 15:37:15');
INSERT INTO `admin_operation_log` VALUES (391, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:37:18', '2020-10-14 15:37:18');
INSERT INTO `admin_operation_log` VALUES (392, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd51\",\"fund_amount\":\"1000\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:37:27', '2020-10-14 15:37:27');
INSERT INTO `admin_operation_log` VALUES (393, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:37:28', '2020-10-14 15:37:28');
INSERT INTO `admin_operation_log` VALUES (394, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:37:33', '2020-10-14 15:37:33');
INSERT INTO `admin_operation_log` VALUES (395, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:37:42', '2020-10-14 15:37:42');
INSERT INTO `admin_operation_log` VALUES (396, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:37:44', '2020-10-14 15:37:44');
INSERT INTO `admin_operation_log` VALUES (397, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:37:45', '2020-10-14 15:37:45');
INSERT INTO `admin_operation_log` VALUES (398, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"1\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:37:51', '2020-10-14 15:37:51');
INSERT INTO `admin_operation_log` VALUES (399, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:37:51', '2020-10-14 15:37:51');
INSERT INTO `admin_operation_log` VALUES (400, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:37:56', '2020-10-14 15:37:56');
INSERT INTO `admin_operation_log` VALUES (401, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-10-14 15:39:40', '2020-10-14 15:39:40');
INSERT INTO `admin_operation_log` VALUES (402, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:39:44', '2020-10-14 15:39:44');
INSERT INTO `admin_operation_log` VALUES (403, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:40:03', '2020-10-14 15:40:03');
INSERT INTO `admin_operation_log` VALUES (404, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"0\",\"fund_rate\":null,\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:40:05', '2020-10-14 15:40:05');
INSERT INTO `admin_operation_log` VALUES (405, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u6237001\",\"fund_amount\":\"1\",\"fund_rate\":\"1\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:40:15', '2020-10-14 15:40:15');
INSERT INTO `admin_operation_log` VALUES (406, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:40:15', '2020-10-14 15:40:15');
INSERT INTO `admin_operation_log` VALUES (407, 1, 'admin/user/list/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:48:34', '2020-10-14 15:48:34');
INSERT INTO `admin_operation_log` VALUES (408, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:48:51', '2020-10-14 15:48:51');
INSERT INTO `admin_operation_log` VALUES (409, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:48:52', '2020-10-14 15:48:52');
INSERT INTO `admin_operation_log` VALUES (410, 1, 'admin/user/list/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:49:50', '2020-10-14 15:49:50');
INSERT INTO `admin_operation_log` VALUES (411, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:50:01', '2020-10-14 15:50:01');
INSERT INTO `admin_operation_log` VALUES (412, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:50:01', '2020-10-14 15:50:01');
INSERT INTO `admin_operation_log` VALUES (413, 1, 'admin/user/list/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:54:23', '2020-10-14 15:54:23');
INSERT INTO `admin_operation_log` VALUES (414, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:54:31', '2020-10-14 15:54:31');
INSERT INTO `admin_operation_log` VALUES (415, 1, 'admin/user/list/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 15:54:58', '2020-10-14 15:54:58');
INSERT INTO `admin_operation_log` VALUES (416, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:55:03', '2020-10-14 15:55:03');
INSERT INTO `admin_operation_log` VALUES (417, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:57:21', '2020-10-14 15:57:21');
INSERT INTO `admin_operation_log` VALUES (418, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:58:20', '2020-10-14 15:58:20');
INSERT INTO `admin_operation_log` VALUES (419, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:59:13', '2020-10-14 15:59:13');
INSERT INTO `admin_operation_log` VALUES (420, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 15:59:27', '2020-10-14 15:59:27');
INSERT INTO `admin_operation_log` VALUES (421, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 16:00:06', '2020-10-14 16:00:06');
INSERT INTO `admin_operation_log` VALUES (422, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 16:00:53', '2020-10-14 16:00:53');
INSERT INTO `admin_operation_log` VALUES (423, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 16:01:44', '2020-10-14 16:01:44');
INSERT INTO `admin_operation_log` VALUES (424, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 16:01:55', '2020-10-14 16:01:55');
INSERT INTO `admin_operation_log` VALUES (425, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 16:02:24', '2020-10-14 16:02:24');
INSERT INTO `admin_operation_log` VALUES (426, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 16:03:30', '2020-10-14 16:03:30');
INSERT INTO `admin_operation_log` VALUES (427, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 16:03:42', '2020-10-14 16:03:42');
INSERT INTO `admin_operation_log` VALUES (428, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 16:06:07', '2020-10-14 16:06:07');
INSERT INTO `admin_operation_log` VALUES (429, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 16:07:27', '2020-10-14 16:07:27');
INSERT INTO `admin_operation_log` VALUES (430, 1, 'admin/user/list/17', 'PUT', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd52\",\"fund_amount\":\"999\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 16:07:32', '2020-10-14 16:07:32');
INSERT INTO `admin_operation_log` VALUES (431, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:07:33', '2020-10-14 16:07:33');
INSERT INTO `admin_operation_log` VALUES (432, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:08:10', '2020-10-14 16:08:10');
INSERT INTO `admin_operation_log` VALUES (433, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 16:08:15', '2020-10-14 16:08:15');
INSERT INTO `admin_operation_log` VALUES (434, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:08:15', '2020-10-14 16:08:15');
INSERT INTO `admin_operation_log` VALUES (435, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:08:44', '2020-10-14 16:08:44');
INSERT INTO `admin_operation_log` VALUES (436, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"1000\",\"fund_rate\":\"0.5\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-14 16:08:50', '2020-10-14 16:08:50');
INSERT INTO `admin_operation_log` VALUES (437, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:08:50', '2020-10-14 16:08:50');
INSERT INTO `admin_operation_log` VALUES (438, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:11:05', '2020-10-14 16:11:05');
INSERT INTO `admin_operation_log` VALUES (439, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:11:08', '2020-10-14 16:11:08');
INSERT INTO `admin_operation_log` VALUES (440, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:11:34', '2020-10-14 16:11:34');
INSERT INTO `admin_operation_log` VALUES (441, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-14 16:12:30', '2020-10-14 16:12:30');
INSERT INTO `admin_operation_log` VALUES (442, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-14 16:15:28', '2020-10-14 16:15:28');
INSERT INTO `admin_operation_log` VALUES (443, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"999\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\\u4efd\\u989d\",\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\"}', '2020-10-14 16:15:41', '2020-10-14 16:15:41');
INSERT INTO `admin_operation_log` VALUES (444, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:15:42', '2020-10-14 16:15:42');
INSERT INTO `admin_operation_log` VALUES (445, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:16:28', '2020-10-14 16:16:28');
INSERT INTO `admin_operation_log` VALUES (446, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u7edf\\u8ba1\",\"icon\":\"fa-bar-chart\",\"uri\":null,\"roles\":[null],\"permissions\":null,\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\"}', '2020-10-14 16:17:00', '2020-10-14 16:17:00');
INSERT INTO `admin_operation_log` VALUES (447, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 16:17:02', '2020-10-14 16:17:02');
INSERT INTO `admin_operation_log` VALUES (448, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":null,\"title\":\"\\u57fa\\u91d1\\u8d70\\u52bf\",\"icon\":null,\"uri\":null,\"roles\":[null],\"permissions\":null,\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\"}', '2020-10-14 16:17:27', '2020-10-14 16:17:27');
INSERT INTO `admin_operation_log` VALUES (449, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 16:17:29', '2020-10-14 16:17:29');
INSERT INTO `admin_operation_log` VALUES (450, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 16:17:32', '2020-10-14 16:17:32');
INSERT INTO `admin_operation_log` VALUES (451, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u57fa\\u91d1\\u8d70\\u52bf\",\"icon\":null,\"uri\":null,\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-14 16:17:37', '2020-10-14 16:17:37');
INSERT INTO `admin_operation_log` VALUES (452, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:17:38', '2020-10-14 16:17:38');
INSERT INTO `admin_operation_log` VALUES (453, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 16:17:39', '2020-10-14 16:17:39');
INSERT INTO `admin_operation_log` VALUES (454, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u57fa\\u91d1\\u8bb0\\u5f55\",\"icon\":null,\"uri\":null,\"roles\":[null],\"permissions\":null,\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\"}', '2020-10-14 16:17:58', '2020-10-14 16:17:58');
INSERT INTO `admin_operation_log` VALUES (455, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 16:18:00', '2020-10-14 16:18:00');
INSERT INTO `admin_operation_log` VALUES (456, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 16:18:05', '2020-10-14 16:18:05');
INSERT INTO `admin_operation_log` VALUES (457, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u57fa\\u91d1\\u8bb0\\u5f55\",\"icon\":null,\"uri\":\"foud\\/log\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-14 16:18:18', '2020-10-14 16:18:18');
INSERT INTO `admin_operation_log` VALUES (458, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:18:18', '2020-10-14 16:18:18');
INSERT INTO `admin_operation_log` VALUES (459, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 16:18:20', '2020-10-14 16:18:20');
INSERT INTO `admin_operation_log` VALUES (460, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-14 16:18:21', '2020-10-14 16:18:21');
INSERT INTO `admin_operation_log` VALUES (461, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u57fa\\u91d1\\u8d70\\u52bf\",\"icon\":null,\"uri\":\"foud\\/day\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"ocF6eg9jLPvjg8s7AArA54S9IWj7zNrMjthWPMow\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-14 16:18:33', '2020-10-14 16:18:33');
INSERT INTO `admin_operation_log` VALUES (462, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:18:33', '2020-10-14 16:18:33');
INSERT INTO `admin_operation_log` VALUES (463, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-14 16:18:35', '2020-10-14 16:18:35');
INSERT INTO `admin_operation_log` VALUES (464, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-14 16:19:11', '2020-10-14 16:19:11');
INSERT INTO `admin_operation_log` VALUES (465, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-16 15:10:22', '2020-10-16 15:10:22');
INSERT INTO `admin_operation_log` VALUES (466, 1, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-16 15:11:15', '2020-10-16 15:11:15');
INSERT INTO `admin_operation_log` VALUES (467, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-16 15:11:17', '2020-10-16 15:11:17');
INSERT INTO `admin_operation_log` VALUES (468, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"fund\",\"tb\":\"user_foud_day\"}', '2020-10-16 15:11:24', '2020-10-16 15:11:24');
INSERT INTO `admin_operation_log` VALUES (469, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"user_foud_day\"}', '2020-10-16 15:11:25', '2020-10-16 15:11:25');
INSERT INTO `admin_operation_log` VALUES (470, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"user_foud_day\",\"exist-table\":\"fund|user_foud_day\",\"model_name\":\"App\\\\Models\\\\UserFoudDay\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserFoudDayController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\UserFoudDay\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"fund_sum\",\"translation\":\"\\u57fa\\u91d1\\u603b\\u51c0\\u503c\\uff1a\\u516c\\u5f0f\\uff1a\\u57fa\\u91d1\\u4efd\\u989d+\\uff08\\u57fa\\u91d1\\u4efd\\u989d*\\u57fa\\u91d1\\u51c0\\u503c\\u7387\\uff09\",\"type\":\"decimal\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u57fa\\u91d1\\u603b\\u51c0\\u503c\\uff1a\\u516c\\u5f0f\\uff1a\\u57fa\\u91d1\\u4efd\\u989d+\\uff08\\u57fa\\u91d1\\u4efd\\u989d*\\u57fa\\u91d1\\u51c0\\u503c\\u7387\\uff09\"},{\"name\":\"user_id\",\"translation\":\"\\u7528\\u6237id\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7528\\u6237id\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"PMSz8cX4IS6iCik31AraWUAuQ80qdmp0v0jRskl8\"}', '2020-10-16 15:12:05', '2020-10-16 15:12:05');
INSERT INTO `admin_operation_log` VALUES (471, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-10-16 15:12:05', '2020-10-16 15:12:05');
INSERT INTO `admin_operation_log` VALUES (472, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"user_foud_day\",\"exist-table\":\"0\",\"model_name\":\"App\\\\Models\\\\UserFoudDay\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserFoudDayController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\UserFoudDay\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":[{\"name\":\"fund_sum\",\"translation\":\"\\u57fa\\u91d1\\u603b\\u51c0\\u503c\\uff1a\\u516c\\u5f0f\\uff1a\\u57fa\\u91d1\\u4efd\\u989d+\\uff08\\u57fa\\u91d1\\u4efd\\u989d*\\u57fa\\u91d1\\u51c0\\u503c\\u7387\\uff09\",\"type\":\"decimal\",\"key\":null,\"default\":null,\"comment\":\"\\u57fa\\u91d1\\u603b\\u51c0\\u503c\"},{\"name\":\"user_id\",\"translation\":\"\\u7528\\u6237ID\",\"type\":\"integer\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u7528\\u6237ID\"},{\"name\":\"user_name\",\"translation\":\"\\u7528\\u6237\\u540d\\u79f0\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u7528\\u6237\\u540d\\u79f0\"}],\"primary_key\":\"id\",\"timestamps\":\"1\",\"_token\":\"PMSz8cX4IS6iCik31AraWUAuQ80qdmp0v0jRskl8\"}', '2020-10-16 15:14:40', '2020-10-16 15:14:40');
INSERT INTO `admin_operation_log` VALUES (473, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-10-16 15:14:41', '2020-10-16 15:14:41');
INSERT INTO `admin_operation_log` VALUES (474, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-10-16 15:15:43', '2020-10-16 15:15:43');
INSERT INTO `admin_operation_log` VALUES (475, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:16:28', '2020-10-16 15:16:28');
INSERT INTO `admin_operation_log` VALUES (476, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-16 15:19:35', '2020-10-16 15:19:35');
INSERT INTO `admin_operation_log` VALUES (477, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:20:04', '2020-10-16 15:20:04');
INSERT INTO `admin_operation_log` VALUES (478, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:20:30', '2020-10-16 15:20:30');
INSERT INTO `admin_operation_log` VALUES (479, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:23:39', '2020-10-16 15:23:39');
INSERT INTO `admin_operation_log` VALUES (480, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:24:02', '2020-10-16 15:24:02');
INSERT INTO `admin_operation_log` VALUES (481, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:25:17', '2020-10-16 15:25:17');
INSERT INTO `admin_operation_log` VALUES (482, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:25:27', '2020-10-16 15:25:27');
INSERT INTO `admin_operation_log` VALUES (483, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:25:49', '2020-10-16 15:25:49');
INSERT INTO `admin_operation_log` VALUES (484, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:26:13', '2020-10-16 15:26:13');
INSERT INTO `admin_operation_log` VALUES (485, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:26:22', '2020-10-16 15:26:22');
INSERT INTO `admin_operation_log` VALUES (486, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:26:36', '2020-10-16 15:26:36');
INSERT INTO `admin_operation_log` VALUES (487, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:26:53', '2020-10-16 15:26:53');
INSERT INTO `admin_operation_log` VALUES (488, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:27:05', '2020-10-16 15:27:05');
INSERT INTO `admin_operation_log` VALUES (489, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:27:48', '2020-10-16 15:27:48');
INSERT INTO `admin_operation_log` VALUES (490, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:28:04', '2020-10-16 15:28:04');
INSERT INTO `admin_operation_log` VALUES (491, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:28:12', '2020-10-16 15:28:12');
INSERT INTO `admin_operation_log` VALUES (492, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:28:24', '2020-10-16 15:28:24');
INSERT INTO `admin_operation_log` VALUES (493, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:28:30', '2020-10-16 15:28:30');
INSERT INTO `admin_operation_log` VALUES (494, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:28:36', '2020-10-16 15:28:36');
INSERT INTO `admin_operation_log` VALUES (495, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:28:44', '2020-10-16 15:28:44');
INSERT INTO `admin_operation_log` VALUES (496, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:28:49', '2020-10-16 15:28:49');
INSERT INTO `admin_operation_log` VALUES (497, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:29:00', '2020-10-16 15:29:00');
INSERT INTO `admin_operation_log` VALUES (498, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:38:04', '2020-10-16 15:38:04');
INSERT INTO `admin_operation_log` VALUES (499, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:41:05', '2020-10-16 15:41:05');
INSERT INTO `admin_operation_log` VALUES (500, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:49:40', '2020-10-16 15:49:40');
INSERT INTO `admin_operation_log` VALUES (501, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:51:01', '2020-10-16 15:51:01');
INSERT INTO `admin_operation_log` VALUES (502, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:55:28', '2020-10-16 15:55:28');
INSERT INTO `admin_operation_log` VALUES (503, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 15:55:57', '2020-10-16 15:55:57');
INSERT INTO `admin_operation_log` VALUES (504, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-16 16:01:48', '2020-10-16 16:01:48');
INSERT INTO `admin_operation_log` VALUES (505, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:02:15', '2020-10-16 16:02:15');
INSERT INTO `admin_operation_log` VALUES (506, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:03:33', '2020-10-16 16:03:33');
INSERT INTO `admin_operation_log` VALUES (507, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:03:42', '2020-10-16 16:03:42');
INSERT INTO `admin_operation_log` VALUES (508, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:03:53', '2020-10-16 16:03:53');
INSERT INTO `admin_operation_log` VALUES (509, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:04:15', '2020-10-16 16:04:15');
INSERT INTO `admin_operation_log` VALUES (510, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:04:29', '2020-10-16 16:04:29');
INSERT INTO `admin_operation_log` VALUES (511, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:04:39', '2020-10-16 16:04:39');
INSERT INTO `admin_operation_log` VALUES (512, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:04:52', '2020-10-16 16:04:52');
INSERT INTO `admin_operation_log` VALUES (513, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:05:07', '2020-10-16 16:05:07');
INSERT INTO `admin_operation_log` VALUES (514, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:05:16', '2020-10-16 16:05:16');
INSERT INTO `admin_operation_log` VALUES (515, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:05:32', '2020-10-16 16:05:32');
INSERT INTO `admin_operation_log` VALUES (516, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:05:44', '2020-10-16 16:05:44');
INSERT INTO `admin_operation_log` VALUES (517, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:05:49', '2020-10-16 16:05:49');
INSERT INTO `admin_operation_log` VALUES (518, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:06:05', '2020-10-16 16:06:05');
INSERT INTO `admin_operation_log` VALUES (519, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:06:55', '2020-10-16 16:06:55');
INSERT INTO `admin_operation_log` VALUES (520, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:08:14', '2020-10-16 16:08:14');
INSERT INTO `admin_operation_log` VALUES (521, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:08:34', '2020-10-16 16:08:34');
INSERT INTO `admin_operation_log` VALUES (522, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:10:20', '2020-10-16 16:10:20');
INSERT INTO `admin_operation_log` VALUES (523, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:10:53', '2020-10-16 16:10:53');
INSERT INTO `admin_operation_log` VALUES (524, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:10:58', '2020-10-16 16:10:58');
INSERT INTO `admin_operation_log` VALUES (525, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:11:02', '2020-10-16 16:11:02');
INSERT INTO `admin_operation_log` VALUES (526, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:11:07', '2020-10-16 16:11:07');
INSERT INTO `admin_operation_log` VALUES (527, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-16 16:11:27', '2020-10-16 16:11:27');
INSERT INTO `admin_operation_log` VALUES (528, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 04:28:30', '2020-10-17 04:28:30');
INSERT INTO `admin_operation_log` VALUES (529, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"ramxRqjihkpdjDrCjWvIMkHZFn15a6ahBoV3qZCx\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-17 04:28:33', '2020-10-17 04:28:33');
INSERT INTO `admin_operation_log` VALUES (530, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:28:34', '2020-10-17 04:28:34');
INSERT INTO `admin_operation_log` VALUES (531, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 04:28:40', '2020-10-17 04:28:40');
INSERT INTO `admin_operation_log` VALUES (532, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 04:28:40', '2020-10-17 04:28:40');
INSERT INTO `admin_operation_log` VALUES (533, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:28:46', '2020-10-17 04:28:46');
INSERT INTO `admin_operation_log` VALUES (534, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:29:17', '2020-10-17 04:29:17');
INSERT INTO `admin_operation_log` VALUES (535, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:29:25', '2020-10-17 04:29:25');
INSERT INTO `admin_operation_log` VALUES (536, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:29:46', '2020-10-17 04:29:46');
INSERT INTO `admin_operation_log` VALUES (537, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:31:36', '2020-10-17 04:31:36');
INSERT INTO `admin_operation_log` VALUES (538, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:32:19', '2020-10-17 04:32:19');
INSERT INTO `admin_operation_log` VALUES (539, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:36:07', '2020-10-17 04:36:07');
INSERT INTO `admin_operation_log` VALUES (540, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:37:03', '2020-10-17 04:37:03');
INSERT INTO `admin_operation_log` VALUES (541, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:37:58', '2020-10-17 04:37:58');
INSERT INTO `admin_operation_log` VALUES (542, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:38:23', '2020-10-17 04:38:23');
INSERT INTO `admin_operation_log` VALUES (543, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:38:46', '2020-10-17 04:38:46');
INSERT INTO `admin_operation_log` VALUES (544, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:38:56', '2020-10-17 04:38:56');
INSERT INTO `admin_operation_log` VALUES (545, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:39:48', '2020-10-17 04:39:48');
INSERT INTO `admin_operation_log` VALUES (546, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:40:03', '2020-10-17 04:40:03');
INSERT INTO `admin_operation_log` VALUES (547, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:40:16', '2020-10-17 04:40:16');
INSERT INTO `admin_operation_log` VALUES (548, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 04:40:54', '2020-10-17 04:40:54');
INSERT INTO `admin_operation_log` VALUES (549, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:00:32', '2020-10-17 05:00:32');
INSERT INTO `admin_operation_log` VALUES (550, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:01:04', '2020-10-17 05:01:04');
INSERT INTO `admin_operation_log` VALUES (551, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:01:23', '2020-10-17 05:01:23');
INSERT INTO `admin_operation_log` VALUES (552, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:03:20', '2020-10-17 05:03:20');
INSERT INTO `admin_operation_log` VALUES (553, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:05:07', '2020-10-17 05:05:07');
INSERT INTO `admin_operation_log` VALUES (554, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:05:22', '2020-10-17 05:05:22');
INSERT INTO `admin_operation_log` VALUES (555, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:05:28', '2020-10-17 05:05:28');
INSERT INTO `admin_operation_log` VALUES (556, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:06:18', '2020-10-17 05:06:18');
INSERT INTO `admin_operation_log` VALUES (557, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:06:48', '2020-10-17 05:06:48');
INSERT INTO `admin_operation_log` VALUES (558, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:06:59', '2020-10-17 05:06:59');
INSERT INTO `admin_operation_log` VALUES (559, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:08:27', '2020-10-17 05:08:27');
INSERT INTO `admin_operation_log` VALUES (560, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:08:45', '2020-10-17 05:08:45');
INSERT INTO `admin_operation_log` VALUES (561, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:10:12', '2020-10-17 05:10:12');
INSERT INTO `admin_operation_log` VALUES (562, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:10:43', '2020-10-17 05:10:43');
INSERT INTO `admin_operation_log` VALUES (563, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:11:08', '2020-10-17 05:11:08');
INSERT INTO `admin_operation_log` VALUES (564, 1, 'admin/foud/day/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:11:57', '2020-10-17 05:11:57');
INSERT INTO `admin_operation_log` VALUES (565, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:12:03', '2020-10-17 05:12:03');
INSERT INTO `admin_operation_log` VALUES (566, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:12:16', '2020-10-17 05:12:16');
INSERT INTO `admin_operation_log` VALUES (567, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 05:15:46', '2020-10-17 05:15:46');
INSERT INTO `admin_operation_log` VALUES (568, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:15:59', '2020-10-17 05:15:59');
INSERT INTO `admin_operation_log` VALUES (569, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"}}', '2020-10-17 05:20:41', '2020-10-17 05:20:41');
INSERT INTO `admin_operation_log` VALUES (570, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"}}', '2020-10-17 05:20:46', '2020-10-17 05:20:46');
INSERT INTO `admin_operation_log` VALUES (571, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"}}', '2020-10-17 05:21:19', '2020-10-17 05:21:19');
INSERT INTO `admin_operation_log` VALUES (572, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"}}', '2020-10-17 05:24:22', '2020-10-17 05:24:22');
INSERT INTO `admin_operation_log` VALUES (573, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"}}', '2020-10-17 05:24:32', '2020-10-17 05:24:32');
INSERT INTO `admin_operation_log` VALUES (574, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"}}', '2020-10-17 05:24:47', '2020-10-17 05:24:47');
INSERT INTO `admin_operation_log` VALUES (575, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"}}', '2020-10-17 05:25:01', '2020-10-17 05:25:01');
INSERT INTO `admin_operation_log` VALUES (576, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"}}', '2020-10-17 05:25:41', '2020-10-17 05:25:41');
INSERT INTO `admin_operation_log` VALUES (577, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:26:00', '2020-10-17 05:26:00');
INSERT INTO `admin_operation_log` VALUES (578, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:26:03', '2020-10-17 05:26:03');
INSERT INTO `admin_operation_log` VALUES (579, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:26:05', '2020-10-17 05:26:05');
INSERT INTO `admin_operation_log` VALUES (580, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:26:07', '2020-10-17 05:26:07');
INSERT INTO `admin_operation_log` VALUES (581, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"test02\",\"fund_amount\":\"1222\",\"fund_rate\":\"1\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 05:26:18', '2020-10-17 05:26:18');
INSERT INTO `admin_operation_log` VALUES (582, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:26:18', '2020-10-17 05:26:18');
INSERT INTO `admin_operation_log` VALUES (583, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:29:46', '2020-10-17 05:29:46');
INSERT INTO `admin_operation_log` VALUES (584, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"fund\",\"tb\":\"user_foud_log\"}', '2020-10-17 05:29:53', '2020-10-17 05:29:53');
INSERT INTO `admin_operation_log` VALUES (585, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"user_foud_log\"}', '2020-10-17 05:29:53', '2020-10-17 05:29:53');
INSERT INTO `admin_operation_log` VALUES (586, 1, 'admin/helpers/scaffold', 'POST', '127.0.0.1', '{\"table_name\":\"user_foud_log\",\"exist-table\":\"fund|user_foud_log\",\"model_name\":\"App\\\\Models\\\\UserFoudLog\",\"controller_name\":\"App\\\\Admin\\\\Controllers\\\\UserFoudLogController\",\"repository_name\":\"App\\\\Admin\\\\Repositories\\\\UserFoudLog\",\"create\":[\"model\",\"repository\",\"controller\",\"lang\"],\"fields\":{\"0\":{\"name\":\"fund_amount\",\"translation\":\"\\u57fa\\u91d1\\u4efd\\u989d\",\"type\":\"decimal\",\"key\":null,\"default\":null,\"comment\":\"\\u57fa\\u91d1\\u4efd\\u989d\"},\"1\":{\"name\":\"fund_rate\",\"translation\":\"\\u57fa\\u91d1\\u51c0\\u503c\\u7387\",\"type\":\"decimal\",\"key\":null,\"default\":null,\"comment\":\"\\u57fa\\u91d1\\u51c0\\u503c\\u7387\"},\"2\":{\"name\":\"fund_sum\",\"translation\":\"\\u57fa\\u91d1\\u603b\\u51c0\\u503c\",\"type\":\"decimal\",\"nullable\":\"on\",\"key\":null,\"default\":null,\"comment\":\"\\u57fa\\u91d1\\u603b\\u51c0\\u503c\"},\"3\":{\"name\":\"mark\",\"translation\":\"\\u5907\\u6ce8\",\"type\":\"string\",\"key\":null,\"default\":null,\"comment\":\"\\u5907\\u6ce8\"},\"5\":{\"name\":\"user_id\",\"translation\":\"\\u7528\\u6237id\",\"type\":\"integer\",\"key\":null,\"default\":null,\"comment\":\"\\u7528\\u6237id\"}},\"primary_key\":\"id\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 05:31:08', '2020-10-17 05:31:08');
INSERT INTO `admin_operation_log` VALUES (587, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '[]', '2020-10-17 05:31:08', '2020-10-17 05:31:08');
INSERT INTO `admin_operation_log` VALUES (588, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:31:55', '2020-10-17 05:31:55');
INSERT INTO `admin_operation_log` VALUES (589, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 05:33:55', '2020-10-17 05:33:55');
INSERT INTO `admin_operation_log` VALUES (590, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:45:05', '2020-10-17 05:45:05');
INSERT INTO `admin_operation_log` VALUES (591, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:45:27', '2020-10-17 05:45:27');
INSERT INTO `admin_operation_log` VALUES (592, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 05:47:44', '2020-10-17 05:47:44');
INSERT INTO `admin_operation_log` VALUES (593, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 05:47:55', '2020-10-17 05:47:55');
INSERT INTO `admin_operation_log` VALUES (594, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:49:01', '2020-10-17 05:49:01');
INSERT INTO `admin_operation_log` VALUES (595, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 05:52:45', '2020-10-17 05:52:45');
INSERT INTO `admin_operation_log` VALUES (596, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 05:54:45', '2020-10-17 05:54:45');
INSERT INTO `admin_operation_log` VALUES (597, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 05:55:59', '2020-10-17 05:55:59');
INSERT INTO `admin_operation_log` VALUES (598, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 05:56:22', '2020-10-17 05:56:22');
INSERT INTO `admin_operation_log` VALUES (599, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 05:56:35', '2020-10-17 05:56:35');
INSERT INTO `admin_operation_log` VALUES (600, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:57:18', '2020-10-17 05:57:18');
INSERT INTO `admin_operation_log` VALUES (601, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 05:57:53', '2020-10-17 05:57:53');
INSERT INTO `admin_operation_log` VALUES (602, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:01:13', '2020-10-17 06:01:13');
INSERT INTO `admin_operation_log` VALUES (603, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:01:15', '2020-10-17 06:01:15');
INSERT INTO `admin_operation_log` VALUES (604, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:01:23', '2020-10-17 06:01:23');
INSERT INTO `admin_operation_log` VALUES (605, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:01:26', '2020-10-17 06:01:26');
INSERT INTO `admin_operation_log` VALUES (606, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"name\":\"\\u7528\\u62372\",\"fund_amount\":\"999\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\\u4efd\\u989d\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:01:31', '2020-10-17 06:01:31');
INSERT INTO `admin_operation_log` VALUES (607, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:01:31', '2020-10-17 06:01:31');
INSERT INTO `admin_operation_log` VALUES (608, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:01:44', '2020-10-17 06:01:44');
INSERT INTO `admin_operation_log` VALUES (609, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"999\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\\u4efd\\u989d\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:01:48', '2020-10-17 06:01:48');
INSERT INTO `admin_operation_log` VALUES (610, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:01:49', '2020-10-17 06:01:49');
INSERT INTO `admin_operation_log` VALUES (611, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:01:52', '2020-10-17 06:01:52');
INSERT INTO `admin_operation_log` VALUES (612, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:01:59', '2020-10-17 06:01:59');
INSERT INTO `admin_operation_log` VALUES (613, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:02:02', '2020-10-17 06:02:02');
INSERT INTO `admin_operation_log` VALUES (614, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"name\":\"\\u7528\\u62372\",\"fund_amount\":\"999\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\\u4efd\\u989d\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:02:34', '2020-10-17 06:02:34');
INSERT INTO `admin_operation_log` VALUES (615, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"999\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\\u4efd\\u989d\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:02:39', '2020-10-17 06:02:39');
INSERT INTO `admin_operation_log` VALUES (616, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"999\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\\u4efd\\u989d\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:02:42', '2020-10-17 06:02:42');
INSERT INTO `admin_operation_log` VALUES (617, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"name\":\"\\u7528\\u62375\",\"fund_amount\":\"999\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\\u4efd\\u989d\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:02:57', '2020-10-17 06:02:57');
INSERT INTO `admin_operation_log` VALUES (618, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:04:38', '2020-10-17 06:04:38');
INSERT INTO `admin_operation_log` VALUES (619, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:04:48', '2020-10-17 06:04:48');
INSERT INTO `admin_operation_log` VALUES (620, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:05:08', '2020-10-17 06:05:08');
INSERT INTO `admin_operation_log` VALUES (621, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:05:13', '2020-10-17 06:05:13');
INSERT INTO `admin_operation_log` VALUES (622, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:05:15', '2020-10-17 06:05:15');
INSERT INTO `admin_operation_log` VALUES (623, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:05:30', '2020-10-17 06:05:30');
INSERT INTO `admin_operation_log` VALUES (624, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 06:06:26', '2020-10-17 06:06:26');
INSERT INTO `admin_operation_log` VALUES (625, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 06:07:08', '2020-10-17 06:07:08');
INSERT INTO `admin_operation_log` VALUES (626, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 06:07:51', '2020-10-17 06:07:51');
INSERT INTO `admin_operation_log` VALUES (627, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 06:08:37', '2020-10-17 06:08:37');
INSERT INTO `admin_operation_log` VALUES (628, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 06:09:20', '2020-10-17 06:09:20');
INSERT INTO `admin_operation_log` VALUES (629, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 06:09:37', '2020-10-17 06:09:37');
INSERT INTO `admin_operation_log` VALUES (630, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 06:09:49', '2020-10-17 06:09:49');
INSERT INTO `admin_operation_log` VALUES (631, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 06:10:21', '2020-10-17 06:10:21');
INSERT INTO `admin_operation_log` VALUES (632, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 06:10:43', '2020-10-17 06:10:43');
INSERT INTO `admin_operation_log` VALUES (633, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:14:14', '2020-10-17 06:14:14');
INSERT INTO `admin_operation_log` VALUES (634, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:14:16', '2020-10-17 06:14:16');
INSERT INTO `admin_operation_log` VALUES (635, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:15:14', '2020-10-17 06:15:14');
INSERT INTO `admin_operation_log` VALUES (636, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:15:47', '2020-10-17 06:15:47');
INSERT INTO `admin_operation_log` VALUES (637, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\\u4efd\\u989d\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:19:38', '2020-10-17 06:19:38');
INSERT INTO `admin_operation_log` VALUES (638, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:19:39', '2020-10-17 06:19:39');
INSERT INTO `admin_operation_log` VALUES (639, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:19:42', '2020-10-17 06:19:42');
INSERT INTO `admin_operation_log` VALUES (640, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:19:55', '2020-10-17 06:19:55');
INSERT INTO `admin_operation_log` VALUES (641, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:19:58', '2020-10-17 06:19:58');
INSERT INTO `admin_operation_log` VALUES (642, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"999\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:20:07', '2020-10-17 06:20:07');
INSERT INTO `admin_operation_log` VALUES (643, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:20:07', '2020-10-17 06:20:07');
INSERT INTO `admin_operation_log` VALUES (644, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:20:11', '2020-10-17 06:20:11');
INSERT INTO `admin_operation_log` VALUES (645, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:20:45', '2020-10-17 06:20:45');
INSERT INTO `admin_operation_log` VALUES (646, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:20:47', '2020-10-17 06:20:47');
INSERT INTO `admin_operation_log` VALUES (647, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"998\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:21:05', '2020-10-17 06:21:05');
INSERT INTO `admin_operation_log` VALUES (648, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"998\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:27:18', '2020-10-17 06:27:18');
INSERT INTO `admin_operation_log` VALUES (649, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"998\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:28:12', '2020-10-17 06:28:12');
INSERT INTO `admin_operation_log` VALUES (650, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"998\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:28:47', '2020-10-17 06:28:47');
INSERT INTO `admin_operation_log` VALUES (651, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"998\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:29:43', '2020-10-17 06:29:43');
INSERT INTO `admin_operation_log` VALUES (652, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"998\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:30:04', '2020-10-17 06:30:04');
INSERT INTO `admin_operation_log` VALUES (653, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"998\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:31:30', '2020-10-17 06:31:30');
INSERT INTO `admin_operation_log` VALUES (654, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"998\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:31:45', '2020-10-17 06:31:45');
INSERT INTO `admin_operation_log` VALUES (655, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"998\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:31:58', '2020-10-17 06:31:58');
INSERT INTO `admin_operation_log` VALUES (656, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:31:58', '2020-10-17 06:31:58');
INSERT INTO `admin_operation_log` VALUES (657, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:32:03', '2020-10-17 06:32:03');
INSERT INTO `admin_operation_log` VALUES (658, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:32:37', '2020-10-17 06:32:37');
INSERT INTO `admin_operation_log` VALUES (659, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:32:39', '2020-10-17 06:32:39');
INSERT INTO `admin_operation_log` VALUES (660, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:32:41', '2020-10-17 06:32:41');
INSERT INTO `admin_operation_log` VALUES (661, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:32:45', '2020-10-17 06:32:45');
INSERT INTO `admin_operation_log` VALUES (662, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:32:46', '2020-10-17 06:32:46');
INSERT INTO `admin_operation_log` VALUES (663, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:32:49', '2020-10-17 06:32:49');
INSERT INTO `admin_operation_log` VALUES (664, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:33:22', '2020-10-17 06:33:22');
INSERT INTO `admin_operation_log` VALUES (665, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:33:27', '2020-10-17 06:33:27');
INSERT INTO `admin_operation_log` VALUES (666, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:33:31', '2020-10-17 06:33:31');
INSERT INTO `admin_operation_log` VALUES (667, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"999\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:33:41', '2020-10-17 06:33:41');
INSERT INTO `admin_operation_log` VALUES (668, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"999\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:34:03', '2020-10-17 06:34:03');
INSERT INTO `admin_operation_log` VALUES (669, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1001\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:34:13', '2020-10-17 06:34:13');
INSERT INTO `admin_operation_log` VALUES (670, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:34:27', '2020-10-17 06:34:27');
INSERT INTO `admin_operation_log` VALUES (671, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"\\u8d4e\\u56de\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:34:32', '2020-10-17 06:34:32');
INSERT INTO `admin_operation_log` VALUES (672, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"\\u52a0\\u4e00\\u4efd\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:34:46', '2020-10-17 06:34:46');
INSERT INTO `admin_operation_log` VALUES (673, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:34:46', '2020-10-17 06:34:46');
INSERT INTO `admin_operation_log` VALUES (674, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:35:19', '2020-10-17 06:35:19');
INSERT INTO `admin_operation_log` VALUES (675, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:36:25', '2020-10-17 06:36:25');
INSERT INTO `admin_operation_log` VALUES (676, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:37:03', '2020-10-17 06:37:03');
INSERT INTO `admin_operation_log` VALUES (677, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:37:37', '2020-10-17 06:37:37');
INSERT INTO `admin_operation_log` VALUES (678, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"marks\":null,\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:37:41', '2020-10-17 06:37:41');
INSERT INTO `admin_operation_log` VALUES (679, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:39:33', '2020-10-17 06:39:33');
INSERT INTO `admin_operation_log` VALUES (680, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:41:09', '2020-10-17 06:41:09');
INSERT INTO `admin_operation_log` VALUES (681, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":null,\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:41:13', '2020-10-17 06:41:13');
INSERT INTO `admin_operation_log` VALUES (682, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\\u4efd\\u989d\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:41:26', '2020-10-17 06:41:26');
INSERT INTO `admin_operation_log` VALUES (683, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:41:26', '2020-10-17 06:41:26');
INSERT INTO `admin_operation_log` VALUES (684, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:41:31', '2020-10-17 06:41:31');
INSERT INTO `admin_operation_log` VALUES (685, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:41:58', '2020-10-17 06:41:58');
INSERT INTO `admin_operation_log` VALUES (686, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:42:01', '2020-10-17 06:42:01');
INSERT INTO `admin_operation_log` VALUES (687, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\\u4efd\\u989d\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:42:02', '2020-10-17 06:42:02');
INSERT INTO `admin_operation_log` VALUES (688, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:42:03', '2020-10-17 06:42:03');
INSERT INTO `admin_operation_log` VALUES (689, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:42:07', '2020-10-17 06:42:07');
INSERT INTO `admin_operation_log` VALUES (690, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:42:39', '2020-10-17 06:42:39');
INSERT INTO `admin_operation_log` VALUES (691, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:42:41', '2020-10-17 06:42:41');
INSERT INTO `admin_operation_log` VALUES (692, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:43:16', '2020-10-17 06:43:16');
INSERT INTO `admin_operation_log` VALUES (693, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:43:19', '2020-10-17 06:43:19');
INSERT INTO `admin_operation_log` VALUES (694, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:43:20', '2020-10-17 06:43:20');
INSERT INTO `admin_operation_log` VALUES (695, 1, 'admin/user/list/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:43:23', '2020-10-17 06:43:23');
INSERT INTO `admin_operation_log` VALUES (696, 1, 'admin/user/list/2', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"mark\":null,\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:43:25', '2020-10-17 06:43:25');
INSERT INTO `admin_operation_log` VALUES (697, 1, 'admin/user/list/2', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"mark\":\"test\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:43:29', '2020-10-17 06:43:29');
INSERT INTO `admin_operation_log` VALUES (698, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:43:30', '2020-10-17 06:43:30');
INSERT INTO `admin_operation_log` VALUES (699, 1, 'admin/user/list/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:43:40', '2020-10-17 06:43:40');
INSERT INTO `admin_operation_log` VALUES (700, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:43:44', '2020-10-17 06:43:44');
INSERT INTO `admin_operation_log` VALUES (701, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:43:46', '2020-10-17 06:43:46');
INSERT INTO `admin_operation_log` VALUES (702, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:43:50', '2020-10-17 06:43:50');
INSERT INTO `admin_operation_log` VALUES (703, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:43:54', '2020-10-17 06:43:54');
INSERT INTO `admin_operation_log` VALUES (704, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-17 06:45:46', '2020-10-17 06:45:46');
INSERT INTO `admin_operation_log` VALUES (705, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:45:50', '2020-10-17 06:45:50');
INSERT INTO `admin_operation_log` VALUES (706, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:46:31', '2020-10-17 06:46:31');
INSERT INTO `admin_operation_log` VALUES (707, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":null,\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:46:37', '2020-10-17 06:46:37');
INSERT INTO `admin_operation_log` VALUES (708, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"test\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:46:43', '2020-10-17 06:46:43');
INSERT INTO `admin_operation_log` VALUES (709, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:46:44', '2020-10-17 06:46:44');
INSERT INTO `admin_operation_log` VALUES (710, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 06:46:47', '2020-10-17 06:46:47');
INSERT INTO `admin_operation_log` VALUES (711, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"11111111\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:49:19', '2020-10-17 06:49:19');
INSERT INTO `admin_operation_log` VALUES (712, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"11111111\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 06:49:29', '2020-10-17 06:49:29');
INSERT INTO `admin_operation_log` VALUES (713, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:49:33', '2020-10-17 06:49:33');
INSERT INTO `admin_operation_log` VALUES (714, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:50:08', '2020-10-17 06:50:08');
INSERT INTO `admin_operation_log` VALUES (715, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"1111\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:50:11', '2020-10-17 06:50:11');
INSERT INTO `admin_operation_log` VALUES (716, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:53:22', '2020-10-17 06:53:22');
INSERT INTO `admin_operation_log` VALUES (717, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:53:36', '2020-10-17 06:53:36');
INSERT INTO `admin_operation_log` VALUES (718, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":null,\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:53:39', '2020-10-17 06:53:39');
INSERT INTO `admin_operation_log` VALUES (719, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"111\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:53:43', '2020-10-17 06:53:43');
INSERT INTO `admin_operation_log` VALUES (720, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"111\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:54:18', '2020-10-17 06:54:18');
INSERT INTO `admin_operation_log` VALUES (721, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"111\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:54:49', '2020-10-17 06:54:49');
INSERT INTO `admin_operation_log` VALUES (722, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:55:23', '2020-10-17 06:55:23');
INSERT INTO `admin_operation_log` VALUES (723, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":null,\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:55:26', '2020-10-17 06:55:26');
INSERT INTO `admin_operation_log` VALUES (724, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"1\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:55:29', '2020-10-17 06:55:29');
INSERT INTO `admin_operation_log` VALUES (725, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 06:56:26', '2020-10-17 06:56:26');
INSERT INTO `admin_operation_log` VALUES (726, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"1231\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:56:33', '2020-10-17 06:56:33');
INSERT INTO `admin_operation_log` VALUES (727, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"1231\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:57:44', '2020-10-17 06:57:44');
INSERT INTO `admin_operation_log` VALUES (728, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1003\",\"fund_rate\":\"0.50\",\"mark\":\"1231\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:57:54', '2020-10-17 06:57:54');
INSERT INTO `admin_operation_log` VALUES (729, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1006\",\"fund_rate\":\"0.50\",\"mark\":\"1231\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 06:58:00', '2020-10-17 06:58:00');
INSERT INTO `admin_operation_log` VALUES (730, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:02:27', '2020-10-17 07:02:27');
INSERT INTO `admin_operation_log` VALUES (731, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:02:39', '2020-10-17 07:02:39');
INSERT INTO `admin_operation_log` VALUES (732, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:02:42', '2020-10-17 07:02:42');
INSERT INTO `admin_operation_log` VALUES (733, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:02:44', '2020-10-17 07:02:44');
INSERT INTO `admin_operation_log` VALUES (734, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1006\",\"fund_rate\":\"0.50\",\"mark\":\"\\u672a\\u64cd\\u4f5c\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:03:00', '2020-10-17 07:03:00');
INSERT INTO `admin_operation_log` VALUES (735, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:03:01', '2020-10-17 07:03:01');
INSERT INTO `admin_operation_log` VALUES (736, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:03:04', '2020-10-17 07:03:04');
INSERT INTO `admin_operation_log` VALUES (737, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:03:06', '2020-10-17 07:03:06');
INSERT INTO `admin_operation_log` VALUES (738, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:05:50', '2020-10-17 07:05:50');
INSERT INTO `admin_operation_log` VALUES (739, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:05:52', '2020-10-17 07:05:52');
INSERT INTO `admin_operation_log` VALUES (740, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1006\",\"fund_rate\":\"0.50\",\"mark\":\"\\u672a\\u64cd\\u4f5c\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:06:02', '2020-10-17 07:06:02');
INSERT INTO `admin_operation_log` VALUES (741, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1006\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:06:09', '2020-10-17 07:06:09');
INSERT INTO `admin_operation_log` VALUES (742, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1007\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:06:18', '2020-10-17 07:06:18');
INSERT INTO `admin_operation_log` VALUES (743, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1007\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:11:52', '2020-10-17 07:11:52');
INSERT INTO `admin_operation_log` VALUES (744, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 07:11:54', '2020-10-17 07:11:54');
INSERT INTO `admin_operation_log` VALUES (745, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1007\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:11:57', '2020-10-17 07:11:57');
INSERT INTO `admin_operation_log` VALUES (746, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1007\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:13:07', '2020-10-17 07:13:07');
INSERT INTO `admin_operation_log` VALUES (747, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1007\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:13:19', '2020-10-17 07:13:19');
INSERT INTO `admin_operation_log` VALUES (748, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1007\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:13:40', '2020-10-17 07:13:40');
INSERT INTO `admin_operation_log` VALUES (749, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1007\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:13:51', '2020-10-17 07:13:51');
INSERT INTO `admin_operation_log` VALUES (750, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1007\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:15:17', '2020-10-17 07:15:17');
INSERT INTO `admin_operation_log` VALUES (751, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1008\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:15:22', '2020-10-17 07:15:22');
INSERT INTO `admin_operation_log` VALUES (752, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1008\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:15:49', '2020-10-17 07:15:49');
INSERT INTO `admin_operation_log` VALUES (753, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 07:15:53', '2020-10-17 07:15:53');
INSERT INTO `admin_operation_log` VALUES (754, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1008\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:16:21', '2020-10-17 07:16:21');
INSERT INTO `admin_operation_log` VALUES (755, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1009\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:16:25', '2020-10-17 07:16:25');
INSERT INTO `admin_operation_log` VALUES (756, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1009\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:17:38', '2020-10-17 07:17:38');
INSERT INTO `admin_operation_log` VALUES (757, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 07:17:41', '2020-10-17 07:17:41');
INSERT INTO `admin_operation_log` VALUES (758, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1010\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:17:44', '2020-10-17 07:17:44');
INSERT INTO `admin_operation_log` VALUES (759, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:17:45', '2020-10-17 07:17:45');
INSERT INTO `admin_operation_log` VALUES (760, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:17:49', '2020-10-17 07:17:49');
INSERT INTO `admin_operation_log` VALUES (761, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 07:18:32', '2020-10-17 07:18:32');
INSERT INTO `admin_operation_log` VALUES (762, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 07:18:53', '2020-10-17 07:18:53');
INSERT INTO `admin_operation_log` VALUES (763, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:19:08', '2020-10-17 07:19:08');
INSERT INTO `admin_operation_log` VALUES (764, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:19:12', '2020-10-17 07:19:12');
INSERT INTO `admin_operation_log` VALUES (765, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1011\",\"fund_rate\":\"0.50\",\"mark\":\"\\u60f3\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:19:15', '2020-10-17 07:19:15');
INSERT INTO `admin_operation_log` VALUES (766, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:19:16', '2020-10-17 07:19:16');
INSERT INTO `admin_operation_log` VALUES (767, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:19:18', '2020-10-17 07:19:18');
INSERT INTO `admin_operation_log` VALUES (768, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:19:19', '2020-10-17 07:19:19');
INSERT INTO `admin_operation_log` VALUES (769, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 07:19:42', '2020-10-17 07:19:42');
INSERT INTO `admin_operation_log` VALUES (770, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:19:57', '2020-10-17 07:19:57');
INSERT INTO `admin_operation_log` VALUES (771, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 07:20:14', '2020-10-17 07:20:14');
INSERT INTO `admin_operation_log` VALUES (772, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 07:21:15', '2020-10-17 07:21:15');
INSERT INTO `admin_operation_log` VALUES (773, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:21:21', '2020-10-17 07:21:21');
INSERT INTO `admin_operation_log` VALUES (774, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:21:52', '2020-10-17 07:21:52');
INSERT INTO `admin_operation_log` VALUES (775, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:22:03', '2020-10-17 07:22:03');
INSERT INTO `admin_operation_log` VALUES (776, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:22:04', '2020-10-17 07:22:04');
INSERT INTO `admin_operation_log` VALUES (777, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:22:13', '2020-10-17 07:22:13');
INSERT INTO `admin_operation_log` VALUES (778, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":null,\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:22:22', '2020-10-17 07:22:22');
INSERT INTO `admin_operation_log` VALUES (779, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:23:28', '2020-10-17 07:23:28');
INSERT INTO `admin_operation_log` VALUES (780, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 07:23:35', '2020-10-17 07:23:35');
INSERT INTO `admin_operation_log` VALUES (781, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:23:51', '2020-10-17 07:23:51');
INSERT INTO `admin_operation_log` VALUES (782, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:23:57', '2020-10-17 07:23:57');
INSERT INTO `admin_operation_log` VALUES (783, 1, 'admin/user/list/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:23:59', '2020-10-17 07:23:59');
INSERT INTO `admin_operation_log` VALUES (784, 1, 'admin/user/list/2', 'PUT', '127.0.0.1', '{\"fund_amount\":\"100\",\"fund_rate\":\"1.00\",\"mark\":null,\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:24:01', '2020-10-17 07:24:01');
INSERT INTO `admin_operation_log` VALUES (785, 1, 'admin/user/list/2', 'PUT', '127.0.0.1', '{\"fund_amount\":\"101\",\"fund_rate\":\"1.00\",\"mark\":\"\\u589e\\u52a0\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:24:08', '2020-10-17 07:24:08');
INSERT INTO `admin_operation_log` VALUES (786, 1, 'admin/user/list/2', 'PUT', '127.0.0.1', '{\"fund_amount\":\"102\",\"fund_rate\":\"1.00\",\"mark\":\"\\u589e\\u52a0\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:24:55', '2020-10-17 07:24:55');
INSERT INTO `admin_operation_log` VALUES (787, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:24:55', '2020-10-17 07:24:55');
INSERT INTO `admin_operation_log` VALUES (788, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:24:58', '2020-10-17 07:24:58');
INSERT INTO `admin_operation_log` VALUES (789, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1001\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:25:05', '2020-10-17 07:25:05');
INSERT INTO `admin_operation_log` VALUES (790, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:25:05', '2020-10-17 07:25:05');
INSERT INTO `admin_operation_log` VALUES (791, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:25:09', '2020-10-17 07:25:09');
INSERT INTO `admin_operation_log` VALUES (792, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:25:10', '2020-10-17 07:25:10');
INSERT INTO `admin_operation_log` VALUES (793, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:26:42', '2020-10-17 07:26:42');
INSERT INTO `admin_operation_log` VALUES (794, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:26:48', '2020-10-17 07:26:48');
INSERT INTO `admin_operation_log` VALUES (795, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:26:50', '2020-10-17 07:26:50');
INSERT INTO `admin_operation_log` VALUES (796, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:26:55', '2020-10-17 07:26:55');
INSERT INTO `admin_operation_log` VALUES (797, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 07:29:11', '2020-10-17 07:29:11');
INSERT INTO `admin_operation_log` VALUES (798, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 07:29:20', '2020-10-17 07:29:20');
INSERT INTO `admin_operation_log` VALUES (799, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:30:31', '2020-10-17 07:30:31');
INSERT INTO `admin_operation_log` VALUES (800, 1, 'admin/helpers/scaffold/table', 'POST', '127.0.0.1', '{\"db\":\"fund\",\"tb\":\"user_foud_log\"}', '2020-10-17 07:30:38', '2020-10-17 07:30:38');
INSERT INTO `admin_operation_log` VALUES (801, 1, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"singular\":\"user_foud_log\"}', '2020-10-17 07:30:38', '2020-10-17 07:30:38');
INSERT INTO `admin_operation_log` VALUES (802, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:31:44', '2020-10-17 07:31:44');
INSERT INTO `admin_operation_log` VALUES (803, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:31:47', '2020-10-17 07:31:47');
INSERT INTO `admin_operation_log` VALUES (804, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1001\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:31:55', '2020-10-17 07:31:55');
INSERT INTO `admin_operation_log` VALUES (805, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1001\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:32:10', '2020-10-17 07:32:10');
INSERT INTO `admin_operation_log` VALUES (806, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:34:09', '2020-10-17 07:34:09');
INSERT INTO `admin_operation_log` VALUES (807, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:34:25', '2020-10-17 07:34:25');
INSERT INTO `admin_operation_log` VALUES (808, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:35:15', '2020-10-17 07:35:15');
INSERT INTO `admin_operation_log` VALUES (809, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:35:33', '2020-10-17 07:35:33');
INSERT INTO `admin_operation_log` VALUES (810, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:36:41', '2020-10-17 07:36:41');
INSERT INTO `admin_operation_log` VALUES (811, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:37:13', '2020-10-17 07:37:13');
INSERT INTO `admin_operation_log` VALUES (812, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:37:14', '2020-10-17 07:37:14');
INSERT INTO `admin_operation_log` VALUES (813, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:37:17', '2020-10-17 07:37:17');
INSERT INTO `admin_operation_log` VALUES (814, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:37:29', '2020-10-17 07:37:29');
INSERT INTO `admin_operation_log` VALUES (815, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:37:32', '2020-10-17 07:37:32');
INSERT INTO `admin_operation_log` VALUES (816, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1001\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:37:35', '2020-10-17 07:37:35');
INSERT INTO `admin_operation_log` VALUES (817, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:37:35', '2020-10-17 07:37:35');
INSERT INTO `admin_operation_log` VALUES (818, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:37:39', '2020-10-17 07:37:39');
INSERT INTO `admin_operation_log` VALUES (819, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:37:43', '2020-10-17 07:37:43');
INSERT INTO `admin_operation_log` VALUES (820, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 07:38:47', '2020-10-17 07:38:47');
INSERT INTO `admin_operation_log` VALUES (821, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 07:39:44', '2020-10-17 07:39:44');
INSERT INTO `admin_operation_log` VALUES (822, 1, 'admin/user/list', 'GET', '127.0.0.1', '[]', '2020-10-17 07:43:38', '2020-10-17 07:43:38');
INSERT INTO `admin_operation_log` VALUES (823, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:43:43', '2020-10-17 07:43:43');
INSERT INTO `admin_operation_log` VALUES (824, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:43:48', '2020-10-17 07:43:48');
INSERT INTO `admin_operation_log` VALUES (825, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1003\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:44:16', '2020-10-17 07:44:16');
INSERT INTO `admin_operation_log` VALUES (826, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"999\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:44:32', '2020-10-17 07:44:32');
INSERT INTO `admin_operation_log` VALUES (827, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:44:37', '2020-10-17 07:44:37');
INSERT INTO `admin_operation_log` VALUES (828, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1001\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:44:41', '2020-10-17 07:44:41');
INSERT INTO `admin_operation_log` VALUES (829, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"999\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:44:46', '2020-10-17 07:44:46');
INSERT INTO `admin_operation_log` VALUES (830, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 07:47:20', '2020-10-17 07:47:20');
INSERT INTO `admin_operation_log` VALUES (831, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:47:23', '2020-10-17 07:47:23');
INSERT INTO `admin_operation_log` VALUES (832, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:47:39', '2020-10-17 07:47:39');
INSERT INTO `admin_operation_log` VALUES (833, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 07:48:03', '2020-10-17 07:48:03');
INSERT INTO `admin_operation_log` VALUES (834, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1001\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:48:20', '2020-10-17 07:48:20');
INSERT INTO `admin_operation_log` VALUES (835, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:48:26', '2020-10-17 07:48:26');
INSERT INTO `admin_operation_log` VALUES (836, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1003\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:48:37', '2020-10-17 07:48:37');
INSERT INTO `admin_operation_log` VALUES (837, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:48:38', '2020-10-17 07:48:38');
INSERT INTO `admin_operation_log` VALUES (838, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:48:41', '2020-10-17 07:48:41');
INSERT INTO `admin_operation_log` VALUES (839, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1005\",\"fund_rate\":\"0.50\",\"mark\":\"\\u51cf\\u5c11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:48:44', '2020-10-17 07:48:44');
INSERT INTO `admin_operation_log` VALUES (840, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:48:45', '2020-10-17 07:48:45');
INSERT INTO `admin_operation_log` VALUES (841, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:48:47', '2020-10-17 07:48:47');
INSERT INTO `admin_operation_log` VALUES (842, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:48:48', '2020-10-17 07:48:48');
INSERT INTO `admin_operation_log` VALUES (843, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 07:50:40', '2020-10-17 07:50:40');
INSERT INTO `admin_operation_log` VALUES (844, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 07:51:17', '2020-10-17 07:51:17');
INSERT INTO `admin_operation_log` VALUES (845, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:51:26', '2020-10-17 07:51:26');
INSERT INTO `admin_operation_log` VALUES (846, 1, 'admin/user/list/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:51:41', '2020-10-17 07:51:41');
INSERT INTO `admin_operation_log` VALUES (847, 1, 'admin/user/list/5', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1005\",\"fund_rate\":\"0.80\",\"mark\":\"\\u589e\\u52a0reta\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 07:52:02', '2020-10-17 07:52:02');
INSERT INTO `admin_operation_log` VALUES (848, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:52:02', '2020-10-17 07:52:02');
INSERT INTO `admin_operation_log` VALUES (849, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:52:05', '2020-10-17 07:52:05');
INSERT INTO `admin_operation_log` VALUES (850, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:52:41', '2020-10-17 07:52:41');
INSERT INTO `admin_operation_log` VALUES (851, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:52:47', '2020-10-17 07:52:47');
INSERT INTO `admin_operation_log` VALUES (852, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:52:49', '2020-10-17 07:52:49');
INSERT INTO `admin_operation_log` VALUES (853, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:52:53', '2020-10-17 07:52:53');
INSERT INTO `admin_operation_log` VALUES (854, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:52:55', '2020-10-17 07:52:55');
INSERT INTO `admin_operation_log` VALUES (855, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:52:58', '2020-10-17 07:52:58');
INSERT INTO `admin_operation_log` VALUES (856, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:53:01', '2020-10-17 07:53:01');
INSERT INTO `admin_operation_log` VALUES (857, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-10-17 07:53:08', '2020-10-17 07:53:08');
INSERT INTO `admin_operation_log` VALUES (858, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:53:55', '2020-10-17 07:53:55');
INSERT INTO `admin_operation_log` VALUES (859, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:53:59', '2020-10-17 07:53:59');
INSERT INTO `admin_operation_log` VALUES (860, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:54:01', '2020-10-17 07:54:01');
INSERT INTO `admin_operation_log` VALUES (861, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:54:12', '2020-10-17 07:54:12');
INSERT INTO `admin_operation_log` VALUES (862, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 07:54:15', '2020-10-17 07:54:15');
INSERT INTO `admin_operation_log` VALUES (863, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"\\u7528\\u6237\",\"permissions\":\"7,8,9\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-17 07:54:30', '2020-10-17 07:54:30');
INSERT INTO `admin_operation_log` VALUES (864, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:54:30', '2020-10-17 07:54:30');
INSERT INTO `admin_operation_log` VALUES (865, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:54:32', '2020-10-17 07:54:32');
INSERT INTO `admin_operation_log` VALUES (866, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 07:54:44', '2020-10-17 07:54:44');
INSERT INTO `admin_operation_log` VALUES (867, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"fund\",\"name\":\"\\u7edf\\u8ba1\",\"http_method\":[null],\"http_path\":[\"\\/foud\\/log*\",null],\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/permissions\"}', '2020-10-17 07:55:20', '2020-10-17 07:55:20');
INSERT INTO `admin_operation_log` VALUES (868, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"fundlog\",\"name\":\"\\u7edf\\u8ba1\",\"http_method\":[null],\"http_path\":[\"\\/foud\\/log*\",null],\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/permissions\"}', '2020-10-17 07:55:31', '2020-10-17 07:55:31');
INSERT INTO `admin_operation_log` VALUES (869, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:55:32', '2020-10-17 07:55:32');
INSERT INTO `admin_operation_log` VALUES (870, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 07:55:39', '2020-10-17 07:55:39');
INSERT INTO `admin_operation_log` VALUES (871, 1, 'admin/auth/permissions/10/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 07:55:57', '2020-10-17 07:55:57');
INSERT INTO `admin_operation_log` VALUES (872, 1, 'admin/auth/permissions/10', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"fundlog\",\"name\":\"\\u7edf\\u8ba1\",\"http_method\":[null],\"http_path\":[\"\\/foud\\/log*\",\"\\/foud\\/day*\",null],\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:56:13', '2020-10-17 07:56:13');
INSERT INTO `admin_operation_log` VALUES (873, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:56:14', '2020-10-17 07:56:14');
INSERT INTO `admin_operation_log` VALUES (874, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 07:56:16', '2020-10-17 07:56:16');
INSERT INTO `admin_operation_log` VALUES (875, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 07:56:30', '2020-10-17 07:56:30');
INSERT INTO `admin_operation_log` VALUES (876, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"fundMen\",\"name\":\"\\u57fa\\u91d1\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":[\"\\/user\\/list*\",null],\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:56:38', '2020-10-17 07:56:38');
INSERT INTO `admin_operation_log` VALUES (877, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:56:39', '2020-10-17 07:56:39');
INSERT INTO `admin_operation_log` VALUES (878, 1, 'admin/auth/permissions/10/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 07:56:41', '2020-10-17 07:56:41');
INSERT INTO `admin_operation_log` VALUES (879, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 07:56:47', '2020-10-17 07:56:47');
INSERT INTO `admin_operation_log` VALUES (880, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"fundUser\",\"name\":\"\\u57fa\\u91d1\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":[\"\\/user\\/list*\",null],\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\"}', '2020-10-17 07:56:53', '2020-10-17 07:56:53');
INSERT INTO `admin_operation_log` VALUES (881, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:56:53', '2020-10-17 07:56:53');
INSERT INTO `admin_operation_log` VALUES (882, 1, 'admin/auth/permissions/10/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 07:56:55', '2020-10-17 07:56:55');
INSERT INTO `admin_operation_log` VALUES (883, 1, 'admin/auth/permissions/10', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"fund\",\"name\":\"\\u7edf\\u8ba1\",\"http_method\":[null],\"http_path\":[\"\\/foud\\/log*\",\"\\/foud\\/day*\",null],\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/permissions\"}', '2020-10-17 07:56:59', '2020-10-17 07:56:59');
INSERT INTO `admin_operation_log` VALUES (884, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:56:59', '2020-10-17 07:56:59');
INSERT INTO `admin_operation_log` VALUES (885, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 07:57:02', '2020-10-17 07:57:02');
INSERT INTO `admin_operation_log` VALUES (886, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"slug\":\"fundlog\",\"name\":\"\\u57fa\\u91d1\\u8bb0\\u5f55\",\"http_method\":[null],\"http_path\":[\"\\/foud\\/log*\",null],\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/permissions\"}', '2020-10-17 07:57:41', '2020-10-17 07:57:41');
INSERT INTO `admin_operation_log` VALUES (887, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:57:41', '2020-10-17 07:57:41');
INSERT INTO `admin_operation_log` VALUES (888, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:58:02', '2020-10-17 07:58:02');
INSERT INTO `admin_operation_log` VALUES (889, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:58:05', '2020-10-17 07:58:05');
INSERT INTO `admin_operation_log` VALUES (890, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:58:07', '2020-10-17 07:58:07');
INSERT INTO `admin_operation_log` VALUES (891, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:58:09', '2020-10-17 07:58:09');
INSERT INTO `admin_operation_log` VALUES (892, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:58:15', '2020-10-17 07:58:15');
INSERT INTO `admin_operation_log` VALUES (893, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:58:20', '2020-10-17 07:58:20');
INSERT INTO `admin_operation_log` VALUES (894, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:58:22', '2020-10-17 07:58:22');
INSERT INTO `admin_operation_log` VALUES (895, 1, 'admin/auth/menu/11', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 07:58:27', '2020-10-17 07:58:27');
INSERT INTO `admin_operation_log` VALUES (896, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:58:28', '2020-10-17 07:58:28');
INSERT INTO `admin_operation_log` VALUES (897, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-17 07:58:32', '2020-10-17 07:58:32');
INSERT INTO `admin_operation_log` VALUES (898, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:58:34', '2020-10-17 07:58:34');
INSERT INTO `admin_operation_log` VALUES (899, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:58:55', '2020-10-17 07:58:55');
INSERT INTO `admin_operation_log` VALUES (900, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:58:59', '2020-10-17 07:58:59');
INSERT INTO `admin_operation_log` VALUES (901, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:59:01', '2020-10-17 07:59:01');
INSERT INTO `admin_operation_log` VALUES (902, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:59:06', '2020-10-17 07:59:06');
INSERT INTO `admin_operation_log` VALUES (903, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 07:59:09', '2020-10-17 07:59:09');
INSERT INTO `admin_operation_log` VALUES (904, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"\\u7528\\u6237\",\"permissions\":\"7,9,11\",\"_method\":\"PUT\",\"_token\":\"oTaHNyT28f7DOwXUTtZORRT5sLUcTxaKDWIIlVa1\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-17 07:59:15', '2020-10-17 07:59:15');
INSERT INTO `admin_operation_log` VALUES (905, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:59:16', '2020-10-17 07:59:16');
INSERT INTO `admin_operation_log` VALUES (906, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:59:22', '2020-10-17 07:59:22');
INSERT INTO `admin_operation_log` VALUES (907, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 07:59:23', '2020-10-17 07:59:23');
INSERT INTO `admin_operation_log` VALUES (908, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"LFTBBVz0P4nKXsp1k5jXptpayarUh0esF1wpQZiU\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-17 07:59:34', '2020-10-17 07:59:34');
INSERT INTO `admin_operation_log` VALUES (909, 5, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 07:59:35', '2020-10-17 07:59:35');
INSERT INTO `admin_operation_log` VALUES (910, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 07:59:38', '2020-10-17 07:59:38');
INSERT INTO `admin_operation_log` VALUES (911, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 08:00:47', '2020-10-17 08:00:47');
INSERT INTO `admin_operation_log` VALUES (912, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 10:19:11', '2020-10-17 10:19:11');
INSERT INTO `admin_operation_log` VALUES (913, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"z0lIHP2yuiNsJF5iIwy8clxxQgzsWYgiHSHRa5Ta\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-17 10:19:15', '2020-10-17 10:19:15');
INSERT INTO `admin_operation_log` VALUES (914, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:19:16', '2020-10-17 10:19:16');
INSERT INTO `admin_operation_log` VALUES (915, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:19:21', '2020-10-17 10:19:21');
INSERT INTO `admin_operation_log` VALUES (916, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:19:30', '2020-10-17 10:19:30');
INSERT INTO `admin_operation_log` VALUES (917, 1, 'admin/user/list/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:19:48', '2020-10-17 10:19:48');
INSERT INTO `admin_operation_log` VALUES (918, 1, 'admin/user/list/19', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1222\",\"fund_rate\":\"1.00\",\"mark\":\"test\",\"_method\":\"PUT\",\"_token\":\"2dCmXOxNgvb4AFQg4M0vn3R6Mao7lkfZlmODJrK4\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 10:19:54', '2020-10-17 10:19:54');
INSERT INTO `admin_operation_log` VALUES (919, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:19:55', '2020-10-17 10:19:55');
INSERT INTO `admin_operation_log` VALUES (920, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:20:05', '2020-10-17 10:20:05');
INSERT INTO `admin_operation_log` VALUES (921, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:20:14', '2020-10-17 10:20:14');
INSERT INTO `admin_operation_log` VALUES (922, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:20:18', '2020-10-17 10:20:18');
INSERT INTO `admin_operation_log` VALUES (923, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"test\\u7528\\u62371\",\"fund_amount\":\"500\",\"fund_rate\":\"1.23\",\"_token\":\"2dCmXOxNgvb4AFQg4M0vn3R6Mao7lkfZlmODJrK4\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 10:20:46', '2020-10-17 10:20:46');
INSERT INTO `admin_operation_log` VALUES (924, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"test\\u7528\\u62371\",\"fund_amount\":\"500\",\"fund_rate\":\"1.23\",\"_token\":\"2dCmXOxNgvb4AFQg4M0vn3R6Mao7lkfZlmODJrK4\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 10:20:53', '2020-10-17 10:20:53');
INSERT INTO `admin_operation_log` VALUES (925, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"test\\u7528\\u62372\",\"fund_amount\":\"500\",\"fund_rate\":\"1.23\",\"_token\":\"2dCmXOxNgvb4AFQg4M0vn3R6Mao7lkfZlmODJrK4\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 10:21:02', '2020-10-17 10:21:02');
INSERT INTO `admin_operation_log` VALUES (926, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"test\\u7528\\u62372\",\"fund_amount\":\"500\",\"fund_rate\":\"1.23\",\"_token\":\"2dCmXOxNgvb4AFQg4M0vn3R6Mao7lkfZlmODJrK4\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 10:23:27', '2020-10-17 10:23:27');
INSERT INTO `admin_operation_log` VALUES (927, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"test\\u7528\\u62373\",\"fund_amount\":\"500\",\"fund_rate\":\"1.23\",\"_token\":\"2dCmXOxNgvb4AFQg4M0vn3R6Mao7lkfZlmODJrK4\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 10:23:36', '2020-10-17 10:23:36');
INSERT INTO `admin_operation_log` VALUES (928, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:23:38', '2020-10-17 10:23:38');
INSERT INTO `admin_operation_log` VALUES (929, 1, 'admin/user/list/20', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:23:46', '2020-10-17 10:23:46');
INSERT INTO `admin_operation_log` VALUES (930, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:23:46', '2020-10-17 10:23:46');
INSERT INTO `admin_operation_log` VALUES (931, 1, 'admin/user/list/21', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:23:50', '2020-10-17 10:23:50');
INSERT INTO `admin_operation_log` VALUES (932, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:23:50', '2020-10-17 10:23:50');
INSERT INTO `admin_operation_log` VALUES (933, 1, 'admin/user/list/22', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:23:53', '2020-10-17 10:23:53');
INSERT INTO `admin_operation_log` VALUES (934, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:23:54', '2020-10-17 10:23:54');
INSERT INTO `admin_operation_log` VALUES (935, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:23:57', '2020-10-17 10:23:57');
INSERT INTO `admin_operation_log` VALUES (936, 1, 'admin/auth/users/21', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:24:03', '2020-10-17 10:24:03');
INSERT INTO `admin_operation_log` VALUES (937, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:24:03', '2020-10-17 10:24:03');
INSERT INTO `admin_operation_log` VALUES (938, 1, 'admin/auth/users/22', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:24:07', '2020-10-17 10:24:07');
INSERT INTO `admin_operation_log` VALUES (939, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:24:08', '2020-10-17 10:24:08');
INSERT INTO `admin_operation_log` VALUES (940, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:24:13', '2020-10-17 10:24:13');
INSERT INTO `admin_operation_log` VALUES (941, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:24:16', '2020-10-17 10:24:16');
INSERT INTO `admin_operation_log` VALUES (942, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\\u7528\\u62371\",\"fund_amount\":\"1000\",\"fund_rate\":\"0.25\",\"_token\":\"2dCmXOxNgvb4AFQg4M0vn3R6Mao7lkfZlmODJrK4\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 10:26:26', '2020-10-17 10:26:26');
INSERT INTO `admin_operation_log` VALUES (943, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\\u7528\\u62371\",\"fund_amount\":\"1000\",\"fund_rate\":\"0.25\",\"_token\":\"2dCmXOxNgvb4AFQg4M0vn3R6Mao7lkfZlmODJrK4\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 10:26:34', '2020-10-17 10:26:34');
INSERT INTO `admin_operation_log` VALUES (944, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:26:35', '2020-10-17 10:26:35');
INSERT INTO `admin_operation_log` VALUES (945, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:28:34', '2020-10-17 10:28:34');
INSERT INTO `admin_operation_log` VALUES (946, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u6d4b\\u8bd5\\u7528\\u62372\",\"fund_amount\":\"111111\",\"fund_rate\":\"1.25\",\"fund_sum\":null,\"_token\":\"2dCmXOxNgvb4AFQg4M0vn3R6Mao7lkfZlmODJrK4\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 10:28:52', '2020-10-17 10:28:52');
INSERT INTO `admin_operation_log` VALUES (947, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:28:53', '2020-10-17 10:28:53');
INSERT INTO `admin_operation_log` VALUES (948, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:29:19', '2020-10-17 10:29:19');
INSERT INTO `admin_operation_log` VALUES (949, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:29:20', '2020-10-17 10:29:20');
INSERT INTO `admin_operation_log` VALUES (950, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:29:22', '2020-10-17 10:29:22');
INSERT INTO `admin_operation_log` VALUES (951, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-10-17 10:32:11', '2020-10-17 10:32:11');
INSERT INTO `admin_operation_log` VALUES (952, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:32:14', '2020-10-17 10:32:14');
INSERT INTO `admin_operation_log` VALUES (953, 1, 'admin/user/list/23', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:32:19', '2020-10-17 10:32:19');
INSERT INTO `admin_operation_log` VALUES (954, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:34:59', '2020-10-17 10:34:59');
INSERT INTO `admin_operation_log` VALUES (955, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:35:13', '2020-10-17 10:35:13');
INSERT INTO `admin_operation_log` VALUES (956, 1, 'admin/user/list/23', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:35:18', '2020-10-17 10:35:18');
INSERT INTO `admin_operation_log` VALUES (957, 1, 'admin/user/list/23', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:35:35', '2020-10-17 10:35:35');
INSERT INTO `admin_operation_log` VALUES (958, 1, 'admin/user/list/24', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:35:40', '2020-10-17 10:35:40');
INSERT INTO `admin_operation_log` VALUES (959, 1, 'admin/user/list/24', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:36:50', '2020-10-17 10:36:50');
INSERT INTO `admin_operation_log` VALUES (960, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:36:50', '2020-10-17 10:36:50');
INSERT INTO `admin_operation_log` VALUES (961, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:36:54', '2020-10-17 10:36:54');
INSERT INTO `admin_operation_log` VALUES (962, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:37:07', '2020-10-17 10:37:07');
INSERT INTO `admin_operation_log` VALUES (963, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:37:10', '2020-10-17 10:37:10');
INSERT INTO `admin_operation_log` VALUES (964, 1, 'admin/user/list/19', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:37:18', '2020-10-17 10:37:18');
INSERT INTO `admin_operation_log` VALUES (965, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:37:18', '2020-10-17 10:37:18');
INSERT INTO `admin_operation_log` VALUES (966, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:37:26', '2020-10-17 10:37:26');
INSERT INTO `admin_operation_log` VALUES (967, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:37:34', '2020-10-17 10:37:34');
INSERT INTO `admin_operation_log` VALUES (968, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:37:35', '2020-10-17 10:37:35');
INSERT INTO `admin_operation_log` VALUES (969, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:37:36', '2020-10-17 10:37:36');
INSERT INTO `admin_operation_log` VALUES (970, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:37:39', '2020-10-17 10:37:39');
INSERT INTO `admin_operation_log` VALUES (971, 1, 'admin/user/list/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:37:53', '2020-10-17 10:37:53');
INSERT INTO `admin_operation_log` VALUES (972, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:37:54', '2020-10-17 10:37:54');
INSERT INTO `admin_operation_log` VALUES (973, 1, 'admin/user/list/16,18', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:38:06', '2020-10-17 10:38:06');
INSERT INTO `admin_operation_log` VALUES (974, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:38:07', '2020-10-17 10:38:07');
INSERT INTO `admin_operation_log` VALUES (975, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:38:09', '2020-10-17 10:38:09');
INSERT INTO `admin_operation_log` VALUES (976, 1, 'admin/auth/users/20', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:38:20', '2020-10-17 10:38:20');
INSERT INTO `admin_operation_log` VALUES (977, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:38:21', '2020-10-17 10:38:21');
INSERT INTO `admin_operation_log` VALUES (978, 1, 'admin/auth/users/23', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 10:38:24', '2020-10-17 10:38:24');
INSERT INTO `admin_operation_log` VALUES (979, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:38:25', '2020-10-17 10:38:25');
INSERT INTO `admin_operation_log` VALUES (980, 1, 'admin/auth/users/5/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 10:38:28', '2020-10-17 10:38:28');
INSERT INTO `admin_operation_log` VALUES (981, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:38:39', '2020-10-17 10:38:39');
INSERT INTO `admin_operation_log` VALUES (982, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:41:08', '2020-10-17 10:41:08');
INSERT INTO `admin_operation_log` VALUES (983, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 10:46:34', '2020-10-17 10:46:34');
INSERT INTO `admin_operation_log` VALUES (984, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:47:27', '2020-10-17 10:47:27');
INSERT INTO `admin_operation_log` VALUES (985, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:48:21', '2020-10-17 10:48:21');
INSERT INTO `admin_operation_log` VALUES (986, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:49:08', '2020-10-17 10:49:08');
INSERT INTO `admin_operation_log` VALUES (987, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:49:27', '2020-10-17 10:49:27');
INSERT INTO `admin_operation_log` VALUES (988, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:50:25', '2020-10-17 10:50:25');
INSERT INTO `admin_operation_log` VALUES (989, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:50:45', '2020-10-17 10:50:45');
INSERT INTO `admin_operation_log` VALUES (990, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:51:05', '2020-10-17 10:51:05');
INSERT INTO `admin_operation_log` VALUES (991, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:51:42', '2020-10-17 10:51:42');
INSERT INTO `admin_operation_log` VALUES (992, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:52:12', '2020-10-17 10:52:12');
INSERT INTO `admin_operation_log` VALUES (993, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:52:59', '2020-10-17 10:52:59');
INSERT INTO `admin_operation_log` VALUES (994, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:56:18', '2020-10-17 10:56:18');
INSERT INTO `admin_operation_log` VALUES (995, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:56:25', '2020-10-17 10:56:25');
INSERT INTO `admin_operation_log` VALUES (996, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:56:41', '2020-10-17 10:56:41');
INSERT INTO `admin_operation_log` VALUES (997, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:56:54', '2020-10-17 10:56:54');
INSERT INTO `admin_operation_log` VALUES (998, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:57:03', '2020-10-17 10:57:03');
INSERT INTO `admin_operation_log` VALUES (999, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:57:14', '2020-10-17 10:57:14');
INSERT INTO `admin_operation_log` VALUES (1000, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 10:59:41', '2020-10-17 10:59:41');
INSERT INTO `admin_operation_log` VALUES (1001, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:00:29', '2020-10-17 11:00:29');
INSERT INTO `admin_operation_log` VALUES (1002, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:02:35', '2020-10-17 11:02:35');
INSERT INTO `admin_operation_log` VALUES (1003, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:03:01', '2020-10-17 11:03:01');
INSERT INTO `admin_operation_log` VALUES (1004, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:07:55', '2020-10-17 11:07:55');
INSERT INTO `admin_operation_log` VALUES (1005, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:08:29', '2020-10-17 11:08:29');
INSERT INTO `admin_operation_log` VALUES (1006, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:12:36', '2020-10-17 11:12:36');
INSERT INTO `admin_operation_log` VALUES (1007, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:13:07', '2020-10-17 11:13:07');
INSERT INTO `admin_operation_log` VALUES (1008, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:13:21', '2020-10-17 11:13:21');
INSERT INTO `admin_operation_log` VALUES (1009, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:13:30', '2020-10-17 11:13:30');
INSERT INTO `admin_operation_log` VALUES (1010, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:14:07', '2020-10-17 11:14:07');
INSERT INTO `admin_operation_log` VALUES (1011, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:14:40', '2020-10-17 11:14:40');
INSERT INTO `admin_operation_log` VALUES (1012, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:15:29', '2020-10-17 11:15:29');
INSERT INTO `admin_operation_log` VALUES (1013, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:15:34', '2020-10-17 11:15:34');
INSERT INTO `admin_operation_log` VALUES (1014, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:15:52', '2020-10-17 11:15:52');
INSERT INTO `admin_operation_log` VALUES (1015, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:16:12', '2020-10-17 11:16:12');
INSERT INTO `admin_operation_log` VALUES (1016, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:16:17', '2020-10-17 11:16:17');
INSERT INTO `admin_operation_log` VALUES (1017, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:18:11', '2020-10-17 11:18:11');
INSERT INTO `admin_operation_log` VALUES (1018, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:18:21', '2020-10-17 11:18:21');
INSERT INTO `admin_operation_log` VALUES (1019, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:18:29', '2020-10-17 11:18:29');
INSERT INTO `admin_operation_log` VALUES (1020, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 11:18:30', '2020-10-17 11:18:30');
INSERT INTO `admin_operation_log` VALUES (1021, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"MDsy2Z1ajmNaDokhPysEChDrJ65WzTRS0Gj36Q5M\",\"username\":\"\\u7528\\u62375\",\"password\":\"456******\"}', '2020-10-17 11:18:36', '2020-10-17 11:18:36');
INSERT INTO `admin_operation_log` VALUES (1022, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"MDsy2Z1ajmNaDokhPysEChDrJ65WzTRS0Gj36Q5M\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-17 11:18:39', '2020-10-17 11:18:39');
INSERT INTO `admin_operation_log` VALUES (1023, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"MDsy2Z1ajmNaDokhPysEChDrJ65WzTRS0Gj36Q5M\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-17 11:18:44', '2020-10-17 11:18:44');
INSERT INTO `admin_operation_log` VALUES (1024, 5, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:18:45', '2020-10-17 11:18:45');
INSERT INTO `admin_operation_log` VALUES (1025, 5, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:18:48', '2020-10-17 11:18:48');
INSERT INTO `admin_operation_log` VALUES (1026, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 11:18:48', '2020-10-17 11:18:48');
INSERT INTO `admin_operation_log` VALUES (1027, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"a28XXU1G4zRPKf3gmPHOul6T7WGkyIbgZPix7pWt\",\"username\":\"1\",\"password\":\"123******\"}', '2020-10-17 11:18:58', '2020-10-17 11:18:58');
INSERT INTO `admin_operation_log` VALUES (1028, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"a28XXU1G4zRPKf3gmPHOul6T7WGkyIbgZPix7pWt\",\"username\":\"\\u7528\\u62375\",\"password\":\"112******\"}', '2020-10-17 11:21:31', '2020-10-17 11:21:31');
INSERT INTO `admin_operation_log` VALUES (1029, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"a28XXU1G4zRPKf3gmPHOul6T7WGkyIbgZPix7pWt\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-17 11:21:38', '2020-10-17 11:21:38');
INSERT INTO `admin_operation_log` VALUES (1030, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"a28XXU1G4zRPKf3gmPHOul6T7WGkyIbgZPix7pWt\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-17 11:21:42', '2020-10-17 11:21:42');
INSERT INTO `admin_operation_log` VALUES (1031, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"a28XXU1G4zRPKf3gmPHOul6T7WGkyIbgZPix7pWt\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-17 11:21:50', '2020-10-17 11:21:50');
INSERT INTO `admin_operation_log` VALUES (1032, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"a28XXU1G4zRPKf3gmPHOul6T7WGkyIbgZPix7pWt\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-17 11:21:54', '2020-10-17 11:21:54');
INSERT INTO `admin_operation_log` VALUES (1033, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"a28XXU1G4zRPKf3gmPHOul6T7WGkyIbgZPix7pWt\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-17 11:21:58', '2020-10-17 11:21:58');
INSERT INTO `admin_operation_log` VALUES (1034, 5, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:21:59', '2020-10-17 11:21:59');
INSERT INTO `admin_operation_log` VALUES (1035, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:22:13', '2020-10-17 11:22:13');
INSERT INTO `admin_operation_log` VALUES (1036, 5, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:22:15', '2020-10-17 11:22:15');
INSERT INTO `admin_operation_log` VALUES (1037, 5, 'admin/helpers/extensions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:22:17', '2020-10-17 11:22:17');
INSERT INTO `admin_operation_log` VALUES (1038, 5, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:22:19', '2020-10-17 11:22:19');
INSERT INTO `admin_operation_log` VALUES (1039, 5, 'admin/helpers/icons', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:22:20', '2020-10-17 11:22:20');
INSERT INTO `admin_operation_log` VALUES (1040, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:22:21', '2020-10-17 11:22:21');
INSERT INTO `admin_operation_log` VALUES (1041, 5, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:22:34', '2020-10-17 11:22:34');
INSERT INTO `admin_operation_log` VALUES (1042, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:22:51', '2020-10-17 11:22:51');
INSERT INTO `admin_operation_log` VALUES (1043, 5, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:22:53', '2020-10-17 11:22:53');
INSERT INTO `admin_operation_log` VALUES (1044, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 11:22:53', '2020-10-17 11:22:53');
INSERT INTO `admin_operation_log` VALUES (1045, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"YgoMxCICyMYo5yoywDhWou4LQyuZRDkT2trDFWiN\",\"username\":\"\\u7528\\u62374\",\"password\":\"456******\"}', '2020-10-17 11:22:58', '2020-10-17 11:22:58');
INSERT INTO `admin_operation_log` VALUES (1046, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"YgoMxCICyMYo5yoywDhWou4LQyuZRDkT2trDFWiN\",\"username\":\"\\u7528\\u62374\",\"password\":\"123******\"}', '2020-10-17 11:23:02', '2020-10-17 11:23:02');
INSERT INTO `admin_operation_log` VALUES (1047, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"YgoMxCICyMYo5yoywDhWou4LQyuZRDkT2trDFWiN\",\"username\":\"\\u7528\\u62374\",\"password\":\"456******\"}', '2020-10-17 11:23:05', '2020-10-17 11:23:05');
INSERT INTO `admin_operation_log` VALUES (1048, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"YgoMxCICyMYo5yoywDhWou4LQyuZRDkT2trDFWiN\",\"username\":\"\\u7528\\u62374\",\"password\":\"456******\"}', '2020-10-17 11:23:09', '2020-10-17 11:23:09');
INSERT INTO `admin_operation_log` VALUES (1049, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"YgoMxCICyMYo5yoywDhWou4LQyuZRDkT2trDFWiN\",\"username\":\"\\u7528\\u62374\",\"password\":\"123******\"}', '2020-10-17 11:23:14', '2020-10-17 11:23:14');
INSERT INTO `admin_operation_log` VALUES (1050, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"YgoMxCICyMYo5yoywDhWou4LQyuZRDkT2trDFWiN\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-17 11:23:16', '2020-10-17 11:23:16');
INSERT INTO `admin_operation_log` VALUES (1051, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 11:23:17', '2020-10-17 11:23:17');
INSERT INTO `admin_operation_log` VALUES (1052, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:23:20', '2020-10-17 11:23:20');
INSERT INTO `admin_operation_log` VALUES (1053, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:23:31', '2020-10-17 11:23:31');
INSERT INTO `admin_operation_log` VALUES (1054, 1, 'admin/user/list/2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 11:23:35', '2020-10-17 11:23:35');
INSERT INTO `admin_operation_log` VALUES (1055, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:23:35', '2020-10-17 11:23:35');
INSERT INTO `admin_operation_log` VALUES (1056, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:23:38', '2020-10-17 11:23:38');
INSERT INTO `admin_operation_log` VALUES (1057, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:23:49', '2020-10-17 11:23:49');
INSERT INTO `admin_operation_log` VALUES (1058, 1, 'admin/user/list/3', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 11:23:53', '2020-10-17 11:23:53');
INSERT INTO `admin_operation_log` VALUES (1059, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:23:53', '2020-10-17 11:23:53');
INSERT INTO `admin_operation_log` VALUES (1060, 1, 'admin/user/list/4', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 11:23:56', '2020-10-17 11:23:56');
INSERT INTO `admin_operation_log` VALUES (1061, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:23:57', '2020-10-17 11:23:57');
INSERT INTO `admin_operation_log` VALUES (1062, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:24:00', '2020-10-17 11:24:00');
INSERT INTO `admin_operation_log` VALUES (1063, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:24:03', '2020-10-17 11:24:03');
INSERT INTO `admin_operation_log` VALUES (1064, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:24:06', '2020-10-17 11:24:06');
INSERT INTO `admin_operation_log` VALUES (1065, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 11:24:43', '2020-10-17 11:24:43');
INSERT INTO `admin_operation_log` VALUES (1066, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 11:25:43', '2020-10-17 11:25:43');
INSERT INTO `admin_operation_log` VALUES (1067, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:25:51', '2020-10-17 11:25:51');
INSERT INTO `admin_operation_log` VALUES (1068, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:25:56', '2020-10-17 11:25:56');
INSERT INTO `admin_operation_log` VALUES (1069, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62371\",\"fund_amount\":\"1000\",\"fund_rate\":\"1.5\",\"fund_sum\":null,\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 11:26:11', '2020-10-17 11:26:11');
INSERT INTO `admin_operation_log` VALUES (1070, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:26:12', '2020-10-17 11:26:12');
INSERT INTO `admin_operation_log` VALUES (1071, 1, 'admin/user/list/25/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:26:20', '2020-10-17 11:26:20');
INSERT INTO `admin_operation_log` VALUES (1072, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:29:04', '2020-10-17 11:29:04');
INSERT INTO `admin_operation_log` VALUES (1073, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:33:23', '2020-10-17 11:33:23');
INSERT INTO `admin_operation_log` VALUES (1074, 1, 'admin/user/list/25/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:33:26', '2020-10-17 11:33:26');
INSERT INTO `admin_operation_log` VALUES (1075, 1, 'admin/user/list/25/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 11:34:19', '2020-10-17 11:34:19');
INSERT INTO `admin_operation_log` VALUES (1076, 1, 'admin/user/list/25/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 11:34:28', '2020-10-17 11:34:28');
INSERT INTO `admin_operation_log` VALUES (1077, 1, 'admin/user/list/25/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 11:36:28', '2020-10-17 11:36:28');
INSERT INTO `admin_operation_log` VALUES (1078, 1, 'admin/user/list/25', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.50\",\"day\":\"2020-10-16\",\"mark\":null,\"fund_sum\":\"1015.00\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\"}', '2020-10-17 11:36:46', '2020-10-17 11:36:46');
INSERT INTO `admin_operation_log` VALUES (1079, 1, 'admin/user/list/25', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.50\",\"day\":\"2020-10-16\",\"mark\":\"1\",\"fund_sum\":\"1015.00\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\"}', '2020-10-17 11:36:50', '2020-10-17 11:36:50');
INSERT INTO `admin_operation_log` VALUES (1080, 1, 'admin/user/list/25', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.50\",\"day\":\"2020-10-16\",\"mark\":\"1\",\"fund_sum\":\"1015.00\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\"}', '2020-10-17 11:38:21', '2020-10-17 11:38:21');
INSERT INTO `admin_operation_log` VALUES (1081, 1, 'admin/user/list/25/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 11:41:44', '2020-10-17 11:41:44');
INSERT INTO `admin_operation_log` VALUES (1082, 1, 'admin/user/list/25/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 11:42:07', '2020-10-17 11:42:07');
INSERT INTO `admin_operation_log` VALUES (1083, 1, 'admin/user/list/25/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 11:43:07', '2020-10-17 11:43:07');
INSERT INTO `admin_operation_log` VALUES (1084, 1, 'admin/user/list/25', 'PUT', '127.0.0.1', '{\"day\":\"2020-10-16\",\"fund_amount\":\"1000\",\"fund_rate\":\"1.50\",\"mark\":null,\"fund_sum\":\"1015.00\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\"}', '2020-10-17 11:43:15', '2020-10-17 11:43:15');
INSERT INTO `admin_operation_log` VALUES (1085, 1, 'admin/user/list/25', 'PUT', '127.0.0.1', '{\"day\":\"2020-10-16\",\"fund_amount\":\"1000\",\"fund_rate\":\"1.50\",\"mark\":\"test\",\"fund_sum\":\"1015.00\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\"}', '2020-10-17 11:43:20', '2020-10-17 11:43:20');
INSERT INTO `admin_operation_log` VALUES (1086, 1, 'admin/user/list/25', 'PUT', '127.0.0.1', '{\"day\":\"2020-10-16\",\"fund_amount\":\"1000\",\"fund_rate\":\"1.50\",\"mark\":\"test\",\"fund_sum\":\"1015.00\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\"}', '2020-10-17 11:43:30', '2020-10-17 11:43:30');
INSERT INTO `admin_operation_log` VALUES (1087, 1, 'admin/user/list/25', 'PUT', '127.0.0.1', '{\"day\":\"2020-10-16\",\"fund_amount\":\"1000\",\"fund_rate\":\"1.50\",\"mark\":\"test\",\"fund_sum\":\"1015.00\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\"}', '2020-10-17 11:44:11', '2020-10-17 11:44:11');
INSERT INTO `admin_operation_log` VALUES (1088, 1, 'admin/user/list/25', 'PUT', '127.0.0.1', '{\"day\":\"2020-10-16\",\"fund_amount\":\"1000\",\"fund_rate\":\"1.50\",\"mark\":\"test\",\"fund_sum\":\"1015.00\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\"}', '2020-10-17 11:44:50', '2020-10-17 11:44:50');
INSERT INTO `admin_operation_log` VALUES (1089, 1, 'admin/user/list/25', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 11:45:03', '2020-10-17 11:45:03');
INSERT INTO `admin_operation_log` VALUES (1090, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:45:03', '2020-10-17 11:45:03');
INSERT INTO `admin_operation_log` VALUES (1091, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:45:07', '2020-10-17 11:45:07');
INSERT INTO `admin_operation_log` VALUES (1092, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:45:15', '2020-10-17 11:45:15');
INSERT INTO `admin_operation_log` VALUES (1093, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:45:17', '2020-10-17 11:45:17');
INSERT INTO `admin_operation_log` VALUES (1094, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62372\",\"day\":\"2020-10-17\",\"fund_amount\":\"10000\",\"fund_rate\":null,\"fund_sum\":null,\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 11:45:29', '2020-10-17 11:45:29');
INSERT INTO `admin_operation_log` VALUES (1095, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62372\",\"day\":\"2020-10-17\",\"fund_amount\":\"10000\",\"fund_rate\":null,\"fund_sum\":null,\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 11:45:33', '2020-10-17 11:45:33');
INSERT INTO `admin_operation_log` VALUES (1096, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62372\",\"day\":\"2020-10-17\",\"fund_amount\":\"10000\",\"fund_rate\":\"1\",\"fund_sum\":null,\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 11:45:42', '2020-10-17 11:45:42');
INSERT INTO `admin_operation_log` VALUES (1097, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:46:15', '2020-10-17 11:46:15');
INSERT INTO `admin_operation_log` VALUES (1098, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:46:19', '2020-10-17 11:46:19');
INSERT INTO `admin_operation_log` VALUES (1099, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:46:22', '2020-10-17 11:46:22');
INSERT INTO `admin_operation_log` VALUES (1100, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62372\",\"day\":\"2020-10-17\",\"fund_amount\":\"10000\",\"fund_rate\":\"1.6\",\"fund_sum\":null,\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 11:46:33', '2020-10-17 11:46:33');
INSERT INTO `admin_operation_log` VALUES (1101, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"\\u7528\\u62372\",\"day\":\"2020-10-17\",\"fund_amount\":\"10000\",\"fund_rate\":\"1.6\",\"fund_sum\":null,\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 11:48:44', '2020-10-17 11:48:44');
INSERT INTO `admin_operation_log` VALUES (1102, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:48:56', '2020-10-17 11:48:56');
INSERT INTO `admin_operation_log` VALUES (1103, 1, 'admin/user/list/26', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 11:49:03', '2020-10-17 11:49:03');
INSERT INTO `admin_operation_log` VALUES (1104, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:49:04', '2020-10-17 11:49:04');
INSERT INTO `admin_operation_log` VALUES (1105, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:49:05', '2020-10-17 11:49:05');
INSERT INTO `admin_operation_log` VALUES (1106, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"test1\",\"day\":\"2020-10-17\",\"fund_amount\":\"111\",\"fund_rate\":\"1\",\"fund_sum\":null,\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 11:49:15', '2020-10-17 11:49:15');
INSERT INTO `admin_operation_log` VALUES (1107, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:49:21', '2020-10-17 11:49:21');
INSERT INTO `admin_operation_log` VALUES (1108, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:51:09', '2020-10-17 11:51:09');
INSERT INTO `admin_operation_log` VALUES (1109, 1, 'admin/user/list/27/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:51:12', '2020-10-17 11:51:12');
INSERT INTO `admin_operation_log` VALUES (1110, 1, 'admin/user/list/27', 'PUT', '127.0.0.1', '{\"fund_amount\":\"112\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-16\",\"mark\":null,\"fund_sum\":\"112.11\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 11:51:19', '2020-10-17 11:51:19');
INSERT INTO `admin_operation_log` VALUES (1111, 1, 'admin/user/list/27', 'PUT', '127.0.0.1', '{\"fund_amount\":\"112\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-16\",\"mark\":null,\"fund_sum\":\"112.11\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 11:51:37', '2020-10-17 11:51:37');
INSERT INTO `admin_operation_log` VALUES (1112, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:52:05', '2020-10-17 11:52:05');
INSERT INTO `admin_operation_log` VALUES (1113, 1, 'admin/user/list/27', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 11:52:08', '2020-10-17 11:52:08');
INSERT INTO `admin_operation_log` VALUES (1114, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:52:08', '2020-10-17 11:52:08');
INSERT INTO `admin_operation_log` VALUES (1115, 1, 'admin/user/list/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:52:11', '2020-10-17 11:52:11');
INSERT INTO `admin_operation_log` VALUES (1116, 1, 'admin/user/list', 'POST', '127.0.0.1', '{\"name\":\"testUser\",\"fund_amount\":\"1000\",\"fund_rate\":\"1\",\"fund_sum\":null,\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 11:52:24', '2020-10-17 11:52:24');
INSERT INTO `admin_operation_log` VALUES (1117, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:52:24', '2020-10-17 11:52:24');
INSERT INTO `admin_operation_log` VALUES (1118, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:52:30', '2020-10-17 11:52:30');
INSERT INTO `admin_operation_log` VALUES (1119, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:52:42', '2020-10-17 11:52:42');
INSERT INTO `admin_operation_log` VALUES (1120, 1, 'admin/user/list/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:52:45', '2020-10-17 11:52:45');
INSERT INTO `admin_operation_log` VALUES (1121, 1, 'admin/user/list/28', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-16\",\"mark\":null,\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 11:52:51', '2020-10-17 11:52:51');
INSERT INTO `admin_operation_log` VALUES (1122, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:52:51', '2020-10-17 11:52:51');
INSERT INTO `admin_operation_log` VALUES (1123, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:52:58', '2020-10-17 11:52:58');
INSERT INTO `admin_operation_log` VALUES (1124, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:53:29', '2020-10-17 11:53:29');
INSERT INTO `admin_operation_log` VALUES (1125, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 11:57:17', '2020-10-17 11:57:17');
INSERT INTO `admin_operation_log` VALUES (1126, 1, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 12:04:01', '2020-10-17 12:04:01');
INSERT INTO `admin_operation_log` VALUES (1127, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:04:06', '2020-10-17 12:04:06');
INSERT INTO `admin_operation_log` VALUES (1128, 1, 'admin/user/list/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:04:09', '2020-10-17 12:04:09');
INSERT INTO `admin_operation_log` VALUES (1129, 1, 'admin/user/list/28', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1001\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-17\",\"mark\":null,\"fund_sum\":\"1010.00\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 12:04:54', '2020-10-17 12:04:54');
INSERT INTO `admin_operation_log` VALUES (1130, 1, 'admin/user/list/28/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 12:10:27', '2020-10-17 12:10:27');
INSERT INTO `admin_operation_log` VALUES (1131, 1, 'admin/user/list/28', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1002\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-17\",\"mark\":null,\"fund_sum\":\"1011.01\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\"}', '2020-10-17 12:10:32', '2020-10-17 12:10:32');
INSERT INTO `admin_operation_log` VALUES (1132, 1, 'admin/user/list/28/edit', 'GET', '127.0.0.1', '[]', '2020-10-17 12:10:46', '2020-10-17 12:10:46');
INSERT INTO `admin_operation_log` VALUES (1133, 1, 'admin/user/list/28', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1003\",\"fund_rate\":\"1.00\",\"day\":\"2020-10-16\",\"mark\":null,\"fund_sum\":\"1012.02\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\"}', '2020-10-17 12:10:53', '2020-10-17 12:10:53');
INSERT INTO `admin_operation_log` VALUES (1134, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:10:53', '2020-10-17 12:10:53');
INSERT INTO `admin_operation_log` VALUES (1135, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:10:58', '2020-10-17 12:10:58');
INSERT INTO `admin_operation_log` VALUES (1136, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:11:24', '2020-10-17 12:11:24');
INSERT INTO `admin_operation_log` VALUES (1137, 1, 'admin/user/list/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:11:28', '2020-10-17 12:11:28');
INSERT INTO `admin_operation_log` VALUES (1138, 1, 'admin/user/list/28', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1010\",\"fund_rate\":\"1.10\",\"day\":\"2020-10-17\",\"mark\":null,\"fund_sum\":\"1013.03\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 12:11:38', '2020-10-17 12:11:38');
INSERT INTO `admin_operation_log` VALUES (1139, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:11:39', '2020-10-17 12:11:39');
INSERT INTO `admin_operation_log` VALUES (1140, 1, 'admin/user/list/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:11:42', '2020-10-17 12:11:42');
INSERT INTO `admin_operation_log` VALUES (1141, 1, 'admin/user/list/28', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1009\",\"fund_rate\":\"1.10\",\"day\":\"2020-10-17\",\"mark\":null,\"fund_sum\":\"1021.11\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 12:11:46', '2020-10-17 12:11:46');
INSERT INTO `admin_operation_log` VALUES (1142, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:11:46', '2020-10-17 12:11:46');
INSERT INTO `admin_operation_log` VALUES (1143, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:11:51', '2020-10-17 12:11:51');
INSERT INTO `admin_operation_log` VALUES (1144, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:11:59', '2020-10-17 12:11:59');
INSERT INTO `admin_operation_log` VALUES (1145, 1, 'admin/user/list/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:12:02', '2020-10-17 12:12:02');
INSERT INTO `admin_operation_log` VALUES (1146, 1, 'admin/user/list/28', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1003\",\"fund_rate\":\"1.10\",\"day\":\"2020-10-15\",\"mark\":null,\"fund_sum\":\"1020.10\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 12:12:12', '2020-10-17 12:12:12');
INSERT INTO `admin_operation_log` VALUES (1147, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:12:13', '2020-10-17 12:12:13');
INSERT INTO `admin_operation_log` VALUES (1148, 1, 'admin/user/list/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:12:15', '2020-10-17 12:12:15');
INSERT INTO `admin_operation_log` VALUES (1149, 1, 'admin/user/list/28', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1000\",\"fund_rate\":\"1.10\",\"day\":\"2020-10-12\",\"mark\":null,\"fund_sum\":\"1014.03\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 12:12:37', '2020-10-17 12:12:37');
INSERT INTO `admin_operation_log` VALUES (1150, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:12:38', '2020-10-17 12:12:38');
INSERT INTO `admin_operation_log` VALUES (1151, 1, 'admin/user/list/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:12:40', '2020-10-17 12:12:40');
INSERT INTO `admin_operation_log` VALUES (1152, 1, 'admin/user/list/28', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1010\",\"fund_rate\":\"1.10\",\"day\":\"2020-10-13\",\"mark\":null,\"fund_sum\":\"1011.00\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 12:12:48', '2020-10-17 12:12:48');
INSERT INTO `admin_operation_log` VALUES (1153, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:12:49', '2020-10-17 12:12:49');
INSERT INTO `admin_operation_log` VALUES (1154, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:12:53', '2020-10-17 12:12:53');
INSERT INTO `admin_operation_log` VALUES (1155, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:13:12', '2020-10-17 12:13:12');
INSERT INTO `admin_operation_log` VALUES (1156, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:13:13', '2020-10-17 12:13:13');
INSERT INTO `admin_operation_log` VALUES (1157, 1, 'admin/user/list/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:13:20', '2020-10-17 12:13:20');
INSERT INTO `admin_operation_log` VALUES (1158, 1, 'admin/user/list/28', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1021\",\"fund_rate\":\"1.10\",\"day\":\"2020-10-14\",\"mark\":null,\"fund_sum\":\"1021.11\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 12:13:36', '2020-10-17 12:13:36');
INSERT INTO `admin_operation_log` VALUES (1159, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:13:37', '2020-10-17 12:13:37');
INSERT INTO `admin_operation_log` VALUES (1160, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:13:43', '2020-10-17 12:13:43');
INSERT INTO `admin_operation_log` VALUES (1161, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:13:57', '2020-10-17 12:13:57');
INSERT INTO `admin_operation_log` VALUES (1162, 1, 'admin/user/list/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:13:59', '2020-10-17 12:13:59');
INSERT INTO `admin_operation_log` VALUES (1163, 1, 'admin/user/list/28', 'PUT', '127.0.0.1', '{\"fund_amount\":\"1020\",\"fund_rate\":\"1.10\",\"day\":\"2020-10-14\",\"mark\":null,\"fund_sum\":\"1032.23\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/user\\/list\"}', '2020-10-17 12:14:07', '2020-10-17 12:14:07');
INSERT INTO `admin_operation_log` VALUES (1164, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:14:08', '2020-10-17 12:14:08');
INSERT INTO `admin_operation_log` VALUES (1165, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:14:22', '2020-10-17 12:14:22');
INSERT INTO `admin_operation_log` VALUES (1166, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:14:24', '2020-10-17 12:14:24');
INSERT INTO `admin_operation_log` VALUES (1167, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:14:45', '2020-10-17 12:14:45');
INSERT INTO `admin_operation_log` VALUES (1168, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:14:54', '2020-10-17 12:14:54');
INSERT INTO `admin_operation_log` VALUES (1169, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u7528\\u6237\\u6bcf\\u65e5\\u57fa\\u91d1\",\"icon\":\"fa-align-center\",\"uri\":\"fund\\/day\",\"roles\":[null],\"permissions\":null,\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\"}', '2020-10-17 12:15:57', '2020-10-17 12:15:57');
INSERT INTO `admin_operation_log` VALUES (1170, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-17 12:15:59', '2020-10-17 12:15:59');
INSERT INTO `admin_operation_log` VALUES (1171, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:16:03', '2020-10-17 12:16:03');
INSERT INTO `admin_operation_log` VALUES (1172, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:16:31', '2020-10-17 12:16:31');
INSERT INTO `admin_operation_log` VALUES (1173, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u57fa\\u91d1\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-align-right\",\"uri\":\"user\\/list\",\"roles\":[\"1\",null],\"permissions\":\"2,3,4,5,6\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-17 12:16:50', '2020-10-17 12:16:50');
INSERT INTO `admin_operation_log` VALUES (1174, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:16:50', '2020-10-17 12:16:50');
INSERT INTO `admin_operation_log` VALUES (1175, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-17 12:16:52', '2020-10-17 12:16:52');
INSERT INTO `admin_operation_log` VALUES (1176, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:16:58', '2020-10-17 12:16:58');
INSERT INTO `admin_operation_log` VALUES (1177, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:17:05', '2020-10-17 12:17:05');
INSERT INTO `admin_operation_log` VALUES (1178, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u57fa\\u91d1\\u8bb0\\u5f55\",\"icon\":null,\"uri\":\"foud\\/log\",\"roles\":[\"1\",null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-17 12:17:10', '2020-10-17 12:17:10');
INSERT INTO `admin_operation_log` VALUES (1179, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:17:10', '2020-10-17 12:17:10');
INSERT INTO `admin_operation_log` VALUES (1180, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-17 12:17:12', '2020-10-17 12:17:12');
INSERT INTO `admin_operation_log` VALUES (1181, 1, 'admin/auth/menu/9', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 12:17:13', '2020-10-17 12:17:13');
INSERT INTO `admin_operation_log` VALUES (1182, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-17 12:17:19', '2020-10-17 12:17:19');
INSERT INTO `admin_operation_log` VALUES (1183, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:17:24', '2020-10-17 12:17:24');
INSERT INTO `admin_operation_log` VALUES (1184, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:17:36', '2020-10-17 12:17:36');
INSERT INTO `admin_operation_log` VALUES (1185, 1, 'admin/auth/permissions/8/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:17:40', '2020-10-17 12:17:40');
INSERT INTO `admin_operation_log` VALUES (1186, 1, 'admin/auth/permissions/8', 'PUT', '127.0.0.1', '{\"parent_id\":null,\"slug\":\"fundUser\",\"name\":\"\\u57fa\\u91d1\\u7528\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":[\"\\/user\\/list*\",null],\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/permissions\"}', '2020-10-17 12:17:52', '2020-10-17 12:17:52');
INSERT INTO `admin_operation_log` VALUES (1187, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:17:52', '2020-10-17 12:17:52');
INSERT INTO `admin_operation_log` VALUES (1188, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:17:58', '2020-10-17 12:17:58');
INSERT INTO `admin_operation_log` VALUES (1189, 1, 'admin/auth/permissions', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"slug\":\"fundday\",\"name\":\"\\u57fa\\u91d1\\u6bcf\\u65e5\\u8bb0\\u5f55\",\"http_method\":[null],\"http_path\":[\"\\/foud\\/day*\",null],\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/permissions\"}', '2020-10-17 12:18:27', '2020-10-17 12:18:27');
INSERT INTO `admin_operation_log` VALUES (1190, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:18:28', '2020-10-17 12:18:28');
INSERT INTO `admin_operation_log` VALUES (1191, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:18:31', '2020-10-17 12:18:31');
INSERT INTO `admin_operation_log` VALUES (1192, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:18:34', '2020-10-17 12:18:34');
INSERT INTO `admin_operation_log` VALUES (1193, 1, 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"slug\":\"administrator\",\"name\":\"Administrator\",\"permissions\":\"2,3,4,5,6,7,8,9,11,12\",\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-17 12:18:40', '2020-10-17 12:18:40');
INSERT INTO `admin_operation_log` VALUES (1194, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:18:41', '2020-10-17 12:18:41');
INSERT INTO `admin_operation_log` VALUES (1195, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:18:43', '2020-10-17 12:18:43');
INSERT INTO `admin_operation_log` VALUES (1196, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:18:55', '2020-10-17 12:18:55');
INSERT INTO `admin_operation_log` VALUES (1197, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:18:57', '2020-10-17 12:18:57');
INSERT INTO `admin_operation_log` VALUES (1198, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:19:15', '2020-10-17 12:19:15');
INSERT INTO `admin_operation_log` VALUES (1199, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:19:20', '2020-10-17 12:19:20');
INSERT INTO `admin_operation_log` VALUES (1200, 1, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u7528\\u6237\\u6bcf\\u65e5\\u57fa\\u91d1\",\"icon\":\"fa-align-center\",\"uri\":\"foud\\/day\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-17 12:19:29', '2020-10-17 12:19:29');
INSERT INTO `admin_operation_log` VALUES (1201, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:19:29', '2020-10-17 12:19:29');
INSERT INTO `admin_operation_log` VALUES (1202, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-17 12:19:31', '2020-10-17 12:19:31');
INSERT INTO `admin_operation_log` VALUES (1203, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:19:40', '2020-10-17 12:19:40');
INSERT INTO `admin_operation_log` VALUES (1204, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u57fa\\u91d1\\u7edf\\u8ba1\\u8bb0\\u5f55\",\"icon\":null,\"uri\":\"foud\\/log\",\"roles\":[\"1\",null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"xn7dZPGtajKhMF4oYl01KmhbFNfu9Ib6phoZP78b\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/menu\"}', '2020-10-17 12:19:52', '2020-10-17 12:19:52');
INSERT INTO `admin_operation_log` VALUES (1205, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:19:52', '2020-10-17 12:19:52');
INSERT INTO `admin_operation_log` VALUES (1206, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-17 12:19:54', '2020-10-17 12:19:54');
INSERT INTO `admin_operation_log` VALUES (1207, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:20:03', '2020-10-17 12:20:03');
INSERT INTO `admin_operation_log` VALUES (1208, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:20:04', '2020-10-17 12:20:04');
INSERT INTO `admin_operation_log` VALUES (1209, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:20:06', '2020-10-17 12:20:06');
INSERT INTO `admin_operation_log` VALUES (1210, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-10-17 12:20:12', '2020-10-17 12:20:12');
INSERT INTO `admin_operation_log` VALUES (1211, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2020-10-17 12:20:16', '2020-10-17 12:20:16');
INSERT INTO `admin_operation_log` VALUES (1212, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:20:27', '2020-10-17 12:20:27');
INSERT INTO `admin_operation_log` VALUES (1213, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:20:30', '2020-10-17 12:20:30');
INSERT INTO `admin_operation_log` VALUES (1214, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:20:56', '2020-10-17 12:20:56');
INSERT INTO `admin_operation_log` VALUES (1215, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 12:21:20', '2020-10-17 12:21:20');
INSERT INTO `admin_operation_log` VALUES (1216, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 12:23:17', '2020-10-17 12:23:17');
INSERT INTO `admin_operation_log` VALUES (1217, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 12:24:04', '2020-10-17 12:24:04');
INSERT INTO `admin_operation_log` VALUES (1218, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 12:25:31', '2020-10-17 12:25:31');
INSERT INTO `admin_operation_log` VALUES (1219, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:25:49', '2020-10-17 12:25:49');
INSERT INTO `admin_operation_log` VALUES (1220, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:27:30', '2020-10-17 12:27:30');
INSERT INTO `admin_operation_log` VALUES (1221, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:27:33', '2020-10-17 12:27:33');
INSERT INTO `admin_operation_log` VALUES (1222, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:27:37', '2020-10-17 12:27:37');
INSERT INTO `admin_operation_log` VALUES (1223, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:27:44', '2020-10-17 12:27:44');
INSERT INTO `admin_operation_log` VALUES (1224, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 12:27:44', '2020-10-17 12:27:44');
INSERT INTO `admin_operation_log` VALUES (1225, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"esAT5H4je2nYUEluVdpzwZWWp3g6wDxhZ8WDln7x\",\"username\":\"\\u7528\\u62375\",\"password\":\"456******\"}', '2020-10-17 12:27:52', '2020-10-17 12:27:52');
INSERT INTO `admin_operation_log` VALUES (1226, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"esAT5H4je2nYUEluVdpzwZWWp3g6wDxhZ8WDln7x\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-17 12:27:55', '2020-10-17 12:27:55');
INSERT INTO `admin_operation_log` VALUES (1227, 5, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 12:27:56', '2020-10-17 12:27:56');
INSERT INTO `admin_operation_log` VALUES (1228, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:27:59', '2020-10-17 12:27:59');
INSERT INTO `admin_operation_log` VALUES (1229, 5, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:28:08', '2020-10-17 12:28:08');
INSERT INTO `admin_operation_log` VALUES (1230, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 12:28:08', '2020-10-17 12:28:08');
INSERT INTO `admin_operation_log` VALUES (1231, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"aukgjDC6XU1jkyS0elLl1Ek6bPvlWDbB4MbA2DLW\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-17 12:28:17', '2020-10-17 12:28:17');
INSERT INTO `admin_operation_log` VALUES (1232, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 12:28:17', '2020-10-17 12:28:17');
INSERT INTO `admin_operation_log` VALUES (1233, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:28:20', '2020-10-17 12:28:20');
INSERT INTO `admin_operation_log` VALUES (1234, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:28:25', '2020-10-17 12:28:25');
INSERT INTO `admin_operation_log` VALUES (1235, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:28:27', '2020-10-17 12:28:27');
INSERT INTO `admin_operation_log` VALUES (1236, 1, 'admin/auth/permissions/11/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:28:36', '2020-10-17 12:28:36');
INSERT INTO `admin_operation_log` VALUES (1237, 1, 'admin/auth/permissions/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"slug\":\"fundlog\",\"name\":\"\\u57fa\\u91d1\\u7edf\\u8ba1\\u8bb0\\u5f55\",\"http_method\":[null],\"http_path\":[\"\\/foud\\/log*\",null],\"_method\":\"PUT\",\"_token\":\"pOEDyBoESKbONGN3KFyUEta1g9H6tuNQQgXA0CYK\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/permissions\"}', '2020-10-17 12:28:45', '2020-10-17 12:28:45');
INSERT INTO `admin_operation_log` VALUES (1238, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:28:46', '2020-10-17 12:28:46');
INSERT INTO `admin_operation_log` VALUES (1239, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:29:00', '2020-10-17 12:29:00');
INSERT INTO `admin_operation_log` VALUES (1240, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:29:02', '2020-10-17 12:29:02');
INSERT INTO `admin_operation_log` VALUES (1241, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"\\u7528\\u6237\",\"permissions\":\"7,9,11\",\"_method\":\"PUT\",\"_token\":\"pOEDyBoESKbONGN3KFyUEta1g9H6tuNQQgXA0CYK\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-17 12:29:08', '2020-10-17 12:29:08');
INSERT INTO `admin_operation_log` VALUES (1242, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:29:09', '2020-10-17 12:29:09');
INSERT INTO `admin_operation_log` VALUES (1243, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:29:12', '2020-10-17 12:29:12');
INSERT INTO `admin_operation_log` VALUES (1244, 1, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:29:15', '2020-10-17 12:29:15');
INSERT INTO `admin_operation_log` VALUES (1245, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:29:21', '2020-10-17 12:29:21');
INSERT INTO `admin_operation_log` VALUES (1246, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u57fa\\u91d1\\u7edf\\u8ba1\\u8bb0\\u5f55\",\"icon\":null,\"uri\":\"foud\\/log\",\"roles\":[null],\"permissions\":null,\"_method\":\"PUT\",\"_token\":\"pOEDyBoESKbONGN3KFyUEta1g9H6tuNQQgXA0CYK\"}', '2020-10-17 12:29:24', '2020-10-17 12:29:24');
INSERT INTO `admin_operation_log` VALUES (1247, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:29:25', '2020-10-17 12:29:25');
INSERT INTO `admin_operation_log` VALUES (1248, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-10-17 12:29:26', '2020-10-17 12:29:26');
INSERT INTO `admin_operation_log` VALUES (1249, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:29:30', '2020-10-17 12:29:30');
INSERT INTO `admin_operation_log` VALUES (1250, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:29:33', '2020-10-17 12:29:33');
INSERT INTO `admin_operation_log` VALUES (1251, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:29:37', '2020-10-17 12:29:37');
INSERT INTO `admin_operation_log` VALUES (1252, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 12:29:38', '2020-10-17 12:29:38');
INSERT INTO `admin_operation_log` VALUES (1253, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"aoj3WmMoRHshALT4nYz0KvfyQgGUtvgbPbi2xlnm\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-17 12:29:44', '2020-10-17 12:29:44');
INSERT INTO `admin_operation_log` VALUES (1254, 5, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 12:29:44', '2020-10-17 12:29:44');
INSERT INTO `admin_operation_log` VALUES (1255, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:29:50', '2020-10-17 12:29:50');
INSERT INTO `admin_operation_log` VALUES (1256, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:29:51', '2020-10-17 12:29:51');
INSERT INTO `admin_operation_log` VALUES (1257, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:29:53', '2020-10-17 12:29:53');
INSERT INTO `admin_operation_log` VALUES (1258, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:29:54', '2020-10-17 12:29:54');
INSERT INTO `admin_operation_log` VALUES (1259, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:29:56', '2020-10-17 12:29:56');
INSERT INTO `admin_operation_log` VALUES (1260, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:29:57', '2020-10-17 12:29:57');
INSERT INTO `admin_operation_log` VALUES (1261, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:30:01', '2020-10-17 12:30:01');
INSERT INTO `admin_operation_log` VALUES (1262, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:30:02', '2020-10-17 12:30:02');
INSERT INTO `admin_operation_log` VALUES (1263, 5, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:30:07', '2020-10-17 12:30:07');
INSERT INTO `admin_operation_log` VALUES (1264, 5, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:30:09', '2020-10-17 12:30:09');
INSERT INTO `admin_operation_log` VALUES (1265, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 12:30:09', '2020-10-17 12:30:09');
INSERT INTO `admin_operation_log` VALUES (1266, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"uixOfZ6CM3UtrSDuaM5xpPKt60MqF2IE5S26ulDU\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-17 12:30:14', '2020-10-17 12:30:14');
INSERT INTO `admin_operation_log` VALUES (1267, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 12:30:15', '2020-10-17 12:30:15');
INSERT INTO `admin_operation_log` VALUES (1268, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:30:18', '2020-10-17 12:30:18');
INSERT INTO `admin_operation_log` VALUES (1269, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:30:21', '2020-10-17 12:30:21');
INSERT INTO `admin_operation_log` VALUES (1270, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:30:22', '2020-10-17 12:30:22');
INSERT INTO `admin_operation_log` VALUES (1271, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:30:23', '2020-10-17 12:30:23');
INSERT INTO `admin_operation_log` VALUES (1272, 1, 'admin/auth/roles/2/edit', 'GET', '127.0.0.1', '{\"_dialog_form_\":\"1\"}', '2020-10-17 12:30:26', '2020-10-17 12:30:26');
INSERT INTO `admin_operation_log` VALUES (1273, 1, 'admin/auth/roles/2', 'PUT', '127.0.0.1', '{\"slug\":\"user\",\"name\":\"\\u7528\\u6237\",\"permissions\":\"7,9,11,12\",\"_method\":\"PUT\",\"_token\":\"OerUTDvYBfBRvMXUn8zGDNYN5alVKFbpgz3batvH\",\"_previous_\":\"http:\\/\\/fund.yjl.com\\/admin\\/auth\\/roles\"}', '2020-10-17 12:30:31', '2020-10-17 12:30:31');
INSERT INTO `admin_operation_log` VALUES (1274, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:30:31', '2020-10-17 12:30:31');
INSERT INTO `admin_operation_log` VALUES (1275, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:30:35', '2020-10-17 12:30:35');
INSERT INTO `admin_operation_log` VALUES (1276, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 12:30:35', '2020-10-17 12:30:35');
INSERT INTO `admin_operation_log` VALUES (1277, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"shHxt8rDQKg1AiCOVTqyPxBa0iQtMEU7Wt6PeGwl\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\",\"remember\":\"1\"}', '2020-10-17 12:30:45', '2020-10-17 12:30:45');
INSERT INTO `admin_operation_log` VALUES (1278, 5, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 12:30:46', '2020-10-17 12:30:46');
INSERT INTO `admin_operation_log` VALUES (1279, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:30:52', '2020-10-17 12:30:52');
INSERT INTO `admin_operation_log` VALUES (1280, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:30:56', '2020-10-17 12:30:56');
INSERT INTO `admin_operation_log` VALUES (1281, 5, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 12:31:23', '2020-10-17 12:31:23');
INSERT INTO `admin_operation_log` VALUES (1282, 5, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 12:31:42', '2020-10-17 12:31:42');
INSERT INTO `admin_operation_log` VALUES (1283, 5, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 12:31:54', '2020-10-17 12:31:54');
INSERT INTO `admin_operation_log` VALUES (1284, 5, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 12:32:04', '2020-10-17 12:32:04');
INSERT INTO `admin_operation_log` VALUES (1285, 5, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 12:32:23', '2020-10-17 12:32:23');
INSERT INTO `admin_operation_log` VALUES (1286, 5, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 12:32:31', '2020-10-17 12:32:31');
INSERT INTO `admin_operation_log` VALUES (1287, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:32:47', '2020-10-17 12:32:47');
INSERT INTO `admin_operation_log` VALUES (1288, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:32:54', '2020-10-17 12:32:54');
INSERT INTO `admin_operation_log` VALUES (1289, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:33:39', '2020-10-17 12:33:39');
INSERT INTO `admin_operation_log` VALUES (1290, 5, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-17 12:34:01', '2020-10-17 12:34:01');
INSERT INTO `admin_operation_log` VALUES (1291, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:35:45', '2020-10-17 12:35:45');
INSERT INTO `admin_operation_log` VALUES (1292, 5, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:35:48', '2020-10-17 12:35:48');
INSERT INTO `admin_operation_log` VALUES (1293, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 12:35:48', '2020-10-17 12:35:48');
INSERT INTO `admin_operation_log` VALUES (1294, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"trtm7HsyPHS2YelvW6yIwKojBkKApVCSZpl74AgX\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-17 12:35:52', '2020-10-17 12:35:52');
INSERT INTO `admin_operation_log` VALUES (1295, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 12:35:53', '2020-10-17 12:35:53');
INSERT INTO `admin_operation_log` VALUES (1296, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:35:56', '2020-10-17 12:35:56');
INSERT INTO `admin_operation_log` VALUES (1297, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:35:57', '2020-10-17 12:35:57');
INSERT INTO `admin_operation_log` VALUES (1298, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:35:59', '2020-10-17 12:35:59');
INSERT INTO `admin_operation_log` VALUES (1299, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:36:00', '2020-10-17 12:36:00');
INSERT INTO `admin_operation_log` VALUES (1300, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:36:40', '2020-10-17 12:36:40');
INSERT INTO `admin_operation_log` VALUES (1301, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:36:50', '2020-10-17 12:36:50');
INSERT INTO `admin_operation_log` VALUES (1302, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:36:57', '2020-10-17 12:36:57');
INSERT INTO `admin_operation_log` VALUES (1303, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:37:26', '2020-10-17 12:37:26');
INSERT INTO `admin_operation_log` VALUES (1304, 1, 'admin/foud/day/1,20,14,15,16,17,18,19', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\"}', '2020-10-17 12:37:47', '2020-10-17 12:37:47');
INSERT INTO `admin_operation_log` VALUES (1305, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:37:48', '2020-10-17 12:37:48');
INSERT INTO `admin_operation_log` VALUES (1306, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:38:20', '2020-10-17 12:38:20');
INSERT INTO `admin_operation_log` VALUES (1307, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:38:28', '2020-10-17 12:38:28');
INSERT INTO `admin_operation_log` VALUES (1308, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 12:38:28', '2020-10-17 12:38:28');
INSERT INTO `admin_operation_log` VALUES (1309, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"cf3zuAKkEhaswXQehc0Q5sts9atWKyfghVnwpIw2\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-17 12:38:31', '2020-10-17 12:38:31');
INSERT INTO `admin_operation_log` VALUES (1310, 5, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 12:38:32', '2020-10-17 12:38:32');
INSERT INTO `admin_operation_log` VALUES (1311, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:38:36', '2020-10-17 12:38:36');
INSERT INTO `admin_operation_log` VALUES (1312, 5, 'admin/foud/log', 'GET', '127.0.0.1', '[]', '2020-10-17 12:40:17', '2020-10-17 12:40:17');
INSERT INTO `admin_operation_log` VALUES (1313, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:40:25', '2020-10-17 12:40:25');
INSERT INTO `admin_operation_log` VALUES (1314, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:40:26', '2020-10-17 12:40:26');
INSERT INTO `admin_operation_log` VALUES (1315, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:40:26', '2020-10-17 12:40:26');
INSERT INTO `admin_operation_log` VALUES (1316, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:40:29', '2020-10-17 12:40:29');
INSERT INTO `admin_operation_log` VALUES (1317, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"1\"}', '2020-10-17 12:40:33', '2020-10-17 12:40:33');
INSERT INTO `admin_operation_log` VALUES (1318, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"5\"}', '2020-10-17 12:40:36', '2020-10-17 12:40:36');
INSERT INTO `admin_operation_log` VALUES (1319, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"id\":\"5\",\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:40:40', '2020-10-17 12:40:40');
INSERT INTO `admin_operation_log` VALUES (1320, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:40:42', '2020-10-17 12:40:42');
INSERT INTO `admin_operation_log` VALUES (1321, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"id\":\"5\"}', '2020-10-17 12:40:47', '2020-10-17 12:40:47');
INSERT INTO `admin_operation_log` VALUES (1322, 5, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:40:50', '2020-10-17 12:40:50');
INSERT INTO `admin_operation_log` VALUES (1323, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-17 12:40:50', '2020-10-17 12:40:50');
INSERT INTO `admin_operation_log` VALUES (1324, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"Q1KBE67JmjucpXBPZckxBwsiFlGP21awCAMssghm\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-17 12:40:58', '2020-10-17 12:40:58');
INSERT INTO `admin_operation_log` VALUES (1325, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-17 12:40:59', '2020-10-17 12:40:59');
INSERT INTO `admin_operation_log` VALUES (1326, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:41:02', '2020-10-17 12:41:02');
INSERT INTO `admin_operation_log` VALUES (1327, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-17 12:41:19', '2020-10-17 12:41:19');
INSERT INTO `admin_operation_log` VALUES (1328, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-18 12:24:55', '2020-10-18 12:24:55');
INSERT INTO `admin_operation_log` VALUES (1329, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"opYvWchlJtKCuUzSGu7gKkN4M79eZrJ501MlQIU3\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-18 12:24:59', '2020-10-18 12:24:59');
INSERT INTO `admin_operation_log` VALUES (1330, 1, 'admin/foud/day', 'GET', '127.0.0.1', '[]', '2020-10-18 12:24:59', '2020-10-18 12:24:59');
INSERT INTO `admin_operation_log` VALUES (1331, 1, 'admin/user/list', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:25:04', '2020-10-18 12:25:04');
INSERT INTO `admin_operation_log` VALUES (1332, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:25:12', '2020-10-18 12:25:12');
INSERT INTO `admin_operation_log` VALUES (1333, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:25:23', '2020-10-18 12:25:23');
INSERT INTO `admin_operation_log` VALUES (1334, 1, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:25:28', '2020-10-18 12:25:28');
INSERT INTO `admin_operation_log` VALUES (1335, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:25:29', '2020-10-18 12:25:29');
INSERT INTO `admin_operation_log` VALUES (1336, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:25:57', '2020-10-18 12:25:57');
INSERT INTO `admin_operation_log` VALUES (1337, 1, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:26:01', '2020-10-18 12:26:01');
INSERT INTO `admin_operation_log` VALUES (1338, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:26:12', '2020-10-18 12:26:12');
INSERT INTO `admin_operation_log` VALUES (1339, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:26:15', '2020-10-18 12:26:15');
INSERT INTO `admin_operation_log` VALUES (1340, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-18 12:26:16', '2020-10-18 12:26:16');
INSERT INTO `admin_operation_log` VALUES (1341, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"h6HMxPfgZ57WLERYM4iFbPnUnxDyuZfM8eBrk0dV\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-18 12:26:20', '2020-10-18 12:26:20');
INSERT INTO `admin_operation_log` VALUES (1342, 5, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-18 12:26:20', '2020-10-18 12:26:20');
INSERT INTO `admin_operation_log` VALUES (1343, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:26:24', '2020-10-18 12:26:24');
INSERT INTO `admin_operation_log` VALUES (1344, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:26:25', '2020-10-18 12:26:25');
INSERT INTO `admin_operation_log` VALUES (1345, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:26:28', '2020-10-18 12:26:28');
INSERT INTO `admin_operation_log` VALUES (1346, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:26:29', '2020-10-18 12:26:29');
INSERT INTO `admin_operation_log` VALUES (1347, 5, 'admin/foud/day', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:26:31', '2020-10-18 12:26:31');
INSERT INTO `admin_operation_log` VALUES (1348, 5, 'admin/foud/log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:26:37', '2020-10-18 12:26:37');
INSERT INTO `admin_operation_log` VALUES (1349, 5, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:27:22', '2020-10-18 12:27:22');
INSERT INTO `admin_operation_log` VALUES (1350, 5, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:27:25', '2020-10-18 12:27:25');
INSERT INTO `admin_operation_log` VALUES (1351, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-18 12:27:26', '2020-10-18 12:27:26');
INSERT INTO `admin_operation_log` VALUES (1352, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"uT3sslDBCD8b6i2lG9Ddt81InyIEKKN4Lqhx3W60\",\"username\":\"\\u7528\\u62375\",\"password\":\"123******\"}', '2020-10-18 12:27:30', '2020-10-18 12:27:30');
INSERT INTO `admin_operation_log` VALUES (1353, 5, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-18 12:27:30', '2020-10-18 12:27:30');
INSERT INTO `admin_operation_log` VALUES (1354, 5, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-10-18 12:27:33', '2020-10-18 12:27:33');
INSERT INTO `admin_operation_log` VALUES (1355, 0, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2020-10-18 12:27:33', '2020-10-18 12:27:33');
INSERT INTO `admin_operation_log` VALUES (1356, 0, 'admin/auth/login', 'POST', '127.0.0.1', '{\"_token\":\"kktstemCwZDAwgI7wNRbjXtXWxoqr0r1OlDR2UCH\",\"username\":\"admin\",\"password\":\"adm******\"}', '2020-10-18 12:27:37', '2020-10-18 12:27:37');
INSERT INTO `admin_operation_log` VALUES (1357, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-10-18 12:27:38', '2020-10-18 12:27:38');

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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

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
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `parent_id` bigint(20) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_permissions_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

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
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

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

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `admin_roles_slug_unique`(`slug`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

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
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES (1, 'admin', '$2y$10$dZjKNJxIjWI32YlqapuBGesARcVW/tEXY7Q/B6zGkCfec.Jd0IEpK', 'Administrator', NULL, NULL, '2020-10-13 14:01:23', '2020-10-13 14:01:24');
INSERT INTO `admin_users` VALUES (28, 'testUser', '$2y$10$nT1D7ZFzIlbDCPyyR9cX/uyK1Tbcnn0eQTWpBw/nNLBBVNq9CdPNK', 'testUser', NULL, NULL, '2020-10-17 11:52:24', '2020-10-17 11:52:24');
INSERT INTO `admin_users` VALUES (5, '用户5', '$2y$10$nT1D7ZFzIlbDCPyyR9cX/uyK1Tbcnn0eQTWpBw/nNLBBVNq9CdPNK', '用户5', NULL, 'hwmBgsqHJyQXMRqNUwGX3U3W3XWI6YMxNOUPSPr0e3x61peeCEn6pFhtE9F7', '2020-10-14 15:02:37', '2020-10-14 15:02:37');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2016_01_04_173148_create_admin_tables', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for user_foud_day
-- ----------------------------
DROP TABLE IF EXISTS `user_foud_day`;
CREATE TABLE `user_foud_day`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `fund_sum` decimal(11, 0) NULL DEFAULT NULL COMMENT '基金总净值：公式：基金份额+（基金份额*基金净值率）',
  `day` date NOT NULL COMMENT '日期',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`, `day`) USING BTREE,
  UNIQUE INDEX `userid,day`(`user_id`, `day`) USING BTREE COMMENT '两个字段唯一索引'
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '记录用户基金每日的最终数据' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of user_foud_day
-- ----------------------------
INSERT INTO `user_foud_day` VALUES (5, 5, 1004, '2020-10-14', '2020-10-14 16:08:15', '2020-10-14 16:15:42');
INSERT INTO `user_foud_day` VALUES (6, 5, 105, '2020-10-15', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (7, 5, 110, '2020-10-16', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (8, 5, 1013, '2020-10-17', NULL, '2020-10-17 07:52:02');
INSERT INTO `user_foud_day` VALUES (9, 5, 120, '2020-10-18', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (10, 5, 125, '2020-10-19', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (11, 5, 119, '2020-10-20', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (12, 1, 120, '2020-10-15', NULL, NULL);
INSERT INTO `user_foud_day` VALUES (13, 1, 1234, '2020-10-17', '2020-10-17 05:26:18', '2020-10-17 10:19:55');
INSERT INTO `user_foud_day` VALUES (21, 28, 1013, '2020-10-16', '2020-10-17 11:52:24', '2020-10-17 12:10:53');
INSERT INTO `user_foud_day` VALUES (22, 28, 1020, '2020-10-17', '2020-10-17 11:52:51', '2020-10-17 12:11:46');
INSERT INTO `user_foud_day` VALUES (23, 28, 1014, '2020-10-15', '2020-10-17 12:12:12', '2020-10-17 12:12:12');
INSERT INTO `user_foud_day` VALUES (24, 28, 1011, '2020-10-12', '2020-10-17 12:12:37', '2020-10-17 12:12:37');
INSERT INTO `user_foud_day` VALUES (25, 28, 1021, '2020-10-13', '2020-10-17 12:12:49', '2020-10-17 12:12:49');
INSERT INTO `user_foud_day` VALUES (26, 28, 1031, '2020-10-14', '2020-10-17 12:13:37', '2020-10-17 12:14:08');

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
  `fund_mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `fund_sum_log` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '总净值差额',
  `type` int(1) NULL DEFAULT NULL COMMENT '记录的类型：0每日自动更新，1用户操作，2管理员操作',
  `action` int(1) NULL DEFAULT NULL COMMENT '记录操作的类型，1新增，2减少',
  `day` date NULL DEFAULT NULL COMMENT '记录日期',
  `created_at` datetime(0) NULL DEFAULT NULL,
  `updated_at` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '记录用户基金每次操作的数据记录' ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `fund_amount` decimal(11, 2) NULL DEFAULT NULL COMMENT '基金份额',
  `fund_rate` decimal(11, 2) NULL DEFAULT NULL COMMENT '基金净值率',
  `fund_sum` decimal(11, 2) NULL DEFAULT NULL COMMENT '基金总净值：公式：基金份额+（基金份额*基金净值率）',
  `created_at` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp(0) NULL DEFAULT NULL COMMENT '更新时间',
  `mark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (5, '用户5', 1005.00, 0.80, 1013.04, '2020-10-14 15:02:42', '2020-10-17 07:52:02', '增加reta');
INSERT INTO `users` VALUES (28, 'testUser', 1020.00, 1.10, 1031.22, '2020-10-17 11:52:24', '2020-10-17 12:14:07', NULL);
INSERT INTO `users` VALUES (1, '管理员', 1000.00, 1.00, 1000.00, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
