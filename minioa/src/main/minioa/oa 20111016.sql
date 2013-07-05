-- MySQL dump 10.13  Distrib 5.5.9, for Win32 (x86)
--
-- Host: localhost    Database: oa
-- ------------------------------------------------------
-- Server version	5.5.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `oa`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `oa` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `oa`;

--
-- Table structure for table `core_basicdata`
--

DROP TABLE IF EXISTS `core_basicdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_basicdata` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `MID_` int(10) unsigned DEFAULT NULL,
  `MDATE_` datetime DEFAULT NULL,
  `UUID_` varchar(45) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `value` varchar(100) DEFAULT NULL,
  `value2` varchar(100) DEFAULT NULL,
  `sequence` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_basicdata`
--

LOCK TABLES `core_basicdata` WRITE;
/*!40000 ALTER TABLE `core_basicdata` DISABLE KEYS */;
INSERT INTO `core_basicdata` VALUES (1,1,'2011-10-08 20:33:30',1,'2011-10-10 18:53:33',NULL,'news','公司新闻','01',0),(2,1,'2011-10-08 20:35:25',1,'2011-10-14 18:43:14',NULL,'news','行业新闻','02',1),(3,1,'2011-10-14 18:43:19',NULL,NULL,NULL,'news','社会新闻','03',1);
/*!40000 ALTER TABLE `core_basicdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_department`
--

DROP TABLE IF EXISTS `core_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_department` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `MID_` int(10) unsigned DEFAULT NULL,
  `MDATE_` datetime DEFAULT NULL,
  `UUID_` varchar(45) DEFAULT NULL,
  `orgId` int(10) unsigned DEFAULT NULL,
  `parentId` int(10) unsigned DEFAULT NULL,
  `depaName` varchar(100) DEFAULT NULL,
  `depaDesc` varchar(100) DEFAULT NULL,
  `sequence` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_department`
--

