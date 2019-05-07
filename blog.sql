/*
 Navicat Premium Data Transfer

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 26/04/2019 21:37:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sail_admin_config
-- ----------------------------
DROP TABLE IF EXISTS `sail_admin_config`;
CREATE TABLE `sail_admin_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sail_admin_config_name_unique`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sail_admin_config
-- ----------------------------
INSERT INTO `sail_admin_config` VALUES (1, 'base.web_name', 'LmSail', 'LmSail社区', '2019-04-19 15:28:08', '2019-04-19 15:30:40');
INSERT INTO `sail_admin_config` VALUES (2, '__configx__', 'do not delete', '{\"base.web_name\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u8bf7\\u8f93\\u5165\\u7f51\\u7ad9\\u540d\\u79f0\\uff0c\\u5982\\uff1aLmSail\\u793e\\u533a\",\"name\":\"\\u7f51\\u7ad9\\u540d\\u79f0\",\"order\":1},\"base.web_title\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u8bf7\\u8f93\\u5165\\u7f51\\u7ad9\\u6807\\u9898\\uff0c\\u5982\\uff1a\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"name\":\"\\u7f51\\u7ad9\\u6807\\u9898\",\"order\":6},\"base.web_description\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u8bf7\\u8f93\\u5165\\u7f51\\u7ad9\\u63cf\\u8ff0\\uff0c\\u5982\\uff1a\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"name\":\"\\u7f51\\u7ad9\\u63cf\\u8ff0\",\"order\":16},\"base.version\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u9ed8\\u8ba4v1.0.1\",\"name\":\"\\u535a\\u5ba2\\u7248\\u672c\",\"order\":21},\"base.keywords\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u8bf7\\u8f93\\u5165\\u7f51\\u7ad9\\u5173\\u952e\\u8bcd\",\"name\":\"\\u5173\\u952e\\u5b57\",\"order\":11},\"base.author\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u5982\\uff1almsail\",\"name\":\"\\u7f51\\u7ad9\\u4f5c\\u8005\",\"order\":999},\"base.copyright\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u7248\\u6743\\u4fe1\\u606f\\uff0c\\u5982\\uff1aPowered by lmsail.com\\uff0c\\u53ef\\u4ee5\\u968f\\u610f\\u66f4\\u6539\\u6216\\u62b9\\u53bb\",\"name\":\"\\u7248\\u6743\\u4fe1\\u606f\",\"order\":999},\"base.contact_email\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u586b\\u5199\\u90ae\\u7bb1\\u5730\\u5740\",\"name\":\"\\u8054\\u7cfb\\u90ae\\u7bb1\",\"order\":999},\"base.logo\":{\"options\":[],\"element\":\"image\",\"help\":\"\\u7f51\\u7ad9LOGO\",\"name\":\"\\u7f51\\u7ad9LOGO\",\"order\":999},\"blog.delete\":{\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"element\":\"radio_group\",\"help\":\"\\u5f00\\u542f\\u540e\\uff0c\\u7528\\u6237\\u53ef\\u5220\\u9664\\u81ea\\u5df1\\u7684\\u535a\\u6587\\uff01\\u5efa\\u8bae\\u5173\\u95ed\\uff08\\u8be5\\u529f\\u80fd\\u5f71\\u54cd\\u6570\\u636e\\u7edf\\u8ba1\\uff09\",\"name\":\"\\u5220\\u9664\\u6743\\u9650\",\"order\":999},\"blog.search_default\":{\"options\":[],\"element\":\"normal\",\"help\":\"\\u641c\\u7d22\\u9ed8\\u8ba4\\u5173\\u952e\\u8bcd\\uff0c\\u5f53\\u7528\\u6237\\u672a\\u8f93\\u5165\\u5173\\u952e\\u8bcd\\u65f6\\u751f\\u6548\",\"name\":\"\\u641c\\u7d22\\u9ed8\\u8ba4\\u5173\\u952e\\u8bcd\",\"order\":999}}', '2019-04-19 15:28:08', '2019-04-23 19:44:18');
INSERT INTO `sail_admin_config` VALUES (3, 'base.web_title', '动态列表 - 高品质的 Laravel 开发者社区 - LmSail社区 - 高品质的 Laravel 开发者社区', '网站标题', '2019-04-19 15:30:29', '2019-04-19 15:30:40');
INSERT INTO `sail_admin_config` VALUES (4, 'base.web_description', '我们是高品质的 Laravel 开发者社区，致力于为 Laravel 开发者提供一个分享创造、结识伙伴、协同互助的论坛。', '网站描述', '2019-04-19 15:53:18', '2019-04-21 20:01:55');
INSERT INTO `sail_admin_config` VALUES (5, 'base.version', 'v1.0.1', '博客版本', '2019-04-21 20:01:43', '2019-04-21 20:01:55');
INSERT INTO `sail_admin_config` VALUES (6, 'base.keywords', 'LmSail, sail, lmsail, laravel, 社区', '关键字', '2019-04-21 20:02:25', '2019-04-21 20:02:51');
INSERT INTO `sail_admin_config` VALUES (7, 'base.author', 'lmsail', '网站作者', '2019-04-21 20:09:31', '2019-04-21 20:09:39');
INSERT INTO `sail_admin_config` VALUES (8, 'base.copyright', 'Powered by lmsail.com', '版权信息', '2019-04-21 20:13:56', '2019-04-21 20:14:14');
INSERT INTO `sail_admin_config` VALUES (9, 'base.contact_email', '582639426@qq.com', '联系邮箱', '2019-04-21 20:15:45', '2019-04-21 20:15:53');
INSERT INTO `sail_admin_config` VALUES (10, 'base.logo', 'images/laravel.png', '网站LOGO', '2019-04-21 22:03:18', '2019-04-21 22:03:53');
INSERT INTO `sail_admin_config` VALUES (11, 'blog.delete', '0', '删除权限', '2019-04-22 21:33:11', '2019-04-22 21:35:27');
INSERT INTO `sail_admin_config` VALUES (12, 'blog.search_default', 'lmsail', '搜索默认关键词', '2019-04-23 19:44:18', '2019-04-23 19:44:25');

-- ----------------------------
-- Table structure for sail_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `sail_admin_menu`;
CREATE TABLE `sail_admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sail_admin_menu
-- ----------------------------
INSERT INTO `sail_admin_menu` VALUES (1, 0, 1, '后台首页', 'fa-bar-chart', '/', NULL, NULL, '2019-04-21 23:44:34');
INSERT INTO `sail_admin_menu` VALUES (2, 0, 2, '后台管理', 'fa-tasks', NULL, NULL, NULL, '2019-04-18 22:40:22');
INSERT INTO `sail_admin_menu` VALUES (3, 17, 7, '管理员', 'fa-users', 'auth/users', NULL, NULL, '2019-04-19 15:27:40');
INSERT INTO `sail_admin_menu` VALUES (4, 17, 8, '角色', 'fa-user', 'auth/roles', NULL, NULL, '2019-04-19 15:27:40');
INSERT INTO `sail_admin_menu` VALUES (5, 17, 9, '权限', 'fa-ban', 'auth/permissions', NULL, NULL, '2019-04-19 15:27:40');
INSERT INTO `sail_admin_menu` VALUES (6, 2, 4, '菜单列表', 'fa-bars', 'auth/menu', NULL, NULL, '2019-04-21 23:44:49');
INSERT INTO `sail_admin_menu` VALUES (7, 2, 5, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, '2019-04-19 15:27:40');
INSERT INTO `sail_admin_menu` VALUES (8, 0, 10, '用户管理', 'fa-users', NULL, NULL, '2019-04-18 22:45:50', '2019-04-19 15:27:40');
INSERT INTO `sail_admin_menu` VALUES (9, 8, 11, '用户列表', 'fa-user', '/users', NULL, '2019-04-18 22:46:21', '2019-04-19 15:27:40');
INSERT INTO `sail_admin_menu` VALUES (10, 0, 12, '博客管理', 'fa-newspaper-o', NULL, NULL, '2019-04-18 22:51:19', '2019-04-19 15:27:40');
INSERT INTO `sail_admin_menu` VALUES (11, 10, 13, '博客列表', 'fa-bars', '/blogs', NULL, '2019-04-18 22:51:35', '2019-04-19 15:27:40');
INSERT INTO `sail_admin_menu` VALUES (12, 0, 14, '动态管理', 'fa-coffee', NULL, NULL, '2019-04-18 22:51:51', '2019-04-19 15:27:40');
INSERT INTO `sail_admin_menu` VALUES (13, 12, 15, '动态列表', 'fa-bars', '/dynamics', NULL, '2019-04-18 22:52:19', '2019-04-19 15:27:40');
INSERT INTO `sail_admin_menu` VALUES (14, 0, 18, '媒体管理', 'fa-file', 'media', NULL, '2019-04-18 22:57:02', '2019-04-21 23:20:12');
INSERT INTO `sail_admin_menu` VALUES (15, 0, 19, '日志管理', 'fa-database', 'logs', NULL, '2019-04-18 23:00:09', '2019-04-21 23:20:12');
INSERT INTO `sail_admin_menu` VALUES (16, 2, 3, '网站配置', 'fa-toggle-on', 'configx/edit', NULL, '2019-04-19 15:23:27', '2019-04-19 15:26:46');
INSERT INTO `sail_admin_menu` VALUES (17, 0, 6, '管理员管理', 'fa-user-secret', NULL, NULL, '2019-04-19 15:27:20', '2019-04-19 15:27:40');
INSERT INTO `sail_admin_menu` VALUES (18, 0, 16, '评论管理', 'fa-commenting-o', NULL, NULL, '2019-04-21 23:19:25', '2019-04-21 23:20:12');
INSERT INTO `sail_admin_menu` VALUES (19, 18, 18, '评论列表', 'fa-bars', '/comment', NULL, '2019-04-21 23:20:00', '2019-04-21 23:20:57');

-- ----------------------------
-- Table structure for sail_admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `sail_admin_operation_log`;
CREATE TABLE `sail_admin_operation_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sail_admin_operation_log_user_id_index`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 668 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sail_admin_operation_log
-- ----------------------------
INSERT INTO `sail_admin_operation_log` VALUES (1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-18 22:25:20', '2019-04-18 22:25:20');
INSERT INTO `sail_admin_operation_log` VALUES (2, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:25:24', '2019-04-18 22:25:24');
INSERT INTO `sail_admin_operation_log` VALUES (3, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2019-04-18 22:33:02', '2019-04-18 22:33:02');
INSERT INTO `sail_admin_operation_log` VALUES (4, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:33:04', '2019-04-18 22:33:04');
INSERT INTO `sail_admin_operation_log` VALUES (5, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:33:05', '2019-04-18 22:33:05');
INSERT INTO `sail_admin_operation_log` VALUES (6, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:33:06', '2019-04-18 22:33:06');
INSERT INTO `sail_admin_operation_log` VALUES (7, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:33:06', '2019-04-18 22:33:06');
INSERT INTO `sail_admin_operation_log` VALUES (8, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:33:07', '2019-04-18 22:33:07');
INSERT INTO `sail_admin_operation_log` VALUES (9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:39:48', '2019-04-18 22:39:48');
INSERT INTO `sail_admin_operation_log` VALUES (10, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:39:53', '2019-04-18 22:39:53');
INSERT INTO `sail_admin_operation_log` VALUES (11, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-18 22:40:11', '2019-04-18 22:40:11');
INSERT INTO `sail_admin_operation_log` VALUES (12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:40:11', '2019-04-18 22:40:11');
INSERT INTO `sail_admin_operation_log` VALUES (13, 1, 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:40:16', '2019-04-18 22:40:16');
INSERT INTO `sail_admin_operation_log` VALUES (14, 1, 'admin/auth/menu/2', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u540e\\u53f0\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-18 22:40:21', '2019-04-18 22:40:21');
INSERT INTO `sail_admin_operation_log` VALUES (15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:40:22', '2019-04-18 22:40:22');
INSERT INTO `sail_admin_operation_log` VALUES (16, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:40:29', '2019-04-18 22:40:29');
INSERT INTO `sail_admin_operation_log` VALUES (17, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-18 22:40:34', '2019-04-18 22:40:34');
INSERT INTO `sail_admin_operation_log` VALUES (18, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:40:34', '2019-04-18 22:40:34');
INSERT INTO `sail_admin_operation_log` VALUES (19, 1, 'admin/auth/menu/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:40:36', '2019-04-18 22:40:36');
INSERT INTO `sail_admin_operation_log` VALUES (20, 1, 'admin/auth/menu/4', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-18 22:40:57', '2019-04-18 22:40:57');
INSERT INTO `sail_admin_operation_log` VALUES (21, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:40:57', '2019-04-18 22:40:57');
INSERT INTO `sail_admin_operation_log` VALUES (22, 1, 'admin/auth/menu/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:40:59', '2019-04-18 22:40:59');
INSERT INTO `sail_admin_operation_log` VALUES (23, 1, 'admin/auth/menu/5', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-18 22:41:02', '2019-04-18 22:41:02');
INSERT INTO `sail_admin_operation_log` VALUES (24, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:41:03', '2019-04-18 22:41:03');
INSERT INTO `sail_admin_operation_log` VALUES (25, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:41:05', '2019-04-18 22:41:05');
INSERT INTO `sail_admin_operation_log` VALUES (26, 1, 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-18 22:41:07', '2019-04-18 22:41:07');
INSERT INTO `sail_admin_operation_log` VALUES (27, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:41:08', '2019-04-18 22:41:08');
INSERT INTO `sail_admin_operation_log` VALUES (28, 1, 'admin/auth/menu/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:41:10', '2019-04-18 22:41:10');
INSERT INTO `sail_admin_operation_log` VALUES (29, 1, 'admin/auth/menu/7', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-18 22:41:13', '2019-04-18 22:41:13');
INSERT INTO `sail_admin_operation_log` VALUES (30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:41:14', '2019-04-18 22:41:14');
INSERT INTO `sail_admin_operation_log` VALUES (31, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:41:25', '2019-04-18 22:41:25');
INSERT INTO `sail_admin_operation_log` VALUES (32, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:41:27', '2019-04-18 22:41:27');
INSERT INTO `sail_admin_operation_log` VALUES (33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:41:32', '2019-04-18 22:41:32');
INSERT INTO `sail_admin_operation_log` VALUES (34, 1, 'admin/auth/menu/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:41:34', '2019-04-18 22:41:34');
INSERT INTO `sail_admin_operation_log` VALUES (35, 1, 'admin/auth/menu/3', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-18 22:41:42', '2019-04-18 22:41:42');
INSERT INTO `sail_admin_operation_log` VALUES (36, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:41:42', '2019-04-18 22:41:42');
INSERT INTO `sail_admin_operation_log` VALUES (37, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:42:23', '2019-04-18 22:42:23');
INSERT INTO `sail_admin_operation_log` VALUES (38, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\"}', '2019-04-18 22:45:50', '2019-04-18 22:45:50');
INSERT INTO `sail_admin_operation_log` VALUES (39, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:45:50', '2019-04-18 22:45:50');
INSERT INTO `sail_admin_operation_log` VALUES (40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:45:54', '2019-04-18 22:45:54');
INSERT INTO `sail_admin_operation_log` VALUES (41, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\"}', '2019-04-18 22:46:21', '2019-04-18 22:46:21');
INSERT INTO `sail_admin_operation_log` VALUES (42, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:46:21', '2019-04-18 22:46:21');
INSERT INTO `sail_admin_operation_log` VALUES (43, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:46:25', '2019-04-18 22:46:25');
INSERT INTO `sail_admin_operation_log` VALUES (44, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:46:43', '2019-04-18 22:46:43');
INSERT INTO `sail_admin_operation_log` VALUES (45, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:46:52', '2019-04-18 22:46:52');
INSERT INTO `sail_admin_operation_log` VALUES (46, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-18 22:47:03', '2019-04-18 22:47:03');
INSERT INTO `sail_admin_operation_log` VALUES (47, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:47:03', '2019-04-18 22:47:03');
INSERT INTO `sail_admin_operation_log` VALUES (48, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:47:11', '2019-04-18 22:47:11');
INSERT INTO `sail_admin_operation_log` VALUES (49, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-user\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-18 22:47:17', '2019-04-18 22:47:17');
INSERT INTO `sail_admin_operation_log` VALUES (50, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:47:17', '2019-04-18 22:47:17');
INSERT INTO `sail_admin_operation_log` VALUES (51, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:47:30', '2019-04-18 22:47:30');
INSERT INTO `sail_admin_operation_log` VALUES (52, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2019-04-18 22:47:51', '2019-04-18 22:47:51');
INSERT INTO `sail_admin_operation_log` VALUES (53, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:48:12', '2019-04-18 22:48:12');
INSERT INTO `sail_admin_operation_log` VALUES (54, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:48:16', '2019-04-18 22:48:16');
INSERT INTO `sail_admin_operation_log` VALUES (55, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u535a\\u5ba2\\u7ba1\\u7406\",\"icon\":\"fa-newspaper-o\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\"}', '2019-04-18 22:51:19', '2019-04-18 22:51:19');
INSERT INTO `sail_admin_operation_log` VALUES (56, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:51:19', '2019-04-18 22:51:19');
INSERT INTO `sail_admin_operation_log` VALUES (57, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"10\",\"title\":\"\\u535a\\u5ba2\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"\\/blogs\",\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\"}', '2019-04-18 22:51:35', '2019-04-18 22:51:35');
INSERT INTO `sail_admin_operation_log` VALUES (58, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:51:36', '2019-04-18 22:51:36');
INSERT INTO `sail_admin_operation_log` VALUES (59, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u52a8\\u6001\\u7ba1\\u7406\",\"icon\":\"fa-coffee\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\"}', '2019-04-18 22:51:51', '2019-04-18 22:51:51');
INSERT INTO `sail_admin_operation_log` VALUES (60, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:51:51', '2019-04-18 22:51:51');
INSERT INTO `sail_admin_operation_log` VALUES (61, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"12\",\"title\":\"\\u52a8\\u6001\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"\\/dynamics\",\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\"}', '2019-04-18 22:52:19', '2019-04-18 22:52:19');
INSERT INTO `sail_admin_operation_log` VALUES (62, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:52:19', '2019-04-18 22:52:19');
INSERT INTO `sail_admin_operation_log` VALUES (63, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:52:24', '2019-04-18 22:52:24');
INSERT INTO `sail_admin_operation_log` VALUES (64, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:52:27', '2019-04-18 22:52:27');
INSERT INTO `sail_admin_operation_log` VALUES (65, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:52:29', '2019-04-18 22:52:29');
INSERT INTO `sail_admin_operation_log` VALUES (66, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-04-18 22:52:32', '2019-04-18 22:52:32');
INSERT INTO `sail_admin_operation_log` VALUES (67, 1, 'admin/dynamics/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:52:40', '2019-04-18 22:52:40');
INSERT INTO `sail_admin_operation_log` VALUES (68, 1, 'admin/dynamics/create', 'GET', '127.0.0.1', '[]', '2019-04-18 22:55:12', '2019-04-18 22:55:12');
INSERT INTO `sail_admin_operation_log` VALUES (69, 1, 'admin/dynamics/create', 'GET', '127.0.0.1', '[]', '2019-04-18 22:55:29', '2019-04-18 22:55:29');
INSERT INTO `sail_admin_operation_log` VALUES (70, 1, 'admin/dynamics/create', 'GET', '127.0.0.1', '[]', '2019-04-18 22:55:30', '2019-04-18 22:55:30');
INSERT INTO `sail_admin_operation_log` VALUES (71, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:55:34', '2019-04-18 22:55:34');
INSERT INTO `sail_admin_operation_log` VALUES (72, 1, 'admin/dynamics/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:55:37', '2019-04-18 22:55:37');
INSERT INTO `sail_admin_operation_log` VALUES (73, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:55:48', '2019-04-18 22:55:48');
INSERT INTO `sail_admin_operation_log` VALUES (74, 1, 'admin/dynamics/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:55:49', '2019-04-18 22:55:49');
INSERT INTO `sail_admin_operation_log` VALUES (75, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:55:52', '2019-04-18 22:55:52');
INSERT INTO `sail_admin_operation_log` VALUES (76, 1, 'admin/dynamics', 'GET', '127.0.0.1', '[]', '2019-04-18 22:57:06', '2019-04-18 22:57:06');
INSERT INTO `sail_admin_operation_log` VALUES (77, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:57:10', '2019-04-18 22:57:10');
INSERT INTO `sail_admin_operation_log` VALUES (78, 1, 'admin/auth/menu/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:57:15', '2019-04-18 22:57:15');
INSERT INTO `sail_admin_operation_log` VALUES (79, 1, 'admin/auth/menu/14', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u5a92\\u4f53\\u7ba1\\u7406\",\"icon\":\"fa-file\",\"uri\":\"media\",\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-18 22:57:20', '2019-04-18 22:57:20');
INSERT INTO `sail_admin_operation_log` VALUES (80, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:57:20', '2019-04-18 22:57:20');
INSERT INTO `sail_admin_operation_log` VALUES (81, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":11}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":13}]},{\\\"id\\\":14}]\"}', '2019-04-18 22:57:25', '2019-04-18 22:57:25');
INSERT INTO `sail_admin_operation_log` VALUES (82, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:57:25', '2019-04-18 22:57:25');
INSERT INTO `sail_admin_operation_log` VALUES (83, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 22:57:27', '2019-04-18 22:57:27');
INSERT INTO `sail_admin_operation_log` VALUES (84, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:58:22', '2019-04-18 22:58:22');
INSERT INTO `sail_admin_operation_log` VALUES (85, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:58:26', '2019-04-18 22:58:26');
INSERT INTO `sail_admin_operation_log` VALUES (86, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2019-04-18 22:59:15', '2019-04-18 22:59:15');
INSERT INTO `sail_admin_operation_log` VALUES (87, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '[]', '2019-04-18 22:59:24', '2019-04-18 22:59:24');
INSERT INTO `sail_admin_operation_log` VALUES (88, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 22:59:26', '2019-04-18 22:59:26');
INSERT INTO `sail_admin_operation_log` VALUES (89, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2019-04-18 23:00:17', '2019-04-18 23:00:17');
INSERT INTO `sail_admin_operation_log` VALUES (90, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 23:00:20', '2019-04-18 23:00:20');
INSERT INTO `sail_admin_operation_log` VALUES (91, 1, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 23:00:23', '2019-04-18 23:00:23');
INSERT INTO `sail_admin_operation_log` VALUES (92, 1, 'admin/auth/menu/15', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u65e5\\u5fd7\\u7ba1\\u7406\",\"icon\":\"fa-database\",\"uri\":\"logs\",\"roles\":[null],\"permission\":null,\"_token\":\"iKiwTTL5AILVUjNlhtNjCfC4OFIcphnJxxgtFnDv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-18 23:00:27', '2019-04-18 23:00:27');
INSERT INTO `sail_admin_operation_log` VALUES (93, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 23:00:27', '2019-04-18 23:00:27');
INSERT INTO `sail_admin_operation_log` VALUES (94, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 23:00:29', '2019-04-18 23:00:29');
INSERT INTO `sail_admin_operation_log` VALUES (95, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 23:02:02', '2019-04-18 23:02:02');
INSERT INTO `sail_admin_operation_log` VALUES (96, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 23:02:22', '2019-04-18 23:02:22');
INSERT INTO `sail_admin_operation_log` VALUES (97, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 23:02:25', '2019-04-18 23:02:25');
INSERT INTO `sail_admin_operation_log` VALUES (98, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 23:02:25', '2019-04-18 23:02:25');
INSERT INTO `sail_admin_operation_log` VALUES (99, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 23:02:30', '2019-04-18 23:02:30');
INSERT INTO `sail_admin_operation_log` VALUES (100, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-18 23:02:32', '2019-04-18 23:02:32');
INSERT INTO `sail_admin_operation_log` VALUES (101, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-18 23:02:32', '2019-04-18 23:02:32');
INSERT INTO `sail_admin_operation_log` VALUES (102, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 13:33:47', '2019-04-19 13:33:47');
INSERT INTO `sail_admin_operation_log` VALUES (103, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 13:33:57', '2019-04-19 13:33:57');
INSERT INTO `sail_admin_operation_log` VALUES (104, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 13:33:57', '2019-04-19 13:33:57');
INSERT INTO `sail_admin_operation_log` VALUES (105, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 14:38:40', '2019-04-19 14:38:40');
INSERT INTO `sail_admin_operation_log` VALUES (106, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 14:38:42', '2019-04-19 14:38:42');
INSERT INTO `sail_admin_operation_log` VALUES (107, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 14:38:43', '2019-04-19 14:38:43');
INSERT INTO `sail_admin_operation_log` VALUES (108, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 14:38:44', '2019-04-19 14:38:44');
INSERT INTO `sail_admin_operation_log` VALUES (109, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 14:38:45', '2019-04-19 14:38:45');
INSERT INTO `sail_admin_operation_log` VALUES (110, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 14:38:49', '2019-04-19 14:38:49');
INSERT INTO `sail_admin_operation_log` VALUES (111, 1, 'admin/auth/menu/17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\"}', '2019-04-19 14:38:53', '2019-04-19 14:38:53');
INSERT INTO `sail_admin_operation_log` VALUES (112, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 14:38:53', '2019-04-19 14:38:53');
INSERT INTO `sail_admin_operation_log` VALUES (113, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 14:38:57', '2019-04-19 14:38:57');
INSERT INTO `sail_admin_operation_log` VALUES (114, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 14:38:57', '2019-04-19 14:38:57');
INSERT INTO `sail_admin_operation_log` VALUES (115, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 14:40:52', '2019-04-19 14:40:52');
INSERT INTO `sail_admin_operation_log` VALUES (116, 1, 'admin/auth/menu/19', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\"}', '2019-04-19 14:40:58', '2019-04-19 14:40:58');
INSERT INTO `sail_admin_operation_log` VALUES (117, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 14:40:58', '2019-04-19 14:40:58');
INSERT INTO `sail_admin_operation_log` VALUES (118, 1, 'admin/auth/menu/18', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\"}', '2019-04-19 14:41:00', '2019-04-19 14:41:00');
INSERT INTO `sail_admin_operation_log` VALUES (119, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 14:41:00', '2019-04-19 14:41:00');
INSERT INTO `sail_admin_operation_log` VALUES (120, 1, 'admin/auth/menu/19', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\"}', '2019-04-19 14:41:08', '2019-04-19 14:41:08');
INSERT INTO `sail_admin_operation_log` VALUES (121, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 14:41:13', '2019-04-19 14:41:13');
INSERT INTO `sail_admin_operation_log` VALUES (122, 1, 'admin/auth/menu/16', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\"}', '2019-04-19 14:41:16', '2019-04-19 14:41:16');
INSERT INTO `sail_admin_operation_log` VALUES (123, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 14:41:16', '2019-04-19 14:41:16');
INSERT INTO `sail_admin_operation_log` VALUES (124, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 14:41:18', '2019-04-19 14:41:18');
INSERT INTO `sail_admin_operation_log` VALUES (125, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 14:42:12', '2019-04-19 14:42:12');
INSERT INTO `sail_admin_operation_log` VALUES (126, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 14:42:15', '2019-04-19 14:42:15');
INSERT INTO `sail_admin_operation_log` VALUES (127, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-04-19 14:42:16', '2019-04-19 14:42:16');
INSERT INTO `sail_admin_operation_log` VALUES (128, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 14:42:20', '2019-04-19 14:42:20');
INSERT INTO `sail_admin_operation_log` VALUES (129, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 14:42:22', '2019-04-19 14:42:22');
INSERT INTO `sail_admin_operation_log` VALUES (130, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 14:42:26', '2019-04-19 14:42:26');
INSERT INTO `sail_admin_operation_log` VALUES (131, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2019-04-19 15:09:41', '2019-04-19 15:09:41');
INSERT INTO `sail_admin_operation_log` VALUES (132, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:09:43', '2019-04-19 15:09:43');
INSERT INTO `sail_admin_operation_log` VALUES (133, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:09:44', '2019-04-19 15:09:44');
INSERT INTO `sail_admin_operation_log` VALUES (134, 1, 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:09:45', '2019-04-19 15:09:45');
INSERT INTO `sail_admin_operation_log` VALUES (135, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2019-04-19 15:23:38', '2019-04-19 15:23:38');
INSERT INTO `sail_admin_operation_log` VALUES (136, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:23:39', '2019-04-19 15:23:39');
INSERT INTO `sail_admin_operation_log` VALUES (137, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2019-04-19 15:23:39', '2019-04-19 15:23:39');
INSERT INTO `sail_admin_operation_log` VALUES (138, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2019-04-19 15:23:40', '2019-04-19 15:23:40');
INSERT INTO `sail_admin_operation_log` VALUES (139, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:23:41', '2019-04-19 15:23:41');
INSERT INTO `sail_admin_operation_log` VALUES (140, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2019-04-19 15:23:42', '2019-04-19 15:23:42');
INSERT INTO `sail_admin_operation_log` VALUES (141, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:23:45', '2019-04-19 15:23:45');
INSERT INTO `sail_admin_operation_log` VALUES (142, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2019-04-19 15:23:45', '2019-04-19 15:23:45');
INSERT INTO `sail_admin_operation_log` VALUES (143, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:23:46', '2019-04-19 15:23:46');
INSERT INTO `sail_admin_operation_log` VALUES (144, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2019-04-19 15:23:47', '2019-04-19 15:23:47');
INSERT INTO `sail_admin_operation_log` VALUES (145, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:23:47', '2019-04-19 15:23:47');
INSERT INTO `sail_admin_operation_log` VALUES (146, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2019-04-19 15:23:47', '2019-04-19 15:23:47');
INSERT INTO `sail_admin_operation_log` VALUES (147, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:23:48', '2019-04-19 15:23:48');
INSERT INTO `sail_admin_operation_log` VALUES (148, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2019-04-19 15:23:48', '2019-04-19 15:23:48');
INSERT INTO `sail_admin_operation_log` VALUES (149, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:23:50', '2019-04-19 15:23:50');
INSERT INTO `sail_admin_operation_log` VALUES (150, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2019-04-19 15:23:50', '2019-04-19 15:23:50');
INSERT INTO `sail_admin_operation_log` VALUES (151, 1, 'admin/logs', 'GET', '127.0.0.1', '[]', '2019-04-19 15:25:39', '2019-04-19 15:25:39');
INSERT INTO `sail_admin_operation_log` VALUES (152, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:25:41', '2019-04-19 15:25:41');
INSERT INTO `sail_admin_operation_log` VALUES (153, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '[]', '2019-04-19 15:25:53', '2019-04-19 15:25:53');
INSERT INTO `sail_admin_operation_log` VALUES (154, 1, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:25:59', '2019-04-19 15:25:59');
INSERT INTO `sail_admin_operation_log` VALUES (155, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:26:00', '2019-04-19 15:26:00');
INSERT INTO `sail_admin_operation_log` VALUES (156, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:26:03', '2019-04-19 15:26:03');
INSERT INTO `sail_admin_operation_log` VALUES (157, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":11}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":13}]},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":21}]\"}', '2019-04-19 15:26:26', '2019-04-19 15:26:26');
INSERT INTO `sail_admin_operation_log` VALUES (158, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:26:27', '2019-04-19 15:26:27');
INSERT INTO `sail_admin_operation_log` VALUES (159, 1, 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:26:29', '2019-04-19 15:26:29');
INSERT INTO `sail_admin_operation_log` VALUES (160, 1, 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7f51\\u7ad9\\u57f9\\u690d\",\"icon\":\"fa-toggle-on\",\"uri\":\"configx\\/edit\",\"roles\":[null],\"permission\":null,\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-19 15:26:36', '2019-04-19 15:26:36');
INSERT INTO `sail_admin_operation_log` VALUES (161, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 15:26:36', '2019-04-19 15:26:36');
INSERT INTO `sail_admin_operation_log` VALUES (162, 1, 'admin/auth/menu/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:26:40', '2019-04-19 15:26:40');
INSERT INTO `sail_admin_operation_log` VALUES (163, 1, 'admin/auth/menu/20', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u7f51\\u7ad9\\u914d\\u7f6e\",\"icon\":\"fa-toggle-on\",\"uri\":\"configx\\/edit\",\"roles\":[null],\"permission\":null,\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-19 15:26:46', '2019-04-19 15:26:46');
INSERT INTO `sail_admin_operation_log` VALUES (164, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 15:26:46', '2019-04-19 15:26:46');
INSERT INTO `sail_admin_operation_log` VALUES (165, 1, 'admin/auth/menu/21', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\"}', '2019-04-19 15:26:51', '2019-04-19 15:26:51');
INSERT INTO `sail_admin_operation_log` VALUES (166, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:26:51', '2019-04-19 15:26:51');
INSERT INTO `sail_admin_operation_log` VALUES (167, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u7ba1\\u7406\\u5458\\u7ba1\\u7406\",\"icon\":\"fa-user-secret\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\"}', '2019-04-19 15:27:20', '2019-04-19 15:27:20');
INSERT INTO `sail_admin_operation_log` VALUES (168, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 15:27:21', '2019-04-19 15:27:21');
INSERT INTO `sail_admin_operation_log` VALUES (169, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 15:27:26', '2019-04-19 15:27:26');
INSERT INTO `sail_admin_operation_log` VALUES (170, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":22,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":11}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":13}]},{\\\"id\\\":14},{\\\"id\\\":15}]\"}', '2019-04-19 15:27:40', '2019-04-19 15:27:40');
INSERT INTO `sail_admin_operation_log` VALUES (171, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:27:40', '2019-04-19 15:27:40');
INSERT INTO `sail_admin_operation_log` VALUES (172, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-19 15:27:42', '2019-04-19 15:27:42');
INSERT INTO `sail_admin_operation_log` VALUES (173, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:27:44', '2019-04-19 15:27:44');
INSERT INTO `sail_admin_operation_log` VALUES (174, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_type\":\"base\",\"c_key\":\"base.web_name\",\"c_name\":\"LmSail\\u793e\\u533a\",\"c_element\":\"normal\",\"c_help\":\"\\u7f51\\u7ad9\\u540d\\u79f0\",\"c_options\":null},\"tabindex\":\"2\",\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\"}', '2019-04-19 15:28:08', '2019-04-19 15:28:08');
INSERT INTO `sail_admin_operation_log` VALUES (175, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-19 15:28:08', '2019-04-19 15:28:08');
INSERT INTO `sail_admin_operation_log` VALUES (176, 1, 'admin/configx/edit/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:28:30', '2019-04-19 15:28:30');
INSERT INTO `sail_admin_operation_log` VALUES (177, 1, 'admin/configx/saveall/1', 'POST', '127.0.0.1', '{\"values\":{\"c_type\":\"\\u57fa\\u672c\\u8bbe\\u7f6e\",\"c_key\":\"base.web_name\",\"c_name\":\"\\u7f51\\u7ad9\\u540d\\u79f0\",\"c_element\":\"normal\",\"c_help\":\"LmSail\\u793e\\u533a\",\"c_options\":null},\"tabindex\":\"0\",\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\"}', '2019-04-19 15:28:46', '2019-04-19 15:28:46');
INSERT INTO `sail_admin_operation_log` VALUES (178, 1, 'admin/configx/edit/1', 'GET', '127.0.0.1', '[]', '2019-04-19 15:28:46', '2019-04-19 15:28:46');
INSERT INTO `sail_admin_operation_log` VALUES (179, 1, 'admin/configx/edit/1', 'GET', '127.0.0.1', '[]', '2019-04-19 15:28:47', '2019-04-19 15:28:47');
INSERT INTO `sail_admin_operation_log` VALUES (180, 1, 'admin/configx/edit/1', 'GET', '127.0.0.1', '[]', '2019-04-19 15:28:51', '2019-04-19 15:28:51');
INSERT INTO `sail_admin_operation_log` VALUES (181, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:28:52', '2019-04-19 15:28:52');
INSERT INTO `sail_admin_operation_log` VALUES (182, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:28:54', '2019-04-19 15:28:54');
INSERT INTO `sail_admin_operation_log` VALUES (183, 1, 'admin/configx/edit/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:29:04', '2019-04-19 15:29:04');
INSERT INTO `sail_admin_operation_log` VALUES (184, 1, 'admin/configx/saveall/1', 'POST', '127.0.0.1', '{\"values\":{\"c_type\":\"\\u57fa\\u672c\\u8bbe\\u7f6e\",\"c_key\":\"base.web_name\",\"c_name\":\"\\u7f51\\u7ad9\\u540d\\u79f0\",\"c_element\":\"normal\",\"c_help\":\"\\u8bf7\\u8f93\\u5165\\u7f51\\u7ad9\\u540d\\u79f0\\uff0c\\u5982\\uff1aLmSail\\u793e\\u533a\",\"c_options\":null},\"tabindex\":\"0\",\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\"}', '2019-04-19 15:29:17', '2019-04-19 15:29:17');
INSERT INTO `sail_admin_operation_log` VALUES (185, 1, 'admin/configx/edit/1', 'GET', '127.0.0.1', '[]', '2019-04-19 15:29:17', '2019-04-19 15:29:17');
INSERT INTO `sail_admin_operation_log` VALUES (186, 1, 'admin/configx/edit/1', 'GET', '127.0.0.1', '[]', '2019-04-19 15:29:22', '2019-04-19 15:29:22');
INSERT INTO `sail_admin_operation_log` VALUES (187, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-19 15:29:24', '2019-04-19 15:29:24');
INSERT INTO `sail_admin_operation_log` VALUES (188, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"1\",\"c_type\":\"base\",\"c_key\":\"base.web_title\",\"c_name\":\"\\u7f51\\u7ad9\\u6807\\u9898\",\"c_element\":\"normal\",\"c_help\":\"\\u8bf7\\u8f93\\u5165\\u7f51\\u7ad9\\u6807\\u9898\\uff0c\\u5982\\uff1a\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_options\":null},\"tabindex\":\"2\",\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\"}', '2019-04-19 15:30:29', '2019-04-19 15:30:29');
INSERT INTO `sail_admin_operation_log` VALUES (189, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-19 15:30:29', '2019-04-19 15:30:29');
INSERT INTO `sail_admin_operation_log` VALUES (190, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_key\":null,\"c_name\":null,\"c_element\":\"normal\",\"c_help\":null,\"c_options\":null},\"tabindex\":\"0\",\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\"}', '2019-04-19 15:30:40', '2019-04-19 15:30:40');
INSERT INTO `sail_admin_operation_log` VALUES (191, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-19 15:30:41', '2019-04-19 15:30:41');
INSERT INTO `sail_admin_operation_log` VALUES (192, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-19 15:30:43', '2019-04-19 15:30:43');
INSERT INTO `sail_admin_operation_log` VALUES (193, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-19 15:52:21', '2019-04-19 15:52:21');
INSERT INTO `sail_admin_operation_log` VALUES (194, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_type\":\"base\",\"c_key\":\"base.web_description\",\"c_name\":\"\\u7f51\\u7ad9\\u63cf\\u8ff0\",\"c_element\":\"normal\",\"c_help\":\"\\u8bf7\\u8f93\\u5165\\u7f51\\u7ad9\\u63cf\\u8ff0\\uff0c\\u5982\\uff1a\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_options\":null},\"tabindex\":\"2\",\"_token\":\"gZz6Tn3eP9e9ArYWCr2bFojjxQfVe4fj43g2IJNX\"}', '2019-04-19 15:53:18', '2019-04-19 15:53:18');
INSERT INTO `sail_admin_operation_log` VALUES (195, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-19 15:53:18', '2019-04-19 15:53:18');
INSERT INTO `sail_admin_operation_log` VALUES (196, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-21 16:50:50', '2019-04-21 16:50:50');
INSERT INTO `sail_admin_operation_log` VALUES (197, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 16:50:52', '2019-04-21 16:50:52');
INSERT INTO `sail_admin_operation_log` VALUES (198, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 16:50:56', '2019-04-21 16:50:56');
INSERT INTO `sail_admin_operation_log` VALUES (199, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 16:50:57', '2019-04-21 16:50:57');
INSERT INTO `sail_admin_operation_log` VALUES (200, 1, 'admin/blogs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 16:50:59', '2019-04-21 16:50:59');
INSERT INTO `sail_admin_operation_log` VALUES (201, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 16:51:02', '2019-04-21 16:51:02');
INSERT INTO `sail_admin_operation_log` VALUES (202, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 16:51:06', '2019-04-21 16:51:06');
INSERT INTO `sail_admin_operation_log` VALUES (203, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 16:51:07', '2019-04-21 16:51:07');
INSERT INTO `sail_admin_operation_log` VALUES (204, 1, 'admin/blogs/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 16:51:09', '2019-04-21 16:51:09');
INSERT INTO `sail_admin_operation_log` VALUES (205, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-21 16:51:47', '2019-04-21 16:51:47');
INSERT INTO `sail_admin_operation_log` VALUES (206, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 19:17:19', '2019-04-21 19:17:19');
INSERT INTO `sail_admin_operation_log` VALUES (207, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 20:01:07', '2019-04-21 20:01:07');
INSERT INTO `sail_admin_operation_log` VALUES (208, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_4\":\"1\",\"c_type\":\"base\",\"c_key\":\"base.version\",\"c_name\":\"\\u535a\\u5ba2\\u7248\\u672c\",\"c_element\":\"normal\",\"c_help\":\"\\u9ed8\\u8ba4v1.0.1\",\"c_options\":null},\"tabindex\":\"2\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 20:01:43', '2019-04-21 20:01:43');
INSERT INTO `sail_admin_operation_log` VALUES (209, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 20:01:43', '2019-04-21 20:01:43');
INSERT INTO `sail_admin_operation_log` VALUES (210, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_key\":null,\"c_name\":null,\"c_element\":\"normal\",\"c_help\":null,\"c_options\":null},\"tabindex\":\"0\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 20:01:55', '2019-04-21 20:01:55');
INSERT INTO `sail_admin_operation_log` VALUES (211, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 20:01:55', '2019-04-21 20:01:55');
INSERT INTO `sail_admin_operation_log` VALUES (212, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_type\":\"base\",\"c_key\":\"base.keywords\",\"c_name\":\"\\u5173\\u952e\\u5b57\",\"c_element\":\"normal\",\"c_help\":\"\\u8bf7\\u8f93\\u5165\\u7f51\\u7ad9\\u5173\\u952e\\u8bcd\",\"c_options\":null},\"tabindex\":\"2\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 20:02:25', '2019-04-21 20:02:25');
INSERT INTO `sail_admin_operation_log` VALUES (213, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 20:02:25', '2019-04-21 20:02:25');
INSERT INTO `sail_admin_operation_log` VALUES (214, 1, 'admin/configx/sort', 'PUT', '127.0.0.1', '{\"data\":[{\"id\":\"1\"},{\"id\":\"3\"},{\"id\":\"4\"},{\"id\":\"6\"},{\"id\":\"5\"}],\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\",\"_method\":\"PUT\"}', '2019-04-21 20:02:31', '2019-04-21 20:02:31');
INSERT INTO `sail_admin_operation_log` VALUES (215, 1, 'admin/configx/sort', 'PUT', '127.0.0.1', '{\"data\":[{\"id\":\"1\"},{\"id\":\"3\"},{\"id\":\"6\"},{\"id\":\"4\"},{\"id\":\"5\"}],\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\",\"_method\":\"PUT\"}', '2019-04-21 20:02:34', '2019-04-21 20:02:34');
INSERT INTO `sail_admin_operation_log` VALUES (216, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_6\":\"1\",\"c_key\":null,\"c_name\":null,\"c_element\":\"normal\",\"c_help\":null,\"c_options\":null},\"tabindex\":\"2\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 20:02:36', '2019-04-21 20:02:36');
INSERT INTO `sail_admin_operation_log` VALUES (217, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 20:02:36', '2019-04-21 20:02:36');
INSERT INTO `sail_admin_operation_log` VALUES (218, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_6\":\"LmSail, sail, lmsail, laravel, \\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_key\":null,\"c_name\":null,\"c_element\":\"normal\",\"c_help\":null,\"c_options\":null},\"tabindex\":\"0\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 20:02:51', '2019-04-21 20:02:51');
INSERT INTO `sail_admin_operation_log` VALUES (219, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 20:02:51', '2019-04-21 20:02:51');
INSERT INTO `sail_admin_operation_log` VALUES (220, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 20:05:29', '2019-04-21 20:05:29');
INSERT INTO `sail_admin_operation_log` VALUES (221, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_6\":\"LmSail, sail, lmsail, laravel, \\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_type\":\"base\",\"c_key\":\"base.author\",\"c_name\":\"\\u7f51\\u7ad9\\u4f5c\\u8005\",\"c_element\":\"normal\",\"c_help\":\"\\u5982\\uff1almsail\",\"c_options\":null},\"tabindex\":\"2\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 20:09:31', '2019-04-21 20:09:31');
INSERT INTO `sail_admin_operation_log` VALUES (222, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 20:09:31', '2019-04-21 20:09:31');
INSERT INTO `sail_admin_operation_log` VALUES (223, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_6\":\"LmSail, sail, lmsail, laravel, \\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_7\":\"lmsail\",\"c_key\":null,\"c_name\":null,\"c_element\":\"normal\",\"c_help\":null,\"c_options\":null},\"tabindex\":\"0\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 20:09:39', '2019-04-21 20:09:39');
INSERT INTO `sail_admin_operation_log` VALUES (224, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 20:09:39', '2019-04-21 20:09:39');
INSERT INTO `sail_admin_operation_log` VALUES (225, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_6\":\"LmSail, sail, lmsail, laravel, \\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_7\":\"lmsail\",\"c_type\":\"base\",\"c_key\":\"base.copyright\",\"c_name\":\"\\u7248\\u6743\\u4fe1\\u606f\",\"c_element\":\"normal\",\"c_help\":\"\\u7248\\u6743\\u4fe1\\u606f\\uff0c\\u5982\\uff1aPowered by lmsail.net\",\"c_options\":null},\"tabindex\":\"2\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 20:13:56', '2019-04-21 20:13:56');
INSERT INTO `sail_admin_operation_log` VALUES (226, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 20:13:56', '2019-04-21 20:13:56');
INSERT INTO `sail_admin_operation_log` VALUES (227, 1, 'admin/configx/edit/8', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 20:14:02', '2019-04-21 20:14:02');
INSERT INTO `sail_admin_operation_log` VALUES (228, 1, 'admin/configx/saveall/8', 'POST', '127.0.0.1', '{\"values\":{\"c_type\":\"\\u57fa\\u672c\\u8bbe\\u7f6e\",\"c_key\":\"base.copyright\",\"c_name\":\"\\u7248\\u6743\\u4fe1\\u606f\",\"c_element\":\"normal\",\"c_help\":\"\\u7248\\u6743\\u4fe1\\u606f\\uff0c\\u5982\\uff1aPowered by lmsail.com\",\"c_options\":null},\"tabindex\":\"0\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 20:14:05', '2019-04-21 20:14:05');
INSERT INTO `sail_admin_operation_log` VALUES (229, 1, 'admin/configx/edit/8', 'GET', '127.0.0.1', '[]', '2019-04-21 20:14:05', '2019-04-21 20:14:05');
INSERT INTO `sail_admin_operation_log` VALUES (230, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 20:14:11', '2019-04-21 20:14:11');
INSERT INTO `sail_admin_operation_log` VALUES (231, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_6\":\"LmSail, sail, lmsail, laravel, \\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_7\":\"lmsail\",\"c_8\":\"Powered by lmsail.com\",\"c_key\":null,\"c_name\":null,\"c_element\":\"normal\",\"c_help\":null,\"c_options\":null},\"tabindex\":\"0\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 20:14:14', '2019-04-21 20:14:14');
INSERT INTO `sail_admin_operation_log` VALUES (232, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 20:14:15', '2019-04-21 20:14:15');
INSERT INTO `sail_admin_operation_log` VALUES (233, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_6\":\"LmSail, sail, lmsail, laravel, \\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_7\":\"lmsail\",\"c_8\":\"Powered by lmsail.com\",\"c_type\":\"base\",\"c_key\":\"base.contact_email\",\"c_name\":\"\\u8054\\u7cfb\\u90ae\\u7bb1\",\"c_element\":\"normal\",\"c_help\":\"\\u586b\\u5199\\u90ae\\u7bb1\\u5730\\u5740\",\"c_options\":null},\"tabindex\":\"2\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 20:15:45', '2019-04-21 20:15:45');
INSERT INTO `sail_admin_operation_log` VALUES (234, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 20:15:45', '2019-04-21 20:15:45');
INSERT INTO `sail_admin_operation_log` VALUES (235, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_6\":\"LmSail, sail, lmsail, laravel, \\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_7\":\"lmsail\",\"c_8\":\"Powered by lmsail.com\",\"c_9\":\"582639426@qq.com\",\"c_key\":null,\"c_name\":null,\"c_element\":\"normal\",\"c_help\":null,\"c_options\":null},\"tabindex\":\"0\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 20:15:53', '2019-04-21 20:15:53');
INSERT INTO `sail_admin_operation_log` VALUES (236, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 20:15:53', '2019-04-21 20:15:53');
INSERT INTO `sail_admin_operation_log` VALUES (237, 1, 'admin/configx/edit/8', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:09:14', '2019-04-21 21:09:14');
INSERT INTO `sail_admin_operation_log` VALUES (238, 1, 'admin/configx/saveall/8', 'POST', '127.0.0.1', '{\"values\":{\"c_type\":\"\\u57fa\\u672c\\u8bbe\\u7f6e\",\"c_key\":\"base.copyright\",\"c_name\":\"\\u7248\\u6743\\u4fe1\\u606f\",\"c_element\":\"normal\",\"c_help\":\"\\u7248\\u6743\\u4fe1\\u606f\\uff0c\\u5982\\uff1aPowered by lmsail.com\\uff0c\\u53ef\\u4ee5\\u968f\\u610f\\u66f4\\u6539\\u6216\\u62b9\\u53bb\",\"c_options\":null},\"tabindex\":\"0\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 21:09:28', '2019-04-21 21:09:28');
INSERT INTO `sail_admin_operation_log` VALUES (239, 1, 'admin/configx/edit/8', 'GET', '127.0.0.1', '[]', '2019-04-21 21:09:28', '2019-04-21 21:09:28');
INSERT INTO `sail_admin_operation_log` VALUES (240, 1, 'admin/configx/edit/8', 'GET', '127.0.0.1', '[]', '2019-04-21 21:09:31', '2019-04-21 21:09:31');
INSERT INTO `sail_admin_operation_log` VALUES (241, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:09:34', '2019-04-21 21:09:34');
INSERT INTO `sail_admin_operation_log` VALUES (242, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:14:42', '2019-04-21 21:14:42');
INSERT INTO `sail_admin_operation_log` VALUES (243, 1, 'admin/logs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:14:47', '2019-04-21 21:14:47');
INSERT INTO `sail_admin_operation_log` VALUES (244, 1, 'admin/logs/laravel-2019-04-20.log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:14:57', '2019-04-21 21:14:57');
INSERT INTO `sail_admin_operation_log` VALUES (245, 1, 'admin/logs/laravel-2019-04-19.log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:14:58', '2019-04-21 21:14:58');
INSERT INTO `sail_admin_operation_log` VALUES (246, 1, 'admin/logs/laravel-2019-04-21.log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:14:58', '2019-04-21 21:14:58');
INSERT INTO `sail_admin_operation_log` VALUES (247, 1, 'admin/logs/laravel-2019-04-20.log', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:14:59', '2019-04-21 21:14:59');
INSERT INTO `sail_admin_operation_log` VALUES (248, 1, 'admin/logs/laravel-2019-04-20.log', 'GET', '127.0.0.1', '{\"offset\":\"-288274\",\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:15:00', '2019-04-21 21:15:00');
INSERT INTO `sail_admin_operation_log` VALUES (249, 1, 'admin/logs/laravel-2019-04-20.log', 'GET', '127.0.0.1', '{\"offset\":\"-26036\",\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:15:07', '2019-04-21 21:15:07');
INSERT INTO `sail_admin_operation_log` VALUES (250, 1, 'admin/logs/laravel-2019-04-20.log', 'GET', '127.0.0.1', '{\"offset\":\"26036\",\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:15:08', '2019-04-21 21:15:08');
INSERT INTO `sail_admin_operation_log` VALUES (251, 1, 'admin/logs/laravel-2019-04-20.log', 'GET', '127.0.0.1', '{\"offset\":\"288274\",\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:15:10', '2019-04-21 21:15:10');
INSERT INTO `sail_admin_operation_log` VALUES (252, 1, 'admin/logs/laravel-2019-04-20.log', 'GET', '127.0.0.1', '{\"offset\":\"-288274\",\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:15:20', '2019-04-21 21:15:20');
INSERT INTO `sail_admin_operation_log` VALUES (253, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:15:28', '2019-04-21 21:15:28');
INSERT INTO `sail_admin_operation_log` VALUES (254, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:15:40', '2019-04-21 21:15:40');
INSERT INTO `sail_admin_operation_log` VALUES (255, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:15:45', '2019-04-21 21:15:45');
INSERT INTO `sail_admin_operation_log` VALUES (256, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-04-21 21:15:46', '2019-04-21 21:15:46');
INSERT INTO `sail_admin_operation_log` VALUES (257, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-21 22:02:10', '2019-04-21 22:02:10');
INSERT INTO `sail_admin_operation_log` VALUES (258, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:02:23', '2019-04-21 22:02:23');
INSERT INTO `sail_admin_operation_log` VALUES (259, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_6\":\"LmSail, sail, lmsail, laravel, \\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_7\":\"lmsail\",\"c_8\":\"Powered by lmsail.com\",\"c_9\":\"582639426@qq.com\",\"c_type\":\"base\",\"c_key\":\"base.logo\",\"c_name\":\"\\u7f51\\u7ad9LOGO\",\"c_element\":\"image\",\"c_help\":\"\\u7f51\\u7ad9LOGO\",\"c_options\":null},\"tabindex\":\"2\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 22:03:18', '2019-04-21 22:03:18');
INSERT INTO `sail_admin_operation_log` VALUES (260, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 22:03:18', '2019-04-21 22:03:18');
INSERT INTO `sail_admin_operation_log` VALUES (261, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\\u793e\\u533a\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_6\":\"LmSail, sail, lmsail, laravel, \\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_7\":\"lmsail\",\"c_8\":\"Powered by lmsail.com\",\"c_9\":\"582639426@qq.com\",\"c_key\":null,\"c_name\":null,\"c_element\":\"normal\",\"c_help\":null,\"c_options\":null},\"tabindex\":\"0\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 22:03:53', '2019-04-21 22:03:53');
INSERT INTO `sail_admin_operation_log` VALUES (262, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 22:03:53', '2019-04-21 22:03:53');
INSERT INTO `sail_admin_operation_log` VALUES (263, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 22:12:14', '2019-04-21 22:12:14');
INSERT INTO `sail_admin_operation_log` VALUES (264, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-21 22:13:08', '2019-04-21 22:13:08');
INSERT INTO `sail_admin_operation_log` VALUES (265, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:13:20', '2019-04-21 22:13:20');
INSERT INTO `sail_admin_operation_log` VALUES (266, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:13:21', '2019-04-21 22:13:21');
INSERT INTO `sail_admin_operation_log` VALUES (267, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:13:23', '2019-04-21 22:13:23');
INSERT INTO `sail_admin_operation_log` VALUES (268, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:15:02', '2019-04-21 22:15:02');
INSERT INTO `sail_admin_operation_log` VALUES (269, 1, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"\\u793e\\u533a\\u7ba1\\u7406\\u5458\",\"password\":\"$2y$10$.KD0kqSOZB5PSZxA0KDrL.zKCShr6RbReckcGxeNrOePQI.wWocGC\",\"password_confirmation\":\"$2y$10$.KD0kqSOZB5PSZxA0KDrL.zKCShr6RbReckcGxeNrOePQI.wWocGC\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/configx\\/edit\"}', '2019-04-21 22:15:41', '2019-04-21 22:15:41');
INSERT INTO `sail_admin_operation_log` VALUES (270, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-04-21 22:15:41', '2019-04-21 22:15:41');
INSERT INTO `sail_admin_operation_log` VALUES (271, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-04-21 22:15:43', '2019-04-21 22:15:43');
INSERT INTO `sail_admin_operation_log` VALUES (272, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-04-21 22:17:17', '2019-04-21 22:17:17');
INSERT INTO `sail_admin_operation_log` VALUES (273, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-04-21 22:17:42', '2019-04-21 22:17:42');
INSERT INTO `sail_admin_operation_log` VALUES (274, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:17:49', '2019-04-21 22:17:49');
INSERT INTO `sail_admin_operation_log` VALUES (275, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:17:49', '2019-04-21 22:17:49');
INSERT INTO `sail_admin_operation_log` VALUES (276, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:17:53', '2019-04-21 22:17:53');
INSERT INTO `sail_admin_operation_log` VALUES (277, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:17:57', '2019-04-21 22:17:57');
INSERT INTO `sail_admin_operation_log` VALUES (278, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-04-21 22:18:04', '2019-04-21 22:18:04');
INSERT INTO `sail_admin_operation_log` VALUES (279, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-04-21 22:18:08', '2019-04-21 22:18:08');
INSERT INTO `sail_admin_operation_log` VALUES (280, 1, 'admin/dynamics/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:18:15', '2019-04-21 22:18:15');
INSERT INTO `sail_admin_operation_log` VALUES (281, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:18:18', '2019-04-21 22:18:18');
INSERT INTO `sail_admin_operation_log` VALUES (282, 1, 'admin/dynamics/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:18:19', '2019-04-21 22:18:19');
INSERT INTO `sail_admin_operation_log` VALUES (283, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:20:11', '2019-04-21 22:20:11');
INSERT INTO `sail_admin_operation_log` VALUES (284, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:20:13', '2019-04-21 22:20:13');
INSERT INTO `sail_admin_operation_log` VALUES (285, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:20:28', '2019-04-21 22:20:28');
INSERT INTO `sail_admin_operation_log` VALUES (286, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:20:32', '2019-04-21 22:20:32');
INSERT INTO `sail_admin_operation_log` VALUES (287, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:21:11', '2019-04-21 22:21:11');
INSERT INTO `sail_admin_operation_log` VALUES (288, 1, 'admin/users/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:21:13', '2019-04-21 22:21:13');
INSERT INTO `sail_admin_operation_log` VALUES (289, 1, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:21:57', '2019-04-21 22:21:57');
INSERT INTO `sail_admin_operation_log` VALUES (290, 1, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:21:58', '2019-04-21 22:21:58');
INSERT INTO `sail_admin_operation_log` VALUES (291, 1, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:22:07', '2019-04-21 22:22:07');
INSERT INTO `sail_admin_operation_log` VALUES (292, 1, 'admin/users/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:22:43', '2019-04-21 22:22:43');
INSERT INTO `sail_admin_operation_log` VALUES (293, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:22:45', '2019-04-21 22:22:45');
INSERT INTO `sail_admin_operation_log` VALUES (294, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2019-04-21 22:22:51', '2019-04-21 22:22:51');
INSERT INTO `sail_admin_operation_log` VALUES (295, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2019-04-21 22:22:54', '2019-04-21 22:22:54');
INSERT INTO `sail_admin_operation_log` VALUES (296, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:26:59', '2019-04-21 22:26:59');
INSERT INTO `sail_admin_operation_log` VALUES (297, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:27:01', '2019-04-21 22:27:01');
INSERT INTO `sail_admin_operation_log` VALUES (298, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:27:12', '2019-04-21 22:27:12');
INSERT INTO `sail_admin_operation_log` VALUES (299, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:27:21', '2019-04-21 22:27:21');
INSERT INTO `sail_admin_operation_log` VALUES (300, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:27:54', '2019-04-21 22:27:54');
INSERT INTO `sail_admin_operation_log` VALUES (301, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:33:40', '2019-04-21 22:33:40');
INSERT INTO `sail_admin_operation_log` VALUES (302, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:34:52', '2019-04-21 22:34:52');
INSERT INTO `sail_admin_operation_log` VALUES (303, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:34:53', '2019-04-21 22:34:53');
INSERT INTO `sail_admin_operation_log` VALUES (304, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:34:54', '2019-04-21 22:34:54');
INSERT INTO `sail_admin_operation_log` VALUES (305, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:34:54', '2019-04-21 22:34:54');
INSERT INTO `sail_admin_operation_log` VALUES (306, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:35:26', '2019-04-21 22:35:26');
INSERT INTO `sail_admin_operation_log` VALUES (307, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:35:53', '2019-04-21 22:35:53');
INSERT INTO `sail_admin_operation_log` VALUES (308, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:35:59', '2019-04-21 22:35:59');
INSERT INTO `sail_admin_operation_log` VALUES (309, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:36:27', '2019-04-21 22:36:27');
INSERT INTO `sail_admin_operation_log` VALUES (310, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:36:27', '2019-04-21 22:36:27');
INSERT INTO `sail_admin_operation_log` VALUES (311, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:36:42', '2019-04-21 22:36:42');
INSERT INTO `sail_admin_operation_log` VALUES (312, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:37:31', '2019-04-21 22:37:31');
INSERT INTO `sail_admin_operation_log` VALUES (313, 1, 'admin/dynamics/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:37:32', '2019-04-21 22:37:32');
INSERT INTO `sail_admin_operation_log` VALUES (314, 1, 'admin/dynamics/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:37:49', '2019-04-21 22:37:49');
INSERT INTO `sail_admin_operation_log` VALUES (315, 1, 'admin/dynamics/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:37:49', '2019-04-21 22:37:49');
INSERT INTO `sail_admin_operation_log` VALUES (316, 1, 'admin/dynamics/1', 'GET', '127.0.0.1', '[]', '2019-04-21 22:40:22', '2019-04-21 22:40:22');
INSERT INTO `sail_admin_operation_log` VALUES (317, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:40:45', '2019-04-21 22:40:45');
INSERT INTO `sail_admin_operation_log` VALUES (318, 1, 'admin/dynamics', 'GET', '127.0.0.1', '[]', '2019-04-21 22:41:24', '2019-04-21 22:41:24');
INSERT INTO `sail_admin_operation_log` VALUES (319, 1, 'admin/dynamics/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:41:26', '2019-04-21 22:41:26');
INSERT INTO `sail_admin_operation_log` VALUES (320, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:42:07', '2019-04-21 22:42:07');
INSERT INTO `sail_admin_operation_log` VALUES (321, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:42:41', '2019-04-21 22:42:41');
INSERT INTO `sail_admin_operation_log` VALUES (322, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:43:52', '2019-04-21 22:43:52');
INSERT INTO `sail_admin_operation_log` VALUES (323, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:44:13', '2019-04-21 22:44:13');
INSERT INTO `sail_admin_operation_log` VALUES (324, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:44:38', '2019-04-21 22:44:38');
INSERT INTO `sail_admin_operation_log` VALUES (325, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:44:39', '2019-04-21 22:44:39');
INSERT INTO `sail_admin_operation_log` VALUES (326, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:44:48', '2019-04-21 22:44:48');
INSERT INTO `sail_admin_operation_log` VALUES (327, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:45:02', '2019-04-21 22:45:02');
INSERT INTO `sail_admin_operation_log` VALUES (328, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:45:13', '2019-04-21 22:45:13');
INSERT INTO `sail_admin_operation_log` VALUES (329, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:45:30', '2019-04-21 22:45:30');
INSERT INTO `sail_admin_operation_log` VALUES (330, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:45:44', '2019-04-21 22:45:44');
INSERT INTO `sail_admin_operation_log` VALUES (331, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:46:37', '2019-04-21 22:46:37');
INSERT INTO `sail_admin_operation_log` VALUES (332, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:46:43', '2019-04-21 22:46:43');
INSERT INTO `sail_admin_operation_log` VALUES (333, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:47:11', '2019-04-21 22:47:11');
INSERT INTO `sail_admin_operation_log` VALUES (334, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:47:29', '2019-04-21 22:47:29');
INSERT INTO `sail_admin_operation_log` VALUES (335, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:47:56', '2019-04-21 22:47:56');
INSERT INTO `sail_admin_operation_log` VALUES (336, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:48:19', '2019-04-21 22:48:19');
INSERT INTO `sail_admin_operation_log` VALUES (337, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:48:27', '2019-04-21 22:48:27');
INSERT INTO `sail_admin_operation_log` VALUES (338, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:49:18', '2019-04-21 22:49:18');
INSERT INTO `sail_admin_operation_log` VALUES (339, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:50:04', '2019-04-21 22:50:04');
INSERT INTO `sail_admin_operation_log` VALUES (340, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '[]', '2019-04-21 22:50:06', '2019-04-21 22:50:06');
INSERT INTO `sail_admin_operation_log` VALUES (341, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:50:26', '2019-04-21 22:50:26');
INSERT INTO `sail_admin_operation_log` VALUES (342, 1, 'admin/dynamics', 'GET', '127.0.0.1', '[]', '2019-04-21 22:51:25', '2019-04-21 22:51:25');
INSERT INTO `sail_admin_operation_log` VALUES (343, 1, 'admin/dynamics', 'GET', '127.0.0.1', '[]', '2019-04-21 22:51:26', '2019-04-21 22:51:26');
INSERT INTO `sail_admin_operation_log` VALUES (344, 1, 'admin/dynamics', 'GET', '127.0.0.1', '[]', '2019-04-21 22:51:32', '2019-04-21 22:51:32');
INSERT INTO `sail_admin_operation_log` VALUES (345, 1, 'admin/dynamics', 'GET', '127.0.0.1', '[]', '2019-04-21 22:51:32', '2019-04-21 22:51:32');
INSERT INTO `sail_admin_operation_log` VALUES (346, 1, 'admin/dynamics', 'GET', '127.0.0.1', '[]', '2019-04-21 22:52:05', '2019-04-21 22:52:05');
INSERT INTO `sail_admin_operation_log` VALUES (347, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:52:51', '2019-04-21 22:52:51');
INSERT INTO `sail_admin_operation_log` VALUES (348, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:52:52', '2019-04-21 22:52:52');
INSERT INTO `sail_admin_operation_log` VALUES (349, 1, 'admin/dynamics/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:53:19', '2019-04-21 22:53:19');
INSERT INTO `sail_admin_operation_log` VALUES (350, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:53:22', '2019-04-21 22:53:22');
INSERT INTO `sail_admin_operation_log` VALUES (351, 1, 'admin/dynamics', 'GET', '127.0.0.1', '[]', '2019-04-21 22:54:13', '2019-04-21 22:54:13');
INSERT INTO `sail_admin_operation_log` VALUES (352, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:54:14', '2019-04-21 22:54:14');
INSERT INTO `sail_admin_operation_log` VALUES (353, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:54:16', '2019-04-21 22:54:16');
INSERT INTO `sail_admin_operation_log` VALUES (354, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:54:17', '2019-04-21 22:54:17');
INSERT INTO `sail_admin_operation_log` VALUES (355, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-21 22:54:40', '2019-04-21 22:54:40');
INSERT INTO `sail_admin_operation_log` VALUES (356, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:54:43', '2019-04-21 22:54:43');
INSERT INTO `sail_admin_operation_log` VALUES (357, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:54:45', '2019-04-21 22:54:45');
INSERT INTO `sail_admin_operation_log` VALUES (358, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-21 22:54:48', '2019-04-21 22:54:48');
INSERT INTO `sail_admin_operation_log` VALUES (359, 1, 'admin/dynamics/111/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:54:55', '2019-04-21 22:54:55');
INSERT INTO `sail_admin_operation_log` VALUES (360, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:54:57', '2019-04-21 22:54:57');
INSERT INTO `sail_admin_operation_log` VALUES (361, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-21 22:55:10', '2019-04-21 22:55:10');
INSERT INTO `sail_admin_operation_log` VALUES (362, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-21 22:55:21', '2019-04-21 22:55:21');
INSERT INTO `sail_admin_operation_log` VALUES (363, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:55:26', '2019-04-21 22:55:26');
INSERT INTO `sail_admin_operation_log` VALUES (364, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:55:27', '2019-04-21 22:55:27');
INSERT INTO `sail_admin_operation_log` VALUES (365, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:55:27', '2019-04-21 22:55:27');
INSERT INTO `sail_admin_operation_log` VALUES (366, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:55:28', '2019-04-21 22:55:28');
INSERT INTO `sail_admin_operation_log` VALUES (367, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-21 22:55:39', '2019-04-21 22:55:39');
INSERT INTO `sail_admin_operation_log` VALUES (368, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:55:48', '2019-04-21 22:55:48');
INSERT INTO `sail_admin_operation_log` VALUES (369, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"view\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:55:53', '2019-04-21 22:55:53');
INSERT INTO `sail_admin_operation_log` VALUES (370, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"view\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:55:57', '2019-04-21 22:55:57');
INSERT INTO `sail_admin_operation_log` VALUES (371, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:55:58', '2019-04-21 22:55:58');
INSERT INTO `sail_admin_operation_log` VALUES (372, 1, 'admin/dynamics/52', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 22:56:14', '2019-04-21 22:56:14');
INSERT INTO `sail_admin_operation_log` VALUES (373, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:56:14', '2019-04-21 22:56:14');
INSERT INTO `sail_admin_operation_log` VALUES (374, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:56:23', '2019-04-21 22:56:23');
INSERT INTO `sail_admin_operation_log` VALUES (375, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:56:24', '2019-04-21 22:56:24');
INSERT INTO `sail_admin_operation_log` VALUES (376, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:56:24', '2019-04-21 22:56:24');
INSERT INTO `sail_admin_operation_log` VALUES (377, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:56:25', '2019-04-21 22:56:25');
INSERT INTO `sail_admin_operation_log` VALUES (378, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:56:26', '2019-04-21 22:56:26');
INSERT INTO `sail_admin_operation_log` VALUES (379, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:56:27', '2019-04-21 22:56:27');
INSERT INTO `sail_admin_operation_log` VALUES (380, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:56:28', '2019-04-21 22:56:28');
INSERT INTO `sail_admin_operation_log` VALUES (381, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"asc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:56:43', '2019-04-21 22:56:43');
INSERT INTO `sail_admin_operation_log` VALUES (382, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:56:49', '2019-04-21 22:56:49');
INSERT INTO `sail_admin_operation_log` VALUES (383, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:56:55', '2019-04-21 22:56:55');
INSERT INTO `sail_admin_operation_log` VALUES (384, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"comment_id\":null}', '2019-04-21 22:57:00', '2019-04-21 22:57:00');
INSERT INTO `sail_admin_operation_log` VALUES (385, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"comment_id\":\"8\"}', '2019-04-21 22:57:04', '2019-04-21 22:57:04');
INSERT INTO `sail_admin_operation_log` VALUES (386, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"comment_id\":null}', '2019-04-21 22:57:07', '2019-04-21 22:57:07');
INSERT INTO `sail_admin_operation_log` VALUES (387, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '{\"comment_id\":null}', '2019-04-21 22:57:22', '2019-04-21 22:57:22');
INSERT INTO `sail_admin_operation_log` VALUES (388, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '{\"comment_id\":null}', '2019-04-21 22:58:46', '2019-04-21 22:58:46');
INSERT INTO `sail_admin_operation_log` VALUES (389, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '{\"comment_id\":null}', '2019-04-21 22:59:13', '2019-04-21 22:59:13');
INSERT INTO `sail_admin_operation_log` VALUES (390, 1, 'admin/comment/8', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:59:15', '2019-04-21 22:59:15');
INSERT INTO `sail_admin_operation_log` VALUES (391, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '{\"comment_id\":null,\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:59:18', '2019-04-21 22:59:18');
INSERT INTO `sail_admin_operation_log` VALUES (392, 1, 'admin/comment/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:59:19', '2019-04-21 22:59:19');
INSERT INTO `sail_admin_operation_log` VALUES (393, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '{\"comment_id\":null,\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:59:21', '2019-04-21 22:59:21');
INSERT INTO `sail_admin_operation_log` VALUES (394, 1, 'admin/comment/create', 'GET', '127.0.0.1', '{\"foreign_id\":\"117\",\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:59:24', '2019-04-21 22:59:24');
INSERT INTO `sail_admin_operation_log` VALUES (395, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '{\"comment_id\":null,\"_pjax\":\"#pjax-container\"}', '2019-04-21 22:59:26', '2019-04-21 22:59:26');
INSERT INTO `sail_admin_operation_log` VALUES (396, 1, 'admin/dynamics/117', 'GET', '127.0.0.1', '{\"comment_id\":null}', '2019-04-21 22:59:51', '2019-04-21 22:59:51');
INSERT INTO `sail_admin_operation_log` VALUES (397, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:00:08', '2019-04-21 23:00:08');
INSERT INTO `sail_admin_operation_log` VALUES (398, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:00:32', '2019-04-21 23:00:32');
INSERT INTO `sail_admin_operation_log` VALUES (399, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:00:34', '2019-04-21 23:00:34');
INSERT INTO `sail_admin_operation_log` VALUES (400, 1, 'admin/blogs/1', 'GET', '127.0.0.1', '[]', '2019-04-21 23:01:20', '2019-04-21 23:01:20');
INSERT INTO `sail_admin_operation_log` VALUES (401, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:01:29', '2019-04-21 23:01:29');
INSERT INTO `sail_admin_operation_log` VALUES (402, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-21 23:01:31', '2019-04-21 23:01:31');
INSERT INTO `sail_admin_operation_log` VALUES (403, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-21 23:02:26', '2019-04-21 23:02:26');
INSERT INTO `sail_admin_operation_log` VALUES (404, 1, 'admin/blogs/50', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:02:30', '2019-04-21 23:02:30');
INSERT INTO `sail_admin_operation_log` VALUES (405, 1, 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:02:33', '2019-04-21 23:02:33');
INSERT INTO `sail_admin_operation_log` VALUES (406, 1, 'admin/blogs/50', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:02:35', '2019-04-21 23:02:35');
INSERT INTO `sail_admin_operation_log` VALUES (407, 1, 'admin/blogs/50', 'GET', '127.0.0.1', '[]', '2019-04-21 23:03:41', '2019-04-21 23:03:41');
INSERT INTO `sail_admin_operation_log` VALUES (408, 1, 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:05:09', '2019-04-21 23:05:09');
INSERT INTO `sail_admin_operation_log` VALUES (409, 1, 'admin/blogs/50', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:05:28', '2019-04-21 23:05:28');
INSERT INTO `sail_admin_operation_log` VALUES (410, 1, 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:06:03', '2019-04-21 23:06:03');
INSERT INTO `sail_admin_operation_log` VALUES (411, 1, 'admin/blogs/50', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:06:05', '2019-04-21 23:06:05');
INSERT INTO `sail_admin_operation_log` VALUES (412, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:07:09', '2019-04-21 23:07:09');
INSERT INTO `sail_admin_operation_log` VALUES (413, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-21 23:07:12', '2019-04-21 23:07:12');
INSERT INTO `sail_admin_operation_log` VALUES (414, 1, 'admin/blogs/50', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:07:13', '2019-04-21 23:07:13');
INSERT INTO `sail_admin_operation_log` VALUES (415, 1, 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:07:15', '2019-04-21 23:07:15');
INSERT INTO `sail_admin_operation_log` VALUES (416, 1, 'admin/blogs/50', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:07:21', '2019-04-21 23:07:21');
INSERT INTO `sail_admin_operation_log` VALUES (417, 1, 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:07:32', '2019-04-21 23:07:32');
INSERT INTO `sail_admin_operation_log` VALUES (418, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:07:33', '2019-04-21 23:07:33');
INSERT INTO `sail_admin_operation_log` VALUES (419, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:09:31', '2019-04-21 23:09:31');
INSERT INTO `sail_admin_operation_log` VALUES (420, 1, 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:09:34', '2019-04-21 23:09:34');
INSERT INTO `sail_admin_operation_log` VALUES (421, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:09:37', '2019-04-21 23:09:37');
INSERT INTO `sail_admin_operation_log` VALUES (422, 1, 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:10:31', '2019-04-21 23:10:31');
INSERT INTO `sail_admin_operation_log` VALUES (423, 1, 'admin/blogs/50', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:10:32', '2019-04-21 23:10:32');
INSERT INTO `sail_admin_operation_log` VALUES (424, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:10:33', '2019-04-21 23:10:33');
INSERT INTO `sail_admin_operation_log` VALUES (425, 1, 'admin/blogs/50', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:10:35', '2019-04-21 23:10:35');
INSERT INTO `sail_admin_operation_log` VALUES (426, 1, 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:10:39', '2019-04-21 23:10:39');
INSERT INTO `sail_admin_operation_log` VALUES (427, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:10:40', '2019-04-21 23:10:40');
INSERT INTO `sail_admin_operation_log` VALUES (428, 1, 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2019-04-21 23:10:40', '2019-04-21 23:10:40');
INSERT INTO `sail_admin_operation_log` VALUES (429, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:10:44', '2019-04-21 23:10:44');
INSERT INTO `sail_admin_operation_log` VALUES (430, 1, 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2019-04-21 23:10:45', '2019-04-21 23:10:45');
INSERT INTO `sail_admin_operation_log` VALUES (431, 1, 'admin/comment/1', 'GET', '127.0.0.1', '[]', '2019-04-21 23:10:50', '2019-04-21 23:10:50');
INSERT INTO `sail_admin_operation_log` VALUES (432, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:10:57', '2019-04-21 23:10:57');
INSERT INTO `sail_admin_operation_log` VALUES (433, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-04-21 23:11:07', '2019-04-21 23:11:07');
INSERT INTO `sail_admin_operation_log` VALUES (434, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-04-21 23:11:14', '2019-04-21 23:11:14');
INSERT INTO `sail_admin_operation_log` VALUES (435, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-04-21 23:11:25', '2019-04-21 23:11:25');
INSERT INTO `sail_admin_operation_log` VALUES (436, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-04-21 23:11:53', '2019-04-21 23:11:53');
INSERT INTO `sail_admin_operation_log` VALUES (437, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-04-21 23:12:10', '2019-04-21 23:12:10');
INSERT INTO `sail_admin_operation_log` VALUES (438, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-04-21 23:12:35', '2019-04-21 23:12:35');
INSERT INTO `sail_admin_operation_log` VALUES (439, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:12:40', '2019-04-21 23:12:40');
INSERT INTO `sail_admin_operation_log` VALUES (440, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-21 23:13:48', '2019-04-21 23:13:48');
INSERT INTO `sail_admin_operation_log` VALUES (441, 1, 'admin/comment/29', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:13:50', '2019-04-21 23:13:50');
INSERT INTO `sail_admin_operation_log` VALUES (442, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:13:52', '2019-04-21 23:13:52');
INSERT INTO `sail_admin_operation_log` VALUES (443, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-21 23:13:54', '2019-04-21 23:13:54');
INSERT INTO `sail_admin_operation_log` VALUES (444, 1, 'admin/comment/23', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:13:57', '2019-04-21 23:13:57');
INSERT INTO `sail_admin_operation_log` VALUES (445, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:14:06', '2019-04-21 23:14:06');
INSERT INTO `sail_admin_operation_log` VALUES (446, 1, 'admin/comment/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:14:07', '2019-04-21 23:14:07');
INSERT INTO `sail_admin_operation_log` VALUES (447, 1, 'admin/comment/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-21 23:14:38', '2019-04-21 23:14:38');
INSERT INTO `sail_admin_operation_log` VALUES (448, 1, 'admin/comment/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-21 23:14:40', '2019-04-21 23:14:40');
INSERT INTO `sail_admin_operation_log` VALUES (449, 1, 'admin/comment/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-21 23:15:10', '2019-04-21 23:15:10');
INSERT INTO `sail_admin_operation_log` VALUES (450, 1, 'admin/comment/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-21 23:15:21', '2019-04-21 23:15:21');
INSERT INTO `sail_admin_operation_log` VALUES (451, 1, 'admin/comment/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-21 23:16:49', '2019-04-21 23:16:49');
INSERT INTO `sail_admin_operation_log` VALUES (452, 1, 'admin/comment/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-21 23:17:29', '2019-04-21 23:17:29');
INSERT INTO `sail_admin_operation_log` VALUES (453, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:18:16', '2019-04-21 23:18:16');
INSERT INTO `sail_admin_operation_log` VALUES (454, 1, 'admin/comment/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:18:19', '2019-04-21 23:18:19');
INSERT INTO `sail_admin_operation_log` VALUES (455, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:18:23', '2019-04-21 23:18:23');
INSERT INTO `sail_admin_operation_log` VALUES (456, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:18:39', '2019-04-21 23:18:39');
INSERT INTO `sail_admin_operation_log` VALUES (457, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u8bc4\\u8bba\\u7ba1\\u7406\",\"icon\":\"fa-commenting-o\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 23:19:25', '2019-04-21 23:19:25');
INSERT INTO `sail_admin_operation_log` VALUES (458, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-21 23:19:25', '2019-04-21 23:19:25');
INSERT INTO `sail_admin_operation_log` VALUES (459, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"23\",\"title\":\"\\u8bc4\\u8bba\\u5217\\u8868\",\"icon\":\"fa-commenting-o\",\"uri\":\"\\/comment\",\"roles\":[null],\"permission\":null,\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\"}', '2019-04-21 23:20:00', '2019-04-21 23:20:00');
INSERT INTO `sail_admin_operation_log` VALUES (460, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-21 23:20:00', '2019-04-21 23:20:00');
INSERT INTO `sail_admin_operation_log` VALUES (461, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":20},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":22,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":11}]},{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":13}]},{\\\"id\\\":23,\\\"children\\\":[{\\\"id\\\":24}]},{\\\"id\\\":14},{\\\"id\\\":15}]\"}', '2019-04-21 23:20:12', '2019-04-21 23:20:12');
INSERT INTO `sail_admin_operation_log` VALUES (462, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:20:12', '2019-04-21 23:20:12');
INSERT INTO `sail_admin_operation_log` VALUES (463, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-21 23:20:13', '2019-04-21 23:20:13');
INSERT INTO `sail_admin_operation_log` VALUES (464, 1, 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:20:22', '2019-04-21 23:20:22');
INSERT INTO `sail_admin_operation_log` VALUES (465, 1, 'admin/auth/menu/24', 'PUT', '127.0.0.1', '{\"parent_id\":\"23\",\"title\":\"\\u8bc4\\u8bba\\u5217\\u8868\",\"icon\":\"fa-align-justify\",\"uri\":\"\\/comment\",\"roles\":[null],\"permission\":null,\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-21 23:20:32', '2019-04-21 23:20:32');
INSERT INTO `sail_admin_operation_log` VALUES (466, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-21 23:20:32', '2019-04-21 23:20:32');
INSERT INTO `sail_admin_operation_log` VALUES (467, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-21 23:20:34', '2019-04-21 23:20:34');
INSERT INTO `sail_admin_operation_log` VALUES (468, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:20:37', '2019-04-21 23:20:37');
INSERT INTO `sail_admin_operation_log` VALUES (469, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:20:43', '2019-04-21 23:20:43');
INSERT INTO `sail_admin_operation_log` VALUES (470, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:20:46', '2019-04-21 23:20:46');
INSERT INTO `sail_admin_operation_log` VALUES (471, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:20:50', '2019-04-21 23:20:50');
INSERT INTO `sail_admin_operation_log` VALUES (472, 1, 'admin/auth/menu/24/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:20:53', '2019-04-21 23:20:53');
INSERT INTO `sail_admin_operation_log` VALUES (473, 1, 'admin/auth/menu/24', 'PUT', '127.0.0.1', '{\"parent_id\":\"23\",\"title\":\"\\u8bc4\\u8bba\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"\\/comment\",\"roles\":[null],\"permission\":null,\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-21 23:20:57', '2019-04-21 23:20:57');
INSERT INTO `sail_admin_operation_log` VALUES (474, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-21 23:20:57', '2019-04-21 23:20:57');
INSERT INTO `sail_admin_operation_log` VALUES (475, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-21 23:20:59', '2019-04-21 23:20:59');
INSERT INTO `sail_admin_operation_log` VALUES (476, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:21:02', '2019-04-21 23:21:02');
INSERT INTO `sail_admin_operation_log` VALUES (477, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-04-21 23:21:14', '2019-04-21 23:21:14');
INSERT INTO `sail_admin_operation_log` VALUES (478, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:31:36', '2019-04-21 23:31:36');
INSERT INTO `sail_admin_operation_log` VALUES (479, 1, 'admin/comment', 'GET', '127.0.0.1', '[]', '2019-04-21 23:32:03', '2019-04-21 23:32:03');
INSERT INTO `sail_admin_operation_log` VALUES (480, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:32:06', '2019-04-21 23:32:06');
INSERT INTO `sail_admin_operation_log` VALUES (481, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:37:58', '2019-04-21 23:37:58');
INSERT INTO `sail_admin_operation_log` VALUES (482, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-04-21 23:44:16', '2019-04-21 23:44:16');
INSERT INTO `sail_admin_operation_log` VALUES (483, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:44:19', '2019-04-21 23:44:19');
INSERT INTO `sail_admin_operation_log` VALUES (484, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:44:25', '2019-04-21 23:44:25');
INSERT INTO `sail_admin_operation_log` VALUES (485, 1, 'admin/auth/menu/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:44:28', '2019-04-21 23:44:28');
INSERT INTO `sail_admin_operation_log` VALUES (486, 1, 'admin/auth/menu/1', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"\\u540e\\u53f0\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-21 23:44:34', '2019-04-21 23:44:34');
INSERT INTO `sail_admin_operation_log` VALUES (487, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-21 23:44:34', '2019-04-21 23:44:34');
INSERT INTO `sail_admin_operation_log` VALUES (488, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-21 23:44:36', '2019-04-21 23:44:36');
INSERT INTO `sail_admin_operation_log` VALUES (489, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:44:37', '2019-04-21 23:44:37');
INSERT INTO `sail_admin_operation_log` VALUES (490, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:44:39', '2019-04-21 23:44:39');
INSERT INTO `sail_admin_operation_log` VALUES (491, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:44:40', '2019-04-21 23:44:40');
INSERT INTO `sail_admin_operation_log` VALUES (492, 1, 'admin/auth/menu/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:44:45', '2019-04-21 23:44:45');
INSERT INTO `sail_admin_operation_log` VALUES (493, 1, 'admin/auth/menu/6', 'PUT', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/menu\"}', '2019-04-21 23:44:49', '2019-04-21 23:44:49');
INSERT INTO `sail_admin_operation_log` VALUES (494, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-21 23:44:49', '2019-04-21 23:44:49');
INSERT INTO `sail_admin_operation_log` VALUES (495, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-04-21 23:44:51', '2019-04-21 23:44:51');
INSERT INTO `sail_admin_operation_log` VALUES (496, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:44:53', '2019-04-21 23:44:53');
INSERT INTO `sail_admin_operation_log` VALUES (497, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:44:53', '2019-04-21 23:44:53');
INSERT INTO `sail_admin_operation_log` VALUES (498, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:44:55', '2019-04-21 23:44:55');
INSERT INTO `sail_admin_operation_log` VALUES (499, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:44:55', '2019-04-21 23:44:55');
INSERT INTO `sail_admin_operation_log` VALUES (500, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:44:56', '2019-04-21 23:44:56');
INSERT INTO `sail_admin_operation_log` VALUES (501, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:45:27', '2019-04-21 23:45:27');
INSERT INTO `sail_admin_operation_log` VALUES (502, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:45:36', '2019-04-21 23:45:36');
INSERT INTO `sail_admin_operation_log` VALUES (503, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:45:41', '2019-04-21 23:45:41');
INSERT INTO `sail_admin_operation_log` VALUES (504, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:45:44', '2019-04-21 23:45:44');
INSERT INTO `sail_admin_operation_log` VALUES (505, 1, 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"slug\":\"\\u603b\\u7ba1\\u7406\\u5458\",\"name\":\"\\u540e\\u53f0\\u603b\\u7ba1\",\"permissions\":[\"1\",null],\"_token\":\"NqOhyU4CDuUZxnVSlM7nj6BA3l5mPsFB9h34dirS\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/roles\"}', '2019-04-21 23:45:57', '2019-04-21 23:45:57');
INSERT INTO `sail_admin_operation_log` VALUES (506, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-21 23:45:57', '2019-04-21 23:45:57');
INSERT INTO `sail_admin_operation_log` VALUES (507, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:00', '2019-04-21 23:46:00');
INSERT INTO `sail_admin_operation_log` VALUES (508, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:03', '2019-04-21 23:46:03');
INSERT INTO `sail_admin_operation_log` VALUES (509, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:05', '2019-04-21 23:46:05');
INSERT INTO `sail_admin_operation_log` VALUES (510, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:06', '2019-04-21 23:46:06');
INSERT INTO `sail_admin_operation_log` VALUES (511, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:06', '2019-04-21 23:46:06');
INSERT INTO `sail_admin_operation_log` VALUES (512, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:07', '2019-04-21 23:46:07');
INSERT INTO `sail_admin_operation_log` VALUES (513, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:07', '2019-04-21 23:46:07');
INSERT INTO `sail_admin_operation_log` VALUES (514, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:08', '2019-04-21 23:46:08');
INSERT INTO `sail_admin_operation_log` VALUES (515, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:08', '2019-04-21 23:46:08');
INSERT INTO `sail_admin_operation_log` VALUES (516, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:08', '2019-04-21 23:46:08');
INSERT INTO `sail_admin_operation_log` VALUES (517, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:09', '2019-04-21 23:46:09');
INSERT INTO `sail_admin_operation_log` VALUES (518, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:09', '2019-04-21 23:46:09');
INSERT INTO `sail_admin_operation_log` VALUES (519, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:09', '2019-04-21 23:46:09');
INSERT INTO `sail_admin_operation_log` VALUES (520, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:10', '2019-04-21 23:46:10');
INSERT INTO `sail_admin_operation_log` VALUES (521, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:10', '2019-04-21 23:46:10');
INSERT INTO `sail_admin_operation_log` VALUES (522, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:10', '2019-04-21 23:46:10');
INSERT INTO `sail_admin_operation_log` VALUES (523, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:11', '2019-04-21 23:46:11');
INSERT INTO `sail_admin_operation_log` VALUES (524, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:11', '2019-04-21 23:46:11');
INSERT INTO `sail_admin_operation_log` VALUES (525, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:13', '2019-04-21 23:46:13');
INSERT INTO `sail_admin_operation_log` VALUES (526, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:13', '2019-04-21 23:46:13');
INSERT INTO `sail_admin_operation_log` VALUES (527, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-21 23:46:14', '2019-04-21 23:46:14');
INSERT INTO `sail_admin_operation_log` VALUES (528, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-21 23:46:52', '2019-04-21 23:46:52');
INSERT INTO `sail_admin_operation_log` VALUES (529, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-21 23:47:02', '2019-04-21 23:47:02');
INSERT INTO `sail_admin_operation_log` VALUES (530, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-21 23:47:38', '2019-04-21 23:47:38');
INSERT INTO `sail_admin_operation_log` VALUES (531, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-21 23:47:40', '2019-04-21 23:47:40');
INSERT INTO `sail_admin_operation_log` VALUES (532, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-21 23:50:46', '2019-04-21 23:50:46');
INSERT INTO `sail_admin_operation_log` VALUES (533, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 00:03:29', '2019-04-22 00:03:29');
INSERT INTO `sail_admin_operation_log` VALUES (534, 1, 'admin/dynamics', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 00:03:36', '2019-04-22 00:03:36');
INSERT INTO `sail_admin_operation_log` VALUES (535, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 00:03:39', '2019-04-22 00:03:39');
INSERT INTO `sail_admin_operation_log` VALUES (536, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 01:53:12', '2019-04-22 01:53:12');
INSERT INTO `sail_admin_operation_log` VALUES (537, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 01:53:13', '2019-04-22 01:53:13');
INSERT INTO `sail_admin_operation_log` VALUES (538, 1, 'admin/configx/edit/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 01:54:32', '2019-04-22 01:54:32');
INSERT INTO `sail_admin_operation_log` VALUES (539, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 01:54:46', '2019-04-22 01:54:46');
INSERT INTO `sail_admin_operation_log` VALUES (540, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-22 03:23:48', '2019-04-22 03:23:48');
INSERT INTO `sail_admin_operation_log` VALUES (541, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-22 17:22:06', '2019-04-22 17:22:06');
INSERT INTO `sail_admin_operation_log` VALUES (542, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 17:22:14', '2019-04-22 17:22:14');
INSERT INTO `sail_admin_operation_log` VALUES (543, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 17:22:20', '2019-04-22 17:22:20');
INSERT INTO `sail_admin_operation_log` VALUES (544, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 17:22:21', '2019-04-22 17:22:21');
INSERT INTO `sail_admin_operation_log` VALUES (545, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 17:22:23', '2019-04-22 17:22:23');
INSERT INTO `sail_admin_operation_log` VALUES (546, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 17:22:26', '2019-04-22 17:22:26');
INSERT INTO `sail_admin_operation_log` VALUES (547, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 17:22:26', '2019-04-22 17:22:26');
INSERT INTO `sail_admin_operation_log` VALUES (548, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 17:22:30', '2019-04-22 17:22:30');
INSERT INTO `sail_admin_operation_log` VALUES (549, 1, 'admin/auth/roles/1', 'PUT', '127.0.0.1', '{\"slug\":\"\\u603b\\u7ba1\\u7406\\u5458\",\"name\":\"\\u8d3e\\u7ef4\\u65af\",\"permissions\":[\"1\",null],\"_token\":\"7MErQdQ23B3L1XPwi8qaAhVQTLzZ1vuFoJtqvLx4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.blog.net\\/admin\\/auth\\/roles\"}', '2019-04-22 17:23:03', '2019-04-22 17:23:03');
INSERT INTO `sail_admin_operation_log` VALUES (550, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '[]', '2019-04-22 17:23:03', '2019-04-22 17:23:03');
INSERT INTO `sail_admin_operation_log` VALUES (551, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 17:23:06', '2019-04-22 17:23:06');
INSERT INTO `sail_admin_operation_log` VALUES (552, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-22 18:50:34', '2019-04-22 18:50:34');
INSERT INTO `sail_admin_operation_log` VALUES (553, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-22 21:31:14', '2019-04-22 21:31:14');
INSERT INTO `sail_admin_operation_log` VALUES (554, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 21:31:16', '2019-04-22 21:31:16');
INSERT INTO `sail_admin_operation_log` VALUES (555, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '[]', '2019-04-22 21:31:43', '2019-04-22 21:31:43');
INSERT INTO `sail_admin_operation_log` VALUES (556, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_6\":\"LmSail, sail, lmsail, laravel, \\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_7\":\"lmsail\",\"c_8\":\"Powered by lmsail.com\",\"c_9\":\"582639426@qq.com\",\"c_type\":\"blog\",\"c_key\":\"blog.delete\",\"c_name\":\"\\u5220\\u9664\\u6743\\u9650\",\"c_element\":\"yes_or_no\",\"c_help\":\"\\u5f00\\u542f\\u540e\\uff0c\\u7528\\u6237\\u53ef\\u5220\\u9664\\u81ea\\u5df1\\u7684\\u535a\\u6587\\uff01\\u5efa\\u8bae\\u5173\\u95ed\\uff08\\u8be5\\u529f\\u80fd\\u5f71\\u54cd\\u6570\\u636e\\u7edf\\u8ba1\\uff09\",\"c_options\":null},\"tabindex\":\"2\",\"_token\":\"1xq8hRO9wSLaYnvvBtRqF07YgqMMqFeK0Q96p0Ne\"}', '2019-04-22 21:33:11', '2019-04-22 21:33:11');
INSERT INTO `sail_admin_operation_log` VALUES (557, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-22 21:33:11', '2019-04-22 21:33:11');
INSERT INTO `sail_admin_operation_log` VALUES (558, 1, 'admin/configx/edit/11', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 21:33:19', '2019-04-22 21:33:19');
INSERT INTO `sail_admin_operation_log` VALUES (559, 1, 'admin/configx/saveall/11', 'POST', '127.0.0.1', '{\"values\":{\"c_type\":\"\\u535a\\u5ba2\\u8bbe\\u7f6e\",\"c_key\":\"blog.delete\",\"c_name\":\"\\u5220\\u9664\\u6743\\u9650\",\"c_element\":\"radio_group\",\"c_help\":\"\\u5f00\\u542f\\u540e\\uff0c\\u7528\\u6237\\u53ef\\u5220\\u9664\\u81ea\\u5df1\\u7684\\u535a\\u6587\\uff01\\u5efa\\u8bae\\u5173\\u95ed\\uff08\\u8be5\\u529f\\u80fd\\u5f71\\u54cd\\u6570\\u636e\\u7edf\\u8ba1\\uff09\",\"c_options\":\"1 : \\u5f00\\u542f\\r\\n0: \\u5173\\u95ed\"},\"tabindex\":\"1\",\"_token\":\"1xq8hRO9wSLaYnvvBtRqF07YgqMMqFeK0Q96p0Ne\"}', '2019-04-22 21:34:14', '2019-04-22 21:34:14');
INSERT INTO `sail_admin_operation_log` VALUES (560, 1, 'admin/configx/edit/11', 'GET', '127.0.0.1', '[]', '2019-04-22 21:34:14', '2019-04-22 21:34:14');
INSERT INTO `sail_admin_operation_log` VALUES (561, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-22 21:34:17', '2019-04-22 21:34:17');
INSERT INTO `sail_admin_operation_log` VALUES (562, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_6\":\"LmSail, sail, lmsail, laravel, \\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_7\":\"lmsail\",\"c_8\":\"Powered by lmsail.com\",\"c_9\":\"582639426@qq.com\",\"c_11\":\"0\",\"c_key\":null,\"c_name\":null,\"c_element\":\"normal\",\"c_help\":null,\"c_options\":null},\"tabindex\":\"1\",\"_token\":\"1xq8hRO9wSLaYnvvBtRqF07YgqMMqFeK0Q96p0Ne\"}', '2019-04-22 21:35:27', '2019-04-22 21:35:27');
INSERT INTO `sail_admin_operation_log` VALUES (563, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-22 21:35:27', '2019-04-22 21:35:27');
INSERT INTO `sail_admin_operation_log` VALUES (564, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-22 21:35:28', '2019-04-22 21:35:28');
INSERT INTO `sail_admin_operation_log` VALUES (565, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-23 00:30:19', '2019-04-23 00:30:19');
INSERT INTO `sail_admin_operation_log` VALUES (566, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-23 00:30:22', '2019-04-23 00:30:22');
INSERT INTO `sail_admin_operation_log` VALUES (567, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-23 19:42:40', '2019-04-23 19:42:40');
INSERT INTO `sail_admin_operation_log` VALUES (568, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-23 19:42:42', '2019-04-23 19:42:42');
INSERT INTO `sail_admin_operation_log` VALUES (569, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_6\":\"LmSail, sail, lmsail, laravel, \\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_7\":\"lmsail\",\"c_8\":\"Powered by lmsail.com\",\"c_9\":\"582639426@qq.com\",\"c_11\":\"0\",\"c_type\":\"blog\",\"c_key\":\"blog.search_default\",\"c_name\":\"\\u641c\\u7d22\\u9ed8\\u8ba4\\u5173\\u952e\\u8bcd\",\"c_element\":\"normal\",\"c_help\":\"\\u641c\\u7d22\\u9ed8\\u8ba4\\u5173\\u952e\\u8bcd\\uff0c\\u5f53\\u7528\\u6237\\u672a\\u8f93\\u5165\\u5173\\u952e\\u8bcd\\u65f6\\u751f\\u6548\",\"c_options\":null},\"tabindex\":\"2\",\"_token\":\"kGaeaqi1RQzelKLququfk2XZQvg486k9QlVTE9WQ\"}', '2019-04-23 19:44:18', '2019-04-23 19:44:18');
INSERT INTO `sail_admin_operation_log` VALUES (570, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-23 19:44:19', '2019-04-23 19:44:19');
INSERT INTO `sail_admin_operation_log` VALUES (571, 1, 'admin/configx/saveall/0', 'POST', '127.0.0.1', '{\"values\":{\"c_1\":\"LmSail\",\"c_3\":\"\\u52a8\\u6001\\u5217\\u8868 - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a - LmSail\\u793e\\u533a - \\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\",\"c_6\":\"LmSail, sail, lmsail, laravel, \\u793e\\u533a\",\"c_4\":\"\\u6211\\u4eec\\u662f\\u9ad8\\u54c1\\u8d28\\u7684 Laravel \\u5f00\\u53d1\\u8005\\u793e\\u533a\\uff0c\\u81f4\\u529b\\u4e8e\\u4e3a Laravel \\u5f00\\u53d1\\u8005\\u63d0\\u4f9b\\u4e00\\u4e2a\\u5206\\u4eab\\u521b\\u9020\\u3001\\u7ed3\\u8bc6\\u4f19\\u4f34\\u3001\\u534f\\u540c\\u4e92\\u52a9\\u7684\\u8bba\\u575b\\u3002\",\"c_5\":\"v1.0.1\",\"c_7\":\"lmsail\",\"c_8\":\"Powered by lmsail.com\",\"c_9\":\"582639426@qq.com\",\"c_11\":\"0\",\"c_12\":\"lmsail\",\"c_key\":null,\"c_name\":null,\"c_element\":\"normal\",\"c_help\":null,\"c_options\":null},\"tabindex\":\"1\",\"_token\":\"kGaeaqi1RQzelKLququfk2XZQvg486k9QlVTE9WQ\"}', '2019-04-23 19:44:24', '2019-04-23 19:44:24');
INSERT INTO `sail_admin_operation_log` VALUES (572, 1, 'admin/configx/edit/0', 'GET', '127.0.0.1', '[]', '2019-04-23 19:44:25', '2019-04-23 19:44:25');
INSERT INTO `sail_admin_operation_log` VALUES (573, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 15:50:28', '2019-04-24 15:50:28');
INSERT INTO `sail_admin_operation_log` VALUES (574, 1, 'admin/comment', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 15:50:31', '2019-04-24 15:50:31');
INSERT INTO `sail_admin_operation_log` VALUES (575, 1, 'admin/configx/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 15:50:32', '2019-04-24 15:50:32');
INSERT INTO `sail_admin_operation_log` VALUES (576, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 15:50:33', '2019-04-24 15:50:33');
INSERT INTO `sail_admin_operation_log` VALUES (577, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 15:50:35', '2019-04-24 15:50:35');
INSERT INTO `sail_admin_operation_log` VALUES (578, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 15:50:36', '2019-04-24 15:50:36');
INSERT INTO `sail_admin_operation_log` VALUES (579, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 15:50:36', '2019-04-24 15:50:36');
INSERT INTO `sail_admin_operation_log` VALUES (580, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-04-24 15:50:36', '2019-04-24 15:50:36');
INSERT INTO `sail_admin_operation_log` VALUES (581, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 15:50:38', '2019-04-24 15:50:38');
INSERT INTO `sail_admin_operation_log` VALUES (582, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 15:50:39', '2019-04-24 15:50:39');
INSERT INTO `sail_admin_operation_log` VALUES (583, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 15:51:39', '2019-04-24 15:51:39');
INSERT INTO `sail_admin_operation_log` VALUES (584, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 15:51:39', '2019-04-24 15:51:39');
INSERT INTO `sail_admin_operation_log` VALUES (585, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 15:51:39', '2019-04-24 15:51:39');
INSERT INTO `sail_admin_operation_log` VALUES (586, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '[]', '2019-04-24 15:52:13', '2019-04-24 15:52:13');
INSERT INTO `sail_admin_operation_log` VALUES (587, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 16:20:30', '2019-04-24 16:20:30');
INSERT INTO `sail_admin_operation_log` VALUES (588, 1, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:20:31', '2019-04-24 16:20:31');
INSERT INTO `sail_admin_operation_log` VALUES (589, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:20:33', '2019-04-24 16:20:33');
INSERT INTO `sail_admin_operation_log` VALUES (590, 1, 'admin/media/delete', 'DELETE', '127.0.0.1', '{\"files\":[\"0c2180f52e401c59328876a5be062f4a.jpg\"],\"_token\":\"KOpAq0k9ldXm1OPyqBaO9USkMba3teIZHZpQOI19\"}', '2019-04-24 16:20:44', '2019-04-24 16:20:44');
INSERT INTO `sail_admin_operation_log` VALUES (591, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:20:44', '2019-04-24 16:20:44');
INSERT INTO `sail_admin_operation_log` VALUES (592, 1, 'admin/media/delete', 'DELETE', '127.0.0.1', '{\"files\":[\"e75ac4cc5ab88c89c5b77679e28df386.jpg\"],\"_token\":\"KOpAq0k9ldXm1OPyqBaO9USkMba3teIZHZpQOI19\"}', '2019-04-24 16:20:49', '2019-04-24 16:20:49');
INSERT INTO `sail_admin_operation_log` VALUES (593, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:20:50', '2019-04-24 16:20:50');
INSERT INTO `sail_admin_operation_log` VALUES (594, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"table\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:21:01', '2019-04-24 16:21:01');
INSERT INTO `sail_admin_operation_log` VALUES (595, 1, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/\",\"view\":\"list\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:21:02', '2019-04-24 16:21:02');
INSERT INTO `sail_admin_operation_log` VALUES (596, 1, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-24 16:23:16', '2019-04-24 16:23:16');
INSERT INTO `sail_admin_operation_log` VALUES (597, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:23:25', '2019-04-24 16:23:25');
INSERT INTO `sail_admin_operation_log` VALUES (598, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:23:27', '2019-04-24 16:23:27');
INSERT INTO `sail_admin_operation_log` VALUES (599, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:24:06', '2019-04-24 16:24:06');
INSERT INTO `sail_admin_operation_log` VALUES (600, 1, 'admin/blogs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:24:07', '2019-04-24 16:24:07');
INSERT INTO `sail_admin_operation_log` VALUES (601, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:24:13', '2019-04-24 16:24:13');
INSERT INTO `sail_admin_operation_log` VALUES (602, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:24:15', '2019-04-24 16:24:15');
INSERT INTO `sail_admin_operation_log` VALUES (603, 1, 'admin', 'GET', '192.168.10.94', '[]', '2019-04-24 16:24:32', '2019-04-24 16:24:32');
INSERT INTO `sail_admin_operation_log` VALUES (604, 1, 'admin/configx/edit', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:24:43', '2019-04-24 16:24:43');
INSERT INTO `sail_admin_operation_log` VALUES (605, 1, 'admin/dynamics', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:25:03', '2019-04-24 16:25:03');
INSERT INTO `sail_admin_operation_log` VALUES (606, 1, 'admin/dynamics/1', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:25:09', '2019-04-24 16:25:09');
INSERT INTO `sail_admin_operation_log` VALUES (607, 1, 'admin/comment/create', 'GET', '192.168.10.94', '{\"foreign_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:25:17', '2019-04-24 16:25:17');
INSERT INTO `sail_admin_operation_log` VALUES (608, 1, 'admin/comment', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:25:29', '2019-04-24 16:25:29');
INSERT INTO `sail_admin_operation_log` VALUES (609, 1, 'admin/configx/edit', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:25:34', '2019-04-24 16:25:34');
INSERT INTO `sail_admin_operation_log` VALUES (610, 1, 'admin/auth/menu', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:25:34', '2019-04-24 16:25:34');
INSERT INTO `sail_admin_operation_log` VALUES (611, 1, 'admin/logs', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:25:49', '2019-04-24 16:25:49');
INSERT INTO `sail_admin_operation_log` VALUES (612, 1, 'admin/media', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:25:59', '2019-04-24 16:25:59');
INSERT INTO `sail_admin_operation_log` VALUES (613, 1, 'admin/comment', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:26:08', '2019-04-24 16:26:08');
INSERT INTO `sail_admin_operation_log` VALUES (614, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:26:15', '2019-04-24 16:26:15');
INSERT INTO `sail_admin_operation_log` VALUES (615, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:26:33', '2019-04-24 16:26:33');
INSERT INTO `sail_admin_operation_log` VALUES (616, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"id,tags,praise,comment,status,created_at,updated_at\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:26:38', '2019-04-24 16:26:38');
INSERT INTO `sail_admin_operation_log` VALUES (617, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"id,tags,praise,comment\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:26:44', '2019-04-24 16:26:44');
INSERT INTO `sail_admin_operation_log` VALUES (618, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"tags,praise,comment\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:26:47', '2019-04-24 16:26:47');
INSERT INTO `sail_admin_operation_log` VALUES (619, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"tags,praise,comment\",\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-04-24 16:26:55', '2019-04-24 16:26:55');
INSERT INTO `sail_admin_operation_log` VALUES (620, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"tags,praise,comment\",\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-04-24 16:26:57', '2019-04-24 16:26:57');
INSERT INTO `sail_admin_operation_log` VALUES (621, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"tags,praise,comment\",\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-04-24 16:26:59', '2019-04-24 16:26:59');
INSERT INTO `sail_admin_operation_log` VALUES (622, 1, 'admin/blogs/1', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:27:07', '2019-04-24 16:27:07');
INSERT INTO `sail_admin_operation_log` VALUES (623, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"tags,praise,comment\",\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:27:11', '2019-04-24 16:27:11');
INSERT INTO `sail_admin_operation_log` VALUES (624, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"tags,praise,comment\",\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2019-04-24 16:27:15', '2019-04-24 16:27:15');
INSERT INTO `sail_admin_operation_log` VALUES (625, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"tags,praise,comment\",\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2019-04-24 16:27:17', '2019-04-24 16:27:17');
INSERT INTO `sail_admin_operation_log` VALUES (626, 1, 'admin/blogs/49', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:27:19', '2019-04-24 16:27:19');
INSERT INTO `sail_admin_operation_log` VALUES (627, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"tags,praise,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:27:30', '2019-04-24 16:27:30');
INSERT INTO `sail_admin_operation_log` VALUES (628, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status\",\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:27:39', '2019-04-24 16:27:39');
INSERT INTO `sail_admin_operation_log` VALUES (629, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status\",\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:27:40', '2019-04-24 16:27:40');
INSERT INTO `sail_admin_operation_log` VALUES (630, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:27:45', '2019-04-24 16:27:45');
INSERT INTO `sail_admin_operation_log` VALUES (631, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"praise\",\"type\":\"desc\"}}', '2019-04-24 16:27:52', '2019-04-24 16:27:52');
INSERT INTO `sail_admin_operation_log` VALUES (632, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"praise\",\"type\":\"asc\"}}', '2019-04-24 16:27:55', '2019-04-24 16:27:55');
INSERT INTO `sail_admin_operation_log` VALUES (633, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"praise\",\"type\":\"desc\"}}', '2019-04-24 16:27:56', '2019-04-24 16:27:56');
INSERT INTO `sail_admin_operation_log` VALUES (634, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"praise\",\"type\":\"asc\"}}', '2019-04-24 16:27:57', '2019-04-24 16:27:57');
INSERT INTO `sail_admin_operation_log` VALUES (635, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"praise\",\"type\":\"desc\"}}', '2019-04-24 16:27:59', '2019-04-24 16:27:59');
INSERT INTO `sail_admin_operation_log` VALUES (636, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"praise\",\"type\":\"asc\"}}', '2019-04-24 16:28:00', '2019-04-24 16:28:00');
INSERT INTO `sail_admin_operation_log` VALUES (637, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"praise\",\"type\":\"desc\"}}', '2019-04-24 16:28:02', '2019-04-24 16:28:02');
INSERT INTO `sail_admin_operation_log` VALUES (638, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"praise\",\"type\":\"asc\"}}', '2019-04-24 16:28:03', '2019-04-24 16:28:03');
INSERT INTO `sail_admin_operation_log` VALUES (639, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"comment\",\"type\":\"desc\"}}', '2019-04-24 16:28:04', '2019-04-24 16:28:04');
INSERT INTO `sail_admin_operation_log` VALUES (640, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"comment\",\"type\":\"asc\"}}', '2019-04-24 16:28:05', '2019-04-24 16:28:05');
INSERT INTO `sail_admin_operation_log` VALUES (641, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"comment\",\"type\":\"desc\"}}', '2019-04-24 16:28:07', '2019-04-24 16:28:07');
INSERT INTO `sail_admin_operation_log` VALUES (642, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"comment\",\"type\":\"asc\"}}', '2019-04-24 16:28:08', '2019-04-24 16:28:08');
INSERT INTO `sail_admin_operation_log` VALUES (643, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"comment\",\"type\":\"desc\"}}', '2019-04-24 16:28:16', '2019-04-24 16:28:16');
INSERT INTO `sail_admin_operation_log` VALUES (644, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"comment\",\"type\":\"asc\"}}', '2019-04-24 16:28:18', '2019-04-24 16:28:18');
INSERT INTO `sail_admin_operation_log` VALUES (645, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"status\",\"type\":\"desc\"}}', '2019-04-24 16:28:20', '2019-04-24 16:28:20');
INSERT INTO `sail_admin_operation_log` VALUES (646, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"view\",\"type\":\"desc\"}}', '2019-04-24 16:28:22', '2019-04-24 16:28:22');
INSERT INTO `sail_admin_operation_log` VALUES (647, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"view\",\"type\":\"asc\"}}', '2019-04-24 16:28:23', '2019-04-24 16:28:23');
INSERT INTO `sail_admin_operation_log` VALUES (648, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"view\",\"type\":\"desc\"}}', '2019-04-24 16:28:25', '2019-04-24 16:28:25');
INSERT INTO `sail_admin_operation_log` VALUES (649, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"view\",\"type\":\"asc\"}}', '2019-04-24 16:28:27', '2019-04-24 16:28:27');
INSERT INTO `sail_admin_operation_log` VALUES (650, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"page\":\"3\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"view\",\"type\":\"desc\"}}', '2019-04-24 16:28:32', '2019-04-24 16:28:32');
INSERT INTO `sail_admin_operation_log` VALUES (651, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"view\",\"type\":\"desc\"},\"page\":\"1\"}', '2019-04-24 16:28:37', '2019-04-24 16:28:37');
INSERT INTO `sail_admin_operation_log` VALUES (652, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"view\",\"type\":\"asc\"},\"page\":\"1\"}', '2019-04-24 16:28:38', '2019-04-24 16:28:38');
INSERT INTO `sail_admin_operation_log` VALUES (653, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"view\",\"type\":\"desc\"},\"page\":\"1\"}', '2019-04-24 16:28:40', '2019-04-24 16:28:40');
INSERT INTO `sail_admin_operation_log` VALUES (654, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"view\",\"type\":\"asc\"},\"page\":\"1\"}', '2019-04-24 16:28:43', '2019-04-24 16:28:43');
INSERT INTO `sail_admin_operation_log` VALUES (655, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"view\",\"type\":\"asc\"},\"page\":\"3\"}', '2019-04-24 16:28:46', '2019-04-24 16:28:46');
INSERT INTO `sail_admin_operation_log` VALUES (656, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"view\",\"type\":\"asc\"},\"page\":\"1\"}', '2019-04-24 16:28:48', '2019-04-24 16:28:48');
INSERT INTO `sail_admin_operation_log` VALUES (657, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"praise\",\"type\":\"desc\"},\"page\":\"1\"}', '2019-04-24 16:28:53', '2019-04-24 16:28:53');
INSERT INTO `sail_admin_operation_log` VALUES (658, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"view\",\"type\":\"desc\"},\"page\":\"1\"}', '2019-04-24 16:28:59', '2019-04-24 16:28:59');
INSERT INTO `sail_admin_operation_log` VALUES (659, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"praise\",\"type\":\"desc\"},\"page\":\"1\"}', '2019-04-24 16:29:00', '2019-04-24 16:29:00');
INSERT INTO `sail_admin_operation_log` VALUES (660, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"comment\",\"type\":\"desc\"},\"page\":\"1\"}', '2019-04-24 16:29:03', '2019-04-24 16:29:03');
INSERT INTO `sail_admin_operation_log` VALUES (661, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"status\",\"type\":\"desc\"},\"page\":\"1\"}', '2019-04-24 16:29:04', '2019-04-24 16:29:04');
INSERT INTO `sail_admin_operation_log` VALUES (662, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_columns_\":\"updated_at,status,praise,view,tags,title,user_id,comment\",\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"},\"page\":\"1\"}', '2019-04-24 16:29:06', '2019-04-24 16:29:06');
INSERT INTO `sail_admin_operation_log` VALUES (663, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:29:08', '2019-04-24 16:29:08');
INSERT INTO `sail_admin_operation_log` VALUES (664, 1, 'admin/blogs', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"updated_at\",\"type\":\"desc\"}}', '2019-04-24 16:29:13', '2019-04-24 16:29:13');
INSERT INTO `sail_admin_operation_log` VALUES (665, 1, 'admin/blogs/create', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:30:07', '2019-04-24 16:30:07');
INSERT INTO `sail_admin_operation_log` VALUES (666, 1, 'admin/auth/users', 'GET', '192.168.10.94', '{\"_pjax\":\"#pjax-container\"}', '2019-04-24 16:40:25', '2019-04-24 16:40:25');
INSERT INTO `sail_admin_operation_log` VALUES (667, 1, 'admin/auth/users', 'GET', '192.168.10.94', '[]', '2019-04-24 16:40:26', '2019-04-24 16:40:26');

-- ----------------------------
-- Table structure for sail_admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sail_admin_permissions`;
CREATE TABLE `sail_admin_permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sail_admin_permissions_name_unique`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sail_admin_permissions
-- ----------------------------
INSERT INTO `sail_admin_permissions` VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `sail_admin_permissions` VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `sail_admin_permissions` VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `sail_admin_permissions` VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `sail_admin_permissions` VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `sail_admin_permissions` VALUES (6, 'Media manager', 'ext.media-manager', NULL, '/media*', '2019-04-18 22:57:02', '2019-04-18 22:57:02');
INSERT INTO `sail_admin_permissions` VALUES (7, 'Logs', 'ext.log-viewer', NULL, '/logs*', '2019-04-18 23:00:09', '2019-04-18 23:00:09');
INSERT INTO `sail_admin_permissions` VALUES (9, 'Admin Configx', 'ext.configx', NULL, '/configx/*', '2019-04-19 15:23:27', '2019-04-19 15:23:27');
INSERT INTO `sail_admin_permissions` VALUES (10, 'Admin Config', 'ext.config', NULL, '/config*', '2019-04-19 15:25:35', '2019-04-19 15:25:35');

-- ----------------------------
-- Table structure for sail_admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sail_admin_role_menu`;
CREATE TABLE `sail_admin_role_menu`  (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `sail_admin_role_menu_role_id_menu_id_index`(`role_id`, `menu_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sail_admin_role_menu
-- ----------------------------
INSERT INTO `sail_admin_role_menu` VALUES (1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for sail_admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sail_admin_role_permissions`;
CREATE TABLE `sail_admin_role_permissions`  (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `sail_admin_role_permissions_role_id_permission_id_index`(`role_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sail_admin_role_permissions
-- ----------------------------
INSERT INTO `sail_admin_role_permissions` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for sail_admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `sail_admin_role_users`;
CREATE TABLE `sail_admin_role_users`  (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `sail_admin_role_users_role_id_user_id_index`(`role_id`, `user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sail_admin_role_users
-- ----------------------------
INSERT INTO `sail_admin_role_users` VALUES (1, 1, NULL, NULL);

-- ----------------------------
-- Table structure for sail_admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `sail_admin_roles`;
CREATE TABLE `sail_admin_roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sail_admin_roles_name_unique`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sail_admin_roles
-- ----------------------------
INSERT INTO `sail_admin_roles` VALUES (1, '贾维斯', '总管理员', '2019-04-18 22:10:00', '2019-04-22 17:23:03');

-- ----------------------------
-- Table structure for sail_admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sail_admin_user_permissions`;
CREATE TABLE `sail_admin_user_permissions`  (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  INDEX `sail_admin_user_permissions_user_id_permission_id_index`(`user_id`, `permission_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for sail_admin_users
-- ----------------------------
DROP TABLE IF EXISTS `sail_admin_users`;
CREATE TABLE `sail_admin_users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sail_admin_users_username_unique`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sail_admin_users
-- ----------------------------
INSERT INTO `sail_admin_users` VALUES (1, 'admin', '$2y$10$.KD0kqSOZB5PSZxA0KDrL.zKCShr6RbReckcGxeNrOePQI.wWocGC', '社区管理员', 'images/06c17d987458fc546869843494e2015e.jpg', 'tCXNyL8gpaTpRdbNuOLhy6hIwkScQkbNK5CsDndo377GCoIBMXylDPTVWmb0', '2019-04-18 22:10:00', '2019-04-21 22:15:41');

-- ----------------------------
-- Table structure for sail_blog
-- ----------------------------
DROP TABLE IF EXISTS `sail_blog`;
CREATE TABLE `sail_blog`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '文章内容',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文章标签',
  `view` int(11) NOT NULL DEFAULT 0 COMMENT '查看数',
  `praise` int(11) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `comment` int(11) NOT NULL DEFAULT 0 COMMENT '评论数',
  `community_id` int(11) NOT NULL DEFAULT 0 COMMENT '同步社区，暂时未用',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态 0：删除  2：违规  1：显示',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sail_blog
-- ----------------------------
INSERT INTO `sail_blog` VALUES (1, 1, '手摸手教你让 Laravel 开发 API 更得心应手', '> 第一次写博客，好紧张啊\r\n\r\n## 1. 起因\r\n\r\n    随着前后端完全分离，PHP也基本告别了view模板嵌套开发，转而专门写资源接口。Laravel是PHP框架中最优雅的框架，国内也越来越多人告别ThinkPHP选择了Laravel。Laravel框架本身对API有支持，但是感觉再工作中还是需要再做一些处理。Lumen用起来不顺手，有些包不能很好地支持。所以，将Laravel框架进行一些配置处理，让其在开发API时更得心应手。\r\n	\r\n当然，你也可以点击这里,直接跳到成果~', 'laravel,php,API', 21, 0, 0, 0, 1, '2019-04-05 20:43:19', NULL);
INSERT INTO `sail_blog` VALUES (2, 1, '测试一下在', '啊实打实大苏打撒大声地阿斯顿啊实打实大声道', NULL, 23, 0, 0, 0, 1, '2019-04-05 20:50:21', NULL);
INSERT INTO `sail_blog` VALUES (3, 1, 'WaT6dwgbbF', 'Asperiores occaecati possimus ex cupiditate tenetur quia. Illo dolor voluptas possimus cupiditate perferendis. Ratione laudantium et similique vel laborum reiciendis provident.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:53:52', NULL);
INSERT INTO `sail_blog` VALUES (4, 1, 'v7oCeBuRgN', 'Iste assumenda tenetur numquam aut laudantium est doloribus. Voluptatibus perferendis sint consectetur sint at aut ut nostrum. Quasi corrupti ut enim quaerat quo amet.', 'laravel, php', 27, 0, 0, 0, 1, '2019-04-05 21:53:52', NULL);
INSERT INTO `sail_blog` VALUES (5, 1, 'ReCDQlkWja', 'Consequatur fugiat ipsam repellat ut. Qui dolores non ratione odio facere excepturi est. Perferendis cum qui illum. Voluptatibus non culpa quae vitae et accusamus ut sapiente.', 'laravel, php', 20, 0, 0, 0, 1, '2019-04-05 21:53:52', NULL);
INSERT INTO `sail_blog` VALUES (6, 1, 'WVsN0oJaD3', 'Ad dolorum unde eius. Voluptas optio nihil minima qui aut ipsa. Enim repudiandae natus consequuntur dicta facilis non.', 'laravel, php', 17, 0, 0, 0, 1, '2019-04-05 21:53:52', NULL);
INSERT INTO `sail_blog` VALUES (7, 1, 'KYljjgZqMs', 'Ea occaecati sed ea iusto enim. Et perspiciatis optio nisi esse debitis voluptates mollitia. Tempora quam ut harum odio occaecati beatae. Culpa sed saepe omnis.', 'laravel, php', 22, 0, 1, 0, 1, '2019-04-05 21:53:52', NULL);
INSERT INTO `sail_blog` VALUES (8, 1, 'ybgMjDJ7NN', 'Quae ipsa et est aliquam. Et et id placeat voluptatum. Explicabo ad delectus labore cupiditate.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:53:52', NULL);
INSERT INTO `sail_blog` VALUES (9, 1, 'Y2p8EFKJeo', 'Deleniti voluptate vitae ullam accusamus. Perspiciatis at illum quia illo. Iure nesciunt accusamus omnis quis hic sed minima. Ut harum soluta saepe dolores perferendis.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:53:52', NULL);
INSERT INTO `sail_blog` VALUES (10, 1, 'WjwGBKBBOJ', 'Rerum inventore rerum architecto unde. Repellendus blanditiis ea saepe. Rerum facilis vitae quis sit. Sunt assumenda sunt similique quo facere nam. Soluta dolor in explicabo.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:53:52', NULL);
INSERT INTO `sail_blog` VALUES (11, 1, 'mCQVSywGmM', 'Hic magnam quidem commodi sed. Voluptas qui rerum officiis asperiores odio. Ratione laboriosam adipisci voluptates deleniti.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:53:52', NULL);
INSERT INTO `sail_blog` VALUES (12, 1, 'Fq0ymfLugV', 'Deserunt exercitationem est et architecto aperiam aut. Et minima et labore dolores optio officia. Quaerat quia suscipit minima et earum ut repellendus.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:53:52', NULL);
INSERT INTO `sail_blog` VALUES (13, 1, 'KhOqjea8Fs', 'Dolores et doloribus quia id. Et et enim minima nostrum. Dolores nam in ea ab quia et quis.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (14, 1, 'CuaDLaTkXU', 'Quis consequatur non ut consequatur. Commodi ducimus tempore error dolorum. Quo nihil recusandae nemo consequatur sint rerum labore. Facilis omnis quasi sint non et.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (15, 1, '9AIjV9j7PD', 'Eum qui enim eum qui. Aut necessitatibus ullam aut quam earum cum. Aut nobis consequatur aut alias et eligendi aut. Nihil voluptatem deserunt non. Nihil quia qui distinctio eligendi tenetur.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (16, 1, 'srZLiozYxJ', 'A quas sapiente occaecati ut sit eum quia. Quidem ipsa unde incidunt quia eligendi dolores.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (17, 1, 'QuSaifDDeJ', 'Facere reiciendis iusto officia minima. Sint veniam molestiae unde et.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (18, 1, '6CpQV1udJi', 'Porro cupiditate et vitae corrupti similique. Vitae aperiam odio aspernatur. Et ut quia tenetur nihil id ipsa.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (19, 1, 'yXGOSCHqtO', 'Unde odio dolor cumque. Quia similique at consequatur aut. Et ut perferendis corrupti eius sapiente maxime qui atque.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (20, 1, '测试一下更新时间', 'Optio sunt aperiam voluptas laboriosam qui in nemo sed. Neque tempora beatae omnis distinctio praesentium hic enim voluptatem. Labore aspernatur non dolorem architecto.', 'laravel, php', 30, 0, 0, 0, 1, '2019-04-05 21:55:53', '2019-04-23 19:00:39');
INSERT INTO `sail_blog` VALUES (21, 1, 'ELOO7rBOq2', 'Et in consectetur dolore nulla a. Ut maiores ut aut atque illum. Delectus ullam consectetur id fugiat. Omnis ea eligendi provident.', 'laravel, php', 23, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (22, 1, 'eJymbJdQuF', 'Pariatur rerum dicta id recusandae accusamus. Neque ea corrupti natus. Molestiae sed corporis praesentium tempore exercitationem tempora eos.', 'laravel, php', 30, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (23, 1, 'pLYZKDS0Vk', 'Voluptatem voluptatum laboriosam sunt. Aspernatur animi esse officia ipsum cum. Ut vero molestiae architecto maiores fugiat aperiam.', 'laravel, php', 19, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (24, 1, 'hAGz7XNVXr', 'Quo doloribus quis et voluptate. Molestiae excepturi laborum quidem corrupti perspiciatis velit est.', 'laravel, php', 22, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (25, 1, 'Kz8AmstFA3', 'Qui consequatur similique dolores dolore. Sunt natus quia et. Omnis sunt sit et repellendus facilis quia.', 'laravel, php', 20, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (26, 1, 'njxOpsjmn0', 'Cum quis sed voluptatem corporis accusamus ipsa. Et illo consequuntur veniam aut doloribus molestias.', 'laravel, php', 38, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (27, 1, 'ssXpoAXUou', 'Dolorum pariatur dolores eos est quos minus. Et earum eius quam ut et neque officia. Rerum quibusdam cupiditate totam excepturi excepturi reprehenderit qui.', 'laravel, php', 22, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (28, 1, 'cfsSi8kqCH', 'Illum delectus commodi voluptates voluptate incidunt eum et. Explicabo ducimus dicta enim. Animi praesentium sint tenetur in. Assumenda et sint quo non dignissimos id deleniti.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (29, 1, 'cYt7LDENnU', 'Ullam praesentium et et. Magnam adipisci rerum eius nemo quam dolorum aliquam. Iure ut et recusandae illo natus aut alias.', 'laravel, php', 22, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (30, 1, 'nh5Mt895D2', 'Ut non ut aut perferendis sunt. A et animi commodi nihil excepturi. Nemo cumque reiciendis dolorem non dolorem cumque corrupti molestiae. Porro cupiditate expedita temporibus corrupti distinctio sed.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (31, 1, 'aMsqErXVqa', 'Ducimus quis voluptatibus nulla facilis qui iusto eum enim. Eaque ut deserunt in qui aperiam aliquid. Cum doloremque deserunt officia ea porro corrupti.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (32, 1, 'JhQIq1ScC6', 'Cupiditate asperiores eum earum recusandae cumque asperiores. Distinctio dignissimos numquam autem dolor. Voluptas molestias asperiores eos voluptatum ut ut.', 'laravel, php', 19, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (33, 1, '5QNfNOncTU', 'In adipisci sequi ipsum. Illo sequi in maxime facilis aperiam quo praesentium. Sit neque quas quod.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (34, 1, 'z0Hgk9EXkW', 'Illo aut corporis possimus. Tempora ut voluptas maxime eaque voluptatem delectus adipisci. Repellendus iure autem eos at labore. Omnis dignissimos eaque necessitatibus.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (35, 1, 'dQmjtChTqB', 'Nam similique rerum illum ut repellat. Et dolorem qui necessitatibus commodi pariatur quia. Iusto rerum qui fugiat esse vel quae in eaque.', 'laravel, php', 21, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (36, 1, '1IDds1iWmQ', 'Maxime eius hic cupiditate voluptatem temporibus odit. Libero et in sint aut. Ut dolores natus magnam ullam sed harum.', 'laravel, php', 20, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (37, 1, 'ZCXx93ZOjQ', 'Assumenda eum iure saepe aliquam. Ipsa qui sed ipsum quod.', 'laravel, php', 16, 0, 0, 0, 1, '2019-04-05 21:55:53', NULL);
INSERT INTO `sail_blog` VALUES (38, 1, 'iLUH0WOgfN', '```php\r\n<?php\r\n\r\nnamespace App\\Http\\Controllers\\Blog;\r\n\r\nuse App\\Events\\Stationnews;\r\nuse App\\Models\\Blog;\r\nuse App\\Models\\Comment;\r\nuse App\\Models\\Dynamic;\r\nuse App\\Models\\Praise;\r\nuse App\\Models\\Statistic;\r\nuse Illuminate\\Http\\Request;\r\nuse App\\Http\\Controllers\\Controller;\r\nuse Illuminate\\Support\\Facades\\Auth;\r\nuse Illuminate\\Support\\Facades\\Storage;\r\n\r\nclass BlogController extends Controller\r\n{\r\n    /**\r\n     * 用户blog列表页\r\n     *\r\n     */\r\n    public function blog(Request $request, Blog $blog)\r\n    {\r\n        # 所有文章\r\n        $statistics = $request->input(\'statistics\');\r\n        $user_id    = $request->route(\'uid\');\r\n        $type       = $request->input(\'type\', \'updated_at\');\r\n\r\n        $data = $blog->WhereUserId($user_id)->WithOrder($type);\r\n        foreach ($data as $key => $val) {\r\n            if(!empty($val->tags)) {\r\n                $val->tags = explode(\',\', $val->tags);\r\n            }\r\n        }\r\n        # 增加用户主页浏览量\r\n        Statistic::where(\'user_id\', $user_id)->increment(\'view\');\r\n        return view(\'blog.blog\', compact(\'data\', \'statistics\', \'request\'));\r\n    }\r\n\r\n    /**\r\n     * 文章发布页面\r\n     *\r\n     */\r\n    public function release(Request $request, Blog $blog, Statistic $statistic)\r\n    {\r\n        if($request->isMethod(\'POST\'))\r\n        {\r\n            $this->validate($request, [\r\n                \'title\'   => \'bail|required|min:5|max:100\',\r\n                \'content\' => \'bail|required|min:20\',\r\n            ]);\r\n            $result = $blog->createUserBlog($request, Auth::id());\r\n            if($result) {\r\n                $statistic->where([\'user_id\' => Auth::id()])->increment(\'blognums\');\r\n                return redirect(url(\'article\', [$result->id, Auth::id()]))->with(\'success\', \'文章发布成功咯！\');\r\n            }\r\n            return redirect(\'release\')->with(\'error\', \'ERROR：文章发布失败啦！\');\r\n        }\r\n\r\n        return view(\'blog.article.release\');\r\n    }\r\n\r\n    /**\r\n     * 博客修改\r\n     */\r\n    public function blogedit(Request $request, Blog $blog)\r\n    {\r\n        if($request->isMethod(\'POST\'))\r\n        {\r\n            $this->validate($request, [\r\n                \'id\'      => \'bail|required\',\r\n                \'title\'   => \'bail|required|min:5|max:100\',\r\n                \'content\' => \'bail|required|min:20\',\r\n            ]);\r\n            $result = $blog->saveUserBlog($request);\r\n            if($result) {\r\n                return redirect(url(\'article\', [$request->id, Auth::id()]))->with(\'success\', \'文章修改生效咯！\');\r\n            }\r\n            return redirect(\'blogedit\')->with(\'error\', \'ERROR：文章修改失败啦！\');\r\n        }\r\n\r\n        if(!empty($request->route(\'id\'))) {\r\n            $details = Blog::find($request->route(\'id\'));\r\n        }\r\n\r\n        return view(\'blog.article.edit\', compact(\'details\'));\r\n    }\r\n\r\n    /**\r\n     * 用户blog文章详情页\r\n     *\r\n     */\r\n    public function article(Request $request, Praise $praise, Blog $blog)\r\n    {\r\n        $face = Storage::disk(\'face\')->allFiles();\r\n        $statistics = $request->input(\'statistics\');\r\n        $id         = $request->route(\'id\');\r\n        $details    = Blog::find($id);\r\n        if($details[\'tags\']) {\r\n            $details[\'tags\'] = explode(\',\', $details[\'tags\']);\r\n        }\r\n        $blog->incViewCount($id);\r\n        $praise  = $praise->getPraiseUsers($id);    /* 查询前18位点赞用户 */\r\n        $comment = Comment::where(\'foreign_id\', $id)->orderBy(\'id\', \'desc\')->with(\'user\')->paginate(config(\'lmsail.page-limit\')); /* 查询评论 */\r\n        $page    = $request->input(\'page\');\r\n        return view(\'blog.article.article\', compact(\'details\', \'statistics\', \'praise\', \'face\', \'comment\', \'page\'));\r\n    }\r\n\r\n    /**\r\n     * 添加评论\r\n     */\r\n    public function comment(Request $request)\r\n    {\r\n        $this->validate($request, [\r\n            \'content\'    => \'bail|required|min:10\',\r\n            \'foreign_id\' => \'required\'\r\n        ]);\r\n        $result = Comment::create([\'content\' => $request->input(\'content\'), \'foreign_id\' => $request->input(\'foreign_id\'), \'user_id\' => Auth::id()]);\r\n        if($result) {\r\n            # 增加该文章评论数量统计，增加事件，用于后续消息推送等服务\r\n            \\event(new Stationnews($request, \'blog-comment\')); /* 站内消息推送 */\r\n            Blog::where(\'id\', $request->input(\'foreign_id\'))->increment(\'comment\');\r\n            return back()->with([\'comment-success\' => \'评论成功\', \'to\' => \'#comment\']);\r\n        } else {\r\n            return back()->withErrors([\'error\' => \'服务器处理失败：评论失败\', \'to\' => \'#comment\']);\r\n        }\r\n    }\r\n\r\n    /**\r\n     * 博客列表\r\n     */\r\n    public function list(Request $request) {\r\n        $data = Blog::where([\'status\' => 1])->WithOrder($request->input(\'type\', \'updated_at\'));\r\n        foreach ($data as $key => $val) {\r\n            if(!empty($val->tags)) {\r\n                $val->tags = explode(\',\', $val->tags);\r\n            }\r\n        }\r\n        return view(\'blog.article.list\', compact(\'data\', \'request\'));\r\n    }\r\n\r\n    /**\r\n     * 博客搜索结果页\r\n     */\r\n    public function search(Request $request)\r\n    {\r\n        $keyword = $request->input(\'q\', config(\'blog.search_default\'));\r\n\r\n        # 统计查询结果总数  博客  动态\r\n        $blogCount    = Blog::withWhereTitle($keyword)->count();\r\n        $dynamicCount = Dynamic::withWhereContent($keyword)->count();\r\n\r\n        # 默认检索博客\r\n        $blogList = Blog::withWhereTitle($keyword)->orderBy(\'updated_at\', \'desc\')->with(\'user\')->paginate(config(\'lmsail.page-limit\'));\r\n\r\n        return view(\'blog.search.search\', compact(\'keyword\', \'blogCount\', \'dynamicCount\', \'blogList\'));\r\n    }\r\n}\r\n\r\n```\r\n\r\n```css\r\n/* PrismJS 1.16.0\r\nhttps://prismjs.com/download.html#themes=prism-okaidia&languages=markup+css+clike+javascript+c+csharp+cpp+markup-templating+docker+go+java+php+javastacktrace+javadoclike+lua+perl+phpdoc+php-extras+sql+powershell+prolog+scss+python+sass+javadoc+scheme+smarty+plsql */\r\n/**\r\n * okaidia theme for JavaScript, CSS and HTML\r\n * Loosely based on Monokai textmate theme by http://www.monokai.nl/\r\n * @author ocodia\r\n */\r\n\r\ncode[class*=\"language-\"],\r\npre[class*=\"language-\"] {\r\n	color: #f8f8f2;\r\n	background: none;\r\n	text-shadow: 0 1px rgba(0, 0, 0, 0.3);\r\n	font-family: Consolas, Monaco, \'Andale Mono\', \'Ubuntu Mono\', monospace;\r\n	font-size: 1em;\r\n	text-align: left;\r\n	white-space: pre;\r\n	word-spacing: normal;\r\n	word-break: normal;\r\n	word-wrap: normal;\r\n	line-height: 1.5;\r\n\r\n	-moz-tab-size: 4;\r\n	-o-tab-size: 4;\r\n	tab-size: 4;\r\n\r\n	-webkit-hyphens: none;\r\n	-moz-hyphens: none;\r\n	-ms-hyphens: none;\r\n	hyphens: none;\r\n}\r\n\r\n/* Code blocks */\r\npre[class*=\"language-\"] {\r\n	padding: 1em;\r\n	margin: .5em 0;\r\n	overflow: auto;\r\n	border-radius: 0.3em;\r\n}\r\n\r\n:not(pre) > code[class*=\"language-\"],\r\npre[class*=\"language-\"] {\r\n	background: #272822;\r\n}\r\n\r\n/* Inline code */\r\n:not(pre) > code[class*=\"language-\"] {\r\n	padding: .1em;\r\n	border-radius: .3em;\r\n	white-space: normal;\r\n}\r\n\r\n.token.comment,\r\n.token.prolog,\r\n.token.doctype,\r\n.token.cdata {\r\n	color: slategray;\r\n}\r\n\r\n.token.punctuation {\r\n	color: #f8f8f2;\r\n}\r\n\r\n.namespace {\r\n	opacity: .7;\r\n}\r\n\r\n.token.property,\r\n.token.tag,\r\n.token.constant,\r\n.token.symbol,\r\n.token.deleted {\r\n	color: #f92672;\r\n}\r\n\r\n.token.boolean,\r\n.token.number {\r\n	color: #ae81ff;\r\n}\r\n\r\n.token.selector,\r\n.token.attr-name,\r\n.token.string,\r\n.token.char,\r\n.token.builtin,\r\n.token.inserted {\r\n	color: #a6e22e;\r\n}\r\n\r\n.token.operator,\r\n.token.entity,\r\n.token.url,\r\n.language-css .token.string,\r\n.style .token.string,\r\n.token.variable {\r\n	color: #f8f8f2;\r\n}\r\n\r\n.token.atrule,\r\n.token.attr-value,\r\n.token.function,\r\n.token.class-name {\r\n	color: #e6db74;\r\n}\r\n\r\n.token.keyword {\r\n	color: #66d9ef;\r\n}\r\n\r\n.token.regex,\r\n.token.important {\r\n	color: #fd971f;\r\n}\r\n\r\n.token.important,\r\n.token.bold {\r\n	font-weight: bold;\r\n}\r\n.token.italic {\r\n	font-style: italic;\r\n}\r\n\r\n.token.entity {\r\n	cursor: help;\r\n}\r\n\r\n```\r\n\r\n```js\r\n$(function () {\r\n\r\n    $(\".text-overflow\").each(function() {\r\n        var height = $(this).height();\r\n        if(height > 120) {\r\n            $(this).css({\"max-height\": \"120px\", \"overflow\": \"hidden\"}).find(\".show-more\").show();\r\n        }\r\n    });\r\n\r\n    $(\".text-overflow\").find(\".show-more\").click(function() {\r\n        $(this).hide().parent(\".text-overflow\").css({\"height\": \"auto\", \"max-height\": \"none\"});\r\n    });\r\n\r\n    $(\"body\").click(function () {\r\n        $(\".face-list\").hide();\r\n    });\r\n    $(\".emoji-picker\").click(function () {\r\n        event.stopPropagation();\r\n        $(\'.face-list\').toggle(100)\r\n    });\r\n    $(\".face-item\").click(function () {\r\n        event.stopPropagation();\r\n        if($(\"#comment-composing-box\").val().length < 180) {\r\n            insertAtCursor(document.getElementById(\"comment-composing-box\"), $(this).attr(\"title\") + \" \")\r\n            handleTextLen($(\"#comment-composing-box\").val().length)\r\n        }\r\n    });\r\n    $(\"#send\").on(\"click\", function () {\r\n        var _this   = $(this);\r\n        if(_this.hasClass(\"disabled\")) {\r\n            swal(\"权限不足！\", \"请先登录后再尝试操作！\", \"error\")\r\n            return false;\r\n        }\r\n        $(\"#tweet-create-form\").addClass(\"loading\");\r\n        sailAjax(dynamic_path, {content: $(\"#comment-composing-box\").val()}, function(response) {\r\n            $(\"#tweet-create-form\").removeClass(\"loading\");\r\n            if(response.code == 400) {\r\n                swal(\"发布失败！\", response.msg, \"error\")\r\n                return false;\r\n            }\r\n            swal({\r\n                title: \"发布成功\", text:  response.msg, type:  \"success\"\r\n            },function(){\r\n                location.reload();\r\n            });\r\n        });\r\n    });\r\n    $(\'.markdown-body\').find(\"p>img\").not(\".emoji\").click(function() {\r\n        var imgsrc = $(this).attr(\"src\");\r\n        $(\"#img-show\").fadeIn().find(\"#img-html\").html(\"<img src=\'\"+imgsrc+\"\'>\");\r\n    });\r\n    // 点赞\r\n    $(\".topic-vote\").on(\"click\", function() {\r\n        var _this = $(this);\r\n        var id   = _this.data(\"id\");\r\n        var uid  = _this.data(\"uid\");\r\n        var type = _this.data(\"type\");\r\n        _this.find(\"i\").attr(\"class\", \"spinner loading icon\");\r\n        sailAjax(praisepath, {content: $(\"#comment-composing-box\").val(), foreign_id: id, to_id: uid, type: type}, function(response) {\r\n            _this.find(\"i\").attr(\"class\", \"icon thumbs up outline\");\r\n            if(response.code == 400) {\r\n                swal(\"点赞失败！\", response.msg, \"error\");\r\n                return false;\r\n            } else {\r\n                if(response.code == 200) {\r\n                    // 点赞成功\r\n                    _this.find(\".vote-count\").html(parseInt(_this.find(\".vote-count\").text()) + 1);\r\n                } else {\r\n                    // 取消点赞\r\n                    if(parseInt(_this.find(\".vote-count\").text()) == 0) {\r\n                        return false;\r\n                    }\r\n                    _this.find(\".vote-count\").html(parseInt(_this.find(\".vote-count\").text()) - 1);\r\n                }\r\n            }\r\n        });\r\n    });\r\n    // 评论点赞\r\n    $(\".reply-upvote\").on(\"click\", function() {\r\n        var _this = $(this);\r\n        var id   = _this.data(\"id\");\r\n        var uid  = _this.data(\"uid\");\r\n        _this.find(\"i\").attr(\"class\", \"spinner loading icon\");\r\n        sailAjax(replypraisepath, { foreign_id: id, to_id: uid }, function(response) {\r\n            _this.find(\"i\").attr(\"class\", \"reaction-emoji icon thumbs up outline\");\r\n            if(response.code == 400) {\r\n                swal(\"点赞失败！\", response.msg, \"error\");\r\n                return false;\r\n            } else {\r\n                if(response.code == 200) {\r\n                    // 点赞成功\r\n                    _this.find(\".vote-count\").html(parseInt(_this.find(\".vote-count\").text()) + 1);\r\n                } else {\r\n                    // 取消点赞\r\n                    if(parseInt(_this.find(\".vote-count\").text()) == 0) {\r\n                        return false;\r\n                    }\r\n                    _this.find(\".vote-count\").html(parseInt(_this.find(\".vote-count\").text()) - 1);\r\n                }\r\n            }\r\n        });\r\n    });\r\n});\r\n\r\n// 生成markdown索引目录\r\nfunction articleIndex() {\r\n    var $article = $(\'.markdown-body\');\r\n    var $header = $article.find(\'h1, h2, h3\');\r\n    var _html = \'<ul id=\"articleIndex\" class=\"tocify-header nav nav-list\"></ul>\';\r\n    $(\'#toc\').append(_html);\r\n    var _tagLevel = 1;                  // 最初的level\r\n    var _$wrap = $(\'#articleIndex\');    // 最初的wrap\r\n    $header.each(function(index) {\r\n        if($(this).text().trim() === \'\') {     // 空的title\r\n            return;\r\n        }\r\n        $(this).attr(\'id\', \'articleHeader\' + index);      // 加id\r\n        var _tl = parseInt($(this)[0].tagName.slice(1));  // 当前的tagLevel\r\n        var _$li = null;\r\n        if(index === 0 || _tl === _tagLevel) {  // 第一个或者是与上一个相同\r\n            _$li = $(\'<li class=\"tocify-item\"><a href=\"#articleHeader\'+ index +\'\" onclick=\"return false;\">\' + $(this).text() + \'</a></li>\');\r\n            _$wrap.append(_$li);\r\n        } else if(_tl > _tagLevel) {  // 当前的大于上次的\r\n            _$li = $(\'<ul class=\" nav nav-list\"><li class=\"tocify-item\" style=\"text-indent: 10px;\"><a onclick=\"return false;\" href=\"#articleHeader\' + index + \'\">\' + $(this).text() + \'</a></li></ul>\');\r\n            _$wrap.append(_$li);\r\n            _$wrap = _$li;\r\n        } else if(_tl < _tagLevel) {    // 当前的小于上次的\r\n            _$li = $(\'<li class=\"tocify-item\"><a href=\"#articleHeader\' + index + \'\" onclick=\"return false;\">\' + $(this).text() + \'</a></li>\');\r\n            if(_tl === 1) {\r\n                $(\'#articleIndex\').append(_$li);\r\n                _$wrap = $(\'#articleIndex\');\r\n            } else {\r\n                _$wrap.parent(\'ul\').append(_$li);\r\n                _$wrap = _$wrap.parent(\'ul\');\r\n            }\r\n        }\r\n        _tagLevel = _tl;\r\n    });\r\n\r\n    // 如果不存在目录索引则隐藏\r\n    if($(\"#articleIndex\").find(\"li\").length > 0) {\r\n        $(\".hide-on-mobile\").show();\r\n        /* 锚点定位 */\r\n        $(\".tocify-item\").on(\"click\", function() {\r\n            $(\".tocify-item\").removeClass(\"active\");\r\n            $(this).addClass(\"active\");\r\n            $(\'html,body\').animate({scrollTop: ($($(this).find(\"a\").attr(\'href\')).offset().top - 50 )}, 500);\r\n        });\r\n\r\n        /* 滚动监听 */\r\n        var tocTop = $(\"#toc\").offset().top;\r\n        window.onscroll = function() {\r\n            if($(window).scrollTop() > tocTop) {\r\n                $(\".hide-on-mobile\").addClass(\"fixed\");\r\n            } else {\r\n                $(\".hide-on-mobile\").removeClass(\"fixed\");\r\n            }\r\n            $(\"#toc\").find(\"li\").each(function() {\r\n                if(parseInt($($(this).find(\"a\").attr(\'href\')).offset().top) - $(window).scrollTop() <= 100) {\r\n                    $(\".tocify-item\").removeClass(\"active\");\r\n                    $(this).addClass(\"active\");\r\n                }\r\n            });\r\n            if($($(\"#toc\").find(\"li\").last().find(\"a\").attr(\"href\")).offset().top - $(window).scrollTop() <= 50) {\r\n                $(\".hide-on-mobile\").removeClass(\"fixed\");\r\n            }\r\n        }\r\n    }\r\n}\r\n\r\n// 获取动态评论列表\r\nfunction comments(obj, id)\r\n{\r\n    makeExpandingArea(document.getElementById(\'reply-textarea-\' + id));\r\n    if($(\'.comment-\' + id).is(\":hidden\") === false) {\r\n        $(\'.comment-\' + id).hide();\r\n        return false;\r\n    }\r\n    $(\'div[class^=\"comment\"]\').hide();\r\n    $(\'.comment-\' + id).show();\r\n\r\n    sailAjax(commentPath, {foreign_id: id}, function(ret) {\r\n        var AtList = [\'lmsail\'];\r\n        if(ret.code == 200) {\r\n            var interText = doT.template($(\"#dynamic-comment-\" + id).html());\r\n            $(\"#reply-content\" + id).html(interText(ret.data.comments));\r\n\r\n            AtList = ret.data.AtList;\r\n        } else {\r\n            $(\"#loading-\" + id).html(\"还木有评论，抢占沙发~\")\r\n        }\r\n\r\n        // 监听艾特\r\n        var at_config = { at: \"@\", data: AtList, limit: 20 };\r\n        $(\'textarea[id^=\"reply-textarea\"]\').atwho(at_config);\r\n    });\r\n    $(\'#reply-textarea-\' + id).focus(function () {\r\n        $(this).removeClass(\"reply-textarea\");\r\n        $(this).removeClass(\'focus\');\r\n    });\r\n    $(\'#reply-textarea-\' + id).blur(function () {\r\n        $(this).addClass(\'focus\');\r\n        if($(this).val().length <= 0) {\r\n            $(this).addClass(\"reply-textarea\");\r\n        }\r\n    });\r\n}\r\n\r\n// 添加评论\r\nfunction addComment(obj, id) {\r\n    var content = $(\"#reply-textarea-\" + id).val();\r\n    if(content == \"\") {\r\n        swal(\"请填写评论内容！\", \"评论内容不能为空\", \"error\");\r\n        return false;\r\n    }\r\n    $(obj).addClass(\"loading\");\r\n    sailAjax(addcommentPath, {foreign_id: id, content: content}, function(ret) {\r\n        if(ret.code == 200) {\r\n            $(\"#reply-textarea-\" + id).addClass(\'focus\').val(\"\");\r\n            $(obj).removeClass(\"loading\");\r\n\r\n            // 评论数+1\r\n            $(\"#state-total-\" + id + \", #comment-total-\" + id).html(parseInt($(\"#state-total-\" + id).html()) + 1);\r\n\r\n            getCommentInfo(content, id, ret.data.id, ret.data.avatar, ret.data.nickname, ret.data.special, ret.data.username);\r\n        } else {\r\n            swal(\"评论失败！\", ret.msg, \"error\");\r\n        }\r\n    });\r\n}\r\n\r\nfunction getCommentInfo(content, id, uid, avatar, nickname, special, username) {\r\n    var strVar = \"\";\r\n    strVar += \"<dl class=\\\"comment_list\\\" id=\\\"comment_list\\\">\";\r\n    strVar += \"    <dt>\\n\";\r\n    strVar += \"        <a href=\\\"blog/\"+username+\"/\"+uid+\"\\\" target=\\\"_blank\\\">\";\r\n    strVar += \"            <img width=\\\"20\\\" height=\\\"20\\\" src=\\\"\"+avatar+\"\\\">\";\r\n    strVar += \"        <\\/a>\";\r\n    strVar += \"    <\\/dt>\\n\";\r\n    strVar += \"    <dd>\\n\";\r\n    strVar += \"        <p class=\\\"cont\\\">\\n\";\r\n    strVar += \"        <a href=\\\"blog/\"+username+\"/\"+uid+\"\\\" target=\\\"_blank\\\">\";\r\n    strVar += nickname;\r\n    if(special == 1) {\r\n        strVar += \'<i class=\"vimeo square icon\" style=\"color: #FFB800;\"></i>:\';\r\n    }\r\n    strVar += \"            <\\/a>\";\r\n    strVar += \"            <em>\" + content + \" <span class=\\\"time\\\" style=\\\"color: #999\\\">（刚刚）<\\/span><\\/em>\";\r\n    strVar += \"        <\\/p>\";\r\n    strVar += \"    <\\/dd>\";\r\n    strVar += \"<\\/dl>\";\r\n    $(\"#loading-\" + id).remove();\r\n    $(\"#reply-content\" + id).prepend(strVar);\r\n}\r\n\r\n/**\r\n * 处理输入最大字符\r\n * @param length\r\n */\r\nfunction handleTextLen(length) {\r\n    if($(\"#comment-composing-box\").val() == \"\") {\r\n        $(\"#dynamic-result\").hide(); return;\r\n    }\r\n    if(length <= 0) {\r\n        $(\"#send\").addClass(\"disabled\");\r\n        $(\"#dynamic-result\").hide();\r\n    }\r\n    if(length > 0) {\r\n        if(!$(\"[name=\'article\']\").val()) {\r\n            $(\"#error\").html(length >= 180 ? \"超过最大限制啦。最多只能输入180个字符哦！\" : \"\");\r\n        }\r\n        $(\"#send\").removeClass(\"disabled\");\r\n        $(\"#dynamic-result\").show();\r\n    }\r\n    $(\"#word-count\").html(length);\r\n    convert();\r\n}\r\n\r\n/**\r\n * 解析markdown语法\r\n */\r\nfunction convert(){\r\n    var html = marked(document.getElementById(\"comment-composing-box\").value);\r\n\r\n    /* 解析表情 */\r\n    var face_list = [];\r\n    html.replace(/\\[#(\\w+?)\\]/g, function (face, $1,$2) {\r\n        face_list.push(face)\r\n    });\r\n\r\n    for (i in face_list) {\r\n        faceName = face_list[i].replace(\'[#\', \'\').replace(\']\', \'\')\r\n        html = html.replace(face_list[i], \'<img class=\"emoji\" width=\"25\" height=\"25\" src=\"\' + face_path + \"/blog/face/\" + faceName + \'.png\">\')\r\n    }\r\n\r\n    document.getElementById(\"dynamic-result\").innerHTML = html;\r\n}\r\n\r\n/**\r\n * 在光标位置插入表情\r\n * @param myField    文本框对象\r\n * @param myValue 要插入的值\r\n */\r\nfunction insertAtCursor(myField, myValue)\r\n{\r\n    //IE support\r\n    if (document.selection)\r\n    {\r\n        myField.focus();\r\n        sel            = document.selection.createRange();\r\n        sel.text    = myValue;\r\n        sel.select();\r\n    }\r\n    //MOZILLA/NETSCAPE support\r\n    else if (myField.selectionStart || myField.selectionStart == \'0\')\r\n    {\r\n        var startPos    = myField.selectionStart;\r\n        var endPos        = myField.selectionEnd;\r\n        // save scrollTop before insert\r\n        var restoreTop    = myField.scrollTop;\r\n        myField.value    = myField.value.substring(0, startPos) + myValue + myField.value.substring(endPos, myField.value.length);\r\n        if (restoreTop > 0)\r\n        {\r\n            myField.scrollTop = restoreTop;\r\n        }\r\n        myField.focus();\r\n        myField.selectionStart    = startPos + myValue.length;\r\n        myField.selectionEnd    = startPos + myValue.length;\r\n    } else {\r\n        myField.value += myValue;\r\n        myField.focus();\r\n    }\r\n}\r\n\r\n// 终极判断变量是否为空\r\nfunction chkStrIsNull(str) {\r\n    if ( str == \"\" ) return true;\r\n    if(!str) return true;\r\n    var regu = \"^[ ]+$\";\r\n    var re = new RegExp(regu);\r\n    return re.test(str);\r\n}\r\n\r\n/**\r\n * 封装Ajax\r\n * @param url\r\n * @param data\r\n * @param callback\r\n * @param method\r\n */\r\nfunction sailAjax(url, data, callback) {\r\n    $.ajax({\r\n        headers: {\r\n            \'X-CSRF-TOKEN\': $(\'meta[name=\"csrf-token\"]\').attr(\'content\')\r\n        },\r\n        url: url,\r\n        dataType : \'json\',\r\n        type: \"post\",\r\n        data: data,\r\n        success:function(response) {\r\n            callback(response);\r\n        },\r\n        error: function() {\r\n            swal(\"网络请求出错！\", \"请稍候再试~\", \"error\");\r\n        }\r\n    });\r\n}\r\n\r\n/**\r\n * textarea 自适应高度\r\n * @param el\r\n */\r\nfunction makeExpandingArea (el) {\r\n\r\n    var timer = null;\r\n    //由于ie8有溢出堆栈问题，故调整了这里\r\n    var setStyle = function(el, auto) {\r\n        if (auto) el.style.height = \'auto\';\r\n        el.style.height = el.scrollHeight + \'px\';\r\n    }\r\n    var delayedResize = function(el) {\r\n        if (timer) {\r\n            clearTimeout(timer);\r\n            timer = null;\r\n        }\r\n        timer = setTimeout(function() {\r\n            setStyle(el)\r\n        }, 200);\r\n    }\r\n    if (el.addEventListener) {\r\n\r\n        // 处理js自动追加，不生效问题\r\n        setTimeout(function() {\r\n            handleTextLen(el.value.length);\r\n        }, 200)\r\n\r\n        el.addEventListener(\'input\', function() {\r\n            handleTextLen(el.value.length);\r\n            setStyle(el, 1);\r\n        }, false);\r\n        setStyle(el)\r\n\r\n    } else if (el.attachEvent) {\r\n\r\n        el.attachEvent(\'onpropertychange\', function() {\r\n            handleTextLen(el.value.length);\r\n            setStyle(el)\r\n        })\r\n        setStyle(el)\r\n    }\r\n    if (window.VBArray && window.addEventListener) { //IE9\r\n        el.attachEvent(\"onkeydown\", function() {\r\n            var key = window.event.keyCode;\r\n            if (key == 8 || key == 46) delayedResize(el);\r\n            handleTextLen(el.value.length);\r\n        });\r\n        el.attachEvent(\"oncut\", function() {\r\n            delayedResize(el);\r\n            handleTextLen(el.value.length);\r\n        });\r\n        handleTextLen(el.value.length);\r\n    }\r\n}\r\n```', 'laravel, php', 46, 0, 0, 0, 1, '2019-04-05 21:55:53', '2019-04-26 19:57:23');
INSERT INTO `sail_blog` VALUES (51, 1, 'LmSail社区系统安装及使用', '# 写在前面的话  \r\n\r\nLmSail社区的前身是基于`UUASK问答系统`改造而成的，历时一个多月，集`问答`、`博客`、`商城`、`在线群聊`等功能于一身的`MarkDown博客问答`型社区，其内核为`ThinkPhp3.2`（搭建时还木有接触`ThinkPhp5.x`版本），当后来陆续接触了`ThinkPhp5.0`、`ThinkPhp5.1`、`Laravel`后，体验到了代码的优雅，友好，新颖等特性，有了`重构`的决定，当然在时间上可能来的稍晚了一些，在`重构`前，一直在使用`ThinkPhp5.1`框架，可能是用的有点`厌倦`了，哈哈，大概程序员都这样吧，总是想尝试点新的东西！也因此加入了`Laravel`的大家庭，新的LmSail社区也是在边学边做的情况下悄悄的诞生了！  \r\n\r\n# LmSail社区以前的模样  \r\n\r\n![file](/storage/21ecf7db46b69df894246718c6878852.png)\r\n\r\n# LmSail社区现在的样子  \r\n\r\n![file](/storage/fcc8c86c8e5bd2929ee3a2d741d95252.png)\r\n\r\n# LmSail社区介绍  \r\nLmSail社区基于`Laravel5.8`开发而成，界面及部分功能模仿`Summer`大神的`learnku`社区，后端使用`Laravel-admin`搭建而成，目前已完成的功能如下：  \r\n* 基本博客功能，`点赞`、`评论`，同时支持`MarkDown`\r\n* 社区动态，也是LmSail社区主打功能，支持`MarkDOwn`，`表情`，`点赞`、`评论`（支持@xx 功能）  \r\n* 用户中心部分功能（资料修改，博客中心等）\r\n* 简单搜索支持\r\n\r\n尚未完成的部分：  \r\n\r\n* 用户中心待完善\r\n* 消息系统（站内信，回复，评论等通知）\r\n* 搜索采用`elasticsearch`全文搜索引擎重构\r\n* 其他  \r\n\r\n# 演示地址  \r\n\r\n演示地址：[LmSail社区](http://www.lmsail.com)\r\n\r\n# 安装及使用  \r\n1. 拉取LmSail社区代码  \r\n> git clone https://github.com/lmsail/laravel-lmsail.git\r\n2. 生成`.env`配置文件中`APP_KEY` 应用密钥\r\n> php artisan key:generate\r\n3. 设置`.env`配置文件中`APP_URL` 网站地址\r\n> APP_URL=http://www.testblog.com\r\n4. 更改数据库配置，如下：  \r\n```env\r\nDB_CONNECTION=mysql\r\nDB_HOST=127.0.0.1\r\nDB_PORT=3306\r\nDB_DATABASE=testblog\r\nDB_USERNAME=root\r\nDB_PASSWORD=root\r\n```\r\n5. ~~根目录下执行`composer install`安装扩展（此步骤可忽略）~~\r\n6. 生成数据表，命令行执行： \r\n> php artisan migrate\r\n7. 生成数据，命令行执行：\r\n> php artisan db:seed\r\n8. 建立storage目录文件到public的软连接\r\n> php artisan storage:link \r\n9. 至此`LmSail社区`就安装完成了，访问第三步设置的域名就可以愉快的访问啦\r\n> 前台管理员账号：`lmsail`   `12345678`\r\n> 后台地址：http://www.testblog.com  账号密码默认：admin  \r\n\r\n-----\r\n\r\n\r\n# 版本缺陷  \r\n> 暂且称之为`缺陷`吧，由于刚接触laravel，对于她的许多`内在`不够了解，在后面不断接触与深入了解之后，才发现她原来这么的富有内涵，比如：丰富的`助手函数`，`webpack.mix.js`等等，以至于回头来看现有版本的内在代码，感觉缺少了`laravel`的`灵魂`，所以此版本只供想学习`laravel`，想了解`laravel`的同学作为入门的跳板或中转项目，我想应该是有帮助的！  \r\n\r\n# 一些想法  \r\n> 作为后端开发人员来说，前端一直是弱项，就我而言，一直以来困扰我的东西是：\r\n* 前端开发中，避免不了需要引入大量插件来增强我们前端页面的美感与用户体验，然后随之而来的问题是，页面中引入了大量的css，js文件，这是通点之一\r\n* 前端代码结构的混乱，当然，后端代码中也同样会出现这种问题，这无非是在编码前没有考虑到项目维护性，只一味的实现功能点，在拜读了`summer`的 **[Laravel 项目开发规范](https://learnku.com/docs/laravel-specification/5.5)** 后深有所感，也以此作为日后开发的准则\r\n* 后续会将此项目重构，引入`pjax`技术，提升前端用户体验！使用 **[webpack.mix.js](https://learnku.com/docs/laravel/5.5/mix/1307#plain-css)** 构建`css`，`js`！\r\n* loading...（未完待续）  \r\n\r\n-----\r\n\r\n\r\n# License  \r\n\r\n> LmSail社区系统仅仅作为个人学习用途，基于`MIT License` 协议，将永久`免费`、`开源`，这意味着使用者可以随意更改及使用，无需保留`Powered by lmsail.com`等字样！  \r\n> 请遵守当地法律，请勿恶意传播，损伤！开源不易，请多多支持！', 'LmSail,使用说明,Laravel', 141, 2, 1, 0, 1, '2019-04-23 22:32:39', '2019-04-26 19:26:02');
INSERT INTO `sail_blog` VALUES (44, 1, '服务器做了两个优化 CPU 使用率减低 40%', '## 问题描述\r\n大家应该注意到了最近社区访问速度有点慢，一直以为是家里 wifi 不给力覆盖范围不够，直到 @leo 喊我说服务器太慢，CPU 爆了：\r\n![](https://iocaffcdn.phphub.org/uploads/images/201806/19/1/eGiVa04qTl.png?imageView2/2/w/1240/h/0)\r\n上 UCloud 后台看数据比较直观：\r\n![](https://iocaffcdn.phphub.org/uploads/images/201806/19/1/3HX99i8X6Q.png?imageView2/2/w/1240/h/0)\r\nCPU 使用率居高不下，有时候还伴随着 MySQL 爆掉的情况，如下图。当这种情况发生时，你就会发现网页请求卡住不动：\r\n![](https://iocaffcdn.phphub.org/uploads/images/201806/19/1/XQlB4SEPir.png?imageView2/2/w/1240/h/0)', '服务器,优化,linux', 23, 0, 0, 0, 1, '2019-04-06 00:23:59', NULL);
INSERT INTO `sail_blog` VALUES (45, 1, '如何高效地学习 Laravel 框架？', '> 第一次写博客，好紧张啊\r\n\r\n# 1. 起因\r\n\r\n    随着前后端完全分离，PHP也基本告别了view模板嵌套开发，转而专门写资源接口。Laravel是PHP框架中最优雅的框架，国内也越来越多人告别ThinkPHP选择了Laravel。Laravel框架本身对API有支持，但是感觉再工作中还是需要再做一些处理。Lumen用起来不顺手，有些包不能很好地支持。所以，将Laravel框架进行一些配置处理，让其在开发API时更得心应手。\r\n	\r\n当然，你也可以点击这里,直接跳到成果~\r\n\r\n## 2. 标题2\r\n\r\n阿斯达大声大声道\r\n\r\n# 3. 大标题\r\n \r\n啊实打实四大圣诞节\r\n\r\n## 4. 小标题\r\n\r\n卢卡斯加多久爱丽丝的骄傲了\r\n\r\n### 5. 小小小标题\r\n\r\n按时打算离开的骄傲了圣诞节阿喀琉斯', 'laravel', 17, 1, 0, 0, 1, '2019-04-06 01:13:57', NULL);
INSERT INTO `sail_blog` VALUES (47, 1, '浅析 Laravel 官方文档推荐的 Nginx 配置', '以 **Laravel 5.8** 文档 为准，浅析 **Nginx** 配置。可作为 **轻松部署 Laravel 应用** 的拓展阅读。\r\n\r\n方便起见，我在注释中使用 [] 包裹引用配置中的值。\r\n\r\n```ngnix\r\nserver {\r\n    # 监听 HTTP 协议默认的 [80] 端口。\r\n    listen 80;\r\n    # 绑定主机名 [example.com]。\r\n    server_name example.com;\r\n    # 服务器站点根目录 [/example.com/public]。\r\n    root /example.com/public;\r\n\r\n    # 添加几条有关安全的响应头；与 Google+ 的配置类似，详情参见文末。\r\n    add_header X-Frame-Options \"SAMEORIGIN\";\r\n    add_header X-XSS-Protection \"1; mode=block\";\r\n    add_header X-Content-Type-Options \"nosniff\";\r\n\r\n    # 站点默认页面；可指定多个，将顺序查找。\r\n    # 例如，访问 http://example.com/ Nginx 将首先尝试「站点根目录/index.html」是否存在，不存在则继续尝试「站点根目录/index.htm」，以此类推...\r\n    index index.html index.htm index.php;\r\n\r\n    # 指定字符集为 UTF-8\r\n    charset utf-8;\r\n\r\n    # Laravel 默认重写规则；删除将导致 Laravel 路由失效且 Nginx 响应 404。\r\n    location / {\r\n        try_files $uri $uri/ /index.php?$query_string;\r\n    }\r\n\r\n    # 关闭 [/favicon.ico] 和 [/robots.txt] 的访问日志。\r\n    # 并且即使它们不存在，也不写入错误日志。\r\n    location = /favicon.ico { access_log off; log_not_found off; }\r\n    location = /robots.txt  { access_log off; log_not_found off; }\r\n\r\n    # 将 [404] 错误交给 [/index.php] 处理，表示由 Laravel 渲染美观的错误页面。\r\n    error_page 404 /index.php;\r\n\r\n    # URI 符合正则表达式 [\\.php$] 的请求将进入此段配置\r\n    location ~ \\.php$ {\r\n        # 配置 FastCGI 服务地址，可以为 IP:端口，也可以为 Unix socket。\r\n        fastcgi_pass unix:/var/run/php/php7.2-fpm.sock;\r\n        # 配置 FastCGI 的主页为 index.php。\r\n        fastcgi_index index.php;\r\n        # 配置 FastCGI 参数 SCRIPT_FILENAME 为 $realpath_root$fastcgi_script_name。\r\n        fastcgi_param SCRIPT_FILENAME $realpath_root$fastcgi_script_name;\r\n        # 引用更多默认的 FastCGI 参数。\r\n        include fastcgi_params;\r\n    }\r\n    # 通俗地说，以上配置将所有 URI 以 .php 结尾的请求，全部交给 PHP-FPM 处理。\r\n\r\n    # 除符合正则表达式 [/\\.(?!well-known).*] 之外的 URI，全部拒绝访问\r\n    # 也就是说，拒绝公开以 [.] 开头的目录，[.well-known] 除外\r\n    location ~ /\\.(?!well-known).* {\r\n        deny all;\r\n    }\r\n}\r\n```', 'ngnix,laravel', 39, 2, 1, 0, 1, '2019-04-07 14:15:08', NULL);
INSERT INTO `sail_blog` VALUES (48, 1, '手摸手教你让 Laravel 开发 API 更得心应手', '手摸手教你让 Laravel 开发 API 更得心应手', 'asd', 26, 2, 0, 0, 1, '2019-04-07 16:11:05', NULL);
INSERT INTO `sail_blog` VALUES (49, 1, '时间的灰烬 第四章 他夏了夏天 12', '家长会召开的那天，我忐忑不安地在教室外的走廊上徘徊。  \r\n\r\n这次成绩比之上次，退步不少，主要是理科分数下降很多。数学老师、物理老师还有班主任都已经分别找过我谈话了，每个人都是一副语重心长又和蔼可亲的模样。  \r\n\r\n这种感觉很怪，就像自己变成了一张锡纸，平铺在长长的烛火上，被几双看不见的手来回推移，自己被烘烤得热乎乎的，又不知道所用何在，能看到的，只能看见头顶上一方青白色的屋顶，而在屋顶之外，在屋顶之后，又是什么呢？  \r\n我不知道。也许我现在受着烘烤的目的，就是为了冲破这方青灰吧。  \r\n\r\n今天是一个很好的晴天，每一束花草都被轻缓地涂抹上灿烂的颜色。我在教室门口往里瞅了瞅，家长们按着自己小孩的位置，坐得满满当当，此刻都把眼睛放在黑板面前的陈老师身上，陈老师正站在讲台面前泰然自若地讲话。  \r\n\r\n素来是便衣便服的陈老师，今天竟然穿着一套整齐笔挺的黑色西装，还配着一双铮亮的系带皮鞋，站在黑板前如同一个成功学演讲师，面向虔诚的信徒向他们传授自己得道的经验。  \r\n\r\n“嘿！”有人凑到我身后轻轻推推我，我回头一看，原来是许静。她从口袋里掏出一颗柠檬味的硬糖递到我手上，低声说：“你爸爸来了还是妈妈来了？”“我妈妈，喏，就是坐我位置上的那个。哎，前面的是你爸爸？正襟危坐的，听得一丝不苟的样子呢。”我剥开糖纸，把糖扔进嘴里，强烈的酸甜味像尘埃四散而起。  \r\n\r\n“嗯嗯是的，他今天还特地穿了套新衣服嘿嘿，还是我阿姆去年给他买的，一直放在衣柜里没舍得穿，说今天是个大场合，得穿。”  \r\n\r\n许静的眼睛很大，眉毛和睫毛都很黑，她认真说话的时候像眼睛也眨动得认真，睫毛有力地往上往下，像是燕子的黑翅扑闪。    \r\n\r\n我把嘴往陈老师身上努了努，悄声说：“陈老师今天也是一套新衣服，确实是大场合呢。”  \r\n\r\n许静噗嗤一笑，我问她：“你这次期中考得很好，爸妈有没有给你什么大奖励？买新衣服什么的？”  \r\n\r\n许静嘟起嘴：“哪有，我阿爹阿姆是开心得很，我阿姆还拿着我的成绩单到我爷奶家去了一趟，说也要给他们看看我的好成绩。”我拍拍许静的肩膀：“那就很好了，我们家许静也是争气了，真是了不起了哈哈哈。”  \r\n\r\n许静用手指在我鼻尖上刮了一刮，我们嬉笑着往楼下走去，想要在校园里随便逛逛晒晒太阳，打发下时间，等着家长会结束。\r\n\r\n> 作者：阿栈  \r\n> 链接：https://www.jianshu.com/p/66e20f95ec7c  \r\n> 来源：简书  \r\n> 简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。', '阿栈,简书,转载', 223, 2, 3, 0, 1, '2019-04-07 16:14:09', NULL);
INSERT INTO `sail_blog` VALUES (52, 1, 'Laravel Mix 使用心得', '# 文档地址\r\n> [Laravel 的资源任务编译器 Laravel Mix](https://learnku.com/docs/laravel/5.5/mix/1307#installation)  \r\n\r\n# 使用步骤  \r\n在开始使用 Mix 之前，必须先确保你的机器上安装了 `Node.js` 和 `NPM`。 \r\n1. Windows下使用如下命令：\r\n> npm install --no-bin-links\r\n2. 若报以下错误，则运行：\r\n> npm  i cross-env --save-dev   \r\n![file](/storage/3b649087e2f97e11c161bbe3781b8d62.png)\r\n3. 随后编辑项目根目录下 `webpack.mix.js` 文件，配置需要打包的`css`，`js`等，具体可参考教程，以下提供简单示例：  \r\n> ![file](/storage/f22c3dbab0abbb111987eddaf9046f41.png)', 'Laravel Mix', 11, 0, 0, 0, 1, '2019-04-26 21:09:28', '2019-04-26 21:10:37');
INSERT INTO `sail_blog` VALUES (53, 1, 'Laravel Pjax 的使用', '# 简介\r\nPjax 是一个 jQuery 插件，其作用是使用 ajax 来加速页面加载时间，工作原理是只从服务器获取指定 HTML 片段，然后客户端使用获取到的内容更新局部页面。\r\n\r\nLaravel Pjax 扩展包将 Pjax 集成到 Laravel 中，实现原理是提供一个中间件，返回 Pjax 期望的响应内容。\r\n\r\n# 安装\r\n通过 Composer 安装扩展包：\r\n> $ composer require spatie/laravel-pjax   \r\n  \r\n接下来需要在 Kernel.php 中注册中间件，这里我们将其注册到web中间件组：\r\n```php\r\n// app/Http/Kernel.php\r\nprotected $middlewareGroups = [\r\n    \'web\' => [\r\n        ...\r\n        \\Spatie\\Pjax\\Middleware\\FilterIfPjax::class,\r\n    ],\r\n    ...\r\n];\r\n```\r\n# 使用\r\n> 该扩展包提供的中间件会处理服务端返回的内容并将其转化为 Pjax 插件期望服务端返回的内容。', 'Laravel Pjax', 5, 0, 0, 0, 1, '2019-04-26 21:24:42', '2019-04-26 21:24:42');

-- ----------------------------
-- Table structure for sail_blogpraise
-- ----------------------------
DROP TABLE IF EXISTS `sail_blogpraise`;
CREATE TABLE `sail_blogpraise`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id，对应点赞人',
  `foreign_id` int(11) NOT NULL COMMENT '外键ID，对应博文id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sail_blogpraise
-- ----------------------------
INSERT INTO `sail_blogpraise` VALUES (1, 3, 50, '2019-04-21 01:41:02', '2019-04-21 01:41:02');
INSERT INTO `sail_blogpraise` VALUES (5, 1, 50, '2019-04-22 20:21:29', '2019-04-22 20:21:29');
INSERT INTO `sail_blogpraise` VALUES (8, 1, 49, '2019-04-22 21:28:12', '2019-04-22 21:28:12');
INSERT INTO `sail_blogpraise` VALUES (9, 1, 48, '2019-04-22 21:28:13', '2019-04-22 21:28:13');
INSERT INTO `sail_blogpraise` VALUES (10, 1, 47, '2019-04-22 21:28:13', '2019-04-22 21:28:13');
INSERT INTO `sail_blogpraise` VALUES (14, 1, 51, '2019-04-26 16:33:11', '2019-04-26 16:33:11');
INSERT INTO `sail_blogpraise` VALUES (13, 4, 51, '2019-04-24 16:15:36', '2019-04-24 16:15:36');

-- ----------------------------
-- Table structure for sail_comment
-- ----------------------------
DROP TABLE IF EXISTS `sail_comment`;
CREATE TABLE `sail_comment`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL DEFAULT 0 COMMENT '对应评论id',
  `foreign_id` int(11) NOT NULL COMMENT '外键ID，对应博文或动态id',
  `user_id` int(11) NOT NULL COMMENT '评论者uid',
  `praise` int(11) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '评论内容',
  `is_reply` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否为回复 0：普通评论 1：回复',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sail_comment
-- ----------------------------
INSERT INTO `sail_comment` VALUES (2, 0, 116, 1, 0, '测试一下动态的评论功能 哈哈哈', 0, '2019-04-20 17:11:02', '2019-04-20 17:11:02');
INSERT INTO `sail_comment` VALUES (3, 0, 116, 1, 0, '测试一下动态的评论功能 哈哈哈', 0, '2019-04-20 17:11:02', '2019-04-20 17:11:02');
INSERT INTO `sail_comment` VALUES (4, 0, 116, 1, 0, '测试一下动态的评论功能 哈哈哈', 0, '2019-04-20 17:11:02', '2019-04-20 17:11:02');
INSERT INTO `sail_comment` VALUES (5, 0, 119, 1, 0, '测试一下动态评论', 0, '2019-04-20 23:31:15', '2019-04-20 23:31:15');
INSERT INTO `sail_comment` VALUES (6, 0, 119, 1, 0, '继续测试一下看看', 0, '2019-04-20 23:32:33', '2019-04-20 23:32:33');
INSERT INTO `sail_comment` VALUES (7, 0, 119, 1, 0, '在测试一下', 0, '2019-04-20 23:32:58', '2019-04-20 23:32:58');
INSERT INTO `sail_comment` VALUES (8, 0, 117, 1, 0, '测试一下评论', 0, '2019-04-20 23:38:53', '2019-04-20 23:38:53');
INSERT INTO `sail_comment` VALUES (9, 0, 115, 1, 0, '测试一下', 0, '2019-04-20 23:44:13', '2019-04-20 23:44:13');
INSERT INTO `sail_comment` VALUES (40, 0, 51, 1, 1, '写的很好，排版也很友好，界面不用说了~ [#kissclose] [#kissclose]', 0, '2019-04-25 17:17:10', '2019-04-25 17:26:19');
INSERT INTO `sail_comment` VALUES (11, 0, 108, 1, 0, '哈哈，好厉害啊这个', 0, '2019-04-20 23:45:54', '2019-04-20 23:45:54');
INSERT INTO `sail_comment` VALUES (12, 0, 107, 1, 0, '试一试', 0, '2019-04-20 23:46:14', '2019-04-20 23:46:14');
INSERT INTO `sail_comment` VALUES (13, 0, 107, 1, 0, '继续测试一下', 0, '2019-04-20 23:48:38', '2019-04-20 23:48:38');
INSERT INTO `sail_comment` VALUES (14, 0, 106, 1, 0, '哈哈哈，这个好玩啊', 0, '2019-04-20 23:50:00', '2019-04-20 23:50:00');
INSERT INTO `sail_comment` VALUES (15, 0, 104, 1, 0, '很棒哦，哈哈哈', 0, '2019-04-20 23:50:34', '2019-04-20 23:50:34');
INSERT INTO `sail_comment` VALUES (16, 0, 117, 1, 0, '下面再来写@的功能，哈哈哈，支不支持！！', 0, '2019-04-21 01:03:23', '2019-04-21 01:03:23');
INSERT INTO `sail_comment` VALUES (17, 0, 117, 3, 0, '我来试一试 @社区创建者', 0, '2019-04-21 01:32:07', '2019-04-21 01:32:07');
INSERT INTO `sail_comment` VALUES (18, 0, 117, 1, 0, '@迈克尔 怎么不好用了呢？', 0, '2019-04-21 17:08:35', '2019-04-21 17:08:35');
INSERT INTO `sail_comment` VALUES (19, 0, 117, 1, 0, '放到后面会发生什么事情呢？ @迈克尔', 0, '2019-04-21 17:09:04', '2019-04-21 17:09:04');
INSERT INTO `sail_comment` VALUES (20, 0, 117, 1, 0, '@迈克尔 @迈克尔 @迈克尔 测试测试', 0, '2019-04-21 17:15:23', '2019-04-21 17:15:23');
INSERT INTO `sail_comment` VALUES (21, 0, 117, 1, 0, '你好， @迈克尔 我是你的粉丝', 0, '2019-04-21 17:16:21', '2019-04-21 17:16:21');
INSERT INTO `sail_comment` VALUES (22, 0, 117, 1, 0, '你好，我是你的粉丝 @迈克尔', 0, '2019-04-21 17:16:39', '2019-04-21 17:16:39');
INSERT INTO `sail_comment` VALUES (23, 0, 117, 1, 0, '<a href=\"\" target=\"_blank\">@迈克尔</a> 呵呵，你真幽默啊', 0, '2019-04-21 17:21:40', '2019-04-21 17:21:40');
INSERT INTO `sail_comment` VALUES (24, 0, 115, 1, 0, '继续测试一下', 0, '2019-04-21 19:49:10', '2019-04-21 19:49:10');
INSERT INTO `sail_comment` VALUES (25, 0, 115, 1, 0, '测试模型观察这是否生效', 0, '2019-04-21 19:51:34', '2019-04-21 19:51:34');
INSERT INTO `sail_comment` VALUES (26, 0, 115, 1, 0, '测试模型观察这是否生效', 0, '2019-04-21 19:51:42', '2019-04-21 19:51:42');
INSERT INTO `sail_comment` VALUES (27, 0, 114, 1, 0, '测试模型观察这是否生效', 0, '2019-04-21 19:52:08', '2019-04-21 19:52:08');
INSERT INTO `sail_comment` VALUES (28, 0, 114, 1, 0, '呵呵', 0, '2019-04-21 19:55:32', '2019-04-21 19:55:32');
INSERT INTO `sail_comment` VALUES (36, 0, 7, 1, 0, '```php\r\ntrait  UpdateWithoutChangeUpdatedField\r\n{\r\n    protected $needUpdateAt = true;\r\n\r\n    public function needUpdate($value)\r\n    {\r\n        $this->needUpdateAt = $value;\r\n        return $this;\r\n    }\r\n\r\n    /**\r\n     * Set the value of the \"updated at\" attribute.\r\n     *\r\n     * @param  mixed $value\r\n     * @return $this\r\n     */\r\n    public function setUpdatedAt($value)\r\n    {\r\n        if ($this->needUpdateAt) {\r\n            parent::setUpdatedAt($value);\r\n        }\r\n        return $this;\r\n    }\r\n}\r\n```', 0, '2019-04-23 17:08:24', '2019-04-23 17:08:24');
INSERT INTO `sail_comment` VALUES (32, 0, 114, 1, 0, '这里也可以通过 `observer` 监听 `created` 事件来做到事件回调~ ^_^', 0, '2019-04-22 18:15:34', '2019-04-22 18:15:34');
INSERT INTO `sail_comment` VALUES (33, 0, 49, 1, 1, '文章写的真好，瞬间被圈粉了~[#grinning]', 0, '2019-04-22 20:31:30', '2019-04-22 21:28:26');

-- ----------------------------
-- Table structure for sail_commentpraise
-- ----------------------------
DROP TABLE IF EXISTS `sail_commentpraise`;
CREATE TABLE `sail_commentpraise`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id，对应点赞人',
  `foreign_id` int(11) NOT NULL COMMENT '外键ID，对应评论id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sail_commentpraise
-- ----------------------------
INSERT INTO `sail_commentpraise` VALUES (3, 1, 33, '2019-04-22 21:28:26', '2019-04-22 21:28:26');
INSERT INTO `sail_commentpraise` VALUES (4, 1, 40, '2019-04-25 17:26:19', '2019-04-25 17:26:19');

-- ----------------------------
-- Table structure for sail_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `sail_dynamic`;
CREATE TABLE `sail_dynamic`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `content` varchar(644) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '动态内容',
  `view` int(11) NOT NULL DEFAULT 0 COMMENT '查看数',
  `praise` int(11) NOT NULL DEFAULT 0 COMMENT '点赞数',
  `comment` int(11) NOT NULL DEFAULT 0 COMMENT '评论数',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态 0：删除  2：违规  1：显示',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 122 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sail_dynamic
-- ----------------------------
INSERT INTO `sail_dynamic` VALUES (1, 1, '埃斯特哈鲁姆-内森特-阿美特南。最大铜酸盐含量。neque准nemo-rem-aperiam eius溶质。', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (2, 1, '我是一个自由的人。非虚无飘渺的情欲提供了相似的条件。共和国码头，利比里亚，尼斯特', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (3, 1, '托塔姆·利比罗·埃利根迪·奥米斯·德比蒂斯。圣帕里亚图尔码头。在多洛尔的位置。即使是最性感的马克西姆和阿迪皮西马格纳姆错误。', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (4, 1, '他是自由主义者。合理的分配，使之成为一个完整的整体。', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (5, 1, '但不允许有任何障碍。莫勒斯蒂亚斯的官员。当你跳起来的时候。我只不过是在重复练习。', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (6, 1, '动弹应该类似弹幕，可以选择', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (7, 1, '比如做成 从页面右边往左边滚动的，貌似在哪个网站见过。', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (8, 1, '动弹就不要出现在关注动态吧，不然消息太多了。。', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (9, 1, 'function say()\r\n{\r\n    echo \"Hello world\";\r\n}', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (10, 1, '如图 , 复制图片，并粘贴在输入框以后，就能实现图片的上传 , 请问都使用到了什么技术 ？', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (115, 1, '打卡打卡~~ 新用户来到 [#grimacing]', 0, 3, 2, 1, '2019-04-08 18:21:22', '2019-04-21 19:49:10');
INSERT INTO `sail_dynamic` VALUES (11, 1, '哈？？？动弹？？？ :flushed: :yum:', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (34, 1, '我擦，一点都不高大上啊这代码写的，太垃圾了吧', 0, 0, 0, 1, '2019-04-01 15:52:40', '2019-04-01 15:52:40');
INSERT INTO `sail_dynamic` VALUES (12, 1, 'echo \'Hello\',\' brother\';', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (36, 1, '啊实打实大', 0, 0, 0, 1, '2019-04-01 15:54:43', '2019-04-01 15:54:43');
INSERT INTO `sail_dynamic` VALUES (37, 1, '测试一下子啊', 0, 0, 0, 1, '2019-04-01 16:41:05', '2019-04-01 16:41:05');
INSERT INTO `sail_dynamic` VALUES (14, 1, ':joy: :joy: :joy: :joy:这是个神马功能啊', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (15, 1, '希望动弹能为社区增添点活力  :muscle:', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (39, 1, '[#grimacing][#grimacing] 哈哈，可以正常发动态啦终于', 0, 0, 0, 1, '2019-04-01 16:53:08', '2019-04-01 16:53:08');
INSERT INTO `sail_dynamic` VALUES (16, 1, '呐，你们要的微博API 的 Yaf 基础结构：https://github.com/overtrue/yaf-skeleton', 0, 1, 0, 1, '2019-03-31 16:56:30', '2019-04-18 21:56:17');
INSERT INTO `sail_dynamic` VALUES (17, 1, '这是啥，感觉像发现新大陆，动弹一下，哈哈哈', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (40, 1, '# 这是一篇有态度的动态 [#grimacing]\n\n![image.png](http://www.lmsail.net/storage/d4e4b0c76d77414a7175688340f2cbc8.png)', 0, 0, 0, 1, '2019-04-01 16:55:35', '2019-04-01 16:55:35');
INSERT INTO `sail_dynamic` VALUES (18, 1, '2019你的 flag 立了吗? 没立赶快来 2019-flag', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (19, 1, '㊗小伙伴们新年快乐！', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (41, 1, '#### 哈哈，真的很强啊 [#hundred]\n\n```php\necho \'非常吊啊\';\n```', 0, 0, 0, 1, '2019-04-01 16:59:46', '2019-04-01 16:59:46');
INSERT INTO `sail_dynamic` VALUES (20, 1, '大家新年快乐，站长大大 @Lmsail 恭喜发财，红包拿来/偷笑', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (21, 1, '明显感觉到年后社区的招聘帖热闹了起来。', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (116, 1, '[#confused] 打卡，今天更新了点后台的东西，前台的东西就暂时这样吧，以后再慢慢增加！！', 0, 3, 3, 1, '2019-04-09 19:54:32', '2019-04-24 15:59:20');
INSERT INTO `sail_dynamic` VALUES (22, 1, 'laravel 5.8发布了，谁有更新特性文章吗？', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (111, 1, '给大家推荐一位老师，无所不知哦！[#confused]  [百度搜索 - 全球最大的搜索引擎](http://www.baidu.com/).', 0, 3, 0, 1, '2019-04-06 23:13:11', '2019-04-21 01:40:51');
INSERT INTO `sail_dynamic` VALUES (25, 1, '社区偷偷的改了很多地方啊，好多地方改成无刷新了，体验很棒。', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (26, 1, '最近好多朋友给我推荐 Rust 哈', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (27, 1, '社区维护的composer源现在入口在哪里？', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (114, 1, '这两天完成了社区的点赞与评论功能，并且在功能间增加监听事件，用于消息推送~ [#cowboy]', 0, 4, 3, 1, '2019-04-08 18:02:59', '2019-04-22 18:15:34');
INSERT INTO `sail_dynamic` VALUES (29, 1, '@LmSail 下拉框被遮住了', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (48, 1, '窝花线了，只要超过15个赞就被系统自动加精了，小白童鞋有3篇加精笔记了~嘿嘿嘿^_^[#grinning]', 0, 1, 0, 1, '2019-04-02 22:46:23', '2019-04-08 21:04:31');
INSERT INTO `sail_dynamic` VALUES (30, 1, '标签页的文字是会滚动的嘛，我还以为自己眼花了 :hushed: :hushed: :hushed:', 0, 0, 0, 1, '2019-03-31 16:56:30', '2019-03-31 16:56:30');
INSERT INTO `sail_dynamic` VALUES (50, 1, '今天又是充满希望的一天！！', 0, 2, 0, 1, '2019-04-03 15:02:40', '2019-04-22 00:01:32');
INSERT INTO `sail_dynamic` VALUES (106, 1, '又是充满希望的一天，真好~~  `信心满满` [#grinning]', 0, 3, 1, 1, '2019-04-06 17:51:03', '2019-04-21 01:40:49');
INSERT INTO `sail_dynamic` VALUES (104, 1, '[#grimacing] 今天完成了博客的`目录索引`以及`索引的滚动监听定位`，哈哈哈，太开心啦', 0, 2, 1, 1, '2019-04-06 16:02:25', '2019-04-22 00:01:29');
INSERT INTO `sail_dynamic` VALUES (121, 1, '今天总算明白了，学习新框架或者其他任何产品之前，还是先拜读一下`文档`，即使第一遍看可能看不懂，但是我想说，看懂不是目的，目的是了解`他（她）`的特性，了解`他（她）`的`优雅`，不至于在后知后觉时才明白自己原来错过了这么多。。。[#disappointed]', 0, 1, 0, 1, '2019-04-25 20:35:29', '2019-04-26 19:35:03');

-- ----------------------------
-- Table structure for sail_dynamicpraise
-- ----------------------------
DROP TABLE IF EXISTS `sail_dynamicpraise`;
CREATE TABLE `sail_dynamicpraise`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id，对应点赞人',
  `foreign_id` int(11) NOT NULL COMMENT '外键ID，对应动态id',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sail_dynamicpraise
-- ----------------------------
INSERT INTO `sail_dynamicpraise` VALUES (5, 1, 114, '2019-04-18 21:56:20', '2019-04-18 21:56:20');
INSERT INTO `sail_dynamicpraise` VALUES (4, 1, 16, '2019-04-18 21:56:17', '2019-04-18 21:56:17');
INSERT INTO `sail_dynamicpraise` VALUES (29, 1, 117, '2019-04-22 18:05:10', '2019-04-22 18:05:10');
INSERT INTO `sail_dynamicpraise` VALUES (8, 1, 119, '2019-04-20 21:10:00', '2019-04-20 21:10:00');
INSERT INTO `sail_dynamicpraise` VALUES (34, 1, 116, '2019-04-24 15:59:20', '2019-04-24 15:59:20');
INSERT INTO `sail_dynamicpraise` VALUES (10, 1, 115, '2019-04-20 21:49:32', '2019-04-20 21:49:32');
INSERT INTO `sail_dynamicpraise` VALUES (16, 3, 117, '2019-04-21 01:40:45', '2019-04-21 01:40:45');
INSERT INTO `sail_dynamicpraise` VALUES (15, 3, 114, '2019-04-21 01:40:42', '2019-04-21 01:40:42');
INSERT INTO `sail_dynamicpraise` VALUES (17, 3, 116, '2019-04-21 01:40:46', '2019-04-21 01:40:46');
INSERT INTO `sail_dynamicpraise` VALUES (18, 3, 115, '2019-04-21 01:40:47', '2019-04-21 01:40:47');
INSERT INTO `sail_dynamicpraise` VALUES (19, 3, 106, '2019-04-21 01:40:49', '2019-04-21 01:40:49');
INSERT INTO `sail_dynamicpraise` VALUES (20, 3, 111, '2019-04-21 01:40:51', '2019-04-21 01:40:51');
INSERT INTO `sail_dynamicpraise` VALUES (37, 1, 121, '2019-04-26 19:35:03', '2019-04-26 19:35:03');
INSERT INTO `sail_dynamicpraise` VALUES (22, 1, 52, '2019-04-21 18:23:07', '2019-04-21 18:23:07');
INSERT INTO `sail_dynamicpraise` VALUES (23, 1, 104, '2019-04-22 00:01:29', '2019-04-22 00:01:29');
INSERT INTO `sail_dynamicpraise` VALUES (24, 1, 53, '2019-04-22 00:01:31', '2019-04-22 00:01:31');
INSERT INTO `sail_dynamicpraise` VALUES (25, 1, 50, '2019-04-22 00:01:32', '2019-04-22 00:01:32');

-- ----------------------------
-- Table structure for sail_migrations
-- ----------------------------
DROP TABLE IF EXISTS `sail_migrations`;
CREATE TABLE `sail_migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sail_migrations
-- ----------------------------
INSERT INTO `sail_migrations` VALUES (10, '2014_10_12_000000_create_users_table', 2);
INSERT INTO `sail_migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `sail_migrations` VALUES (3, '2019_03_31_163751_create_dynamic_table', 1);
INSERT INTO `sail_migrations` VALUES (4, '2019_04_05_195215_create_blog_table', 1);
INSERT INTO `sail_migrations` VALUES (5, '2019_04_05_224629_create_statistics_table', 1);
INSERT INTO `sail_migrations` VALUES (6, '2019_04_07_191216_create_dynamicpraise_table', 1);
INSERT INTO `sail_migrations` VALUES (7, '2019_04_07_191418_create_blogpraise_table', 1);
INSERT INTO `sail_migrations` VALUES (8, '2019_04_07_223349_create_comment_table', 1);
INSERT INTO `sail_migrations` VALUES (9, '2019_04_08_153749_create_commentpraise_table', 1);
INSERT INTO `sail_migrations` VALUES (11, '2016_01_04_173148_create_admin_tables', 3);
INSERT INTO `sail_migrations` VALUES (12, '2017_07_17_040159_create_config_table', 4);

-- ----------------------------
-- Table structure for sail_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `sail_password_resets`;
CREATE TABLE `sail_password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `sail_password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sail_statistics
-- ----------------------------
DROP TABLE IF EXISTS `sail_statistics`;
CREATE TABLE `sail_statistics`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `praise` int(11) NOT NULL DEFAULT 0 COMMENT '累计点赞数',
  `blognums` int(11) NOT NULL DEFAULT 0 COMMENT '累计发表文章数',
  `fans` int(11) NOT NULL DEFAULT 0 COMMENT '累计粉丝数',
  `collection` int(11) NOT NULL DEFAULT 0 COMMENT '累计收藏数',
  `view` int(11) NOT NULL DEFAULT 0 COMMENT '累计访问量',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of sail_statistics
-- ----------------------------
INSERT INTO `sail_statistics` VALUES (1, 1, 35, 49, 0, 0, 127, '2019-04-05 22:47:52', '2019-04-26 21:33:28');
INSERT INTO `sail_statistics` VALUES (2, 2, 18, 2, 0, 0, 26, '2019-04-06 20:24:25', '2019-04-21 16:44:30');
INSERT INTO `sail_statistics` VALUES (3, 3, 13, 0, 0, 0, 16, '2019-04-06 20:45:16', '2019-04-21 20:16:49');
INSERT INTO `sail_statistics` VALUES (4, 4, 15, 0, 0, 0, 17, '2019-04-06 22:04:17', '2019-04-21 17:30:41');

-- ----------------------------
-- Table structure for sail_users
-- ----------------------------
DROP TABLE IF EXISTS `sail_users`;
CREATE TABLE `sail_users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL DEFAULT 0 COMMENT '性别',
  `special` int(11) NOT NULL DEFAULT 0 COMMENT '特殊省份',
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `autograph` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '签名',
  `personal_website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '个人主页',
  `introduction` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '自我介绍',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `sail_users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sail_users
-- ----------------------------
INSERT INTO `sail_users` VALUES (1, 'lmsail', '社区创建者', 1, 1, '/storage/06c17d987458fc546869843494e2015e.jpg', 'lmsail@qq.com', NULL, '$2y$10$voa375/c52ejaIbNWR444OBCtHi2v1qTLetL2SJBFRUili1R0AwH2', '人生并不像火车要通过每个站似的经过每一个生活阶段。人生总是直向前行走，从不留下什么。 —— 刘易斯', 'http://www.lmsail.com', '热爱编程与生活的PHPER~~', 'CEYR6tBTcLP2xAHmc13sGAaCL6uNatGrzgvYD2Ri8spixZKPUDCwcvg3w1H1', '2019-04-18 21:38:43', '2019-04-24 16:02:26', NULL);
INSERT INTO `sail_users` VALUES (3, 'JackMa', '迈克尔', 0, 0, NULL, 'JackMa@qq.com', NULL, '$2y$10$MIMynX0lzp54/8FkFahS.emhv5WPxXXxLDpaVfjfkUh7eJoFwMeEi', NULL, NULL, NULL, 'QNHl6xpbkfflKixw64ed0m0qe4n0vNC4BhMI5JEDvxatFUpnUtojyHwFRabV', '2019-04-21 01:31:31', '2019-04-21 01:31:31', NULL);
INSERT INTO `sail_users` VALUES (4, 'haha', 'haha', 0, 0, NULL, '123789@qq.com', NULL, '$2y$10$F6W2nZVyJQpQtv6Ixmi5v.UnorFq9Yhf3jMJmyqOYU6o.4NEBH4Z6', NULL, NULL, NULL, 'GRYVT1HVhXlXlZj05p4S8U6Hqj1ak38Hw7kU3RhndDlwGtNR7jkSXuA2mQCA', '2019-04-21 01:36:43', '2019-04-21 01:36:43', NULL);

SET FOREIGN_KEY_CHECKS = 1;
