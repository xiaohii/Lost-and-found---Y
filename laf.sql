/*
 Navicat Premium Dump SQL

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 80045 (8.0.45)
 Source Host           : localhost:3306
 Source Schema         : laf

 Target Server Type    : MySQL
 Target Server Version : 80045 (8.0.45)
 File Encoding         : 65001

 Date: 31/03/2026 12:48:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for attention
-- ----------------------------
DROP TABLE IF EXISTS `attention`;
CREATE TABLE `attention`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `attention_user_id` int NOT NULL,
  `attentioned_user_id` int NOT NULL,
  `status` int NULL DEFAULT 1,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9744 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attention
-- ----------------------------
INSERT INTO `attention` VALUES (1, 1, 2, 1, '2026-03-29 22:39:38');
INSERT INTO `attention` VALUES (2, 2, 3, 1, '2026-03-29 22:39:38');
INSERT INTO `attention` VALUES (3, 3, 4, 1, '2026-03-29 22:39:38');
INSERT INTO `attention` VALUES (9741, 9001, 9002, 1, '2026-03-30 20:57:29');
INSERT INTO `attention` VALUES (9742, 9002, 9003, 1, '2026-03-30 20:57:29');
INSERT INTO `attention` VALUES (9743, 9003, 9004, 1, '2026-03-30 20:57:29');

-- ----------------------------
-- Table structure for attribute
-- ----------------------------
DROP TABLE IF EXISTS `attribute`;
CREATE TABLE `attribute`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `attr_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `number_value` int NULL DEFAULT NULL,
  `text_value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9614 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attribute
-- ----------------------------
INSERT INTO `attribute` VALUES (1, 'category', 1, '校园卡');
INSERT INTO `attribute` VALUES (2, 'category', 2, '雨伞');
INSERT INTO `attribute` VALUES (3, 'category', 3, '钱包');
INSERT INTO `attribute` VALUES (4, 'category', 4, '钥匙');
INSERT INTO `attribute` VALUES (5, 'category', 5, '电子设备');
INSERT INTO `attribute` VALUES (6, 'location', 1, '图书馆');
INSERT INTO `attribute` VALUES (7, 'location', 2, '第一食堂');
INSERT INTO `attribute` VALUES (8, 'location', 3, '教学楼');
INSERT INTO `attribute` VALUES (9, 'location', 4, '操场');
INSERT INTO `attribute` VALUES (10, 'location', 5, '宿舍楼');
INSERT INTO `attribute` VALUES (11, 'location', 6, '实验楼');
INSERT INTO `attribute` VALUES (12, 'location', 7, '快递站');
INSERT INTO `attribute` VALUES (9601, 'category', 1, '校园卡');
INSERT INTO `attribute` VALUES (9602, 'category', 2, '雨伞');
INSERT INTO `attribute` VALUES (9603, 'category', 3, '钱包');
INSERT INTO `attribute` VALUES (9604, 'category', 4, '钥匙');
INSERT INTO `attribute` VALUES (9605, 'category', 5, '电子设备');
INSERT INTO `attribute` VALUES (9606, 'location', 1, '天章楼（A楼）');
INSERT INTO `attribute` VALUES (9607, 'location', 2, '天铎楼（B楼）');
INSERT INTO `attribute` VALUES (9608, 'location', 3, '天工楼');
INSERT INTO `attribute` VALUES (9609, 'location', 4, '图文信息中心');
INSERT INTO `attribute` VALUES (9610, 'location', 5, '学生事务与发展中心');
INSERT INTO `attribute` VALUES (9611, 'location', 6, '学生公寓');
INSERT INTO `attribute` VALUES (9612, 'location', 7, '学生餐厅');
INSERT INTO `attribute` VALUES (9613, 'location', 8, '6号门（瑶泉路）');

-- ----------------------------
-- Table structure for blacklist
-- ----------------------------
DROP TABLE IF EXISTS `blacklist`;
CREATE TABLE `blacklist`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `other_user_id` int NOT NULL,
  `status` int NULL DEFAULT 1,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9762 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blacklist
-- ----------------------------
INSERT INTO `blacklist` VALUES (9761, 9006, 9005, 1, '2026-03-30 20:57:29');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT '用户ID',
  `post_id` int NOT NULL COMMENT '帖子ID',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '收藏描述',
  `status` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42010 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES (1, 3, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38', NULL, 1);
INSERT INTO `collection` VALUES (2, 1, 2, '2026-03-29 22:39:38', '2026-03-29 22:39:38', NULL, 1);
INSERT INTO `collection` VALUES (3, 5, 3, '2026-03-29 22:39:38', '2026-03-29 22:39:38', NULL, 1);
INSERT INTO `collection` VALUES (4, 2, 5, '2026-03-29 22:39:38', '2026-03-29 22:39:38', NULL, 1);
INSERT INTO `collection` VALUES (5, 4, 6, '2026-03-29 22:39:38', '2026-03-29 22:39:38', NULL, 1);
INSERT INTO `collection` VALUES (6, 1, 7, '2026-03-29 22:39:38', '2026-03-29 22:39:38', NULL, 1);
INSERT INTO `collection` VALUES (9721, 9003, 9101, '2026-03-30 17:24:13', '2026-03-30 20:57:29', NULL, 1);
INSERT INTO `collection` VALUES (9722, 9001, 9102, '2026-03-30 17:24:13', '2026-03-30 20:57:29', NULL, 1);
INSERT INTO `collection` VALUES (9723, 9005, 9103, '2026-03-30 17:24:13', '2026-03-30 20:57:29', NULL, 1);
INSERT INTO `collection` VALUES (9724, 9002, 9105, '2026-03-30 17:24:13', '2026-03-30 20:57:29', NULL, 1);
INSERT INTO `collection` VALUES (9725, 9004, 9106, '2026-03-30 17:24:13', '2026-03-30 20:57:29', NULL, 1);
INSERT INTO `collection` VALUES (9726, 9001, 9107, '2026-03-30 17:24:13', '2026-03-30 20:57:29', NULL, 1);
INSERT INTO `collection` VALUES (42001, 9004, 12001, '2026-03-24 12:47:00', '2026-03-24 12:47:00', '演示收藏: 天章楼（A楼）一楼自习区', 1);
INSERT INTO `collection` VALUES (42002, 9013, 12005, '2026-03-25 00:47:00', '2026-03-25 00:47:00', '演示收藏: 图文信息中心一楼服务台', 1);
INSERT INTO `collection` VALUES (42003, 9017, 12009, '2026-03-25 12:47:00', '2026-03-25 12:47:00', '演示收藏: 学生餐厅二楼靠窗区', 1);
INSERT INTO `collection` VALUES (42004, 9021, 12013, '2026-03-26 00:47:00', '2026-03-26 00:47:00', '演示收藏: 天章楼（A楼）一楼自习区', 1);
INSERT INTO `collection` VALUES (42005, 9025, 12017, '2026-03-26 12:47:00', '2026-03-26 12:47:00', '演示收藏: 图文信息中心一楼服务台', 1);
INSERT INTO `collection` VALUES (42006, 9029, 12021, '2026-03-27 00:47:00', '2026-03-27 00:47:00', '演示收藏: 学生餐厅二楼靠窗区', 1);
INSERT INTO `collection` VALUES (42007, 9033, 12025, '2026-03-27 12:47:00', '2026-03-27 12:47:00', '演示收藏: 天章楼（A楼）一楼自习区', 1);
INSERT INTO `collection` VALUES (42008, 9002, 12029, '2026-03-28 00:47:00', '2026-03-28 00:47:00', '演示收藏: 图文信息中心一楼服务台', 1);
INSERT INTO `collection` VALUES (42009, 9011, 12033, '2026-03-28 12:47:00', '2026-03-28 12:47:00', '演示收藏: 学生餐厅二楼靠窗区', 1);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL COMMENT '关联帖子表id',
  `commenter_id` int NOT NULL COMMENT '评论人id',
  `commented_user_id` int NOT NULL COMMENT '被评论人id',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `created_time` date NOT NULL COMMENT '创建时间',
  `updated_time` date NULL DEFAULT NULL COMMENT '更新时间',
  `deleted_time` date NULL DEFAULT NULL COMMENT '删除时间，若为null则未删除',
  `comment_type` int NOT NULL COMMENT '评论类型，分为一级评论和二级评论',
  `parent_id` int NULL DEFAULT NULL COMMENT '父级评论id，若为null则为一级评论',
  `status` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22307 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 1, 2, 1, '我中午在服务台看到过类似的校园卡，你可以去问问阿姨。', '2026-03-29', '2026-03-29', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (2, 2, 3, 2, '第一食堂失物招领角刚刚有人送去一个钱包，建议尽快过去确认。', '2026-03-29', '2026-03-29', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (3, 5, 1, 4, '这张卡是不是卡套边缘有一点裂口？如果是的话我认识失主。', '2026-03-29', '2026-03-29', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (4, 6, 5, 3, '钱包里如果有蓝色门禁卡，可能是我同学的，我去帮你问一下。', '2026-03-29', '2026-03-29', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (5, 7, 4, 1, '这把伞是不是伞骨有一点弯？我好像知道是谁的。', '2026-03-29', '2026-03-29', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (9201, 9101, 9002, 9001, '我中午在一楼服务台附近看到过类似的校园卡，你可以去问一下值班老师。', '2026-03-30', '2026-03-30', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (9202, 9101, 9004, 9001, '如果卡套里还有绿色便签，那应该就是你这张，我帮你留意一下。', '2026-03-30', '2026-03-30', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (9203, 9102, 9003, 9002, '学生餐厅失物招领角刚送去一个黑色钱包，你可以尽快去确认。', '2026-03-30', '2026-03-30', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (9204, 9103, 9001, 9003, '我下午在图文信息中心大厅见过一把深蓝色雨伞，可能是你的。', '2026-03-30', '2026-03-30', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (9205, 9105, 9001, 9004, '这张卡套是不是右下角有点磨白？如果是的话我认识失主。', '2026-03-30', '2026-03-30', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (9206, 9106, 9005, 9003, '钱包里如果有蓝色门禁卡，可能是我室友的，我帮你转告一下。', '2026-03-30', '2026-03-30', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (9207, 9107, 9004, 9001, '这把伞是不是伞骨有一点弯？如果是，我大概知道是谁丢的。', '2026-03-30', '2026-03-30', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (9208, 9102, 9001, 9002, '1', '2026-03-30', '2026-03-30', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22001, 12001, 9002, 9001, '我今天也在天章楼（A楼）一楼自习区附近活动过，先帮你留意一下校园卡。评论区有新消息的话我也会帮忙提醒一下。不行的话就先到图文信息中心一楼服务台确认。', '2026-03-24', '2026-03-24', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22002, 12001, 9003, 9001, '这类校园卡在天章楼（A楼）一楼自习区附近丢了之后，常有人先交到值班点。如果最后是在服务台找到的，记得回来更新一声。有进展的话也可以约在图文信息中心一楼服务台碰面。', '2026-03-24', '2026-03-24', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22003, 12001, 9004, 9001, '刚好看到你这条，校园卡要是落在天章楼（A楼）一楼自习区周边，找到的人一般会先收好。这类物品通常会先被送去比较显眼的认领点。可以优先去图文信息中心一楼服务台问问。', '2026-03-24', '2026-03-24', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22004, 12002, 9003, 9002, '这条招领信息写得挺清楚，认识失主的同学可以帮忙转一下。如果最后是在服务台找到的，记得回来更新一声。有进展的话也可以约在一站式学生社区服务台碰面。', '2026-03-25', '2026-03-25', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22005, 12003, 9004, 9003, '刚好看到你这条，U盘要是落在天工楼一楼大厅周边，找到的人一般会先收好。这类物品通常会先被送去比较显眼的认领点。可以优先去6号门（瑶泉路）值班台问问。', '2026-03-25', '2026-03-25', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22006, 12004, 9005, 9004, '我刚好路过这边，感觉这件保温杯应该是不久前落下的。不少同学看到后都会先拍照再联系，找到概率其实不低。建议先在图文信息中心一楼服务台附近留意一下。', '2026-03-25', '2026-03-25', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22007, 12004, 9011, 9004, '失主看到的话可以先核对一下保温杯的细节，地点提到的是天巧楼广场东侧。要是有人先代为保管，描述清楚细节就比较容易对上。不行的话就先到图文信息中心一楼服务台确认。', '2026-03-25', '2026-03-25', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22008, 12005, 9011, 9005, '我今天也在图文信息中心一楼服务台附近活动过，先帮你留意一下钥匙串。要是有人先代为保管，描述清楚细节就比较容易对上。不行的话就先到一站式学生社区服务台确认。', '2026-03-25', '2026-03-25', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22009, 12006, 9012, 9011, '这条招领信息写得挺清楚，认识失主的同学可以帮忙转一下。附近值班老师一般都会帮忙暂存。有进展的话也可以约在6号门（瑶泉路）值班台碰面。', '2026-03-25', '2026-03-25', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22010, 12007, 9013, 9012, '刚好看到你这条，充电器要是落在一站式学生社区服务台周边，找到的人一般会先收好。评论区有新消息的话我也会帮忙提醒一下。可以优先去图文信息中心一楼服务台问问。', '2026-03-25', '2026-03-25', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22011, 12007, 9014, 9012, '我晚点还会经过一站式学生社区服务台，如果看到和充电器相关的线索会回你。如果最后是在服务台找到的，记得回来更新一声。建议先在图文信息中心一楼服务台附近留意一下。', '2026-03-25', '2026-03-25', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22012, 12007, 9015, 9012, '我今天也在一站式学生社区服务台附近活动过，先帮你留意一下充电器。这类物品通常会先被送去比较显眼的认领点。不行的话就先到图文信息中心一楼服务台确认。', '2026-03-25', '2026-03-25', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22013, 12008, 9014, 9013, '我刚好路过这边，感觉这件雨伞应该是不久前落下的。如果最后是在服务台找到的，记得回来更新一声。建议先在一站式学生社区服务台附近留意一下。', '2026-03-25', '2026-03-25', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22014, 12009, 9015, 9014, '我今天也在学生餐厅二楼靠窗区附近活动过，先帮你留意一下手表。这类物品通常会先被送去比较显眼的认领点。不行的话就先到6号门（瑶泉路）值班台确认。', '2026-03-25', '2026-03-25', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22015, 12010, 9016, 9015, '这条招领信息写得挺清楚，认识失主的同学可以帮忙转一下。不少同学看到后都会先拍照再联系，找到概率其实不低。有进展的话也可以约在图文信息中心一楼服务台碰面。', '2026-03-26', '2026-03-26', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22016, 12010, 9017, 9015, '如果真是你的证件包，建议尽快去6号门（瑶泉路）值班台附近确认。要是有人先代为保管，描述清楚细节就比较容易对上。可以优先去图文信息中心一楼服务台问问。', '2026-03-26', '2026-03-26', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22017, 12011, 9017, 9016, '刚好看到你这条，笔记本要是落在7号门门卫处周边，找到的人一般会先收好。要是有人先代为保管，描述清楚细节就比较容易对上。可以优先去一站式学生社区服务台问问。', '2026-03-26', '2026-03-26', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22018, 12012, 9018, 9017, '我刚好路过这边，感觉这件数据线应该是不久前落下的。附近值班老师一般都会帮忙暂存。建议先在6号门（瑶泉路）值班台附近留意一下。', '2026-03-26', '2026-03-26', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22019, 12013, 9019, 9018, '我今天也在天章楼（A楼）一楼自习区附近活动过，先帮你留意一下校园卡。评论区有新消息的话我也会帮忙提醒一下。不行的话就先到图文信息中心一楼服务台确认。', '2026-03-26', '2026-03-26', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22020, 12013, 9020, 9018, '这类校园卡在天章楼（A楼）一楼自习区附近丢了之后，常有人先交到值班点。如果最后是在服务台找到的，记得回来更新一声。有进展的话也可以约在图文信息中心一楼服务台碰面。', '2026-03-26', '2026-03-26', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22021, 12013, 9021, 9018, '刚好看到你这条，校园卡要是落在天章楼（A楼）一楼自习区周边，找到的人一般会先收好。这类物品通常会先被送去比较显眼的认领点。可以优先去图文信息中心一楼服务台问问。', '2026-03-26', '2026-03-26', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22022, 12014, 9020, 9019, '这条招领信息写得挺清楚，认识失主的同学可以帮忙转一下。如果最后是在服务台找到的，记得回来更新一声。有进展的话也可以约在一站式学生社区服务台碰面。', '2026-03-26', '2026-03-26', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22023, 12015, 9021, 9020, '刚好看到你这条，U盘要是落在天工楼一楼大厅周边，找到的人一般会先收好。这类物品通常会先被送去比较显眼的认领点。可以优先去6号门（瑶泉路）值班台问问。', '2026-03-26', '2026-03-26', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22024, 12016, 9022, 9021, '我刚好路过这边，感觉这件保温杯应该是不久前落下的。不少同学看到后都会先拍照再联系，找到概率其实不低。建议先在图文信息中心一楼服务台附近留意一下。', '2026-03-26', '2026-03-26', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22025, 12016, 9023, 9021, '失主看到的话可以先核对一下保温杯的细节，地点提到的是天巧楼广场东侧。要是有人先代为保管，描述清楚细节就比较容易对上。不行的话就先到图文信息中心一楼服务台确认。', '2026-03-26', '2026-03-26', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22026, 12017, 9023, 9022, '我今天也在图文信息中心一楼服务台附近活动过，先帮你留意一下钥匙串。要是有人先代为保管，描述清楚细节就比较容易对上。不行的话就先到一站式学生社区服务台确认。', '2026-03-26', '2026-03-26', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22027, 12018, 9024, 9023, '这条招领信息写得挺清楚，认识失主的同学可以帮忙转一下。附近值班老师一般都会帮忙暂存。有进展的话也可以约在6号门（瑶泉路）值班台碰面。', '2026-03-27', '2026-03-27', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22028, 12019, 9025, 9024, '刚好看到你这条，充电器要是落在一站式学生社区服务台周边，找到的人一般会先收好。评论区有新消息的话我也会帮忙提醒一下。可以优先去图文信息中心一楼服务台问问。', '2026-03-27', '2026-03-27', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22029, 12019, 9026, 9024, '我晚点还会经过一站式学生社区服务台，如果看到和充电器相关的线索会回你。如果最后是在服务台找到的，记得回来更新一声。建议先在图文信息中心一楼服务台附近留意一下。', '2026-03-27', '2026-03-27', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22030, 12019, 9027, 9024, '我今天也在一站式学生社区服务台附近活动过，先帮你留意一下充电器。这类物品通常会先被送去比较显眼的认领点。不行的话就先到图文信息中心一楼服务台确认。', '2026-03-27', '2026-03-27', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22031, 12020, 9026, 9025, '我刚好路过这边，感觉这件雨伞应该是不久前落下的。如果最后是在服务台找到的，记得回来更新一声。建议先在一站式学生社区服务台附近留意一下。', '2026-03-27', '2026-03-27', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22032, 12021, 9027, 9026, '我今天也在学生餐厅二楼靠窗区附近活动过，先帮你留意一下手表。这类物品通常会先被送去比较显眼的认领点。不行的话就先到6号门（瑶泉路）值班台确认。', '2026-03-27', '2026-03-27', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22033, 12022, 9028, 9027, '这条招领信息写得挺清楚，认识失主的同学可以帮忙转一下。不少同学看到后都会先拍照再联系，找到概率其实不低。有进展的话也可以约在图文信息中心一楼服务台碰面。', '2026-03-27', '2026-03-27', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22034, 12022, 9029, 9027, '如果真是你的证件包，建议尽快去6号门（瑶泉路）值班台附近确认。要是有人先代为保管，描述清楚细节就比较容易对上。可以优先去图文信息中心一楼服务台问问。', '2026-03-27', '2026-03-27', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22035, 12023, 9029, 9028, '刚好看到你这条，笔记本要是落在7号门门卫处周边，找到的人一般会先收好。要是有人先代为保管，描述清楚细节就比较容易对上。可以优先去一站式学生社区服务台问问。', '2026-03-27', '2026-03-27', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22036, 12024, 9030, 9029, '我刚好路过这边，感觉这件数据线应该是不久前落下的。附近值班老师一般都会帮忙暂存。建议先在6号门（瑶泉路）值班台附近留意一下。', '2026-03-27', '2026-03-27', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22037, 12025, 9031, 9030, '我今天也在天章楼（A楼）一楼自习区附近活动过，先帮你留意一下校园卡。评论区有新消息的话我也会帮忙提醒一下。不行的话就先到图文信息中心一楼服务台确认。', '2026-03-27', '2026-03-27', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22038, 12025, 9032, 9030, '这类校园卡在天章楼（A楼）一楼自习区附近丢了之后，常有人先交到值班点。如果最后是在服务台找到的，记得回来更新一声。有进展的话也可以约在图文信息中心一楼服务台碰面。', '2026-03-27', '2026-03-27', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22039, 12025, 9033, 9030, '刚好看到你这条，校园卡要是落在天章楼（A楼）一楼自习区周边，找到的人一般会先收好。这类物品通常会先被送去比较显眼的认领点。可以优先去图文信息中心一楼服务台问问。', '2026-03-27', '2026-03-27', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22040, 12026, 9032, 9031, '这条招领信息写得挺清楚，认识失主的同学可以帮忙转一下。如果最后是在服务台找到的，记得回来更新一声。有进展的话也可以约在一站式学生社区服务台碰面。', '2026-03-28', '2026-03-28', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22041, 12027, 9033, 9032, '刚好看到你这条，U盘要是落在天工楼一楼大厅周边，找到的人一般会先收好。这类物品通常会先被送去比较显眼的认领点。可以优先去6号门（瑶泉路）值班台问问。', '2026-03-28', '2026-03-28', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22042, 12028, 9034, 9033, '我刚好路过这边，感觉这件保温杯应该是不久前落下的。不少同学看到后都会先拍照再联系，找到概率其实不低。建议先在图文信息中心一楼服务台附近留意一下。', '2026-03-28', '2026-03-28', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22043, 12028, 9035, 9033, '失主看到的话可以先核对一下保温杯的细节，地点提到的是天巧楼广场东侧。要是有人先代为保管，描述清楚细节就比较容易对上。不行的话就先到图文信息中心一楼服务台确认。', '2026-03-28', '2026-03-28', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22044, 12029, 9035, 9034, '我今天也在图文信息中心一楼服务台附近活动过，先帮你留意一下钥匙串。要是有人先代为保管，描述清楚细节就比较容易对上。不行的话就先到一站式学生社区服务台确认。', '2026-03-28', '2026-03-28', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22045, 12030, 9001, 9035, '这条招领信息写得挺清楚，认识失主的同学可以帮忙转一下。附近值班老师一般都会帮忙暂存。有进展的话也可以约在6号门（瑶泉路）值班台碰面。', '2026-03-28', '2026-03-28', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22046, 12031, 9002, 9001, '刚好看到你这条，充电器要是落在一站式学生社区服务台周边，找到的人一般会先收好。评论区有新消息的话我也会帮忙提醒一下。可以优先去图文信息中心一楼服务台问问。', '2026-03-28', '2026-03-28', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22047, 12031, 9003, 9001, '我晚点还会经过一站式学生社区服务台，如果看到和充电器相关的线索会回你。如果最后是在服务台找到的，记得回来更新一声。建议先在图文信息中心一楼服务台附近留意一下。', '2026-03-28', '2026-03-28', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22048, 12031, 9004, 9001, '我今天也在一站式学生社区服务台附近活动过，先帮你留意一下充电器。这类物品通常会先被送去比较显眼的认领点。不行的话就先到图文信息中心一楼服务台确认。', '2026-03-28', '2026-03-28', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22049, 12032, 9003, 9002, '我刚好路过这边，感觉这件雨伞应该是不久前落下的。如果最后是在服务台找到的，记得回来更新一声。建议先在一站式学生社区服务台附近留意一下。', '2026-03-28', '2026-03-28', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22050, 12033, 9004, 9003, '我今天也在学生餐厅二楼靠窗区附近活动过，先帮你留意一下手表。这类物品通常会先被送去比较显眼的认领点。不行的话就先到6号门（瑶泉路）值班台确认。', '2026-03-28', '2026-03-28', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22301, 3, 9004, 3, '我晚点还会经过教学楼丢失折叠雨伞，如果看到和雨伞相关的线索会回你。不少同学看到后都会先拍照再联系，找到概率其实不低。建议先在学生餐厅一楼入口处附近留意一下。', '2026-03-30', '2026-03-30', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22302, 4, 9005, 5, '我今天也在操场看台丢失耳机盒附近活动过，先帮你留意一下电子设备。要是有人先代为保管，描述清楚细节就比较容易对上。不行的话就先到6号门（瑶泉路）值班台确认。', '2026-03-30', '2026-03-30', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22303, 8, 9014, 2, '失主看到的话可以先核对一下电子设备的细节，地点提到的是实验楼捡到银色U盘。这类物品通常会先被送去比较显眼的认领点。不行的话就先到一站式学生社区服务台确认。', '2026-03-30', '2026-03-30', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22304, 14, 9020, 20250001, '如果真是你的雨伞，建议尽快去捡到一把蓝色雨伞附近确认。这类物品通常会先被送去比较显眼的认领点。可以优先去一站式学生社区服务台问问。', '2026-03-30', '2026-03-30', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22305, 9104, 9020, 9005, '我今天也在学生公寓3号楼门口附近活动过，先帮你留意一下电子设备。这类物品通常会先被送去比较显眼的认领点。不行的话就先到一站式学生社区服务台确认。', '2026-03-31', '2026-03-31', NULL, 1, NULL, 1);
INSERT INTO `comments` VALUES (22306, 9108, 9024, 9002, '失主看到的话可以先核对一下电子设备的细节，地点提到的是天铎楼（B楼）三楼机房外。评论区有新消息的话我也会帮忙提醒一下。不行的话就先到图文信息中心一楼服务台确认。', '2026-03-31', '2026-03-31', NULL, 1, NULL, 1);

-- ----------------------------
-- Table structure for follow
-- ----------------------------
DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `follower_id` int NOT NULL,
  `following_id` int NOT NULL,
  `status` int NULL DEFAULT 1,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9735 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of follow
-- ----------------------------
INSERT INTO `follow` VALUES (1, 1, 3, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `follow` VALUES (2, 2, 4, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `follow` VALUES (3, 3, 1, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `follow` VALUES (4, 5, 2, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `follow` VALUES (9731, 9001, 9003, 1, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `follow` VALUES (9732, 9002, 9004, 1, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `follow` VALUES (9733, 9003, 9001, 1, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `follow` VALUES (9734, 9005, 9002, 1, '2026-03-30 17:24:13', '2026-03-30 20:57:29');

-- ----------------------------
-- Table structure for legacy_account_binding
-- ----------------------------
DROP TABLE IF EXISTS `legacy_account_binding`;
CREATE TABLE `legacy_account_binding`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `account` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` int NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `openid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_legacy_account_binding_account`(`account` ASC) USING BTREE,
  UNIQUE INDEX `uk_legacy_account_binding_user_id`(`user_id` ASC) USING BTREE,
  INDEX `idx_legacy_account_binding_openid`(`openid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9928 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of legacy_account_binding
-- ----------------------------
INSERT INTO `legacy_account_binding` VALUES (9801, '20250001', 9001, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 17:24:13', '2026-03-30 22:15:07');
INSERT INTO `legacy_account_binding` VALUES (9802, '20250002', 9002, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 17:24:13', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9803, '20250003', 9003, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 17:24:13', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9804, '20250004', 9004, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 17:24:13', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9805, '20250005', 9005, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 17:24:13', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9806, '20259999', 9006, '{bcrypt}$2a$10$F26drCYvCTiWitUFnDOOgejKjxX57P/.r6MU3.Fi.tIG6wZEjTtuW', 'wx_625493483', '2026-03-30 17:24:13', '2026-03-31 00:02:48');
INSERT INTO `legacy_account_binding` VALUES (9812, '20250011', 9011, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9813, '20250012', 9012, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9814, '20250013', 9013, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9815, '20250014', 9014, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9816, '20250015', 9015, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9817, '20250016', 9016, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9818, '20250017', 9017, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9819, '20250018', 9018, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9820, '20250019', 9019, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9821, '20250020', 9020, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9822, '20250021', 9021, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9823, '20250022', 9022, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9824, '20250023', 9023, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9825, '20250024', 9024, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9826, '20250025', 9025, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9827, '20250026', 9026, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9828, '20250027', 9027, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9829, '20250028', 9028, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9830, '20250029', 9029, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9831, '20250030', 9030, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9832, '20250031', 9031, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9833, '20250032', 9032, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9834, '20250033', 9033, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9835, '20250034', 9034, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9836, '20250035', 9035, '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', NULL, '2026-03-30 19:00:49', '2026-03-30 20:57:30');
INSERT INTO `legacy_account_binding` VALUES (9927, '2324323141', 20250002, '$2a$10$TwJWlu6jLYdd6xg3v9lVjeyziUtGtm4XOjcIFYERZTVZuzQ4/EuP2', NULL, '2026-03-30 23:37:39', '2026-03-31 00:02:39');

-- ----------------------------
-- Table structure for likes
-- ----------------------------
DROP TABLE IF EXISTS `likes`;
CREATE TABLE `likes`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32062 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of likes
-- ----------------------------
INSERT INTO `likes` VALUES (1, 2, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38', 1);
INSERT INTO `likes` VALUES (2, 3, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38', 1);
INSERT INTO `likes` VALUES (3, 4, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38', 1);
INSERT INTO `likes` VALUES (4, 1, 2, '2026-03-29 22:39:38', '2026-03-29 22:39:38', 1);
INSERT INTO `likes` VALUES (5, 3, 2, '2026-03-29 22:39:38', '2026-03-29 22:39:38', 1);
INSERT INTO `likes` VALUES (6, 5, 2, '2026-03-29 22:39:38', '2026-03-29 22:39:38', 1);
INSERT INTO `likes` VALUES (7, 2, 3, '2026-03-29 22:39:38', '2026-03-29 22:39:38', 1);
INSERT INTO `likes` VALUES (8, 1, 5, '2026-03-29 22:39:38', '2026-03-29 22:39:38', 1);
INSERT INTO `likes` VALUES (9, 3, 5, '2026-03-29 22:39:38', '2026-03-29 22:39:38', 1);
INSERT INTO `likes` VALUES (10, 4, 6, '2026-03-29 22:39:38', '2026-03-29 22:39:38', 1);
INSERT INTO `likes` VALUES (11, 1, 7, '2026-03-29 22:39:38', '2026-03-29 22:39:38', 1);
INSERT INTO `likes` VALUES (12, 5, 7, '2026-03-29 22:39:38', '2026-03-29 22:39:38', 1);
INSERT INTO `likes` VALUES (9701, 9002, 9101, '2026-03-30 17:24:13', '2026-03-30 20:57:29', 1);
INSERT INTO `likes` VALUES (9702, 9003, 9101, '2026-03-30 17:24:13', '2026-03-30 20:57:29', 1);
INSERT INTO `likes` VALUES (9703, 9004, 9101, '2026-03-30 17:24:13', '2026-03-30 20:57:29', 1);
INSERT INTO `likes` VALUES (9704, 9001, 9102, '2026-03-30 17:24:13', '2026-03-30 20:57:29', 1);
INSERT INTO `likes` VALUES (9705, 9003, 9102, '2026-03-30 17:24:13', '2026-03-30 20:57:29', 1);
INSERT INTO `likes` VALUES (9706, 9002, 9103, '2026-03-30 17:24:13', '2026-03-30 20:57:29', 1);
INSERT INTO `likes` VALUES (9707, 9004, 9104, '2026-03-30 17:24:13', '2026-03-30 20:57:29', 1);
INSERT INTO `likes` VALUES (9708, 9001, 9105, '2026-03-30 18:20:41', '2026-03-30 20:57:29', 1);
INSERT INTO `likes` VALUES (9709, 9003, 9105, '2026-03-30 17:24:13', '2026-03-30 20:57:29', 1);
INSERT INTO `likes` VALUES (9710, 9004, 9106, '2026-03-30 17:24:13', '2026-03-30 20:57:29', 1);
INSERT INTO `likes` VALUES (9711, 9001, 9107, '2026-03-30 17:24:13', '2026-03-30 20:57:29', 1);
INSERT INTO `likes` VALUES (9712, 9005, 9107, '2026-03-30 17:24:13', '2026-03-30 20:57:29', 1);
INSERT INTO `likes` VALUES (9720, 9001, 9105, '2026-03-30 09:52:37', '2026-03-30 09:52:37', 1);
INSERT INTO `likes` VALUES (32001, 9003, 12001, '2026-03-24 12:27:00', '2026-03-24 12:27:00', 1);
INSERT INTO `likes` VALUES (32002, 9004, 12001, '2026-03-24 12:33:00', '2026-03-24 12:33:00', 1);
INSERT INTO `likes` VALUES (32003, 9005, 12001, '2026-03-24 12:39:00', '2026-03-24 12:39:00', 1);
INSERT INTO `likes` VALUES (32004, 9004, 12002, '2026-03-24 15:27:00', '2026-03-24 15:27:00', 1);
INSERT INTO `likes` VALUES (32005, 9005, 12003, '2026-03-24 18:27:00', '2026-03-24 18:27:00', 1);
INSERT INTO `likes` VALUES (32006, 9011, 12004, '2026-03-24 21:27:00', '2026-03-24 21:27:00', 1);
INSERT INTO `likes` VALUES (32007, 9012, 12004, '2026-03-24 21:33:00', '2026-03-24 21:33:00', 1);
INSERT INTO `likes` VALUES (32008, 9012, 12005, '2026-03-25 00:27:00', '2026-03-25 00:27:00', 1);
INSERT INTO `likes` VALUES (32009, 9013, 12006, '2026-03-25 03:27:00', '2026-03-25 03:27:00', 1);
INSERT INTO `likes` VALUES (32010, 9014, 12006, '2026-03-25 03:33:00', '2026-03-25 03:33:00', 1);
INSERT INTO `likes` VALUES (32011, 9015, 12006, '2026-03-25 03:39:00', '2026-03-25 03:39:00', 1);
INSERT INTO `likes` VALUES (32012, 9014, 12007, '2026-03-25 06:27:00', '2026-03-25 06:27:00', 1);
INSERT INTO `likes` VALUES (32013, 9015, 12007, '2026-03-25 06:33:00', '2026-03-25 06:33:00', 1);
INSERT INTO `likes` VALUES (32014, 9015, 12008, '2026-03-25 09:27:00', '2026-03-25 09:27:00', 1);
INSERT INTO `likes` VALUES (32015, 9016, 12009, '2026-03-25 12:27:00', '2026-03-25 12:27:00', 1);
INSERT INTO `likes` VALUES (32016, 9017, 12010, '2026-03-25 15:27:00', '2026-03-25 15:27:00', 1);
INSERT INTO `likes` VALUES (32017, 9018, 12010, '2026-03-25 15:33:00', '2026-03-25 15:33:00', 1);
INSERT INTO `likes` VALUES (32018, 9018, 12011, '2026-03-25 18:27:00', '2026-03-25 18:27:00', 1);
INSERT INTO `likes` VALUES (32019, 9019, 12011, '2026-03-25 18:33:00', '2026-03-25 18:33:00', 1);
INSERT INTO `likes` VALUES (32020, 9020, 12011, '2026-03-25 18:39:00', '2026-03-25 18:39:00', 1);
INSERT INTO `likes` VALUES (32021, 9019, 12012, '2026-03-25 21:27:00', '2026-03-25 21:27:00', 1);
INSERT INTO `likes` VALUES (32022, 9020, 12013, '2026-03-26 00:27:00', '2026-03-26 00:27:00', 1);
INSERT INTO `likes` VALUES (32023, 9021, 12013, '2026-03-26 00:33:00', '2026-03-26 00:33:00', 1);
INSERT INTO `likes` VALUES (32024, 9021, 12014, '2026-03-26 03:27:00', '2026-03-26 03:27:00', 1);
INSERT INTO `likes` VALUES (32025, 9022, 12015, '2026-03-26 06:27:00', '2026-03-26 06:27:00', 1);
INSERT INTO `likes` VALUES (32026, 9023, 12016, '2026-03-26 09:27:00', '2026-03-26 09:27:00', 1);
INSERT INTO `likes` VALUES (32027, 9024, 12016, '2026-03-26 09:33:00', '2026-03-26 09:33:00', 1);
INSERT INTO `likes` VALUES (32028, 9025, 12016, '2026-03-26 09:39:00', '2026-03-26 09:39:00', 1);
INSERT INTO `likes` VALUES (32029, 9024, 12017, '2026-03-26 12:27:00', '2026-03-26 12:27:00', 1);
INSERT INTO `likes` VALUES (32030, 9025, 12018, '2026-03-26 15:27:00', '2026-03-26 15:27:00', 1);
INSERT INTO `likes` VALUES (32031, 9026, 12019, '2026-03-26 18:27:00', '2026-03-26 18:27:00', 1);
INSERT INTO `likes` VALUES (32032, 9027, 12019, '2026-03-26 18:33:00', '2026-03-26 18:33:00', 1);
INSERT INTO `likes` VALUES (32033, 9027, 12020, '2026-03-26 21:27:00', '2026-03-26 21:27:00', 1);
INSERT INTO `likes` VALUES (32034, 9028, 12021, '2026-03-27 00:27:00', '2026-03-27 00:27:00', 1);
INSERT INTO `likes` VALUES (32035, 9029, 12021, '2026-03-27 00:33:00', '2026-03-27 00:33:00', 1);
INSERT INTO `likes` VALUES (32036, 9030, 12021, '2026-03-27 00:39:00', '2026-03-27 00:39:00', 1);
INSERT INTO `likes` VALUES (32037, 9029, 12022, '2026-03-27 03:27:00', '2026-03-27 03:27:00', 1);
INSERT INTO `likes` VALUES (32038, 9030, 12022, '2026-03-27 03:33:00', '2026-03-27 03:33:00', 1);
INSERT INTO `likes` VALUES (32039, 9030, 12023, '2026-03-27 06:27:00', '2026-03-27 06:27:00', 1);
INSERT INTO `likes` VALUES (32040, 9031, 12024, '2026-03-27 09:27:00', '2026-03-27 09:27:00', 1);
INSERT INTO `likes` VALUES (32041, 9032, 12025, '2026-03-27 12:27:00', '2026-03-27 12:27:00', 1);
INSERT INTO `likes` VALUES (32042, 9033, 12025, '2026-03-27 12:33:00', '2026-03-27 12:33:00', 1);
INSERT INTO `likes` VALUES (32043, 9033, 12026, '2026-03-27 15:27:00', '2026-03-27 15:27:00', 1);
INSERT INTO `likes` VALUES (32044, 9034, 12026, '2026-03-27 15:33:00', '2026-03-27 15:33:00', 1);
INSERT INTO `likes` VALUES (32045, 9035, 12026, '2026-03-27 15:39:00', '2026-03-27 15:39:00', 1);
INSERT INTO `likes` VALUES (32046, 9034, 12027, '2026-03-27 18:27:00', '2026-03-27 18:27:00', 1);
INSERT INTO `likes` VALUES (32047, 9035, 12028, '2026-03-27 21:27:00', '2026-03-27 21:27:00', 1);
INSERT INTO `likes` VALUES (32048, 9001, 12028, '2026-03-27 21:33:00', '2026-03-27 21:33:00', 1);
INSERT INTO `likes` VALUES (32049, 9001, 12029, '2026-03-28 00:27:00', '2026-03-28 00:27:00', 1);
INSERT INTO `likes` VALUES (32050, 9002, 12030, '2026-03-28 03:27:00', '2026-03-28 03:27:00', 1);
INSERT INTO `likes` VALUES (32051, 9003, 12031, '2026-03-28 06:27:00', '2026-03-28 06:27:00', 1);
INSERT INTO `likes` VALUES (32052, 9004, 12031, '2026-03-28 06:33:00', '2026-03-28 06:33:00', 1);
INSERT INTO `likes` VALUES (32053, 9005, 12031, '2026-03-28 06:39:00', '2026-03-28 06:39:00', 1);
INSERT INTO `likes` VALUES (32054, 9004, 12032, '2026-03-28 09:27:00', '2026-03-28 09:27:00', 1);
INSERT INTO `likes` VALUES (32055, 9005, 12033, '2026-03-28 12:27:00', '2026-03-28 12:27:00', 1);
INSERT INTO `likes` VALUES (32060, 9006, 8, '2026-03-30 14:27:18', '2026-03-30 14:27:18', 1);
INSERT INTO `likes` VALUES (32061, 9006, 12026, '2026-03-31 04:06:37', '2026-03-31 04:06:37', 1);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `type` int NULL DEFAULT 1,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `result` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT 1,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52012 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, 1, 1, '你发布的“图书馆丢失校园卡”有新的评论，请及时查看。', '待查看', 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `message` VALUES (2, 2, 1, '你关注的招领信息“实验楼捡到银色U盘”有新的互动。', '待查看', 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `message` VALUES (3, 4, 2, '管理员提醒：招领信息请在确认失主后及时标记处理结果。', '已发送', 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `message` VALUES (9751, 9001, 1, '你发布的“天章楼（A楼）一楼自习区”有新的评论，记得及时查看。', '待查看', 1, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `message` VALUES (9752, 9002, 1, '你关注的招领信息“天铎楼（B楼）三楼机房外”有新的互动。', '待查看', 1, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `message` VALUES (9753, 9004, 2, '管理站提醒：招领信息请在确认失主后及时标记处理结果。', '已发送', 1, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `message` VALUES (52001, 9001, 1, '你发布的“天章楼（A楼）一楼自习区”已有新的互动，系统已为演示数据自动生成提醒。', '待查看', 1, '2026-03-24 14:12:00', '2026-03-24 14:12:00');
INSERT INTO `message` VALUES (52002, 9004, 1, '你发布的“天巧楼广场东侧”已有新的互动，系统已为演示数据自动生成提醒。', '待查看', 1, '2026-03-24 23:12:00', '2026-03-24 23:12:00');
INSERT INTO `message` VALUES (52003, 9012, 1, '你发布的“一站式学生社区服务台”已有新的互动，系统已为演示数据自动生成提醒。', '待查看', 1, '2026-03-25 08:12:00', '2026-03-25 08:12:00');
INSERT INTO `message` VALUES (52004, 9015, 1, '你发布的“6号门（瑶泉路）值班台”已有新的互动，系统已为演示数据自动生成提醒。', '待查看', 1, '2026-03-25 17:12:00', '2026-03-25 17:12:00');
INSERT INTO `message` VALUES (52005, 9018, 1, '你发布的“天章楼（A楼）一楼自习区”已有新的互动，系统已为演示数据自动生成提醒。', '待查看', 1, '2026-03-26 02:12:00', '2026-03-26 02:12:00');
INSERT INTO `message` VALUES (52006, 9021, 1, '你发布的“天巧楼广场东侧”已有新的互动，系统已为演示数据自动生成提醒。', '待查看', 1, '2026-03-26 11:12:00', '2026-03-26 11:12:00');
INSERT INTO `message` VALUES (52007, 9024, 1, '你发布的“一站式学生社区服务台”已有新的互动，系统已为演示数据自动生成提醒。', '待查看', 1, '2026-03-26 20:12:00', '2026-03-26 20:12:00');
INSERT INTO `message` VALUES (52008, 9027, 1, '你发布的“6号门（瑶泉路）值班台”已有新的互动，系统已为演示数据自动生成提醒。', '待查看', 1, '2026-03-27 05:12:00', '2026-03-27 05:12:00');
INSERT INTO `message` VALUES (52009, 9030, 1, '你发布的“天章楼（A楼）一楼自习区”已有新的互动，系统已为演示数据自动生成提醒。', '待查看', 1, '2026-03-27 14:12:00', '2026-03-27 14:12:00');
INSERT INTO `message` VALUES (52010, 9033, 1, '你发布的“天巧楼广场东侧”已有新的互动，系统已为演示数据自动生成提醒。', '待查看', 1, '2026-03-27 23:12:00', '2026-03-27 23:12:00');
INSERT INTO `message` VALUES (52011, 9001, 1, '你发布的“一站式学生社区服务台”已有新的互动，系统已为演示数据自动生成提醒。', '待查看', 1, '2026-03-28 08:12:00', '2026-03-28 08:12:00');

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '权限名称',
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '权限描述',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9516 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, '发布帖子', '允许发布失物或招领帖子', '2026-03-29 22:39:38', '2026-03-29 22:39:38', 0);
INSERT INTO `permissions` VALUES (2, '管理帖子', '允许下架违规帖子', '2026-03-29 22:39:38', '2026-03-29 22:39:38', 0);
INSERT INTO `permissions` VALUES (3, '管理用户', '允许查看和处理用户反馈', '2026-03-29 22:39:38', '2026-03-29 22:39:38', 0);
INSERT INTO `permissions` VALUES (9511, '浏览帖子', '允许查看帖子和评论', '2026-03-30 17:24:13', '2026-03-30 20:57:29', 0);
INSERT INTO `permissions` VALUES (9512, '发布帖子', '允许发布失物或招领信息', '2026-03-30 17:24:13', '2026-03-30 20:57:29', 0);
INSERT INTO `permissions` VALUES (9513, '管理帖子', '允许删除违规帖子', '2026-03-30 17:24:13', '2026-03-30 20:57:29', 0);
INSERT INTO `permissions` VALUES (9514, '管理用户', '允许处理用户资料和反馈', '2026-03-30 17:24:13', '2026-03-30 20:57:29', 0);
INSERT INTO `permissions` VALUES (9515, '处理举报', '允许查看并处理举报记录', '2026-03-30 17:24:13', '2026-03-30 20:57:29', 0);

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` int NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `image` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `count` int NULL DEFAULT 0,
  `user_id` int NULL DEFAULT NULL,
  `comment_num` int NULL DEFAULT 0,
  `collection_num` int NULL DEFAULT 0,
  `likes_num` int NULL DEFAULT 0,
  `tags` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT 1,
  `is_deleted` tinyint NULL DEFAULT 0,
  `created_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12035 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES (1, 1, '图书馆丢失校园卡', '[]', '今天上午在图书馆一楼自习区丢失一张校园卡，卡套是透明的，上面贴了蓝色贴纸。如果有同学捡到，麻烦联系我，非常感谢。', 18, 1, 1, 1, 3, '校园卡,证件,丢失', '小林', 1, 0, '2026-03-29 22:39:38', '2026-03-30 20:57:31');
INSERT INTO `post` VALUES (2, 1, '食堂丢失黑色钱包', '[]', '中午在第一食堂靠窗位置吃饭后发现黑色短款钱包不见了，里面有身份证、饭卡和少量现金，希望好心人联系我。', 22, 2, 1, 2, 4, '钱包,证件,丢失', '小周', 1, 0, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `post` VALUES (3, 1, '教学楼丢失折叠雨伞', '[]', '下午上完课后把一把深蓝色折叠雨伞落在教学楼A座302教室，伞柄有白色挂绳，如果有人看到请告知。', 11, 3, 1, 1, 2, '雨伞,生活用品,丢失', '小陈', 1, 0, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `post` VALUES (4, 1, '操场看台丢失耳机盒', '[]', '昨晚在操场看台丢失一个白色蓝牙耳机盒，盒盖上有一枚小星星贴纸，里面耳机不在盒里。', 9, 5, 1, 1, 1, '电子设备,丢失', '小吴', 1, 0, '2026-03-29 22:39:38', '2026-03-30 20:57:31');
INSERT INTO `post` VALUES (5, 2, '二食堂门口捡到校园卡', '[]', '在第二食堂门口台阶处捡到一张校园卡，卡套是透明磨砂的，失主可描述卡面信息后联系认领。', 16, 4, 1, 1, 3, '校园卡,招领,证件', '小何', 1, 0, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `post` VALUES (6, 2, '宿舍楼下捡到棕色钱包', '[]', '晚上在宿舍5号楼门口捡到一个棕色钱包，里面有门禁卡和少量零钱，已暂时保管。', 14, 3, 1, 1, 2, '钱包,招领,证件', '小陈', 1, 0, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `post` VALUES (7, 2, '图书馆门口捡到黑色长柄雨伞', '[]', '傍晚离开图书馆时在门口雨伞架发现一把黑色长柄雨伞，伞面内侧有白色字样，需要的同学可联系我。', 13, 1, 1, 1, 2, '雨伞,招领,生活用品', '小林', 1, 0, '2026-03-29 22:39:38', '2026-03-30 20:57:31');
INSERT INTO `post` VALUES (8, 2, '实验楼捡到银色U盘', '[]', '在实验楼三楼机房门口捡到一个银色U盘，外壳有红色编号贴纸，失主可说明容量与贴纸内容后认领。', 10, 2, 1, 0, 1, '电子设备,招领', '小周', 1, 0, '2026-03-29 22:39:38', '2026-03-30 20:57:31');
INSERT INTO `post` VALUES (9, 2, 'Found: Gold Watch', 'http://example.com/watch.jpg', 'Found a beautiful gold watch near the main gate of campus. Style looks vintage. Contact information desk with description of your watch for verification and to claim.', 20, 5, 6, 10, 12, 'Watch,Found', 'sunqi', 1, 1, '2026-03-29 19:21:20', '2026-03-30 08:58:48');
INSERT INTO `post` VALUES (10, 1, 'Lost: Wallet with Important Documents', 'http://example.com/wallet.jpg', 'Lost my brown leather wallet containing ID, credit cards and cash. Lost in the dining hall or cafeteria area. Please help find it! Will offer reward.', 22, 3, 8, 12, 15, 'Wallet,Documents,Lost,Reward', 'wangwu', 1, 1, '2026-03-29 19:21:20', '2026-03-30 08:58:49');
INSERT INTO `post` VALUES (14, 2, '捡到一把蓝色雨伞', '[\"http://127.0.0.1:19080/static/image/2a56aceb-6f1f-415d-b047-2c7e2642aa2c.jpg\"]', '在教学楼下捡到一把蓝色折叠雨伞，失主可联系认领。', 0, 20250001, 1, 0, 0, '雨伞', '本地测试用户', 1, 0, '2026-03-29 14:44:34', '2026-03-30 20:57:31');
INSERT INTO `post` VALUES (15, 2, '雨伞', '[]', 'test', 0, 20250001, 0, 0, 0, '雨伞', '本地测试用户', 1, 1, '2026-03-29 15:20:14', '2026-03-30 07:24:08');
INSERT INTO `post` VALUES (16, 1, '雨伞', '[]', '你号', 0, 90002, 0, 0, 0, '雨伞', '微信用户', 1, 1, '2026-03-29 15:22:19', '2026-03-30 07:24:10');
INSERT INTO `post` VALUES (9101, 1, '天章楼（A楼）一楼自习区', '[]', '今天上午在天章楼（A楼）一楼自习区遗失了一张校园卡，卡套是透明磨砂款，里面还夹着一张绿色便签。若有同学拾到，麻烦联系我。', 38, 9001, 2, 1, 3, '校园卡,证件,丢失', '林柚', 1, 0, '2026-03-30 17:24:13', '2026-03-30 17:24:13');
INSERT INTO `post` VALUES (9102, 1, '学生餐厅二楼靠窗位置', '[]', '中午在学生餐厅二楼吃饭后发现黑色短款钱包不见了，里面有饭卡、身份证和少量现金，希望捡到的同学和我联系。', 41, 9002, 2, 1, 2, '钱包,证件,丢失', '周屿', 1, 0, '2026-03-30 17:24:13', '2026-03-30 20:57:31');
INSERT INTO `post` VALUES (9103, 1, '图文信息中心一楼大厅', '[]', '下午离开图文信息中心时把一把深蓝色折叠雨伞落在大厅座位旁，伞柄有白色挂绳，如果有人看到请联系我。', 27, 9003, 1, 1, 1, '雨伞,生活用品,丢失', '陈沐', 1, 0, '2026-03-30 17:24:13', '2026-03-30 17:24:13');
INSERT INTO `post` VALUES (9104, 1, '学生公寓3号楼门口', '[]', '昨晚回宿舍时在学生公寓3号楼门口遗失了白色耳机充电盒，盒盖上贴着一枚小星星贴纸。', 19, 9005, 1, 0, 1, '电子设备,丢失', '吴穗', 1, 0, '2026-03-30 17:24:13', '2026-03-30 20:57:31');
INSERT INTO `post` VALUES (9105, 2, '学生事务与发展中心服务台', '[]', '在学生事务与发展中心服务台附近捡到一张校园卡，卡套边角有一点磨损。失主可以描述卡面信息后联系认领。', 35, 9004, 1, 1, 3, '校园卡,招领,证件', '何川', 1, 0, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `post` VALUES (9106, 2, '天工楼一楼大厅', '[]', '晚上在天工楼一楼大厅捡到一个棕色钱包，里面有门禁卡和少量零钱，已暂时保管。', 31, 9003, 1, 1, 1, '钱包,招领,证件', '陈沐', 1, 0, '2026-03-30 17:24:13', '2026-03-30 17:24:13');
INSERT INTO `post` VALUES (9107, 2, '6号门（瑶泉路）值班处', '[]', '傍晚在6号门（瑶泉路）附近的雨伞架上发现一把黑色长柄雨伞，伞面内侧有白色字样，需要的同学可联系我。', 29, 9001, 1, 1, 2, '雨伞,招领,生活用品', '林柚', 1, 0, '2026-03-30 17:24:13', '2026-03-30 17:24:13');
INSERT INTO `post` VALUES (9108, 2, '天铎楼（B楼）三楼机房外', '[]', '在天铎楼（B楼）三楼机房门口捡到一个银色U盘，外壳贴着红色编号贴纸，失主可说明容量后认领。', 24, 9002, 1, 0, 0, '电子设备,招领', '周屿', 1, 0, '2026-03-30 17:24:13', '2026-03-30 20:57:31');
INSERT INTO `post` VALUES (12001, 1, '天章楼（A楼）一楼自习区', '[\"http://127.0.0.1:19080/static/image/seed-post-12001-1.jpg\",\"http://127.0.0.1:19080/static/image/seed-post-12001-2.jpg\"]', '晚饭后我在天章楼（A楼）一楼自习区附近把校园卡弄丢了，外壳贴有浅色标签。这件东西平时用得挺频繁，对我来说还真有点着急。麻烦大家帮忙留意一下，真的非常感谢。附了一张图片做参考，细节和实际看到的差不多。如果有人捡到，麻烦联系我，或者直接送到图文信息中心一楼服务台，我会尽快过去。如果今晚之前没人联系，我会把情况补充在评论区。', 18, 9001, 3, 1, 3, '校园卡,丢失', '林柚', 1, 0, '2026-03-24 12:12:00', '2026-03-24 12:12:00');
INSERT INTO `post` VALUES (12002, 2, '天铎楼（B楼）三楼连廊', '[]', '夜里整理东西时路过天铎楼（B楼）三楼连廊时看到有人落下的蓝牙耳机，先帮忙收起来了，边角有轻微磨损。东西看起来像是刚落下不久，应该就是今天这段时间丢的。认领的时候说得出细节就行，不会故意为难人。如果是你的，私信我描述几个特征，我们约在一站式学生社区服务台见面。', 25, 9002, 1, 0, 1, '蓝牙耳机,招领', '周屿', 1, 0, '2026-03-24 15:12:00', '2026-03-24 15:12:00');
INSERT INTO `post` VALUES (12003, 1, '天工楼一楼大厅', '[]', '晨间路过时经过天工楼一楼大厅时把U盘落下了，表面带有透明保护套。我记得最后一次看到它就是在那一片，时间应该不会差太多。我会一直关注评论区，有线索我都会第一时间回复。要是已经被送到失物招领点了，麻烦告诉我一声，我去6号门（瑶泉路）值班台领取。', 32, 9003, 1, 0, 1, 'U盘,丢失', '陈沐', 1, 0, '2026-03-24 18:12:00', '2026-03-24 18:12:00');
INSERT INTO `post` VALUES (12004, 2, '天巧楼广场东侧', '[\"http://127.0.0.1:19080/static/image/seed-post-12004-1.jpg\"]', '一大早我在天巧楼广场东侧顺手捡到保温杯，挂绳是深蓝色的。如果你认识失主，也可以帮忙转一下，让对方尽快联系。如果你刚好路过那一片，也帮我看看有没有被放到角落里。放了一张图片，主要是方便失主先核对外观。认识失主的同学也可以帮忙转告，对方到图文信息中心一楼服务台联系我就行。找到后我会第一时间回来更新状态，免得大家继续帮我白找。', 39, 9004, 2, 0, 2, '保温杯,招领', '何川', 1, 0, '2026-03-24 21:12:00', '2026-03-24 21:12:00');
INSERT INTO `post` VALUES (12005, 1, '图文信息中心一楼服务台', '[]', '早上上课前刚离开图文信息中心一楼服务台没多久，就发现身边少了一个钥匙串，收纳袋上有英文字样。刚开始我还以为落在教室里，结果来回找了两趟都没找到。如果有人捡到，麻烦联系我，或者直接送到一站式学生社区服务台，我会尽快过去。', 46, 9005, 1, 1, 1, '钥匙串,丢失', '吴穗', 1, 0, '2026-03-25 00:12:00', '2026-03-25 00:12:00');
INSERT INTO `post` VALUES (12006, 2, '学生事务与发展中心门口', '[\"http://127.0.0.1:19080/static/image/seed-post-12006-1.jpg\",\"http://127.0.0.1:19080/static/image/seed-post-12006-2.jpg\"]', '中午前我在学生事务与发展中心门口附近发现一件遗落的眼镜盒，背面有小贴纸。我没有随便翻看里面的东西，只确认了大概的外观和特征。我这边白天基本都在学校，回复会比较快。我顺手拍了张图片，失主可以先看外观确认是不是自己的。如果是你的，私信我描述几个特征，我们约在6号门（瑶泉路）值班台见面。如果今晚之前没人联系，我会把情况补充在评论区。', 53, 9011, 1, 0, 3, '眼镜盒,招领', '许澄', 1, 0, '2026-03-25 03:12:00', '2026-03-25 03:12:00');
INSERT INTO `post` VALUES (12007, 1, '一站式学生社区服务台', '[\"http://127.0.0.1:19080/static/image/seed-post-12007-1.jpg\"]', '中午吃饭前后我在一站式学生社区服务台附近把充电器弄丢了，外壳贴有浅色标签。这件东西平时用得挺频繁，对我来说还真有点着急。麻烦大家帮忙留意一下，真的非常感谢。我把图片也附上来了，应该能更快认出来。要是已经被送到失物招领点了，麻烦告诉我一声，我去图文信息中心一楼服务台领取。', 60, 9012, 3, 0, 2, '充电器,丢失', '宋禾', 1, 0, '2026-03-25 06:12:00', '2026-03-25 06:12:00');
INSERT INTO `post` VALUES (12008, 2, '学生公寓3号楼门口', '[]', '傍晚回宿舍路上路过学生公寓3号楼门口时看到有人落下的雨伞，先帮忙收起来了，边角有轻微磨损。东西看起来像是刚落下不久，应该就是今天这段时间丢的。认领的时候说得出细节就行，不会故意为难人。认识失主的同学也可以帮忙转告，对方到一站式学生社区服务台联系我就行。', 67, 9013, 1, 0, 1, '雨伞,招领', '陆舟', 1, 0, '2026-03-25 09:12:00', '2026-03-25 09:12:00');
INSERT INTO `post` VALUES (12009, 1, '学生餐厅二楼靠窗区', '[]', '晚自习结束前经过学生餐厅二楼靠窗区时把手表落下了，表面带有透明保护套。我记得最后一次看到它就是在那一片，时间应该不会差太多。我会一直关注评论区，有线索我都会第一时间回复。如果有人捡到，麻烦联系我，或者直接送到6号门（瑶泉路）值班台，我会尽快过去。找到后我会第一时间回来更新状态，免得大家继续帮我白找。', 74, 9014, 1, 1, 1, '手表,丢失', '江岚', 1, 0, '2026-03-25 12:12:00', '2026-03-25 12:12:00');
INSERT INTO `post` VALUES (12010, 2, '6号门（瑶泉路）值班台', '[\"http://127.0.0.1:19080/static/image/seed-post-12010-1.jpg\"]', '晚上回宿舍时我在6号门（瑶泉路）值班台顺手捡到证件包，挂绳是深蓝色的。如果你认识失主，也可以帮忙转一下，让对方尽快联系。如果你刚好路过那一片，也帮我看看有没有被放到角落里。我顺手拍了张图片，失主可以先看外观确认是不是自己的。如果是你的，私信我描述几个特征，我们约在图文信息中心一楼服务台见面。', 81, 9015, 2, 0, 2, '证件包,招领', '沈迟', 1, 0, '2026-03-25 15:12:00', '2026-03-25 15:12:00');
INSERT INTO `post` VALUES (12011, 1, '7号门门卫处', '[\"http://127.0.0.1:19080/static/image/seed-post-12011-1.jpg\",\"http://127.0.0.1:19080/static/image/seed-post-12011-2.jpg\"]', '早上上课前刚离开7号门门卫处没多久，就发现身边少了一个笔记本，收纳袋上有英文字样。刚开始我还以为落在教室里，结果来回找了两趟都没找到。我把图片也附上来了，应该能更快认出来。要是已经被送到失物招领点了，麻烦告诉我一声，我去一站式学生社区服务台领取。如果今晚之前没人联系，我会把情况补充在评论区。', 88, 9016, 1, 0, 3, '笔记本,丢失', '顾野', 1, 0, '2026-03-25 18:12:00', '2026-03-25 18:12:00');
INSERT INTO `post` VALUES (12012, 2, '体育馆看台下方', '[]', '晨间路过时我在体育馆看台下方附近发现一件遗落的数据线，背面有小贴纸。我没有随便翻看里面的东西，只确认了大概的外观和特征。我这边白天基本都在学校，回复会比较快。认识失主的同学也可以帮忙转告，对方到6号门（瑶泉路）值班台联系我就行。', 22, 9017, 1, 0, 1, '数据线,招领', '叶宁', 1, 0, '2026-03-25 21:12:00', '2026-03-25 21:12:00');
INSERT INTO `post` VALUES (12013, 1, '天章楼（A楼）一楼自习区', '[\"http://127.0.0.1:19080/static/image/seed-post-12013-1.jpg\"]', '一大早我在天章楼（A楼）一楼自习区附近把校园卡弄丢了，外壳贴有浅色标签。这件东西平时用得挺频繁，对我来说还真有点着急。麻烦大家帮忙留意一下，真的非常感谢。附了一张图片做参考，细节和实际看到的差不多。如果有人捡到，麻烦联系我，或者直接送到图文信息中心一楼服务台，我会尽快过去。', 29, 9018, 3, 1, 2, '校园卡,丢失', '唐朔', 1, 0, '2026-03-26 00:12:00', '2026-03-26 00:12:00');
INSERT INTO `post` VALUES (12014, 2, '天铎楼（B楼）三楼连廊', '[]', '上午第三节课后路过天铎楼（B楼）三楼连廊时看到有人落下的蓝牙耳机，先帮忙收起来了，边角有轻微磨损。东西看起来像是刚落下不久，应该就是今天这段时间丢的。认领的时候说得出细节就行，不会故意为难人。如果是你的，私信我描述几个特征，我们约在一站式学生社区服务台见面。找到后我会第一时间回来更新状态，免得大家继续帮我白找。', 36, 9019, 1, 0, 1, '蓝牙耳机,招领', '余淼', 1, 0, '2026-03-26 03:12:00', '2026-03-26 03:12:00');
INSERT INTO `post` VALUES (12015, 1, '天工楼一楼大厅', '[]', '下午第一节课前经过天工楼一楼大厅时把U盘落下了，表面带有透明保护套。我记得最后一次看到它就是在那一片，时间应该不会差太多。我会一直关注评论区，有线索我都会第一时间回复。要是已经被送到失物招领点了，麻烦告诉我一声，我去6号门（瑶泉路）值班台领取。', 43, 9020, 1, 0, 1, 'U盘,丢失', '苏禾', 1, 0, '2026-03-26 06:12:00', '2026-03-26 06:12:00');
INSERT INTO `post` VALUES (12016, 2, '天巧楼广场东侧', '[\"http://127.0.0.1:19080/static/image/seed-post-12016-1.jpg\",\"http://127.0.0.1:19080/static/image/seed-post-12016-2.jpg\"]', '下午下课后我在天巧楼广场东侧顺手捡到保温杯，挂绳是深蓝色的。如果你认识失主，也可以帮忙转一下，让对方尽快联系。如果你刚好路过那一片，也帮我看看有没有被放到角落里。放了一张图片，主要是方便失主先核对外观。认识失主的同学也可以帮忙转告，对方到图文信息中心一楼服务台联系我就行。如果今晚之前没人联系，我会把情况补充在评论区。', 50, 9021, 2, 0, 3, '保温杯,招领', '林知夏', 1, 0, '2026-03-26 09:12:00', '2026-03-26 09:12:00');
INSERT INTO `post` VALUES (12017, 1, '图文信息中心一楼服务台', '[]', '晚自习前刚离开图文信息中心一楼服务台没多久，就发现身边少了一个钥匙串，收纳袋上有英文字样。刚开始我还以为落在教室里，结果来回找了两趟都没找到。如果有人捡到，麻烦联系我，或者直接送到一站式学生社区服务台，我会尽快过去。', 57, 9022, 1, 1, 1, '钥匙串,丢失', '周沐阳', 1, 0, '2026-03-26 12:12:00', '2026-03-26 12:12:00');
INSERT INTO `post` VALUES (12018, 2, '学生事务与发展中心门口', '[]', '快熄灯前我在学生事务与发展中心门口附近发现一件遗落的眼镜盒，背面有小贴纸。我没有随便翻看里面的东西，只确认了大概的外观和特征。我这边白天基本都在学校，回复会比较快。如果是你的，私信我描述几个特征，我们约在6号门（瑶泉路）值班台见面。', 64, 9023, 1, 0, 1, '眼镜盒,招领', '陈星禾', 1, 0, '2026-03-26 15:12:00', '2026-03-26 15:12:00');
INSERT INTO `post` VALUES (12019, 1, '一站式学生社区服务台', '[\"http://127.0.0.1:19080/static/image/seed-post-12019-1.jpg\"]', '一大早我在一站式学生社区服务台附近把充电器弄丢了，外壳贴有浅色标签。这件东西平时用得挺频繁，对我来说还真有点着急。麻烦大家帮忙留意一下，真的非常感谢。我把图片也附上来了，应该能更快认出来。要是已经被送到失物招领点了，麻烦告诉我一声，我去图文信息中心一楼服务台领取。找到后我会第一时间回来更新状态，免得大家继续帮我白找。', 71, 9024, 3, 0, 2, '充电器,丢失', '许安然', 1, 0, '2026-03-26 18:12:00', '2026-03-26 18:12:00');
INSERT INTO `post` VALUES (12020, 2, '学生公寓3号楼门口', '[]', '早上上课前路过学生公寓3号楼门口时看到有人落下的雨伞，先帮忙收起来了，边角有轻微磨损。东西看起来像是刚落下不久，应该就是今天这段时间丢的。认领的时候说得出细节就行，不会故意为难人。认识失主的同学也可以帮忙转告，对方到一站式学生社区服务台联系我就行。', 78, 9025, 1, 0, 1, '雨伞,招领', '江书遥', 1, 0, '2026-03-26 21:12:00', '2026-03-26 21:12:00');
INSERT INTO `post` VALUES (12021, 1, '学生餐厅二楼靠窗区', '[\"http://127.0.0.1:19080/static/image/seed-post-12021-1.jpg\",\"http://127.0.0.1:19080/static/image/seed-post-12021-2.jpg\"]', '晨间路过时经过学生餐厅二楼靠窗区时把手表落下了，表面带有透明保护套。我记得最后一次看到它就是在那一片，时间应该不会差太多。我会一直关注评论区，有线索我都会第一时间回复。附了一张图片做参考，细节和实际看到的差不多。如果有人捡到，麻烦联系我，或者直接送到6号门（瑶泉路）值班台，我会尽快过去。如果今晚之前没人联系，我会把情况补充在评论区。', 85, 9026, 1, 1, 3, '手表,丢失', '顾言川', 1, 0, '2026-03-27 00:12:00', '2026-03-27 00:12:00');
INSERT INTO `post` VALUES (12022, 2, '6号门（瑶泉路）值班台', '[\"http://127.0.0.1:19080/static/image/seed-post-12022-1.jpg\"]', '上午课间我在6号门（瑶泉路）值班台顺手捡到证件包，挂绳是深蓝色的。如果你认识失主，也可以帮忙转一下，让对方尽快联系。如果你刚好路过那一片，也帮我看看有没有被放到角落里。我顺手拍了张图片，失主可以先看外观确认是不是自己的。如果是你的，私信我描述几个特征，我们约在图文信息中心一楼服务台见面。', 19, 9027, 2, 0, 2, '证件包,招领', '沈知意', 1, 0, '2026-03-27 03:12:00', '2026-03-27 03:12:00');
INSERT INTO `post` VALUES (12023, 1, '7号门门卫处', '[]', '午休结束后刚离开7号门门卫处没多久，就发现身边少了一个笔记本，收纳袋上有英文字样。刚开始我还以为落在教室里，结果来回找了两趟都没找到。要是已经被送到失物招领点了，麻烦告诉我一声，我去一站式学生社区服务台领取。', 26, 9028, 1, 0, 1, '笔记本,丢失', '宋时雨', 1, 0, '2026-03-27 06:12:00', '2026-03-27 06:12:00');
INSERT INTO `post` VALUES (12024, 2, '体育馆看台下方', '[]', '傍晚那会儿我在体育馆看台下方附近发现一件遗落的数据线，背面有小贴纸。我没有随便翻看里面的东西，只确认了大概的外观和特征。我这边白天基本都在学校，回复会比较快。认识失主的同学也可以帮忙转告，对方到6号门（瑶泉路）值班台联系我就行。找到后我会第一时间回来更新状态，免得大家继续帮我白找。', 33, 9029, 1, 0, 1, '数据线,招领', '苏念安', 1, 0, '2026-03-27 09:12:00', '2026-03-27 09:12:00');
INSERT INTO `post` VALUES (12025, 1, '天章楼（A楼）一楼自习区', '[\"http://127.0.0.1:19080/static/image/seed-post-12025-1.jpg\"]', '晚饭后我在天章楼（A楼）一楼自习区附近把校园卡弄丢了，外壳贴有浅色标签。这件东西平时用得挺频繁，对我来说还真有点着急。麻烦大家帮忙留意一下，真的非常感谢。附了一张图片做参考，细节和实际看到的差不多。如果有人捡到，麻烦联系我，或者直接送到图文信息中心一楼服务台，我会尽快过去。', 40, 9030, 3, 1, 2, '校园卡,丢失', '陆景行', 1, 0, '2026-03-27 12:12:00', '2026-03-27 12:12:00');
INSERT INTO `post` VALUES (12026, 2, '天铎楼（B楼）三楼连廊', '[\"http://127.0.0.1:19080/static/image/seed-post-12026-1.jpg\",\"http://127.0.0.1:19080/static/image/seed-post-12026-2.jpg\"]', '夜里整理东西时路过天铎楼（B楼）三楼连廊时看到有人落下的蓝牙耳机，先帮忙收起来了，边角有轻微磨损。东西看起来像是刚落下不久，应该就是今天这段时间丢的。认领的时候说得出细节就行，不会故意为难人。我顺手拍了张图片，失主可以先看外观确认是不是自己的。如果是你的，私信我描述几个特征，我们约在一站式学生社区服务台见面。如果今晚之前没人联系，我会把情况补充在评论区。', 47, 9031, 1, 0, 4, '蓝牙耳机,招领', '叶清和', 1, 0, '2026-03-27 15:12:00', '2026-03-27 15:12:00');
INSERT INTO `post` VALUES (12027, 1, '天工楼一楼大厅', '[]', '晨间路过时经过天工楼一楼大厅时把U盘落下了，表面带有透明保护套。我记得最后一次看到它就是在那一片，时间应该不会差太多。我会一直关注评论区，有线索我都会第一时间回复。要是已经被送到失物招领点了，麻烦告诉我一声，我去6号门（瑶泉路）值班台领取。', 54, 9032, 1, 0, 1, 'U盘,丢失', '唐一诺', 1, 0, '2026-03-27 18:12:00', '2026-03-27 18:12:00');
INSERT INTO `post` VALUES (12028, 2, '天巧楼广场东侧', '[\"http://127.0.0.1:19080/static/image/seed-post-12028-1.jpg\"]', '一大早我在天巧楼广场东侧顺手捡到保温杯，挂绳是深蓝色的。如果你认识失主，也可以帮忙转一下，让对方尽快联系。如果你刚好路过那一片，也帮我看看有没有被放到角落里。放了一张图片，主要是方便失主先核对外观。认识失主的同学也可以帮忙转告，对方到图文信息中心一楼服务台联系我就行。', 61, 9033, 2, 0, 2, '保温杯,招领', '温书禾', 1, 0, '2026-03-27 21:12:00', '2026-03-27 21:12:00');
INSERT INTO `post` VALUES (12029, 1, '图文信息中心一楼服务台', '[]', '早上上课前刚离开图文信息中心一楼服务台没多久，就发现身边少了一个钥匙串，收纳袋上有英文字样。刚开始我还以为落在教室里，结果来回找了两趟都没找到。如果有人捡到，麻烦联系我，或者直接送到一站式学生社区服务台，我会尽快过去。找到后我会第一时间回来更新状态，免得大家继续帮我白找。', 68, 9034, 1, 1, 1, '钥匙串,丢失', '乔予安', 1, 0, '2026-03-28 00:12:00', '2026-03-28 00:12:00');
INSERT INTO `post` VALUES (12030, 2, '学生事务与发展中心门口', '[]', '中午前我在学生事务与发展中心门口附近发现一件遗落的眼镜盒，背面有小贴纸。我没有随便翻看里面的东西，只确认了大概的外观和特征。我这边白天基本都在学校，回复会比较快。如果是你的，私信我描述几个特征，我们约在6号门（瑶泉路）值班台见面。', 75, 9035, 1, 0, 1, '眼镜盒,招领', '夏听澜', 1, 0, '2026-03-28 03:12:00', '2026-03-28 03:12:00');
INSERT INTO `post` VALUES (12031, 1, '一站式学生社区服务台', '[\"http://127.0.0.1:19080/static/image/seed-post-12031-1.jpg\",\"http://127.0.0.1:19080/static/image/seed-post-12031-2.jpg\"]', '中午吃饭前后我在一站式学生社区服务台附近把充电器弄丢了，外壳贴有浅色标签。这件东西平时用得挺频繁，对我来说还真有点着急。麻烦大家帮忙留意一下，真的非常感谢。我把图片也附上来了，应该能更快认出来。要是已经被送到失物招领点了，麻烦告诉我一声，我去图文信息中心一楼服务台领取。如果今晚之前没人联系，我会把情况补充在评论区。', 82, 9001, 3, 0, 3, '充电器,丢失', '林柚', 1, 0, '2026-03-28 06:12:00', '2026-03-28 06:12:00');
INSERT INTO `post` VALUES (12032, 2, '学生公寓3号楼门口', '[]', '傍晚回宿舍路上路过学生公寓3号楼门口时看到有人落下的雨伞，先帮忙收起来了，边角有轻微磨损。东西看起来像是刚落下不久，应该就是今天这段时间丢的。认领的时候说得出细节就行，不会故意为难人。认识失主的同学也可以帮忙转告，对方到一站式学生社区服务台联系我就行。', 89, 9002, 1, 0, 1, '雨伞,招领', '周屿', 1, 0, '2026-03-28 09:12:00', '2026-03-28 09:12:00');
INSERT INTO `post` VALUES (12033, 1, '学生餐厅二楼靠窗区', '[]', '晚自习结束前经过学生餐厅二楼靠窗区时把手表落下了，表面带有透明保护套。我记得最后一次看到它就是在那一片，时间应该不会差太多。我会一直关注评论区，有线索我都会第一时间回复。如果有人捡到，麻烦联系我，或者直接送到6号门（瑶泉路）值班台，我会尽快过去。', 23, 9003, 1, 1, 1, '手表,丢失', '陈沐', 1, 0, '2026-03-28 12:12:00', '2026-03-28 12:12:00');
INSERT INTO `post` VALUES (12034, 1, '数字化校园与图文信息中心', '[\"http://127.0.0.1:19080/static/image/b137ff73-73ac-4544-96c6-ba6b56c7351d.png\"]', '这并非寻物启事，这是一条测试消息', 0, 9006, 0, 0, 0, '全部', '管理站', 1, 0, '2026-03-30 14:20:08', '2026-03-30 14:20:08');

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `post_id` int NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` int NULL DEFAULT 1,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62005 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report
-- ----------------------------
INSERT INTO `report` VALUES (1, 6, 4, '示例举报：帖子内容待确认真实性，管理员可在后台查看。', 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `report` VALUES (9771, 9006, 9104, '示例举报：该帖子需要管理员进一步核验信息真实性。', 1, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `report` VALUES (62001, 9006, 12001, '演示举报: 用于后台管理页展示审核流，帖子位置为天章楼（A楼）一楼自习区。', 1, '2026-03-24 16:12:00', '2026-03-24 16:12:00');
INSERT INTO `report` VALUES (62002, 9006, 12010, '演示举报: 用于后台管理页展示审核流，帖子位置为6号门（瑶泉路）值班台。', 1, '2026-03-25 19:12:00', '2026-03-25 19:12:00');
INSERT INTO `report` VALUES (62003, 9006, 12019, '演示举报: 用于后台管理页展示审核流，帖子位置为一站式学生社区服务台。', 1, '2026-03-26 22:12:00', '2026-03-26 22:12:00');
INSERT INTO `report` VALUES (62004, 9006, 12028, '演示举报: 用于后台管理页展示审核流，帖子位置为天巧楼广场东侧。', 1, '2026-03-28 01:12:00', '2026-03-28 01:12:00');

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `role_id` int NOT NULL COMMENT '角色ID',
  `permission_id` int NOT NULL COMMENT '权限ID',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9538 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_permission
-- ----------------------------
INSERT INTO `role_permission` VALUES (1, 1, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `role_permission` VALUES (2, 2, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `role_permission` VALUES (3, 2, 2, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `role_permission` VALUES (4, 2, 3, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `role_permission` VALUES (9531, 9501, 9511, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `role_permission` VALUES (9532, 9501, 9512, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `role_permission` VALUES (9533, 9502, 9511, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `role_permission` VALUES (9534, 9502, 9512, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `role_permission` VALUES (9535, 9502, 9513, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `role_permission` VALUES (9536, 9502, 9514, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `role_permission` VALUES (9537, 9502, 9515, '2026-03-30 17:24:13', '2026-03-30 20:57:29');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色描述',
  `created_time` date NOT NULL COMMENT '创建时间',
  `update_time` date NULL DEFAULT NULL COMMENT '删除时间',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否逻辑删除：0-未删除，1-已删除',
  `created_by` int NOT NULL COMMENT '创建者ID',
  `updated_by` int NOT NULL COMMENT '最后修改者ID',
  `updated_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9503 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, '普通用户', '可以发布失物与招领信息', '2026-03-29', NULL, 0, 6, 6, '2026-03-29 22:39:38');
INSERT INTO `roles` VALUES (2, '管理员', '负责内容审核和系统维护', '2026-03-29', NULL, 0, 6, 6, '2026-03-29 22:39:38');
INSERT INTO `roles` VALUES (9501, '普通用户', '可查看并发布失物招领信息', '2026-03-30', NULL, 0, 9006, 9006, '2026-03-30 20:57:29');
INSERT INTO `roles` VALUES (9502, '后台管理员', '可管理用户、帖子和举报内容', '2026-03-30', NULL, 0, 9006, 9006, '2026-03-30 20:57:29');

-- ----------------------------
-- Table structure for task_users
-- ----------------------------
DROP TABLE IF EXISTS `task_users`;
CREATE TABLE `task_users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` int NULL DEFAULT 1,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9414 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task_users
-- ----------------------------
INSERT INTO `task_users` VALUES (1, 1, 1, 2, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `task_users` VALUES (2, 2, 3, 2, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `task_users` VALUES (3, 3, 4, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `task_users` VALUES (9411, 9401, 9001, 2, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `task_users` VALUES (9412, 9402, 9003, 2, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `task_users` VALUES (9413, 9403, 9004, 1, '2026-03-30 17:24:13', '2026-03-30 20:57:29');

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `points` int NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9404 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tasks
-- ----------------------------
INSERT INTO `tasks` VALUES (1, '完善联系方式', 10, '首次补充手机号或微信号可获得积分', '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `tasks` VALUES (2, '发布有效线索', 15, '发布被确认有效的失物线索可获得积分', '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `tasks` VALUES (3, '成功认领物品', 20, '帮助失主成功找回物品可获得积分', '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `tasks` VALUES (9401, '完善档案资料', 10, '首次补全头像和联系方式可获得积分', '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `tasks` VALUES (9402, '发布有效线索', 15, '发布有效失物或招领信息后获得积分', '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `tasks` VALUES (9403, '帮助认领成功', 20, '协助失主找回物品后获得积分', '2026-03-30 17:24:13', '2026-03-30 20:57:29');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `header` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `clazz` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gender` int NULL DEFAULT NULL,
  `QQ` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `other_contacts` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `find_num` int NULL DEFAULT 0,
  `lost_num` int NULL DEFAULT 0,
  `is_deleted` tinyint NULL DEFAULT 0,
  `status` int NULL DEFAULT 1,
  `integral` int NULL DEFAULT 0,
  `created_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20250003 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', '微信用户', '林安然', 20, '软件231班', '13800138001', 2, '120001001', 'linanran@example.com', '微信：linanran', 2, 1, 0, 1, 120, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `user` VALUES (2, '', '小周', '周知远', 21, '计科232班', '13800138002', 1, '120001002', 'zhouzhiyuan@example.com', '微信：zhouzhiyuan', 1, 2, 0, 1, 95, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `user` VALUES (3, '', '小陈', '陈雨晴', 20, '网工231班', '13800138003', 2, '120001003', 'chenyuqing@example.com', '微信：chenyuqing', 3, 1, 0, 1, 140, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `user` VALUES (4, '', '小何', '何嘉树', 22, '大数据221班', '13800138004', 1, '120001004', 'hejiashu@example.com', '微信：hejiashu', 1, 1, 0, 1, 88, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `user` VALUES (5, '', '小吴', '吴星河', 20, '电商231班', '13800138005', 1, '120001005', 'wuxinghe@example.com', '微信：wuxinghe', 0, 2, 0, 1, 76, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `user` VALUES (6, '', '管理员', '系统管理员', 28, '信息中心', '13800138000', 1, '120001000', 'admin@laf.local', '值班电话：13800138000', 0, 0, 0, 1, 500, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `user` VALUES (9001, 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', '林柚', '林柚安', 19, '软件231班', '13800138011', 2, '320100011', 'linyou@siit.example', '微信: linyou_siit', 2, 1, 0, 1, 135, '2026-03-30 17:24:13', '2026-03-30 20:57:30');
INSERT INTO `user` VALUES (9002, '', '周屿', '周屿川', 20, '计科232班', '13800138012', 1, '320100012', 'zhouyu@siit.example', '微信: zhouyu_siit', 1, 2, 0, 1, 110, '2026-03-30 17:24:13', '2026-03-30 20:57:30');
INSERT INTO `user` VALUES (9003, '', '陈沐', '陈沐晴', 21, '网工231班', '13800138013', 2, '320100013', 'chenmu@siit.example', '微信: chenmu_siit', 3, 1, 0, 1, 148, '2026-03-30 17:24:13', '2026-03-30 20:57:30');
INSERT INTO `user` VALUES (9004, '', '何川', '何川岳', 22, '大数据231班', '13800138014', 1, '320100014', 'hechuan@siit.example', '微信: hechuan_siit', 1, 1, 0, 1, 92, '2026-03-30 17:24:13', '2026-03-30 20:57:30');
INSERT INTO `user` VALUES (9005, '', '吴穗', '吴穗然', 19, '电商231班', '13800138015', 2, '320100015', 'wusui@siit.example', '微信: wusui_siit', 0, 2, 0, 1, 83, '2026-03-30 17:24:13', '2026-03-30 20:57:30');
INSERT INTO `user` VALUES (9006, 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', '管理站', '校园失物管理站', 28, '信息中心', '13800138016', 1, '320100016', 'admin@siit.example', '值班电话：13800138016', 0, 0, 0, 1, 520, '2026-03-30 17:24:13', '2026-03-30 17:24:13');
INSERT INTO `user` VALUES (9011, '', '许澄', '许澄宇', 20, '机电232班', '13800138111', 1, '320100111', 'xucheng@siit.example', 'QQ: 320100111', 1, 1, 0, 1, 96, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9012, '', '宋禾', '宋禾青', 21, '数媒231班', '13800138112', 2, '320100112', 'songhe@siit.example', 'QQ: 320100112', 2, 0, 0, 1, 101, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9013, '', '陆舟', '陆舟越', 22, '物联231班', '13800138113', 1, '320100113', 'luzhou@siit.example', 'QQ: 320100113', 1, 1, 0, 1, 87, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9014, '', '江岚', '江岚溪', 19, '软件232班', '13800138114', 2, '320100114', 'jianglan@siit.example', 'QQ: 320100114', 2, 1, 0, 1, 109, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9015, '', '沈迟', '沈迟野', 20, '模具231班', '13800138115', 1, '320100115', 'shenchi@siit.example', 'QQ: 320100115', 0, 2, 0, 1, 78, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9016, '', '顾野', '顾野行', 21, '汽修232班', '13800138116', 1, '320100116', 'guye@siit.example', 'QQ: 320100116', 1, 1, 0, 1, 84, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9017, '', '叶宁', '叶宁舟', 22, '会计231班', '13800138117', 2, '320100117', 'yening@siit.example', 'QQ: 320100117', 2, 0, 0, 1, 103, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9018, '', '唐朔', '唐朔安', 19, '物流231班', '13800138118', 1, '320100118', 'tangshuo@siit.example', 'QQ: 320100118', 1, 1, 0, 1, 91, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9019, '', '余淼', '余淼然', 20, '商英232班', '13800138119', 2, '320100119', 'yumiao@siit.example', 'QQ: 320100119', 1, 1, 0, 1, 95, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9020, '', '苏禾', '苏禾远', 21, '视觉231班', '13800138120', 2, '320100120', 'suhe@siit.example', 'QQ: 320100120', 0, 2, 0, 1, 82, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9021, '', '林知夏', '林知夏', 22, '软件233班', '13800138121', 2, '320100121', 'linzhixia@siit.example', '微信: linzhixia_siit', 2, 1, 0, 1, 118, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9022, '', '周沐阳', '周沐阳', 19, '网工232班', '13800138122', 1, '320100122', 'zhoumuyang@siit.example', '微信: zhoumuyang_siit', 1, 1, 0, 1, 113, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9023, '', '陈星禾', '陈星禾', 20, '计科233班', '13800138123', 2, '320100123', 'chenxinghe@siit.example', '微信: chenxinghe_siit', 3, 0, 0, 1, 126, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9024, '', '许安然', '许安然', 21, '大数据232班', '13800138124', 2, '320100124', 'xuanran@siit.example', '微信: xuanran_siit', 1, 2, 0, 1, 108, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9025, '', '江书遥', '江书遥', 22, '数媒232班', '13800138125', 2, '320100125', 'jiangshuyao@siit.example', '微信: jiangshuyao_siit', 2, 1, 0, 1, 120, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9026, '', '顾言川', '顾言川', 19, '机电233班', '13800138126', 1, '320100126', 'guyanchuan@siit.example', '微信: guyanchuan_siit', 1, 1, 0, 1, 111, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9027, '', '沈知意', '沈知意', 20, '会计232班', '13800138127', 2, '320100127', 'shenzhiyi@siit.example', '微信: shenzhiyi_siit', 1, 0, 0, 1, 117, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9028, '', '宋时雨', '宋时雨', 21, '物流232班', '13800138128', 2, '320100128', 'songshiyu@siit.example', '微信: songshiyu_siit', 2, 1, 0, 1, 116, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9029, '', '苏念安', '苏念安', 22, '商英231班', '13800138129', 2, '320100129', 'sunianan@siit.example', '微信: sunianan_siit', 0, 2, 0, 1, 97, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9030, '', '陆景行', '陆景行', 19, '物联232班', '13800138130', 1, '320100130', 'lujingxing@siit.example', '微信: lujingxing_siit', 2, 0, 0, 1, 115, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9031, '', '叶清和', '叶清和', 20, '视觉232班', '13800138131', 2, '320100131', 'yeqinghe@siit.example', '微信: yeqinghe_siit', 1, 1, 0, 1, 112, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9032, '', '唐一诺', '唐一诺', 21, '汽修231班', '13800138132', 1, '320100132', 'tangyinuo@siit.example', '微信: tangyinuo_siit', 1, 2, 0, 1, 94, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9033, '', '温书禾', '温书禾', 22, '软件234班', '13800138133', 2, '320100133', 'wenshuhe@siit.example', '微信: wenshuhe_siit', 2, 1, 0, 1, 121, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9034, '', '乔予安', '乔予安', 19, '数媒233班', '13800138134', 2, '320100134', 'qiaoyuan@siit.example', '微信: qiaoyuan_siit', 1, 0, 0, 1, 107, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (9035, '', '夏听澜', '夏听澜', 20, '电商232班', '13800138135', 2, '320100135', 'xiatinglan@siit.example', '微信: xiatinglan_siit', 1, 1, 0, 1, 114, '2026-03-30 18:51:21', '2026-03-30 18:51:21');
INSERT INTO `user` VALUES (90002, 'http://127.0.0.1:19080/static/image/7fd0a270-3b3a-4a2a-b265-4c058c504f22.png', '微信用户', NULL, NULL, NULL, '123123213123', NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, '2026-03-29 12:11:52', '2026-03-29 12:11:52');
INSERT INTO `user` VALUES (900001, '', 'devtools', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, '2026-03-29 11:44:25', '2026-03-29 11:44:25');
INSERT INTO `user` VALUES (900002, 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', '微信用户', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, '2026-03-29 11:56:30', '2026-03-29 11:56:30');
INSERT INTO `user` VALUES (20250001, '', '本地测试用户', NULL, NULL, NULL, NULL, NULL, '123456789', NULL, NULL, 0, 0, 0, 1, 0, '2026-03-29 14:44:33', '2026-03-29 14:44:33');
INSERT INTO `user` VALUES (20250002, 'https://thirdwx.qlogo.cn/mmopen/vi_32/POgEwh4mIHO4nibH0KlMECNjjGxQUq24ZEaGT4poC6icRiccVGKSyXwibcPq4BWmiaIGuG1icwxaQX6grC9VemZoJ8rg/132', '微信用户', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, '2026-03-30 15:37:39', '2026-03-30 15:37:39');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL COMMENT '用户ID',
  `role_id` int NOT NULL COMMENT '角色ID',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9527 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户角色表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES (1, 1, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `user_role` VALUES (2, 2, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `user_role` VALUES (3, 3, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `user_role` VALUES (4, 4, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `user_role` VALUES (5, 5, 1, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `user_role` VALUES (6, 6, 2, '2026-03-29 22:39:38', '2026-03-29 22:39:38');
INSERT INTO `user_role` VALUES (9521, 9001, 9501, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `user_role` VALUES (9522, 9002, 9501, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `user_role` VALUES (9523, 9003, 9501, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `user_role` VALUES (9524, 9004, 9501, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `user_role` VALUES (9525, 9005, 9501, '2026-03-30 17:24:13', '2026-03-30 20:57:29');
INSERT INTO `user_role` VALUES (9526, 9006, 9502, '2026-03-30 17:24:13', '2026-03-30 20:57:29');

-- ----------------------------
-- Table structure for user_security
-- ----------------------------
DROP TABLE IF EXISTS `user_security`;
CREATE TABLE `user_security`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_user_security_user_id`(`user_id` ASC) USING BTREE,
  UNIQUE INDEX `uk_user_security_email`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9430 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_security
-- ----------------------------
INSERT INTO `user_security` VALUES (9301, 9001, '林柚', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'linyou@siit.example');
INSERT INTO `user_security` VALUES (9302, 9002, '周屿', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'zhouyu@siit.example');
INSERT INTO `user_security` VALUES (9303, 9003, '陈沐', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'chenmu@siit.example');
INSERT INTO `user_security` VALUES (9304, 9004, '何川', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'hechuan@siit.example');
INSERT INTO `user_security` VALUES (9305, 9005, '吴穗', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'wusui@siit.example');
INSERT INTO `user_security` VALUES (9306, 9006, '管理站', '{bcrypt}$2a$10$F26drCYvCTiWitUFnDOOgejKjxX57P/.r6MU3.Fi.tIG6wZEjTtuW', 'admin@siit.example');
INSERT INTO `user_security` VALUES (9312, 9011, '许澄', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'xucheng@siit.example');
INSERT INTO `user_security` VALUES (9313, 9012, '宋禾', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'songhe@siit.example');
INSERT INTO `user_security` VALUES (9314, 9013, '陆舟', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'luzhou@siit.example');
INSERT INTO `user_security` VALUES (9315, 9014, '江岚', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'jianglan@siit.example');
INSERT INTO `user_security` VALUES (9316, 9015, '沈迟', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'shenchi@siit.example');
INSERT INTO `user_security` VALUES (9317, 9016, '顾野', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'guye@siit.example');
INSERT INTO `user_security` VALUES (9318, 9017, '叶宁', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'yening@siit.example');
INSERT INTO `user_security` VALUES (9319, 9018, '唐朔', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'tangshuo@siit.example');
INSERT INTO `user_security` VALUES (9320, 9019, '余淼', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'yumiao@siit.example');
INSERT INTO `user_security` VALUES (9321, 9020, '苏禾', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'suhe@siit.example');
INSERT INTO `user_security` VALUES (9322, 9021, '林知夏', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'linzhixia@siit.example');
INSERT INTO `user_security` VALUES (9323, 9022, '周沐阳', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'zhoumuyang@siit.example');
INSERT INTO `user_security` VALUES (9324, 9023, '陈星禾', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'chenxinghe@siit.example');
INSERT INTO `user_security` VALUES (9325, 9024, '许安然', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'xuanran@siit.example');
INSERT INTO `user_security` VALUES (9326, 9025, '江书遥', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'jiangshuyao@siit.example');
INSERT INTO `user_security` VALUES (9327, 9026, '顾言川', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'guyanchuan@siit.example');
INSERT INTO `user_security` VALUES (9328, 9027, '沈知意', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'shenzhiyi@siit.example');
INSERT INTO `user_security` VALUES (9329, 9028, '宋时雨', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'songshiyu@siit.example');
INSERT INTO `user_security` VALUES (9330, 9029, '苏念安', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'sunianan@siit.example');
INSERT INTO `user_security` VALUES (9331, 9030, '陆景行', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'lujingxing@siit.example');
INSERT INTO `user_security` VALUES (9332, 9031, '叶清和', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'yeqinghe@siit.example');
INSERT INTO `user_security` VALUES (9333, 9032, '唐一诺', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'tangyinuo@siit.example');
INSERT INTO `user_security` VALUES (9334, 9033, '温书禾', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'wenshuhe@siit.example');
INSERT INTO `user_security` VALUES (9335, 9034, '乔予安', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'qiaoyuan@siit.example');
INSERT INTO `user_security` VALUES (9336, 9035, '夏听澜', '{bcrypt}$2a$10$2XoGZwJsigr.n7Q1EXmcte3GCQZ3I1xbjbv57FWa4HO0yaxy.BQU2', 'xiatinglan@siit.example');

-- ----------------------------
-- Table structure for user_settings
-- ----------------------------
DROP TABLE IF EXISTS `user_settings`;
CREATE TABLE `user_settings`  (
  `user_id` int NOT NULL,
  `push_notification` tinyint(1) NULL DEFAULT 1,
  `follow_me` tinyint(1) NULL DEFAULT 1,
  `report_notification` tinyint(1) NULL DEFAULT 1,
  `follow_others` tinyint(1) NULL DEFAULT 1,
  `reply_notification` tinyint(1) NULL DEFAULT 1,
  `bookmark_notification` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_settings
-- ----------------------------
INSERT INTO `user_settings` VALUES (1, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (2, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (3, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (4, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (5, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (6, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9001, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9002, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9003, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9004, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9005, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9006, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9011, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9012, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9013, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9014, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9015, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9016, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9017, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9018, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9019, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9020, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9021, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9022, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9023, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9024, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9025, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9026, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9027, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9028, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9029, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9030, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9031, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9032, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9033, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9034, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (9035, 1, 1, 1, 1, 1, 1);
INSERT INTO `user_settings` VALUES (20250002, 1, 1, 1, 1, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
