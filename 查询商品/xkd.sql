# Host: localhost  (Version: 5.5.53)
# Date: 2019-10-20 15:10:10
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "goods"
#

DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` char(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` char(11) NOT NULL,
  `img` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "goods"
#

/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES ('010001','海底捞火锅店','南窑国际78排','18991274261','img/01.jpg'),('010002','竹园村火锅店','南窑国际79排','18991274262','img/02.jpg'),('010003','小郡肝火锅店','南窑国际77排','18991274263','img/03.jpg'),('010004','马路边串串香','南窑国际71排','18991274264','img/04.jpg'),('010005','九月九串串香','南窑国际72排','18991274265','img/05.jpg');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;

#
# Structure for table "music"
#

DROP TABLE IF EXISTS `music`;
CREATE TABLE `music` (
  `id` char(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "music"
#

/*!40000 ALTER TABLE `music` DISABLE KEYS */;
INSERT INTO `music` VALUES ('01001','你是我的眼'),('01002','你是我的心'),('01003','你是我的心肝'),('01004','你是我的前任'),('01005','我是你的现任'),('01006','我是你的宝宝');
/*!40000 ALTER TABLE `music` ENABLE KEYS */;

#
# Structure for table "vip"
#

DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
  `username` varchar(20) NOT NULL,
  `userpass` varchar(16) NOT NULL,
  `sex` char(2) DEFAULT '女',
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "vip"
#

/*!40000 ALTER TABLE `vip` DISABLE KEYS */;
INSERT INTO `vip` VALUES ('','','女',NULL),('任慧','423456','女',NULL),('宋超波','123456','男',23),('宋超波10','123','女',NULL),('宋超波2','8234','女',NULL),('宋超波3','','女',NULL),('宋超波6','123','女',NULL),('宋超波9','123','女',NULL),('左雨薇001','123123','女',NULL),('张三疯','123123','女',NULL),('张四风风风风','123123','女',NULL),('张涛','523456','女',NULL),('罗文德','223456','男',21),('薛燕','123123','女',NULL),('豆润博','323456','男',18),('魏娟','623456','女',NULL),('魏娟2','55555','女',NULL);
/*!40000 ALTER TABLE `vip` ENABLE KEYS */;