LOCK TABLES `core_department` WRITE;
/*!40000 ALTER TABLE `core_department` DISABLE KEYS */;
INSERT INTO `core_department` VALUES (1,0,'2011-08-20 14:18:02',0,'2011-08-21 12:34:09',NULL,1,0,'战略投资部','战略投资部',0),(2,0,'2011-08-20 14:18:44',0,'2011-08-21 12:34:36',NULL,1,0,'人事行政部','人事行政部',0),(3,0,'2011-08-20 21:23:44',0,'2011-08-21 12:48:48',NULL,11,0,'三炮部队','三炮部队',0),(4,0,'2011-08-20 21:23:54',0,'2011-08-21 12:35:02',NULL,1,0,'财务部','财务部',0),(6,0,'2011-08-20 21:34:41',0,'2011-08-21 12:35:38',NULL,1,4,'财务部','财务部',0),(7,0,'2011-08-20 21:34:48',0,'2011-08-21 12:36:02',NULL,1,4,'会计部','会计部',0),(8,0,'2011-08-20 21:34:54',0,'2011-08-21 12:42:09',NULL,1,0,'市场部','市场部',0),(10,0,'2011-08-20 22:14:41',0,'2011-08-21 12:58:46',NULL,1,0,'信息中心','信息中心',9),(11,0,'2011-08-20 22:14:45',0,'2011-08-21 12:44:27',NULL,1,8,'国内市场部','国内市场部',0),(13,0,'2011-08-20 22:14:57',0,'2011-09-05 22:02:54',NULL,1,8,'海外市场部','海外市场部',0),(14,0,'2011-08-20 22:15:05',0,'2011-08-21 12:45:09',NULL,1,0,'技术部','技术部',0),(15,0,'2011-08-20 22:15:08',0,'2011-08-21 12:59:27',NULL,1,0,'质控部','质控部',8),(16,0,'2011-08-20 22:15:15',0,'2011-08-21 12:46:09',NULL,1,0,'生产部','生产部',0),(17,0,'2011-08-20 22:15:22',0,'2011-08-21 12:46:45',NULL,1,16,'交换机生产线','交换机生产线',0),(18,0,'2011-08-21 12:27:35',0,'2011-08-21 12:49:18',NULL,13,0,'固定电话事业部','固定电话事业部',0),(19,0,'2011-08-21 12:27:41',0,'2011-08-21 12:49:29',NULL,13,0,'移动电话事业部','移动电话事业部',0),(20,0,'2011-08-21 12:27:47',0,'2011-08-21 12:48:58',NULL,12,0,'三炮部队','三炮部队',0),(21,0,'2011-08-21 12:47:12',0,NULL,NULL,1,16,'平板电脑生产线','平板电脑生产线',0);
/*!40000 ALTER TABLE `core_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_job`
--

DROP TABLE IF EXISTS `core_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_job` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `MID_` int(10) unsigned DEFAULT NULL,
  `MDATE_` datetime DEFAULT NULL,
  `UUID_` varchar(45) DEFAULT NULL,
  `orgId` int(10) unsigned DEFAULT NULL,
  `parentId` int(10) unsigned DEFAULT NULL,
  `jobName` varchar(100) DEFAULT NULL,
  `jobDesc` varchar(100) DEFAULT NULL,
  `sequence` int(10) unsigned DEFAULT '0',
  `isManager` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_job`
--

LOCK TABLES `core_job` WRITE;
/*!40000 ALTER TABLE `core_job` DISABLE KEYS */;
INSERT INTO `core_job` VALUES (1,0,'2011-08-25 20:18:59',0,NULL,NULL,1,0,'总经理','总经理',0,0),(2,0,'2011-08-25 20:19:20',0,'2011-08-25 21:03:10',NULL,1,1,'企业管理部经理','企业管理部经理',0,1),(3,0,'2011-08-25 20:19:42',0,'2011-08-25 20:21:07',NULL,1,1,'财务部经理','财务部经理',1,0),(4,0,'2011-08-25 20:19:59',0,'2011-08-25 20:34:39',NULL,1,1,'人事行政部经理','人事行政部经理',2,0),(5,0,'2011-08-25 20:20:14',0,'2011-08-25 20:34:49',NULL,1,1,'技术部经理','技术部经理',3,0),(6,0,'2011-08-25 20:20:25',0,'2011-08-25 20:21:18',NULL,1,1,'市场部经理','市场部经理',4,0),(7,0,'2011-08-25 20:20:44',0,'2011-09-04 22:10:56',NULL,1,1,'生产部经理','生产部经理',5,0),(8,0,'2011-08-25 20:20:54',0,'2011-08-25 20:57:10',NULL,1,1,'信息部经理','信息部经理',6,0),(9,0,'2011-08-25 20:37:35',0,NULL,NULL,1,2,'企业管理部副经理','企业管理部副经理',0,0),(10,0,'2011-08-25 20:42:49',0,'2011-08-25 20:43:08',NULL,1,9,'企业管理部主任','企业管理部主任',0,0),(11,0,'2011-08-25 20:43:31',0,'2011-08-25 20:45:15',NULL,1,10,'项目主管','项目主管',0,0),(12,0,'2011-08-25 20:45:39',0,NULL,NULL,1,10,'成本主管','成本主管',1,0),(13,0,'2011-08-25 20:45:58',0,NULL,NULL,1,8,'信息部主任','信息部主任',0,0),(14,0,'2011-08-25 20:46:09',0,'2011-08-25 20:46:20',NULL,1,13,'硬件工程师','硬件工程师',0,0),(15,0,'2011-08-25 20:46:46',0,'2011-08-25 20:46:51',NULL,1,13,'软件工程师','软件工程师',1,0),(16,0,'2011-08-25 21:01:08',0,NULL,NULL,1,13,'系统工程师','系统工程师',3,0);
/*!40000 ALTER TABLE `core_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_leftmenu`
--

DROP TABLE IF EXISTS `core_leftmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_leftmenu` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `MID_` int(10) unsigned DEFAULT NULL,
  `MDATE_` datetime DEFAULT NULL,
  `UUID_` varchar(45) DEFAULT NULL,
  `parentId` int(10) unsigned DEFAULT NULL,
  `menuName` varchar(100) DEFAULT NULL,
  `menuUrl` varchar(100) DEFAULT NULL,
  `menuTarget` varchar(100) DEFAULT NULL,
  `sequence` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_leftmenu`
--

LOCK TABLES `core_leftmenu` WRITE;
/*!40000 ALTER TABLE `core_leftmenu` DISABLE KEYS */;
INSERT INTO `core_leftmenu` VALUES (1,0,'2011-09-04 15:00:18',0,NULL,NULL,0,'我的桌面','','_self',0),(2,0,'2011-09-04 15:00:32',0,NULL,NULL,0,'审批中心','','_self',1),(3,0,'2011-09-04 15:00:41',0,NULL,NULL,0,'相关链接','','_self',2),(4,0,'2011-09-04 15:00:51',0,NULL,NULL,0,'我的文档','','_self',3),(5,0,'2011-09-04 15:01:03',0,NULL,NULL,0,'帮助中心','','_self',4),(6,0,'2011-09-04 15:01:12',0,'2011-09-22 18:49:17',NULL,1,'修改资料','updateprofile.jsf','_self',0),(7,0,'2011-09-04 15:01:24',0,'2011-09-29 21:33:38',NULL,1,'修改密码','updatepassword.jsf','_self',1),(8,0,'2011-09-04 15:01:33',0,'2011-09-04 15:01:56',NULL,1,'我的任务','','_self',2),(9,0,'2011-09-04 15:02:37',0,'2011-09-04 15:02:41',NULL,1,'审批设置','','_self',3),(10,0,'2011-09-04 15:03:31',0,NULL,NULL,2,'未完成的任务','','_self',0),(11,0,'2011-09-04 15:03:37',0,NULL,NULL,2,'已完成的任务','','_self',1),(12,0,'2011-09-04 15:03:43',0,NULL,NULL,2,'被授权的任务','','_self',2),(13,0,'2011-09-04 15:03:55',0,NULL,NULL,2,'已授权的任务','','_self',3),(14,0,'2011-09-04 15:04:03',0,NULL,NULL,2,'未完成的审批','','_self',4),(15,0,'2011-09-04 15:04:11',0,NULL,NULL,2,'已完成的审批','','_self',5),(16,0,'2011-09-04 15:04:32',0,NULL,NULL,3,'ERP系统','','_self',0),(17,0,'2011-09-04 15:05:09',0,NULL,NULL,3,'MiniOA下载','http://www.minioa.net/','_self',1),(18,0,'2011-09-08 19:24:06',0,NULL,NULL,0,'HelloWorld','helloworld.jsf','_self',3);
/*!40000 ALTER TABLE `core_leftmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_leftmenu_role_relation`
--

DROP TABLE IF EXISTS `core_leftmenu_role_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_leftmenu_role_relation` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `menuId` int(10) unsigned DEFAULT NULL,
  `roleId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_leftmenu_role_relation`
--

LOCK TABLES `core_leftmenu_role_relation` WRITE;
/*!40000 ALTER TABLE `core_leftmenu_role_relation` DISABLE KEYS */;
INSERT INTO `core_leftmenu_role_relation` VALUES (1,0,'2011-09-05 19:44:27',1,1),(2,0,'2011-09-05 19:44:27',2,1),(3,0,'2011-09-05 19:44:27',3,1),(6,0,'2011-09-05 19:44:27',6,1),(7,0,'2011-09-05 19:44:27',7,1),(8,0,'2011-09-05 19:44:27',8,1),(9,0,'2011-09-05 19:44:27',9,1),(10,0,'2011-09-05 19:44:27',10,1),(11,0,'2011-09-05 19:44:27',11,1),(12,0,'2011-09-05 19:44:27',12,1),(13,0,'2011-09-05 19:44:27',13,1),(14,0,'2011-09-05 19:44:27',14,1),(15,0,'2011-09-05 19:44:27',15,1),(16,0,'2011-09-05 19:44:27',17,1),(17,0,'2011-09-05 19:44:27',16,1),(18,0,'2011-09-05 20:21:52',4,1),(19,0,'2011-09-05 21:21:14',5,1),(20,0,'2011-09-08 19:24:23',18,1),(21,0,'2011-10-12 19:26:59',1,2),(22,0,'2011-10-12 19:26:59',6,2),(23,0,'2011-10-12 19:26:59',7,2);
/*!40000 ALTER TABLE `core_leftmenu_role_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_news`
--

DROP TABLE IF EXISTS `core_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_news` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `MID_` int(10) unsigned DEFAULT NULL,
  `MDATE_` datetime DEFAULT NULL,
  `UUID_` varchar(45) DEFAULT NULL,
  `cate` varchar(45) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text,
  `ispicnews` tinyint(1) DEFAULT NULL,
  `status_` int(10) unsigned DEFAULT '0',
  `times` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_news`
--

LOCK TABLES `core_news` WRITE;
/*!40000 ALTER TABLE `core_news` DISABLE KEYS */;
INSERT INTO `core_news` VALUES (3,1,'2011-10-10 20:04:30',1,'2011-10-14 18:39:48','18fbec1d-369d-42ba-83f2-fe2ff18461cd','02','泰军方称缅甸贩毒集团枪杀中国船员','<p class=\"summary\">核心提示：泰国军方称，一伙由缅甸毒枭Nor Kham指挥的贩毒集团被认为是在湄公河枪杀中国船员的幕后黑手。10月5日上午，两艘搭载13名中国船员的商船在湄公河金三角水域遭劫持杀害。中国外交部称，最后确认11人遇难，2人失踪。此前有媒体报道13人全部遇难。</p>\n<p><span class=\"blank12\">&nbsp;</span></p>',0,1,0),(5,1,'2011-10-10 20:44:27',1,'2011-10-13 21:04:41','1cac5b61-4648-4c7c-b675-fe7ed33061a3','01','利比亚当局军官称卡扎菲之子穆塔西姆未被逮捕','<p>中新网10月13日电 据法新社报道，利比亚执政当局&ldquo;全国过渡委员会&rdquo;(以下简称&ldquo;过渡委&rdquo;)一名在苏尔特的军事高官13日指出，卡扎菲的儿子穆塔西姆目前没有被捕，而是仍然&ldquo;在逃&rdquo;。</p>\n<p>据报道，&ldquo;解放利比亚烈士旅&rdquo;的<a href=\"http://car.auto.ifeng.com/series/2006\" target=\"_blank\">指挥官</a>哈米德(Wesam Bin Hamid)表示，&ldquo;穆塔西姆被抓捕的消息不属实&rdquo;。他说，&ldquo;但一些我们抓捕的俘虏称，卡扎菲本人在苏尔特&rdquo;。</p>\n<p>13日，利比亚&ldquo;过渡委&rdquo;一名重要顾问比扎马(Abdelkarim Bizama)告诉法新社：&ldquo;穆塔西姆&middot;卡扎菲于苏尔特被捕，其后被送往(国家东部的)班加西。&rdquo;</p>\n<p>他补充说，&ldquo;我们早前并未公布逮捕的消息是为了避免他的(家人和助手)试图帮他逃脱&rdquo;。</p>\n<p>哈米德还指出，目前卡扎菲家乡苏尔特东部已完全处在执政当局控制之下，效忠卡扎菲的势力则在苏尔特西部做最后的激烈抵抗。他说，&ldquo;苏尔特东部的全部行动已经完成&rdquo;。</p>\n<p>他表示：&ldquo;那儿仍然有少许抵抗&mdash;&mdash;在一或两个地区，战斗仍在继续。&rdquo;&ldquo;我们正提供后援支持，帮助苏尔特西部的士兵&rdquo;。</p>\n<p>在前线的法新社通讯员传回消息说，13日晨，效忠卡扎菲武装占据的二处苏尔特居民区传出激烈交火声，双方使用火箭炮、机关枪以及小型武器等交火。</p>\n<p>&nbsp;</p>\n<p style=\"text-align: center;\"><img src=\"../../upload/news/3ffa2d8d-e980-4da1-bf07-101e27883d7a.jpg\" alt=\"\" width=\"506\" height=\"350\" /></p>\n<p>13日，当局武装还宣称他们抓捕了卡扎菲政权的最高级别教士坦图什(Khaled Tantoosh)，他担任卡扎菲政权的穆夫提(伊斯兰教&ldquo;教法解说人&rdquo;)，据称他是在试着逃离苏尔特的时候遭到抓捕的。当局拦截了他所乘坐的车辆，他与四名同伴被捕。</p>\n<p>当局士兵说，坦图什完全改变了他的面貌，他剃了胡须，乘车准备逃往的黎波里。</p>\n<p>目前未能确认当局是否将坦图什与卡扎菲的儿子穆塔西姆混淆。</p>',1,1,0),(6,1,'2011-10-10 20:44:50',1,'2011-10-14 18:39:38','99afc9e4-1ca0-4c6a-a31d-91f713f96681','02','泰军马英九辛亥百年讲话：辛亥革命是两岸共同资产','<p>凤凰卫视10月10日《台湾新闻》节目播出&ldquo;台湾庆双十节 举行大型军事展演&rdquo;，以下为文字实录：</p>\n<p>安东：为了庆祝辛亥革命一百周年纪念日，台北在今天是有盛大的庆祝活动，其中最受瞩目的兵力展演在今天上午的11点登场了，我们也马上带您到现场去看一看。</p>\n<p>今年参与展演的就包括空中兵力还有地面部队，还有70架直升机、运输机和各式的战机，它们将会以高难度的编队飞行，展现空中战斗力，并且由AT3教 练机在领导人办公室前的天空当中喷出红、蓝、白三色的烟雾，而地面部队则是由宪兵机车连打头阵，率领台湾造的&ldquo;云豹&rdquo;装甲车、&ldquo;天弓&rdquo;防空导弹、&ldquo;雄风&rdquo; 三型超音速攻船导弹、&ldquo;雷霆2000&rdquo;多管火箭和&ldquo;中翔二号&rdquo;遥控侦察机等装备，依序的经过<a href=\"http://baike.tw.ifeng.com/doc/25307\" target=\"_blank\">凯达格兰大道</a>。</p>',0,1,2),(7,1,'2011-10-11 21:11:22',1,'2011-10-13 21:12:30','83c177ba-7082-4f36-8b7e-854823b7d46d','01','缅甸佤邦声明未杀害中国船员','<p>核心提示：缅甸佤邦政府10月10日发表声明，回应泰国媒体&ldquo;中国船员遇袭是缅甸佤邦联合军所为&rdquo;报道。声明强调事件与佤邦联合军无关，称佤邦愿配合中国调查。佤邦建议执勤泰国警察接受中方调查。中国外交部则称泰警方已根据中方要求对现场取证，展开调查。</p>\n<p>核心提示：缅甸佤邦政府10月10日发表声明，回应泰国媒体&ldquo;中国船员遇袭是缅甸佤邦联合军所为&rdquo;报道。声明强调事件与佤邦联合军无关，称佤邦愿配合中国调查。佤邦建议执勤泰国警察接受中方调查。中国外交部则称泰警方已根据中方要求对现场取证，展开调查。</p>\n<p>&nbsp;</p>\n<p style=\"text-align: center;\"><img src=\"../../upload/news/d9afbacb-51d4-4bc6-941c-1e8347491b71.jpg\" alt=\"\" width=\"254\" height=\"200\" /></p>\n<p>核心提示：缅甸佤邦政府10月10日发表声明，回应泰国媒体&ldquo;中国船员遇袭是缅甸佤邦联合军所为&rdquo;报道。声明强调事件与佤邦联合军无关，称佤邦愿配合中国调查。佤邦建议执勤泰国警察接受中方调查。中国外交部则称泰警方已根据中方要求对现场取证，展开调查。</p>\n<p>核心提示：缅甸佤邦政府10月10日发表声明，回应泰国媒体&ldquo;中国船员遇袭是缅甸佤邦联合军所为&rdquo;报道。声明强调事件与佤邦联合军无关，称佤邦愿配合中国调查。佤邦建议执勤泰国警察接受中方调查。中国外交部则称泰警方已根据中方要求对现场取证，展开调查。</p>',1,1,7),(8,1,'2011-10-13 20:18:30',1,'2011-10-13 20:56:10','f8a53f16-4c8d-40a2-9c76-fdb7b2cf9fab','01','四姑娘山14名违规登山驴友获救','<p>由上海、浙江、广东、湖北9名驴友、4名当地背夫和1名向导组织的队伍，于9月30日进入四川阿坝州四姑娘山景区海子沟从事露营活动后，13天内未能与外 界联系，当地亦派出多支搜救队进行营救。12日上午8时50分，搜救队发现了14名自四姑娘山向卧龙方向穿越的游客，并护送这支队伍安全下山。图为卧龙搜 寻队接驴友下山。中新社发 何晓安 摄</p>\n<p>&nbsp;</p>\n<p style=\"text-align: center;\"><img src=\"../../upload/news/e89920e8-5a9b-4b32-adbe-cdd529079454.jpg\" alt=\"\" width=\"680\" height=\"480\" /></p>',1,1,3),(9,1,'2011-10-13 20:20:52',1,'2011-10-14 18:39:34','0cb06d91-1bbd-4a93-af8c-7ce2be15d390','01','中方护航巡逻艇赴泰接应滞留船员 ','<p>新华网云南景洪10月13日电（记者李怀岩 陈杰）10月13日上午，在湄公河金三角水域遭袭船员的29名家属代表在工作人员的陪同下，从中老边境磨憨口岸出境前往泰国清盛。<strong><a href=\"http://app.travel.ifeng.com/city_detail_408\" target=\"_blank\">西双版纳</a>州公安局水上分局派出的巡逻艇也于13日从关累港出发，顺湄公河而下去接回尚滞留在泰国清盛码头的中方船只和船员。</strong></p>\n<p>据了解，目前，境外还有28艘船164名中国船员要求尽快在有安全保障的情况下回国。根据安排，除了遇袭的2艘船外，26艘船将于近日在巡逻艇的引领下通过湄公河返回中国。</p>\n<p>中国外交部发言人刘为民在12日的例行记者会上表示，外交部和云南省政府正协调泰国、缅甸、老挝政府，为中方滞留船只船员经湄公河水域回国提供安全保障，并为中方公安巡逻艇前往接应提供便利。</p>\n<p>为保证中方船员顺利回国，当地海事、边防、海关以及检验检疫部门已在关累港做好了充分的接收准备。另据了解，西双版纳州人民政府已安排外事、海事等 部门和船东一起，为继续留在云南景洪市等候消息的遇难者家属做好服务工作。景洪港专门为家属在江边指定祭奠亲人地点，还派专人负责遇难者家属的安全。</p>\n<p>据遇难者家属介绍，预计家属一行人于13日下午5时左右抵达事发地，随后将在遇难船只停靠的湄公河旁举行追思会，向死去的亲人表达哀思。泰国警方还将提取遇难者直系亲属DNA血样，之后，家属将到保存遇难者遗体的医院进行辨认。</p>\n<p>另据了解，经过协调，中国大地保险公司西双版纳中心子公司、中国人民财产保险股份有限公司景洪支公司已于12日分别在景洪市举行湄公河金三角水域遇 难商船船员保险赔款兑现会，大地保险公司对&ldquo;华平号&rdquo;遇难船员以每位13．33万元的赔付金额，向6位遇难船员家属进行赔付；人保财险有限公司对&ldquo;玉兴8 号&rdquo;遇难船员以每位10万元的赔付金额，向5位投保遇难船员的家属进行了赔付；两大保险公司共计赔付130万元。</p>\n<p>10月5日，&ldquo;华平号&rdquo;和&ldquo;玉兴8号&rdquo;两艘货船在湄公河水域遭不明身份武装人员劫持和袭击，已确认有12名中国船员遇难，1名中国船员失踪。</p>',0,1,0),(10,1,'2011-10-13 20:23:41',1,'2011-10-14 18:39:30','f38661d6-1cb3-4e40-8057-de3e2a519980','01','北京至乌鲁木齐航班因疑似爆炸物迫降嘉峪关','<p>CNTV记者与嘉峪关机场取得联系，机场工作人员证实确实有一架航班迫降该处，原因是疑似有爆炸物，现在警方正在排查，但起因并不是乘客持刀，而是写了一个纸条，称货舱有爆炸物。</p>\n<p>现场网友称其他乘客都已下机，警察正在飞机上进行处置，其他乘客接受过二次安全检查后被带离现场。</p>',0,1,0),(11,1,'2011-10-13 20:24:30',1,'2011-10-14 18:39:26','680a5b70-d367-4966-8d6f-eb976dd39f9e','01','二广高速公路襄荆段发生交通事故造成34人受伤','<p>中新网武汉10月13日电(廖琰璨)13日凌晨3时50分左右，一辆由北京开往<a href=\"http://app.travel.ifeng.com/city_detail_230\" target=\"_blank\">张家界</a>，牌号为湘G01572的大型卧铺客车行至二广高速公路二广向1738KM+800M处(荆门市沙洋县纪山镇付场村)时，由于左前胎爆胎，穿越中央隔离带，冲向对向车道后再次冲出路肩护栏，侧翻于高速公路旁排水渠边，造成34人受伤(其中重伤8人)的交通事故。</p>\n<p>凌晨4点17分，接到报警后，湖北省高警总队三支队公安大队立即启动高速公路重特大事故应急预案，并迅速向省公安厅和荆门、荆州市政府报告案情。</p>\n<p>事故车系牌号为&ldquo;湘G01572&rdquo;的大型卧铺客车，核载44人、实载49人；车属单位为湖南张家界市<a href=\"http://auto.ifeng.com/\" target=\"_blank\">汽车</a>运输公司直属第二分公司。该车于13日凌晨3点54分行驶至二广高速公路二广向1738KM+800M处时，由于左前胎爆胎，发生交通事故。上午8时左右，在各方努力下，所有受伤人员得到妥善安置，事故现场清理完毕，道路恢复畅通。</p>\n<p>事故发生后，湖北省委常委、政法委书记、公安厅厅长吴永文明确指示：&ldquo;全力抢救伤员，做好善后工作&rdquo;；湖北省副省长段轮一指示：&ldquo;要不惜一切代价抢救伤员&rdquo;。</p>\n<p>湖北省公安交管局局长马国宪迅速指派高警总队副总队长谢志华赶赴现场指导施救和善后处理工作。高警三支队、公安大队迅速启动了交通应急管理工作处置 预案，支队长韩平、大队长王国平带领民警第一时间赶至事故现场，与医疗、施救等部门一道迅速将伤者送至医疗部门进行救治、指挥事故处理工作。</p>\n<p>同时，荆门市以及沙洋县等相关部门负责人先后赶赴现场，组织指挥高警、路政、安监、消防、医疗、急救、施救等部门展开应急救援。其中，33名伤员就 近运至荆州各医院后，荆州市委、市政府高度重视，指示有关部门、医院全力救助伤员，协助开展事故处理。湖北省政府副秘书长文振富带领省安监局、省交通厅等 负责人赶赴荆州看望受伤群众</p>\n<p>截至发稿，善后处理工作正在进行。(完)</p>',0,1,1),(12,1,'2011-10-13 20:25:10',1,'2011-10-13 20:33:35','bebe578e-09a0-4851-8ee8-46286675be2b','01','美国国防部证实在巴基斯坦采取了秘密军事行动','<p>人民网10月13日电 美国国防部长帕内特表示，美国和巴基斯坦的关系很复杂，也很困难，原因是多方面的，但其中之一是美国在巴基斯坦境内采取了秘密军事行动。</p>\n<p>中东&ldquo;门网&rdquo;今天报道说，美国政府一直否认在巴基斯坦境内采取过秘密军事行动，而美国国防部长本月11日一反过去的立场，证实美国确实在巴基斯坦境 内进行过秘密军事行动。报道引用美国国防部长帕内特的话说，&ldquo;我们和巴基斯坦的关系很复杂，也很紧张，其中一个很重要的原因是，我们在巴基斯坦境内秘密采 取了军事行动。&rdquo;</p>\n<p>报道说，上周，帕内特曾视察北约设在在意大利那不勒斯的军事基地，当时他也曾谈到了美国在巴基斯坦采取秘密军事行动问题。他表示，&ldquo;担任国防部长 后，无疑我手中掌握的武器要比我任中央情报局长时多很多。我任中央情报局长时，无人机肯定是不错的武器。&rdquo;报道评论说，帕内特实际是暗示他任中央情报局长 时曾在巴基斯坦境内秘密起降过无人机。</p>\n<p>中东&ldquo;门网&rdquo;指出，今年初以来，美国中央情报局至少使用无人机在巴基斯坦偏远部落地区进行了60次军事打击。巴基斯坦多次对美国的行动进行谴责，但一直否认美国无人机是从巴基斯坦境内起降，认为是从阿富汗起飞进入巴境内的。（安国章）</p>',0,1,1),(13,1,'2011-10-14 18:40:59',1,'2011-10-14 18:41:03','81f3ffdd-cfa1-4ebf-a519-554a4426bd31','01','中国飞豹战机表演时坠毁','<p>核心提示：10月14日上午，2011中国国际通用航空大会在陕西蒲城举行飞行表演时，一架飞豹战机出现意外坠机，飞行员座舱成功弹出，未见降落伞打开，飞机坠落后起火，目前消防和救护人员已赶往现场救援，人员伤亡不详。</p>',0,1,0),(14,1,'2011-10-14 18:41:28',1,'2011-10-14 18:41:32','fb5cf5af-61bb-495f-9e33-8fe96fe13b1a','01','温州警方将控制有债务危机企业主','<p>核心提示：针对当前温州因企业资金链断裂、民间非法集资引发的问题，温州警方日前推出10项措施。对有债务危机且有出逃迹象企业主，公安机关将有效控制，对已经出逃的企业主，将组织力量进行全力追逃。另查处了80多名暴力讨债不法分子，刑拘了27名非法集资者。</p>',0,1,0),(15,1,'2011-10-14 18:41:51',1,'2011-10-14 18:41:55','6dbbe0ed-ebdd-412e-9652-ec7e40c0383e','01','奥巴马称将对伊朗施以最严厉制裁','<p>核心提示：美国总统奥巴马10月13日表示，伊朗必须为其策划刺杀沙特驻美大使的阴谋付出代价，美国将对伊朗实施&ldquo;最严厉&rdquo;的制裁。美司法部11日宣布挫败一起企图暗杀沙特驻美国大使的阴谋，一名伊朗伊斯兰革命卫队成员及一名拥有美国和伊朗双重国籍的美国公民遭起诉。</p>',0,1,0),(16,1,'2011-10-14 18:46:02',1,'2011-10-14 18:46:06','9d657db4-a8e6-4d25-a29f-27c27448edee','02','空客向南航交付首架A380飞机 可搭载800人','<p>核心提示：10月14日，欧洲空客公司在法国图卢兹工厂正式向中国南方航空交付首架A380飞机。A380是目前全世界最大的远程宽体客机，最多可搭载800多名乘客。</p>\n<p>&nbsp;</p>\n<p style=\"text-align: center;\"><img src=\"../../upload/news/b4401729-9c4a-44aa-8130-f906486abbf5.jpg\" alt=\"\" width=\"550\" height=\"357\" /></p>',1,1,0),(17,1,'2011-10-14 18:50:20',1,'2011-10-14 18:50:23','486dc60d-ad18-438c-9e46-d43b225c9726','03','9月CPI同比上涨6.1% 增速连续两月下滑','<p>核心提示：据国家统计局网站消息，2011年9月份，全国居民消费价格总水平同比上涨6.1%，增速连续两个月下滑。其中，食品价格同比上涨13.4%，鲜菜和鲜果价格环比涨幅分别为5.2%和3.1%。</p>',0,1,0),(18,1,'2011-10-14 18:50:44',1,'2011-10-14 18:51:02','09a89905-bb64-4b66-a63c-d0a46bf74625','03','淘宝设购买限制对付小卖家攻击','<p>核心提示：近日，淘宝商城因提高准入门槛引发小卖家围攻大卖家事件。为此，淘宝方面已出台措施，包括调整库存、限制买家等级、锁定阿里旺旺等方式遏制小卖家的恶意购买行为。从昨天晚上开始，淘宝商城内小卖家们的&ldquo;攻击&rdquo;开始减弱。</p>',0,1,0),(19,1,'2011-10-14 18:51:18',1,'2011-10-14 18:51:20','a796b5e7-361b-472c-9151-de20845ce64f','03','北京至乌鲁木齐航班因爆炸威胁备降','<p>核心提示：10月13日17时，由北京飞往乌鲁木齐的KN2273次航班上一名女子扬言飞机上有爆炸物，导致飞机在嘉峪关机场紧急备降，经检查，机上未发现可疑物品。经初步审查，该女子叫王某某，因感情因素导致情绪失常，谎称飞机有爆炸物，目前已被公安机关控制。</p>',0,1,0),(20,1,'2011-10-14 18:51:37',1,'2011-10-14 18:51:39','fd52df65-c706-4169-9163-a1eb7ccd8d2a','03','内蒙古鄂尔多斯房产商疑因无法偿债自杀','<p>核心提示：9月24日，内蒙古鄂尔多斯一家地产公司法人王福金自杀身亡，该公司最大股东外逃，警方正在进行追捕。该公司曾向373家个人及单位举债 2.63亿元，有债权人称其给该公司的利息为3分，而王福金自杀前遭多位债权人催债。据媒体报道，王福金曾任当地法院院长，其后退休。</p>',0,1,0),(21,1,'2011-10-14 18:51:58',1,'2011-10-14 18:52:01','5f294b85-a474-4729-b8a8-dceffee3638a','03','日本拟与东盟签署“海洋安保宣言”牵制中国','<p>核心提示：据日媒报道，日本将与东盟在定于今年11月召开的首脑峰会上再次发表联合声明。声明的主要内容将包括日本与东盟就海上安全保障问题加强合作，共同戒备中国日益频繁的海洋活动。</p>',0,1,0),(22,1,'2011-10-14 18:52:19',1,'2011-10-14 18:52:22','b7e9b526-9aa8-4711-a09c-4740d7d4fdef','03','法航空难前录音曝光 驾驶员惊慌大叫','<p>核心提示：法国日前公布了2009年6月1日法航447号航班坠落大西洋前飞行员的一段录音，其中一位驾驶员大喊：&ldquo;天哪！我们要坠毁了，这不可能是真 的！&rdquo;另一位飞行员紧接着说：&ldquo;发生了什么？&rdquo;公布的录音到这里戛然而止。多方猜测认为，飞行员玩忽职守是这次空难的主因。</p>',0,1,0),(23,1,'2011-10-14 18:53:01',1,'2011-10-14 18:53:04','02e7bad4-8a59-4c68-9d00-378ebc2c6521','03','张柏芝新单曲MV20日全球首发 自称特别像女强人','<p>张柏芝新歌《曾经》的MV将在20日全球首发。这次，张柏芝不再只是演员，而是首次以导演、编剧及造型师的身份全程参与创作和拍摄。昨日，张柏芝揭秘了MV拍摄的台前幕后。她坦言，&ldquo;我很享受这次拍摄的过程，我觉得在现场的时候，自己特别像个女强人。&rdquo;</p>',0,1,0),(24,1,'2011-10-14 18:53:34',1,'2011-10-14 18:53:37','09de0fdc-f7a0-49f7-b273-05025c3e3f24','03','黑龙江省地震局启动应急响应','<p>据国家<a title=\"地震\" href=\"http://news.163.com/special/rbdblhddz/\" target=\"_blank\">地震</a>台 网测定，北京时间2011年10月14日14时10分，在俄罗斯阿穆尔州发生6.6级地震，震中距离我国最近边境线约75公里，距漠河县城约160公里。 据了解，震中位于阿穆尔州西部地区，距离最近的城镇斯科沃罗季诺约20公里，距离州首府布拉戈维申斯克（海兰泡）约500公里，震中地区人口稀少，目前尚 无人员伤亡和财产损失的报道。</p>',0,1,0),(25,1,'2011-10-14 18:53:54',1,'2011-10-14 18:53:57','ddf200bf-c7bd-499b-bb8b-ac6c6c8b6ac4','03','失事飞豹扎入沼泽 专家称疑为飞控系统故障','<p>核心提示：有军事专家指出，飞豹战机安装两台稳定、可靠性好的斯贝仿制型发动机，之前保证了1600架次定型试飞，因此发动机技术相对稳定，尤其是单台发动机既然有故障也不至于失速坠毁，而两台发动机同时故障的几率几乎是不可能的，所以推断是飞控系统故障的可能性较大。</p>',0,1,0),(26,1,'2011-10-14 18:54:17',1,'2011-10-14 18:54:21','98583fe8-2e1e-4f07-a69e-e18929d0eafa','03','美军高官表示F-35战机计划面临大幅度削减','<p>据中国国防科技信息网报道 美军军方的最高官员上周四说，F-35联合攻击机计划面临大幅削减。</p>\n<div class=\"gg200x300\"></div>\n<p>参谋长联席会议主席陆军参谋长马丁 登普西将军说，开发建造三个版本的高技术联合攻击机使得国防部财政紧张。</p>\n<p>登普西和国防部长利昂 帕内塔一起出席了众议院军事委员会。</p>\n<p>正在建造的F-35有三个版本，包括空军用(F-35A)、两栖舰载的短距起飞和垂直降落飞机(F-35B)和航母舰载机(F-35C)。</p>\n<p>五角大楼最大的武器计划问题一直被延误和成本超支困扰。原计划飞行16000小时，现在仅飞行1500小时后，飞机的一个版本就出现了舱壁裂缝。</p>\n<p>登普西说，他正致力于开发第五代战斗机，但质疑美国是否能负担得起所有三个版本的F-35联合攻击机。</p>',0,1,0),(27,1,'2011-10-14 18:54:40',1,'2011-10-14 18:55:03','22a18be2-b3ca-4263-b9ab-187a2b7200cd','03','澳报分析：中国迅速崛起 但却战略影响力有限','<p>核心提示：有趣的是，为什么一个经济如此强大的中国，却不能对地区国家产生强大的战略影响力。这只能归结于，中国令人吃惊地未能将经济规模转化成政治优势。这正是中国的GDP和出色的贸易数字造成的误导。</p>',0,1,0),(28,1,'2011-10-14 18:55:39',1,'2011-10-14 18:55:43','2a215d80-816b-48dd-b7a5-52465f0db334','02','四川泸州吸毒男子抢佩枪致民警1死1伤被判死缓','<p>中新网成都10月14日电 14日记者从四川省高级人民法院获悉，今年5月，泸州市中院以抢夺枪支罪判处何广彬死刑，缓期2年执行。随后，何广彬以一审量刑过重提起上诉。四川省高级人民法院日前对此案做出了维持原判的终审裁定。</p>\n<p>据 了解，今年26岁的何广彬是泸县太伏镇双石村村民，事发前在成都务工。去年5月1日，何广彬从成都回到泸州，5月4日晚，一家三口住进了当地一家宾馆。其 妻罗某回忆，5月5日19时许，她听见何广彬用手机打电话叫一个&ldquo;二哥&rdquo;的人送了几百元的&ldquo;麻麻儿&rdquo;(麻古丸)来吃。罗某睡后不久听见有人敲门，打开门 后，发现房间门口站着民警问是谁报警，何广彬便对民警说是他报的警，声称有人要杀他，于是民警就将何广彬夫妇俩及儿子带到了泸州市江阳区公安分局南城派出 所。在派出所里，何广彬表现得十分异常，一直坚称有人要杀他。随后，派出所民警对其进行了强制尿检。在派出所等候处理期间，何广彬趁民警不备逃离南城派出 所。</p>\n<p>逃离派出所后，何广彬于5月6日凌晨4时许来到江阳区新二村9号楼，并不停用木棒挨家挨户敲击住户的门，声称有人要杀自己，让住户开门 让其进去。在敲击三楼住户的门时，三楼住户十分害怕，并一直劝说何广彬离开，但何广彬始终不肯离开，后三楼住户报警。泸州市公安局110指挥中心接到群众 报警，称一男子手持木棒击打房门，陈玥和杨文武前往处警，在与犯罪嫌疑人何广彬搏斗中，何广彬抢走民警的手枪，并在抢夺过程中致枪走火射向民警，致使民警 陈玥因抢救无效死亡。</p>',0,1,0),(29,1,'2011-10-14 18:58:48',1,'2011-10-14 18:58:51','f8e5f4f8-2d76-4122-a26d-0dafd1e8e1c3','02','美国会拟削减近万亿美元军费 防长称此举愚蠢','<p>核心提示：美国国会削减预算开支可能将导致军费削减近1万亿美元。据新加坡《联合早报》报道，美国国防部长帕内塔对此强调，削减军费不能以削减军力为代价。他也提到，美军未来不可能再打传统的战役，而需要准备好应付高技术的武器装备带来的新威胁。</p>',0,1,0),(30,1,'2011-10-14 18:59:12',1,'2011-10-14 18:59:14','4727cab9-e432-43cf-97b6-4a4a4b430b7c','02','郑州将定向考录退役大学生士兵为公务员','<p>新华网郑州10月14日电 郑州市日前出台征兵及退役士兵安置新举措，明确将加大退役士兵安置力度，将安排一定比例的公务员、全供事业单位用人指标定向考录退役大学生士兵，以鼓励高校毕业生应征入伍。</p>\n<div class=\"gg200x300\"></div>\n<p>郑州市委、市政府、警备区联合下发的《关于进一步做好新形势下征兵工作的实施意见》中规定，自2013年起，对郑州市接收的大学毕业生 退役士兵，全市每年安排一定比例的公务员和全供事业单位的岗位进行定向考录；省市两级政法队伍招录干警时，安排不低于当年符合条件的退役大学生士兵人数的 5％，事业单位招聘时，安排不低于当年符合条件的退役大学生士兵人数的10％，市属国有企业招聘时，安排不低于当年符合条件的退役大学生士兵人数的 15％，定向招聘退役大学生士兵。退役大学生士兵参加公务员定向考录和企事业单位招聘时，视同普通高等学校毕业生办理手续，服役期视为工作经历，计算工 龄。非郑州籍退役大学生士兵复学完成学业且被郑州市用人单位接收的，可办理进郑州落户手续。</p>',0,1,0),(31,1,'2011-10-14 18:59:43',1,'2011-10-14 18:59:46','cb6ae189-5a7d-4355-8892-a4f6f15c390a','02','回良玉：汶川震区重建目标实现 生活超灾前水平','<p>中新社北京10月14日电 中央政治局委员、国务院副总理回良玉14日表示，汶川<a title=\"地震\" href=\"http://news.163.com/special/rbdblhddz/\" target=\"_blank\">地震</a>灾区基本生产<a title=\"生活\" href=\"http://tuan.163.com/?tag=%E7%94%9F%E6%B4%BB\">生活</a>条件和经济社会发展水平目前已得到全面恢复并超过灾前水平，实现了&ldquo;家家有房住、户户有就业、人人有保障、设施有提高、经济有发展、生态有改善&rdquo;的重建目标。</p>\n<p>汶川地震灾后恢复重建总结表彰大会14日在京召开，200个先进集体、295名先进个人受到表彰。</p>\n<p>回良玉在会议上指出，汶川地震灾后恢复重建，是人类救灾史上罕见的浩大工程。经过三年恢复重建，灾区生活条件实现了大变样。一个安居乐业、生态文明、安全和谐的新家园已呈现在世人眼前。</p>',0,1,0),(32,1,'2011-10-14 19:00:12',1,'2011-10-14 19:00:15','e936353c-af57-4307-a2f1-d5a025ab8063','02','美拟放宽武器出口限制 中国或重获\"黑鹰\"','<p>据美国华盛顿时报10月12日报道，奥巴马政府日前通知国会，正在计划放宽对UH-60&ldquo;黑鹰&rdquo;直升机以及其他武器(可能包括C-130运输机，甚至还包括F-16战机)的外销限制，美媒还成，&ldquo;黑鹰&rdquo;直升机一直是&ldquo;中国军队希望得到的&rdquo;。</p>\n<p>美媒称，奥巴马政府日前表示，作为出口控制努力的一部分，他们正在对归属美国国务院进出口管辖权限的美国军火清单上的数千种武器进行审查。作为审查的一部分，美国政府已经确定了多款可以移至商务部较宽松控制清单上的武器，这其中包括直升机以及军用运输机。</p>\n<p>而且，据一位国会议员助理透露，放宽对F-16战机的销售限制也在考虑之中。他们还表示，解除管制计划将会安排监视这些系统的使用情以判断它们是否被转销至伊朗等国。</p>',0,1,0),(33,1,'2011-10-14 19:01:12',1,'2011-10-14 19:01:40','e28dbf61-f2d2-4153-bb5e-3943b20c0060','02','南非摄影师追逐闪电16年拍摄壮观场面(图)','<p>国际在线专稿：据英国《每日邮报》10月13日报道，南非摄影师米切尔&middot;克罗格（Mitchell  Krog）在过去16年间冒着生命危险，在荒芜的南非马加利斯堡地区（Magaliesburg）拍摄了许多闪电疾光电影的壮观场面。有时候，他甚至不顾 及自己的生命，站在致命闪电附近的区域，以抓拍大自然的狂暴一面。</p>\n<p>报道称，克罗格自孩提时代就对南非广阔平原上的雷暴现象着迷。现年39岁的他已经拍摄闪电16年。他给自己的<a title=\"照片\" href=\"http://mall.163.com/yxp.html\">照片</a>起了许多名字，包括&ldquo;火与冰&rdquo;、&ldquo;杀人雷暴&rdquo;等。一张名为&ldquo;不朽混乱&rdquo;的杰作上，他拍摄到三次闪电同时发生的场景。</p>\n<p>克罗格说：&ldquo;我不怕闪电，我会尽可能近地贴近它们，甚至会站在闪电直接通过的路径上。从小我就对闪电着迷，一到夏季就前往马加利斯堡地区看雷暴。我总是能找到新的灵感，改善我的拍摄技巧。&rdquo;</p>\n<p>&nbsp;</p>\n<p style=\"text-align: center;\"><img src=\"../../upload/news/c4746f1b-531f-4706-9a41-6c22a91ad796.jpg\" alt=\"\" width=\"550\" height=\"367\" /></p>',1,1,0),(34,1,'2011-10-14 19:01:58',1,'2011-10-14 19:02:01','862112a5-f242-488d-9edb-f58b2e8192cd','02','俄罗斯地震哈尔滨震感明显 高层建筑电梯驻停','<p>核心提示：北京时间2011年10月14日14时10分在俄罗斯(北纬54.2,东经123.7)发生6.6级地震，震源深度10公里。距离震中965公里的黑龙江省哈尔滨，有市民明显感到了震感，甚至部分高层建筑的电梯出现驻停现象。</p>',0,1,2);
/*!40000 ALTER TABLE `core_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_news_attachment`
--

DROP TABLE IF EXISTS `core_news_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_news_attachment` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `MID_` int(10) unsigned DEFAULT NULL,
  `MDATE_` datetime DEFAULT NULL,
  `UUID_` varchar(45) DEFAULT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `filetype` varchar(45) DEFAULT NULL,
  `filesize` int(10) unsigned DEFAULT '0',
  `oldname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_news_attachment`
--

LOCK TABLES `core_news_attachment` WRITE;
/*!40000 ALTER TABLE `core_news_attachment` DISABLE KEYS */;
INSERT INTO `core_news_attachment` VALUES (8,1,'2011-10-10 21:48:44',NULL,NULL,'7ee68b0d-a19d-40ab-95f2-22340385e8c0','upload\\news\\39a71884-7771-4e7e-95b6-5c5a890b1ed2.jpg','.jpg',158445,'minioademo.jpg'),(9,1,'2011-10-10 21:49:09',NULL,NULL,'7ee68b0d-a19d-40ab-95f2-22340385e8c0','upload\\news\\e5d5b4a0-26bd-4373-8b57-21a93c658097.jpg','.jpg',45648,'1316760017386.jpg'),(11,1,'2011-10-11 20:51:01',NULL,NULL,'99afc9e4-1ca0-4c6a-a31d-91f713f96681','upload\\news\\766043d3-1299-4849-8a90-ed0d70f00e79.jpg','.jpg',36413,'222.jpg'),(12,1,'2011-10-11 20:59:23',NULL,NULL,'99afc9e4-1ca0-4c6a-a31d-91f713f96681','upload\\news\\e10393e7-773a-4df7-baf3-56a3c0a1c847.jpg','.jpg',45648,'1316760017386.jpg'),(14,1,'2011-10-11 21:11:16',NULL,NULL,'83c177ba-7082-4f36-8b7e-854823b7d46d','upload\\news\\d9afbacb-51d4-4bc6-941c-1e8347491b71.jpg','.jpg',16630,'rdn_4e93629fdf0f3.jpg'),(15,1,'2011-10-11 21:33:30',NULL,NULL,'83c177ba-7082-4f36-8b7e-854823b7d46d','upload\\news\\bca4deff-9e24-43f9-84b2-f29d9561a844.jpg','.jpg',36413,'222.jpg'),(16,1,'2011-10-13 20:18:03',NULL,NULL,'f8a53f16-4c8d-40a2-9c76-fdb7b2cf9fab','upload\\news\\e89920e8-5a9b-4b32-adbe-cdd529079454.jpg','.jpg',205986,'四姑娘山14名违规登山驴友获救.jpg'),(17,1,'2011-10-13 20:40:42',NULL,NULL,'1cac5b61-4648-4c7c-b675-fe7ed33061a3','upload\\news\\3ffa2d8d-e980-4da1-bf07-101e27883d7a.jpg','.jpg',29374,'利比亚当局军官称卡扎菲之子穆塔西姆未被逮捕.jpg'),(18,1,'2011-10-14 18:45:40',NULL,NULL,'9d657db4-a8e6-4d25-a29f-27c27448edee','upload\\news\\b4401729-9c4a-44aa-8130-f906486abbf5.jpg','.jpg',73631,'A380.jpg'),(19,1,'2011-10-14 19:00:54',NULL,NULL,'e28dbf61-f2d2-4153-bb5e-3943b20c0060','upload\\news\\c4746f1b-531f-4706-9a41-6c22a91ad796.jpg','.jpg',33658,'南非摄影师追逐闪电16年拍摄壮观场面(图).jpg');
/*!40000 ALTER TABLE `core_news_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_op`
--

DROP TABLE IF EXISTS `core_op`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_op` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `MID_` int(10) unsigned DEFAULT NULL,
  `MDATE_` datetime DEFAULT NULL,
  `UUID_` varchar(45) DEFAULT NULL,
  `opName` varchar(100) DEFAULT NULL,
  `opDesc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_op`
--

LOCK TABLES `core_op` WRITE;
/*!40000 ALTER TABLE `core_op` DISABLE KEYS */;
INSERT INTO `core_op` VALUES (1,0,'2011-08-27 21:38:52',0,'2011-08-27 21:39:12',NULL,'100102','单位管理-增删改'),(2,0,'2011-08-27 21:39:06',NULL,NULL,NULL,'100101','单位管理-浏览'),(3,0,'2011-08-27 21:39:28',NULL,NULL,NULL,'100202','部门管理-增删改'),(4,0,'2011-08-27 21:39:36',NULL,NULL,NULL,'100201','部门管理-浏览'),(5,0,'2011-08-27 21:40:10',NULL,NULL,NULL,'100302','岗位管理-增删改'),(6,0,'2011-08-27 21:40:28',NULL,NULL,NULL,'100301','岗位管理-浏览'),(7,0,'2011-08-27 21:40:47',0,'2011-09-18 21:22:49',NULL,'100402','帐号管理-增删改'),(8,0,'2011-08-27 21:40:54',NULL,NULL,NULL,'100401','帐号管理-浏览'),(9,0,'2011-08-27 21:41:06',NULL,NULL,NULL,'100502','角色管理-增删改'),(10,0,'2011-08-27 21:41:14',NULL,NULL,NULL,'100501','角色管理-浏览'),(11,0,'2011-08-27 21:41:44',NULL,NULL,NULL,'100602','权限管理-增删改'),(12,0,'2011-08-27 21:41:50',NULL,NULL,NULL,'100601','权限管理-浏览'),(13,0,'2011-09-08 19:25:01',NULL,NULL,NULL,'helloworld',''),(14,0,'2011-10-12 18:56:51',NULL,NULL,NULL,'100702','顶部菜单管理-增删改'),(15,0,'2011-10-12 18:56:59',NULL,NULL,NULL,'100701','顶部菜单管理-浏览'),(16,0,'2011-10-12 18:57:09',0,'2011-10-12 18:59:16',NULL,'100802','左侧菜单管理-增删改'),(17,0,'2011-10-12 18:57:22',NULL,NULL,NULL,'100801','左侧菜单管理-浏览'),(18,0,'2011-10-12 18:57:46',NULL,NULL,NULL,'100902','基础数据-增删改'),(19,0,'2011-10-12 18:57:53',NULL,NULL,NULL,'100901','基础数据-浏览'),(20,0,'2011-10-12 18:58:24',NULL,NULL,NULL,'101002','日志管理-增删改'),(21,0,'2011-10-12 18:58:31',NULL,NULL,NULL,'101001','日志管理-浏览'),(22,0,'2011-10-12 18:58:52',NULL,NULL,NULL,'101102','新闻管理-增删改'),(23,0,'2011-10-12 18:58:59',NULL,NULL,NULL,'101101','新闻管理-浏览'),(24,0,'2011-10-12 19:10:23',NULL,NULL,NULL,'100603','权限管理-权限设置');
/*!40000 ALTER TABLE `core_op` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_op_role_relation`
--

DROP TABLE IF EXISTS `core_op_role_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_op_role_relation` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `opId` int(10) unsigned DEFAULT NULL,
  `roleId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_op_role_relation`
--

LOCK TABLES `core_op_role_relation` WRITE;
/*!40000 ALTER TABLE `core_op_role_relation` DISABLE KEYS */;
INSERT INTO `core_op_role_relation` VALUES (3,0,'2011-09-04 18:28:49',3,1),(4,0,'2011-09-04 18:28:49',4,1),(5,0,'2011-09-04 18:28:49',5,1),(6,0,'2011-09-04 18:28:49',6,1),(7,0,'2011-09-04 18:28:49',7,1),(8,0,'2011-09-04 18:28:49',8,1),(9,0,'2011-09-04 18:28:49',9,1),(10,0,'2011-09-04 18:28:49',10,1),(11,0,'2011-09-04 18:28:49',11,1),(12,0,'2011-09-04 18:28:49',12,1),(13,0,'2011-09-05 21:50:39',1,1),(14,0,'2011-09-05 21:50:39',2,1),(15,0,'2011-09-09 07:47:44',13,1),(16,0,'2011-10-12 18:59:31',14,1),(17,0,'2011-10-12 18:59:31',15,1),(18,0,'2011-10-12 18:59:31',17,1),(19,0,'2011-10-12 18:59:31',16,1),(20,0,'2011-10-12 18:59:31',19,1),(21,0,'2011-10-12 18:59:31',18,1),(22,0,'2011-10-12 18:59:31',21,1),(23,0,'2011-10-12 18:59:31',20,1),(24,0,'2011-10-12 18:59:31',23,1),(25,0,'2011-10-12 18:59:31',22,1),(26,0,'2011-10-12 19:24:58',24,1),(27,0,'2011-10-12 19:26:07',2,2),(28,0,'2011-10-12 19:26:07',4,2),(29,0,'2011-10-12 19:26:07',6,2),(30,0,'2011-10-12 19:26:07',8,2),(31,0,'2011-10-12 19:26:07',10,2),(32,0,'2011-10-12 19:26:07',12,2),(33,0,'2011-10-12 19:26:07',19,2),(34,0,'2011-10-12 19:26:07',23,2);
/*!40000 ALTER TABLE `core_op_role_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_org`
--

DROP TABLE IF EXISTS `core_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_org` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `MID_` int(10) unsigned DEFAULT NULL,
  `MDATE_` datetime DEFAULT NULL,
  `UUID_` varchar(45) DEFAULT NULL,
  `orgName` varchar(100) DEFAULT NULL,
  `orgDesc` varchar(100) DEFAULT NULL,
  `sequence` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_org`
--

LOCK TABLES `core_org` WRITE;
/*!40000 ALTER TABLE `core_org` DISABLE KEYS */;
INSERT INTO `core_org` VALUES (1,0,'2011-08-15 20:41:22',0,'2011-09-05 22:02:32',NULL,'西柏网络','西柏网络科技有限公司',0),(11,0,'2011-08-15 21:50:50',0,'2011-08-21 21:29:51',NULL,'中国石油','中国石油股份有限公司',0),(12,0,'2011-08-15 21:50:53',0,'2011-08-21 21:24:29',NULL,'中国石化','中国石化股份有限公司',100),(13,0,'2011-08-16 20:47:59',0,'2011-08-21 21:24:13',NULL,'中国移动','中国移动股份有限公司',99);
/*!40000 ALTER TABLE `core_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_pinyin`
--

DROP TABLE IF EXISTS `core_pinyin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_pinyin` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `MID_` int(10) unsigned DEFAULT NULL,
  `MDATE_` datetime DEFAULT NULL,
  `UUID_` varchar(45) DEFAULT NULL,
  `pinyin` varchar(100) DEFAULT NULL,
  `hanzi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_pinyin`
--

LOCK TABLES `core_pinyin` WRITE;
/*!40000 ALTER TABLE `core_pinyin` DISABLE KEYS */;
INSERT INTO `core_pinyin` VALUES (2,0,'2011-09-16 19:49:36',0,NULL,NULL,'li','李');
/*!40000 ALTER TABLE `core_pinyin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_role`
--

DROP TABLE IF EXISTS `core_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_role` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `MID_` int(10) unsigned DEFAULT NULL,
  `MDATE_` datetime DEFAULT NULL,
  `UUID_` varchar(45) DEFAULT NULL,
  `roleName` varchar(100) DEFAULT NULL,
  `roleDesc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_role`
--

LOCK TABLES `core_role` WRITE;
/*!40000 ALTER TABLE `core_role` DISABLE KEYS */;
INSERT INTO `core_role` VALUES (1,0,'2011-08-27 21:03:24',0,'2011-08-27 21:03:33',NULL,'admin','管理员'),(2,0,'2011-08-27 21:03:49',0,'2011-09-06 21:16:41',NULL,'user','普通用户'),(3,0,'2011-08-27 21:03:58',NULL,NULL,NULL,'manager','经理');
/*!40000 ALTER TABLE `core_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_role_user_relation`
--

DROP TABLE IF EXISTS `core_role_user_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_role_user_relation` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `roleId` int(10) unsigned DEFAULT NULL,
  `userId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_role_user_relation`
--

LOCK TABLES `core_role_user_relation` WRITE;
/*!40000 ALTER TABLE `core_role_user_relation` DISABLE KEYS */;
INSERT INTO `core_role_user_relation` VALUES (2,0,'2011-09-04 07:44:41',1,1),(7,1,'2011-09-06 21:16:46',2,2),(8,1,'2011-10-12 19:27:14',2,4);
/*!40000 ALTER TABLE `core_role_user_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_topmenu`
--

DROP TABLE IF EXISTS `core_topmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_topmenu` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `MID_` int(10) unsigned DEFAULT NULL,
  `MDATE_` datetime DEFAULT NULL,
  `UUID_` varchar(45) DEFAULT NULL,
  `parentId` int(10) unsigned DEFAULT NULL,
  `menuName` varchar(100) DEFAULT NULL,
  `menuUrl` varchar(100) DEFAULT NULL,
  `menuTarget` varchar(100) DEFAULT NULL,
  `sequence` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_topmenu`
--

LOCK TABLES `core_topmenu` WRITE;
/*!40000 ALTER TABLE `core_topmenu` DISABLE KEYS */;
INSERT INTO `core_topmenu` VALUES (1,0,'2011-08-28 10:50:53',0,NULL,NULL,0,'首页','index.jsf','_self',1),(2,0,'2011-08-28 10:54:12',0,NULL,NULL,0,'新闻中心','','_self',2),(3,0,'2011-08-28 10:54:42',0,NULL,NULL,0,'部门网站','','_self',3),(4,0,'2011-08-28 10:54:50',0,NULL,NULL,0,'内部培训','','_self',4),(5,0,'2011-08-28 10:54:58',0,NULL,NULL,0,'企业邮箱','','_self',5),(6,0,'2011-08-28 10:55:14',0,'2011-08-28 10:55:33',NULL,0,'下载中心','','_self',6),(7,0,'2011-08-28 10:55:26',0,NULL,NULL,0,'系统管理','','_self',99),(8,0,'2011-08-28 10:55:51',0,NULL,NULL,2,'通知通告','','_self',1),(9,0,'2011-08-28 10:56:02',0,'2011-08-28 10:56:21',NULL,2,'公司新闻','','_self',2),(10,0,'2011-08-28 10:56:10',0,'2011-08-28 10:56:33',NULL,2,'集团新闻','','_self',3),(11,0,'2011-08-28 10:56:43',0,'2011-08-28 10:56:55',NULL,2,'行业新闻','','_self',4),(12,0,'2011-08-28 10:57:05',0,NULL,NULL,2,'社会中心','','_self',5),(13,0,'2011-08-28 10:57:24',0,NULL,NULL,3,'人事部','','_self',1),(14,0,'2011-08-28 10:57:30',0,NULL,NULL,3,'财务部','','_self',2),(15,0,'2011-08-28 10:57:38',0,NULL,NULL,3,'技术部','','_self',3),(16,0,'2011-08-28 10:57:46',0,NULL,NULL,3,'市场部','','_self',4),(17,0,'2011-08-28 10:58:08',0,NULL,NULL,4,'新员工入职培训','','_self',1),(18,0,'2011-08-28 10:58:23',0,NULL,NULL,4,'Excel培训视频教程','','_self',2),(19,0,'2011-08-28 10:58:30',0,NULL,NULL,4,'Word培训视频教程','','_self',3),(20,0,'2011-08-28 10:58:45',0,NULL,NULL,5,'帐号设置','','_self',1),(21,0,'2011-08-28 10:58:55',0,NULL,NULL,5,'收件箱','','_self',2),(22,0,'2011-08-28 10:59:02',0,NULL,NULL,5,'发件箱','','_self',3),(23,0,'2011-08-28 10:59:11',0,NULL,NULL,5,'草稿箱','','_self',4),(24,0,'2011-08-28 10:59:20',0,NULL,NULL,5,'垃圾箱','','_self',5),(25,0,'2011-08-28 10:59:40',0,NULL,NULL,6,'工具软件','','_self',1),(26,0,'2011-08-28 10:59:47',0,NULL,NULL,6,'规章制度','','_self',2),(27,0,'2011-08-28 10:59:55',0,NULL,NULL,6,'申请表单','','_self',3),(28,0,'2011-08-29 20:21:40',0,NULL,NULL,7,'单位管理','org.jsf','_self',1),(29,0,'2011-08-29 20:22:14',0,NULL,NULL,7,'部门管理','department.jsf','_self',2),(30,0,'2011-08-29 20:22:33',0,'2011-09-03 14:49:59',NULL,7,'岗位管理','job.jsf','_self',3),(31,0,'2011-08-29 20:22:52',0,NULL,NULL,7,'帐号管理','user.jsf','_self',4),(32,0,'2011-08-29 20:23:12',0,NULL,NULL,7,'角色管理','role.jsf','_self',5),(33,0,'2011-08-29 20:23:34',0,NULL,NULL,7,'权限管理','op.jsf','_self',6),(34,0,'2011-08-29 20:24:05',0,NULL,NULL,7,'顶部菜单管理','topmenuadmin.jsf','_self',7),(35,0,'2011-08-29 20:24:25',0,NULL,NULL,7,'左侧菜单管理','leftmenuadmin.jsf','_self',8),(36,0,'2011-08-29 20:24:51',0,'2011-10-08 20:24:26',NULL,7,'基础数据','basicdata.jsf','_self',9),(37,0,'2011-08-29 20:25:05',0,NULL,NULL,7,'日志管理','','_self',10),(38,0,'2011-08-29 20:25:16',0,'2011-10-10 19:44:02',NULL,7,'新闻管理','news.jsf','_self',11),(39,0,'2011-08-29 20:25:34',0,NULL,NULL,7,'流程管理','','_self',12),(40,0,'2011-08-29 20:30:10',0,NULL,NULL,39,'流程定义','','_self',1),(41,0,'2011-08-29 20:30:26',0,NULL,NULL,39,'节点定义','','_self',2),(42,0,'2011-08-29 20:30:47',0,NULL,NULL,39,'审批代理','','_self',3);
/*!40000 ALTER TABLE `core_topmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_topmenu_role_relation`
--

DROP TABLE IF EXISTS `core_topmenu_role_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_topmenu_role_relation` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `menuId` int(10) unsigned DEFAULT NULL,
  `roleId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_topmenu_role_relation`
--

LOCK TABLES `core_topmenu_role_relation` WRITE;
/*!40000 ALTER TABLE `core_topmenu_role_relation` DISABLE KEYS */;
INSERT INTO `core_topmenu_role_relation` VALUES (1,0,'2011-09-04 22:02:38',0,2),(46,0,'2011-09-04 22:08:49',2,3),(47,0,'2011-09-04 22:08:49',3,3),(48,0,'2011-09-04 22:08:49',4,3),(49,0,'2011-09-04 22:08:49',5,3),(50,0,'2011-09-04 22:08:49',6,3),(51,0,'2011-09-04 22:08:49',7,3),(52,0,'2011-09-04 22:08:49',8,3),(53,0,'2011-09-04 22:08:49',9,3),(54,0,'2011-09-04 22:08:49',10,3),(55,0,'2011-09-04 22:08:49',11,3),(56,0,'2011-09-04 22:08:49',12,3),(57,0,'2011-09-04 22:08:49',13,3),(58,0,'2011-09-04 22:08:49',14,3),(59,0,'2011-09-04 22:08:49',15,3),(60,0,'2011-09-04 22:08:49',17,3),(61,0,'2011-09-04 22:08:49',16,3),(62,0,'2011-09-04 22:08:49',19,3),(63,0,'2011-09-04 22:08:49',18,3),(64,0,'2011-09-04 22:08:49',21,3),(65,0,'2011-09-04 22:08:49',20,3),(66,0,'2011-09-04 22:08:49',23,3),(67,0,'2011-09-04 22:08:49',22,3),(68,0,'2011-09-04 22:08:49',25,3),(69,0,'2011-09-04 22:08:49',24,3),(70,0,'2011-09-04 22:08:49',27,3),(71,0,'2011-09-04 22:08:49',26,3),(72,0,'2011-09-04 22:08:49',29,3),(73,0,'2011-09-04 22:08:49',28,3),(74,0,'2011-09-04 22:08:49',31,3),(75,0,'2011-09-04 22:08:49',30,3),(76,0,'2011-09-04 22:08:49',34,3),(77,0,'2011-09-04 22:08:49',35,3),(78,0,'2011-09-04 22:08:49',32,3),(79,0,'2011-09-04 22:08:49',33,3),(80,0,'2011-09-04 22:08:49',38,3),(81,0,'2011-09-04 22:08:49',39,3),(82,0,'2011-09-04 22:08:49',36,3),(83,0,'2011-09-04 22:08:49',37,3),(84,0,'2011-09-04 22:08:49',42,3),(85,0,'2011-09-04 22:08:49',40,3),(86,0,'2011-09-04 22:08:49',41,3),(87,0,'2011-09-05 19:40:37',1,1),(88,0,'2011-09-05 19:40:37',2,1),(89,0,'2011-09-05 19:40:37',3,1),(90,0,'2011-09-05 19:40:37',4,1),(91,0,'2011-09-05 19:40:37',5,1),(92,0,'2011-09-05 19:40:37',6,1),(93,0,'2011-09-05 19:40:37',7,1),(94,0,'2011-09-05 19:40:37',8,1),(95,0,'2011-09-05 19:40:37',9,1),(96,0,'2011-09-05 19:40:37',10,1),(97,0,'2011-09-05 19:40:37',11,1),(98,0,'2011-09-05 19:40:37',12,1),(99,0,'2011-09-05 19:40:37',13,1),(100,0,'2011-09-05 19:40:37',14,1),(101,0,'2011-09-05 19:40:37',15,1),(102,0,'2011-09-05 19:40:37',17,1),(103,0,'2011-09-05 19:40:37',16,1),(104,0,'2011-09-05 19:40:37',19,1),(105,0,'2011-09-05 19:40:37',18,1),(106,0,'2011-09-05 19:40:37',21,1),(107,0,'2011-09-05 19:40:37',20,1),(108,0,'2011-09-05 19:40:37',23,1),(109,0,'2011-09-05 19:40:37',22,1),(110,0,'2011-09-05 19:40:37',25,1),(111,0,'2011-09-05 19:40:37',24,1),(112,0,'2011-09-05 19:40:37',27,1),(113,0,'2011-09-05 19:40:37',26,1),(114,0,'2011-09-05 19:40:37',29,1),(115,0,'2011-09-05 19:40:37',28,1),(116,0,'2011-09-05 19:40:37',31,1),(117,0,'2011-09-05 19:40:37',30,1),(118,0,'2011-09-05 19:40:37',34,1),(119,0,'2011-09-05 19:40:37',35,1),(120,0,'2011-09-05 19:40:37',32,1),(121,0,'2011-09-05 19:40:37',33,1),(122,0,'2011-09-05 19:40:37',38,1),(124,0,'2011-09-05 19:40:37',36,1),(125,0,'2011-09-05 19:40:37',37,1),(126,0,'2011-10-12 19:26:41',1,2),(127,0,'2011-10-12 19:26:41',7,2),(128,0,'2011-10-12 19:26:41',29,2),(129,0,'2011-10-12 19:26:41',28,2),(130,0,'2011-10-12 19:26:41',31,2),(131,0,'2011-10-12 19:26:41',30,2),(132,0,'2011-10-12 19:26:41',32,2),(133,0,'2011-10-12 19:26:41',33,2),(134,0,'2011-10-12 19:26:41',38,2),(135,0,'2011-10-12 19:26:41',36,2);
/*!40000 ALTER TABLE `core_topmenu_role_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_user`
--

DROP TABLE IF EXISTS `core_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_user` (
  `ID_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CID_` int(10) unsigned DEFAULT NULL,
  `CDATE_` datetime DEFAULT NULL,
  `MID_` int(10) unsigned DEFAULT NULL,
  `MDATE_` datetime DEFAULT NULL,
  `UUID_` varchar(45) DEFAULT NULL,
  `userName` varchar(100) DEFAULT NULL,
  `depaId` int(10) unsigned DEFAULT NULL,
  `jobId` int(10) unsigned DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `mobilePhone` varchar(100) DEFAULT NULL,
  `gender` tinyint(3) unsigned DEFAULT '0',
  `displayName` varchar(100) DEFAULT NULL,
  `isLock` tinyint(3) unsigned DEFAULT '0',
  `jobId2` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_user`
--

LOCK TABLES `core_user` WRITE;
/*!40000 ALTER TABLE `core_user` DISABLE KEYS */;
INSERT INTO `core_user` VALUES (1,0,'2011-08-23 21:43:02',0,'2011-10-08 21:20:56',NULL,'admin',2,0,'914261631@qq.com','e10adc3949ba59abbe56e057f20f883e','','13589310033',1,'管理员1',0,0),(2,0,'2011-08-24 21:18:36',0,'2011-09-08 19:19:33',NULL,'subadmin',14,6,'914261631@qq.com','e10adc3949ba59abbe56e057f20f883e','123456','13589310033',1,'管理员',1,3),(3,0,'2011-09-09 09:21:13',NULL,NULL,NULL,'Kate',2,0,'kate@gmail.com','e10adc3949ba59abbe56e057f20f883e','','',0,'Kate',NULL,0),(4,0,'2011-09-09 09:21:23',NULL,NULL,NULL,'Tom',2,0,'tom@gmail.com','e10adc3949ba59abbe56e057f20f883e','','',0,'Tom',NULL,0),(5,0,'2011-09-09 09:21:37',0,'2011-09-29 20:14:48',NULL,'Yahoo',2,0,'yahoo@gmail.com','e10adc3949ba59abbe56e057f20f883e','','',0,'Yahoo',NULL,0),(6,0,'2011-09-09 09:21:49',NULL,NULL,NULL,'Google',2,0,'google@gmail.com','e10adc3949ba59abbe56e057f20f883e','','',0,'Google',NULL,0),(7,0,'2011-09-09 09:22:02',NULL,NULL,NULL,'Baidu',2,0,'baidu@gmail.com','e10adc3949ba59abbe56e057f20f883e','','',0,'Baidu',NULL,0),(8,0,'2011-09-09 09:22:14',NULL,NULL,NULL,'163',2,0,'163@gmail.com','e10adc3949ba59abbe56e057f20f883e','','',0,'163',NULL,0),(9,0,'2011-09-09 09:22:27',NULL,NULL,NULL,'Lucy',2,0,'lucy@gmail.com','e10adc3949ba59abbe56e057f20f883e','','',1,'Lucy',NULL,0),(10,0,'2011-09-09 09:22:51',NULL,NULL,NULL,'Ben',2,0,'ben@gmail.com','e10adc3949ba59abbe56e057f20f883e','','',1,'Ben',NULL,0),(11,0,'2011-09-09 09:22:59',NULL,NULL,NULL,'Li',2,0,'li@gmail.com','e10adc3949ba59abbe56e057f20f883e','','',1,'Li',NULL,0);
/*!40000 ALTER TABLE `core_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-10-16  7:53:36
