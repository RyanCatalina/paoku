/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : hotel

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 06/02/2020 20:10:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accommodation_record
-- ----------------------------
DROP TABLE IF EXISTS `accommodation_record`;
CREATE TABLE `accommodation_record`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '住宿记录id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `room_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间类型',
  `room_number` int(11) NULL DEFAULT NULL COMMENT '房间号',
  `room_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间单价',
  `total_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总价',
  `checkin_date` date NULL DEFAULT NULL COMMENT '入住日期',
  `departure_date` date NULL DEFAULT NULL COMMENT '离开日期',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for background
-- ----------------------------
DROP TABLE IF EXISTS `background`;
CREATE TABLE `background`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '背景图片id',
  `background_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '背景图片',
  `background_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '背景图片简介',
  `creater_id` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `creater_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人用户名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifier_id` int(11) NULL DEFAULT NULL COMMENT '修改人id',
  `modifier_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人用户名',
  `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `exist_states` int(11) NULL DEFAULT NULL COMMENT '存在状态(1=正常,2=删除)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for copyright
-- ----------------------------
DROP TABLE IF EXISTS `copyright`;
CREATE TABLE `copyright`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '版权信息id',
  `contact_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `contact_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `creater_id` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `creater_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人用户名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifier_id` int(11) NULL DEFAULT NULL COMMENT '修改人id',
  `modifier_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人用户名',
  `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `exist_states` int(11) NULL DEFAULT NULL COMMENT '存在状态(1=正常,2=删除)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `coupon_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优惠券图片',
  `coupon_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优惠券价格',
  `coupon_details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优惠券详情',
  `usable_range` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '使用范围',
  `service_conditions` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '使用条件',
  `get_date` datetime(0) NULL DEFAULT NULL COMMENT '领取日期',
  `expiration_date` datetime(0) NULL DEFAULT NULL COMMENT '到期日期',
  `coupon_states` int(11) NULL DEFAULT NULL COMMENT '优惠券状态(1=未使用,2=已使用)',
  `usage_states` int(11) NULL DEFAULT NULL COMMENT '使用状态(1=正常,2=删除)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for expense
-- ----------------------------
DROP TABLE IF EXISTS `expense`;
CREATE TABLE `expense`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消费记录id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `consumption_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费类型',
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `quantity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购买数量',
  `trading_manner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易方式',
  `transaction_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易金额',
  `consumption_date` datetime(0) NULL DEFAULT NULL COMMENT '消费日期',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for features
-- ----------------------------
DROP TABLE IF EXISTS `features`;
CREATE TABLE `features`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '酒店特色id',
  `feature_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '特色图片',
  `feature_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '特色简介',
  `creater_id` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `creater_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人用户名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifier_id` int(11) NULL DEFAULT NULL COMMENT '修改人id',
  `modifier_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人用户名',
  `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `exist_states` int(11) NULL DEFAULT NULL COMMENT '存在状态(1=正常,2=删除)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fitness
-- ----------------------------
DROP TABLE IF EXISTS `fitness`;
CREATE TABLE `fitness`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '健身器材id',
  `equipment_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '器材名称',
  `equipment_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '器材图片',
  `equipment_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '器材简介',
  `equipment_num` int(11) NULL DEFAULT NULL COMMENT '器材数量',
  `equipment_usage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '器材使用方法',
  `creater_id` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `creater_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人用户名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifier_id` int(11) NULL DEFAULT NULL COMMENT '修改人id',
  `modifier_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人用户名',
  `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `equipment_states` int(11) NULL DEFAULT NULL COMMENT '器材状态(1=正常,2=维修)',
  `exist_states` int(11) NULL DEFAULT NULL COMMENT '存在状态(1=正常,2=删除)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '酒店历史id',
  `history_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '历史图片',
  `history_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '历史简介',
  `creater_id` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `creater_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人用户名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifier_id` int(11) NULL DEFAULT NULL COMMENT '修改人id',
  `modifier_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人用户名',
  `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `exist_states` int(11) NULL DEFAULT NULL COMMENT '存在状态(1=正常,2=删除)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '信息id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `exist_states` int(11) NULL DEFAULT NULL COMMENT '存在状态(1=正常,2=删除)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for opinion
