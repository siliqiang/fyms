/*
 Navicat Premium Data Transfer

 Source Server         : 本地MySQL
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : ry

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 09/06/2021 19:45:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fy_pet_breed
-- ----------------------------
DROP TABLE IF EXISTS `fy_pet_breed`;
CREATE TABLE `fy_pet_breed`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'id',
  `category` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别（1：英短2：美短）',
  `breed_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '种类名称',
  `category_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别id（弃用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fy_pet_breed
-- ----------------------------
INSERT INTO `fy_pet_breed` VALUES ('06270397-a172-4448-8881-e4f5860a4a78', '1', '银渐层', NULL, 'admin', '2021-06-09 14:27:51', '', NULL, NULL);
INSERT INTO `fy_pet_breed` VALUES ('d2416bac-5688-4d57-bb26-4e7e21bb6633', '1', '英短矮脚虎斑', NULL, 'admin', '2021-06-09 14:28:14', '', NULL, NULL);
INSERT INTO `fy_pet_breed` VALUES ('dce3595c-8655-42d4-9362-bc6123243782', '2', '美短', NULL, 'admin', '2021-06-04 17:21:19', '', NULL, NULL);

-- ----------------------------
-- Table structure for fy_pet_cat
-- ----------------------------
DROP TABLE IF EXISTS `fy_pet_cat`;
CREATE TABLE `fy_pet_cat`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `breed_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '种类id',
  `num` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '猫咪编号不可重复',
  `birth_date` datetime(0) NULL DEFAULT NULL COMMENT '出生日期',
  `have_date` datetime(0) NULL DEFAULT NULL COMMENT '拿猫日期',
  `prime_cost` decimal(10, 0) NULL DEFAULT NULL COMMENT '拿猫价格',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态（字典）0：在售 1：已售 2：死亡',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '猫咪管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fy_pet_cat
-- ----------------------------
INSERT INTO `fy_pet_cat` VALUES ('040d9c7d-e060-4a09-b4dc-b0b1771ed965', 'dce3595c-8655-42d4-9362-bc6123243782', 'M21060701', '2021-06-01 00:00:00', '2021-06-14 00:00:00', 111, 'http://localhost:8080/profile/upload/2021/06/02/04cdbd62-da04-4438-8a6b-47b78f2ba7c4.jpg', '0', '', '2021-06-02 20:08:07', 'admin', '2021-06-04 17:21:32', '访问');
INSERT INTO `fy_pet_cat` VALUES ('0e52cea1-9a40-4cbc-9d4a-b88eef446683', 'dce3595c-8655-42d4-9362-bc6123243782', 'CAT_NUM21060910', '2021-06-08 00:00:00', '2021-06-09 00:00:00', 1200, NULL, '0', 'admin', '2021-06-09 14:20:05', '', NULL, NULL);
INSERT INTO `fy_pet_cat` VALUES ('3842b23d-1476-4941-95d5-9a97f8f2d072', 'dce3595c-8655-42d4-9362-bc6123243782', 'M21060702', '2021-06-07 00:00:00', '2021-06-01 00:00:00', 14, NULL, '0', 'admin', '2021-06-04 17:12:28', 'admin', '2021-06-04 17:21:38', NULL);
INSERT INTO `fy_pet_cat` VALUES ('4f0fdb23-6a09-4fba-93ba-1ef2aad62a4c', 'dce3595c-8655-42d4-9362-bc6123243782', 'M21060703', '2021-06-01 00:00:00', '2021-06-02 00:00:00', 100, NULL, '0', 'admin', '2021-06-04 18:21:33', '', NULL, NULL);
INSERT INTO `fy_pet_cat` VALUES ('8f50fb57-bd77-4ef3-9492-2bde3c05ff89', 'dce3595c-8655-42d4-9362-bc6123243782', 'M21060704', '2021-06-09 00:00:00', '2021-06-08 00:00:00', 120, NULL, '0', 'admin', '2021-06-04 18:21:58', '', NULL, '是');
INSERT INTO `fy_pet_cat` VALUES ('ac516f70-f812-436e-bece-85bc3b769f49', 'dce3595c-8655-42d4-9362-bc6123243782', 'M21060911', '2021-06-08 00:00:00', '2021-06-08 00:00:00', 100000, NULL, '0', 'admin', '2021-06-09 14:23:56', '', NULL, NULL);

-- ----------------------------
-- Table structure for fy_pet_goods
-- ----------------------------
DROP TABLE IF EXISTS `fy_pet_goods`;
CREATE TABLE `fy_pet_goods`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '物品id',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品类别（1：药品2：物品）',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品名称',
  `inventory` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '库存',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '物品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fy_pet_goods
-- ----------------------------
INSERT INTO `fy_pet_goods` VALUES ('d0b2a6ca-72e8-4135-a020-dec5fc101c2b', '2', '红狗营养膏', '1', 11.00, '', '2021-06-02 23:23:01', '', NULL, NULL);

-- ----------------------------
-- Table structure for fy_pet_orders
-- ----------------------------
DROP TABLE IF EXISTS `fy_pet_orders`;
CREATE TABLE `fy_pet_orders`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单id',
  `client_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户id',
  `source_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源id（可以是猫咪或者用品）',
  `type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单类型（1：猫咪2：用品 3：药品）',
  `selling_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '售价',
  `quantity` int(0) NULL DEFAULT NULL COMMENT '数量',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fy_pet_orders
-- ----------------------------

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'us_client', '客户信息表', NULL, NULL, 'UsClient', 'crud', 'com.fyms', 'system', 'client', '客户信息', 'ruoyi', '0', '/', '{}', 'admin', '2021-05-27 17:33:05', '', '2021-05-31 16:24:09', NULL);
INSERT INTO `gen_table` VALUES (2, 'fy_pet_breed', '宠物种类', '', '', 'FyPetBreed', 'crud', 'com.fyms', 'system', 'breed', '宠物种类', 'ruoyi', '0', '/', '{}', 'admin', '2021-05-31 16:23:18', '', '2021-05-31 16:28:18', NULL);
INSERT INTO `gen_table` VALUES (3, 'fy_pet_cat', '猫咪管理表', NULL, NULL, 'Cat', 'crud', 'com.ruoyi.system', 'system', 'cat', '猫咪管理', 'ruoyi', '0', '/', '{}', 'admin', '2021-06-01 14:35:14', '', '2021-06-01 14:41:22', NULL);
INSERT INTO `gen_table` VALUES (4, 'fy_pet_goods', '物品表', NULL, NULL, 'Goods', 'crud', 'com.ruoyi', 'system', 'goods', '物品', 'ruoyi', '0', '/', '{}', 'admin', '2021-06-01 16:07:46', '', '2021-06-01 16:08:58', NULL);
INSERT INTO `gen_table` VALUES (5, 'fy_pet_orders', '订单表', NULL, NULL, 'Orders', 'crud', 'com.ruoyi', 'system', 'orders', '订单', 'ruoyi', '0', '/', '{}', 'admin', '2021-06-01 16:25:45', '', '2021-06-01 16:26:03', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'id', '主键', 'varchar(32)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-05-27 17:33:05', '', '2021-05-31 16:24:09');
INSERT INTO `gen_table_column` VALUES (2, '1', 'name', '客户姓名', 'varchar(30)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-05-27 17:33:05', '', '2021-05-31 16:24:09');
INSERT INTO `gen_table_column` VALUES (3, '1', 'tel', '电话', 'varchar(50)', 'String', 'tel', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-05-27 17:33:05', '', '2021-05-31 16:24:09');
INSERT INTO `gen_table_column` VALUES (4, '1', '\r\nfixture_date', '成交时间', 'datetime', 'Date', '\r\nfixtureDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2021-05-27 17:33:05', '', '2021-05-31 16:24:09');
INSERT INTO `gen_table_column` VALUES (5, '1', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2021-05-27 17:33:05', '', '2021-05-31 16:24:09');
INSERT INTO `gen_table_column` VALUES (6, '1', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2021-05-27 17:33:05', '', '2021-05-31 16:24:09');
INSERT INTO `gen_table_column` VALUES (7, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2021-05-27 17:33:05', '', '2021-05-31 16:24:09');
INSERT INTO `gen_table_column` VALUES (8, '1', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-05-27 17:33:05', '', '2021-05-31 16:24:09');
INSERT INTO `gen_table_column` VALUES (9, '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-05-27 17:33:05', '', '2021-05-31 16:24:09');
INSERT INTO `gen_table_column` VALUES (10, '2', 'id', 'id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-05-31 16:23:18', '', '2021-05-31 16:28:18');
INSERT INTO `gen_table_column` VALUES (11, '2', 'category', '类别（1：英短2：美短）', 'char(1)', 'String', 'category', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-05-31 16:23:18', '', '2021-05-31 16:28:18');
INSERT INTO `gen_table_column` VALUES (12, '2', 'breed_name', '种类名称', 'varchar(50)', 'String', 'breedName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-05-31 16:23:18', '', '2021-05-31 16:28:18');
INSERT INTO `gen_table_column` VALUES (13, '2', 'category_id', '类别id', 'varchar(50)', 'String', 'categoryId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-05-31 16:23:18', '', '2021-05-31 16:28:18');
INSERT INTO `gen_table_column` VALUES (14, '2', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2021-05-31 16:23:18', '', '2021-05-31 16:28:18');
INSERT INTO `gen_table_column` VALUES (15, '2', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2021-05-31 16:23:18', '', '2021-05-31 16:28:18');
INSERT INTO `gen_table_column` VALUES (16, '2', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2021-05-31 16:23:18', '', '2021-05-31 16:28:18');
INSERT INTO `gen_table_column` VALUES (17, '2', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2021-05-31 16:23:18', '', '2021-05-31 16:28:18');
INSERT INTO `gen_table_column` VALUES (18, '2', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 9, 'admin', '2021-05-31 16:23:18', '', '2021-05-31 16:28:18');
INSERT INTO `gen_table_column` VALUES (19, '3', 'id', '主键id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-06-01 14:35:14', '', '2021-06-01 14:41:22');
INSERT INTO `gen_table_column` VALUES (20, '3', 'breed_id', '种类id', 'varchar(50)', 'String', 'breedId', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2021-06-01 14:35:14', '', '2021-06-01 14:41:22');
INSERT INTO `gen_table_column` VALUES (21, '3', 'birth_date', '出生日期', 'datetime', 'Date', 'birthDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2021-06-01 14:35:14', '', '2021-06-01 14:41:22');
INSERT INTO `gen_table_column` VALUES (22, '3', 'have_date', '拿猫日期', 'datetime', 'Date', 'haveDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 4, 'admin', '2021-06-01 14:35:14', '', '2021-06-01 14:41:22');
INSERT INTO `gen_table_column` VALUES (23, '3', 'prime_cost', '拿猫价格', 'bigint', 'Long', 'primeCost', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-06-01 14:35:14', '', '2021-06-01 14:41:22');
INSERT INTO `gen_table_column` VALUES (24, '3', 'url', '图片地址', 'varchar(255)', 'String', 'url', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2021-06-01 14:35:14', '', '2021-06-01 14:41:22');
INSERT INTO `gen_table_column` VALUES (25, '3', 'state', '状态（字典）0：在售 1：已售 2：死亡', 'char(1)', 'String', 'state', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-06-01 14:35:14', '', '2021-06-01 14:41:22');
INSERT INTO `gen_table_column` VALUES (26, '3', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-06-01 14:35:14', '', '2021-06-01 14:41:22');
INSERT INTO `gen_table_column` VALUES (27, '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-06-01 14:35:14', '', '2021-06-01 14:41:22');
INSERT INTO `gen_table_column` VALUES (28, '3', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2021-06-01 14:35:14', '', '2021-06-01 14:41:22');
INSERT INTO `gen_table_column` VALUES (29, '3', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2021-06-01 14:35:14', '', '2021-06-01 14:41:22');
INSERT INTO `gen_table_column` VALUES (30, '3', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 12, 'admin', '2021-06-01 14:35:14', '', '2021-06-01 14:41:22');
INSERT INTO `gen_table_column` VALUES (31, '4', 'id', '物品id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-06-01 16:07:46', '', '2021-06-01 16:08:58');
INSERT INTO `gen_table_column` VALUES (32, '4', 'type', '物品类别（1：药品2：物品）', 'char(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 2, 'admin', '2021-06-01 16:07:46', '', '2021-06-01 16:08:58');
INSERT INTO `gen_table_column` VALUES (33, '4', 'name', '物品名称', 'varchar(50)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-06-01 16:07:46', '', '2021-06-01 16:08:58');
INSERT INTO `gen_table_column` VALUES (34, '4', ' inventory', '库存', 'varchar(0)', 'String', ' inventory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-06-01 16:07:46', '', '2021-06-01 16:08:58');
INSERT INTO `gen_table_column` VALUES (35, '4', 'price', '价格', 'decimal(10,2)', 'BigDecimal', 'price', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-06-01 16:07:46', '', '2021-06-01 16:08:58');
INSERT INTO `gen_table_column` VALUES (36, '4', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2021-06-01 16:07:46', '', '2021-06-01 16:08:58');
INSERT INTO `gen_table_column` VALUES (37, '4', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2021-06-01 16:07:46', '', '2021-06-01 16:08:58');
INSERT INTO `gen_table_column` VALUES (38, '4', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-06-01 16:07:46', '', '2021-06-01 16:08:58');
INSERT INTO `gen_table_column` VALUES (39, '4', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-06-01 16:07:46', '', '2021-06-01 16:08:58');
INSERT INTO `gen_table_column` VALUES (40, '4', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 10, 'admin', '2021-06-01 16:07:46', '', '2021-06-01 16:08:58');
INSERT INTO `gen_table_column` VALUES (41, '5', 'id', '订单id', 'varchar(50)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-06-01 16:25:45', '', '2021-06-01 16:26:03');
INSERT INTO `gen_table_column` VALUES (42, '5', 'client_id', '客户id', 'varchar(50)', 'String', 'clientId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-06-01 16:25:45', '', '2021-06-01 16:26:03');
INSERT INTO `gen_table_column` VALUES (43, '5', 'source_id', '来源id（可以是猫咪或者用品）', 'varchar(50)', 'String', 'sourceId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-06-01 16:25:45', '', '2021-06-01 16:26:03');
INSERT INTO `gen_table_column` VALUES (44, '5', 'type', '订单类型（1：猫咪2：用品 3：药品）', 'char(1)', 'String', 'type', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2021-06-01 16:25:45', '', '2021-06-01 16:26:03');
INSERT INTO `gen_table_column` VALUES (45, '5', 'selling_price', '售价', 'decimal(10,2)', 'BigDecimal', 'sellingPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-06-01 16:25:45', '', '2021-06-01 16:26:03');
INSERT INTO `gen_table_column` VALUES (46, '5', 'quantity', '数量', 'int', 'Long', 'quantity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-06-01 16:25:45', '', '2021-06-01 16:26:03');
INSERT INTO `gen_table_column` VALUES (47, '5', 'price', '价格', 'decimal(10,2)', 'BigDecimal', 'price', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-06-01 16:25:45', '', '2021-06-01 16:26:03');
INSERT INTO `gen_table_column` VALUES (48, '5', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2021-06-01 16:25:45', '', '2021-06-01 16:26:03');
INSERT INTO `gen_table_column` VALUES (49, '5', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2021-06-01 16:25:45', '', '2021-06-01 16:26:03');
INSERT INTO `gen_table_column` VALUES (50, '5', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2021-06-01 16:25:45', '', '2021-06-01 16:26:03');
INSERT INTO `gen_table_column` VALUES (51, '5', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2021-06-01 16:25:45', '', '2021-06-01 16:26:03');
INSERT INTO `gen_table_column` VALUES (52, '5', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 12, 'admin', '2021-06-01 16:25:46', '', '2021-06-01 16:26:03');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME100', 'DEFAULT', '0/2 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(0) NOT NULL,
  `sched_time` bigint(0) NOT NULL,
  `priority` int(0) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000179A10FCD7078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME100', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000179A15E668878707400007070707400013174000D302F32202A202A202A202A203F74000F64656D6F5461736B2E64656D6F282974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000064740009E6B58BE8AF95E794A874000131740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000179A10FCD7078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000179A10FCD7078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(0) NOT NULL,
  `checkin_interval` bigint(0) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'DESKTOP-KCLRD791623219992849', 1623239125284, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(0) NOT NULL,
  `repeat_interval` bigint(0) NOT NULL,
  `times_triggered` bigint(0) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(0) NULL DEFAULT NULL,
  `int_prop_2` int(0) NULL DEFAULT NULL,
  `long_prop_1` bigint(0) NULL DEFAULT NULL,
  `long_prop_2` bigint(0) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(0) NULL DEFAULT NULL,
  `prev_fire_time` bigint(0) NULL DEFAULT NULL,
  `priority` int(0) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(0) NOT NULL,
  `end_time` bigint(0) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(0) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1623220000000, -1, 5, 'PAUSED', 'CRON', 1623219993000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME100', 'DEFAULT', 'TASK_CLASS_NAME100', 'DEFAULT', NULL, 1623219994000, -1, 5, 'PAUSED', 'CRON', 1623219994000, 0, NULL, -1, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1623220005000, -1, 5, 'PAUSED', 'CRON', 1623219993000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1623220000000, -1, 5, 'PAUSED', 'CRON', 1623219993000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-red', 'Y', 'admin', '2021-05-25 09:07:17', 'admin', '2021-05-31 10:11:52', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-05-25 09:07:17', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2021-05-25 09:07:17', 'admin', '2021-05-31 10:15:17', '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '飞鹰宠物', 0, '叶鸿鹰', '15255595320', 'ry@qq.com', '0', '0', 'admin', '2021-05-25 09:07:11', 'admin', '2021-05-27 08:51:55');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '合肥总公司', 1, '叶鸿鹰', '15255595320', '', '0', '0', 'admin', '2021-05-25 09:07:11', 'admin', '2021-05-27 08:51:55');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-05-25 09:07:11', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '市场销售部', 1, '叶鸿鹰', '15255595320', 'ry@qq.com', '0', '0', 'admin', '2021-05-25 09:07:11', 'admin', '2021-05-27 08:51:55');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-05-25 09:07:11', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-05-25 09:07:11', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-05-25 09:07:11', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-05-25 09:07:11', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-05-25 09:07:11', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-05-25 09:07:11', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(0) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '英短', '1', 'fy_pet_category', NULL, NULL, 'N', '0', 'admin', '2021-05-31 10:30:56', 'admin', '2021-05-31 17:04:47', NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '美短', '2', 'fy_pet_category', NULL, NULL, 'N', '0', 'admin', '2021-05-31 10:31:22', 'admin', '2021-05-31 17:04:56', NULL);
INSERT INTO `sys_dict_data` VALUES (102, 0, '在售', '0', 'cat_state', NULL, NULL, 'N', '0', 'admin', '2021-06-02 14:37:35', 'admin', '2021-06-02 14:37:46', '猫咪在售');
INSERT INTO `sys_dict_data` VALUES (103, 1, '已售', '1', 'cat_state', NULL, NULL, 'N', '0', 'admin', '2021-06-02 14:38:04', '', NULL, '猫咪已售');
INSERT INTO `sys_dict_data` VALUES (104, 2, '死亡', '2', 'cat_state', NULL, NULL, 'N', '0', 'admin', '2021-06-02 14:38:30', '', NULL, '猫咪死亡');
INSERT INTO `sys_dict_data` VALUES (105, 0, '药品', '1', 'fy_goods_type', NULL, NULL, 'N', '0', 'admin', '2021-06-02 23:17:11', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (106, 1, '猫用品', '2', 'fy_goods_type', NULL, NULL, 'N', '0', 'admin', '2021-06-02 23:17:30', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 0, '猫咪', '1', 'fy_orders_type', NULL, NULL, 'N', '0', 'admin', '2021-06-03 09:56:35', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 1, '用品', '2', 'fy_orders_type', NULL, NULL, 'N', '0', 'admin', '2021-06-03 09:56:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 2, '药品', '3', 'fy_orders_type', NULL, NULL, 'N', '0', 'admin', '2021-06-03 09:57:11', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 0, '已成交', '0', 'fy_user_status', NULL, NULL, 'N', '0', 'admin', '2021-06-03 16:39:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 1, '待跟进', '1', 'fy_user_status', NULL, NULL, 'N', '0', 'admin', '2021-06-03 16:39:51', 'admin', '2021-06-03 16:40:35', NULL);
INSERT INTO `sys_dict_data` VALUES (112, 2, '已失效', '2', 'fy_user_status', NULL, NULL, 'N', '0', 'admin', '2021-06-03 16:40:51', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-05-25 09:07:17', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '宠物猫种类', 'fy_pet_category', '0', 'admin', '2021-05-31 09:56:12', 'admin', '2021-05-31 17:04:28', '宠物种类分组列表');
INSERT INTO `sys_dict_type` VALUES (101, '猫咪状态', 'cat_state', '0', 'admin', '2021-06-02 14:36:01', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '物品类别', 'fy_goods_type', '0', 'admin', '2021-06-02 22:51:08', 'admin', '2021-06-02 22:52:00', '物品的类别比如药品或者日用品');
INSERT INTO `sys_dict_type` VALUES (103, '订单类型', 'fy_orders_type', '0', 'admin', '2021-06-03 09:56:02', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (104, '用户状态', 'fy_user_status', '0', 'admin', '2021-06-03 16:10:21', 'admin', '2021-06-03 16:10:36', '客户是否成交');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-05-25 09:07:18', 'admin', '2021-05-25 11:13:13', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-05-25 09:07:18', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-05-25 09:07:18', '', NULL, '');
INSERT INTO `sys_job` VALUES (100, '测试用', 'DEFAULT', 'demoTask.demo()', '0/2 * * * * ?', '1', '1', '1', 'admin', '2021-05-25 10:33:09', 'admin', '2021-05-25 14:47:30', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：1毫秒', '0', '', '2021-05-25 10:27:12');
INSERT INTO `sys_job_log` VALUES (2, '测试用', 'DEFAULT', 'demo.DemoTask', '测试用 总共耗时：9毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'demo\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:816)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1288)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:298)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n	at com.ruoyi.common.utils.spring.SpringUtils.getBean(SpringUtils.java:49)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:32)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 10:35:12');
INSERT INTO `sys_job_log` VALUES (3, '测试用', 'DEFAULT', 'demo.DemoTask', '测试用 总共耗时：2毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'demo\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:816)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1288)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:298)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n	at com.ruoyi.common.utils.spring.SpringUtils.getBean(SpringUtils.java:49)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:32)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 10:35:13');
INSERT INTO `sys_job_log` VALUES (4, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-05-25 10:36:24');
INSERT INTO `sys_job_log` VALUES (5, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-05-25 10:36:24');
INSERT INTO `sys_job_log` VALUES (6, '测试用', 'DEFAULT', 'demo.demo', '测试用 总共耗时：0毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'demo\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:816)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1288)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:298)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n	at com.ruoyi.common.utils.spring.SpringUtils.getBean(SpringUtils.java:49)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:32)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 10:37:48');
INSERT INTO `sys_job_log` VALUES (7, '测试用', 'DEFAULT', 'demoTask.demo', '测试用 总共耗时：8毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'demoTask\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:816)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1288)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:298)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n	at com.ruoyi.common.utils.spring.SpringUtils.getBean(SpringUtils.java:49)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:32)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 10:40:20');
INSERT INTO `sys_job_log` VALUES (8, '测试用', 'DEFAULT', 'ryTask.demo', '测试用 总共耗时：3毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.demo()\r\n	at java.lang.Class.getDeclaredMethod(Class.java:2130)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 10:53:05');
INSERT INTO `sys_job_log` VALUES (9, '测试用', 'DEFAULT', 'demo.demo', '测试用 总共耗时：8毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'demo\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:816)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1288)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:298)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n	at com.ruoyi.common.utils.spring.SpringUtils.getBean(SpringUtils.java:49)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:32)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 11:02:25');
INSERT INTO `sys_job_log` VALUES (10, '测试用', 'DEFAULT', 'ryTask.demo', '测试用 总共耗时：3毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.demo()\r\n	at java.lang.Class.getDeclaredMethod(Class.java:2130)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 11:10:26');
INSERT INTO `sys_job_log` VALUES (11, '系统默认（无参）', 'DEFAULT', 'ryTask.NoParams', '系统默认（无参） 总共耗时：8毫秒', '1', 'java.lang.NoSuchMethodException: com.ruoyi.quartz.task.RyTask.NoParams()\r\n	at java.lang.Class.getDeclaredMethod(Class.java:2130)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:60)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:33)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 11:12:44');
INSERT INTO `sys_job_log` VALUES (12, '测试用', 'DEFAULT', 'demo', '测试用 总共耗时：6毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'demo\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:816)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1288)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:298)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n	at com.ruoyi.common.utils.spring.SpringUtils.getBean(SpringUtils.java:49)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:32)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 11:31:10');
INSERT INTO `sys_job_log` VALUES (13, '测试用', 'DEFAULT', 'demo.demo()', '测试用 总共耗时：2毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'demo\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:816)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1288)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:298)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n	at com.ruoyi.common.utils.spring.SpringUtils.getBean(SpringUtils.java:49)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:32)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 11:34:34');
INSERT INTO `sys_job_log` VALUES (14, '测试用', 'DEFAULT', 'demo.demo()', '测试用 总共耗时：1毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'demo\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:816)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1288)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:298)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n	at com.ruoyi.common.utils.spring.SpringUtils.getBean(SpringUtils.java:49)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:32)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 11:35:10');
INSERT INTO `sys_job_log` VALUES (15, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：5毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'demoTask\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:816)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1288)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:298)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n	at com.ruoyi.common.utils.spring.SpringUtils.getBean(SpringUtils.java:49)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:32)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 11:40:13');
INSERT INTO `sys_job_log` VALUES (16, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：4毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'demoTask\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:816)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1288)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:298)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n	at com.ruoyi.common.utils.spring.SpringUtils.getBean(SpringUtils.java:49)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:32)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 11:55:22');
INSERT INTO `sys_job_log` VALUES (17, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：5毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'demoTask\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:816)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1288)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:298)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n	at com.ruoyi.common.utils.spring.SpringUtils.getBean(SpringUtils.java:49)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:32)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 12:02:32');
INSERT INTO `sys_job_log` VALUES (18, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2021-05-25 14:16:08');
INSERT INTO `sys_job_log` VALUES (19, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:36:37');
INSERT INTO `sys_job_log` VALUES (20, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:41:13');
INSERT INTO `sys_job_log` VALUES (21, '测试用', 'DEFAULT', 'demo()', '测试用 总共耗时：4毫秒', '1', 'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'demo\' available\r\n	at org.springframework.beans.factory.support.DefaultListableBeanFactory.getBeanDefinition(DefaultListableBeanFactory.java:816)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getMergedLocalBeanDefinition(AbstractBeanFactory.java:1288)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.doGetBean(AbstractBeanFactory.java:298)\r\n	at org.springframework.beans.factory.support.AbstractBeanFactory.getBean(AbstractBeanFactory.java:202)\r\n	at com.ruoyi.common.utils.spring.SpringUtils.getBean(SpringUtils.java:49)\r\n	at com.ruoyi.quartz.util.JobInvokeUtil.invokeMethod(JobInvokeUtil.java:32)\r\n	at com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution.doExecute(QuartzDisallowConcurrentExecution.java:19)\r\n	at com.ruoyi.quartz.util.AbstractQuartzJob.execute(AbstractQuartzJob.java:43)\r\n	at org.quartz.core.JobRunShell.run(JobRunShell.java:202)\r\n	at org.quartz.simpl.SimpleThreadPool$WorkerThread.run(SimpleThreadPool.java:573)\r\n', '2021-05-25 14:42:37');
INSERT INTO `sys_job_log` VALUES (22, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:13');
INSERT INTO `sys_job_log` VALUES (23, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:54');
INSERT INTO `sys_job_log` VALUES (24, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:54');
INSERT INTO `sys_job_log` VALUES (25, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:54');
INSERT INTO `sys_job_log` VALUES (26, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:55');
INSERT INTO `sys_job_log` VALUES (27, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:55');
INSERT INTO `sys_job_log` VALUES (28, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:44:56');
INSERT INTO `sys_job_log` VALUES (29, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:44:56');
INSERT INTO `sys_job_log` VALUES (30, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:56');
INSERT INTO `sys_job_log` VALUES (31, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:44:56');
INSERT INTO `sys_job_log` VALUES (32, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:57');
INSERT INTO `sys_job_log` VALUES (33, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:57');
INSERT INTO `sys_job_log` VALUES (34, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:44:57');
INSERT INTO `sys_job_log` VALUES (35, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:44:58');
INSERT INTO `sys_job_log` VALUES (36, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:58');
INSERT INTO `sys_job_log` VALUES (37, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:58');
INSERT INTO `sys_job_log` VALUES (38, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:44:58');
INSERT INTO `sys_job_log` VALUES (39, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:59');
INSERT INTO `sys_job_log` VALUES (40, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:59');
INSERT INTO `sys_job_log` VALUES (41, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:59');
INSERT INTO `sys_job_log` VALUES (42, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:44:59');
INSERT INTO `sys_job_log` VALUES (43, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:00');
INSERT INTO `sys_job_log` VALUES (44, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:00');
INSERT INTO `sys_job_log` VALUES (45, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:45:00');
INSERT INTO `sys_job_log` VALUES (46, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:00');
INSERT INTO `sys_job_log` VALUES (47, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:45:01');
INSERT INTO `sys_job_log` VALUES (48, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:01');
INSERT INTO `sys_job_log` VALUES (49, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:01');
INSERT INTO `sys_job_log` VALUES (50, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:02');
INSERT INTO `sys_job_log` VALUES (51, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:03');
INSERT INTO `sys_job_log` VALUES (52, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:04');
INSERT INTO `sys_job_log` VALUES (53, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:04');
INSERT INTO `sys_job_log` VALUES (54, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:04');
INSERT INTO `sys_job_log` VALUES (55, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:04');
INSERT INTO `sys_job_log` VALUES (56, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:04');
INSERT INTO `sys_job_log` VALUES (57, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:05');
INSERT INTO `sys_job_log` VALUES (58, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:05');
INSERT INTO `sys_job_log` VALUES (59, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:45:05');
INSERT INTO `sys_job_log` VALUES (60, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:05');
INSERT INTO `sys_job_log` VALUES (61, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:06');
INSERT INTO `sys_job_log` VALUES (62, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:45:06');
INSERT INTO `sys_job_log` VALUES (63, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:45:06');
INSERT INTO `sys_job_log` VALUES (64, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:06');
INSERT INTO `sys_job_log` VALUES (65, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:07');
INSERT INTO `sys_job_log` VALUES (66, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:45:07');
INSERT INTO `sys_job_log` VALUES (67, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:07');
INSERT INTO `sys_job_log` VALUES (68, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:07');
INSERT INTO `sys_job_log` VALUES (69, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:08');
INSERT INTO `sys_job_log` VALUES (70, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:10');
INSERT INTO `sys_job_log` VALUES (71, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:12');
INSERT INTO `sys_job_log` VALUES (72, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:14');
INSERT INTO `sys_job_log` VALUES (73, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:45:16');
INSERT INTO `sys_job_log` VALUES (74, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:18');
INSERT INTO `sys_job_log` VALUES (75, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:45:20');
INSERT INTO `sys_job_log` VALUES (76, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:45:22');
INSERT INTO `sys_job_log` VALUES (77, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:24');
INSERT INTO `sys_job_log` VALUES (78, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:45:26');
INSERT INTO `sys_job_log` VALUES (79, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：2毫秒', '0', '', '2021-05-25 14:45:49');
INSERT INTO `sys_job_log` VALUES (80, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:49');
INSERT INTO `sys_job_log` VALUES (81, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:50');
INSERT INTO `sys_job_log` VALUES (82, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:52');
INSERT INTO `sys_job_log` VALUES (83, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:54');
INSERT INTO `sys_job_log` VALUES (84, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:56');
INSERT INTO `sys_job_log` VALUES (85, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:45:58');
INSERT INTO `sys_job_log` VALUES (86, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:00');
INSERT INTO `sys_job_log` VALUES (87, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:46:02');
INSERT INTO `sys_job_log` VALUES (88, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:04');
INSERT INTO `sys_job_log` VALUES (89, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:46:06');
INSERT INTO `sys_job_log` VALUES (90, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:08');
INSERT INTO `sys_job_log` VALUES (91, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:10');
INSERT INTO `sys_job_log` VALUES (92, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:12');
INSERT INTO `sys_job_log` VALUES (93, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:14');
INSERT INTO `sys_job_log` VALUES (94, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:16');
INSERT INTO `sys_job_log` VALUES (95, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:46:18');
INSERT INTO `sys_job_log` VALUES (96, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:46:20');
INSERT INTO `sys_job_log` VALUES (97, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:46:22');
INSERT INTO `sys_job_log` VALUES (98, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:24');
INSERT INTO `sys_job_log` VALUES (99, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:26');
INSERT INTO `sys_job_log` VALUES (100, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:28');
INSERT INTO `sys_job_log` VALUES (101, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：2毫秒', '0', '', '2021-05-25 14:46:53');
INSERT INTO `sys_job_log` VALUES (102, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:53');
INSERT INTO `sys_job_log` VALUES (103, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:54');
INSERT INTO `sys_job_log` VALUES (104, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:56');
INSERT INTO `sys_job_log` VALUES (105, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:46:58');
INSERT INTO `sys_job_log` VALUES (106, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:47:00');
INSERT INTO `sys_job_log` VALUES (107, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:47:02');
INSERT INTO `sys_job_log` VALUES (108, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:47:04');
INSERT INTO `sys_job_log` VALUES (109, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:47:06');
INSERT INTO `sys_job_log` VALUES (110, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:47:08');
INSERT INTO `sys_job_log` VALUES (111, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:47:10');
INSERT INTO `sys_job_log` VALUES (112, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:47:12');
INSERT INTO `sys_job_log` VALUES (113, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:47:14');
INSERT INTO `sys_job_log` VALUES (114, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:47:16');
INSERT INTO `sys_job_log` VALUES (115, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:47:18');
INSERT INTO `sys_job_log` VALUES (116, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:47:20');
INSERT INTO `sys_job_log` VALUES (117, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:47:22');
INSERT INTO `sys_job_log` VALUES (118, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:47:24');
INSERT INTO `sys_job_log` VALUES (119, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:47:26');
INSERT INTO `sys_job_log` VALUES (120, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：0毫秒', '0', '', '2021-05-25 14:47:28');
INSERT INTO `sys_job_log` VALUES (121, '测试用', 'DEFAULT', 'demoTask.demo()', '测试用 总共耗时：1毫秒', '0', '', '2021-05-25 14:47:30');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 205 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-25 09:24:17');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-25 10:26:23');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-25 13:39:17');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-25 14:13:25');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '10.1.74.14', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-26 10:12:07');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-26 10:12:38');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-26 11:00:55');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-26 16:29:53');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-26 16:31:42');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-26 16:42:36');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 08:38:01');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-27 08:49:04');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 08:49:14');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-27 08:55:05');
INSERT INTO `sys_logininfor` VALUES (114, '小飞鹰', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2021-05-27 08:55:15');
INSERT INTO `sys_logininfor` VALUES (115, '叶鸿鹰', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 08:55:29');
INSERT INTO `sys_logininfor` VALUES (116, '叶鸿鹰', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-27 08:59:44');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 08:59:50');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-27 09:00:47');
INSERT INTO `sys_logininfor` VALUES (119, '叶鸿鹰', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 09:00:57');
INSERT INTO `sys_logininfor` VALUES (120, '叶鸿鹰', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-27 09:13:28');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-05-27 09:48:26');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 09:48:32');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 11:53:18');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 16:13:59');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-27 16:18:15');
INSERT INTO `sys_logininfor` VALUES (126, '叶鸿鹰', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 16:18:28');
INSERT INTO `sys_logininfor` VALUES (127, '叶鸿鹰', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-27 16:18:53');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 16:18:58');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-27 16:55:02');
INSERT INTO `sys_logininfor` VALUES (130, '叶鸿鹰', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 16:55:13');
INSERT INTO `sys_logininfor` VALUES (131, '叶鸿鹰', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-27 16:55:27');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 16:55:31');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-27 17:31:26');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-28 10:01:09');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-28 10:30:36');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-28 10:30:44');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-28 10:31:26');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-28 10:31:38');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-28 10:34:38');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-05-28 10:34:49');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2021-05-28 10:37:43');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-28 10:37:45');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-28 10:37:53');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-28 10:37:58');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-28 10:39:06');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-28 10:40:45');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-28 10:41:05');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-28 10:41:09');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2021-05-28 10:44:24');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2021-05-28 10:44:27');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2021-05-28 10:44:29');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2021-05-28 10:44:30');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2021-05-28 10:44:30');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2021-05-28 10:44:31');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2021-05-28 10:44:33');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2021-05-28 10:44:40');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-28 10:44:44');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-28 10:44:47');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2021-05-28 10:44:56');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2021-05-28 10:45:38');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2021-05-28 10:45:40');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '1', '验证码已失效', '2021-05-28 10:46:26');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2021-05-28 10:47:29');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2021-05-28 10:48:34');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2021-05-28 10:50:10');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2021-05-28 10:50:49');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2021-05-28 11:00:30');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2021-05-28 11:04:27');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2021-05-28 13:29:48');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2021-05-28 15:17:42');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2021-05-28 16:51:02');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-28 16:55:06');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-28 17:45:49');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-28 17:45:55');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2021-05-28 17:46:25');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-31 08:48:23');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-31 13:43:57');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-31 16:20:16');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-05-31 16:20:32');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-05-31 16:20:34');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-01 09:28:19');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-01 11:04:26');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-01 14:27:44');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-01 16:06:49');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-06-01 16:37:31');
INSERT INTO `sys_logininfor` VALUES (186, '叶鸿鹰', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-01 16:37:42');
INSERT INTO `sys_logininfor` VALUES (187, '叶鸿鹰', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-06-01 16:39:47');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-01 16:39:50');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Unknown', 'Unknown', '0', '登录成功', '2021-06-01 17:23:03');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-02 09:40:27');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-02 13:51:53');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-02 20:06:05');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-02 22:27:12');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-03 08:58:22');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-03 09:52:44');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-03 15:50:27');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-03 16:38:37');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-03 17:35:26');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-03 20:15:30');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-03 20:41:49');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-04 16:21:28');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-05 16:07:06');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-05 20:07:40');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-07 08:42:10');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-08 09:19:22');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-09 11:48:23');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-06-09 14:18:40');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(0) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(0) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(0) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2008 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 3, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-05-25 09:07:13', 'admin', '2021-05-31 09:39:53', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 3, 'monitor', NULL, 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2021-05-25 09:07:13', 'admin', '2021-05-31 09:39:41', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2021-05-25 09:07:13', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, 0, 0, 'M', '1', '0', '', 'guide', 'admin', '2021-05-25 09:07:13', 'admin', '2021-05-31 15:18:05', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-05-25 09:07:13', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-05-25 09:07:13', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-05-25 09:07:13', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-05-25 09:07:13', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2021-05-25 09:07:13', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2021-05-25 09:07:13', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2021-05-25 09:07:13', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2021-05-25 09:07:13', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2021-05-25 09:07:13', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-05-25 09:07:13', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2021-05-25 09:07:13', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2021-05-25 09:07:13', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-05-25 09:07:13', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2021-05-25 09:07:13', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-05-25 09:07:13', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-05-25 09:07:13', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-05-25 09:07:13', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-05-25 09:07:13', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-05-25 09:07:13', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-05-25 09:07:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '客户中心', 0, 0, 'client', NULL, 1, 0, 'M', '0', '0', '', 'peoples', 'admin', '2021-05-26 16:47:36', 'admin', '2021-05-26 16:51:20', '');
INSERT INTO `sys_menu` VALUES (2001, '客户信息', 2000, 1, 'user', 'client/user/index', 1, 0, 'C', '0', '0', '', 'user', 'admin', '2021-05-28 17:01:37', 'admin', '2021-05-28 17:36:18', '');
INSERT INTO `sys_menu` VALUES (2002, '宠物管理', 0, 1, 'pet', NULL, 1, 0, 'M', '0', '0', '', 'github', 'admin', '2021-05-31 09:32:12', 'admin', '2021-05-31 09:33:45', '');
INSERT INTO `sys_menu` VALUES (2003, '用品管理', 0, 2, 'articles', NULL, 1, 0, 'M', '0', '0', NULL, 'shopping', 'admin', '2021-05-31 09:39:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '猫咪品种管理', 2002, 1, 'pet', 'pet/breed/index', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2021-05-31 14:15:48', 'admin', '2021-05-31 16:36:05', '');
INSERT INTO `sys_menu` VALUES (2005, '订单管理', 0, 2, 'aaa', NULL, 1, 0, 'M', '0', '0', NULL, 'log', 'admin', '2021-05-31 14:34:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '猫咪管理', 2002, 0, 'cat', 'pet/cat/index', 1, 0, 'C', '0', '0', '', 'github', 'admin', '2021-05-31 14:57:40', 'admin', '2021-06-01 14:52:27', '');
INSERT INTO `sys_menu` VALUES (2007, '物品管理', 2003, 0, 'goods', 'articles/goods/index', 1, 0, 'C', '0', '0', '', 'log', 'admin', '2021-05-31 15:26:11', 'admin', '2021-06-01 16:17:47', '');
INSERT INTO `sys_menu` VALUES (2008, '订单信息', 2005, 0, 'orders', 'orders/orders/index', 1, 0, 'C', '0', '0', NULL, 'log', 'admin', '2021-06-01 15:33:04', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-05-25 09:07:19', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2021-05-25 09:07:19', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(0) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(0) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(0) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 322 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":3,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:26:59');
INSERT INTO `sys_oper_log` VALUES (101, '定时任务', 1, 'com.ruoyi.quartz.controller.SysJobController.add()', 'POST', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"params\":{},\"cronExpression\":\"1-2 * * * * ? \",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621910041000,\"invokeTarget\":\"sss\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:33:09');
INSERT INTO `sys_oper_log` VALUES (102, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"1-2 * * * * ? \",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621910041000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"demo\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:33:32');
INSERT INTO `sys_oper_log` VALUES (103, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"1-2 * * * * ? \",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621910041000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"demo.DemoTask\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:33:59');
INSERT INTO `sys_oper_log` VALUES (104, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:34:51');
INSERT INTO `sys_oper_log` VALUES (105, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:35:04');
INSERT INTO `sys_oper_log` VALUES (106, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":1,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:36:04');
INSERT INTO `sys_oper_log` VALUES (107, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":1,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:36:17');
INSERT INTO `sys_oper_log` VALUES (108, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/20 * * * * ?\",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621910220000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"demo.DemoTask\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:36:58');
INSERT INTO `sys_oper_log` VALUES (109, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/20 * * * * ?\",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621910260000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"demo.demo\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:37:24');
INSERT INTO `sys_oper_log` VALUES (110, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:37:31');
INSERT INTO `sys_oper_log` VALUES (111, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/20 * * * * ?\",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621910400000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"demoTask.demo\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:39:59');
INSERT INTO `sys_oper_log` VALUES (112, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:40:08');
INSERT INTO `sys_oper_log` VALUES (113, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/20 * * * * ?\",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621911100000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"ryTask.demo\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:51:32');
INSERT INTO `sys_oper_log` VALUES (114, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 10:52:48');
INSERT INTO `sys_oper_log` VALUES (115, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/20 * * * * ?\",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621911700000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"demo.demo\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:01:30');
INSERT INTO `sys_oper_log` VALUES (116, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:02:20');
INSERT INTO `sys_oper_log` VALUES (117, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/20 * * * * ?\",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621912200000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"ryTask.demo\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:09:53');
INSERT INTO `sys_oper_log` VALUES (118, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:10:02');
INSERT INTO `sys_oper_log` VALUES (119, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"系统默认（无参）\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/10 * * * * ?\",\"jobId\":1,\"createBy\":\"admin\",\"nextValidTime\":1621912330000,\"createTime\":1621904838000,\"updateBy\":\"admin\",\"invokeTarget\":\"ryTask.NoParams\",\"misfirePolicy\":\"3\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:12:03');
INSERT INTO `sys_oper_log` VALUES (120, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":1,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:12:42');
INSERT INTO `sys_oper_log` VALUES (121, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"系统默认（无参）\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/10 * * * * ?\",\"jobId\":1,\"createBy\":\"admin\",\"nextValidTime\":1621912400000,\"createTime\":1621904838000,\"updateBy\":\"admin\",\"invokeTarget\":\"ryTask.ryNoParams\",\"misfirePolicy\":\"3\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:13:13');
INSERT INTO `sys_oper_log` VALUES (122, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/20 * * * * ?\",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621912880000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"demo\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:21:18');
INSERT INTO `sys_oper_log` VALUES (123, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:30:48');
INSERT INTO `sys_oper_log` VALUES (124, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/20 * * * * ?\",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621913660000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"demo.demo()\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:34:06');
INSERT INTO `sys_oper_log` VALUES (125, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:34:20');
INSERT INTO `sys_oper_log` VALUES (126, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:34:52');
INSERT INTO `sys_oper_log` VALUES (127, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/20 * * * * ?\",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621913880000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"demoTask.demo()\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:37:46');
INSERT INTO `sys_oper_log` VALUES (128, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:39:53');
INSERT INTO `sys_oper_log` VALUES (129, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 11:55:00');
INSERT INTO `sys_oper_log` VALUES (130, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 12:02:13');
INSERT INTO `sys_oper_log` VALUES (131, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":1,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 14:15:50');
INSERT INTO `sys_oper_log` VALUES (132, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 14:36:13');
INSERT INTO `sys_oper_log` VALUES (133, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 14:40:50');
INSERT INTO `sys_oper_log` VALUES (134, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/20 * * * * ?\",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621924940000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"demo()\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 14:42:14');
INSERT INTO `sys_oper_log` VALUES (135, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 14:42:17');
INSERT INTO `sys_oper_log` VALUES (136, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/20 * * * * ?\",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621925000000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"demoTask.demo()\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 14:43:03');
INSERT INTO `sys_oper_log` VALUES (137, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 14:43:14');
INSERT INTO `sys_oper_log` VALUES (138, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.edit()', 'PUT', 1, 'admin', NULL, '/monitor/job', '127.0.0.1', '内网IP', '{\"jobName\":\"测试用\",\"concurrent\":\"1\",\"remark\":\"\",\"jobGroup\":\"DEFAULT\",\"params\":{},\"cronExpression\":\"0/2 * * * * ?\",\"jobId\":100,\"createBy\":\"admin\",\"nextValidTime\":1621925016000,\"createTime\":1621909989000,\"updateBy\":\"admin\",\"invokeTarget\":\"demoTask.demo()\",\"misfirePolicy\":\"1\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 14:43:35');
INSERT INTO `sys_oper_log` VALUES (139, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.run()', 'PUT', 1, 'admin', NULL, '/monitor/job/run', '127.0.0.1', '内网IP', '{\"jobGroup\":\"DEFAULT\",\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 14:43:56');
INSERT INTO `sys_oper_log` VALUES (140, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', NULL, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 14:44:24');
INSERT INTO `sys_oper_log` VALUES (141, '定时任务', 2, 'com.ruoyi.quartz.controller.SysJobController.changeStatus()', 'PUT', 1, 'admin', NULL, '/monitor/job/changeStatus', '127.0.0.1', '内网IP', '{\"params\":{},\"jobId\":100,\"misfirePolicy\":\"0\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-25 14:47:30');
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"1\",\"menuName\":\"客户中心\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"ssss\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-26 16:47:36');
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"1\",\"menuName\":\"客户中心\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"client\",\"children\":[],\"createTime\":1622018856000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-26 16:50:51');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"0\",\"menuName\":\"客户中心\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"client\",\"children\":[],\"createTime\":1622018856000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-26 16:51:20');
INSERT INTO `sys_oper_log` VALUES (145, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2021-05-27 08:38:28');
INSERT INTO `sys_oper_log` VALUES (146, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/104', '127.0.0.1', '内网IP', '{deptId=104}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 08:38:33');
INSERT INTO `sys_oper_log` VALUES (147, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2021-05-27 08:38:36');
INSERT INTO `sys_oper_log` VALUES (148, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/106', '127.0.0.1', '内网IP', '{deptId=106}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 08:38:40');
INSERT INTO `sys_oper_log` VALUES (149, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/107', '127.0.0.1', '内网IP', '{deptId=107}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 08:38:43');
INSERT INTO `sys_oper_log` VALUES (150, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}', 0, NULL, '2021-05-27 08:38:49');
INSERT INTO `sys_oper_log` VALUES (151, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/109', '127.0.0.1', '内网IP', '{deptId=109}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 08:38:54');
INSERT INTO `sys_oper_log` VALUES (152, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/108', '127.0.0.1', '内网IP', '{deptId=108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 08:38:56');
INSERT INTO `sys_oper_log` VALUES (153, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 08:38:58');
INSERT INTO `sys_oper_log` VALUES (154, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"remark\":\"超级管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":1621904833000,\"menuCheckStrictly\":true,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"deptIds\":[],\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员角色', '2021-05-27 08:48:55');
INSERT INTO `sys_oper_log` VALUES (155, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/103', '127.0.0.1', '内网IP', '{deptId=103}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2021-05-27 08:49:30');
INSERT INTO `sys_oper_log` VALUES (156, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2021-05-27 08:49:32');
INSERT INTO `sys_oper_log` VALUES (157, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"飞鹰宠物\",\"leader\":\"叶鸿鹰\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1621904831000,\"phone\":\"15255595320\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 08:50:27');
INSERT INTO `sys_oper_log` VALUES (158, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"合肥总公司\",\"leader\":\"叶鸿鹰\",\"deptId\":101,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1621904831000,\"phone\":\"15255595320\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 08:51:15');
INSERT INTO `sys_oper_log` VALUES (159, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"市场销售部\",\"leader\":\"叶鸿鹰\",\"deptId\":103,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1621904831000,\"phone\":\"15255595320\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"ry@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 08:51:55');
INSERT INTO `sys_oper_log` VALUES (160, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":500}', 0, NULL, '2021-05-27 08:52:20');
INSERT INTO `sys_oper_log` VALUES (161, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1622076554000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"市场销售部\",\"leader\":\"叶鸿鹰\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1621904832000,\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员用户', '2021-05-27 08:52:45');
INSERT INTO `sys_oper_log` VALUES (162, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1622076554000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"password\":\"\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@163.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"市场销售部\",\"leader\":\"叶鸿鹰\",\"deptId\":103,\"orderNum\":\"1\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"roleIds\":[1],\"createTime\":1621904832000,\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员用户', '2021-05-27 08:52:52');
INSERT INTO `sys_oper_log` VALUES (163, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1621904832000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"若依\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"若依\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1621904832000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 08:53:11');
INSERT INTO `sys_oper_log` VALUES (164, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/2', '127.0.0.1', '内网IP', '{userIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 08:53:48');
INSERT INTO `sys_oper_log` VALUES (165, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/105', '127.0.0.1', '内网IP', '{deptId=105}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 08:53:59');
INSERT INTO `sys_oper_log` VALUES (166, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$gKt1T27iU4nUUBy9SGHm/.DCsFQTDhS98A3D/Eyh4abhteVJ44m82\",\"postIds\":[1],\"nickName\":\"小飞鹰\",\"sex\":\"1\",\"deptId\":103,\"params\":{},\"userName\":\"叶鸿鹰\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 08:54:58');
INSERT INTO `sys_oper_log` VALUES (167, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createTime\":1621904833000,\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 16:18:08');
INSERT INTO `sys_oper_log` VALUES (168, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'us_client', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-27 17:33:06');
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-27 17:33:16');
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-28 10:05:44');
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1622107985000,\"tableId\":1,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"客户姓名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622107985000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"Tel\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"tel\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"电话\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622107985000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"tel\"},{\"capJavaField\":\"\\r\\nfixtureDate\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"\\r\\nfixtureDate\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"成交时间\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622107', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-28 10:07:27');
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-28 10:07:32');
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"updateTime\":1622167647000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1622107985000,\"tableId\":1,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"客户姓名\",\"isQuery\":\"1\",\"updateTime\":1622167647000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622107985000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"Tel\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"tel\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"电话\",\"isQuery\":\"1\",\"updateTime\":1622167647000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622107985000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"tel\"},{\"capJavaField\":\"\\r\\nfixtureDate\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"\\r\\nfixtureDate\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"成交时间\",\"isQuery\":\"1\",\"updateTime\":1622167647000,\"sort\":4,\"list\":true,\"params\":{},\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-28 10:12:01');
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-28 10:12:10');
INSERT INTO `sys_oper_log` VALUES (175, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"客户信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"aa\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-28 17:01:38');
INSERT INTO `sys_oper_log` VALUES (176, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"客户信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"aa\",\"component\":\"client.index\",\"children\":[],\"createTime\":1622192497000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-28 17:02:30');
INSERT INTO `sys_oper_log` VALUES (177, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"客户信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"client.index\",\"children\":[],\"createTime\":1622192497000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-28 17:05:10');
INSERT INTO `sys_oper_log` VALUES (178, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"客户信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"client.user.index\",\"children\":[],\"createTime\":1622192497000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-28 17:33:35');
INSERT INTO `sys_oper_log` VALUES (179, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"客户信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"user\",\"component\":\"client/user/index\",\"children\":[],\"createTime\":1622192497000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-28 17:36:18');
INSERT INTO `sys_oper_log` VALUES (180, '客户信息', 1, 'com.ruoyi.web.controller.fyms.UsClientController.add()', 'POST', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"createTime\":1622194655053,\"name\":\"小飞飞\",\"tel\":\"136445254588\",\"fixtureDate\":1622131200000,\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'fixture_date\' in \'field list\'\r\n### The error may exist in file [E:\\ruoyi\\RuoYi-Vue\\fyms\\target\\classes\\mapper\\system\\UsClientMapper.xml]\r\n### The error may involve com.ruoyi.mapper.UsClientMapper.insertUsClient-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into us_client          ( name,             tel,                              fixture_date,                                                    create_time )           values ( ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'fixture_date\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'fixture_date\' in \'field list\'', '2021-05-28 17:37:35');
INSERT INTO `sys_oper_log` VALUES (181, '客户信息', 1, 'com.ruoyi.web.controller.fyms.UsClientController.add()', 'POST', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"createTime\":1622194661549,\"name\":\"小飞飞\",\"tel\":\"136445254588\",\"fixtureDate\":1622131200000,\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'fixture_date\' in \'field list\'\r\n### The error may exist in file [E:\\ruoyi\\RuoYi-Vue\\fyms\\target\\classes\\mapper\\system\\UsClientMapper.xml]\r\n### The error may involve com.ruoyi.mapper.UsClientMapper.insertUsClient-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into us_client          ( name,             tel,                              fixture_date,                                                    create_time )           values ( ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'fixture_date\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'fixture_date\' in \'field list\'', '2021-05-28 17:37:41');
INSERT INTO `sys_oper_log` VALUES (182, '客户信息', 1, 'com.ruoyi.web.controller.fyms.UsClientController.add()', 'POST', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"createTime\":1622196301137,\"name\":\"司利强\",\"tel\":\"110\",\"fixtureDate\":1622044800000,\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\ruoyi\\RuoYi-Vue\\fyms\\target\\classes\\mapper\\system\\UsClientMapper.xml]\r\n### The error may involve com.ruoyi.mapper.UsClientMapper.insertUsClient-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into us_client          ( name,             tel,                              fixture_date,                                                    create_time )           values ( ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-05-28 18:05:01');
INSERT INTO `sys_oper_log` VALUES (183, '客户信息', 2, 'com.ruoyi.web.controller.fyms.UsClientController.edit()', 'PUT', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"createBy\":\"\",\"createTime\":1622195950000,\"updateBy\":\"\",\"name\":\"小飞\",\"tel\":\"1367525445\",\"updateTime\":1622422129275,\"fixtureDate\":1622131200000,\"id\":\"sdfs\",\"delFlag\":\"0\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 08:48:49');
INSERT INTO `sys_oper_log` VALUES (184, '客户信息', 1, 'com.ruoyi.web.controller.fyms.UsClientController.add()', 'POST', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"createTime\":1622422802157,\"name\":\"啊啊\",\"tel\":\"123456\",\"fixtureDate\":1622390400000,\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\ruoyi\\RuoYi-Vue\\fyms\\target\\classes\\mapper\\system\\UsClientMapper.xml]\r\n### The error may involve com.ruoyi.mapper.UsClientMapper.insertUsClient-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into us_client          ( name,             tel,                              fixture_date,                                                    create_time )           values ( ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-05-31 09:00:02');
INSERT INTO `sys_oper_log` VALUES (185, '客户信息', 1, 'com.ruoyi.web.controller.fyms.UsClientController.add()', 'POST', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"createTime\":1622423072849,\"name\":\"啊啊\",\"tel\":\"1232\",\"fixtureDate\":1622390400000,\"id\":\"5ad0b923-9fee-4fde-835d-42606346dc9c\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'id\' at row 1\r\n### The error may exist in file [E:\\ruoyi\\RuoYi-Vue\\fyms\\target\\classes\\mapper\\system\\UsClientMapper.xml]\r\n### The error may involve com.ruoyi.mapper.UsClientMapper.insertUsClient-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into us_client          ( id,             name,             tel,                              fixture_date,                                                    create_time )           values ( ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'id\' at row 1\n; Data truncation: Data too long for column \'id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'id\' at row 1', '2021-05-31 09:04:32');
INSERT INTO `sys_oper_log` VALUES (186, '客户信息', 1, 'com.ruoyi.web.controller.fyms.UsClientController.add()', 'POST', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"createTime\":1622423173709,\"name\":\"啊啊\",\"tel\":\"12312\",\"fixtureDate\":1622390400000,\"id\":\"3d366556-d492-4891-9986-201b363b2f60\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 09:06:13');
INSERT INTO `sys_oper_log` VALUES (187, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"github\",\"orderNum\":\"1\",\"menuName\":\"宠物中心\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"ss\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 09:32:12');
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"github\",\"orderNum\":\"1\",\"menuName\":\"宠物中心\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"pet\",\"children\":[],\"createTime\":1622424732000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 09:32:35');
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"system\",\"orderNum\":\"2\",\"menuName\":\"系统管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system\",\"children\":[],\"createTime\":1621904833000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 09:33:09');
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"github\",\"orderNum\":\"1\",\"menuName\":\"宠物管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"pet\",\"children\":[],\"createTime\":1622424732000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 09:33:45');
INSERT INTO `sys_oper_log` VALUES (191, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"shopping\",\"orderNum\":\"2\",\"menuName\":\"用品管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"articles\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 09:39:25');
INSERT INTO `sys_oper_log` VALUES (192, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"monitor\",\"orderNum\":\"3\",\"menuName\":\"系统监控\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"monitor\",\"children\":[],\"createTime\":1621904833000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 09:39:42');
INSERT INTO `sys_oper_log` VALUES (193, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"system\",\"orderNum\":\"3\",\"menuName\":\"系统管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system\",\"children\":[],\"createTime\":1621904833000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 09:39:53');
INSERT INTO `sys_oper_log` VALUES (194, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"宠物猫种类\",\"params\":{},\"dictType\":\"fy_pet_breed\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 09:56:12');
INSERT INTO `sys_oper_log` VALUES (195, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"主框架页-默认皮肤样式名称\",\"configKey\":\"sys.index.skinName\",\"createBy\":\"admin\",\"createTime\":1621904837000,\"updateBy\":\"admin\",\"configId\":1,\"remark\":\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\",\"configType\":\"Y\",\"configValue\":\"skin-purpl\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 10:10:01');
INSERT INTO `sys_oper_log` VALUES (196, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"主框架页-默认皮肤样式名称\",\"configKey\":\"sys.index.skinName\",\"createBy\":\"admin\",\"createTime\":1621904837000,\"updateBy\":\"admin\",\"configId\":1,\"remark\":\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\",\"updateTime\":1622427001000,\"configType\":\"Y\",\"configValue\":\"skin-red\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 10:11:52');
INSERT INTO `sys_oper_log` VALUES (197, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"主框架页-侧边栏主题\",\"configKey\":\"sys.index.sideTheme\",\"createBy\":\"admin\",\"createTime\":1621904837000,\"updateBy\":\"admin\",\"configId\":3,\"remark\":\"深色主题theme-dark，浅色主题theme-light\",\"configType\":\"Y\",\"configValue\":\"theme-dark\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 10:15:00');
INSERT INTO `sys_oper_log` VALUES (198, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"主框架页-侧边栏主题\",\"configKey\":\"sys.index.sideTheme\",\"createBy\":\"admin\",\"createTime\":1621904837000,\"updateBy\":\"admin\",\"configId\":3,\"remark\":\"深色主题theme-dark，浅色主题theme-light\",\"updateTime\":1622427300000,\"configType\":\"Y\",\"configValue\":\"theme-light\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 10:15:17');
INSERT INTO `sys_oper_log` VALUES (199, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"params\":{},\"dictType\":\"fy_pet_breed\",\"dictLabel\":\"银渐层\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 10:30:56');
INSERT INTO `sys_oper_log` VALUES (200, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":2,\"params\":{},\"dictType\":\"fy_pet_breed\",\"dictLabel\":\"银点\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 10:31:22');
INSERT INTO `sys_oper_log` VALUES (201, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"猫咪品种管理\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"pet/breed\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 14:15:48');
INSERT INTO `sys_oper_log` VALUES (202, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"猫咪品种管理\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"aa\",\"component\":\"pet/breed\",\"children\":[],\"createTime\":1622441748000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 14:16:30');
INSERT INTO `sys_oper_log` VALUES (203, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"猫咪品种管理\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"pet\",\"component\":\"pet/breed\",\"children\":[],\"createTime\":1622441748000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 14:16:53');
INSERT INTO `sys_oper_log` VALUES (204, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"猫咪品种管理\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"pet\",\"component\":\"pet/pet/breed\",\"children\":[],\"createTime\":1622441748000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 14:18:15');
INSERT INTO `sys_oper_log` VALUES (205, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"猫咪品种管理\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"pet\",\"component\":\"pet/breed/breed\",\"children\":[],\"createTime\":1622441748000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 14:21:33');
INSERT INTO `sys_oper_log` VALUES (206, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"log\",\"orderNum\":\"2\",\"menuName\":\"订单管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"aaa\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 14:34:13');
INSERT INTO `sys_oper_log` VALUES (207, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"0\",\"menuName\":\"猫咪管理\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"pet\",\"component\":\"pet/pet/cat\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 14:57:40');
INSERT INTO `sys_oper_log` VALUES (208, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"github\",\"orderNum\":\"0\",\"menuName\":\"猫咪管理\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"pet\",\"component\":\"pet/pet/cat\",\"children\":[],\"createTime\":1622444260000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 14:58:42');
INSERT INTO `sys_oper_log` VALUES (209, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"github\",\"orderNum\":\"0\",\"menuName\":\"猫咪管理\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"pet\",\"component\":\"pet/cat/cat\",\"children\":[],\"createTime\":1622444260000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 14:59:45');
INSERT INTO `sys_oper_log` VALUES (210, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"github\",\"orderNum\":\"0\",\"menuName\":\"猫咪管理\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"cat\",\"component\":\"pet/cat/cat\",\"children\":[],\"createTime\":1622444260000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 15:00:10');
INSERT INTO `sys_oper_log` VALUES (211, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"github\",\"orderNum\":\"0\",\"menuName\":\"猫咪管理\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"pet\",\"component\":\"pet/cat/cat\",\"children\":[],\"createTime\":1622444260000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 15:00:40');
INSERT INTO `sys_oper_log` VALUES (212, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"github\",\"orderNum\":\"0\",\"menuName\":\"猫咪管理\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"cat\",\"component\":\"pet/cat/cat\",\"children\":[],\"createTime\":1622444260000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 15:03:20');
INSERT INTO `sys_oper_log` VALUES (213, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2021-05-31 15:08:40');
INSERT INTO `sys_oper_log` VALUES (214, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1621904833000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 15:11:04');
INSERT INTO `sys_oper_log` VALUES (215, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1621904833000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 15:17:38');
INSERT INTO `sys_oper_log` VALUES (216, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"若依官网\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1621904833000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 15:18:05');
INSERT INTO `sys_oper_log` VALUES (217, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"0\",\"menuName\":\"物品管理\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"path\":\"goods\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 15:26:11');
INSERT INTO `sys_oper_log` VALUES (218, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"0\",\"menuName\":\"物品管理\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"path\":\"goods\",\"component\":\"articles/drug/drug\",\"children\":[],\"createTime\":1622445971000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2007,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 15:26:52');
INSERT INTO `sys_oper_log` VALUES (219, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"log\",\"orderNum\":\"0\",\"menuName\":\"物品管理\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"path\":\"goods\",\"component\":\"articles/drug/drug\",\"children\":[],\"createTime\":1622445971000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2007,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 15:27:54');
INSERT INTO `sys_oper_log` VALUES (220, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'fy_pet_breed', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 16:23:18');
INSERT INTO `sys_oper_log` VALUES (221, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"updateTime\":1622167921000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1622107985000,\"tableId\":1,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"客户姓名\",\"isQuery\":\"1\",\"updateTime\":1622167921000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622107985000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\"Tel\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"tel\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"电话\",\"isQuery\":\"1\",\"updateTime\":1622167921000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622107985000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"tel\"},{\"capJavaField\":\"\\r\\nfixtureDate\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"\\r\\nfixtureDate\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"成交时间\",\"isQuery\":\"1\",\"updateTime\":1622167921000,\"sort\":4,\"list\":true,\"params\":{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 16:24:09');
INSERT INTO `sys_oper_log` VALUES (222, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/fy_pet_breed', '127.0.0.1', '内网IP', '{tableName=fy_pet_breed}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 16:26:40');
INSERT INTO `sys_oper_log` VALUES (223, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"subTableName\":\"\",\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":10,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1622449398000,\"tableId\":2,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Category\",\"usableColumn\":false,\"columnId\":11,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"category\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"类别（1：英短2：美短）\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622449398000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"category\"},{\"capJavaField\":\"BreedName\",\"usableColumn\":false,\"columnId\":12,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"breedName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"种类名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622449398000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"breed_name\"},{\"capJavaField\":\"CategoryId\",\"usableColumn\":false,\"columnId\":13,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"categoryId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"类别id\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 16:28:18');
INSERT INTO `sys_oper_log` VALUES (224, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-31 16:28:22');
INSERT INTO `sys_oper_log` VALUES (225, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-05-31 16:31:20');
INSERT INTO `sys_oper_log` VALUES (226, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"猫咪品种管理\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"pet\",\"component\":\"pet/breed/index\",\"children\":[],\"createTime\":1622441748000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 16:36:05');
INSERT INTO `sys_oper_log` VALUES (227, '宠物种类', 1, 'com.ruoyi.web.controller.fyms.BreedController.add()', 'POST', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"dfgfd\",\"createTime\":1622451110600,\"remark\":\"dfgsdfg\",\"category\":\"dd\",\"params\":{},\"categoryId\":\"dfgsdf\"}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'category\' at row 1\r\n### The error may exist in file [E:\\ruoyi\\RuoYi-Vue\\fyms\\target\\classes\\mapper\\system\\BreedMapper.xml]\r\n### The error may involve com.ruoyi.mapper.BreedMapper.insertFyPetBreed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into fy_pet_breed          ( category,             breed_name,             category_id,                          create_time,                                       remark )           values ( ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'category\' at row 1\n; Data truncation: Data too long for column \'category\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'category\' at row 1', '2021-05-31 16:51:50');
INSERT INTO `sys_oper_log` VALUES (228, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1622426172000,\"updateBy\":\"admin\",\"dictName\":\"宠物猫种类\",\"remark\":\"宠物种类分组列表\",\"dictId\":100,\"params\":{},\"dictType\":\"fy_pet_category\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 17:04:28');
INSERT INTO `sys_oper_log` VALUES (229, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"params\":{},\"dictType\":\"fy_pet_category\",\"dictLabel\":\"英短\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1622428256000,\"dictCode\":100,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 17:04:47');
INSERT INTO `sys_oper_log` VALUES (230, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":2,\"params\":{},\"dictType\":\"fy_pet_category\",\"dictLabel\":\"美短\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1622428282000,\"dictCode\":101,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 17:04:56');
INSERT INTO `sys_oper_log` VALUES (231, '宠物种类', 2, 'com.ruoyi.web.controller.fyms.BreedController.edit()', 'PUT', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"蓝白\",\"createBy\":\"\",\"updateBy\":\"\",\"remark\":\"测试蓝白\",\"updateTime\":1622452316708,\"id\":\"sfsadf\",\"category\":\"1\",\"params\":{},\"categoryId\":\"ss啊啊啊\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 17:11:56');
INSERT INTO `sys_oper_log` VALUES (232, '宠物种类', 2, 'com.ruoyi.web.controller.fyms.BreedController.edit()', 'PUT', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"蓝白啊\",\"createBy\":\"\",\"updateBy\":\"\",\"remark\":\"测试蓝白\",\"updateTime\":1622452322938,\"id\":\"sfsadf\",\"category\":\"1\",\"params\":{},\"categoryId\":\"ss啊啊啊\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 17:12:03');
INSERT INTO `sys_oper_log` VALUES (233, '宠物种类', 1, 'com.ruoyi.web.controller.fyms.BreedController.add()', 'POST', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"美短加白\",\"createTime\":1622452736001,\"category\":\"2\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\ruoyi\\RuoYi-Vue\\fyms\\target\\classes\\mapper\\system\\BreedMapper.xml]\r\n### The error may involve com.ruoyi.mapper.BreedMapper.insertFyPetBreed-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into fy_pet_breed          ( category,             breed_name,                                       create_time )           values ( ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-05-31 17:18:56');
INSERT INTO `sys_oper_log` VALUES (234, '宠物种类', 1, 'com.ruoyi.web.controller.fyms.BreedController.add()', 'POST', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"起司\",\"createTime\":1622452861534,\"id\":\"7a0c5d41-5b68-4174-9750-68260256042e\",\"category\":\"2\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-05-31 17:21:01');
INSERT INTO `sys_oper_log` VALUES (235, '宠物种类', 1, 'com.ruoyi.web.controller.fyms.BreedController.add()', 'POST', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"银渐层\",\"createTime\":1622528924920,\"id\":\"6795d702-cbeb-4e88-a281-9cd383131ffa\",\"category\":\"1\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-01 14:28:45');
INSERT INTO `sys_oper_log` VALUES (236, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'fy_pet_cat', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-01 14:35:14');
INSERT INTO `sys_oper_log` VALUES (237, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":19,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1622529314000,\"tableId\":3,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"BreedId\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"breedId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"种类id\",\"sort\":2,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622529314000,\"tableId\":3,\"pk\":false,\"columnName\":\"breed_id\"},{\"capJavaField\":\"BirthDate\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"birthDate\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"出生日期\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622529314000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"birth_date\"},{\"capJavaField\":\"HaveDate\",\"usableColumn\":false,\"columnId\":22,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"haveDate\",\"htmlType\":\"datetime\",\"edit\":true,\"query\":true,\"columnComment\":\"拿猫日期\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Date\",\"queryType\":\"EQ\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622529314000,\"isEdit\":\"1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-01 14:41:22');
INSERT INTO `sys_oper_log` VALUES (238, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-06-01 14:41:33');
INSERT INTO `sys_oper_log` VALUES (239, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"github\",\"orderNum\":\"0\",\"menuName\":\"猫咪管理\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"cat\",\"component\":\"pet/cat/index\",\"children\":[],\"createTime\":1622444260000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-01 14:52:27');
INSERT INTO `sys_oper_log` VALUES (240, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"log\",\"orderNum\":\"0\",\"menuName\":\"订单信息\",\"params\":{},\"parentId\":2005,\"isCache\":\"0\",\"path\":\"orders\",\"component\":\"orders/orders/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-01 15:33:04');
INSERT INTO `sys_oper_log` VALUES (241, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'fy_pet_goods', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-01 16:07:47');
INSERT INTO `sys_oper_log` VALUES (242, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":31,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"物品id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1622534866000,\"tableId\":4,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"Type\",\"usableColumn\":false,\"columnId\":32,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"物品类别（1：药品2：物品）\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622534866000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"type\"},{\"capJavaField\":\"Name\",\"usableColumn\":false,\"columnId\":33,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"name\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"物品名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622534866000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"name\"},{\"capJavaField\":\" inventory\",\"usableColumn\":false,\"columnId\":34,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\" inventory\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"库存\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(0)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-01 16:08:58');
INSERT INTO `sys_oper_log` VALUES (243, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-06-01 16:09:03');
INSERT INTO `sys_oper_log` VALUES (244, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"log\",\"orderNum\":\"0\",\"menuName\":\"物品管理\",\"params\":{},\"parentId\":2003,\"isCache\":\"0\",\"path\":\"goods\",\"component\":\"articles/goods/index\",\"children\":[],\"createTime\":1622445971000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2007,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-01 16:17:47');
INSERT INTO `sys_oper_log` VALUES (245, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'fy_pet_orders', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-01 16:25:46');
INSERT INTO `sys_oper_log` VALUES (246, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":41,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"订单id\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1622535945000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ClientId\",\"usableColumn\":false,\"columnId\":42,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"clientId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"客户id\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622535945000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"client_id\"},{\"capJavaField\":\"SourceId\",\"usableColumn\":false,\"columnId\":43,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"sourceId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"来源id（可以是猫咪或者用品）\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1622535945000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"source_id\"},{\"capJavaField\":\"Type\",\"usableColumn\":false,\"columnId\":44,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"type\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"订单类型（1：猫咪2：用品 3：药品）\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"char(1)\",\"createBy\":\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-01 16:26:03');
INSERT INTO `sys_oper_log` VALUES (247, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-06-01 16:26:11');
INSERT INTO `sys_oper_log` VALUES (248, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"createTime\":1621904833000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[2000,2001,2002,2006,2004,2005,2008,2003,2007],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-01 16:37:26');
INSERT INTO `sys_oper_log` VALUES (249, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"7a0c5d41-5b68-4174-9750-68260256042e\",\"params\":{},\"birthDate\":1622476800000,\"haveDate\":1622995200000,\"createTime\":1622613905077,\"primeCost\":1200}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\ruoyi\\RuoYi-Vue\\fyms\\target\\classes\\mapper\\system\\CatMapper.xml]\r\n### The error may involve com.ruoyi.mapper.CatMapper.insertCat-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into fy_pet_cat          ( breed_id,             birth_date,             have_date,             prime_cost,                                                    create_time )           values ( ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-06-02 14:05:05');
INSERT INTO `sys_oper_log` VALUES (250, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"7a0c5d41-5b68-4174-9750-68260256042e\",\"params\":{},\"birthDate\":1622476800000,\"haveDate\":1622995200000,\"createTime\":1622613912774,\"primeCost\":1200}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [E:\\ruoyi\\RuoYi-Vue\\fyms\\target\\classes\\mapper\\system\\CatMapper.xml]\r\n### The error may involve com.ruoyi.mapper.CatMapper.insertCat-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into fy_pet_cat          ( breed_id,             birth_date,             have_date,             prime_cost,                                                    create_time )           values ( ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-06-02 14:05:12');
INSERT INTO `sys_oper_log` VALUES (251, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"6795d702-cbeb-4e88-a281-9cd383131ffa\",\"params\":{},\"birthDate\":1623081600000,\"haveDate\":1623081600000,\"createTime\":1622614642884,\"primeCost\":1200,\"id\":\"34d8ef6f-05bb-495f-bc2e-8ee0ea00e5b4\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 14:17:22');
INSERT INTO `sys_oper_log` VALUES (252, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"猫咪状态\",\"params\":{},\"dictType\":\"cat_state\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 14:36:01');
INSERT INTO `sys_oper_log` VALUES (253, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":0,\"params\":{},\"dictType\":\"cat_state\",\"dictLabel\":\"在售\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 14:37:35');
INSERT INTO `sys_oper_log` VALUES (254, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":0,\"remark\":\"猫咪在售\",\"params\":{},\"dictType\":\"cat_state\",\"dictLabel\":\"在售\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1622615855000,\"dictCode\":102,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 14:37:46');
INSERT INTO `sys_oper_log` VALUES (255, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"remark\":\"猫咪已售\",\"params\":{},\"dictType\":\"cat_state\",\"dictLabel\":\"已售\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 14:38:04');
INSERT INTO `sys_oper_log` VALUES (256, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":2,\"remark\":\"猫咪死亡\",\"params\":{},\"dictType\":\"cat_state\",\"dictLabel\":\"死亡\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 14:38:30');
INSERT INTO `sys_oper_log` VALUES (257, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"6795d702-cbeb-4e88-a281-9cd383131ffa\",\"params\":{},\"birthDate\":1622995200000,\"haveDate\":1623600000000,\"createTime\":1622620569664,\"primeCost\":1200,\"id\":\"5eb39716-fdc3-415f-aa00-9c877e0ba0a9\",\"state\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 15:56:09');
INSERT INTO `sys_oper_log` VALUES (258, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"7a0c5d41-5b68-4174-9750-68260256042e\",\"params\":{},\"birthDate\":1622995200000,\"haveDate\":1623686400000,\"createTime\":1622620767705,\"primeCost\":522,\"id\":\"3119bc2b-c2e0-4896-91e3-41a1004d9b93\",\"state\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 15:59:27');
INSERT INTO `sys_oper_log` VALUES (259, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"params\":{},\"url\":\"http://localhost:8080/profile/upload/2021/06/02/38592f5f-6fe8-4bb3-960f-98cdf000883f.jpg\",\"createTime\":1622621260523,\"id\":\"5280bce7-6e95-4799-94d4-e547eeef46f2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 16:07:40');
INSERT INTO `sys_oper_log` VALUES (260, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"sfsadf\",\"remark\":\"试试\",\"params\":{},\"birthDate\":1622995200000,\"url\":\"http://localhost:8080/profile/upload/2021/06/02/e966d5f8-49a0-4f10-90ec-2eb689c40cbd.jpg\",\"haveDate\":1622995200000,\"createTime\":1622621455248,\"primeCost\":233,\"id\":\"b664aade-79b5-42cb-b2ef-24e9ba1bfade\",\"state\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 16:10:55');
INSERT INTO `sys_oper_log` VALUES (261, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"6795d702-cbeb-4e88-a281-9cd383131ffa\",\"remark\":\"试试\",\"params\":{},\"birthDate\":1622476800000,\"url\":\"http://localhost:8080/profile/upload/2021/06/02/55f25203-54d7-4502-ae46-f6a7ba157239.jpg\",\"haveDate\":1622563200000,\"createTime\":1622621510663,\"primeCost\":1500,\"id\":\"6489dc7f-e217-4643-b979-090ae641992d\",\"state\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 16:11:50');
INSERT INTO `sys_oper_log` VALUES (262, '猫咪管理', 2, 'com.ruoyi.web.controller.fyms.CatController.edit()', 'PUT', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"6795d702-cbeb-4e88-a281-9cd383131ffa\",\"remark\":\"试试\",\"updateTime\":1622621832341,\"params\":{},\"birthDate\":1622476800000,\"url\":\"http://localhost:8080/profile/upload/2021/06/02/55f25203-54d7-4502-ae46-f6a7ba157239.jpg\",\"breedName\":\"银渐层\",\"createBy\":\"\",\"haveDate\":1622563200000,\"createTime\":1622621511000,\"updateBy\":\"\",\"primeCost\":1500,\"id\":\"6489dc7f-e217-4643-b979-090ae641992d\",\"state\":\"0\",\"category\":\"英短\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 16:17:12');
INSERT INTO `sys_oper_log` VALUES (263, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"7a0c5d41-5b68-4174-9750-68260256042e\",\"params\":{},\"birthDate\":1623600000000,\"url\":\"http://localhost:8080/profile/upload/2021/06/02/ba4df643-5571-4001-91e2-9b4602a402cb.jpg\",\"haveDate\":1623340800000,\"createTime\":1622622277069,\"primeCost\":500,\"id\":\"f5fea3bd-4706-4736-be37-90906048f7b0\",\"state\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 16:24:37');
INSERT INTO `sys_oper_log` VALUES (264, '猫咪管理', 2, 'com.ruoyi.web.controller.fyms.CatController.edit()', 'PUT', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"6795d702-cbeb-4e88-a281-9cd383131ffa\",\"remark\":\"试试\",\"updateTime\":1622622339187,\"params\":{},\"birthDate\":1622476800000,\"url\":\"http://localhost:8080/profile/upload/2021/06/02/14b3377f-9960-4db7-8bad-7616ffcd1a32.jpg\",\"breedName\":\"银渐层\",\"createBy\":\"\",\"haveDate\":1622563200000,\"createTime\":1622621511000,\"updateBy\":\"\",\"primeCost\":1500,\"id\":\"6489dc7f-e217-4643-b979-090ae641992d\",\"state\":\"0\",\"category\":\"英短\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 16:25:39');
INSERT INTO `sys_oper_log` VALUES (265, '猫咪管理', 2, 'com.ruoyi.web.controller.fyms.CatController.edit()', 'PUT', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"6795d702-cbeb-4e88-a281-9cd383131ffa\",\"remark\":\"试试\",\"updateTime\":1622626580128,\"params\":{},\"birthDate\":1622476800000,\"url\":\"http://localhost:8080/profile/upload/2021/06/02/f21c2782-a7cd-4d5c-bbbc-cda87a4b3769.jpg\",\"breedName\":\"银渐层\",\"createBy\":\"\",\"haveDate\":1622563200000,\"createTime\":1622621511000,\"updateBy\":\"\",\"primeCost\":1500,\"id\":\"6489dc7f-e217-4643-b979-090ae641992d\",\"state\":\"0\",\"category\":\"英短\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 17:36:20');
INSERT INTO `sys_oper_log` VALUES (266, '客户信息', 1, 'com.ruoyi.web.controller.fyms.UsClientController.add()', 'POST', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"sex\":\"0\",\"params\":{},\"createTime\":1622635624662,\"name\":\"奥恩\",\"tel\":\"45453524\",\"fixtureDate\":1622304000000,\"id\":\"5d605164-8fe6-4930-a591-7a8834181ea0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 20:07:04');
INSERT INTO `sys_oper_log` VALUES (267, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"6795d702-cbeb-4e88-a281-9cd383131ffa\",\"remark\":\"访问\",\"params\":{},\"birthDate\":1622476800000,\"url\":\"http://localhost:8080/profile/upload/2021/06/02/04cdbd62-da04-4438-8a6b-47b78f2ba7c4.jpg\",\"haveDate\":1623600000000,\"createTime\":1622635687282,\"primeCost\":111,\"id\":\"040d9c7d-e060-4a09-b4dc-b0b1771ed965\",\"state\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 20:08:07');
INSERT INTO `sys_oper_log` VALUES (268, '宠物种类', 1, 'com.ruoyi.web.controller.fyms.BreedController.add()', 'POST', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"物色合适\",\"createTime\":1622635727914,\"remark\":\"3他二十一\",\"id\":\"6088a6a9-3616-478d-bad8-8acbf77a0204\",\"category\":\"1\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 20:08:47');
INSERT INTO `sys_oper_log` VALUES (269, '猫咪管理', 3, 'com.ruoyi.web.controller.fyms.CatController.remove()', 'DELETE', 1, 'admin', NULL, '/system/cat/6489dc7f-e217-4643-b979-090ae641992d', '127.0.0.1', '内网IP', '{ids=6489dc7f-e217-4643-b979-090ae641992d}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 22:27:18');
INSERT INTO `sys_oper_log` VALUES (270, '猫咪管理', 3, 'com.ruoyi.web.controller.fyms.CatController.remove()', 'DELETE', 1, 'admin', NULL, '/system/cat/f5fea3bd-4706-4736-be37-90906048f7b0', '127.0.0.1', '内网IP', '{ids=f5fea3bd-4706-4736-be37-90906048f7b0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 22:27:21');
INSERT INTO `sys_oper_log` VALUES (271, '物品', 1, 'com.ruoyi.web.controller.fyms.GoodsController.add()', 'POST', 1, 'admin', NULL, '/system/goods', '127.0.0.1', '内网IP', '{\"createTime\":1622645355319,\"price\":22,\"name\":\"达到\",\"remark\":\"升水\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\fyms\\fyms\\target\\classes\\mapper\\system\\GoodsMapper.xml]\r\n### The error may involve com.ruoyi.mapper.GoodsMapper.insertGoods-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into fy_pet_goods          ( name,                          price,                          create_time,                                       remark )           values ( ?,                          ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-06-02 22:49:15');
INSERT INTO `sys_oper_log` VALUES (272, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"物品类别\",\"params\":{},\"dictType\":\"fy_goods_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 22:51:08');
INSERT INTO `sys_oper_log` VALUES (273, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1622645468000,\"updateBy\":\"admin\",\"dictName\":\"物品类别\",\"remark\":\"物品的类别比如药品或者日用品\",\"dictId\":102,\"params\":{},\"dictType\":\"fy_goods_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 22:52:00');
INSERT INTO `sys_oper_log` VALUES (274, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":0,\"params\":{},\"dictType\":\"fy_goods_type\",\"dictLabel\":\"药品\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 23:17:11');
INSERT INTO `sys_oper_log` VALUES (275, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":1,\"params\":{},\"dictType\":\"fy_goods_type\",\"dictLabel\":\"猫用品\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 23:17:30');
INSERT INTO `sys_oper_log` VALUES (276, '物品', 1, 'com.ruoyi.web.controller.fyms.GoodsController.add()', 'POST', 1, 'admin', NULL, '/system/goods', '127.0.0.1', '内网IP', '{\"createTime\":1622647380969,\"price\":11,\"name\":\"红狗营养膏\",\"id\":\"d0b2a6ca-72e8-4135-a020-dec5fc101c2b\",\"params\":{},\"type\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-02 23:23:01');
INSERT INTO `sys_oper_log` VALUES (277, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"订单类型\",\"remark\":\"\",\"params\":{},\"dictType\":\"fy_orders_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 09:56:02');
INSERT INTO `sys_oper_log` VALUES (278, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":0,\"params\":{},\"dictType\":\"fy_orders_type\",\"dictLabel\":\"猫咪\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 09:56:36');
INSERT INTO `sys_oper_log` VALUES (279, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":1,\"params\":{},\"dictType\":\"fy_orders_type\",\"dictLabel\":\"用品\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 09:56:46');
INSERT INTO `sys_oper_log` VALUES (280, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"3\",\"dictSort\":2,\"params\":{},\"dictType\":\"fy_orders_type\",\"dictLabel\":\"药品\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 09:57:11');
INSERT INTO `sys_oper_log` VALUES (281, '客户信息', 2, 'com.ruoyi.web.controller.fyms.UsClientController.edit()', 'PUT', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"sex\":\"0\",\"updateTime\":1622706682981,\"delFlag\":\"0\",\"params\":{},\"createBy\":\"\",\"createTime\":1622635625000,\"updateBy\":\"\",\"name\":\"奥恩\",\"tel\":\"45453524\",\"fixtureDate\":1622304000000,\"id\":\"5d605164-8fe6-4930-a591-7a8834181ea0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 15:51:23');
INSERT INTO `sys_oper_log` VALUES (282, '客户信息', 2, 'com.ruoyi.web.controller.fyms.UsClientController.edit()', 'PUT', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"sex\":\"0\",\"updateTime\":1622706694136,\"delFlag\":\"0\",\"params\":{},\"createBy\":\"\",\"createTime\":1622423174000,\"updateBy\":\"\",\"name\":\"啊啊\",\"tel\":\"12312\",\"fixtureDate\":1622390400000,\"id\":\"3d366556-d492-4891-9986-201b363b2f60\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 15:51:34');
INSERT INTO `sys_oper_log` VALUES (283, '客户信息', 2, 'com.ruoyi.web.controller.fyms.UsClientController.edit()', 'PUT', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"sex\":\"2\",\"updateTime\":1622706757442,\"delFlag\":\"0\",\"params\":{},\"createBy\":\"\",\"createTime\":1622423174000,\"updateBy\":\"\",\"name\":\"啊啊\",\"tel\":\"12312\",\"fixtureDate\":1622390400000,\"id\":\"3d366556-d492-4891-9986-201b363b2f60\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 15:52:37');
INSERT INTO `sys_oper_log` VALUES (284, '客户信息', 2, 'com.ruoyi.web.controller.fyms.UsClientController.edit()', 'PUT', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"sex\":\"1\",\"updateTime\":1622706778771,\"delFlag\":\"0\",\"params\":{},\"createBy\":\"\",\"createTime\":1622423174000,\"updateBy\":\"\",\"name\":\"啊啊防守打法\",\"tel\":\"12312\",\"fixtureDate\":1622390400000,\"id\":\"3d366556-d492-4891-9986-201b363b2f60\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 15:52:58');
INSERT INTO `sys_oper_log` VALUES (285, '客户信息', 2, 'com.ruoyi.web.controller.fyms.UsClientController.edit()', 'PUT', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"sex\":\"0\",\"updateTime\":1622706988326,\"delFlag\":\"0\",\"params\":{},\"createBy\":\"\",\"createTime\":1622423174000,\"updateBy\":\"\",\"name\":\"啊啊防守打法\",\"tel\":\"12312\",\"fixtureDate\":1622390400000,\"id\":\"3d366556-d492-4891-9986-201b363b2f60\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 15:56:28');
INSERT INTO `sys_oper_log` VALUES (286, '客户信息', 2, 'com.ruoyi.web.controller.fyms.UsClientController.edit()', 'PUT', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"sex\":\"0\",\"updateTime\":1622707264022,\"delFlag\":\"0\",\"params\":{},\"createBy\":\"\",\"createTime\":1622423174000,\"updateBy\":\"\",\"name\":\"啊啊防守打法\",\"tel\":\"12312\",\"fixtureDate\":1622390400000,\"id\":\"3d366556-d492-4891-9986-201b363b2f60\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 16:01:04');
INSERT INTO `sys_oper_log` VALUES (287, '客户信息', 2, 'com.ruoyi.web.controller.fyms.UsClientController.edit()', 'PUT', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"sex\":\"2\",\"updateTime\":1622707377775,\"delFlag\":\"0\",\"params\":{},\"createBy\":\"\",\"createTime\":1622423174000,\"updateBy\":\"\",\"name\":\"啊啊防守打法\",\"tel\":\"0\",\"fixtureDate\":1622390400000,\"id\":\"3d366556-d492-4891-9986-201b363b2f60\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 16:02:57');
INSERT INTO `sys_oper_log` VALUES (288, '客户信息', 2, 'com.ruoyi.web.controller.fyms.UsClientController.edit()', 'PUT', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"sex\":\"0\",\"updateTime\":1622707418238,\"delFlag\":\"0\",\"params\":{},\"createBy\":\"\",\"createTime\":1622423174000,\"updateBy\":\"\",\"name\":\"啊啊防守打法\",\"tel\":\"2\",\"fixtureDate\":1622390400000,\"id\":\"3d366556-d492-4891-9986-201b363b2f60\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 16:03:38');
INSERT INTO `sys_oper_log` VALUES (289, '客户信息', 2, 'com.ruoyi.web.controller.fyms.UsClientController.edit()', 'PUT', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"sex\":\"0\",\"updateTime\":1622707534457,\"delFlag\":\"0\",\"params\":{},\"createBy\":\"\",\"createTime\":1622423174000,\"updateBy\":\"\",\"name\":\"啊啊防守打法\",\"tel\":\"121345646\",\"fixtureDate\":1622390400000,\"id\":\"3d366556-d492-4891-9986-201b363b2f60\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 16:05:34');
INSERT INTO `sys_oper_log` VALUES (290, '客户信息', 1, 'com.ruoyi.web.controller.fyms.UsClientController.add()', 'POST', 1, 'admin', NULL, '/system/client', '127.0.0.1', '内网IP', '{\"sex\":\"1\",\"params\":{},\"createTime\":1622707549435,\"name\":\"阿斯顿发生\",\"tel\":\"4545464\",\"fixtureDate\":1623772800000,\"id\":\"069646a6-8496-4b32-8671-96a3953ed743\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 16:05:49');
INSERT INTO `sys_oper_log` VALUES (291, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"用户状态\",\"remark\":\"客户是否成交\",\"params\":{},\"dictType\":\"fy_user_state\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 16:10:21');
INSERT INTO `sys_oper_log` VALUES (292, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1622707821000,\"updateBy\":\"admin\",\"dictName\":\"用户状态\",\"remark\":\"客户是否成交\",\"dictId\":104,\"params\":{},\"dictType\":\"fy_user_status\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 16:10:36');
INSERT INTO `sys_oper_log` VALUES (293, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":0,\"params\":{},\"dictType\":\"fy_user_status\",\"dictLabel\":\"已成交\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 16:39:37');
INSERT INTO `sys_oper_log` VALUES (294, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"params\":{},\"dictType\":\"fy_user_status\",\"dictLabel\":\"未成交\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 16:39:51');
INSERT INTO `sys_oper_log` VALUES (295, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"params\":{},\"dictType\":\"fy_user_status\",\"dictLabel\":\"待跟进\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1622709591000,\"dictCode\":111,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 16:40:35');
INSERT INTO `sys_oper_log` VALUES (296, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":2,\"params\":{},\"dictType\":\"fy_user_status\",\"dictLabel\":\"已失效\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-03 16:40:51');
INSERT INTO `sys_oper_log` VALUES (297, '物品', 1, 'com.ruoyi.web.controller.fyms.GoodsController.add()', 'POST', 1, 'admin', NULL, '/system/goods', '127.0.0.1', '内网IP', '{\"name\":\"红狗营养膏\",\"params\":{},\"type\":\"2\"}', 'null', 1, '不允许操作超级管理员角色', '2021-06-03 20:29:32');
INSERT INTO `sys_oper_log` VALUES (298, '物品', 1, 'com.ruoyi.web.controller.fyms.GoodsController.add()', 'POST', 1, 'admin', NULL, '/system/goods', '127.0.0.1', '内网IP', '{\"name\":\"红狗营养膏\",\"params\":{},\"type\":\"2\"}', 'null', 1, '不允许操作超级管理员角色', '2021-06-03 20:29:41');
INSERT INTO `sys_oper_log` VALUES (299, '宠物种类', 3, 'com.ruoyi.web.controller.fyms.BreedController.remove()', 'DELETE', 1, 'admin', NULL, '/system/breed/sfsadf', '127.0.0.1', '内网IP', '{ids=sfsadf}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 16:21:57');
INSERT INTO `sys_oper_log` VALUES (300, '宠物种类', 3, 'com.ruoyi.web.controller.fyms.BreedController.remove()', 'DELETE', 1, 'admin', NULL, '/system/breed/7a0c5d41-5b68-4174-9750-68260256042e', '127.0.0.1', '内网IP', '{ids=7a0c5d41-5b68-4174-9750-68260256042e}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 16:22:00');
INSERT INTO `sys_oper_log` VALUES (301, '宠物种类', 3, 'com.ruoyi.web.controller.fyms.BreedController.remove()', 'DELETE', 1, 'admin', NULL, '/system/breed/6795d702-cbeb-4e88-a281-9cd383131ffa', '127.0.0.1', '内网IP', '{ids=6795d702-cbeb-4e88-a281-9cd383131ffa}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 16:22:35');
INSERT INTO `sys_oper_log` VALUES (302, '宠物种类', 3, 'com.ruoyi.web.controller.fyms.BreedController.remove()', 'DELETE', 1, 'admin', NULL, '/system/breed/6088a6a9-3616-478d-bad8-8acbf77a0204', '127.0.0.1', '内网IP', '{ids=6088a6a9-3616-478d-bad8-8acbf77a0204}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 16:22:40');
INSERT INTO `sys_oper_log` VALUES (303, '宠物种类', 1, 'com.ruoyi.web.controller.fyms.BreedController.add()', 'POST', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"美短矮脚\",\"createBy\":\"admin\",\"createTime\":1622794990349,\"id\":\"8c6d02f5-6c6e-400b-b2f8-4a3839f34195\",\"category\":\"2\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 16:23:10');
INSERT INTO `sys_oper_log` VALUES (304, '宠物种类', 1, 'com.ruoyi.web.controller.fyms.BreedController.add()', 'POST', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"银渐层\",\"createBy\":\"admin\",\"createTime\":1622795067150,\"id\":\"1ffb6e28-f046-4c1c-a075-f82902a6794c\",\"category\":\"1\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 16:24:27');
INSERT INTO `sys_oper_log` VALUES (305, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"1ffb6e28-f046-4c1c-a075-f82902a6794c\",\"params\":{},\"birthDate\":1622995200000,\"createBy\":\"admin\",\"haveDate\":1622476800000,\"createTime\":1622797947972,\"primeCost\":14,\"id\":\"3842b23d-1476-4941-95d5-9a97f8f2d072\",\"state\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 17:12:28');
INSERT INTO `sys_oper_log` VALUES (306, '宠物种类', 3, 'com.ruoyi.web.controller.fyms.BreedController.remove()', 'DELETE', 1, 'admin', NULL, '/system/breed/1ffb6e28-f046-4c1c-a075-f82902a6794c', '127.0.0.1', '内网IP', '{ids=1ffb6e28-f046-4c1c-a075-f82902a6794c}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 17:17:19');
INSERT INTO `sys_oper_log` VALUES (307, '宠物种类', 3, 'com.ruoyi.web.controller.fyms.BreedController.remove()', 'DELETE', 1, 'admin', NULL, '/system/breed/8c6d02f5-6c6e-400b-b2f8-4a3839f34195', '127.0.0.1', '内网IP', '{ids=8c6d02f5-6c6e-400b-b2f8-4a3839f34195}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 17:17:24');
INSERT INTO `sys_oper_log` VALUES (308, '宠物种类', 1, 'com.ruoyi.web.controller.fyms.BreedController.add()', 'POST', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"英短矮脚\",\"createBy\":\"admin\",\"createTime\":1622798299926,\"id\":\"0d4ddb13-d4a7-4d13-b066-be7ae099d8dc\",\"category\":\"1\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 17:18:20');
INSERT INTO `sys_oper_log` VALUES (309, '猫咪管理', 2, 'com.ruoyi.web.controller.fyms.CatController.edit()', 'PUT', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"8c6d02f5-6c6e-400b-b2f8-4a3839f34195\",\"remark\":\"访问\",\"updateTime\":1622798317154,\"params\":{},\"birthDate\":1622476800000,\"url\":\"http://localhost:8080/profile/upload/2021/06/02/04cdbd62-da04-4438-8a6b-47b78f2ba7c4.jpg\",\"createBy\":\"\",\"haveDate\":1623600000000,\"createTime\":1622635687000,\"updateBy\":\"admin\",\"primeCost\":111,\"id\":\"040d9c7d-e060-4a09-b4dc-b0b1771ed965\",\"state\":\"0\",\"category\":\"美短\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 17:18:37');
INSERT INTO `sys_oper_log` VALUES (310, '猫咪管理', 2, 'com.ruoyi.web.controller.fyms.CatController.edit()', 'PUT', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"0d4ddb13-d4a7-4d13-b066-be7ae099d8dc\",\"remark\":\"访问\",\"updateTime\":1622798329213,\"params\":{},\"birthDate\":1622476800000,\"url\":\"http://localhost:8080/profile/upload/2021/06/02/04cdbd62-da04-4438-8a6b-47b78f2ba7c4.jpg\",\"createBy\":\"\",\"haveDate\":1623600000000,\"createTime\":1622635687000,\"updateBy\":\"admin\",\"primeCost\":111,\"id\":\"040d9c7d-e060-4a09-b4dc-b0b1771ed965\",\"state\":\"0\",\"category\":\"美短\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 17:18:49');
INSERT INTO `sys_oper_log` VALUES (311, '宠物种类', 3, 'com.ruoyi.web.controller.fyms.BreedController.remove()', 'DELETE', 1, 'admin', NULL, '/system/breed/0d4ddb13-d4a7-4d13-b066-be7ae099d8dc', '127.0.0.1', '内网IP', '{ids=0d4ddb13-d4a7-4d13-b066-be7ae099d8dc}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 17:19:05');
INSERT INTO `sys_oper_log` VALUES (312, '宠物种类', 1, 'com.ruoyi.web.controller.fyms.BreedController.add()', 'POST', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"啊啊\",\"createBy\":\"admin\",\"createTime\":1622798361595,\"id\":\"15dc0e1e-9001-46b2-b5eb-76e481e53edc\",\"category\":\"1\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 17:19:21');
INSERT INTO `sys_oper_log` VALUES (313, '宠物种类', 3, 'com.ruoyi.web.controller.fyms.BreedController.remove()', 'DELETE', 1, 'admin', NULL, '/system/breed/15dc0e1e-9001-46b2-b5eb-76e481e53edc', '127.0.0.1', '内网IP', '{ids=15dc0e1e-9001-46b2-b5eb-76e481e53edc}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 17:19:45');
INSERT INTO `sys_oper_log` VALUES (314, '宠物种类', 1, 'com.ruoyi.web.controller.fyms.BreedController.add()', 'POST', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"美短\",\"createBy\":\"admin\",\"createTime\":1622798479199,\"id\":\"dce3595c-8655-42d4-9362-bc6123243782\",\"category\":\"2\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 17:21:19');
INSERT INTO `sys_oper_log` VALUES (315, '猫咪管理', 2, 'com.ruoyi.web.controller.fyms.CatController.edit()', 'PUT', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"dce3595c-8655-42d4-9362-bc6123243782\",\"remark\":\"访问\",\"updateTime\":1622798492498,\"params\":{},\"birthDate\":1622476800000,\"url\":\"http://localhost:8080/profile/upload/2021/06/02/04cdbd62-da04-4438-8a6b-47b78f2ba7c4.jpg\",\"createBy\":\"\",\"haveDate\":1623600000000,\"createTime\":1622635687000,\"updateBy\":\"admin\",\"primeCost\":111,\"id\":\"040d9c7d-e060-4a09-b4dc-b0b1771ed965\",\"state\":\"0\",\"category\":\"美短\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 17:21:32');
INSERT INTO `sys_oper_log` VALUES (316, '猫咪管理', 2, 'com.ruoyi.web.controller.fyms.CatController.edit()', 'PUT', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"dce3595c-8655-42d4-9362-bc6123243782\",\"updateTime\":1622798498046,\"params\":{},\"birthDate\":1622995200000,\"createBy\":\"admin\",\"haveDate\":1622476800000,\"createTime\":1622797948000,\"updateBy\":\"admin\",\"primeCost\":14,\"id\":\"3842b23d-1476-4941-95d5-9a97f8f2d072\",\"state\":\"0\",\"category\":\"美短\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 17:21:38');
INSERT INTO `sys_oper_log` VALUES (317, '宠物种类', 3, 'com.ruoyi.web.controller.fyms.BreedController.remove()', 'DELETE', 1, 'admin', NULL, '/system/breed/dce3595c-8655-42d4-9362-bc6123243782', '127.0.0.1', '内网IP', '{ids=dce3595c-8655-42d4-9362-bc6123243782}', 'null', 1, '物品名称重复请修改库存', '2021-06-04 17:21:43');
INSERT INTO `sys_oper_log` VALUES (318, '宠物种类', 3, 'com.ruoyi.web.controller.fyms.BreedController.remove()', 'DELETE', 1, 'admin', NULL, '/system/breed/dce3595c-8655-42d4-9362-bc6123243782', '127.0.0.1', '内网IP', '{ids=dce3595c-8655-42d4-9362-bc6123243782}', 'null', 1, '物品名称重复请修改库存', '2021-06-04 17:21:53');
INSERT INTO `sys_oper_log` VALUES (319, '宠物种类', 3, 'com.ruoyi.web.controller.fyms.BreedController.remove()', 'DELETE', 1, 'admin', NULL, '/system/breed/dce3595c-8655-42d4-9362-bc6123243782', '127.0.0.1', '内网IP', '{ids=dce3595c-8655-42d4-9362-bc6123243782}', 'null', 1, '物品名称重复请修改库存', '2021-06-04 17:21:59');
INSERT INTO `sys_oper_log` VALUES (320, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"dce3595c-8655-42d4-9362-bc6123243782\",\"params\":{},\"birthDate\":1622476800000,\"createBy\":\"admin\",\"haveDate\":1622563200000,\"createTime\":1622802093320,\"name\":\"美短1\",\"primeCost\":100,\"id\":\"4f0fdb23-6a09-4fba-93ba-1ef2aad62a4c\",\"state\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 18:21:33');
INSERT INTO `sys_oper_log` VALUES (321, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"dce3595c-8655-42d4-9362-bc6123243782\",\"remark\":\"是\",\"params\":{},\"birthDate\":1623168000000,\"haveDate\":1623081600000,\"name\":\"美短1\",\"primeCost\":120,\"state\":\"0\"}', 'null', 1, '猫咪名称不允许重复', '2021-06-04 18:21:53');
INSERT INTO `sys_oper_log` VALUES (322, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"dce3595c-8655-42d4-9362-bc6123243782\",\"remark\":\"是\",\"params\":{},\"birthDate\":1623168000000,\"createBy\":\"admin\",\"haveDate\":1623081600000,\"createTime\":1622802117594,\"name\":\"美短2\",\"primeCost\":120,\"id\":\"8f50fb57-bd77-4ef3-9492-2bde3c05ff89\",\"state\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-04 18:21:57');
INSERT INTO `sys_oper_log` VALUES (323, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"dce3595c-8655-42d4-9362-bc6123243782\",\"num\":\"CAT_NUM21060910\",\"params\":{},\"birthDate\":1623081600000,\"createBy\":\"admin\",\"haveDate\":1623168000000,\"createTime\":1623219604796,\"primeCost\":1200,\"id\":\"0e52cea1-9a40-4cbc-9d4a-b88eef446683\",\"state\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 14:20:04');
INSERT INTO `sys_oper_log` VALUES (324, '猫咪管理', 1, 'com.ruoyi.web.controller.fyms.CatController.add()', 'POST', 1, 'admin', NULL, '/system/cat', '127.0.0.1', '内网IP', '{\"breedId\":\"dce3595c-8655-42d4-9362-bc6123243782\",\"num\":\"M21060911\",\"params\":{},\"birthDate\":1623081600000,\"createBy\":\"admin\",\"haveDate\":1623081600000,\"createTime\":1623219835927,\"primeCost\":100000,\"id\":\"ac516f70-f812-436e-bece-85bc3b769f49\",\"state\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 14:23:56');
INSERT INTO `sys_oper_log` VALUES (325, '宠物种类', 1, 'com.ruoyi.web.controller.fyms.BreedController.add()', 'POST', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"银渐层\",\"createBy\":\"admin\",\"createTime\":1623220070838,\"id\":\"06270397-a172-4448-8881-e4f5860a4a78\",\"category\":\"1\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 14:27:50');
INSERT INTO `sys_oper_log` VALUES (326, '宠物种类', 1, 'com.ruoyi.web.controller.fyms.BreedController.add()', 'POST', 1, 'admin', NULL, '/system/breed', '127.0.0.1', '内网IP', '{\"breedName\":\"英短矮脚虎斑\",\"createBy\":\"admin\",\"createTime\":1623220093695,\"id\":\"d2416bac-5688-4d57-bb26-4e7e21bb6633\",\"category\":\"1\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-06-09 14:28:13');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(0) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2021-05-25 09:07:12', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2021-05-25 09:07:12', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2021-05-25 09:07:12', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2021-05-25 09:07:12', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(0) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2021-05-25 09:07:13', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '1', 1, 0, '0', '0', 'admin', '2021-05-25 09:07:13', 'admin', '2021-06-01 16:37:26', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(0) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2004);
INSERT INTO `sys_role_menu` VALUES (2, 2005);
INSERT INTO `sys_role_menu` VALUES (2, 2006);
INSERT INTO `sys_role_menu` VALUES (2, 2007);
INSERT INTO `sys_role_menu` VALUES (2, 2008);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-06-09 14:18:41', 'admin', '2021-05-25 09:07:12', '', '2021-06-09 14:18:40', '管理员');
INSERT INTO `sys_user` VALUES (2, 103, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2021-05-25 09:07:12', 'admin', '2021-05-25 09:07:12', 'admin', '2021-05-27 08:53:10', '测试员');
INSERT INTO `sys_user` VALUES (100, 103, '叶鸿鹰', '小飞鹰', '00', '', '', '1', '', '$2a$10$gKt1T27iU4nUUBy9SGHm/.DCsFQTDhS98A3D/Eyh4abhteVJ44m82', '0', '0', '127.0.0.1', '2021-06-01 16:37:42', 'admin', '2021-05-27 08:54:58', '', '2021-06-01 16:37:42', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `post_id` bigint(0) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (100, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(0) NOT NULL COMMENT '用户ID',
  `role_id` bigint(0) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (100, 2);

-- ----------------------------
-- Table structure for us_client
-- ----------------------------
DROP TABLE IF EXISTS `us_client`;
CREATE TABLE `us_client`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户姓名',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '(0:已成交 1:待跟进 2:已失效)',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `fixture_date` datetime(0) NULL DEFAULT NULL COMMENT '进客日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '客户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of us_client
-- ----------------------------
INSERT INTO `us_client` VALUES ('069646a6-8496-4b32-8671-96a3953ed743', '阿斯顿发生', '1', '4545464', '0', '0', '', '2021-06-03 16:05:49', '', NULL, '2021-06-16 00:00:00');
INSERT INTO `us_client` VALUES ('3d366556-d492-4891-9986-201b363b2f60', '啊啊防守打法', '0', '121345646', '1', '0', '', '2021-05-31 09:06:14', '', '2021-06-03 16:05:34', '2021-05-31 00:00:00');
INSERT INTO `us_client` VALUES ('5d605164-8fe6-4930-a591-7a8834181ea0', '奥恩', '0', '45453524', '1', '0', '', '2021-06-02 20:07:05', '', '2021-06-03 15:51:23', '2021-05-30 00:00:00');
INSERT INTO `us_client` VALUES ('sdfs', '小飞', '1', '1367525445', '1', '0', '', '2021-05-28 17:59:10', '', '2021-05-31 08:48:49', '2021-05-28 00:00:00');

SET FOREIGN_KEY_CHECKS = 1;
