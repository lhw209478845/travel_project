-- MySQL dump 10.13  Distrib 9.2.0, for macos15 (arm64)
--
-- Host: localhost    Database: travel
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_cms_car`
--

DROP TABLE IF EXISTS `t_cms_car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cms_car` (
  `ID` varchar(46) NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '车票标题',
  `START_PLACE` varchar(20) DEFAULT NULL COMMENT '出发地点',
  `END_PLACE` varchar(20) DEFAULT NULL COMMENT '到达地点',
  `START_DATE_AND_TIME` varchar(100) DEFAULT NULL COMMENT '出发日期跟时间',
  `NEED_TIME` double DEFAULT NULL COMMENT '需要时间',
  `GATHER_PLACE` varchar(20) DEFAULT NULL COMMENT '上车集中地',
  `TYPE` int DEFAULT NULL COMMENT '车的类型，0是飞机，1是火车，2是汽车',
  `IMG_URL` varchar(200) DEFAULT NULL COMMENT '图片',
  `STATE` int DEFAULT NULL,
  `REMARK` varchar(5000) DEFAULT NULL COMMENT '备注',
  `PRICE` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cms_car`
--

LOCK TABLES `t_cms_car` WRITE;
/*!40000 ALTER TABLE `t_cms_car` DISABLE KEYS */;
INSERT INTO `t_cms_car` VALUES ('3b9c39247b9d4a1cb6601e8ac34f7a37',NULL,'2025-02-24 15:52:51',1,NULL,NULL,'北京-成都','北京','成都','2025-02-24',0,'北京',0,NULL,0,'飞机票',999),('47114de7bbab4aa4803289b42a0d78b0',NULL,'2025-02-24 15:52:47',1,NULL,NULL,'北京-成都','北京','成都','2025-02-24',0,'北京',0,NULL,1,'飞机票',999),('4dad7020f9df454aab8dcace0b6379fc',NULL,'2025-02-24 15:51:22',0,NULL,NULL,'北京-黄山','北京','黄山','2025-02-24',0,'北京',1,NULL,1,'火车票',999),('ab60fda5c93a4db39ff8152fe68c485b',NULL,'2025-02-24 15:52:17',0,NULL,NULL,'北京-杭州','北京','杭州','2025-02-24',0,'北京',2,NULL,1,'汽车票',999),('d4022f5c8a3e497eb396c19315b96533',NULL,'2025-02-24 15:52:47',0,NULL,NULL,'北京-成都','北京','成都','2025-02-24',0,'北京',0,NULL,1,'飞机票',999),('f3ba7e55fe46472082402bbad925efec',NULL,'2025-02-24 15:50:40',0,NULL,NULL,'北京-丽江','北京','丽江','2025-02-24',0,'北京',0,NULL,1,'飞机票',1999),('fc7ea38ba1b246bbbc61adc42d34a569',NULL,'2025-02-24 15:53:36',0,NULL,NULL,'北京-广州','北京','广州','2025-02-24',0,'北京',0,NULL,1,'飞机票',888);
/*!40000 ALTER TABLE `t_cms_car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cms_hotel`
--

DROP TABLE IF EXISTS `t_cms_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cms_hotel` (
  `ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `HOTEL_NAME` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '酒店名称',
  `HOTEL_INTRO` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '酒店简介',
  `HOTEL_STAR` int DEFAULT NULL COMMENT '酒店星级',
  `LINK_PHONE` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `ADDRESS` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '地址',
  `STATE` int DEFAULT NULL COMMENT '状态',
  `IMG_URL` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cms_hotel`
--

LOCK TABLES `t_cms_hotel` WRITE;
/*!40000 ALTER TABLE `t_cms_hotel` DISABLE KEYS */;
INSERT INTO `t_cms_hotel` VALUES ('16285d122f174d6a9ec629607de49d05',NULL,'2025-02-24 15:49:22',0,NULL,NULL,'汉庭酒店','豪华',5,'2131434','北京市',1,'/hotel/login.jpg',199),('f334bef6a8bd4b94b94d16e85d05749f',NULL,'2025-02-23 21:03:45',0,NULL,'2025-02-24 15:48:08','如家酒店','舒适',3,'3275605367','北京市',1,'/hotel/login.jpg',299);
/*!40000 ALTER TABLE `t_cms_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cms_insurance`
--

DROP TABLE IF EXISTS `t_cms_insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cms_insurance` (
  `ID` varchar(46) NOT NULL,
  `ADD_USER_ID` varchar(46) DEFAULT NULL,
  `ADD_TIME` datetime DEFAULT NULL,
  `DELETE_STATUS` int DEFAULT '0',
  `MODIFY_USER_ID` varchar(46) DEFAULT NULL,
  `MODIFY_TIME` datetime DEFAULT NULL,
  `TITLE` varchar(100) DEFAULT NULL COMMENT '保险公司',
  `INSURANCE_COMPANY` int DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  `TYPE` int DEFAULT NULL,
  `RESUME` varchar(500) DEFAULT NULL,
  `STATE` int DEFAULT NULL,
  `IMG_URL` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cms_insurance`
--

LOCK TABLES `t_cms_insurance` WRITE;
/*!40000 ALTER TABLE `t_cms_insurance` DISABLE KEYS */;
INSERT INTO `t_cms_insurance` VALUES ('71b5ef89d51c432e9086b2d68b9992b9',NULL,'2025-02-24 15:55:13',0,NULL,'2025-02-24 15:56:48','旅游险',0,199,0,'旅游保险是旅游者的重要保障，尤其在出境或高风险活动中不可或缺。选择时需根据行程、预算和需求定制，确保覆盖主要风险（如医疗、财产、行程中断）。在中国，平安、太平洋、安联等保险公司提供多样化产品，线上购买便捷，理赔流程相对成熟。',1,NULL),('a778b549afdc487398c3bcc4221d8e9a',NULL,'2025-02-24 15:56:36',0,NULL,NULL,'意外险',1,299,1,'意外保险是日常生活和特定活动中的重要保障，适合防范意外风险的经济损失。选择时需根据职业、活动类型和预算定制，确保保额和保障范围满足需求。在中国，平安、太平洋、安联等保险公司提供多样化产品，线上购买便捷，理赔流程成熟。',1,NULL),('ed9619d1f4c547818797814b41b34c3d',NULL,'2025-02-24 15:56:37',1,NULL,NULL,'意外险',1,299,1,'意外保险是日常生活和特定活动中的重要保障，适合防范意外风险的经济损失。选择时需根据职业、活动类型和预算定制，确保保额和保障范围满足需求。在中国，平安、太平洋、安联等保险公司提供多样化产品，线上购买便捷，理赔流程成熟。',1,NULL);
/*!40000 ALTER TABLE `t_cms_insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cms_message`
--

DROP TABLE IF EXISTS `t_cms_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cms_message` (
  `ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '用户ID',
  `USER_NAME` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '用户名',
  `NAME` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `TITLE` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '标题',
  `CONTENT` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '内容',
  `STATE` int DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cms_message`
--

LOCK TABLES `t_cms_message` WRITE;
/*!40000 ALTER TABLE `t_cms_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cms_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cms_scenic_spot`
--

DROP TABLE IF EXISTS `t_cms_scenic_spot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cms_scenic_spot` (
  `ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `SPOT_NAME` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '景点名称',
  `SPOT_INTRO` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '景点简介',
  `SPOT_STAR` int DEFAULT NULL COMMENT '景点星级',
  `SPOT_ADDRESS` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '景点地址',
  `OPEN_TIME` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '开放时间',
  `TICKETS_MESSAGE` double DEFAULT NULL COMMENT '门票',
  `STATE` int DEFAULT NULL COMMENT '状态',
  `IMG_URL` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cms_scenic_spot`
--

LOCK TABLES `t_cms_scenic_spot` WRITE;
/*!40000 ALTER TABLE `t_cms_scenic_spot` DISABLE KEYS */;
INSERT INTO `t_cms_scenic_spot` VALUES ('0ab29cc412c8401fbe7d4fe51ec39913',NULL,'2025-02-24 14:44:07',1,NULL,NULL,'都江堰','位置：四川省成都市\r\n类型：历史水利工程与自然景观\r\n门票：都江堰景区约90元，青城山联动票约110元\r\n游览时间：半日-1天\r\n适合季节：春季（3-5月）或秋季（9-10月），气候宜人\r\n推荐理由：都江堰是世界文化遗产，结合自然美景和李冰文化，适合历史与户外爱好者。',5,'成都','9:00-17:00',120,1,'/scenicSpot/doujiangyan.jpg'),('37fa05345a3d4e3eaede287040664cf3',NULL,'2025-02-24 15:42:44',0,NULL,NULL,'丽江 - 玉龙雪山','位置：云南省丽江市 门票：玉龙雪山景区约105元（含缆车约200元） 游览时间：1-2天 适合季节：春季（4-5月）或秋季（9-10月），气候舒适。推荐理由：玉龙雪山是云南标志性景点，结合纳西族文化和古城丽江',5,'丽江','9:00-17:00',0,1,'/scenicSpot/lijiang.jpg'),('397e702731a64134840ca1d056a69bfc',NULL,'2025-02-24 14:37:59',0,NULL,'2025-02-24 14:38:03','西湖','位置：浙江省杭州市 门票：免费 适合季节：春季（3-5月，樱花和桃花盛开）或秋季（9-10月，红叶美景） 推荐理由：西湖以其自然风光和历史文化闻名，适合休闲游和摄影爱好者。',5,'杭州','9:00-17:00',0,1,'/scenicSpot/xihu.jpg'),('3c570af9dd4841868b396cad16a34006',NULL,'2025-02-24 14:44:07',1,NULL,NULL,'都江堰','位置：四川省成都市\r\n类型：历史水利工程与自然景观\r\n门票：都江堰景区约90元，青城山联动票约110元\r\n游览时间：半日-1天\r\n适合季节：春季（3-5月）或秋季（9-10月），气候宜人\r\n推荐理由：都江堰是世界文化遗产，结合自然美景和李冰文化，适合历史与户外爱好者。',5,'成都','9:00-17:00',120,1,'/scenicSpot/doujiangyan.jpg'),('4090c8ba52854355948e003309b22aed',NULL,'2025-02-24 14:44:06',1,NULL,NULL,'都江堰','位置：四川省成都市\r\n类型：历史水利工程与自然景观\r\n门票：都江堰景区约90元，青城山联动票约110元\r\n游览时间：半日-1天\r\n适合季节：春季（3-5月）或秋季（9-10月），气候宜人\r\n推荐理由：都江堰是世界文化遗产，结合自然美景和李冰文化，适合历史与户外爱好者。',5,'成都','9:00-17:00',120,1,'/scenicSpot/doujiangyan.jpg'),('44f43105671b44d1bcebd3d87162647c',NULL,'2025-02-24 14:44:05',0,NULL,NULL,'都江堰','位置：四川省成都市\r\n类型：历史水利工程与自然景观\r\n门票：都江堰景区约90元，青城山联动票约110元\r\n游览时间：半日-1天\r\n适合季节：春季（3-5月）或秋季（9-10月），气候宜人\r\n推荐理由：都江堰是世界文化遗产，结合自然美景和李冰文化，适合历史与户外爱好者。',5,'成都','9:00-17:00',120,1,'/scenicSpot/doujiangyan.jpg'),('4d1ee18079be4df4b2d15f5894b0e4c7',NULL,'2025-02-24 15:17:39',0,NULL,NULL,'广州 - 珠江夜游 + 越秀公园','位置：广东省广州市\r\n门票：珠江夜游约80-120元\r\n游览时间：半日-1天 适合季节：秋季（10-11月）或冬季（12-2月），气候凉爽 推荐理由：珠江夜游展现广州现代与历史交融的魅力，越秀公园是自然与文化结合的好去处。',5,'广州','9:00-17:00',0,1,'/scenicSpot/zhujiang.jpg'),('63c1a4227fcc4baeb51424ac0eb261aa',NULL,'2025-02-24 14:44:09',1,NULL,NULL,'都江堰','位置：四川省成都市\r\n类型：历史水利工程与自然景观\r\n门票：都江堰景区约90元，青城山联动票约110元\r\n游览时间：半日-1天\r\n适合季节：春季（3-5月）或秋季（9-10月），气候宜人\r\n推荐理由：都江堰是世界文化遗产，结合自然美景和李冰文化，适合历史与户外爱好者。',5,'成都','9:00-17:00',120,1,'/scenicSpot/doujiangyan.jpg'),('8b504aceca1241ff87b66df7012cebb6',NULL,'2025-02-24 14:44:08',1,NULL,NULL,'都江堰','位置：四川省成都市\r\n类型：历史水利工程与自然景观\r\n门票：都江堰景区约90元，青城山联动票约110元\r\n游览时间：半日-1天\r\n适合季节：春季（3-5月）或秋季（9-10月），气候宜人\r\n推荐理由：都江堰是世界文化遗产，结合自然美景和李冰文化，适合历史与户外爱好者。',5,'成都','9:00-17:00',120,1,'/scenicSpot/doujiangyan.jpg'),('9748b619137e41a9bf4b985638dfe2e9',NULL,'2025-02-24 14:44:08',1,NULL,NULL,'都江堰','位置：四川省成都市\r\n类型：历史水利工程与自然景观\r\n门票：都江堰景区约90元，青城山联动票约110元\r\n游览时间：半日-1天\r\n适合季节：春季（3-5月）或秋季（9-10月），气候宜人\r\n推荐理由：都江堰是世界文化遗产，结合自然美景和李冰文化，适合历史与户外爱好者。',5,'成都','9:00-17:00',120,1,'/scenicSpot/doujiangyan.jpg'),('b0dccd3352ff4590ad67bb987a9e3e80',NULL,'2025-02-23 21:00:50',0,NULL,'2025-02-24 14:37:26','大唐不夜城','门票约120元，建议游览半日，世界文化遗产。 其他景点（如回民街）可根据预算和时间灵活调整。 春季（3月）适合，但夏季（7-8月）或秋季（9-10月）也适合不同景点的游览',5,'西安','9:00-17:00',120,1,'/scenicSpot/xian.jpg'),('c0d9d2d9fd3847ad84512fd97fddf9c0',NULL,'2025-02-24 14:44:09',1,NULL,NULL,'都江堰','位置：四川省成都市\r\n类型：历史水利工程与自然景观\r\n门票：都江堰景区约90元，青城山联动票约110元\r\n游览时间：半日-1天\r\n适合季节：春季（3-5月）或秋季（9-10月），气候宜人\r\n推荐理由：都江堰是世界文化遗产，结合自然美景和李冰文化，适合历史与户外爱好者。',5,'成都','9:00-17:00',120,1,'/scenicSpot/doujiangyan.jpg'),('c22ea2b3f370410f8835d7d1f34828df',NULL,'2025-02-24 14:44:13',1,NULL,NULL,'都江堰','位置：四川省成都市\r\n类型：历史水利工程与自然景观\r\n门票：都江堰景区约90元，青城山联动票约110元\r\n游览时间：半日-1天\r\n适合季节：春季（3-5月）或秋季（9-10月），气候宜人\r\n推荐理由：都江堰是世界文化遗产，结合自然美景和李冰文化，适合历史与户外爱好者。',5,'成都','9:00-17:00',120,1,'/scenicSpot/doujiangyan.jpg'),('c5042663ab3949df955ce2c065332a63',NULL,'2025-02-24 14:44:08',1,NULL,NULL,'都江堰','位置：四川省成都市\r\n类型：历史水利工程与自然景观\r\n门票：都江堰景区约90元，青城山联动票约110元\r\n游览时间：半日-1天\r\n适合季节：春季（3-5月）或秋季（9-10月），气候宜人\r\n推荐理由：都江堰是世界文化遗产，结合自然美景和李冰文化，适合历史与户外爱好者。',5,'成都','9:00-17:00',120,1,'/scenicSpot/doujiangyan.jpg'),('e3f209fc0b1c46f3941a533a95886027',NULL,'2025-02-24 15:35:05',0,NULL,NULL,'张家界 - 袁家界与金鞭溪','湖南省张家界市 门票：张家界国家森林公园248元/4天（含环保车） 适合季节：春季（4-5月）或秋季（10-11月），避免夏季雨季.推荐理由：张家界以其壮丽的砂岩峰林闻名，吸引了《阿凡达》灵感。',5,'张家界','9:00-17:00',200,1,'/scenicSpot/zhangjiajie.jpg'),('ec9ce60f348a407fba2a4b7daeaf4734',NULL,'2025-02-24 14:44:07',1,NULL,NULL,'都江堰','位置：四川省成都市\r\n类型：历史水利工程与自然景观\r\n门票：都江堰景区约90元，青城山联动票约110元\r\n游览时间：半日-1天\r\n适合季节：春季（3-5月）或秋季（9-10月），气候宜人\r\n推荐理由：都江堰是世界文化遗产，结合自然美景和李冰文化，适合历史与户外爱好者。',5,'成都','9:00-17:00',120,1,'/scenicSpot/doujiangyan.jpg');
/*!40000 ALTER TABLE `t_cms_scenic_spot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cms_strategy`
--

DROP TABLE IF EXISTS `t_cms_strategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cms_strategy` (
  `ID` varchar(46) NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `IMG_URL` varchar(200) DEFAULT NULL COMMENT 'logo图片地址',
  `TITLE` varchar(100) DEFAULT NULL COMMENT '主题',
  `RATING` int DEFAULT NULL COMMENT '等级',
  `SUMMARY` varchar(1000) DEFAULT NULL COMMENT '简介',
  `INTRO_URL` varchar(200) DEFAULT NULL COMMENT '内容图片地址',
  `STATE` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cms_strategy`
--

LOCK TABLES `t_cms_strategy` WRITE;
/*!40000 ALTER TABLE `t_cms_strategy` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_cms_strategy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cms_travel_route`
--

DROP TABLE IF EXISTS `t_cms_travel_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_cms_travel_route` (
  `ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `TITLE` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '标题',
  `START_SITE` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '出发地点',
  `END_SITE` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '结束地点',
  `END_TIME` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '结束日期',
  `START_TIME` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '出团日期',
  `DAY` int DEFAULT NULL COMMENT '持续天数',
  `PRODUCT_CODE` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '产品编号',
  `PRICE` double DEFAULT NULL COMMENT '价格',
  `STATE` int DEFAULT NULL COMMENT '状态',
  `IMG_URL` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `INTRO` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cms_travel_route`
--

LOCK TABLES `t_cms_travel_route` WRITE;
/*!40000 ALTER TABLE `t_cms_travel_route` DISABLE KEYS */;
INSERT INTO `t_cms_travel_route` VALUES ('1e939bbed6d244bea1c38a73425e2e65',NULL,'2025-02-24 15:41:28',0,NULL,NULL,'丽江 - 玉龙雪山','北京','丽江','2025-02-24','2025-02-24',NULL,NULL,99,1,'/travelRoute/lijiang.jpg','位置：云南省丽江市\r\n门票：玉龙雪山景区约105元（含缆车约200元）\r\n游览时间：1-2天 适合季节：春季（4-5月）或秋季（9-10月），气候舒适。推荐理由：玉龙雪山是云南标志性景点，结合纳西族文化和古城丽江，适合文化与自然爱好者。'),('27ff5a64a456465492b99a09a173e9bd',NULL,'2025-02-24 14:40:20',0,NULL,NULL,'成都 - 都江堰','北京','成都','2025-02-24','2025-02-24',NULL,NULL,1999,1,'/travelRoute/doujiangyan.jpg','位置：四川省成都市\r\n门票：都江堰景区约90元，青城山联动票约110\r\n适合季节：春季（3-5月）或秋季（9-10月），气候宜人 推荐理由：都江堰是世界文化遗产，结合自然美景和李冰文化，适合历史与户外爱好者。'),('75cb0e8e5b0a447189804cbc8c16eb6c',NULL,'2025-02-24 14:27:05',0,NULL,'2025-02-24 14:29:56','秦始皇兵马俑博物馆、大雁塔、回民街','北京','西安','2025-02-28','2025-02-23',NULL,NULL,1999,1,'/travelRoute/xian.jpg','门票约120元，建议游览半日，世界文化遗产。\r\n其他景点（如回民街）可根据预算和时间灵活调整。\r\n春季（3月）适合，但夏季（7-8月）或秋季（9-10月）也适合不同景点的游览。'),('7de17a0d1c114922aae97c72477ff974',NULL,'2025-02-24 15:33:33',0,NULL,NULL,'张家界 - 袁家界与金鞭溪','北京','张家界','2025-02-24','2025-02-24',NULL,NULL,888,1,'/travelRoute/zhangjiajie.jpg','位置：湖南省张家界市\r\n门票：张家界国家森林公园248元/4天（含环保车）\r\n适合季节：春季（4-5月）或秋季（10-11月），避免夏季雨季.推荐理由：张家界以其壮丽的砂岩峰林闻名，吸引了《阿凡达》灵感，是户外探险和摄影的天堂。'),('a49135b717de43e3b731e734d65f5ea5',NULL,'2025-03-05 11:58:36',0,NULL,NULL,'万里长城','广州','北京','2025-03-05','2025-03-12',NULL,NULL,99,1,'/travelRoute/changcheng.jpg','长城又称万里长城，是世界上修建最长、工程量最大的一项古代防御工程，也是世界十大奇迹之一，更是中华民族的骄傲和世界文化遗产的瑰宝。'),('bfa15c6e1fd347c889df02e84f883eb1',NULL,'2025-02-24 14:31:02',0,NULL,'2025-02-24 14:36:21','杭州 - 西湖','北京','杭州','2025-02-28','2025-02-24',NULL,NULL,999,1,'/travelRoute/xihu.jpg','位置：浙江省杭州市\r\n门票：免费  适合季节：春季（3-5月，樱花和桃花盛开）或秋季（9-10月，红叶美景）\r\n推荐理由：西湖以其自然风光和历史文化闻名，适合休闲游和摄影爱好者。'),('d83829ea27df4f009832c6acb8c883b0',NULL,'2025-02-24 15:45:24',0,NULL,'2025-02-24 15:45:58','黄山 - 迎客松与天都峰','北京','黄山','2025-02-24','2025-02-24',NULL,NULL,999,1,'/travelRoute/huangshan.jpg','位置：安徽省黄山市\r\n门票：黄山风景区约230元/3天（含环保车）\r\n适合季节：春季（4-5月）或秋季（9-10月），避开冬季冰雪或夏季雨季。'),('f5f6b8cafb694a47a27bebccd3d4dfbc',NULL,'2025-02-24 15:04:56',0,NULL,NULL,'广州 - 珠江夜游 + 越秀公园','北京','广州','2025-02-24','2025-02-24',NULL,NULL,888,1,'/travelRoute/zhujiang.jpg','位置：广东省广州市\r\n门票：珠江夜游约80-120元\r\n适合季节：秋季（10-11月）或冬季（12-2月），气候凉爽。推荐理由：珠江夜游展现广州现代与历史交融的魅力，越秀公园是自然与文化结合的好去处。');
/*!40000 ALTER TABLE `t_cms_travel_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pz_admin_user`
--

DROP TABLE IF EXISTS `t_pz_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_pz_admin_user` (
  `ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `USER_NAME` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '密码',
  `LINK_TEL` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `NAME` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `STATE` int DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pz_admin_user`
--

LOCK TABLES `t_pz_admin_user` WRITE;
/*!40000 ALTER TABLE `t_pz_admin_user` DISABLE KEYS */;
INSERT INTO `t_pz_admin_user` VALUES ('b496894b89754a848e9b74ff66a05d44',NULL,'2025-02-05 13:55:36',0,NULL,NULL,'root','123456','18811111234','超级管理员',1);
/*!40000 ALTER TABLE `t_pz_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pz_province`
--

DROP TABLE IF EXISTS `t_pz_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_pz_province` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `province` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '省份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pz_province`
--

LOCK TABLES `t_pz_province` WRITE;
/*!40000 ALTER TABLE `t_pz_province` DISABLE KEYS */;
INSERT INTO `t_pz_province` VALUES (1,'北京'),(2,'天津'),(3,'上海'),(4,'重庆'),(5,'河北'),(6,'河南'),(7,'云南'),(8,'辽宁'),(9,'黑龙江'),(10,'湖南'),(11,'安徽'),(12,'山东'),(13,'新疆'),(14,'江苏'),(15,'浙江'),(16,'江西'),(17,'湖北'),(18,'广西'),(19,'甘肃'),(20,'山西'),(21,'内蒙古'),(22,'陕西'),(23,'吉林'),(24,'福建'),(25,'贵州'),(26,'广东'),(27,'青海'),(28,'西藏'),(29,'四川'),(30,'宁夏'),(31,'海南'),(32,'台湾'),(33,'香港'),(34,'澳门');
/*!40000 ALTER TABLE `t_pz_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pz_user`
--

DROP TABLE IF EXISTS `t_pz_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_pz_user` (
  `ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `USER_NAME` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '密码',
  `LINK_TEL` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `NAME` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '真实姓名',
  `IC_CODE` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '身份证',
  `STATE` int DEFAULT '1' COMMENT '状态',
  `PROVINCE` int DEFAULT NULL COMMENT '省份',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pz_user`
--

LOCK TABLES `t_pz_user` WRITE;
/*!40000 ALTER TABLE `t_pz_user` DISABLE KEYS */;
INSERT INTO `t_pz_user` VALUES ('e5026e64fd8a47bf94b121f34ccff63c',NULL,'2025-02-19 10:28:20',0,NULL,NULL,'user1','123456','12345678901','李四','4645646516156446545',1,1);
/*!40000 ALTER TABLE `t_pz_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_yw_order`
--

DROP TABLE IF EXISTS `t_yw_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_yw_order` (
  `ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT '主键',
  `ADD_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '添加人ID',
  `ADD_TIME` datetime DEFAULT NULL COMMENT '添加时间',
  `DELETE_STATUS` int DEFAULT '0' COMMENT '删除标志',
  `MODIFY_USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '修改人ID',
  `MODIFY_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  `USER_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '用户ID',
  `USER_NAME` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '用户名',
  `PRODUCT_ID` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '产品ID',
  `PRODUCT_NAME` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '产品名称',
  `FEE` double DEFAULT NULL COMMENT '订单费用',
  `PRODUCT_TYPE` int DEFAULT NULL COMMENT '产品类型1：旅游2：酒店',
  `STATE` int DEFAULT NULL COMMENT '状态',
  `ORDER_CODE` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '订单编号',
  `ORDER_TIME` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '订单日期',
  `SETOFF_TIME` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '预定日期',
  `LINK_TEL` varchar(46) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '联系电话',
  `PEOPLE_COUNT` int DEFAULT NULL COMMENT '人数',
  `REQUIREMENT` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '特殊要求',
  `IC_CODE` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT '身份证号码',
  `IMG_URL` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_yw_order`
--

LOCK TABLES `t_yw_order` WRITE;
/*!40000 ALTER TABLE `t_yw_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_yw_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'travel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-09 22:19:06
