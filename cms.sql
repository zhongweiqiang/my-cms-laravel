-- MySQL dump 10.13  Distrib 8.0.18, for Linux (x86_64)
--
-- Host: localhost    Database: cms
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `zh_menus`
--

DROP TABLE IF EXISTS `zh_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zh_menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级ID',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '元素名称',
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('m','e') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '视图路由',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标名称',
  `order` tinyint(3) unsigned DEFAULT NULL COMMENT '菜单排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zh_menus`
--

LOCK TABLES `zh_menus` WRITE;
/*!40000 ALTER TABLE `zh_menus` DISABLE KEYS */;
INSERT INTO `zh_menus` VALUES (1,0,'系统管理','system','m','/system','setting',10,'2019-11-10 09:47:55','2019-11-10 09:47:55'),(2,1,'用户管理','user.list','m','/user/list',NULL,1,'2019-11-10 09:50:39','2019-11-10 09:50:39'),(3,1,'角色管理','role.list','m','/role/list',NULL,2,'2019-11-10 09:51:27','2019-11-18 03:01:54'),(4,1,'菜单管理','menu.list','m','/menu/list',NULL,3,'2019-11-10 09:51:59','2019-11-10 09:51:59'),(5,1,'权限管理','perm.list','m','/perm/list',NULL,4,'2019-11-10 09:52:25','2019-11-10 09:52:25'),(6,0,'日志管理','log','m','/log','file-text',9,'2019-11-12 00:07:13','2019-11-25 09:33:00'),(7,0,'游戏管理','game','m','/game','robot',3,'2019-11-12 00:56:25','2019-11-21 20:32:56'),(8,0,'资金管理','money','m','/money','dollar',6,'2019-11-12 08:26:42','2019-11-25 09:31:57'),(9,1,'配置管理','config','m','/config',NULL,5,'2019-11-13 06:08:05','2019-11-13 06:08:05'),(10,1,'用户详情','userinfo','m','/info',NULL,2,'2019-11-13 23:13:33','2019-11-14 00:09:06'),(11,0,'账户管理','account','m','/account','user',1,'2019-11-14 05:56:48','2019-11-14 06:23:35'),(12,11,'子账户管理','son.list','m','/son/list',NULL,1,'2019-11-14 05:57:57','2019-11-14 05:57:57'),(13,12,'主账户名称搜索','son.user.search','e','/son/list',NULL,0,'2019-11-14 17:10:42','2019-11-14 17:13:13'),(14,12,'子账户搜索','son.son.search','e','/son/user',NULL,0,'2019-11-14 17:19:24','2019-11-14 20:08:46'),(15,12,'子账户删除','son.delete','e','/son/list',NULL,0,'2019-11-14 20:52:12','2019-11-14 20:56:21'),(16,12,'禁用子账户','son.forbidden','e','/son/list',NULL,0,'2019-11-14 20:58:17','2019-11-14 21:02:50'),(17,12,'子账户页面是否显式主账户一列','son.user.column','e','/son/list',NULL,0,'2019-11-14 21:11:16','2019-11-14 21:16:14'),(21,7,'游戏列表','game.list','m','/game/list',NULL,1,'2019-11-17 20:57:39','2019-11-18 00:44:46'),(23,7,'面值管理','price.list','m','/price/list',NULL,2,'2019-11-18 00:18:35','2019-11-18 00:52:12'),(24,7,'跳过面值','price.pass','m','/price/pass',NULL,3,'2019-11-19 05:22:45','2019-11-19 05:22:45'),(25,0,'设备管理','device','m','/device','lock',6,'2019-11-20 01:20:24','2019-12-02 01:12:13'),(26,25,'设备授权','device.list','m','/device/list',NULL,1,'2019-11-20 01:24:06','2019-11-20 01:24:06'),(27,0,'库存管理','store','m','/store','shop',4,'2019-11-21 19:36:09','2019-11-21 19:40:06'),(28,27,'库存列表','stock.list','m','/stock/list',NULL,1,'2019-11-21 19:39:57','2019-11-22 00:29:30'),(29,27,'出库列表','out.list','m','/out/list',NULL,2,'2019-11-21 19:51:12','2019-11-21 19:59:11'),(30,27,'入库列表','ins.list','m','/ins/list',NULL,3,'2019-11-21 20:00:40','2019-11-23 04:35:13'),(31,27,'数据统计','statistic.list','m','/statistic/list',NULL,4,'2019-11-21 20:03:13','2019-11-21 20:03:13'),(32,27,'库存分配','dist.list','m','/dist/list',NULL,4,'2019-11-24 01:02:43','2019-11-25 09:18:32'),(33,27,'凭证管理','manage.list','m','/manage/list',NULL,6,'2019-11-24 04:01:43','2019-11-25 09:18:16'),(34,12,'子账户一键转主按钮','son.son_to_user','e','/son/list',NULL,0,'2019-11-24 23:40:47','2019-11-24 23:40:47'),(35,28,'凭证设置为有效','stock.effective','e','/stock/list',NULL,0,'2019-11-24 23:44:37','2019-11-24 23:44:37'),(36,28,'凭证禁用选项','stock.forbidden','e','/stock/list',NULL,0,'2019-11-24 23:45:19','2019-11-24 23:45:19'),(37,28,'设置为可出库不可交易','stock.no_deal','e','/stock/list',NULL,0,'2019-11-24 23:47:26','2019-11-25 09:19:24'),(38,28,'凭证设置为已使用','stock.used','e','/stock/list',NULL,0,'2019-11-24 23:50:54','2019-11-24 23:50:54'),(39,27,'凭证迁移','migration.list','m','/migration/list',NULL,6,'2019-11-25 03:58:42','2019-11-25 09:19:19'),(40,28,'显示凭证管理删除按钮','stock.delete','e','/stock/list',NULL,0,'2019-11-25 09:10:51','2019-11-25 09:19:15'),(41,0,'交易管理','trans','m','/trans','money-collect',7,'2019-11-25 09:31:18','2019-12-02 01:11:47'),(42,11,'是否显示用户详情','user.info','e','/layout',NULL,0,'2019-11-25 21:23:04','2019-11-25 21:31:53'),(43,11,'是否显示支付修改','user.info.edit','e','/layout',NULL,0,'2019-11-25 21:25:02','2019-11-26 03:24:02'),(45,6,'凭证日志','log.stock','m','/log/stock',NULL,1,'2019-11-27 08:15:28','2019-11-27 08:15:28'),(46,6,'登陆日志','log.user','m','/log/user',NULL,2,'2019-11-27 08:17:24','2019-12-04 08:35:47'),(47,6,'出库手续费','log.output','m','/log/output',NULL,6,'2019-11-27 08:18:00','2019-12-05 01:33:22'),(48,8,'支付管理','pay.list','m','/pay/list',NULL,2,'2019-11-28 01:05:24','2019-11-28 01:05:24'),(49,8,'充值提现','money.list','m','/money/list',NULL,1,'2019-11-28 01:06:59','2019-11-30 04:44:15'),(50,49,'显式申请添加按钮','money.add','e','/money/list',NULL,0,'2019-11-30 07:27:11','2019-11-30 07:27:11'),(51,49,'显式操作下拉菜单','money.operation','e','/money/list',NULL,0,'2019-11-30 07:28:05','2019-11-30 07:28:05'),(52,49,'显示用户列表','money.userlist','e','/money/list',NULL,0,'2019-11-30 08:52:59','2019-11-30 08:52:59'),(53,49,'显示真实姓名','money.real_name','e','/money/list',NULL,0,'2019-11-30 08:53:45','2019-11-30 08:53:45'),(54,49,'显示打款账户','money.account','e','/money/list',NULL,0,'2019-11-30 08:54:18','2019-11-30 08:54:18'),(55,41,'出售列表','sale.list','m','/sale/list',NULL,1,'2019-11-30 09:23:06','2019-11-30 09:23:06'),(56,41,'求购列表','buy.list','m','/buy/list',NULL,2,'2019-11-30 09:23:29','2019-12-03 23:47:07'),(57,41,'我的出售','saled.list','m','/saled/list',NULL,3,'2019-11-30 09:25:58','2019-12-03 22:54:06'),(58,32,'显示分配按钮','dist.dist','e','/dist/list',NULL,0,'2019-11-30 09:29:38','2019-11-30 09:29:38'),(59,32,'显示搜索按钮','dist.search','e','/dist/list',NULL,0,'2019-11-30 09:33:09','2019-11-30 09:33:09'),(60,55,'显示我的发布','sale.me','e','/sale/list',NULL,0,'2019-12-02 10:34:56','2019-12-02 10:34:56'),(61,55,'显示发布商品','sale.add','e','/sale/list',NULL,0,'2019-12-02 10:35:52','2019-12-02 10:35:52'),(62,55,'显示搜素按钮','sale.search','e','/sale/list',NULL,0,'2019-12-02 10:36:27','2019-12-02 10:36:27'),(64,41,'我的购买','buyed.list','m','/buyed/list',NULL,4,'2019-12-03 03:12:17','2019-12-04 00:49:09'),(65,41,'我的预供','afford.list','m','/afford/list',NULL,7,'2019-12-03 08:14:05','2019-12-04 02:13:04'),(66,41,'我的求购(预供货)','pre_buy_me.list','m','/pre_buy_me/list',NULL,5,'2019-12-04 02:12:08','2019-12-04 02:12:08'),(67,41,'我的求购(即时供货)','buy_me.list','m','/buy_me/list',NULL,6,'2019-12-04 02:12:54','2019-12-04 02:12:54'),(69,6,'提现手续费','log.withdraw','m','/log/withdraw',NULL,4,'2019-12-05 00:10:49','2019-12-05 00:11:36'),(70,6,'交易手续费','log.trans','m','/log/trans',NULL,5,'2019-12-05 01:31:14','2019-12-05 01:31:14'),(71,70,'是否显示交易手续费用户搜索','trans.user','e','/log/trans',NULL,0,'2019-12-05 01:51:56','2019-12-05 01:51:56'),(72,70,'是否显示交易手续费交易类型','trans.status','e','/log/trans',NULL,0,'2019-12-05 01:53:01','2019-12-05 01:53:01'),(73,12,'显示添加子账户按钮','son.add','e','/son/list',NULL,0,'2019-12-05 05:06:22','2019-12-05 05:06:22'),(75,12,'显示子账户修改按钮','son.edit','e','/son/list',NULL,0,'2019-12-05 05:12:34','2019-12-05 05:12:34'),(76,8,'支付列表','give.list','m','/give/list',NULL,3,'2019-12-05 09:14:05','2019-12-05 09:14:05'),(77,1,'公告管理','notice.list','m','/notice/list',NULL,7,'2019-12-11 20:24:12','2019-12-11 20:24:12'),(78,28,'显示导出按钮','stock.export','e','/stock/export',NULL,0,'2019-12-13 04:35:26','2019-12-13 04:36:05'),(79,30,'显示入库导出按钮','in.export','e','/ins/list',NULL,0,'2019-12-13 07:17:43','2019-12-13 07:17:43'),(80,30,'显示搜索按钮','in.search','e','/in/list',NULL,0,'2019-12-13 07:23:08','2019-12-13 07:23:08'),(81,31,'显示导出按钮','statistic.export','e','/statistic/list',NULL,0,'2019-12-13 08:18:42','2019-12-13 08:18:42'),(82,31,'显示用户搜索框','statistic.user.search','e','/statistic/list',NULL,0,'2019-12-13 08:19:26','2019-12-13 08:19:26'),(83,31,'显示搜索按钮','statistic.search','e','/statistic/list',NULL,0,'2019-12-13 08:22:28','2019-12-13 08:22:28'),(84,28,'凭证详情按钮显示','stock.detail','e','/stock/list',NULL,0,'2019-12-14 12:04:45','2019-12-14 12:05:28');
/*!40000 ALTER TABLE `zh_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zh_migrations`
--

DROP TABLE IF EXISTS `zh_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zh_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zh_migrations`
--

LOCK TABLES `zh_migrations` WRITE;
/*!40000 ALTER TABLE `zh_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `zh_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zh_perms`
--

DROP TABLE IF EXISTS `zh_perms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zh_perms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL COMMENT '父级权限id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限名称',
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限标识',
  `uri` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '接口uri',
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '请求方式',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '权限描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zh_perms_parent_id_foreign` (`parent_id`),
  CONSTRAINT `zh_perms_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `zh_perms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zh_perms`
--

LOCK TABLES `zh_perms` WRITE;
/*!40000 ALTER TABLE `zh_perms` DISABLE KEYS */;
INSERT INTO `zh_perms` VALUES (1,1,'无父级权限',NULL,'null','GET','所有一级权限的父级权限','2019-11-11 00:09:31','2019-11-11 00:09:31'),(2,1,'系统管理',NULL,'system','GET','所有系统管理下权限的一级权限','2019-11-11 22:30:32','2019-11-11 23:22:54'),(3,2,'用户添加',NULL,'user/store','POST','添加用户权限','2019-11-11 22:59:38','2019-11-11 23:22:46'),(4,2,'用户修改',NULL,'user/update','POST','修改用户信息','2019-11-12 02:26:03','2019-11-12 02:26:03'),(5,2,'用户删除',NULL,'user/delete','DELETE','删除用户权限','2019-11-12 02:26:58','2019-11-12 02:29:16'),(6,2,'用户状态修改',NULL,'user/status','POST','修改用户状态的启用禁用','2019-11-12 02:48:15','2019-11-12 02:48:15'),(7,2,'管理员重置用户密码',NULL,'user/reset_password','POST','管理员重置用户密码','2019-11-12 02:49:25','2019-12-13 10:56:41'),(8,2,'用户详情展示',NULL,'user/detail','GET','用户修改时展示用户详情','2019-11-12 02:50:09','2019-11-12 02:50:09'),(9,2,'用户标签数据',NULL,'user/tag_data','GET','获取用户列表页tag数据','2019-11-12 02:51:08','2019-11-12 02:51:08'),(10,2,'用户列表显式',NULL,'user/index','GET','获取用户列表页','2019-11-12 07:26:44','2019-11-12 07:26:44'),(11,2,'角色添加',NULL,'role/store','POST','添加角色权限','2019-11-12 07:58:27','2019-11-12 07:58:27'),(12,2,'角色修改',NULL,'role/update','POST','修改角色信息权限','2019-11-12 07:58:56','2019-11-12 07:58:56'),(13,2,'角色删除',NULL,'role/delete','DELETE','删除角色','2019-11-12 07:59:27','2019-11-12 07:59:27'),(14,2,'角色列表显式',NULL,'role/index','GET','显式角色列表','2019-11-12 08:00:02','2019-11-12 08:00:02'),(15,2,'菜单添加',NULL,'menu/store','POST','添加菜单权限','2019-11-12 08:22:37','2019-11-12 08:22:37'),(16,2,'菜单修改',NULL,'menu/update','POST','修改菜单权限','2019-11-12 08:27:49','2019-11-12 08:27:49'),(17,2,'菜单删除',NULL,'menu/delete','DELETE','删除菜单权限','2019-11-12 08:28:36','2019-11-12 08:28:36'),(18,2,'菜单列表显式',NULL,'menu/index','GET','显式菜单列表','2019-11-12 08:29:06','2019-11-12 08:29:06'),(19,2,'菜单详情显式',NULL,'menu/detail','GET','修改菜单信息时的详细信息','2019-11-12 08:31:41','2019-11-12 08:31:41'),(20,2,'菜单下拉选框',NULL,'menu/select','GET','菜单修改与删除时select选框的数据','2019-11-12 08:32:50','2019-11-12 08:32:50'),(21,2,'菜单树',NULL,'menu/tree','GET','角色分配权限时的菜单树数据','2019-11-12 08:33:49','2019-11-12 08:33:49'),(22,2,'用户左侧菜单',NULL,'menu/user_menu','GET','显式左侧菜单数据','2019-11-12 08:34:35','2019-11-12 08:34:35'),(23,2,'角色菜单添加',NULL,'role_menu/store','POST','角色菜单中间表数据添加','2019-11-12 08:36:34','2019-11-12 08:44:50'),(24,2,'角色菜单显式',NULL,'role_menu/index','GET','角色分配菜单时，显式该用户拥有的菜单','2019-11-12 08:38:23','2019-11-12 08:38:23'),(25,2,'权限添加',NULL,'perm/store','POST','权限添加','2019-11-12 08:39:23','2019-11-12 08:39:23'),(26,2,'权限修改',NULL,'perm/update','POST','权限修改','2019-11-12 08:39:48','2019-11-12 08:39:48'),(27,2,'权限删除',NULL,'perm/delete','DELETE','权限删除','2019-11-12 08:40:19','2019-11-12 08:40:19'),(28,2,'权限列表',NULL,'perm/index','GET','权限列表显式','2019-11-12 08:40:46','2019-11-12 08:40:46'),(29,2,'权限详情',NULL,'perm/detail','GET','权限数据修改时显式详情数据','2019-11-12 08:41:33','2019-11-12 08:41:33'),(30,2,'权限下拉选框',NULL,'perm/select','GET','权限修改与添加时select框数据','2019-11-12 08:42:35','2019-11-12 08:42:35'),(31,2,'权限树',NULL,'perm/tree','GET','角色分配权限时显式的所有树状权限数据','2019-11-12 08:43:31','2019-11-12 08:43:31'),(32,2,'角色权限添加',NULL,'role_perm/store','POST','角色权限中间表添加权限数据','2019-11-12 08:44:40','2019-11-12 08:44:40'),(33,2,'角色权限显示',NULL,'role_perm/index','GET','角色分配权限时显式该用户拥有的权限','2019-11-12 08:45:41','2019-12-13 10:49:42'),(34,2,'显示用户下拉列表',NULL,'user/select','GET','根据账户类型的不同显示不同的用户下拉选框(包括子账户和主账户)','2019-12-13 10:59:58','2019-12-13 10:59:58'),(35,2,'layout处显示用户详情',NULL,'user/info','GET','layout处显示用户详情','2019-12-13 11:01:29','2019-12-13 11:01:29'),(36,2,'用户重置登陆',NULL,'user/user_reset_password','POST','用户(主账户)修改自己的登陆密码','2019-12-13 11:02:12','2019-12-13 11:02:31'),(37,2,'用户修改支付密码',NULL,'user/pay_update_password','POST','用户修改支付密码','2019-12-13 11:05:10','2019-12-13 11:05:10'),(38,2,'用户页面元素标识',NULL,'menu/element','GET','用户刷新页面时获取改角色下的所有页面元素权限标识','2019-12-13 11:10:45','2019-12-13 11:10:45'),(39,2,'系统配置添加',NULL,'config/store','POST','管理员添加系统配置','2019-12-13 11:16:27','2019-12-13 11:16:27'),(40,2,'系统配置详情',NULL,'config/detail','DELETE','修改配置时返显数据','2019-12-13 11:17:08','2019-12-13 11:19:25'),(41,2,'系统配置修改',NULL,'config/update','POST','管理员修改系统配置','2019-12-13 11:17:37','2019-12-13 11:19:55'),(42,2,'系统配置列表',NULL,'config/index','GET','配置管理页面显示配置列表','2019-12-13 11:18:11','2019-12-13 11:20:05'),(43,2,'用户详情列表',NULL,'info/index','GET','显示用户详情列表','2019-12-13 11:21:13','2019-12-13 11:21:13'),(44,2,'用户详情详情',NULL,'info/detail','GET','修改用户详情时返显数据','2019-12-13 11:22:02','2019-12-13 11:22:02'),(45,2,'用户详情修改',NULL,'info/update','POST','管理员修改用户详情','2019-12-13 11:22:30','2019-12-13 11:22:30'),(46,2,'管理员重置支付密码',NULL,'info/pay_reset_password','POST','管理员重置支付密码','2019-12-13 11:23:24','2019-12-13 11:23:24'),(47,2,'用户昵称下拉选框',NULL,'info/select','GET','显示用户昵称下拉选框，所有人拥有','2019-12-13 11:24:49','2019-12-13 11:24:49'),(48,2,'判断用户是否可免费修改昵称',NULL,'info/judge_status','GET','判断用户是否可免费修改昵称','2019-12-13 11:25:54','2019-12-13 11:25:54'),(49,2,'用户重置昵称',NULL,'info/reset_nickname','POST','普通用户修改昵称','2019-12-13 11:26:34','2019-12-13 11:26:34'),(50,1,'子账户管理',NULL,'son','GET','包括所有子账户操作权限','2019-12-13 11:28:14','2019-12-13 11:28:14'),(51,50,'子账户添加',NULL,'son/store','POST','用户添加子账户','2019-12-13 11:29:18','2019-12-13 11:29:18'),(52,50,'子账户删除',NULL,'son/delete','DELETE','管理员删除子账户','2019-12-13 11:29:48','2019-12-13 11:29:48'),(53,50,'子账户修改',NULL,'son/update','POST','管理员修改子账户','2019-12-13 11:30:17','2019-12-13 11:33:04'),(54,50,'子账户列表',NULL,'son/index','POST','显示子账户列表，所有人拥有','2019-12-13 11:30:53','2019-12-13 11:30:53'),(55,50,'子账户详情',NULL,'son/detail','GET','修改子账户信息时返显数据，管理员拥有','2019-12-13 11:32:02','2019-12-13 11:32:35'),(56,50,'子账户状态修改',NULL,'son/status','POST','管理员禁用启用子账户','2019-12-13 11:34:17','2019-12-13 11:34:17'),(57,50,'子账户数据信息',NULL,'son/tag_data','GET','子账户页面显示tag标签数据','2019-12-13 11:34:55','2019-12-13 11:34:55'),(58,1,'游戏管理',NULL,'game','GET','包括所有游戏操作权限','2019-12-13 11:36:50','2019-12-13 11:36:50'),(59,58,'游戏添加',NULL,'game/store','POST','管理员添加游戏','2019-12-13 11:37:51','2019-12-13 11:37:51'),(60,58,'游戏删除',NULL,'game/delete','DELETE','管理员删除游戏','2019-12-13 11:38:24','2019-12-13 11:38:24'),(61,58,'游戏修改',NULL,'game/update','POST','管理员修改游戏','2019-12-13 11:38:46','2019-12-13 11:38:46'),(62,58,'游戏列表',NULL,'game/index','GET','显示游戏列表','2019-12-13 11:39:04','2019-12-13 11:39:04'),(63,58,'游戏详情',NULL,'game/detail','GET','修改游戏信息时返显数据','2019-12-13 11:39:37','2019-12-13 11:39:37'),(64,58,'游戏禁用启用',NULL,'game/status','POST','管理员禁用启用游戏','2019-12-13 11:40:10','2019-12-13 11:40:10'),(65,58,'游戏下拉选框',NULL,'game/select','GET','游戏下拉选框，所有人员拥有','2019-12-13 11:40:48','2019-12-13 11:40:48'),(66,1,'面值管理',NULL,'price','GET','包括所有面值操作权限','2019-12-13 11:41:13','2019-12-13 11:41:13'),(67,66,'面值添加',NULL,'price/store','POST','管理员添加面值','2019-12-13 11:41:49','2019-12-13 11:41:49'),(68,66,'面值删除',NULL,'price/delete','DELETE','管理员删除面值','2019-12-13 11:42:13','2019-12-13 11:42:13'),(69,66,'面值修改',NULL,'price/update','POST','管理员修改面值','2019-12-13 11:42:34','2019-12-13 11:42:34'),(70,66,'面值列表',NULL,'price/index','GET','显示面值列表','2019-12-13 11:43:00','2019-12-13 11:43:00'),(71,66,'面值详情',NULL,'price/detail','GET','修改面值时返显数据','2019-12-13 11:43:20','2019-12-13 11:43:20'),(72,66,'面值禁用启用',NULL,'price/status','POST','管理员禁用启用面值','2019-12-13 11:43:51','2019-12-13 11:43:51'),(73,66,'面值跳过校验',NULL,'price/pass','POST','入库时跳过此类面值的校验','2019-12-13 11:44:38','2019-12-13 11:44:38'),(74,66,'面值下拉选框',NULL,'price/select','GET','面值下拉选框，所有人拥有','2019-12-13 11:45:12','2019-12-13 11:45:12'),(75,1,'设备管理',NULL,'device','GET','包含所有设备操作权限','2019-12-13 11:47:33','2019-12-13 11:47:33'),(76,75,'设备列表',NULL,'device/index','GET','显示设备列表','2019-12-13 11:47:56','2019-12-13 11:47:56'),(77,75,'设备删除',NULL,'device/delete','DELETE','管理员删除该设备','2019-12-13 11:48:19','2019-12-13 11:48:19'),(78,75,'设备禁用启用',NULL,'device/status','POST','管理员禁用启用设备','2019-12-13 11:48:48','2019-12-13 11:48:48'),(79,1,'库存管理',NULL,'stock','GET','包所有含库存列表操作权限','2019-12-13 11:50:17','2019-12-13 11:50:17'),(80,79,'库存列表',NULL,'stock/index','GET','显示 库存列表数据','2019-12-13 11:50:45','2019-12-13 11:50:45'),(81,79,'库存详情',NULL,'stock/detail','GET','管理员显示库存信息详情(包含凭证)','2019-12-13 11:51:15','2019-12-13 11:51:15'),(82,79,'库存状态修改',NULL,'stock/status','POST','修改库存状态，不同角色拥有的权限不同','2019-12-13 11:52:09','2019-12-13 11:52:09'),(83,79,'入库列表显示',NULL,'stock/in_index','GET','显示入库列表数据','2019-12-13 11:53:06','2019-12-13 11:53:06'),(84,79,'出库列表显示',NULL,'stock/out_index','GET','显示出库列表','2019-12-13 11:53:35','2019-12-13 11:54:22'),(85,79,'数据统计',NULL,'stock/statistic','GET','显示数据统计列表','2019-12-13 11:54:12','2019-12-13 11:54:12'),(86,79,'凭证分配列表',NULL,'stock/dist_index','GET','显示凭证分配页面数据','2019-12-13 11:55:28','2019-12-13 11:55:28'),(87,79,'库存分配分配凭证',NULL,'stock/dist','POST','库存分配页面给子账户分配凭证','2019-12-13 11:56:39','2019-12-13 11:56:39'),(88,79,'子账户库存列表',NULL,'stock/son_statistic','GET','普通用户库存列表查看，管理员可以没有','2019-12-13 11:58:04','2019-12-13 11:58:04'),(89,79,'子账户一键转主',NULL,'stock/son_to_user','POST','子账户一键转主权限','2019-12-13 11:58:56','2019-12-13 11:58:56'),(90,79,'凭证一键迁移',NULL,'stock/migration','POST','管理员一键将该账户及其子账户的凭证全部转给另一个主账户','2019-12-13 12:00:27','2019-12-13 12:00:27'),(91,79,'凭证管理分配',NULL,'stock/distribution','POST','在凭证管理页面，管理员将选中的凭证分配给某个子账户或主账户','2019-12-13 12:01:29','2019-12-13 12:03:26'),(92,79,'凭证删除',NULL,'stock/delete','DELETE','管理员批量删除凭证','2019-12-13 12:02:00','2019-12-13 12:02:00'),(93,79,'凭证迁移分配',NULL,'stock/migration_dist','POST','凭证迁移页面的凭证分配，管理员可将某个主账户或子账户的部分凭证分配给另一个子账户或主账户','2019-12-13 12:05:17','2019-12-13 12:05:17'),(94,79,'用户凭证数量',NULL,'stock/get_count','GET','获取某用户用户的指定面值的凭证数量，所有人拥有','2019-12-13 12:06:48','2019-12-13 12:06:48'),(95,79,'凭证日志',NULL,'stock/store_log','GET','日志管理中，显示凭证日志列表','2019-12-13 12:08:19','2019-12-13 12:08:19'),(96,79,'凭证导出',NULL,'stock/export_stock','POST','管理员导出凭证','2019-12-13 12:08:49','2019-12-13 12:08:49'),(97,79,'入库列表导出',NULL,'stock/in_export','POST','管理员导出入库列表','2019-12-13 12:09:24','2019-12-13 12:09:24'),(98,79,'数据统计导出',NULL,'stock/statistic_export','POST','管理员导出数据统计数据','2019-12-13 12:09:49','2019-12-13 12:09:49'),(99,1,'日志管理',NULL,'log','GET','包含所有日志操作权限','2019-12-13 12:10:33','2019-12-13 12:10:33'),(100,99,'登陆日志列表',NULL,'log/user','GET','显示登陆日志列表','2019-12-13 12:11:54','2019-12-13 13:34:47'),(101,99,'提现手续费列表',NULL,'log/withdraw_fee','GET','提现手续费列表显示','2019-12-13 12:13:43','2019-12-13 12:13:43'),(102,99,'交易手续费列表',NULL,'log/trans_fee','GET','交易手续费列表显示','2019-12-13 12:14:10','2019-12-13 12:14:10'),(103,1,'资金管理',NULL,'money','GET','包含所有资金管理操作权限','2019-12-13 12:14:58','2019-12-13 12:14:58'),(104,103,'支付图片上传',NULL,'money/upload','POST','管理员上传支付宝，微信支付图片','2019-12-13 12:15:52','2019-12-13 12:15:52'),(105,103,'管理员支付图片获取',NULL,'money/pic','GET','管理员获取支付列表图片(支付管理)','2019-12-13 12:16:28','2019-12-13 12:21:05'),(106,103,'充值提现提交',NULL,'money/apply','POST','用户提交充值或提现申请','2019-12-13 12:17:54','2019-12-13 12:19:41'),(107,103,'资金列表',NULL,'money/index','GET','显示充值提现列表','2019-12-13 12:18:24','2019-12-13 12:18:24'),(108,103,'资金审核',NULL,'money/status','POST','管理员审核充值或提现请求','2019-12-13 12:20:08','2019-12-13 12:20:08'),(109,103,'支付列表显示图片',NULL,'money/pic_list','GET','显示支付图片大图','2019-12-13 12:21:46','2019-12-13 12:21:46'),(110,1,'出售管理',NULL,'sale','GET','包含所有出售列表操作权限','2019-12-13 12:22:20','2019-12-13 12:23:16'),(111,110,'出售添加',NULL,'sale/store','POST','用户添加出售的凭证','2019-12-13 12:23:51','2019-12-13 12:23:51'),(112,110,'出售列表显示',NULL,'sale/index','GET','用户显示所有的出售信息','2019-12-13 12:24:24','2019-12-13 12:24:24'),(113,110,'我的出售列表显示',NULL,'sale/me','GET','显示我的出售菜单列表数据','2019-12-13 12:25:24','2019-12-13 12:25:24'),(114,110,'出售凭证剩余',NULL,'sale/remain','GET','用户出售凭证时，显示指定面值的凭证剩余多少','2019-12-13 12:27:56','2019-12-13 12:27:56'),(115,110,'凭证下架',NULL,'sale/down','POST','用户将出售市场的凭证下架','2019-12-13 12:28:33','2019-12-13 12:28:33'),(116,110,'凭证购买',NULL,'sale/buy','POST','用户购买出售市场的凭证','2019-12-13 12:29:05','2019-12-13 12:29:05'),(117,110,'出售信息修改',NULL,'sale/update','POST','用户修改出售信息','2019-12-13 12:29:29','2019-12-13 12:29:29'),(118,110,'我的出售显示购买人',NULL,'sale/buy_user','GET','我的出售页面查看凭证都卖给了谁','2019-12-13 12:31:38','2019-12-13 12:31:38'),(119,110,'我的购买',NULL,'sale/buy_me','GET','查看我都购买了哪些东西','2019-12-13 12:32:20','2019-12-13 12:32:20'),(120,1,'购买管理',NULL,'buy','GET','包含我的购买所有权限','2019-12-13 12:33:12','2019-12-13 12:33:12'),(121,120,'求购添加',NULL,'buy/store','POST','用户添加求购信息','2019-12-13 12:33:47','2019-12-13 12:33:47'),(122,120,'求购修改',NULL,'buy/update','POST','用户修改求购信息','2019-12-13 12:34:12','2019-12-13 12:34:12'),(123,120,'下架求购',NULL,'buy/down','POST','用户下架求购信息','2019-12-13 12:34:36','2019-12-13 12:34:36'),(124,120,'供货人直接供货',NULL,'buy/afford','POST','供货人有足够的凭证，直接供货','2019-12-13 12:35:54','2019-12-13 12:35:54'),(125,120,'求购列表显示',NULL,'buy/index','GET','用户显示求购市场列表','2019-12-13 12:36:30','2019-12-13 12:36:30'),(126,120,'求购列表我的求购',NULL,'buy/qiugou_me','GET','求购市场显示我的求购','2019-12-13 12:37:20','2019-12-13 12:37:20'),(127,120,'我的求购列表',NULL,'buy/me_pre','GET','展示我发布的求购列表信息','2019-12-13 12:42:01','2019-12-13 12:42:01'),(128,120,'我的预供货人',NULL,'buy/afford_user','GET','在我的求购列表中，查看都有哪些人给我预先供货','2019-12-13 12:42:54','2019-12-13 12:45:50'),(129,120,'我的求购即时供货',NULL,'buy/afford_user_prompt','GET','查看我发布的求购中，都有哪些人即时给我供货','2019-12-13 12:44:57','2019-12-13 12:44:57'),(130,120,'求购惩罚',NULL,'buy/punish','POST','我发布求购后，供货人未能按时提供凭证，发布人有权惩罚供货人','2019-12-13 12:46:41','2019-12-13 12:46:41'),(131,1,'供货管理',NULL,'afford','GET','包含所有供货操作权限','2019-12-13 12:47:56','2019-12-13 12:47:56'),(132,131,'供货操作',NULL,'afford/afford','POST','用户抢先供货后，有足够凭证后给发布人供货','2019-12-13 12:49:54','2019-12-13 12:49:54'),(133,131,'我的预供',NULL,'afford/index','GET','显示我所有抢到的预供列表信息','2019-12-13 12:51:54','2019-12-13 12:51:54'),(134,131,'供货操作',NULL,'afford/finish','POST','点击供货时，判断我的凭证是否足够，并给予提示信息','2019-12-13 12:53:22','2019-12-13 12:53:22'),(135,131,'供货完成',NULL,'afford/done','POST','用户确认供货','2019-12-13 12:53:58','2019-12-13 12:53:58'),(136,1,'公告管理',NULL,'notice','GET','包含所有公告管理操作权限','2019-12-13 12:56:24','2019-12-13 12:56:24'),(137,136,'公告添加',NULL,'notice/store','POST','管理员添加公告','2019-12-13 12:56:44','2019-12-13 12:56:44'),(138,136,'公告删除',NULL,'notice/delete','DELETE','管理员删除公告','2019-12-13 12:57:13','2019-12-13 12:57:13'),(139,136,'公告修改',NULL,'notice/update','POST','管理员修改公告','2019-12-13 12:57:35','2019-12-13 12:57:35'),(140,136,'公告列表',NULL,'notice/index','GET','显示公告列表','2019-12-13 12:58:04','2019-12-13 12:58:04'),(141,136,'公告详情',NULL,'notice/detail','GET','管理员修改公告时返显数据','2019-12-13 12:58:26','2019-12-13 12:58:26'),(142,136,'公告展示',NULL,'notice/display','GET','用户登陆时判断是否已经展示过该公告，没有展示则弹框展示公告','2019-12-13 12:59:23','2019-12-13 12:59:23'),(143,1,'网站首页信息',NULL,'dashboard','GET','包含所有网站首页信息','2019-12-13 13:00:37','2019-12-13 13:26:16'),(144,2,'用户登陆',NULL,'auth/login','POST','用户登陆权限，一般来说所有人都有','2019-12-13 13:01:55','2019-12-13 13:01:55'),(145,143,'网站首页显示',NULL,'dashboard/dashboard','GET','显示网站首页信息','2019-12-13 13:26:02','2019-12-13 13:26:02'),(146,75,'设备授权',NULL,'device/select','GET','显示子账户下拉选框','2019-12-13 13:28:22','2019-12-13 13:29:23'),(147,2,'获取列表显示行数',NULL,'config/pagesize','GET','自定义表格每页显示的条数','2019-12-13 13:59:20','2019-12-13 13:59:20'),(148,2,'用户退出',NULL,'auth/logout','POST','用户退出功能','2019-12-14 00:11:51','2019-12-14 00:11:51'),(149,79,'凭证导入',NULL,'stock/import_stock','POST','导入其他平台的凭证','2019-12-15 09:24:24','2019-12-15 09:24:24'),(150,2,'开通月租右侧描述',NULL,'user/start_member_description','GET','开通月租右侧描述','2020-01-05 13:42:25','2020-01-05 13:42:25'),(151,2,'开通月租套餐',NULL,'info/member','POST','点击购买套餐','2020-01-06 07:32:56','2020-01-06 07:32:56'),(152,79,'导出兼容格式',NULL,'stock/export_compat_stock','GET','导出兼容格式','2020-01-06 14:36:57','2020-01-06 14:36:57');
/*!40000 ALTER TABLE `zh_perms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zh_role_menu`
--

DROP TABLE IF EXISTS `zh_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zh_role_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `menu_id` varchar(15000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zh_role_menu_role_id_foreign` (`role_id`),
  CONSTRAINT `zh_role_menu_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `zh_roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zh_role_menu`
--

LOCK TABLES `zh_role_menu` WRITE;
/*!40000 ALTER TABLE `zh_role_menu` DISABLE KEYS */;
INSERT INTO `zh_role_menu` VALUES (1,1,'2,3,4,5'),(2,2,'12'),(3,3,'14,37,80,29,83,34,38,42,43,50,58,32,59,60,55,61,62,56,57,64,65,66,67,46,45,69,72,73,76');
/*!40000 ALTER TABLE `zh_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zh_role_perm`
--

DROP TABLE IF EXISTS `zh_role_perm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zh_role_perm` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `perm_id` varchar(15000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zh_role_perm_role_id_foreign` (`role_id`),
  CONSTRAINT `zh_role_perm_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `zh_roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zh_role_perm`
--

LOCK TABLES `zh_role_perm` WRITE;
/*!40000 ALTER TABLE `zh_role_perm` DISABLE KEYS */;
INSERT INTO `zh_role_perm` VALUES (1,1,'3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,144,52,53,54,55,56,57,59,60,61,62,63,64,65,67,68,69,70,71,72,73,74,76,77,78,146,80,81,82,83,84,85,86,87,88,90,91,92,93,94,95,96,97,98,100,101,102,104,105,106,107,108,109,112,115,117,118,119,125,126,127,128,129,130,133,137,138,139,140,141,142,145,113,147,148,149,150,152'),(2,3,'8,34,35,37,38,45,47,48,49,144,147,51,53,54,55,57,65,74,80,81,82,83,84,85,88,89,94,95,100,101,102,106,107,109,111,112,113,114,115,116,117,118,119,121,122,123,124,125,126,127,128,129,130,132,133,134,135,140,141,142,145,22,86,87,148,150,151');
/*!40000 ALTER TABLE `zh_role_perm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zh_roles`
--

DROP TABLE IF EXISTS `zh_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zh_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色名',
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '角色描述',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zh_roles`
--

LOCK TABLES `zh_roles` WRITE;
/*!40000 ALTER TABLE `zh_roles` DISABLE KEYS */;
INSERT INTO `zh_roles` VALUES (1,'管理员','具有所有操作权限','2019-11-06 09:23:56','2019-11-12 08:50:27'),(2,'客服人员','具有部分操作权限','2019-11-06 09:24:09','2019-11-06 09:24:09'),(3,'普通用户','只能操作自己的数据','2019-11-06 09:24:27','2019-11-06 09:24:27');
/*!40000 ALTER TABLE `zh_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zh_users`
--

DROP TABLE IF EXISTS `zh_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zh_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账户名称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户密码',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色id',
  `status` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '用户状态, 1启用2禁用',
  `last_login_time` datetime DEFAULT NULL COMMENT '上次登录时间',
  `last_login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登陆ip',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zh_users_name_unique` (`name`),
  KEY `zh_users_role_id_foreign` (`role_id`),
  CONSTRAINT `zh_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `zh_roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zh_users`
--

LOCK TABLES `zh_users` WRITE;
/*!40000 ALTER TABLE `zh_users` DISABLE KEYS */;
INSERT INTO `zh_users` VALUES (1,'admin','$2y$10$fzxGO8tnbSRYxMpx3hmUEuw.XyB3V5VMr2RRNTqUq/Gr80P2kwua.',1,'1','2020-01-15 05:42:18','127.0.0.1','af0ff1e431c959246bb69cf579f992926c321816','2019-11-13 21:54:25','2020-01-14 21:42:18');
/*!40000 ALTER TABLE `zh_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-15  6:21:33
