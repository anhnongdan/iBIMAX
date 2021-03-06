-- MySQL dump 10.16  Distrib 10.1.17-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pw1
-- ------------------------------------------------------
-- Server version	10.1.17-MariaDB-1~trusty

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
-- Table structure for table `piwik_access`
--

DROP TABLE IF EXISTS `piwik_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_access` (
  `login` varchar(100) NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `access` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`login`,`idsite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_access`
--

LOCK TABLES `piwik_access` WRITE;
/*!40000 ALTER TABLE `piwik_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_archive_numeric_2008_12`
--

DROP TABLE IF EXISTS `piwik_archive_numeric_2008_12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_archive_numeric_2008_12` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_archive_numeric_2008_12`
--

LOCK TABLES `piwik_archive_numeric_2008_12` WRITE;
/*!40000 ALTER TABLE `piwik_archive_numeric_2008_12` DISABLE KEYS */;
INSERT INTO `piwik_archive_numeric_2008_12` VALUES (1,'done.VisitsSummary',1,'2008-12-12','2016-09-27',5,'2016-09-27 16:21:14',3),(2,'done.CustomVariables',1,'2008-12-12','2016-09-27',5,'2016-09-27 16:21:14',3);
/*!40000 ALTER TABLE `piwik_archive_numeric_2008_12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_archive_numeric_2016_01`
--

DROP TABLE IF EXISTS `piwik_archive_numeric_2016_01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_archive_numeric_2016_01` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_archive_numeric_2016_01`
--

LOCK TABLES `piwik_archive_numeric_2016_01` WRITE;
/*!40000 ALTER TABLE `piwik_archive_numeric_2016_01` DISABLE KEYS */;
INSERT INTO `piwik_archive_numeric_2016_01` VALUES (1,'done',1,'2016-01-01','2016-12-31',4,'2016-09-27 16:21:14',3);
/*!40000 ALTER TABLE `piwik_archive_numeric_2016_01` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_archive_numeric_2016_08`
--

DROP TABLE IF EXISTS `piwik_archive_numeric_2016_08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_archive_numeric_2016_08` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_archive_numeric_2016_08`
--

LOCK TABLES `piwik_archive_numeric_2016_08` WRITE;
/*!40000 ALTER TABLE `piwik_archive_numeric_2016_08` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_archive_numeric_2016_08` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_archive_numeric_2016_09`
--

DROP TABLE IF EXISTS `piwik_archive_numeric_2016_09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_archive_numeric_2016_09` (
  `idarchive` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `idsite` int(10) unsigned DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `period` tinyint(3) unsigned DEFAULT NULL,
  `ts_archived` datetime DEFAULT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`idarchive`,`name`),
  KEY `index_idsite_dates_period` (`idsite`,`date1`,`date2`,`period`,`ts_archived`),
  KEY `index_period_archived` (`period`,`ts_archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_archive_numeric_2016_09`
--

LOCK TABLES `piwik_archive_numeric_2016_09` WRITE;
/*!40000 ALTER TABLE `piwik_archive_numeric_2016_09` DISABLE KEYS */;
INSERT INTO `piwik_archive_numeric_2016_09` VALUES (1,'done',1,'2016-09-01','2016-09-30',3,'2016-09-27 16:21:14',3),(2,'done',1,'2016-09-26','2016-09-26',1,'2016-09-27 16:21:14',1),(3,'done',1,'2016-09-27','2016-09-27',1,'2016-09-27 16:21:14',3),(4,'done',1,'2016-09-28','2016-09-28',1,'2016-09-27 16:21:14',3),(5,'done',1,'2016-09-29','2016-09-29',1,'2016-09-27 16:21:14',3);
/*!40000 ALTER TABLE `piwik_archive_numeric_2016_09` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_goal`
--

DROP TABLE IF EXISTS `piwik_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_goal` (
  `idsite` int(11) NOT NULL,
  `idgoal` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `match_attribute` varchar(20) NOT NULL,
  `pattern` varchar(255) NOT NULL,
  `pattern_type` varchar(10) NOT NULL,
  `case_sensitive` tinyint(4) NOT NULL,
  `allow_multiple` tinyint(4) NOT NULL,
  `revenue` float NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsite`,`idgoal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_goal`
--

LOCK TABLES `piwik_goal` WRITE;
/*!40000 ALTER TABLE `piwik_goal` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_goal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_log_action`
--

DROP TABLE IF EXISTS `piwik_log_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_action` (
  `idaction` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `hash` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `url_prefix` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`idaction`),
  KEY `index_type_hash` (`type`,`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_log_action`
--

LOCK TABLES `piwik_log_action` WRITE;
/*!40000 ALTER TABLE `piwik_log_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_log_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_log_conversion`
--

DROP TABLE IF EXISTS `piwik_log_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_conversion` (
  `idvisit` int(10) unsigned NOT NULL,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idaction_url` int(11) DEFAULT NULL,
  `idlink_va` int(11) DEFAULT NULL,
  `idgoal` int(10) NOT NULL,
  `buster` int(10) unsigned NOT NULL,
  `idorder` varchar(100) DEFAULT NULL,
  `items` smallint(5) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  `visitor_days_since_first` smallint(5) unsigned NOT NULL,
  `visitor_days_since_order` smallint(5) unsigned NOT NULL,
  `visitor_returning` tinyint(1) NOT NULL,
  `visitor_count_visits` smallint(5) unsigned NOT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(70) DEFAULT NULL,
  `referer_type` tinyint(1) unsigned DEFAULT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) NOT NULL,
  `location_latitude` float(10,6) DEFAULT NULL,
  `location_longitude` float(10,6) DEFAULT NULL,
  `location_region` char(2) DEFAULT NULL,
  `revenue_discount` float DEFAULT NULL,
  `revenue` float DEFAULT NULL,
  `revenue_shipping` float DEFAULT NULL,
  `revenue_subtotal` float DEFAULT NULL,
  `revenue_tax` float DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idvisit`,`idgoal`,`buster`),
  UNIQUE KEY `unique_idsite_idorder` (`idsite`,`idorder`),
  KEY `index_idsite_datetime` (`idsite`,`server_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_log_conversion`
--

LOCK TABLES `piwik_log_conversion` WRITE;
/*!40000 ALTER TABLE `piwik_log_conversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_log_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_log_conversion_item`
--

DROP TABLE IF EXISTS `piwik_log_conversion_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_conversion_item` (
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `server_time` datetime NOT NULL,
  `idvisit` int(10) unsigned NOT NULL,
  `idorder` varchar(100) NOT NULL,
  `idaction_sku` int(10) unsigned NOT NULL,
  `idaction_name` int(10) unsigned NOT NULL,
  `idaction_category` int(10) unsigned NOT NULL,
  `idaction_category2` int(10) unsigned NOT NULL,
  `idaction_category3` int(10) unsigned NOT NULL,
  `idaction_category4` int(10) unsigned NOT NULL,
  `idaction_category5` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`idvisit`,`idorder`,`idaction_sku`),
  KEY `index_idsite_servertime` (`idsite`,`server_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_log_conversion_item`
--

LOCK TABLES `piwik_log_conversion_item` WRITE;
/*!40000 ALTER TABLE `piwik_log_conversion_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_log_conversion_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_log_link_visit_action`
--

DROP TABLE IF EXISTS `piwik_log_link_visit_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_link_visit_action` (
  `idlink_va` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `idvisit` int(10) unsigned NOT NULL,
  `idaction_url_ref` int(10) unsigned DEFAULT '0',
  `idaction_name_ref` int(10) unsigned NOT NULL,
  `custom_float` float DEFAULT NULL,
  `server_time` datetime NOT NULL,
  `idaction_name` int(10) unsigned DEFAULT NULL,
  `idaction_url` int(10) unsigned DEFAULT NULL,
  `time_spent_ref_action` int(10) unsigned NOT NULL,
  `idaction_event_action` int(10) unsigned DEFAULT NULL,
  `idaction_event_category` int(10) unsigned DEFAULT NULL,
  `idaction_content_interaction` int(10) unsigned DEFAULT NULL,
  `idaction_content_name` int(10) unsigned DEFAULT NULL,
  `idaction_content_piece` int(10) unsigned DEFAULT NULL,
  `idaction_content_target` int(10) unsigned DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idlink_va`),
  KEY `index_idvisit` (`idvisit`),
  KEY `index_idsite_servertime` (`idsite`,`server_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_log_link_visit_action`
--

LOCK TABLES `piwik_log_link_visit_action` WRITE;
/*!40000 ALTER TABLE `piwik_log_link_visit_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_log_link_visit_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_log_profiling`
--

DROP TABLE IF EXISTS `piwik_log_profiling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_profiling` (
  `query` text NOT NULL,
  `count` int(10) unsigned DEFAULT NULL,
  `sum_time_ms` float DEFAULT NULL,
  UNIQUE KEY `query` (`query`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_log_profiling`
--

LOCK TABLES `piwik_log_profiling` WRITE;
/*!40000 ALTER TABLE `piwik_log_profiling` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_log_profiling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_log_visit`
--

DROP TABLE IF EXISTS `piwik_log_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_log_visit` (
  `idvisit` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idsite` int(10) unsigned NOT NULL,
  `idvisitor` binary(8) NOT NULL,
  `visit_last_action_time` datetime NOT NULL,
  `config_id` binary(8) NOT NULL,
  `location_ip` varbinary(16) NOT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `visit_first_action_time` datetime NOT NULL,
  `visit_goal_buyer` tinyint(1) NOT NULL,
  `visit_goal_converted` tinyint(1) NOT NULL,
  `visitor_days_since_first` smallint(5) unsigned NOT NULL,
  `visitor_days_since_order` smallint(5) unsigned NOT NULL,
  `visitor_returning` tinyint(1) NOT NULL,
  `visitor_count_visits` smallint(5) unsigned NOT NULL,
  `visit_entry_idaction_name` int(11) unsigned NOT NULL,
  `visit_entry_idaction_url` int(11) unsigned NOT NULL,
  `visit_exit_idaction_name` int(11) unsigned NOT NULL,
  `visit_exit_idaction_url` int(11) unsigned DEFAULT '0',
  `visit_total_actions` smallint(5) unsigned NOT NULL,
  `visit_total_searches` smallint(5) unsigned NOT NULL,
  `referer_keyword` varchar(255) DEFAULT NULL,
  `referer_name` varchar(70) DEFAULT NULL,
  `referer_type` tinyint(1) unsigned DEFAULT NULL,
  `referer_url` text NOT NULL,
  `location_browser_lang` varchar(20) NOT NULL,
  `config_browser_engine` varchar(10) NOT NULL,
  `config_browser_name` varchar(10) NOT NULL,
  `config_browser_version` varchar(20) NOT NULL,
  `config_device_brand` varchar(100) DEFAULT NULL,
  `config_device_model` varchar(100) DEFAULT NULL,
  `config_device_type` tinyint(100) DEFAULT NULL,
  `config_os` char(3) NOT NULL,
  `config_os_version` varchar(100) DEFAULT NULL,
  `visit_total_events` smallint(5) unsigned NOT NULL,
  `visitor_localtime` time NOT NULL,
  `visitor_days_since_last` smallint(5) unsigned NOT NULL,
  `config_resolution` varchar(9) NOT NULL,
  `config_cookie` tinyint(1) NOT NULL,
  `config_director` tinyint(1) NOT NULL,
  `config_flash` tinyint(1) NOT NULL,
  `config_gears` tinyint(1) NOT NULL,
  `config_java` tinyint(1) NOT NULL,
  `config_pdf` tinyint(1) NOT NULL,
  `config_quicktime` tinyint(1) NOT NULL,
  `config_realplayer` tinyint(1) NOT NULL,
  `config_silverlight` tinyint(1) NOT NULL,
  `config_windowsmedia` tinyint(1) NOT NULL,
  `visit_total_time` smallint(5) unsigned NOT NULL,
  `location_city` varchar(255) DEFAULT NULL,
  `location_country` char(3) NOT NULL,
  `location_latitude` float(10,6) DEFAULT NULL,
  `location_longitude` float(10,6) DEFAULT NULL,
  `location_region` char(2) DEFAULT NULL,
  `custom_var_k1` varchar(200) DEFAULT NULL,
  `custom_var_v1` varchar(200) DEFAULT NULL,
  `custom_var_k2` varchar(200) DEFAULT NULL,
  `custom_var_v2` varchar(200) DEFAULT NULL,
  `custom_var_k3` varchar(200) DEFAULT NULL,
  `custom_var_v3` varchar(200) DEFAULT NULL,
  `custom_var_k4` varchar(200) DEFAULT NULL,
  `custom_var_v4` varchar(200) DEFAULT NULL,
  `custom_var_k5` varchar(200) DEFAULT NULL,
  `custom_var_v5` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idvisit`),
  KEY `index_idsite_config_datetime` (`idsite`,`config_id`,`visit_last_action_time`),
  KEY `index_idsite_datetime` (`idsite`,`visit_last_action_time`),
  KEY `index_idsite_idvisitor` (`idsite`,`idvisitor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_log_visit`
--

LOCK TABLES `piwik_log_visit` WRITE;
/*!40000 ALTER TABLE `piwik_log_visit` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_log_visit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_logger_message`
--

DROP TABLE IF EXISTS `piwik_logger_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_logger_message` (
  `idlogger_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `level` varchar(16) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`idlogger_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_logger_message`
--

LOCK TABLES `piwik_logger_message` WRITE;
/*!40000 ALTER TABLE `piwik_logger_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_logger_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_option`
--

DROP TABLE IF EXISTS `piwik_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_option` (
  `option_name` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL,
  `autoload` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_option`
--

LOCK TABLES `piwik_option` WRITE;
/*!40000 ALTER TABLE `piwik_option` DISABLE KEYS */;
INSERT INTO `piwik_option` VALUES ('admin_defaultReport','MultiSites',0),('admin_defaultReportDate','today',0),('branding_use_custom_logo','1',1),('delete_logs_enable','1',0),('delete_logs_max_rows_per_query','100000',0),('delete_logs_older_than','1',0),('delete_logs_schedule_lowest_interval','1',0),('delete_reports_enable','0',0),('delete_reports_keep_basic_metrics','1',0),('delete_reports_keep_day_reports','0',0),('delete_reports_keep_month_reports','1',0),('delete_reports_keep_range_reports','0',0),('delete_reports_keep_segment_reports','0',0),('delete_reports_keep_week_reports','0',0),('delete_reports_keep_year_reports','1',0),('delete_reports_older_than','12',0),('enableBrowserTriggerArchiving','0',1),('enableUpdateCommunicationPlugins','0',0),('MobileMessaging_DelegatedManagement','false',0),('piwikUrl','http://113.164.27.60:81/',1),('Plugin_QueuedTracking_Settings','a:10:{s:18:\"useSentinelBackend\";b:0;s:18:\"sentinelMasterName\";s:8:\"mymaster\";s:9:\"redisHost\";s:9:\"127.0.0.1\";s:9:\"redisPort\";s:4:\"6380\";s:13:\"redisDatabase\";i:0;s:13:\"redisPassword\";s:0:\"\";s:12:\"queueEnabled\";b:1;s:15:\"numQueueWorkers\";i:16;s:20:\"numRequestsToProcess\";i:1;s:28:\"processDuringTrackingRequest\";b:1;}',0),('PrivacyManager.doNotTrackEnabled','0',0),('PrivacyManager.ipAnonymizerEnabled','0',0),('SitesManager_DefaultTimezone','Asia/Ho_Chi_Minh',0),('todayArchiveTimeToLive','1500',1),('UpdateCheck_LastTimeChecked','1474993067',1),('UpdateCheck_LatestVersion','2.16.2',0),('usercountry.location_provider','geoip_php',0),('UsersManager.lastSeen.admin','1474993250',1),('version_Actions','2.16.2',1),('version_Annotations','2.16.2',1),('version_API','2.16.2',1),('version_BulkTracking','2.16.2',1),('version_Contents','2.16.2',1),('version_core','2.16.2',1),('version_CoreAdminHome','2.16.2',1),('version_CoreConsole','2.16.2',1),('version_CoreHome','2.16.2',1),('version_CorePluginsAdmin','2.16.2',1),('version_CoreUpdater','2.16.2',1),('version_CoreVisualizations','2.16.2',1),('version_CustomVariables','2.16.2',1),('version_Dashboard','2.16.2',1),('version_DevicePlugins','2.16.2',1),('version_DevicesDetection','2.16.2',1),('version_Diagnostics','2.16.2',1),('version_Ecommerce','2.16.2',1),('version_Events','2.16.2',1),('version_ExampleAPI','1.0',1),('version_ExamplePlugin','0.1.0',1),('version_ExampleRssWidget','1.0',1),('version_Feedback','2.16.2',1),('version_Goals','2.16.2',1),('version_Heartbeat','2.16.2',1),('version_ImageGraph','2.16.2',1),('version_Insights','2.16.2',1),('version_Installation','2.16.2',1),('version_Intl','2.16.2',1),('version_LanguagesManager','2.16.2',1),('version_Live','2.16.2',1),('version_Login','2.16.2',1),('version_log_conversion.revenue','float default NULL',1),('version_log_conversion.revenue_discount','float default NULL',1),('version_log_conversion.revenue_shipping','float default NULL',1),('version_log_conversion.revenue_subtotal','float default NULL',1),('version_log_conversion.revenue_tax','float default NULL',1),('version_log_link_visit_action.idaction_content_interaction','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_name','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_piece','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_content_target','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_event_action','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_event_category','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.idaction_name','INTEGER(10) UNSIGNED',1),('version_log_link_visit_action.idaction_url','INTEGER(10) UNSIGNED DEFAULT NULL',1),('version_log_link_visit_action.server_time','DATETIME NOT NULL',1),('version_log_link_visit_action.time_spent_ref_action','INTEGER(10) UNSIGNED NOT NULL',1),('version_log_visit.config_browser_engine','VARCHAR(10) NOT NULL',1),('version_log_visit.config_browser_name','VARCHAR(10) NOT NULL',1),('version_log_visit.config_browser_version','VARCHAR(20) NOT NULL',1),('version_log_visit.config_cookie','TINYINT(1) NOT NULL',1),('version_log_visit.config_device_brand','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL',1),('version_log_visit.config_device_model','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL',1),('version_log_visit.config_device_type','TINYINT( 100 ) NULL DEFAULT NULL',1),('version_log_visit.config_director','TINYINT(1) NOT NULL',1),('version_log_visit.config_flash','TINYINT(1) NOT NULL',1),('version_log_visit.config_gears','TINYINT(1) NOT NULL',1),('version_log_visit.config_java','TINYINT(1) NOT NULL',1),('version_log_visit.config_os','CHAR(3) NOT NULL',1),('version_log_visit.config_os_version','VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL',1),('version_log_visit.config_pdf','TINYINT(1) NOT NULL',1),('version_log_visit.config_quicktime','TINYINT(1) NOT NULL',1),('version_log_visit.config_realplayer','TINYINT(1) NOT NULL',1),('version_log_visit.config_resolution','VARCHAR(9) NOT NULL',1),('version_log_visit.config_silverlight','TINYINT(1) NOT NULL',1),('version_log_visit.config_windowsmedia','TINYINT(1) NOT NULL',1),('version_log_visit.location_browser_lang','VARCHAR(20) NOT NULL',1),('version_log_visit.location_city','varchar(255) DEFAULT NULL1',1),('version_log_visit.location_country','CHAR(3) NOT NULL1',1),('version_log_visit.location_latitude','float(10, 6) DEFAULT NULL1',1),('version_log_visit.location_longitude','float(10, 6) DEFAULT NULL1',1),('version_log_visit.location_region','char(2) DEFAULT NULL1',1),('version_log_visit.referer_keyword','VARCHAR(255) NULL1',1),('version_log_visit.referer_name','VARCHAR(70) NULL1',1),('version_log_visit.referer_type','TINYINT(1) UNSIGNED NULL1',1),('version_log_visit.referer_url','TEXT NOT NULL',1),('version_log_visit.user_id','VARCHAR(200) NULL',1),('version_log_visit.visitor_count_visits','SMALLINT(5) UNSIGNED NOT NULL1',1),('version_log_visit.visitor_days_since_first','SMALLINT(5) UNSIGNED NOT NULL1',1),('version_log_visit.visitor_days_since_last','SMALLINT(5) UNSIGNED NOT NULL',1),('version_log_visit.visitor_days_since_order','SMALLINT(5) UNSIGNED NOT NULL1',1),('version_log_visit.visitor_localtime','TIME NOT NULL',1),('version_log_visit.visitor_returning','TINYINT(1) NOT NULL1',1),('version_log_visit.visit_entry_idaction_name','INTEGER(11) UNSIGNED NOT NULL',1),('version_log_visit.visit_entry_idaction_url','INTEGER(11) UNSIGNED NOT NULL',1),('version_log_visit.visit_exit_idaction_name','INTEGER(11) UNSIGNED NOT NULL',1),('version_log_visit.visit_exit_idaction_url','INTEGER(11) UNSIGNED NULL DEFAULT 0',1),('version_log_visit.visit_first_action_time','DATETIME NOT NULL',1),('version_log_visit.visit_goal_buyer','TINYINT(1) NOT NULL',1),('version_log_visit.visit_goal_converted','TINYINT(1) NOT NULL',1),('version_log_visit.visit_total_actions','SMALLINT(5) UNSIGNED NOT NULL',1),('version_log_visit.visit_total_events','SMALLINT(5) UNSIGNED NOT NULL',1),('version_log_visit.visit_total_searches','SMALLINT(5) UNSIGNED NOT NULL',1),('version_log_visit.visit_total_time','SMALLINT(5) UNSIGNED NOT NULL',1),('version_MobileMessaging','2.16.2',1),('version_Monolog','2.16.2',1),('version_Morpheus','2.16.2',1),('version_MultiSites','2.16.2',1),('version_Overlay','2.16.2',1),('version_PrivacyManager','2.16.2',1),('version_ProfessionalServices','2.16.2',1),('version_Proxy','2.16.2',1),('version_QueuedTracking','0.3.2',1),('version_Referrers','2.16.2',1),('version_Resolution','2.16.2',1),('version_ScheduledReports','2.16.2',1),('version_SegmentEditor','2.16.2',1),('version_SEO','2.16.2',1),('version_SitesManager','2.16.2',1),('version_Transitions','2.16.2',1),('version_UserCountry','2.16.2',1),('version_UserCountryMap','2.16.2',1),('version_UserId','2.16.2',1),('version_UserLanguage','2.16.2',1),('version_UsersManager','2.16.2',1),('version_VisitFrequency','2.16.2',1),('version_VisitorInterest','2.16.2',1),('version_VisitsSummary','2.16.2',1),('version_VisitTime','2.16.2',1),('version_WebsiteMeasurable','2.16.2',1),('version_Widgetize','2.16.2',1);
/*!40000 ALTER TABLE `piwik_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_report`
--

DROP TABLE IF EXISTS `piwik_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_report` (
  `idreport` int(11) NOT NULL AUTO_INCREMENT,
  `idsite` int(11) NOT NULL,
  `login` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `idsegment` int(11) DEFAULT NULL,
  `period` varchar(10) NOT NULL,
  `hour` tinyint(4) NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `format` varchar(10) NOT NULL,
  `reports` text NOT NULL,
  `parameters` text,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_sent` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idreport`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_report`
--

LOCK TABLES `piwik_report` WRITE;
/*!40000 ALTER TABLE `piwik_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_segment`
--

DROP TABLE IF EXISTS `piwik_segment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_segment` (
  `idsegment` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `definition` text NOT NULL,
  `login` varchar(100) NOT NULL,
  `enable_all_users` tinyint(4) NOT NULL DEFAULT '0',
  `enable_only_idsite` int(11) DEFAULT NULL,
  `auto_archive` tinyint(4) NOT NULL DEFAULT '0',
  `ts_created` timestamp NULL DEFAULT NULL,
  `ts_last_edit` timestamp NULL DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsegment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_segment`
--

LOCK TABLES `piwik_segment` WRITE;
/*!40000 ALTER TABLE `piwik_segment` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_segment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_sequence`
--

DROP TABLE IF EXISTS `piwik_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_sequence` (
  `name` varchar(120) NOT NULL,
  `value` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_sequence`
--

LOCK TABLES `piwik_sequence` WRITE;
/*!40000 ALTER TABLE `piwik_sequence` DISABLE KEYS */;
INSERT INTO `piwik_sequence` VALUES ('piwik_archive_numeric_2008_12',2),('piwik_archive_numeric_2016_01',1),('piwik_archive_numeric_2016_08',0),('piwik_archive_numeric_2016_09',5);
/*!40000 ALTER TABLE `piwik_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_session`
--

DROP TABLE IF EXISTS `piwik_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_session` (
  `id` varchar(255) NOT NULL,
  `modified` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_session`
--

LOCK TABLES `piwik_session` WRITE;
/*!40000 ALTER TABLE `piwik_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_site`
--

DROP TABLE IF EXISTS `piwik_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_site` (
  `idsite` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(90) NOT NULL,
  `main_url` varchar(255) NOT NULL,
  `ts_created` timestamp NULL DEFAULT NULL,
  `ecommerce` tinyint(4) DEFAULT '0',
  `sitesearch` tinyint(4) DEFAULT '1',
  `sitesearch_keyword_parameters` text NOT NULL,
  `sitesearch_category_parameters` text NOT NULL,
  `timezone` varchar(50) NOT NULL,
  `currency` char(3) NOT NULL,
  `exclude_unknown_urls` tinyint(1) DEFAULT '0',
  `excluded_ips` text NOT NULL,
  `excluded_parameters` text NOT NULL,
  `excluded_user_agents` text NOT NULL,
  `group` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `keep_url_fragment` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idsite`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_site`
--

LOCK TABLES `piwik_site` WRITE;
/*!40000 ALTER TABLE `piwik_site` DISABLE KEYS */;
INSERT INTO `piwik_site` VALUES (1,'sbddigital.com','http://sbddigital.com','2016-09-27 09:20:26',1,1,'','','Asia/Ho_Chi_Minh','USD',0,'','','','','website',0);
/*!40000 ALTER TABLE `piwik_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_site_setting`
--

DROP TABLE IF EXISTS `piwik_site_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_site_setting` (
  `idsite` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` longtext NOT NULL,
  PRIMARY KEY (`idsite`,`setting_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_site_setting`
--

LOCK TABLES `piwik_site_setting` WRITE;
/*!40000 ALTER TABLE `piwik_site_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_site_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_site_url`
--

DROP TABLE IF EXISTS `piwik_site_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_site_url` (
  `idsite` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`idsite`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_site_url`
--

LOCK TABLES `piwik_site_url` WRITE;
/*!40000 ALTER TABLE `piwik_site_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_site_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_user`
--

DROP TABLE IF EXISTS `piwik_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_user` (
  `login` varchar(100) NOT NULL,
  `password` char(32) NOT NULL,
  `alias` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token_auth` char(32) NOT NULL,
  `superuser_access` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `date_registered` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`login`),
  UNIQUE KEY `uniq_keytoken` (`token_auth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_user`
--

LOCK TABLES `piwik_user` WRITE;
/*!40000 ALTER TABLE `piwik_user` DISABLE KEYS */;
INSERT INTO `piwik_user` VALUES ('admin','387d4e1ea5b4990c9b26957ea2f94957','admin','baysao@gmail.com','bce12b0011714f1836a4b4cccdbb190f',1,'2016-09-27 09:20:17'),('anonymous','','anonymous','anonymous@example.org','anonymous',0,'2016-09-27 09:17:40');
/*!40000 ALTER TABLE `piwik_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_user_dashboard`
--

DROP TABLE IF EXISTS `piwik_user_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_user_dashboard` (
  `login` varchar(100) NOT NULL,
  `iddashboard` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `layout` text NOT NULL,
  PRIMARY KEY (`login`,`iddashboard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_user_dashboard`
--

LOCK TABLES `piwik_user_dashboard` WRITE;
/*!40000 ALTER TABLE `piwik_user_dashboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `piwik_user_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `piwik_user_language`
--

DROP TABLE IF EXISTS `piwik_user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piwik_user_language` (
  `login` varchar(100) NOT NULL,
  `language` varchar(10) NOT NULL,
  `use_12_hour_clock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `piwik_user_language`
--

LOCK TABLES `piwik_user_language` WRITE;
/*!40000 ALTER TABLE `piwik_user_language` DISABLE KEYS */;
INSERT INTO `piwik_user_language` VALUES ('admin','en',0);
/*!40000 ALTER TABLE `piwik_user_language` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-27 23:24:56
