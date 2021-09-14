/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : stuman

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 14/09/2021 20:15:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `credit` smallint(6) NULL DEFAULT NULL,
  `departmentname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `examdate` date NULL DEFAULT NULL,
  `semester` int(11) NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nature` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `cno`) USING BTREE,
  INDEX `course1`(`departmentname`) USING BTREE,
  INDEX `course2`(`tno`) USING BTREE,
  INDEX `cno`(`cno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 'TS001011', '改革开放与新时代', 1, '马克思主义学院', '2021-07-07', 3, '任选课', '考察', '2005121');
INSERT INTO `course` VALUES (2, 'TS001010', '礼仪文化修养	', 2, '法学院', '2021-06-17', 4, '任选课', '考察', '2005122');
INSERT INTO `course` VALUES (3, 'TS001007', '基因与人', 5, '纺织学院', '2021-06-23', 3, '任选课', '考查', '2005123');
INSERT INTO `course` VALUES (4, 'DB1201004', '纺织化学', 4, '计算机学院', '2021-07-10', 2, '选修课', '考查', '2005124');
INSERT INTO `course` VALUES (5, 'DB0102012', '视觉计算', 4, '计算机学院', '2021-07-10', 3, '任选课', '考查', '2005125');
INSERT INTO `course` VALUES (6, 'TS005008', '解码国家安全', 2, '机电学院', '2021-05-19', 1, '任选课', '考查', '2005126');
INSERT INTO `course` VALUES (7, 'TS002005', '时间简史', 1, '机电学院', '2021-05-19', 2, '任选课', '考查', '2005127');
INSERT INTO `course` VALUES (8, 'TS001003', '大学生心理健康', 2, '马克思主义学院', '2021-05-20', 6, '选修课', '考查', '2005128');
INSERT INTO `course` VALUES (9, 'DB1901007', '线性代数', 3, '理学院', '2021-06-27', 2, '必修课', '考查', '2005129');
INSERT INTO `course` VALUES (10, 'DB1201003', '有趣的经济学', 2, '经济与管理学院', '2021-06-15', 1, '选修课', '考查', '2005130');
INSERT INTO `course` VALUES (11, 'DB1010023', '西方经济学', 2, '经济与管理学院', '2021-06-27', 5, '选修课', '考试', '2005131');
INSERT INTO `course` VALUES (12, '	DB0905009', '建筑学', 3, '建筑工程学院', '2021-07-01', 3, '必修课', '考试', '2005132');
INSERT INTO `course` VALUES (13, 'DB0804024', '大学英语一', 2, '外国语学院', '2021-07-08', 1, '必修课', '考试', '2005133');
INSERT INTO `course` VALUES (14, 'DB0801117', '大学英语二', 3, '外国语学院', '2021-07-07', 2, '必修课', '考试', '2005134');
INSERT INTO `course` VALUES (15, 'DB0801099', '计算机导论', 2, '计算机学院', '2021-06-27', 1, '选修课', '考查', '2005135');
INSERT INTO `course` VALUES (16, 'DB0801064', '艺术鉴赏', 2, '艺术设计学院', '2021-06-27', 2, '选修课', '考查', '2005136');
INSERT INTO `course` VALUES (17, 'DB0801050', '纺纱学', 3, '纺织学院', '2021-07-01', 3, '选修课', '考查', '2005137');
INSERT INTO `course` VALUES (18, 'DB0403013', '数据结构', 4, '计算机学院', '2021-07-08', 2, '必修课', '考试', '2005138');
INSERT INTO `course` VALUES (19, 'DB0104002', '大学英语三', 2, '外国语学院', '2021-07-09', 3, '必修课', '考试', '2005139');
INSERT INTO `course` VALUES (20, '	DB0103029', '概率论与数理统计	', 3, '理学院', '2021-07-06', 3, '必修课', '考查', '2005140');
INSERT INTO `course` VALUES (21, 'DB0102009', '离散数学', 3, '理学院', '2021-07-09', 3, '必修课', '考试', '2005121');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departmentname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `teachingsecretaryname` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `teachingsecretaryid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '123456',
  PRIMARY KEY (`id`, `departmentname`) USING BTREE,
  INDEX `departmentname`(`departmentname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '计算机学院', '刘萍', '2002031', '123456');
INSERT INTO `department` VALUES (2, '纺织学院', '张伟', '2002032', '123456');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `majorname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `departmentname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `credit` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `majorname`) USING BTREE,
  INDEX `major1`(`departmentname`) USING BTREE,
  INDEX `majorname`(`majorname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES (1, '计算机科学与技术', '计算机学院', 135);
INSERT INTO `major` VALUES (2, '人工智能', '计算机学院', 150);
INSERT INTO `major` VALUES (3, '信息安全', '计算机学院', 125);
INSERT INTO `major` VALUES (4, '网络工程', '计算机学院', 125);
INSERT INTO `major` VALUES (5, '纺织工程', '纺织学院', 120);
INSERT INTO `major` VALUES (6, '非织造工程', '纺织学院', 120);
INSERT INTO `major` VALUES (7, '轻化工程', '纺织学院', 120);
INSERT INTO `major` VALUES (8, '221122', '计算机学院', 20);

-- ----------------------------
-- Table structure for professional
-- ----------------------------
DROP TABLE IF EXISTS `professional`;
CREATE TABLE `professional`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `college` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of professional
-- ----------------------------
INSERT INTO `professional` VALUES (1, '计算机学院', '计算机科学与技术');
INSERT INTO `professional` VALUES (2, '计算机学院', '人工智能');
INSERT INTO `professional` VALUES (3, '计算机学院', '信息安全');
INSERT INTO `professional` VALUES (4, '计算机学院', '网络工程');
INSERT INTO `professional` VALUES (5, '纺织学院', '纺织工程');
INSERT INTO `professional` VALUES (6, '纺织学院', '非织造工程');
INSERT INTO `professional` VALUES (7, '纺织学院', '轻化工程');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `grades` float NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sc1`(`sno`) USING BTREE,
  INDEX `sc2`(`cno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES (1, '201905029209', 'TS001011', '重修', 50);
INSERT INTO `sc` VALUES (4, '201905024427', 'DB1901007', '重修', 70);
INSERT INTO `sc` VALUES (5, '201905029204', 'DB0905009', '初修', 85);
INSERT INTO `sc` VALUES (6, '201905029206', 'DB0801117', '初修', 58);
INSERT INTO `sc` VALUES (7, '201905029202', 'DB0801064', '初修', 85);
INSERT INTO `sc` VALUES (8, '201905024427', 'DB0801050', '初修', 75);
INSERT INTO `sc` VALUES (9, '201905024425', 'DB0403013', '初修', 78);
INSERT INTO `sc` VALUES (10, '201905024423', 'DB0801117', '初修', 85);
INSERT INTO `sc` VALUES (11, '201905024422', 'DB1901007', '初修', 82);
INSERT INTO `sc` VALUES (14, '201905024409', 'TS001003', '初修', 89);
INSERT INTO `sc` VALUES (16, '201905029202', 'DB0801050', '初修', 91);
INSERT INTO `sc` VALUES (17, '201905024425', 'DB1901007', '初修', NULL);
INSERT INTO `sc` VALUES (18, '201905024427', 'DB1901007', '初修', 100);
INSERT INTO `sc` VALUES (19, '201905029208', 'TS001007', '初修', 20);
INSERT INTO `sc` VALUES (20, '201905029208', 'DB1901000', '初修', 59);
INSERT INTO `sc` VALUES (58, '201905024427', 'DB1901007', '初修', NULL);
INSERT INTO `sc` VALUES (98, '201905024427', 'DB0102009', '初修', 100);
INSERT INTO `sc` VALUES (103, '201905029208', 'TS001011', '初修', NULL);
INSERT INTO `sc` VALUES (104, '201905029208', 'DB0801099', '初修', NULL);
INSERT INTO `sc` VALUES (105, '201905029209', 'DB0801099', '初修', 75);
INSERT INTO `sc` VALUES (106, '201905029206', 'DB0801099', '初修', NULL);
INSERT INTO `sc` VALUES (107, '201912345678', 'DB0801099', '初修', NULL);
INSERT INTO `sc` VALUES (108, '201912345678', 'DB0801064', '初修', 56);
INSERT INTO `sc` VALUES (109, '201912345678', 'DB0801117', '初修', 80);
INSERT INTO `sc` VALUES (110, '201905029209', 'DB0102009', '初修', NULL);
INSERT INTO `sc` VALUES (111, '201905024427', 'DB1901007', '初修', NULL);
INSERT INTO `sc` VALUES (112, '201905029208', 'DB1901007', '初修', NULL);
INSERT INTO `sc` VALUES (113, '201905029208', 'DB0801064', '初修', NULL);
INSERT INTO `sc` VALUES (114, '201905029206', 'TS001011', '初修', NULL);
INSERT INTO `sc` VALUES (115, '201905024407', 'TS001011', '初修', NULL);
INSERT INTO `sc` VALUES (116, '201905029204', 'TS001011', '重修', 0);
INSERT INTO `sc` VALUES (117, '201905029204', 'TS001011', '初修', 12);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `grade` int(11) NULL DEFAULT NULL,
  `enrollmentdate` date NULL DEFAULT NULL,
  `password` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `departmentname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `studentmajor` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `sno`) USING BTREE,
  INDEX `student1`(`departmentname`) USING BTREE,
  INDEX `student2`(`studentmajor`) USING BTREE,
  INDEX `sno`(`sno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (6, '201905029204', 4, '2019-09-01', '123456', '王梦雪', '女', 18, '纺织学院', '纺织工程');
INSERT INTO `student` VALUES (7, '201905029203', 4, '2019-09-01', '123456', '夏娜', '男', 19, '纺织学院', '纺织工程');
INSERT INTO `student` VALUES (8, '201905029202', 4, '2019-09-01', '123456', '刘旭', '男', 20, '纺织学院', '纺织工程');
INSERT INTO `student` VALUES (9, '201905029201', 4, '2019-09-01', '123456', '赵一', '女', 20, '纺织学院', '非织造工程');
INSERT INTO `student` VALUES (12, '201905024427', 2, '2019-09-01', '123456', '李毕艳', '男', 21, '纺织学院', '非织造工程');
INSERT INTO `student` VALUES (13, '201905024428', 2, '2019-09-01', '123456', '王浩', '男', 21, '纺织学院', '非织造工程');
INSERT INTO `student` VALUES (15, '201905024426', 3, '2019-09-01', '123456', '赵坤', '女', 10, '纺织学院', '轻化工程');
INSERT INTO `student` VALUES (20, '201905024420', 2, '2019-09-01', '123456', '李庆文', '男', 20, '计算机学院', '计算机科学与技术');
INSERT INTO `student` VALUES (21, '201904144429', 2, '2019-09-01', '123456', '李盼盼', '女', 18, '计算机学院', '网络工程');
INSERT INTO `student` VALUES (22, '201904144423', 2, '2019-09-01', '123456', '韩云飞', '女', 22, '计算机学院', '计算机科学与技术');
INSERT INTO `student` VALUES (23, '201905024409', 3, '2019-09-01', '123456', '张一飞', '女', 20, '计算机学院', '计算机科学与技术');
INSERT INTO `student` VALUES (25, '201905024403', 1, '2019-09-01', '123456', '刘东', '男', 18, '计算机学院', '网络工程');
INSERT INTO `student` VALUES (26, '201205356658', 3, '2019-09-01', '123456', '陈阳', '男', 20, '计算机学院', '人工智能');
INSERT INTO `student` VALUES (30, '201905356658', 4, '2019-09-01', '123456', '张云', '女', 19, '计算机学院', '人工智能');
INSERT INTO `student` VALUES (31, '201905024407', 2, '2019-09-01', '123456', '黄欢', '男', 20, '计算机学院', '信息安全');
INSERT INTO `student` VALUES (32, '201905024408', 4, '2019-09-01', '123456', '画笔', '女', 21, '计算机学院', '信息安全');
INSERT INTO `student` VALUES (33, '201905024422', 1, '2021-12-06', NULL, '花费', '男', 18, '计算机学院', '计算机科学与技术');
INSERT INTO `student` VALUES (34, '201904144434', 2, '2021-07-30', NULL, 'rrr', '女', 25, '计算机学院', '计算机科学与技术');
INSERT INTO `student` VALUES (35, '201904144434', 1, '2021-12-06', NULL, '李白', '男', 12, '计算机学院', '计算机科学与技术');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tno` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `departmentname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `tno`) USING BTREE,
  INDEX `teacher1`(`departmentname`) USING BTREE,
  INDEX `tno`(`tno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '2005121', '刘满贵', '男', '计算机学院');
INSERT INTO `teacher` VALUES (2, '2005122', '杜茂生', '女', '纺织学院');
INSERT INTO `teacher` VALUES (3, '2005123', '白莲女', '女', '计算机学院');
INSERT INTO `teacher` VALUES (4, '2005124', '刘润生', '男', '纺织学院');
INSERT INTO `teacher` VALUES (5, '2005125', '刘海欢', '女', '电信学院');
INSERT INTO `teacher` VALUES (6, '2005126', '孙丽萍', '男', '电信学院');
INSERT INTO `teacher` VALUES (7, '2005127', '康桃花', '女', '电信学院');
INSERT INTO `teacher` VALUES (8, '2005128', '陈桂平', '男', '马克思学院');
INSERT INTO `teacher` VALUES (9, '2005129', '丁冬琴', '女', '纺织学院');
INSERT INTO `teacher` VALUES (10, '2005130', '孙立军', '男', '纺织学院');
INSERT INTO `teacher` VALUES (11, '2005131', '张亮', '女', '计算机学院');
INSERT INTO `teacher` VALUES (12, '2005132', '贾大林', '女', '计算机学院');
INSERT INTO `teacher` VALUES (13, '2005133', '刘来有', '男', '计算机学院');
INSERT INTO `teacher` VALUES (14, '2005134', '杜云', '女', '艺术设计学院');
INSERT INTO `teacher` VALUES (15, '2005135', '张飞雄', '女', '纺织学院');
INSERT INTO `teacher` VALUES (16, '2005136', '张永强', '男', '艺术设计学院');
INSERT INTO `teacher` VALUES (17, '2005137', '魏红', '女', '理学院');
INSERT INTO `teacher` VALUES (18, '2005138', '刘东', '男', '马克思主义学院');
INSERT INTO `teacher` VALUES (19, '2005139', '李二明', '女', '理学院');
INSERT INTO `teacher` VALUES (20, '2005140', '王二冰', '男', '马克思主义学院');
INSERT INTO `teacher` VALUES (21, '2005141', '张海燕', '女', '计算机学院');
INSERT INTO `teacher` VALUES (22, '2005141', '李明', '男', '计算机学院');
INSERT INTO `teacher` VALUES (23, '120136', '黄人', '男', '计算机学院');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin');

SET FOREIGN_KEY_CHECKS = 1;
