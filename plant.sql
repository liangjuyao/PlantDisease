/*
 Navicat Premium Dump SQL

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80038 (8.0.38)
 Source Host           : localhost:3306
 Source Schema         : plant

 Target Server Type    : MySQL
 Target Server Version : 80038 (8.0.38)
 File Encoding         : 65001

 Date: 30/11/2024 19:37:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alembic_version
-- ----------------------------
DROP TABLE IF EXISTS `alembic_version`;
CREATE TABLE `alembic_version`  (
  `version_num` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`version_num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of alembic_version
-- ----------------------------
INSERT INTO `alembic_version` VALUES ('c647e4924c69');

-- ----------------------------
-- Table structure for science
-- ----------------------------
DROP TABLE IF EXISTS `science`;
CREATE TABLE `science`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `plant_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签序号',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '名称',
  `type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '类型',
  `sub_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子类型',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图片地址',
  `intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of science
-- ----------------------------
INSERT INTO `science` VALUES (1, '1', '苹果', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/apple.jpg', '<p>别名：平安果、智慧果。科目：属于蔷薇科，苹果属。简称：通常直接称为苹果。<p>\r\n<br>益处：苹果富含维生素C、膳食纤维以及多种微量元素，有助于消化、增强免疫系统，并且对心血管健康有益。\r\n<br>生长环境：苹果树适应性强，能在多种气候条件下生长，但最适宜的生长环境是温带气候，需要充足的阳光和适量的水分。');
INSERT INTO `science` VALUES (2, '2', '蓝莓', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/berries.jpg', '<p>别名：蓝莓。科目：属于杜鹃花科，越橘属。简称：通常直接称为蓝莓。</p>\r\n<br>益处：蓝莓富含维生素C、维生素K和锰，以及抗氧化剂，有助于增强视力、记忆力和免疫力。\r\n<br>生长环境：蓝莓适应于酸性土壤，喜欢凉爽湿润的气候，主要生长在北半球的温带地区。');
INSERT INTO `science` VALUES (3, '3', '樱桃', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/istock.jpg', '<p>别名：车厘子、樱珠。科目：属于蔷薇科，李属。简称：通常直接称为樱桃。</p>\r\n<br>益处：樱桃含有丰富的维生素C、钾和抗氧化剂，有助于减少炎症、改善睡眠质量。\r\n<br>生长环境：樱桃树喜欢温和的气候和充足的阳光，对土壤的排水性要求较高。');
INSERT INTO `science` VALUES (4, '4', '玉米', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/corn.jpg', '<p>别名：苞米、棒子。科目：属于禾本科，玉蜀黍属。简称：通常直接称为玉米。</p>\r\n<br>益处：玉米是重要的粮食作物，含有丰富的碳水化合物和膳食纤维，有助于维持能量和消化系统健康。\r\n<br>生长环境：玉米适应性广，能在多种气候条件下生长，最适宜的生长环境是温暖湿润的气候。');
INSERT INTO `science` VALUES (5, '5', '葡萄', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/grapes.jpg', '<p>别名：蒲桃、草龙珠。科目：属于葡萄科，葡萄属。简称：通常直接称为葡萄。</p>\r\n<br>益处：葡萄含有多种维生素和矿物质，尤其是葡萄籽中含有丰富的抗氧化剂，对心血管健康有益。\r\n<br>生长环境：葡萄喜欢温暖干燥的气候，需要充足的阳光和良好的排水条件。');
INSERT INTO `science` VALUES (6, '6', '橙子', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/oranges.jpg', '<p>别名：柳橙、甜橙。科目：属于芸香科，柑橘属。简称：通常直接称为橙子。</p>\r\n<br>益处：橙子富含维生素C和多种矿物质，有助于增强免疫力和抗氧化。\r\n<br>生长环境：橙子喜欢温暖湿润的气候，需要充足的阳光和适量的水分。');
INSERT INTO `science` VALUES (7, '7', '桃子', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/peach.jpg', '<p>别名：桃、寿桃。科目：属于蔷薇科，桃属。简称：通常直接称为桃子。</p>\r\n<br>益处：桃子含有丰富的维生素A和C，以及钾，有助于维持心血管健康和改善消化。\r\n<br>生长环境：桃子适应性较强，能在多种气候条件下生长，最适宜的生长环境是温暖湿润的气候。');
INSERT INTO `science` VALUES (8, '8', '甜椒', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/bell-peppers.jpg', '<p>别名：灯笼椒、柿子椒。科目：属于茄科，辣椒属。简称：通常直接称为甜椒。</p>\r\n<br>益处：甜椒富含维生素C和β-胡萝卜素，有助于增强免疫力和保护视力。\r\n<br>生长环境：甜椒喜欢温暖湿润的气候，需要充足的阳光和良好的排水条件。');
INSERT INTO `science` VALUES (9, '9', '土豆', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/potatoes.jpg', '<p>别名：马铃薯、洋芋。科目：属于茄科，马铃薯属。简称：通常直接称为土豆。</p>\r\n<br>益处：土豆是重要的粮食作物，含有丰富的碳水化合物和膳食纤维，有助于维持能量和消化系统健康。\r\n<br>生长环境：土豆适应性广，能在多种气候条件下生长，最适宜的生长环境是凉爽湿润的气候。');
INSERT INTO `science` VALUES (10, '10', '覆盆子', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/raspberries.jpg', '<p>别名：树莓。科目：属于蔷薇科，悬钩子属。简称：通常直接称为覆盆子。</p>\r\n<br>益处：覆盆子含有丰富的维生素C和抗氧化剂，有助于增强免疫力和抗氧化。\r\n<br>生长环境：覆盆子喜欢凉爽湿润的气候，需要充足的阳光和良好的排水条件。');
INSERT INTO `science` VALUES (11, '11', '大豆', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/bean.jpg', '<p>别名：黄豆。科目：属于豆科，大豆属。简称：通常直接称为大豆。</p>\r\n<br>益处：大豆是重要的蛋白质来源，含有丰富的植物蛋白、膳食纤维和异黄酮，对心血管健康有益。\r\n<br>生长环境：大豆适应性强，能在多种气候条件下生长，最适宜的生长环境是温暖湿润的气候。');
INSERT INTO `science` VALUES (12, '12', '南瓜', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/pumpkin.jpg', '<p>别名：倭瓜、番瓜。科目：属于葫芦科，南瓜属。简称：通常直接称为南瓜。</p>\r\n<br>益处：南瓜含有丰富的β-胡萝卜素和维生素A，有助于保护视力和增强免疫力。\r\n<br>生长环境：南瓜适应性强，能在多种气候条件下生长，最适宜的生长环境是温暖湿润的气候。');
INSERT INTO `science` VALUES (13, '13', '草莓', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/strawberries.jpg', '<p>别名：洋莓、地莓。科目：属于蔷薇科，草莓属。简称：通常直接称为草莓。</p>\r\n<br>益处：草莓含有丰富的维生素C和锰，有助于增强免疫力和骨骼健康。\r\n<br>生长环境：草莓喜欢凉爽湿润的气候，需要充足的阳光和适量的水分。');
INSERT INTO `science` VALUES (14, '14', '番茄', '1', 't01', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/guoshi/tomatoes.jpg', '<p>别名：西红柿。科目：属于茄科，番茄属。简称：通常直接称为番茄。</p>\r\n<br>益处：番茄含有丰富的维生素C、钾和抗氧化剂番茄红素，有助于增强免疫力和抗氧化。\r\n<br>生长环境：番茄喜欢温暖湿润的气候，需要充足的阳光和良好的排水条件。');
INSERT INTO `science` VALUES (15, '1', '苹果叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/applel.jpg', '<p>苹果叶</p>\r\n<br>适用肥料：苹果树适合使用有机肥料和复合肥料，特别是含氮量较高的肥料。\r\n<br>喜阳喜阴：苹果树喜阳，需要充足的阳光以保证果实品质。\r\n<br>气候变化：苹果树耐寒，适应温带气候，适宜在春季至秋季生长。');
INSERT INTO `science` VALUES (16, '2', '蓝莓叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/berriesl.jpg', '<p>蓝莓叶</p>\r\n<br>适用肥料：蓝莓适合使用酸性肥料，pH值在4.5-5.5之间最佳。\r\n<br>喜阳喜阴：蓝莓树喜半阴环境，避免强烈直射阳光。\r\n<br>气候变化：蓝莓树喜冷凉气候，主要生长在温带和寒带地区。');
INSERT INTO `science` VALUES (17, '3', '樱桃叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/istockl.jpg', '<p>樱桃叶</p>\r\n<br>适用肥料：樱桃树适合使用有机肥料和高磷钾肥料，促进花果发育。\r\n<br>喜阳喜阴：樱桃树喜阳，需要充足的阳光以保证果实品质。\r\n<br>气候变化：樱桃树喜温和气候，适宜在春季至夏季生长。');
INSERT INTO `science` VALUES (18, '4', '玉米叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/cornl.jpg', '<p>玉米叶</p>\r\n<br>适用肥料：玉米适合使用高氮肥料，尤其是在生长初期。\r\n<br>喜阳喜阴：玉米喜阳，需要充足的阳光以保证光合作用。\r\n<br>气候变化：玉米适应性广，能在多种气候条件下生长，最适宜的生长季节是夏季。');
INSERT INTO `science` VALUES (19, '5', '葡萄叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/grapesl.jpg', '<p>葡萄叶</p>\r\n<br>适用肥料：葡萄适合使用有机肥料和高磷钾肥料，促进果实品质。\r\n<br>喜阳喜阴：葡萄喜阳，需要充足的阳光以保证果实成熟。\r\n<br>气候变化：葡萄喜温暖干燥的气候，适宜在春季至秋季生长。');
INSERT INTO `science` VALUES (20, '6', '橙子叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/orangesl.jpg', '<p>橙子叶</p>\r\n<br>适用肥料：橙子树适合使用有机肥料和高氮磷钾肥料，促进果实品质。\r\n<br>喜阳喜阴：橙子树喜阳，需要充足的阳光以保证果实品质。\r\n<br>气候变化：橙子树喜温暖湿润的气候，适宜在热带和亚热带地区生长。');
INSERT INTO `science` VALUES (21, '7', '桃子叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/peachl.jpg', '<p>桃子叶</p>\r\n<br>适用肥料：桃树适合使用有机肥料和高磷钾肥料，促进花果发育。\r\n<br>喜阳喜阴：桃树喜阳，需要充足的阳光以保证果实品质。\r\n<br>气候变化：桃树喜温和气候，适宜在春季至夏季生长。');
INSERT INTO `science` VALUES (22, '8', '甜椒叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/bell-peppersl.jpg', '<p>甜椒叶</p>\r\n<br>适用肥料：甜椒适合使用有机肥料和高氮肥料，促进植株生长。\r\n<br>喜阳喜阴：甜椒喜阳，需要充足的阳光以保证果实品质。\r\n<br>气候变化：甜椒喜温暖湿润的气候，适宜在春季至秋季生长。');
INSERT INTO `science` VALUES (23, '9', '土豆叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/potatoesl.jpg', '<p>土豆叶</p>\r\n<br>适用肥料：土豆适合使用有机肥料和高钾肥料，促进块茎发育。\r\n<br>喜阳喜阴：土豆喜阳，需要充足的阳光以保证块茎品质。\r\n<br>气候变化：土豆适应性广，能在多种气候条件下生长，最适宜的生长季节是春季至夏季。');
INSERT INTO `science` VALUES (24, '10', '覆盆子叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/raspberriesl.jpg', '<p>覆盆子叶</p>\r\n<br>适用肥料：覆盆子适合使用有机肥料和高磷钾肥料，促进果实品质。\r\n<br>喜阳喜阴：覆盆子喜半阴环境，避免强烈直射阳光。\r\n<br>气候变化：覆盆子喜冷凉气候，主要生长在温带和寒带地区。');
INSERT INTO `science` VALUES (25, '11', '大豆叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/beanl.jpg', '<p>大豆叶</p>\r\n<br>适用肥料：大豆适合使用有机肥料和高氮肥料，促进植株生长。\r\n<br>喜阳喜阴：大豆喜阳，需要充足的阳光以保证光合作用。\r\n<br>气候变化：大豆适应性广，能在多种气候条件下生长，最适宜的生长季节是夏季。');
INSERT INTO `science` VALUES (26, '12', '南瓜叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/pumpkinl.jpg', '<p>南瓜叶</p>\r\n<br>适用肥料：南瓜适合使用有机肥料和高氮肥料，促进植株生长。\r\n<br>喜阳喜阴：南瓜喜阳，需要充足的阳光以保证光合作用。\r\n<br>气候变化：南瓜喜温和湿润的气候，适宜在春季至秋季生长。');
INSERT INTO `science` VALUES (27, '13', '草莓叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/strawberriesl.jpg', '<p>草莓叶</p>\r\n<br>适用肥料：草莓适合使用有机肥料和高磷钾肥料，促进果实品质。\r\n<br>喜阳喜阴：草莓喜半阴环境，避免强烈直射阳光。\r\n<br>气候变化：草莓喜冷凉气候，主要生长在温带地区。');
INSERT INTO `science` VALUES (28, '14', '番茄叶', '1', 't02', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/yezhi/tomatoesl.jpg', '<p>番茄叶</p>\r\n<br>适用肥料：番茄适合使用有机肥料和高氮肥料，促进植株生长。\r\n<br>喜阳喜阴：番茄喜阳，需要充足的阳光以保证果实品质。\r\n<br>气候变化：番茄喜温暖湿润的气候，适宜在春季至秋季生长。');
INSERT INTO `science` VALUES (29, '1', '菲岛毛眼水蝇', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/fdmy.jpg', '<p><strong>菲岛毛眼水蝇</strong></p>\r\n<p>属性：属于昆虫纲，毛眼水蝇科。</p>\r\n<p>形态特征：小型昆虫，体长约2-3毫米，翅膀透明，身体呈黑色或深褐色。</p>\r\n<p>危害：主要危害水稻，幼虫在水稻茎秆内部取食，导致水稻生长受阻。</p>\r\n<p>生长规律：一年发生多代，幼虫期在茎秆内，成虫期活动于水面。</p>\r\n<p>防治措施：使用生物防治，如放生天敌昆虫，或使用低毒农药进行化学防治。</p>');
INSERT INTO `science` VALUES (30, '2', '稻棘緣蝽', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/djyc.jpg', '<p><strong>稻棘緣蝽</strong></p>\r\n<p>属性：属于昆虫纲，蝽科。</p>\r\n<p>形态特征：体长约5毫米，椭圆形，背面有黑色和黄色相间的条纹。</p>\r\n<p>危害：成虫和若虫均吸食水稻叶片，导致水稻叶片出现黄斑。</p>\r\n<p>生长规律：一年发生2-3代，幼虫期在叶片背面，成虫期活动于水稻田间。</p>\r\n<p>防治措施：采用黄板诱杀成虫，或在幼虫期使用农药喷雾防治。</p>');
INSERT INTO `science` VALUES (31, '3', '稻筒水螟', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/dtsm.jpg', '<p><strong>稻筒水螟</strong></p>\r\n<p>属性：属于昆虫纲，水螟科。</p>\r\n<p>形态特征：体长7-10毫米，身体细长，呈灰白色，翅膀透明。</p>\r\n<p>危害：幼虫在水稻茎秆内部取食，造成水稻茎秆空洞，影响水稻生长。</p>\r\n<p>生长规律：一年发生1-2代，幼虫期在茎秆内，成虫期在水稻开花期间活动。</p>\r\n<p>防治措施：结合水稻种植管理，使用性诱剂诱杀成虫，或在幼虫期使用农药防治。</p>');
INSERT INTO `science` VALUES (32, '4', '直纹稻弄蝶', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/zwdnd.jpg', '<p><strong>直纹稻弄蝶</strong></p>\r\n<p>属性：属于昆虫纲，弄蝶科。</p>\r\n<p>形态特征：翅膀展开约3-4厘米，翅膀表面有直纹和斑纹，颜色鲜艳。</p>\r\n<p>危害：幼虫取食水稻叶片，造成叶片出现不规则的食痕。</p>\r\n<p>生长规律：一年发生多代，幼虫期在叶片上，成虫期在水稻生长季节活动。</p>\r\n<p>防治措施：使用生物农药或天敌昆虫进行生物防治，或在幼虫期使用化学农药喷雾。</p>');
INSERT INTO `science` VALUES (33, '5', '长腿水叶甲', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/ctsyj.jpg', '<p><strong>长腿水叶甲</strong></p>\r\n<p>属性：属于昆虫纲，叶甲科。</p>\r\n<p>形态特征：体长约5毫米，椭圆形，体色多变，有金属光泽。</p>\r\n<p>危害：成虫和幼虫均取食水稻叶片，导致水稻叶片出现孔洞。</p>\r\n<p>生长规律：一年发生2-3代，幼虫期在叶片上，成虫期在水稻生长季节活动。</p>\r\n<p>防治措施：使用黄色粘板诱杀成虫，或在幼虫期使用农药喷雾防治。</p>');
INSERT INTO `science` VALUES (34, '6', '稻铁甲虫', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/dtjc.jpg', '<p><strong>稻铁甲虫</strong></p>\r\n<p>属性：属于昆虫纲，铁甲虫科。</p>\r\n<p>形态特征：体长约7毫米，椭圆形，体色为黑色或深褐色，表面有金属光泽。</p>\r\n<p>危害：成虫和幼虫均取食水稻叶片，造成水稻叶片出现不规则的食痕。</p>\r\n<p>生长规律：一年发生1-2代，幼虫期在土壤中，成虫期在水稻生长季节活动。</p>\r\n<p>防治措施：使用土壤处理剂处理土壤，或在成虫期使用化学农药喷雾防治。</p>');
INSERT INTO `science` VALUES (35, '7', '稻赤斑沫蝉', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/dcbmc.jpg', '<p><strong>稻赤斑沫蝉</strong></p>\r\n<p>属性：属于昆虫纲，沫蝉科。</p>\r\n<p>形态特征：体长约8毫米，体色为赤褐色，翅膀上有赤色斑点。</p>\r\n<p>危害：成虫和若虫均吸食水稻叶片，导致水稻叶片出现黄斑。</p>\r\n<p>生长规律：一年发生1-2代，幼虫期在土壤中，成虫期在水稻生长季节活动。</p>\r\n<p>防治措施：使用化学农药喷雾防治，或在幼虫期使用土壤处理剂。</p>');
INSERT INTO `science` VALUES (36, '8', '大稻缘蝽', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/ddyc.jpg', '<p><strong>大稻缘蝽</strong></p>\r\n<p>属性：属于昆虫纲，缘蝽科。</p>\r\n<p>形态特征：体长约10毫米，体色为黄褐色，翅膀上有黑色斑点。</p>\r\n<p>危害：成虫和若虫均吸食水稻叶片，导致水稻叶片出现黄斑。</p>\r\n<p>生长规律：一年发生1-2代，幼虫期在叶片上，成虫期在水稻生长季节活动。</p>\r\n<p>防治措施：使用黄色粘板诱杀成虫，或在幼虫期使用农药喷雾防治。</p>');
INSERT INTO `science` VALUES (37, '9', '稻秆潜蝇', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/dgqy.jpg', '<p><strong>稻秆潜蝇</strong></p>\r\n<p>属性：属于昆虫纲，潜蝇科。</p>\r\n<p>形态特征：体长约3毫米，体色为黄褐色，翅膀透明。</p>\r\n<p>危害：幼虫在水稻茎秆内部取食，造成水稻茎秆空洞，影响水稻生长。</p>\r\n<p>生长规律：一年发生多代，幼虫期在茎秆内，成虫期在水稻生长季节活动。</p>\r\n<p>防治措施：使用生物防治，如放生天敌昆虫，或使用低毒农药进行化学防治。</p>');
INSERT INTO `science` VALUES (38, '10', '稻切叶野螟', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/dqyym.jpg', '<p><strong>稻切叶野螟</strong></p>\r\n<p>属性：属于昆虫纲，螟蛾科。</p>\r\n<p>形态特征：体长约8毫米，体色为黄褐色，翅膀上有黑色斑纹。</p>\r\n<p>危害：幼虫取食水稻叶片，造成水稻叶片出现不规则的食痕。</p>\r\n<p>生长规律：一年发生2-3代，幼虫期在叶片上，成虫期在水稻生长季节活动。</p>\r\n<p>防治措施：使用生物农药或天敌昆虫进行生物防治，或在幼虫期使用化学农药喷雾。</p>');
INSERT INTO `science` VALUES (39, '11', '褐边螟', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/hbm.jpg', '<p><strong>褐边螟</strong></p>\r\n<p>属性：属于昆虫纲，螟蛾科。</p>\r\n<p>形态特征：体长约6毫米，体色为黄褐色，翅膀边缘有褐色线条。</p>\r\n<p>危害：幼虫取食水稻叶片，导致水稻叶片出现黄斑。</p>\r\n<p>生长规律：一年发生2-3代，幼虫期在叶片上，成虫期在水稻生长季节活动。</p>\r\n<p>防治措施：使用黄色粘板诱杀成虫，或在幼虫期使用农药喷雾防治。</p>');
INSERT INTO `science` VALUES (40, '12', '大绿蝽', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/dlc.jpg', '<p><strong>大绿蝽</strong></p>\r\n<p>属性：属于昆虫纲，蝽科。</p>\r\n<p>形态特征：体长约10毫米，体色为鲜绿色，翅膀透明。</p>\r\n<p>危害：成虫和若虫均吸食水稻叶片，导致水稻叶片出现黄斑。</p>\r\n<p>生长规律：一年发生1-2代，幼虫期在叶片上，成虫期在水稻生长季节活动。</p>\r\n<p>防治措施：使用化学农药喷雾防治，或在幼虫期使用生物防治方法。</p>');
INSERT INTO `science` VALUES (41, '13', '中华蚱蜢', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/zhzm.jpg', '<p><strong>中华蚱蜢</strong></p>\r\n<p>属性：属于昆虫纲，蚱科。</p>\r\n<p>形态特征：体长约20毫米，体色为绿色或褐色，具有强壮的后腿。</p>\r\n<p>危害：成虫和若虫均取食水稻叶片，造成水稻叶片出现孔洞。</p>\r\n<p>生长规律：一年发生1-2代，幼虫期在土壤中，成虫期在水稻生长季节活动。</p>\r\n<p>防治措施：使用化学农药喷雾防治，或在幼虫期使用土壤处理剂。</p>');
INSERT INTO `science` VALUES (42, '14', '福寿螺', '1', 't03', 'https://yezhiaigc.oss-cn-guangzhou.aliyuncs.com/static/chongzi/fsl.jpg', '<p><strong>福寿螺</strong></p>\r\n<p>属性：属于软体动物门，腹足纲，福寿螺科。</p>\r\n<p>形态特征：螺壳直径约2-3厘米，壳表面有褐色斑纹。</p>\r\n<p>危害：幼螺和成螺均取食水稻叶片，导致水稻叶片出现孔洞。</p>\r\n<p>生长规律：一年发生多代，幼螺期在土壤中，成螺期在水稻生长季节活动。</p>\r\n<p>防治措施：使用化学农药喷雾防治，或在幼螺期使用土壤处理剂。</p>');

SET FOREIGN_KEY_CHECKS = 1;
