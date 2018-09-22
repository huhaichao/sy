/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.62-community : Database - LOCAL
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`LOCAL` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `LOCAL`;

/*Table structure for table `app_role` */

DROP TABLE IF EXISTS `app_role`;

CREATE TABLE `app_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` varchar(20) NOT NULL,
  `ROLE_NAME` varchar(20) NOT NULL,
  `USED` char(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `app_role` */

insert  into `app_role`(`ID`,`ROLE_ID`,`ROLE_NAME`,`USED`) values (1,'001','超级管理员','Y'),(2,'002','普通用户','Y');

/*Table structure for table `app_users` */

DROP TABLE IF EXISTS `app_users`;

CREATE TABLE `app_users` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `ROLEID` varchar(30) NOT NULL,
  `CREATE_DATE` datetime NOT NULL,
  `LAST_TIME` datetime NOT NULL,
  `IMAGE_URL` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `app_users` */

insert  into `app_users`(`ID`,`USER_ID`,`PASSWORD`,`NAME`,`ROLEID`,`CREATE_DATE`,`LAST_TIME`,`IMAGE_URL`) values (1,'admin','123','十月de木北','001','2016-04-01 21:10:05','2016-04-27 21:10:09',NULL);

/*Table structure for table `xpro_sys_andorra` */

DROP TABLE IF EXISTS `xpro_sys_andorra`;

CREATE TABLE `xpro_sys_andorra` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '广告ID',
  `title` varchar(200) DEFAULT NULL COMMENT '广告标题',
  `content` varchar(200) DEFAULT NULL COMMENT '广告内容',
  `type` char(2) DEFAULT NULL COMMENT '广告类型  0为默认文字广告，1为图片广告',
  `adurl` varchar(200) DEFAULT NULL COMMENT '广告图片地址',
  `publisher` varchar(50) DEFAULT NULL COMMENT '广告发布人',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
  `uptime` datetime DEFAULT NULL COMMENT '修改时间',
  `starttime` varchar(50) DEFAULT NULL COMMENT '开始时间',
  `endtime` varchar(50) DEFAULT NULL COMMENT '结束时间',
  `status` char(2) DEFAULT '0' COMMENT '状态  0为默认未启用，1为启用',
  `tourl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_andorra` */

insert  into `xpro_sys_andorra`(`id`,`title`,`content`,`type`,`adurl`,`publisher`,`addtime`,`uptime`,`starttime`,`endtime`,`status`,`tourl`) values (2,'AC米兰夺取欧冠','<p>AC米兰夺取欧冠</p>','1','286787ecf43449518b92fb3f04361cab.jpg','ssss','2015-04-19 02:58:21','2016-04-20 10:50:25','2015-04-01','2015-03-31','1','AC米兰夺取欧冠');

/*Table structure for table `xpro_sys_app_user` */

DROP TABLE IF EXISTS `xpro_sys_app_user`;

CREATE TABLE `xpro_sys_app_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `PHONE` varchar(100) DEFAULT NULL,
  `SFID` varchar(100) DEFAULT NULL,
  `START_TIME` varchar(100) DEFAULT NULL,
  `END_TIME` varchar(100) DEFAULT NULL,
  `YEARS` int(10) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_app_user` */

insert  into `xpro_sys_app_user`(`USER_ID`,`USERNAME`,`PASSWORD`,`NAME`,`RIGHTS`,`ROLE_ID`,`LAST_LOGIN`,`IP`,`STATUS`,`BZ`,`PHONE`,`SFID`,`START_TIME`,`END_TIME`,`YEARS`,`NUMBER`,`EMAIL`) values ('04762c0b28b643939455c7800c2e2412','link1988','f1290186a5d0b1ceab27f4e77c0c5d68','林肯','','55896f5ce3c0494fa6850775a4e29ff6','','','1','','18766666666','','2016-04-01','2016-04-30',0,'001','666666666@qq.com'),('54b7b3b79aebafa6585094149130a3ac','zhaoziqi','79abafa6585094149130a3ac60d3c289','赵子琪',NULL,'55896f5ce3c0494fa6850775a4e29ff6',NULL,NULL,'1',NULL,'13237119696',NULL,'2016-04-01','2016-04-30',0,'002','277765693@qq.com'),('xyz3890n7h8x221bn790553148xc0790','xinyu','12wert3790axcy532njm88opds54032z','欣雨',NULL,'55896f5ce3c0494fa6850775a4e29ff6',NULL,NULL,'1',NULL,'18674086236',NULL,'2016-04-01','2016-04-30',0,'003','277765693@qq.com');

/*Table structure for table `xpro_sys_dictionaries` */

DROP TABLE IF EXISTS `xpro_sys_dictionaries`;

CREATE TABLE `xpro_sys_dictionaries` (
  `ZD_ID` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `BIANMA` varchar(100) DEFAULT NULL,
  `ORDY_BY` int(10) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `JB` int(10) DEFAULT NULL,
  `P_BM` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ZD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_dictionaries` */

insert  into `xpro_sys_dictionaries`(`ZD_ID`,`NAME`,`BIANMA`,`ORDY_BY`,`PARENT_ID`,`JB`,`P_BM`) values ('212a6765fddc4430941469e1ec8c8e6c','人事部','001',1,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_001'),('3cec73a7cc8a4cb79e3f6ccc7fc8858c','行政部','002',2,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_002'),('48724375640341deb5ef01ac51a89c34','北京','dq001',1,'cdba0b5ef20e4fc0a5231fa3e9ae246a',2,'DQ_dq001'),('5a1547632cca449db378fbb9a042b336','研发部','004',4,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_004'),('7f9cd74e60a140b0aea5095faa95cda3','财务部','003',3,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_003'),('b861bd1c3aba4934acdb5054dd0d0c6e','科技不','kj',7,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_kj'),('c067fdaf51a141aeaa56ed26b70de863','部门','BM',1,'0',1,'BM'),('cdba0b5ef20e4fc0a5231fa3e9ae246a','地区','DQ',2,'0',1,'DQ'),('f184bff5081d452489271a1bd57599ed','上海','SH',2,'cdba0b5ef20e4fc0a5231fa3e9ae246a',2,'DQ_SH'),('f30bf95e216d4ebb8169ff0c86330b8f','客服部','006',6,'c067fdaf51a141aeaa56ed26b70de863',2,'BM_006');

/*Table structure for table `xpro_sys_featured` */

DROP TABLE IF EXISTS `xpro_sys_featured`;

CREATE TABLE `xpro_sys_featured` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '特别推荐ID',
  `title` varchar(200) DEFAULT NULL COMMENT '特别推荐标题',
  `content` varchar(300) DEFAULT NULL COMMENT '特别推荐内容',
  `url` varchar(300) DEFAULT NULL COMMENT '特别推荐连接地址',
  `heat` char(2) DEFAULT '0' COMMENT '热度  按1 2 3 4 5级',
  `stars` char(2) DEFAULT '0' COMMENT '星级  按1 2 3 4 5级',
  `sequence` int(10) DEFAULT '0' COMMENT '排序',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
  `uptime` datetime DEFAULT NULL COMMENT '修改时间',
  `status` char(2) DEFAULT '0' COMMENT '状态 0为未启用，1为启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_featured` */

insert  into `xpro_sys_featured`(`id`,`title`,`content`,`url`,`heat`,`stars`,`sequence`,`addtime`,`uptime`,`status`) values (1,'ssss','<p>ssss</p>','ssss','1','1',22323,'2015-04-19 02:59:11','2015-04-19 02:59:11','0');

/*Table structure for table `xpro_sys_gl_qx` */

DROP TABLE IF EXISTS `xpro_sys_gl_qx`;

CREATE TABLE `xpro_sys_gl_qx` (
  `GL_ID` varchar(100) NOT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `FX_QX` int(10) DEFAULT NULL,
  `FW_QX` int(10) DEFAULT NULL,
  `QX1` int(10) DEFAULT NULL,
  `QX2` int(10) DEFAULT NULL,
  `QX3` int(10) DEFAULT NULL,
  `QX4` int(10) DEFAULT NULL,
  PRIMARY KEY (`GL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_gl_qx` */

insert  into `xpro_sys_gl_qx`(`GL_ID`,`ROLE_ID`,`FX_QX`,`FW_QX`,`QX1`,`QX2`,`QX3`,`QX4`) values ('1','2',1,1,1,1,1,1),('2','1',0,0,1,1,1,1),('55896f5ce3c0494fa6850775a4e29ff6','7',0,0,1,0,0,0),('68f23fc0caee475bae8d52244dea8444','7',0,0,1,1,0,0),('7462c899fbf440119e18072e856b2265','4',1,1,1,1,0,0),('7dfd8d1f7b6245d283217b7e63eec9b2','1',1,1,1,0,0,0),('ac66961adaa2426da4470c72ffeec117','1',1,0,1,1,0,0),('b0c77c29dfa140dc9b14a29c056f824f','7',1,0,1,1,0,0),('e74f713314154c35bd7fc98897859fe3','6',1,1,1,1,0,0),('f944a9df72634249bbcb8cb73b0c9b86','7',1,1,1,1,0,0);

/*Table structure for table `xpro_sys_link` */

DROP TABLE IF EXISTS `xpro_sys_link`;

CREATE TABLE `xpro_sys_link` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '友情链接ID',
  `stiename` varchar(100) DEFAULT NULL COMMENT '友情链接网站名称',
  `sitecontent` varchar(200) DEFAULT NULL COMMENT '友情链接网站内容',
  `type` char(2) DEFAULT '0' COMMENT '类型  0为文字连接，1为图片连接',
  `stieurl` varchar(200) DEFAULT NULL COMMENT '图片连接地址',
  `addtime` varchar(50) DEFAULT NULL COMMENT '添加时间',
  `uptime` varchar(50) DEFAULT NULL COMMENT '修改时间',
  `status` char(2) DEFAULT '0' COMMENT '状态  0为未启用，1为启用',
  `sequence` int(10) DEFAULT NULL COMMENT '排序',
  `tourl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_link` */

insert  into `xpro_sys_link`(`id`,`stiename`,`sitecontent`,`type`,`stieurl`,`addtime`,`uptime`,`status`,`sequence`,`tourl`) values (1,'sdfsd2222','<p>sdfsd222</p>','1','acf1784d058149d3a1b6349f5c89d208.png','2014-12-02 13:49:59','2016-04-20 10:50:49','1',3,'sdf222'),(2,'sdfs','<p>sdfsdf</p>','0','438994ecc7fe42539db7daa2b9b0a9d0.png','2015-04-19 03:00:49','2015-04-19 03:00:49','0',2,'sdfsdf');

/*Table structure for table `xpro_sys_menu` */

DROP TABLE IF EXISTS `xpro_sys_menu`;

CREATE TABLE `xpro_sys_menu` (
  `MENU_ID` int(11) NOT NULL,
  `MENU_NAME` varchar(255) DEFAULT NULL,
  `MENU_URL` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `MENU_ORDER` varchar(100) DEFAULT NULL,
  `MENU_ICON` varchar(30) DEFAULT NULL,
  `MENU_TYPE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_menu` */

insert  into `xpro_sys_menu`(`MENU_ID`,`MENU_NAME`,`MENU_URL`,`PARENT_ID`,`MENU_ORDER`,`MENU_ICON`,`MENU_TYPE`) values (1,'系统管理','#','0','1','icon-desktop','1'),(2,'组织管理','role.do','1','2',NULL,'1'),(4,'会员管理','happuser/listUsers.do','1','4',NULL,'1'),(5,'系统用户','user/listUsers.do','1','3',NULL,'1'),(6,'信息管理','#','0','2','icon-list-alt','1'),(7,'图片管理','pictures/list.do','6','1',NULL,'1'),(8,'性能监控','druid/index.html','9','1',NULL,'1'),(9,'系统工具','#','0','3','icon-th','1'),(10,'接口测试','tool/interfaceTest.do','9','2',NULL,'1'),(11,'发送邮件','tool/goSendEmail.do','9','3',NULL,'1'),(12,'置二维码','tool/goTwoDimensionCode.do','9','4',NULL,'1'),(13,'多级别树','tool/ztree.do','9','5',NULL,'1'),(14,'地图工具','tool/map.do','9','6',NULL,'1'),(15,'广告管理','andorra/list.do','6','2',NULL,'1'),(16,'特别推荐','featured/list.do','6','3',NULL,'1'),(17,'线路管理','line/list.do','6','4',NULL,'1'),(18,'友情链接','link/list.do','6','6',NULL,'1'),(19,'新闻管理','news/list.do','6','7',NULL,'1'),(20,'公告管理','notice/list.do','6','8',NULL,'1'),(21,'为我定制','#','0','4','icon-glass','1'),(22,'用户查询','myquery/userList.do','21','1',NULL,'1'),(23,'添加用户','personal/addUser.do','21','2',NULL,'1');

/*Table structure for table `xpro_sys_news` */

DROP TABLE IF EXISTS `xpro_sys_news`;

CREATE TABLE `xpro_sys_news` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '新闻ID',
  `title` varchar(150) DEFAULT NULL COMMENT '新闻标题',
  `content` text COMMENT '新闻内容',
  `publisher` varchar(50) DEFAULT NULL COMMENT '发布人',
  `addtime` varchar(50) DEFAULT NULL COMMENT '发布时间',
  `uptime` varchar(50) DEFAULT NULL COMMENT '修改时间',
  `pip` varchar(50) DEFAULT NULL COMMENT '发布IP',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `sequence` int(10) DEFAULT '0' COMMENT '排序',
  `recommand` char(2) DEFAULT '0' COMMENT '推荐  0默认未推荐，1推荐',
  `status` char(2) DEFAULT '0' COMMENT '状态  0默认未发布，1发布',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_news` */

insert  into `xpro_sys_news`(`id`,`title`,`content`,`publisher`,`addtime`,`uptime`,`pip`,`hits`,`sequence`,`recommand`,`status`) values (2,'新闻标题2','<p>新闻内容2</p>','张三2','2014-12-01 20:59:33','2015-02-08 23:51:26','127.0.0.1',0,2,'1','1'),(3,'世界大事件','<p>wwww</p>','fdgf','2014-12-02 01:07:41','2015-04-19 03:02:29','127.0.0.1',0,0,'0','1'),(5,'新闻三十分','<p>4565656</p>','456465','2014-12-15 11:38:59','2015-04-19 03:01:58','127.0.0.1',0,4564,'0','1'),(6,'国家主席','<p><img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>','ddddd','2014-12-24 10:55:34','2015-04-19 03:02:40','127.0.0.1',0,0,'0','1'),(7,'足球新闻部','<p>sdfs</p>','sdf','2015-04-19 03:01:06','2015-04-19 03:02:13','127.0.0.1',0,3,'0','0');

/*Table structure for table `xpro_sys_notice` */

DROP TABLE IF EXISTS `xpro_sys_notice`;

CREATE TABLE `xpro_sys_notice` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `title` varchar(200) NOT NULL COMMENT '公告标题',
  `content` varchar(500) NOT NULL COMMENT '公告内容',
  `publisher` varchar(50) NOT NULL COMMENT '公告发布人',
  `addtime` datetime NOT NULL COMMENT '公告发布时间',
  `uptime` datetime NOT NULL COMMENT '修改时间',
  `status` char(2) NOT NULL DEFAULT '0' COMMENT '状态  0默认未启用，1启用',
  `sequence` int(10) DEFAULT '0' COMMENT '公告排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_notice` */

insert  into `xpro_sys_notice`(`id`,`title`,`content`,`publisher`,`addtime`,`uptime`,`status`,`sequence`) values (2,'AC米兰夺取欧冠','<p>AC米兰夺取欧冠</p>','admin','2014-12-01 21:39:13','2016-04-20 10:50:03','1',1),(3,'测试','<p>测试</p>','admin','2015-04-19 03:01:15','2016-04-20 10:49:22','0',44);

/*Table structure for table `xpro_sys_role` */

DROP TABLE IF EXISTS `xpro_sys_role`;

CREATE TABLE `xpro_sys_role` (
  `ROLE_ID` varchar(100) NOT NULL,
  `ROLE_NAME` varchar(100) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(100) DEFAULT NULL,
  `ADD_QX` varchar(255) DEFAULT NULL,
  `DEL_QX` varchar(255) DEFAULT NULL,
  `EDIT_QX` varchar(255) DEFAULT NULL,
  `CHA_QX` varchar(255) DEFAULT NULL,
  `QX_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_role` */

insert  into `xpro_sys_role`(`ROLE_ID`,`ROLE_NAME`,`RIGHTS`,`PARENT_ID`,`ADD_QX`,`DEL_QX`,`EDIT_QX`,`CHA_QX`,`QX_ID`) values ('1','系统管理员','16777206','0','1','1','1','1','1'),('2','超级管理员','16777206','1','246','50','50','38','2'),('4','用户组','118','0','0','0','0','0',NULL),('55896f5ce3c0494fa6850775a4e29ff6','特级会员','498','7','0','0','0','0','55896f5ce3c0494fa6850775a4e29ff6'),('6','客户组','18','0','1','1','1','1',NULL),('68f23fc0caee475bae8d52244dea8444','中级会员','498','7','0','0','0','0','68f23fc0caee475bae8d52244dea8444'),('7','会员组','498','0','0','0','0','1',NULL),('7462c899fbf440119e18072e856b2265','普通用户','32630','4','0','0','0','2097142','7462c899fbf440119e18072e856b2265'),('7dfd8d1f7b6245d283217b7e63eec9b2','管理员B','16777206','1','246','0','0','0','7dfd8d1f7b6245d283217b7e63eec9b2'),('ac66961adaa2426da4470c72ffeec117','管理员A','16777206','1','54','54','0','246','ac66961adaa2426da4470c72ffeec117'),('b0c77c29dfa140dc9b14a29c056f824f','高级会员','498','7','0','0','0','0','b0c77c29dfa140dc9b14a29c056f824f'),('e74f713314154c35bd7fc98897859fe3','黄金客户','18','6','1','1','1','1','e74f713314154c35bd7fc98897859fe3'),('f944a9df72634249bbcb8cb73b0c9b86','初级会员','498','7','1','1','1','1','f944a9df72634249bbcb8cb73b0c9b86');

/*Table structure for table `xpro_sys_tb` */

DROP TABLE IF EXISTS `xpro_sys_tb`;

CREATE TABLE `xpro_sys_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `author_id` varchar(50) NOT NULL COMMENT '楼主id',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `content` varchar(500) NOT NULL COMMENT '帖子内容',
  `input_date` datetime NOT NULL COMMENT '发表时间',
  `review` int(11) NOT NULL DEFAULT '0' COMMENT '浏览数',
  `keyword` varchar(30) DEFAULT NULL COMMENT '关键字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_tb` */

insert  into `xpro_sys_tb`(`id`,`author_id`,`title`,`content`,`input_date`,`review`,`keyword`) values (1,'04762c0b28b643939455c7800c2e2412','我们无处安放的青春','《我们无处安放的青春》是由沈严执导，陈道明、佟大为、江一燕、张歆艺、罗珊珊、朱雨辰、冯鹏、赵子琪等主演的知情题材电视剧。','2016-04-01 13:09:25',20,'青春'),(2,'54b7b3b79aebafa6585094149130a3ac','陈道明','陈道明，1955年4月26日出生于天津，祖籍浙江绍兴。国家一级演员，第十届、十一届、十二届全国政协委员，中国文学艺术界联合会第八次全国代表，广电总局颁发优秀电影表演艺术家，2006年中宣部“四个一批”人才，中国环境文化促进会理事，中国电视艺术家协会委员','2016-04-02 13:15:50',52,'陈道明'),(3,'xyz3890n7h8x221bn790553148xc0790','测试','测试','2016-05-05 10:13:23',123,'测试');

/*Table structure for table `xpro_sys_tb_line` */

DROP TABLE IF EXISTS `xpro_sys_tb_line`;

CREATE TABLE `xpro_sys_tb_line` (
  `LINE_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '名称',
  `LINE_URL` varchar(255) DEFAULT NULL COMMENT '链接',
  `LINE_ROAD` varchar(255) DEFAULT NULL COMMENT '线路',
  `TYPE` varchar(255) DEFAULT NULL COMMENT '类型',
  `LINE_ORDER` int(10) DEFAULT NULL COMMENT '排序',
  `PARENT_ID` varchar(255) DEFAULT NULL COMMENT '父类ID',
  PRIMARY KEY (`LINE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_tb_line` */

insert  into `xpro_sys_tb_line`(`LINE_ID`,`TITLE`,`LINE_URL`,`LINE_ROAD`,`TYPE`,`LINE_ORDER`,`PARENT_ID`) values ('079c63d4fdcd479b9a84e2af9745e430','华泰','http://www.baidu.com','联通','大类',1,'0'),('36fc89101f2b4792985f92bc35d1cbba','问问','http://www.1b23.com','一号线','小类',1,'079c63d4fdcd479b9a84e2af9745e430'),('4bd68dbe76e44d1d8f9a5a012712793e','线路1号','http://www.163.com','铁通','小类',1,'b79ebcb13f2042ffb6132f004c8ff46c'),('6c15bc3c06c64b2392085e72c88bbba5','线路2号','http://www.qq.com','网通','小类',2,'b79ebcb13f2042ffb6132f004c8ff46c');

/*Table structure for table `xpro_sys_tb_pictures` */

DROP TABLE IF EXISTS `xpro_sys_tb_pictures`;

CREATE TABLE `xpro_sys_tb_pictures` (
  `PICTURES_ID` varchar(100) NOT NULL,
  `TITLE` varchar(255) DEFAULT NULL COMMENT '标题',
  `NAME` varchar(255) DEFAULT NULL COMMENT '文件名',
  `PATH` varchar(255) DEFAULT NULL COMMENT '路径',
  `CREATETIME` varchar(255) DEFAULT NULL COMMENT '创建时间',
  `MASTER_ID` varchar(255) DEFAULT NULL COMMENT '属于',
  `BZ` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PICTURES_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_tb_pictures` */

insert  into `xpro_sys_tb_pictures`(`PICTURES_ID`,`TITLE`,`NAME`,`PATH`,`CREATETIME`,`MASTER_ID`,`BZ`) values ('88b69a1e2dc94c96a6c6cd878b51e5d7','图片','66ca873e1b81490d93cdb49096cd81ee.jpg','20160420/66ca873e1b81490d93cdb49096cd81ee.jpg','2015-04-17 03:16:13','1','图片管理处上传');

/*Table structure for table `xpro_sys_user` */

DROP TABLE IF EXISTS `xpro_sys_user`;

CREATE TABLE `xpro_sys_user` (
  `USER_ID` varchar(100) NOT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `RIGHTS` varchar(255) DEFAULT NULL,
  `ROLE_ID` varchar(100) DEFAULT NULL,
  `LAST_LOGIN` varchar(255) DEFAULT NULL,
  `IP` varchar(100) DEFAULT NULL,
  `STATUS` varchar(32) DEFAULT NULL,
  `BZ` varchar(255) DEFAULT NULL,
  `SKIN` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(32) DEFAULT NULL,
  `NUMBER` varchar(100) DEFAULT NULL,
  `PHONE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_user` */

insert  into `xpro_sys_user`(`USER_ID`,`USERNAME`,`PASSWORD`,`NAME`,`RIGHTS`,`ROLE_ID`,`LAST_LOGIN`,`IP`,`STATUS`,`BZ`,`SKIN`,`EMAIL`,`NUMBER`,`PHONE`) values ('089d664844f8441499955b3701696fc0','fushide','67bc304642856b709dfeb907b92cc7e10e0b02f2','富师德','','2','','','0','18629359','default','asdadf@qq.com','1231','18766666666'),('0b3f2ab1896b47c097a81d322697446a','zhangsan','c4ca4238a0b923820dcc509a6f75849b','张三','','2','2015-01-02 12:04:51','127.0.0.1','0','小张','default','wwwwq@qq.com','1101','18788888888'),('0e2da7c372e147a0b67afdf4cdd444a3','dfsdf','c49639f0b2c5dda506b777a1e518990e9a88a221','wqeqw','','e74f713314154c35bd7fc98897859fe3','','','0','ff','default','q324@qq.com','dsfsdddd','18767676767'),('1','admin','28dca2a7b33b7413ad3bce1d58c26dd679c799f1','系统管理员','1133671055321055258374707980945218933803269864762743594642571294','1','2016-05-06 11:24:47','0:0:0:0:0:0:0:1','0','十月de木北','default','277765693@qq.com','001','13237119590'),('b825f152368549069be79e1d34184afa','san','9b69448e5ac7f9e7544732aaba4bb8e8885ccbe1','三','','2','','','0','sdfsdgf','default','sdfsdf@qq.com','sdsaw22','2147483647'),('be025a79502e433e820fac37ddb1cfc2','zhangsan570256','42f7554cb9c00e11ef16543a2c86ade815b79faa','张三','','2','','','0','小张','default','zhangsan@www.com','21101','2147483647');

/*Table structure for table `xpro_sys_user_qx` */

DROP TABLE IF EXISTS `xpro_sys_user_qx`;

CREATE TABLE `xpro_sys_user_qx` (
  `U_ID` varchar(100) NOT NULL,
  `C1` int(10) DEFAULT NULL,
  `C2` int(10) DEFAULT NULL,
  `C3` int(10) DEFAULT NULL,
  `C4` int(10) DEFAULT NULL,
  `Q1` int(10) DEFAULT NULL,
  `Q2` int(10) DEFAULT NULL,
  `Q3` int(10) DEFAULT NULL,
  `Q4` int(10) DEFAULT NULL,
  PRIMARY KEY (`U_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xpro_sys_user_qx` */

insert  into `xpro_sys_user_qx`(`U_ID`,`C1`,`C2`,`C3`,`C4`,`Q1`,`Q2`,`Q3`,`Q4`) values ('1',1,0,0,0,0,0,0,0),('2',1,1,1,1,1,1,1,1),('55896f5ce3c0494fa6850775a4e29ff6',0,0,0,0,0,0,0,0),('68f23fc0caee475bae8d52244dea8444',0,0,0,0,0,0,0,0),('7462c899fbf440119e18072e856b2265',0,0,0,0,0,0,0,0),('7dfd8d1f7b6245d283217b7e63eec9b2',0,0,0,0,0,0,0,0),('ac66961adaa2426da4470c72ffeec117',0,0,0,0,0,0,0,0),('b0c77c29dfa140dc9b14a29c056f824f',0,0,0,0,0,0,0,0),('e74f713314154c35bd7fc98897859fe3',0,0,0,0,0,0,0,0),('f944a9df72634249bbcb8cb73b0c9b86',0,0,0,0,0,0,0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