-- ----------------------------
DROP TABLE IF EXISTS `opinion`;
CREATE TABLE `opinion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '意见反馈id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `problem_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问题类型',
  `problem_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '问题描述',
  `feedback_time` datetime(0) NULL DEFAULT NULL COMMENT '反馈时间',
  `dispose_states` int(11) NULL DEFAULT NULL COMMENT '存在状态(1=正常,2=删除)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `permission_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `permission_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限描述',
  `permission_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限键',
  `permission_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限值',
  `parent_permission_id` int(11) NULL DEFAULT NULL COMMENT '父权限id',
  `parent_sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `permission_states` int(11) NULL DEFAULT NULL COMMENT '权限状态(0=删除,1=正常)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '主页面', '未登录可访问的页面', '/login.html', 'anon', NULL, 1, 1, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (2, '登录请求', '未登录可访问的请求', '/users/login', 'anon', NULL, 2, 1, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (3, '登出请求', '登出访问的请求', '/users/logout', 'logout', NULL, 3, 1, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (4, 'root页面', 'root用户的页面', '/root.html', 'roles[root]', NULL, 4, 1, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (5, 'admin页面', 'admin用户的页面', '/admin.html', 'roles[admin]', NULL, 5, 1, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (6, 'user页面', 'user用户的页面', '/user.html', 'roles[user]', NULL, 6, 1, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (7, 'root_list页面', '具备root,admin,user角色才能访问', '/rootList.html', 'roles[root,admin,user]', NULL, 7, 1, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (8, 'admin_list页面', '具备admin,user角色才能访问', '/adminList.html', 'roles[admin,user]', NULL, 8, 1, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (9, 'user_list', '具备user角色才能访问', '/userList.html', 'roles[user]', NULL, 9, 1, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (10, '查询请求', '前端可访问的请求', '/select/**', 'anon', NULL, 10, 1, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (11, '用户注册', '前端用户注册请求', '/register', 'anon', NULL, 11, 1, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (12, '静态资源', '开放的静态资源', '/file/**', 'anon', NULL, 12, 1, NULL, NULL, NULL);
INSERT INTO `permission` VALUES (13, '所有请求', '所有请求都需要认证才能访问', '/**', 'authc', NULL, 999, 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `product_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `product_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品简介',
  `product_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品类型',
  `product_unit_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品单价',
  `product_num` int(11) NULL DEFAULT NULL COMMENT '商品数量',
  `product_popularity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产品热度',
  `creater_id` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `creater_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人用户名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifier_id` int(11) NULL DEFAULT NULL COMMENT '修改人id',
  `modifier_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人用户名',
  `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `product_instock` int(11) NULL DEFAULT NULL COMMENT '是否有货(1=有货,2=无货)',
  `product_states` int(11) NULL DEFAULT NULL COMMENT '存在状态(1=正常,2=删除)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for restaurant
-- ----------------------------
DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE `restaurant`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '餐厅id',
  `restaurant_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类(早,中,晚)',
  `restaurant_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `restaurant_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `food_unit_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品单价',
  `food_popularity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品热度',
  `register_date` date NULL DEFAULT NULL COMMENT '上架时间',
  `creater_id` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `creater_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人用户名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modifier_id` int(11) NULL DEFAULT NULL COMMENT '修改人id',
  `modifier_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人用户名',
  `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `food_instock` int(11) NULL DEFAULT NULL COMMENT '是否有货(1=有货,2=无货)',
  `food_states` int(11) NULL DEFAULT NULL COMMENT '存在状态(1=正常,2=删除)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `role_sort` int(11) NULL DEFAULT NULL COMMENT '角色排序',
  `role_states` int(11) NULL DEFAULT NULL COMMENT '角色状态(1=正常,2=删除)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'root', '超级管理员权限', NULL, 1, NULL, NULL, NULL);
INSERT INTO `role` VALUES (2, 'admin', '管理员权限', NULL, 1, NULL, NULL, NULL);
INSERT INTO `role` VALUES (3, 'user', '用户权限', NULL, 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色权限id',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` int(11) NULL DEFAULT NULL COMMENT '权限id',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `permission_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `permission_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限描述',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '房间id',
  `room_floor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间楼层',
  `room_number` int(11) NULL DEFAULT NULL COMMENT '房间号',
  `room_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间图片',
  `room_intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间简介',
  `room_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间类型',
  `room_max` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间最大人数',
  `room_area` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间占地面积',
  `room_bed_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间床类型',
  `room_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间单价',
  `creater_id` int(11) NULL DEFAULT NULL COMMENT '创建人id',
  `creater_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人用户名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `modify_id` int(11) NULL DEFAULT NULL COMMENT '修改人id',
  `modify_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人用户名',
  `modify_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `room_states` int(11) NULL DEFAULT NULL COMMENT '房间状态(1=有人,2=无人,3=已预定)',
  `exist_states` int(11) NULL DEFAULT NULL COMMENT '存在状态(1=正常,2=删除)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_face_info
-- ----------------------------
DROP TABLE IF EXISTS `user_face_info`;
CREATE TABLE `user_face_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `group_id` int(11) NULL DEFAULT NULL COMMENT '分组id',
  `face_id` varchar(31) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '人脸唯一Id',
  `name` varchar(63) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名字',
  `age` int(3) NULL DEFAULT NULL COMMENT '年纪',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱地址',
  `gender` smallint(1) NULL DEFAULT NULL COMMENT '性别，1=男，2=女',
  `phone_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `face_feature` blob NULL COMMENT '人脸特征',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `fpath` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '照片路径',
  `test1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `GROUP_ID`(`group_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_face_info
-- ----------------------------
INSERT INTO `user_face_info` VALUES (1, 101, '2koca1zi5c', '单剑飞', NULL, NULL, NULL, NULL, 0x0000FA440000744309E1B03DDA32B8BC846F933BF80D09BEF283BABC2C1AE63BD7A0F73D1AE73C3EE8F0B53D6AAA52BD0CC021BC71E4813C049BE43DE6278EBCF5F36FBDCB6DB93C9E3AF53D15CBFF3C518C98BCBD76CF3AAF89CB3D142A95BDBA1D19BBA61BF0BC75A61DBD0420613D54A483BC9D4A5C3ED10932BC193AE0BCBD6AB83D74AE1F3D6C07DEBC96F8933DCED2ECBC370AEE3CB1D2FEBD2A932EBB7388B83C4FB01BBCDDF2F9BD4C3EE9BB02B0083D769625BCD018C2BD4320F43BFDCC5C3D01ACD4BC44A1CBBC2EAA4A3DBD62633C47F3813DB339483D8768863D4AF8D7BCF7E04B3D7C2A7F3DB1FB0C3DB311ACBD307C793BE0CC6CBD65069C3C934A633D094F4BBD2F2996BC903E21BC1FC4593D03C47B3BC15ECCBCAE0F90BC5F77F03DB36CC9BD7054753C3E4620BCA20140BDEF4C29BDD0B60A3C7FFC1CBD3FE432BD68FCC63C432CAEBDD7CF5DBD5764AEBDFE52BF3DDF33E8BCA179DD3D57826C3D830E4C3DF5E89CBDFB76BE3CBDD21D3DC89DA1BDD1468B3DFF29793D9A44E7BC874FA93DC40EDFBC38BC86BCC4D434BC3EE3DDBD3A4B3A3DAF0527BDA08050BDE29B07BE12478CBDBA0F043EF060AE3D425820BDE457ACBC1E85143D6105F2BD2C9ABEBAF6B73EBDB5C2943D772FA7BD7631A9BD9F97CCBC6BC6313D944A2DBAC1BAB63C577DE13A3CE3B83D40D8403D3EB2953CFD0F6BBDF0CD593DC22B06BCDD2494BCD14A02BDB21CD73BFBFB5DBDFE11B4BB5228F1BCEE85483C8A203CBD3FD2963C659411BEE24A2ABD30F4763D3144623BEE98453D64260C3B4C1DDDBCA34C223CCDDFA4BDB290F63D1B5E2FBDCC6FB2BD2CD3943DB4D1293D664BBF3D8C17E8BAE2BF8FBC0E85083D575E6F3C38A33BBDE4F86B3DBC2B86BD857ED2BC8AA376BD3373AF3D5B5C04BD6A524ABD046F8FBDC477133E0165E3BD7952C83DB910EFBB0619A9BD897F163CAFADCE3C880121BD6F60B9BD86BC42BD335B67BD1E0545BD1997DABB394950BDC6E1CFBC5AE1C3BCDF852BBD399D903D46EE993DE9F2523DFC218B3DA94B7DBC4D63AF3C3961BF3DF88655BD39DC02BD132862BDE3A5163D14D6C43D03C0BE3D97B59EBC9892C5BC6051883CDAD5343CBD083FBCA0A76FBC17700EBDD6C2903B285A02BDA66BC3BCAB7BA23DB20C97BBE6431D3DD2EB38BC733D023E5FB9A7BDFEF5D7BC8243003E1F006F3B74A05D3DC81AE33D8C1B8CBD7D56C13D3588863D91AB66BD591C083C9B3B3A3DDCF8543DEEBB6CBD5A6ADCBC79B55B3B4F32D9BD9391E53B5EEE2F3D90FED2BB9AB9F43D4840603CCD09593D154ACCBCDFEB49BD912BED3D5ADABF3D14B9BE3CBF36E23CB038133C1C9502BEC15864BD7EBE74BCB340583D55EEEE3CCC6591BB66D3CD3D3027023E1377AB3D103A25BD99ECACBD21AA4D3B64269E3D10806E3D3800FCBC43B8CBBD391CE53B, '2020-01-12 17:10:29', '2020-01-12 17:10:29', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_product
-- ----------------------------
DROP TABLE IF EXISTS `user_product`;
CREATE TABLE `user_product`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户商品id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `product_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `product_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品价格',
  `order_time` datetime(0) NULL DEFAULT NULL COMMENT '下单时间',
  `order_overdue_states` int(11) NULL DEFAULT NULL COMMENT '订单是否过期(1=正常,2=过期)',
  `order_states` int(11) NULL DEFAULT NULL COMMENT '订单状态(1=已支付,2=未支付)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户角色id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `role_id` int(11) NULL DEFAULT NULL COMMENT '角色id',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名',
  `role_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1, 'root', '超级管理员', '超级管理员权限', NULL, NULL, NULL);
INSERT INTO `user_role` VALUES (2, 1, 2, 'root', '管理员', '管理员权限', NULL, NULL, NULL);
INSERT INTO `user_role` VALUES (3, 1, 3, 'root', '用户', '用户权限', NULL, NULL, NULL);
INSERT INTO `user_role` VALUES (4, 2, 2, 'admin', '管理员', '管理员权限', NULL, NULL, NULL);
INSERT INTO `user_role` VALUES (5, 2, 3, 'admin', '用户', '用户权限', NULL, NULL, NULL);
INSERT INTO `user_role` VALUES (6, 3, 3, 'user', '用户', '用户权限', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for user_room
-- ----------------------------
DROP TABLE IF EXISTS `user_room`;
CREATE TABLE `user_room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户房间id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `room_id` int(11) NULL DEFAULT NULL COMMENT '房间id',
  `room_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间类型',
  `room_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间价格',
  `order_time` datetime(0) NULL DEFAULT NULL COMMENT '下单时间',
  `order_overdue_states` int(11) NULL DEFAULT NULL COMMENT '订单是否过期(1=正常,2=过期)',
  `order_states` int(11) NULL DEFAULT NULL COMMENT '订单状态(1=已支付,2=未支付)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `truename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `nation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '绑定手机',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `microblog_account_states` int(11) NULL DEFAULT NULL COMMENT '是否关联微博账号(0=未关联,1=已关联)',
  `qq_account_states` int(11) NULL DEFAULT NULL COMMENT '是否关联qq账号(0=未关联,1=已关联)',
  `wechat_account_states` int(11) NULL DEFAULT NULL COMMENT '是否关联微信账号(0=未关联,1=已关联)',
  `alipay_account_states` int(11) NULL DEFAULT NULL COMMENT '是否关联支付宝账号(0=未关联,1=已关联)',
  `baidu_account_states` int(11) NULL DEFAULT NULL COMMENT '是否关联百度账号(0=未关联,1=已关联)',
  `idcard_front` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证正面照',
  `idcard_back` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证背面照',
  `idcard_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号码',
  `registration_date` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `membership_score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员积分',
  `membership_level` int(11) NULL DEFAULT NULL COMMENT '会员等级',
  `realname_authentication_states` int(11) NULL DEFAULT NULL COMMENT '实名认证(0=未认证,1=已认证)',
  `states` int(11) NULL DEFAULT NULL COMMENT '用户状态(1=正常,2=删除,3=锁定,999=隐藏账户)',
  `test1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'root', 'd57e3867a8e25cc04a7c801914dba3a22bbe6e97196454105c09a73f00f10d3a', '', '', '', '', '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 999, NULL, NULL, NULL);
INSERT INTO `users` VALUES (2, 'admin', '8b64db1b8cb9f9c2b2ae41c65b7f2c4b1456f68dd1235b8527234fae5e40bce5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `users` VALUES (3, 'user', '73d3b6cfc9d611fcd7744a97ed693d1c7b8b64c23587bcc6a4151ccae4bbea5a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
