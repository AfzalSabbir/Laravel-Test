
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `admin_access_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_access_infos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` int(10) unsigned NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_access_infos_admin_id_foreign` (`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admin_access_infos` WRITE;
/*!40000 ALTER TABLE `admin_access_infos` DISABLE KEYS */;
INSERT INTO `admin_access_infos` VALUES (1,1,'::1','US','PC','Chrome',1,'2019-04-13 21:23:58','2019-04-13 21:23:58'),(2,1,'::1','US','PC','Chrome',1,'2019-04-13 21:32:58','2019-04-13 21:32:58'),(3,1,'::1','US','PC','Chrome',1,'2019-04-13 09:54:11','2019-04-13 09:54:11'),(4,1,'::1','US','PC','Chrome',1,'2019-04-13 09:54:28','2019-04-13 09:54:28'),(5,1,'::1','US','PC','Chrome',1,'2019-04-13 11:15:57','2019-04-13 11:15:57'),(6,1,'::1','US','PC','Chrome',1,'2019-04-14 07:02:21','2019-04-14 07:02:21'),(7,1,'::1',NULL,'PC','Chrome',1,'2019-04-15 12:30:22','2019-04-15 12:30:22'),(8,1,'::1',NULL,'PC','Chrome',1,'2019-04-16 12:40:57','2019-04-16 12:40:57'),(9,1,'::1',NULL,'PC','Chrome',1,'2019-04-18 12:56:28','2019-04-18 12:56:28'),(10,1,'::1',NULL,'PC','Chrome',1,'2019-04-19 09:40:46','2019-04-19 09:40:46'),(11,1,'127.0.0.1',NULL,'PC','Firefox',1,'2019-04-19 09:52:12','2019-04-19 09:52:12'),(12,1,'::1',NULL,'PC','Chrome',1,'2019-04-19 09:52:53','2019-04-19 09:52:53'),(13,1,'::1',NULL,'PC','Chrome',1,'2019-04-19 10:10:57','2019-04-19 10:10:57'),(14,1,'::1',NULL,'PC','Chrome',1,'2019-04-21 13:35:26','2019-04-21 13:35:26'),(15,1,'::1',NULL,'PC','Chrome',1,'2019-04-23 11:19:55','2019-04-23 11:19:55'),(16,2,'::1',NULL,'PC','Chrome',1,'2019-04-23 12:18:56','2019-04-23 12:18:56'),(17,1,'::1',NULL,'PC','Chrome',1,'2019-04-23 12:19:59','2019-04-23 12:19:59'),(18,1,'::1',NULL,'PC','Firefox',1,'2019-04-25 09:33:47','2019-04-25 09:33:47'),(19,1,'::1',NULL,'PC','Firefox',1,'2019-04-25 11:28:26','2019-04-25 11:28:26'),(20,1,'::1',NULL,'PC','Firefox',1,'2019-04-25 22:14:32','2019-04-25 22:14:32'),(21,1,'::1',NULL,'PC','Chrome',1,'2019-04-30 05:41:04','2019-04-30 05:41:04'),(22,1,'::1',NULL,'PC','Chrome',1,'2019-06-14 21:44:09','2019-06-14 21:44:09'),(23,1,'127.0.0.1',NULL,'PC','Firefox',1,'2020-02-24 04:08:16','2020-02-24 04:08:16'),(24,1,'127.0.0.1',NULL,'PC','Firefox',1,'2020-02-24 07:52:02','2020-02-24 07:52:02'),(25,1,'127.0.0.1',NULL,'PC','Firefox',1,'2020-02-24 07:53:45','2020-02-24 07:53:45'),(26,1,'127.0.0.1',NULL,'PC','Firefox',1,'2020-02-24 08:17:11','2020-02-24 08:17:11'),(27,1,'127.0.0.1',NULL,'PC','Firefox',1,'2020-02-24 08:25:02','2020-02-24 08:25:02'),(28,1,'127.0.0.1',NULL,'PC','Firefox',1,'2020-02-24 08:53:38','2020-02-24 08:53:38'),(29,3,'127.0.0.1',NULL,'PC','Firefox',1,'2020-02-24 08:53:53','2020-02-24 08:53:53'),(30,1,'127.0.0.1',NULL,'PC','Firefox',1,'2020-02-24 08:54:03','2020-02-24 08:54:03'),(31,1,'127.0.0.1',NULL,'PC','Firefox',1,'2020-02-24 08:56:07','2020-02-24 08:56:07'),(32,1,'::1',NULL,'PC','Firefox',1,'2020-02-25 04:43:04','2020-02-25 04:43:04'),(33,1,'::1',NULL,'PC','Firefox',1,'2020-02-25 05:18:42','2020-02-25 05:18:42'),(34,1,'::1',NULL,'PC','Firefox',1,'2020-02-25 05:19:07','2020-02-25 05:19:07'),(35,1,'::1',NULL,'PC','Firefox',1,'2020-02-26 05:58:41','2020-02-26 05:58:41'),(36,1,'::1',NULL,'PC','Firefox',1,'2020-02-26 06:01:02','2020-02-26 06:01:02'),(37,1,'::1',NULL,'PC','Firefox',1,'2020-02-26 06:08:30','2020-02-26 06:08:30'),(38,1,'::1',NULL,'PC','Firefox',1,'2020-02-26 06:08:38','2020-02-26 06:08:38'),(39,1,'::1',NULL,'PC','Firefox',1,'2020-02-26 08:32:02','2020-02-26 08:32:02'),(40,1,'::1',NULL,'PC','Firefox',1,'2020-02-26 11:18:12','2020-02-26 11:18:12'),(41,1,'::1',NULL,'PC','Firefox',1,'2020-02-26 11:19:18','2020-02-26 11:19:18'),(42,1,'::1',NULL,'PC','Firefox',1,'2020-02-26 11:26:35','2020-02-26 11:26:35'),(43,1,'::1',NULL,'PC','Firefox',1,'2020-02-26 11:30:24','2020-02-26 11:30:24'),(44,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 03:29:19','2020-02-27 03:29:19'),(45,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 03:45:51','2020-02-27 03:45:51'),(46,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 05:25:30','2020-02-27 05:25:30'),(47,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 05:53:27','2020-02-27 05:53:27'),(48,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 08:20:45','2020-02-27 08:20:45'),(49,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 09:42:35','2020-02-27 09:42:35'),(50,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 09:44:02','2020-02-27 09:44:02'),(51,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 10:08:01','2020-02-27 10:08:01'),(52,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 11:46:55','2020-02-27 11:46:55'),(53,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 11:52:23','2020-02-27 11:52:23'),(54,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 11:53:01','2020-02-27 11:53:01'),(55,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 12:02:14','2020-02-27 12:02:14'),(56,3,'::1',NULL,'PC','Firefox',1,'2020-02-27 12:24:32','2020-02-27 12:24:32'),(57,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 12:24:54','2020-02-27 12:24:54'),(58,4,'::1',NULL,'PC','Firefox',1,'2020-02-27 12:25:42','2020-02-27 12:25:42'),(59,1,'::1',NULL,'PC','Firefox',1,'2020-02-27 12:27:50','2020-02-27 12:27:50'),(60,1,'::1',NULL,'PC','Firefox',1,'2020-03-01 09:40:27','2020-03-01 09:40:27'),(61,2,'::1',NULL,'PC','Firefox',1,'2020-03-01 10:22:44','2020-03-01 10:22:44'),(62,1,'::1',NULL,'PC','Firefox',1,'2020-03-01 10:23:01','2020-03-01 10:23:01'),(63,2,'::1',NULL,'PC','Firefox',1,'2020-03-01 10:27:26','2020-03-01 10:27:26'),(64,1,'::1',NULL,'PC','Firefox',1,'2020-03-01 10:27:49','2020-03-01 10:27:49'),(65,3,'::1',NULL,'PC','Firefox',1,'2020-03-01 10:50:52','2020-03-01 10:50:52'),(66,2,'::1',NULL,'PC','Firefox',1,'2020-03-01 10:51:08','2020-03-01 10:51:08'),(67,4,'::1',NULL,'PC','Firefox',1,'2020-03-01 10:51:38','2020-03-01 10:51:38'),(68,1,'127.0.0.1',NULL,'PC','Firefox',1,'2020-03-04 04:54:54','2020-03-04 04:54:54'),(69,1,'127.0.0.1',NULL,'PC','Firefox',1,'2020-03-04 05:59:51','2020-03-04 05:59:51'),(70,1,'::1',NULL,'PC','Firefox',1,'2020-03-04 10:41:44','2020-03-04 10:41:44'),(71,1,'::1',NULL,'PC','Firefox',1,'2020-03-05 02:08:14','2020-03-05 02:08:14'),(72,2,'::1',NULL,'PC','Firefox',1,'2020-03-05 02:08:39','2020-03-05 02:08:39'),(73,1,'::1',NULL,'PC','Firefox',1,'2020-03-05 02:11:02','2020-03-05 02:11:02'),(74,1,'::1',NULL,'PC','Firefox',1,'2020-03-05 07:46:22','2020-03-05 07:46:22'),(75,1,'::1',NULL,'PC','Firefox',1,'2020-03-07 05:40:41','2020-03-07 05:40:41'),(76,4,'::1',NULL,'PC','Firefox',1,'2020-03-07 05:41:58','2020-03-07 05:41:58'),(77,2,'::1',NULL,'PC','Firefox',1,'2020-03-07 05:54:21','2020-03-07 05:54:21'),(78,1,'::1',NULL,'PC','Firefox',1,'2020-03-07 05:54:32','2020-03-07 05:54:32'),(79,2,'::1',NULL,'PC','Firefox',1,'2020-03-07 05:55:22','2020-03-07 05:55:22'),(80,1,'::1',NULL,'PC','Firefox',1,'2020-03-07 05:55:32','2020-03-07 05:55:32'),(81,2,'::1',NULL,'PC','Firefox',1,'2020-03-07 05:55:47','2020-03-07 05:55:47'),(82,4,'::1',NULL,'PC','Firefox',1,'2020-03-07 05:56:04','2020-03-07 05:56:04'),(83,2,'::1',NULL,'PC','Firefox',1,'2020-03-07 05:56:17','2020-03-07 05:56:17'),(84,4,'::1',NULL,'PC','Firefox',1,'2020-03-07 06:00:11','2020-03-07 06:00:11'),(85,3,'::1',NULL,'PC','Firefox',1,'2020-03-07 06:00:21','2020-03-07 06:00:21'),(86,1,'::1',NULL,'PC','Firefox',1,'2020-03-07 06:00:34','2020-03-07 06:00:34'),(87,3,'::1',NULL,'PC','Firefox',1,'2020-03-07 06:00:59','2020-03-07 06:00:59'),(88,1,'::1',NULL,'PC','Firefox',1,'2020-03-07 06:14:21','2020-03-07 06:14:21'),(89,1,'::1',NULL,'PC','Firefox',1,'2020-03-10 03:29:24','2020-03-10 03:29:24'),(90,1,'::1',NULL,'PC','Firefox',1,'2020-03-23 15:43:47','2020-03-23 15:43:47'),(91,2,'::1',NULL,'PC','Firefox',1,'2020-03-23 16:47:06','2020-03-23 16:47:06'),(92,1,'::1',NULL,'PC','Firefox',1,'2020-03-23 16:54:39','2020-03-23 16:54:39'),(93,2,'::1',NULL,'PC','Firefox',1,'2020-03-23 16:55:48','2020-03-23 16:55:48'),(94,1,'::1',NULL,'PC','Firefox',1,'2020-03-23 17:50:45','2020-03-23 17:50:45'),(95,2,'::1',NULL,'PC','Firefox',1,'2020-03-23 17:59:38','2020-03-23 17:59:38'),(96,3,'::1',NULL,'PC','Firefox',1,'2020-03-23 18:59:11','2020-03-23 18:59:11'),(97,3,'::1',NULL,'PC','Firefox',1,'2020-03-23 19:00:46','2020-03-23 19:00:46'),(98,1,'::1',NULL,'PC','Firefox',1,'2020-03-23 19:01:13','2020-03-23 19:01:13'),(99,2,'::1',NULL,'PC','Firefox',1,'2020-03-23 19:01:47','2020-03-23 19:01:47'),(100,1,'::1',NULL,'PC','Firefox',1,'2020-03-23 19:10:46','2020-03-23 19:10:46'),(101,1,'::1',NULL,'PC','Firefox',1,'2020-03-24 18:36:11','2020-03-24 18:36:11'),(102,5,'::1',NULL,'PC','Firefox',1,'2020-03-24 19:14:48','2020-03-24 19:14:48'),(103,1,'::1',NULL,'PC','Firefox',1,'2020-03-24 19:18:33','2020-03-24 19:18:33'),(104,1,'::1',NULL,'PC','Firefox',1,'2020-03-25 04:34:05','2020-03-25 04:34:05'),(105,1,'::1',NULL,'PC','Firefox',1,'2020-03-26 04:00:16','2020-03-26 04:00:16'),(106,1,'::1',NULL,'PC','Firefox',1,'2020-03-26 11:48:37','2020-03-26 11:48:37'),(107,1,'::1',NULL,'PC','Firefox',1,'2020-03-27 03:08:28','2020-03-27 03:08:28'),(108,1,'::1',NULL,'PC','Firefox',1,'2020-03-27 18:41:27','2020-03-27 18:41:27'),(109,1,'::1',NULL,'PC','Firefox',1,'2020-03-28 03:55:59','2020-03-28 03:55:59'),(110,1,'127.0.0.1',NULL,'PC','Firefox',1,'2020-03-28 11:04:38','2020-03-28 11:04:38'),(111,1,'::1',NULL,'PC','Firefox',1,'2020-03-28 12:50:35','2020-03-28 12:50:35');
/*!40000 ALTER TABLE `admin_access_infos` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_role` tinyint(4) DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `admins_email_unique` (`email`) USING BTREE,
  UNIQUE KEY `admins_username_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Super Admin','super@gmail.com','superadmin',1,'public/images/admins/1556265063.png','$2y$10$cW9KVqhUuLOearR9Uhr9yeiUBnxRPJvY3KsjttKr77tKMNZab7Ncm','BxLuktE9c1f1YvdC21GZMhyZWhE2YKMDE49AwUaIMXz0aonoRAahRBLPBiDJ',1,0,'2019-03-25 01:00:00','2019-04-26 01:51:05','2020-03-25 21:45:49'),(2,'Admin','admin@gmail.com','admin',2,NULL,'$2y$10$3eUb3dspSaecGyAWo0jOp.r2N83ZUQRYaJMh/058e3apUV5XSmlQq','o3ZwKUDfqMU4dbl4aCRLu7IhRXIEQcR3bWGJBQPYDg3Lvc3wMznp4ydcxEBi',1,0,'2019-03-25 01:00:00','2019-04-26 02:15:22','2020-03-25 21:45:49'),(3,'aaaaaa','afzalsabbir.bd@gmail.com','aaaaaa',3,NULL,'$2y$10$P1rFOIiR1hB4IdUDBw/KKenlpz9LK80jAw/IWulwNUXF6hnc90lzu',NULL,1,0,'2019-04-25 13:46:07','2019-04-25 13:46:07','2020-03-25 21:45:49'),(4,'bbbbbb','afzalbd1@gmail.comk','bbbbbb',3,NULL,'$2y$10$wpvJp1iVMxNM6Tkzn9IRwe6CftljT2xXkj13euFuV.mJorisuC17y',NULL,1,0,'2019-04-25 13:47:19','2019-04-25 13:47:19','2020-03-25 21:45:49'),(5,'cccccc','c@c.c','cccccc',3,'public/images/admins/1585076311.jpg','$2y$10$nvk3FRKAwe.TEz3xbE3kTODbLLOfBoIicK9frDdjW.zwNuC1gwPty',NULL,1,0,'2020-03-24 18:58:32','2020-03-24 18:58:32','2020-03-25 21:45:49');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `menu_position` int(10) unsigned DEFAULT NULL COMMENT '0 - Sidebar | 1 - In Body | 2 - Right Top | 3 - Right Top In | 4 - Left Top | 5 - Left Top In',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` text COLLATE utf8mb4_unicode_ci,
  `order` int(10) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Dashboard','ড্যাশবোর্ড',NULL,0,'fa fa-dashboard','#00ff00','/admin','admin.home',NULL,1,1,0,'2019-03-24 23:02:05','2020-02-27 07:58:49','2020-03-25 21:44:11'),(2,'Menu Permission','মেনু পারমিশন',NULL,0,'fa fa-diamond','#ffffff',NULL,NULL,NULL,900,1,0,'2019-03-24 22:44:32','2019-06-14 23:06:38','2020-03-25 21:44:11'),(5,'Site Settings','সাইট সেটিংস',NULL,0,'fa fa-sliders','#ff8000','/admin/setting','admin.setting.index',NULL,500,1,0,'2019-04-10 16:30:44','2020-02-27 08:01:24','2020-03-25 21:44:11'),(6,'Change Password','পাসওয়ার্ড পরিবর্তন',70,3,'fa fa-cog','#ffffff','/admin/change-password','admin.password.form',NULL,0,1,0,'2019-03-24 22:42:35','2019-04-23 06:20:29','2020-03-25 21:44:11'),(7,'Log Activity','লগ এক্টিভিটি',NULL,0,'fa fa-history','#4f4fff','/admin/log','admin.log.index',NULL,950,1,0,'2019-03-24 22:46:37','2020-02-27 08:13:38','2020-03-25 21:44:11'),(23,'All Admin','সকল এডমিন',70,3,'fa fa-users','#ffffff','/admin/all-admin','admin.all_admin.index',NULL,3,1,0,'2019-04-10 20:37:34','2020-03-24 22:07:28','2020-03-25 21:44:11'),(24,'Add Admin','এডমিন যোগ করুন',70,3,'fa fa-plus','#ffffff','/admin/all-admin/add','admin.all_admin.add',NULL,2,1,0,'2019-04-10 20:39:51','2019-04-10 20:39:51','2020-03-25 21:44:11'),(25,'Action','একশন',23,0,'fa fa-home','#ffffff','/admin/all-admin','admin.all_admin.index',NULL,1,1,0,'2019-04-23 06:27:34','2019-04-23 06:27:34','2020-03-25 21:44:11'),(26,'Edit','এডিট',25,1,'fa fa-pencil','#ffffff',NULL,'admin.all_admin.edit',NULL,1,1,0,'2019-04-10 20:40:57','2019-04-23 06:28:07','2020-03-25 21:44:11'),(27,'Delete','ডিলিট',25,1,'fa fa-trash','#ffffff',NULL,'admin.all_admin.delete',NULL,2,1,0,'2019-04-10 20:42:59','2019-04-23 06:28:13','2020-03-25 21:44:11'),(28,'Backup','ব্যাকআপ',NULL,0,'fa fa-database','#408080','/admin/backup','admin.backup.index',NULL,1000,1,0,'2019-04-18 21:49:55','2020-02-27 08:13:53','2020-03-25 21:44:11'),(29,'Action','কার্যক্রম',28,0,'fa fa-home','#ffffff','/admin/backup','admin.backup.index',NULL,1,1,0,'2019-04-18 21:51:23','2019-04-18 21:54:34','2020-03-25 21:44:11'),(30,'Download','ডাউনলোড',29,1,'fa fa-download','#ffffff',NULL,'admin.backup.index',NULL,1,1,0,'2019-04-18 21:52:24','2019-04-18 21:52:24','2020-03-25 21:44:11'),(31,'Delete','ডিলিট',29,1,'fa fa-trash','#ffffff',NULL,'admin.backup.index',NULL,2,1,0,'2019-04-18 21:52:58','2019-04-18 21:52:58','2020-03-25 21:44:11'),(32,'SMS','এসএমএস',NULL,0,'fa fa-envelope','#ffff80',NULL,NULL,NULL,499,1,0,NULL,'2020-02-27 08:00:51','2020-03-25 21:44:11'),(33,'Send','প্রেরন',32,0,'fa fa-commenting','#479292','/admin/sms/send','admin.sms.send',NULL,1,1,0,NULL,'2020-02-27 12:26:58','2020-03-25 21:44:11'),(34,'Custom','কাস্টম',32,0,'fa fa-comment-o','#ffffff','/admin/sms/custom','admin.sms.custom',NULL,2,1,0,NULL,'2019-06-14 23:01:06','2020-03-25 21:44:11'),(35,'Report','প্রতিবেদন',32,0,'fa fa-indent','#ffff00','/admin/sms/report','admin.sms.report',NULL,3,1,0,NULL,'2020-02-27 08:00:36','2020-03-25 21:44:11'),(36,'Restore','রিস্টোর',29,1,'fa fa-upload','#ffffff','/admin/backup/restore','admin.backup.restore',NULL,2,1,0,'2019-07-02 16:28:12','2019-07-02 16:28:12','2020-03-25 21:44:11'),(61,'Super Admin','সুপার এ্যাডমিন',2,0,'fa fa-user-secret','#00ff00','/admin/role/assign/super-admin','admin.role.assign.super_admin',NULL,1,1,0,'2020-03-01 10:05:56','2020-03-01 10:10:34','2020-03-25 21:44:11'),(62,'Admin','এ্যাডমিন',2,0,'fa fa-user-circle','#00ffff','/admin/role/assign/admin','admin.role.assign.admin',NULL,2,1,0,'2020-03-01 10:11:02','2020-03-01 10:11:02','2020-03-25 21:44:11'),(63,'User','ইউজার',2,0,'fa fa-user','#ffff00','/admin/role/assign/user','admin.role.assign.user',NULL,3,1,0,'2020-03-01 10:11:57','2020-03-01 10:11:57','2020-03-25 21:44:11'),(64,'Langunage','ভাষা',NULL,2,'fa fa-globe','#00ffff','/language/{local}','language','[\"bn\"]',3,1,0,'2020-03-24 20:01:41','2020-03-27 11:56:57','2020-03-25 21:44:11'),(65,'Message','বার্তা',NULL,2,'fa fa-envelope','#d2f000','/admin/message','admin.message.index',NULL,2,1,0,'2020-03-24 20:21:13','2020-03-24 20:21:13','2020-03-25 21:44:11'),(66,'Action','অ্যাকশন',65,0,'fa fa-edit','#d2f000','/admin/message','admin.message.index',NULL,2,1,0,'2020-03-24 20:21:13','2020-03-24 20:21:13','2020-03-25 21:44:11'),(67,'View','দেখা',66,1,'fa fa-eye','#000000',NULL,'admin.message.view',NULL,1,1,0,'2020-03-24 20:21:13','2020-03-24 20:25:38','2020-03-25 21:44:11'),(68,'Send','এডিট',66,1,'fa fa-pencil','#000000',NULL,'admin.message.send',NULL,2,1,0,'2020-03-24 20:21:13','2020-03-24 20:24:59','2020-03-25 21:44:11'),(69,'Delete','ডিলিট',66,1,'fa fa-trash','#000000',NULL,'admin.message.delete',NULL,3,1,0,'2020-03-24 20:21:13','2020-03-24 20:25:22','2020-03-25 21:44:11'),(70,'Profile','প্রোফাইল',NULL,2,'fa fa-user-circle','#ffffff','','',NULL,1,1,0,'2020-03-24 22:06:18','2020-03-24 22:06:18','2020-03-25 21:44:11'),(73,'Visit Home','ভিজিট হোম',NULL,4,'fa fa-home','#ffffff','/','home',NULL,1,1,0,'2020-03-25 14:08:25','2020-03-25 14:08:25','2020-03-25 21:44:11'),(74,'New Backup','নতুন ব্যাকআপ',28,1,'fa fa-cart-plus','#ffffff','/admin/backup/new','admin.backup.new',NULL,1,1,0,'2020-03-26 13:47:12','2020-03-26 13:47:12','2020-03-26 13:47:12');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2018_03_26_200821_create_admins_table',1),(2,'2019_03_04_084037_create_menus_table',1),(3,'2019_03_05_074453_create_roles_table',1),(4,'2019_03_06_090310_create_admin_access_infos_table',1),(5,'2019_03_25_140240_create_password_resets_table',1),(6,'2019_03_25_140240_create_users_table',1),(7,'2019_03_25_140140_create_units_table',2),(8,'2019_03_25_140157_create_categories_table',2),(9,'2019_03_25_140207_create_sub_categories_table',2),(10,'2019_03_25_140231_create_brands_table',2),(11,'2019_04_10_152516_create_settings_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `module_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Active',
  `trash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Deleted',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `module_tags` WRITE;
/*!40000 ALTER TABLE `module_tags` DISABLE KEYS */;
INSERT INTO `module_tags` VALUES (1,'laravel',1,0,'2020-03-27 07:30:45','2020-03-27 07:30:45','2020-03-26 18:00:00'),(2,'pagination',1,0,'2020-03-27 07:30:45','2020-03-27 07:30:45','2020-03-26 18:00:00'),(4,'a',1,0,'2020-03-27 09:03:37','2020-03-27 09:03:37',NULL),(5,'b',1,0,'2020-03-27 09:03:37','2020-03-27 09:03:37',NULL),(6,'test2',1,0,'2020-03-27 11:42:52','2020-03-27 11:42:52',NULL),(7,'emmet',1,0,'2020-03-27 13:36:16','2020-03-27 13:36:16',NULL),(8,'form',1,0,'2020-03-27 13:36:16','2020-03-27 13:36:16',NULL),(9,'html',1,0,'2020-03-27 13:36:16','2020-03-27 13:36:16',NULL),(10,'bootstrap',1,0,'2020-03-27 13:43:26','2020-03-27 13:43:26',NULL),(11,'auth',1,0,'2020-03-27 18:43:50','2020-03-27 18:43:50',NULL),(12,'css',1,0,'2020-03-27 18:43:50','2020-03-27 18:43:50',NULL),(13,'auth-install',1,0,'2020-03-27 18:50:22','2020-03-27 18:50:22',NULL),(14,'php',1,0,'2020-03-27 18:53:06','2020-03-27 18:53:06',NULL),(15,'auth-style',1,0,'2020-03-27 19:11:40','2020-03-27 19:11:40',NULL),(16,'login',1,0,'2020-03-27 19:11:40','2020-03-27 19:11:40',NULL),(17,'',1,0,'2020-03-27 19:11:40','2020-03-27 19:11:40',NULL);
/*!40000 ALTER TABLE `module_tags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` text COLLATE utf8mb4_unicode_ci,
  `admin_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_tag_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '[""]',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Active',
  `trash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Deleted',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (3,'Pagination - Select & Search',NULL,1,'<!-- \r\nPaste it top of the page\r\n -->\r\n\r\n@php\r\n  // Pagination Serial\r\n  if (request()->filled(\'page\')){\r\n    $PreviousPageLastSN = $items*(request()->page-1); //PreviousPageLastSerialNumber\r\n    $PageNumber = request()->page;\r\n  }\r\n  else{\r\n    $PreviousPageLastSN = 0; //PreviousPageLastSerialNumber\r\n    $PageNumber = 1;\r\n  }\r\n\r\n  //Last Page Items Change Restriction\r\n  if ($PageNumber*$items > $total + $items){\r\n    header(\'Location: \' . $_SERVER[\'HTTP_REFERER\']);\r\n    die();\r\n  }\r\n@endphp\r\n\r\n<div class=\"row custom_pagination\" id=\"pagination_container\" style=\"display: none;\">\r\n  @if ($total>0)\r\n  <div class=\"col-sm-12 col-md-6 pull-right\">\r\n    <label class=\"py-2 m-0\" style=\"float: left;\">{{ \'Showing \'.($PreviousPageLastSN+1).\' to \'}} {{ ($PreviousPageLastSN+$items) >= $total ? $total : $PreviousPageLastSN+$items }}{{\' of \'.$total.\' entries\' }}</label>\r\n  </div>\r\n  @else\r\n  <div class=\"col-sm-12 col-md-12 pull-right\" >\r\n    <h3 class=\"alert alert-warning text-center\" style=\"float: left; color: red; width: 100%;\">{{ __(\'backend/default.no_data\') }}</h3>\r\n  </div>\r\n  @endif\r\n\r\n  <div class=\"col-sm-12 col-md-6 pull-left\">\r\n    @if(isset($where))\r\n      <label style=\"float: right\">{{ $table->appends(\\Request::query())->render() }}</label>\r\n    @else\r\n       <label style=\"float: right\">{{ $table->appends([\'items\' => $items])->links() }}</label>\r\n    @endif\r\n    \r\n  </div>\r\n</div>\r\n\r\n\r\n{{--\r\n  --\r\n  -- Call by >>>\r\n  -- @include(\'frontend.partials.pagination\', [\'table\' => $rows])\r\n  -- `$rows` will be received as `$table`\r\n  --\r\n--}}','[1,2,14]',1,0,'2020-03-27 10:23:00','2020-03-27 18:53:35',NULL),(4,'Pagination - Page Numbering',NULL,1,'<!--\r\npaste where you need the paging\r\n-->\r\n\r\n<div class=\"custom_pagination col-sm-12 mb-2\" style=\"display: none;\">\r\n  <div class=\"row\">    \r\n    @if(isset($where) && $total > 0)\r\n\r\n      <div class=\"alert alert-success\" style=\"height: 38px; padding: 8px; margin-bottom: 8px;\">\r\n        <span class=\"text-success\">Total <strong>{{ $total }}</strong> entities found</span>\r\n      </div>\r\n\r\n    @elseif(!isset($where))\r\n\r\n      <div class=\"col-md-6 col-sm-12 px-0\">\r\n        <label style=\"display: inline-block;\">Show \r\n        <select class=\"form-control form-control-sm\" style=\"display: inline-block; width: 75px; cursor: pointer;\" select  onchange=\"location = this.value;\">\r\n          <option value=\"{{ route($route) }}?items=20&page=1\" {{ $items == 20 ? \'selected\' : \'\' }}>20</option>\r\n          <option value=\"{{ route($route) }}?items=50&page=1\" {{ $items == 50 ? \'selected\' : \'\' }}>50</option>\r\n          <option value=\"{{ route($route) }}?items=100&page=1\" {{ $items == 100 ? \'selected\' : \'\' }}>100</option>\r\n          <option value=\"{{ route($route) }}?items=250&page=1\" {{ $items == 250 ? \'selected\' : \'\' }}>250</option>\r\n        </select> entries</label>\r\n      </div>\r\n      <div class=\"col-sm-12 col-md-6 px-0 text-right\">\r\n        <label style=\"display: inline-block;\" class=\"w-100\">Search:\r\n          <input id=\"my-table-search\" style=\"display: inline-block; width: 150px;\" type=\"search\" class=\"form-control form-control-sm\" placeholder=\"\" aria-controls=\"datatable\">\r\n        </label>\r\n      </div>\r\n\r\n    @endif\r\n  </div>\r\n</div>','[1,2,14]',1,0,'2020-03-27 10:24:32','2020-03-27 18:53:21',NULL),(5,'Html Form - EMMET',NULL,1,'<!--\r\n-1- Install `EMMET`.\r\n-2- `Copy` & `Paste` Code in `emmet` installed editor.\r\n-3- Code should be single line. So, put your cursor end of the line & press `TAB`.\r\n[note: `@csrf` included]\r\n-->\r\n\r\n.row>(form[method=\"post\" id=\"\" encrypt=\"multipart/form-data\" class=\"col-sm-12\"]{@csrf}>((.form-row.my-2>lable.col-md-3.text-right.py-2[for]>strong{SomeText}^input.col-md-6.form-control[type=\"text\" name id])*3)+(.form-row.my-2>lable.col-md-3.text-right.py-2[for]>strong{SomeText}^textarea[class=\"col-md-6 form-control\" name id])+(.form-row.my-2>lable.col-md-3.text-right.py-2[for]>strong{SomeText}^input.col-md-6.form-control[type=\"file\" name id])+(.form-row.my-2>((lable.col-md-3.text-right.py-2[for]>strong{SomeText})+select.form-control.col-md-6[name id]>option[value=\"$\"]{Option-$}*3))+(.form-row.my-2>lable.col-md-3.text-right.py-2[for]>strong{SomeText}^(.col-md-6.px-0.text-right>button.btn.btn-success[type=\"submit\"]{Save})))','[7,8,9,10]',1,0,'2020-03-27 13:36:16','2020-03-27 13:43:26',NULL),(6,'Auth pages not getting css in laravel',NULL,1,'Step 1:\r\n   > Download nodejs\r\n   > Install nodejs in your pc\r\n\r\nStep 2:\r\n    then open your project root and command\r\n    $ composer require laravel/ui\r\n    $ php artisan ui vue --auth\r\n    $ npm install\r\n    $ npm run dev\r\n\r\n[note: <laravel:6.x>composer require laravel/ui \"^1.0\" --dev]','[1,11,12,13,14]',1,0,'2020-03-27 18:50:22','2020-03-27 19:48:31',NULL),(7,'How to change default Laravel Auth login view?',NULL,1,'Add the following method in LoginController.php\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\r\n\r\n    public function showLoginForm()\r\n    {\r\n        return view(\'auth.login\');\r\n    }','[14,1,11,12,15,16,17]',1,0,'2020-03-27 19:11:41','2020-03-27 19:11:41',NULL);
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu` text COLLATE utf8mb4_unicode_ci,
  `sub_menu` text COLLATE utf8mb4_unicode_ci,
  `in_body` text COLLATE utf8mb4_unicode_ci,
  `inner_in_body` text COLLATE utf8mb4_unicode_ci,
  `admin_id` int(10) DEFAULT NULL,
  `role` tinyint(3) unsigned NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'[\"73\",\"70\",\"1\",\"65\",\"64\",\"32\",\"2\",\"5\",\"28\",\"7\"]','[\"6\",\"61\",\"62\",\"29\",\"23\",\"33\",\"74\",\"35\",\"24\",\"66\",\"34\",\"63\"]','[\"25\",\"67\",\"30\",\"36\",\"69\",\"68\",\"31\"]','[\"26\",\"27\"]',1,1,1,0,'2019-04-25 22:41:31','2020-03-26 14:49:00','2020-03-25 21:47:43'),(2,'[\"1\",\"2\"]','[\"63\"]','null',NULL,2,2,1,0,'2019-04-26 01:33:19','2020-03-23 18:15:18','2020-03-25 21:47:43'),(20,NULL,NULL,NULL,NULL,3,3,1,0,'2020-03-23 18:57:40','2020-03-23 18:57:40','2020-03-25 21:47:43'),(21,NULL,NULL,NULL,NULL,4,3,1,0,'2020-03-24 18:57:29','2020-03-24 18:57:29','2020-03-25 21:47:43'),(22,'[\"73\",\"64\",\"1\",\"65\",\"32\",\"5\",\"2\",\"28\",\"70\",\"7\"]','[\"29\",\"23\",\"61\",\"33\",\"66\",\"63\",\"62\",\"34\",\"35\"]','[\"30\",\"67\",\"25\",\"36\",\"31\",\"68\",\"6\",\"24\",\"69\"]','[\"26\",\"27\"]',5,3,1,0,'2020-03-24 18:58:42','2020-03-25 14:32:12','2020-03-25 21:47:43');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_id` tinyint(3) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'public/images/settings/logo-1556222447.png','public/images/settings/favicon-1556222459.png','laravel 6.0','লারাভেল ৬.০',1,'superadmin@Restaurent-Bill.com','01234567890','facebook','twitter','youtube','linkedin','City: Mymensingh\r\nCountry: Bangladesh\r\nState: Mymensingh Division\r\nZipcode: 2200',1,'2019-04-10 06:00:00.000000','2020-03-27 14:58:29.000000');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `sms_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sms_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sms` longtext COLLATE utf8_unicode_ci,
  `sending_date` date DEFAULT NULL,
  `sms_count` tinyint(3) DEFAULT '1',
  `send_by` int(11) DEFAULT NULL,
  `is_send` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `sms_records` WRITE;
/*!40000 ALTER TABLE `sms_records` DISABLE KEYS */;
INSERT INTO `sms_records` VALUES (1,'01624390079','Hi Khairul vai','2019-04-30',NULL,1,1),(2,'01515255819','sgfhgfhg','2019-04-30',1,1,1),(3,'01624390079','sgfhgfhg','2019-04-30',1,1,1),(4,'01969481541','sgfhgfhg','2019-04-30',1,1,1),(5,'01515255819','hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you','2019-04-30',2,1,1),(6,'01624390079','hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you','2019-04-30',2,1,1),(7,'01515255819','ssds','2019-04-30',1,1,1),(8,'01624390079','ssds','2019-04-30',1,1,1),(9,'01969481541','ssds','2019-04-30',1,1,1),(10,'01515255819','d','2019-04-30',1,1,1),(11,'01515255819','d','2019-04-30',1,1,1),(12,'01624390079','d','2019-04-30',1,1,1),(13,'01713576627','hey','2019-04-30',1,1,1),(14,'01969481541','hey','2019-04-30',1,1,1),(15,'01515255819','h','2019-04-30',1,1,1),(16,'01969481541','h','2019-04-30',1,1,1),(17,'01515255819','d','2019-04-30',1,1,1),(18,'01515255819','d','2019-04-30',1,1,1),(19,'01515255819','s','2019-04-30',1,1,1);
/*!40000 ALTER TABLE `sms_records` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `themes` (
  `id` int(10) unsigned NOT NULL,
  `admin_id` int(11) NOT NULL,
  `theme_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Active',
  `trash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Deleted',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role` tinyint(4) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int(10) unsigned DEFAULT NULL,
  `upazilla_id` int(10) unsigned DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE,
  UNIQUE KEY `users_mobile_unique` (`mobile`) USING BTREE,
  UNIQUE KEY `users_username_unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Demo','demo@gmail.com','01515255819','demo',NULL,1,'$2y$10$tQVwD5VequDrZsgg5NUaHexmp3fGf.XI7zylpDEqSxf9WJITYiRWO',NULL,NULL,NULL,'',NULL,'1',0,NULL,NULL,'2020-03-25 21:49:54');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

