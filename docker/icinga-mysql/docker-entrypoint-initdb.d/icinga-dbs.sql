-- MySQL dump 10.14  Distrib 5.5.47-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: icinga
-- ------------------------------------------------------
-- Server version	5.5.47-MariaDB

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
-- Current Database: `icinga`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `icinga` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `icinga`;

--
-- Table structure for table `icinga_acknowledgements`
--

DROP TABLE IF EXISTS `icinga_acknowledgements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_acknowledgements` (
  `acknowledgement_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entry_time_usec` int(11) DEFAULT '0',
  `acknowledgement_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `is_sticky` smallint(6) DEFAULT '0',
  `persistent_comment` smallint(6) DEFAULT '0',
  `notify_contacts` smallint(6) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`acknowledgement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Current and historical host and service acknowledgements';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_acknowledgements`
--

LOCK TABLES `icinga_acknowledgements` WRITE;
/*!40000 ALTER TABLE `icinga_acknowledgements` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_acknowledgements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_commands`
--

DROP TABLE IF EXISTS `icinga_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_commands` (
  `command_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `command_line` text,
  PRIMARY KEY (`command_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`config_type`),
  KEY `commands_i_id_idx` (`instance_id`),
  KEY `command_object_idx` (`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1 COMMENT='Command definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_commands`
--

LOCK TABLES `icinga_commands` WRITE;
/*!40000 ALTER TABLE `icinga_commands` DISABLE KEYS */;
INSERT INTO `icinga_commands` VALUES (1,1,1,3,' \"/usr/lib64/nagios/plugins/libexec/check_apt\"'),(2,1,1,4,' \"/usr/lib64/nagios/plugins/libexec/check_by_ssh\"'),(3,1,1,5,' \"/usr/lib64/nagios/plugins/libexec/check_clamd\"'),(4,1,1,6,'<internal>'),(5,1,1,7,'<internal>'),(6,1,1,8,' \"/usr/lib64/nagios/plugins/libexec/check_dhcp\"'),(7,1,1,9,' \"/usr/lib64/nagios/plugins/libexec/check_dig\"'),(8,1,1,10,' \"/usr/lib64/nagios/plugins/libexec/check_disk\"'),(9,1,1,11,' \"/usr/lib64/nagios/plugins/libexec/check_disk_smb\"'),(10,1,1,12,' \"/usr/lib64/nagios/plugins/libexec/check_dns\"'),(11,1,1,13,' \"/usr/lib64/nagios/plugins/libexec/check_dummy\" \"$dummy_state$\" \"$dummy_text$\"'),(12,1,1,14,' \"/usr/lib64/nagios/plugins/libexec/check_fping\" \"$fping_address$\" \"-4\"'),(13,1,1,15,' \"/usr/lib64/nagios/plugins/libexec/check_fping\" \"$fping_address$\" \"-6\"'),(14,1,1,16,' \"/usr/lib64/nagios/plugins/libexec/check_ftp\"'),(15,1,1,17,' \"/usr/lib64/nagios/plugins/libexec/check_ping\"'),(16,1,1,18,' \"/usr/lib64/nagios/plugins/libexec/check_ping\" \"-4\"'),(17,1,1,19,' \"/usr/lib64/nagios/plugins/libexec/check_ping\" \"-6\"'),(18,1,1,20,' \"/usr/lib64/nagios/plugins/libexec/check_hpjd\"'),(19,1,1,21,' \"/usr/lib64/nagios/plugins/libexec/check_http\"'),(20,1,1,22,'<internal>'),(21,1,1,23,' \"/usr/lib64/nagios/plugins/libexec/check_icmp\"'),(22,1,1,24,'<internal>'),(23,1,1,25,' \"/usr/lib64/nagios/plugins/libexec/check_imap\"'),(24,1,1,26,' \"/usr/lib64/nagios/plugins/libexec/check_ldap\"'),(25,1,1,27,' \"/usr/lib64/nagios/plugins/libexec/check_load\"'),(26,1,1,28,' \"/usr/lib64/nagios/plugins/libexec/check_mailq\"'),(27,1,1,29,' \"/usr/lib64/nagios/plugins/libexec/check_mysql\"'),(28,1,1,30,' \"/usr/lib64/nagios/plugins/libexec/negate\"'),(29,1,1,31,' \"/usr/lib64/nagios/plugins/libexec/check_nrpe\"'),(30,1,1,32,' \"/usr/lib64/nagios/plugins/libexec/check_nt\"'),(31,1,1,33,' \"/usr/lib64/nagios/plugins/libexec/check_ntp_peer\"'),(32,1,1,34,' \"/usr/lib64/nagios/plugins/libexec/check_ntp_time\"'),(33,1,1,35,' \"/usr/lib64/nagios/plugins/libexec/check_dummy\" \"$dummy_state$\" \"$dummy_text$\"'),(34,1,1,36,' \"/usr/lib64/nagios/plugins/libexec/check_pgsql\"'),(35,1,1,37,' \"/usr/lib64/nagios/plugins/libexec/check_ping\"'),(36,1,1,38,' \"/usr/lib64/nagios/plugins/libexec/check_ping\" \"-4\"'),(37,1,1,39,' \"/usr/lib64/nagios/plugins/libexec/check_ping\" \"-6\"'),(38,1,1,40,' \"/usr/lib64/nagios/plugins/libexec/check_pop\"'),(39,1,1,41,' \"/usr/lib64/nagios/plugins/libexec/check_procs\"'),(40,1,1,42,'<internal>'),(41,1,1,43,' \"/usr/lib64/nagios/plugins/libexec/check_simap\"'),(42,1,1,44,' \"/usr/lib64/nagios/plugins/libexec/check_smtp\"'),(43,1,1,45,' \"/usr/lib64/nagios/plugins/libexec/check_snmp\"'),(44,1,1,46,' \"/usr/lib64/nagios/plugins/libexec/check_snmp\"'),(45,1,1,47,' \"/usr/lib64/nagios/plugins/libexec/check_snmp\"'),(46,1,1,48,' \"/usr/lib64/nagios/plugins/libexec/check_spop\"'),(47,1,1,49,' \"/usr/lib64/nagios/plugins/libexec/check_ssh\"'),(48,1,1,50,' \"/usr/lib64/nagios/plugins/libexec/check_tcp\"'),(49,1,1,51,' \"/usr/lib64/nagios/plugins/libexec/check_ssmtp\"'),(50,1,1,52,' \"/usr/lib64/nagios/plugins/libexec/check_swap\"'),(51,1,1,53,' \"/usr/lib64/nagios/plugins/libexec/check_tcp\"'),(52,1,1,54,' \"/usr/lib64/nagios/plugins/libexec/check_udp\" \"-H\" \"$udp_address$\" \"-p\" \"$udp_port$\"'),(53,1,1,55,' \"/usr/lib64/nagios/plugins/libexec/check_ups\"'),(54,1,1,56,' \"/usr/lib64/nagios/plugins/libexec/check_users\"'),(55,1,1,57,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(56,1,1,58,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(57,1,1,81,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(58,1,1,82,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(59,1,1,83,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(60,1,1,84,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(61,1,1,86,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(62,1,1,87,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(63,1,1,88,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(64,1,1,89,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(65,1,1,100,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(66,1,1,101,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(67,1,1,106,' \"/usr/lib64/nagios/plugins/libexec/check_mysql\"'),(68,1,1,107,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(69,1,1,108,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(70,1,1,110,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(71,1,1,111,' \"/etc/icinga2/scripts/mail-service-notification.sh\"'),(72,1,1,112,' \"/etc/icinga2/scripts/mail-host-notification.sh\"'),(73,1,1,113,' \"/etc/icinga2/scripts/mail-service-notification.sh\"');
/*!40000 ALTER TABLE `icinga_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_commenthistory`
--

DROP TABLE IF EXISTS `icinga_commenthistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_commenthistory` (
  `commenthistory_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entry_time_usec` int(11) DEFAULT '0',
  `comment_type` smallint(6) DEFAULT '0',
  `entry_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `comment_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `internal_comment_id` bigint(20) unsigned DEFAULT '0',
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `is_persistent` smallint(6) DEFAULT '0',
  `comment_source` smallint(6) DEFAULT '0',
  `expires` smallint(6) DEFAULT '0',
  `expiration_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletion_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deletion_time_usec` int(11) DEFAULT '0',
  `name` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`commenthistory_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`comment_time`,`internal_comment_id`),
  KEY `commenthistory_delete_idx` (`instance_id`,`comment_time`,`internal_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical host and service comments';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_commenthistory`
--

LOCK TABLES `icinga_commenthistory` WRITE;
/*!40000 ALTER TABLE `icinga_commenthistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_commenthistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_comments`
--

DROP TABLE IF EXISTS `icinga_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_comments` (
  `comment_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entry_time_usec` int(11) DEFAULT '0',
  `comment_type` smallint(6) DEFAULT '0',
  `entry_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `comment_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `internal_comment_id` bigint(20) unsigned DEFAULT '0',
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `is_persistent` smallint(6) DEFAULT '0',
  `comment_source` smallint(6) DEFAULT '0',
  `expires` smallint(6) DEFAULT '0',
  `expiration_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`comment_time`,`internal_comment_id`),
  KEY `comments_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Usercomments on Icinga objects';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_comments`
--

LOCK TABLES `icinga_comments` WRITE;
/*!40000 ALTER TABLE `icinga_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_configfiles`
--

DROP TABLE IF EXISTS `icinga_configfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_configfiles` (
  `configfile_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `configfile_type` smallint(6) DEFAULT '0',
  `configfile_path` varchar(255) DEFAULT '',
  PRIMARY KEY (`configfile_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`configfile_type`,`configfile_path`),
  KEY `configfiles_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Configuration files';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_configfiles`
--

LOCK TABLES `icinga_configfiles` WRITE;
/*!40000 ALTER TABLE `icinga_configfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_configfiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_configfilevariables`
--

DROP TABLE IF EXISTS `icinga_configfilevariables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_configfilevariables` (
  `configfilevariable_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `configfile_id` bigint(20) unsigned DEFAULT '0',
  `varname` varchar(64) DEFAULT '',
  `varvalue` text,
  PRIMARY KEY (`configfilevariable_id`),
  KEY `configfilevariables_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Configuration file variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_configfilevariables`
--

LOCK TABLES `icinga_configfilevariables` WRITE;
/*!40000 ALTER TABLE `icinga_configfilevariables` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_configfilevariables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_conninfo`
--

DROP TABLE IF EXISTS `icinga_conninfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_conninfo` (
  `conninfo_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `agent_name` varchar(32) DEFAULT '',
  `agent_version` varchar(32) DEFAULT '',
  `disposition` varchar(32) DEFAULT '',
  `connect_source` varchar(32) DEFAULT '',
  `connect_type` varchar(32) DEFAULT '',
  `connect_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `disconnect_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_checkin_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `data_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `bytes_processed` bigint(20) unsigned DEFAULT '0',
  `lines_processed` bigint(20) unsigned DEFAULT '0',
  `entries_processed` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`conninfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='IDO2DB daemon connection information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_conninfo`
--

LOCK TABLES `icinga_conninfo` WRITE;
/*!40000 ALTER TABLE `icinga_conninfo` DISABLE KEYS */;
INSERT INTO `icinga_conninfo` VALUES (1,1,'icinga2 db_ido_mysql','v2.4.7','','','INITIAL','2016-05-17 00:45:02','0000-00-00 00:00:00','2016-05-17 00:45:02','2016-05-17 00:45:02','0000-00-00 00:00:00',0,0,0),(2,1,'icinga2 db_ido_mysql','v2.4.7','','','INITIAL','2016-05-17 00:49:45','0000-00-00 00:00:00','2016-05-17 00:49:45','2016-05-17 00:49:45','0000-00-00 00:00:00',0,0,0),(3,1,'icinga2 db_ido_mysql','v2.4.7','','','INITIAL','2016-05-17 02:56:59','0000-00-00 00:00:00','2016-05-17 02:56:59','2016-05-17 02:56:59','0000-00-00 00:00:00',0,0,0),(4,1,'icinga2 db_ido_mysql','v2.4.7','','','INITIAL','2016-05-17 02:57:51','0000-00-00 00:00:00','2016-05-17 02:57:51','2016-05-17 02:57:51','0000-00-00 00:00:00',0,0,0),(5,1,'icinga2 db_ido_mysql','v2.4.7','','','INITIAL','2016-05-17 03:11:43','0000-00-00 00:00:00','2016-05-17 03:11:43','2016-05-17 03:11:43','0000-00-00 00:00:00',0,0,0),(6,1,'icinga2 db_ido_mysql','v2.4.7','','','INITIAL','2016-05-17 03:28:04','0000-00-00 00:00:00','2016-05-17 03:28:04','2016-05-17 03:28:04','0000-00-00 00:00:00',0,0,0),(7,1,'icinga2 db_ido_mysql','v2.4.7','','','INITIAL','2016-05-17 05:15:03','0000-00-00 00:00:00','2016-05-17 05:15:03','2016-05-17 05:15:03','0000-00-00 00:00:00',0,0,0),(8,1,'icinga2 db_ido_mysql','v2.4.7','','','INITIAL','2016-05-17 05:16:01','0000-00-00 00:00:00','2016-05-17 05:16:01','2016-05-17 05:16:01','0000-00-00 00:00:00',0,0,0),(9,1,'icinga2 db_ido_mysql','v2.4.7','','','INITIAL','2016-05-17 05:21:37','0000-00-00 00:00:00','2016-05-17 05:21:37','2016-05-17 05:21:37','0000-00-00 00:00:00',0,0,0);
/*!40000 ALTER TABLE `icinga_conninfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contact_addresses`
--

DROP TABLE IF EXISTS `icinga_contact_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contact_addresses` (
  `contact_address_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contact_id` bigint(20) unsigned DEFAULT '0',
  `address_number` smallint(6) DEFAULT '0',
  `address` varchar(255) DEFAULT '',
  PRIMARY KEY (`contact_address_id`),
  UNIQUE KEY `contact_id` (`contact_id`,`address_number`),
  KEY `contact_addresses_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contact addresses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contact_addresses`
--

LOCK TABLES `icinga_contact_addresses` WRITE;
/*!40000 ALTER TABLE `icinga_contact_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_contact_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contact_notificationcommands`
--

DROP TABLE IF EXISTS `icinga_contact_notificationcommands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contact_notificationcommands` (
  `contact_notificationcommand_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contact_id` bigint(20) unsigned DEFAULT '0',
  `notification_type` smallint(6) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` varchar(255) DEFAULT '',
  PRIMARY KEY (`contact_notificationcommand_id`),
  UNIQUE KEY `contact_id` (`contact_id`,`notification_type`,`command_object_id`,`command_args`),
  KEY `contact_notifcommands_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contact host and service notification commands';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contact_notificationcommands`
--

LOCK TABLES `icinga_contact_notificationcommands` WRITE;
/*!40000 ALTER TABLE `icinga_contact_notificationcommands` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_contact_notificationcommands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactgroup_members`
--

DROP TABLE IF EXISTS `icinga_contactgroup_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactgroup_members` (
  `contactgroup_member_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`contactgroup_member_id`),
  KEY `contactgroup_members_i_id_idx` (`instance_id`),
  KEY `cntgrpmbrs_cgid_coid` (`contactgroup_id`,`contact_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='Contactgroup members';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactgroup_members`
--

LOCK TABLES `icinga_contactgroup_members` WRITE;
/*!40000 ALTER TABLE `icinga_contactgroup_members` DISABLE KEYS */;
INSERT INTO `icinga_contactgroup_members` VALUES (9,1,1,68);
/*!40000 ALTER TABLE `icinga_contactgroup_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactgroups`
--

DROP TABLE IF EXISTS `icinga_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactgroups` (
  `contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` text,
  PRIMARY KEY (`contactgroup_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`contactgroup_object_id`),
  KEY `contactgroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contactgroup definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactgroups`
--

LOCK TABLES `icinga_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_contactgroups` DISABLE KEYS */;
INSERT INTO `icinga_contactgroups` VALUES (1,1,1,69,'Icinga 2 Admin Group');
/*!40000 ALTER TABLE `icinga_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactnotificationmethods`
--

DROP TABLE IF EXISTS `icinga_contactnotificationmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactnotificationmethods` (
  `contactnotificationmethod_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contactnotification_id` bigint(20) unsigned DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` text,
  PRIMARY KEY (`contactnotificationmethod_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`contactnotification_id`,`start_time`,`start_time_usec`),
  KEY `contact_notif_meth_notif_idx` (`contactnotification_id`,`command_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical record of contact notification methods';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactnotificationmethods`
--

LOCK TABLES `icinga_contactnotificationmethods` WRITE;
/*!40000 ALTER TABLE `icinga_contactnotificationmethods` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_contactnotificationmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactnotifications`
--

DROP TABLE IF EXISTS `icinga_contactnotifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactnotifications` (
  `contactnotification_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `notification_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contactnotification_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`contact_object_id`,`start_time`,`start_time_usec`),
  KEY `contact_notification_idx` (`notification_id`,`contact_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1 COMMENT='Historical record of contact notifications';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactnotifications`
--

LOCK TABLES `icinga_contactnotifications` WRITE;
/*!40000 ALTER TABLE `icinga_contactnotifications` DISABLE KEYS */;
INSERT INTO `icinga_contactnotifications` VALUES (1,1,1,68,'2016-05-17 00:46:00',704838,'2016-05-17 00:46:00',704838,NULL),(2,1,3,68,'2016-05-17 00:48:28',256958,'2016-05-17 00:48:28',256958,NULL),(3,1,4,68,'2016-05-17 00:54:05',326519,'2016-05-17 00:54:05',326519,NULL),(4,1,5,68,'2016-05-17 01:24:05',349685,'2016-05-17 01:24:05',349685,NULL),(5,1,6,68,'2016-05-17 01:54:07',599225,'2016-05-17 01:54:07',599225,NULL),(6,1,7,68,'2016-05-17 02:24:07',748975,'2016-05-17 02:24:07',748975,NULL),(7,1,8,68,'2016-05-17 02:54:08',93693,'2016-05-17 02:54:08',93693,NULL),(8,1,9,68,'2016-05-17 05:19:01',741660,'2016-05-17 05:19:01',741660,NULL),(9,1,10,68,'2016-05-17 05:22:33',894304,'2016-05-17 05:22:33',894304,NULL),(10,1,11,68,'2016-05-17 06:00:22',968977,'2016-05-17 06:00:22',968977,NULL),(11,1,12,68,'2016-05-17 07:00:23',2846,'2016-05-17 07:00:23',2846,NULL),(12,1,13,68,'2016-05-18 01:07:03',892594,'2016-05-18 01:07:03',892594,NULL),(13,1,14,68,'2016-05-18 01:16:16',215495,'2016-05-18 01:16:16',215495,NULL),(14,1,15,68,'2016-05-18 01:46:20',68882,'2016-05-18 01:46:20',68882,NULL),(15,1,16,68,'2016-05-18 02:16:20',336008,'2016-05-18 02:16:20',336008,NULL),(16,1,17,68,'2016-05-18 02:46:20',402931,'2016-05-18 02:46:20',402931,NULL),(17,1,18,68,'2016-05-18 03:16:20',444907,'2016-05-18 03:16:20',444907,NULL),(18,1,19,68,'2016-05-18 03:46:20',498641,'2016-05-18 03:46:20',498641,NULL),(19,1,20,68,'2016-05-18 04:16:20',598884,'2016-05-18 04:16:20',598884,NULL),(20,1,21,68,'2016-05-18 04:46:20',741564,'2016-05-18 04:46:20',741564,NULL),(21,1,22,68,'2016-05-18 05:16:20',786541,'2016-05-18 05:16:20',786541,NULL),(22,1,23,68,'2016-05-18 05:46:20',883595,'2016-05-18 05:46:20',883595,NULL),(23,1,24,68,'2016-05-18 06:00:22',959425,'2016-05-18 06:00:22',959425,NULL),(24,1,25,68,'2016-05-18 06:16:21',3680,'2016-05-18 06:16:21',3680,NULL),(25,1,26,68,'2016-05-18 06:46:21',129606,'2016-05-18 06:46:21',129606,NULL),(26,1,27,68,'2016-05-18 07:00:22',963116,'2016-05-18 07:00:22',963116,NULL),(27,1,28,68,'2016-05-18 07:16:21',157273,'2016-05-18 07:16:21',157273,NULL),(28,1,29,68,'2016-05-18 07:46:21',205519,'2016-05-18 07:46:21',205519,NULL),(29,1,30,68,'2016-05-18 08:16:26',145968,'2016-05-18 08:16:26',145968,NULL),(30,1,31,68,'2016-05-18 08:46:31',67295,'2016-05-18 08:46:31',67295,NULL),(31,1,32,68,'2016-05-18 09:16:31',186009,'2016-05-18 09:16:31',186009,NULL),(32,1,33,68,'2016-05-18 09:46:36',131637,'2016-05-18 09:46:36',131637,NULL),(33,1,34,68,'2016-05-18 10:16:36',180782,'2016-05-18 10:16:36',180782,NULL),(34,1,35,68,'2016-05-18 10:46:41',169790,'2016-05-18 10:46:41',169790,NULL),(35,1,36,68,'2016-05-18 11:16:46',159794,'2016-05-18 11:16:46',159794,NULL),(36,1,37,68,'2016-05-18 11:46:46',184175,'2016-05-18 11:46:46',184175,NULL),(37,1,38,68,'2016-05-18 12:16:46',353194,'2016-05-18 12:16:46',353194,NULL),(38,1,39,68,'2016-05-18 12:46:46',453083,'2016-05-18 12:46:46',453083,NULL),(39,1,40,68,'2016-05-18 13:16:46',486058,'2016-05-18 13:16:46',486058,NULL),(40,1,41,68,'2016-05-18 13:46:46',571975,'2016-05-18 13:46:46',571975,NULL),(41,1,42,68,'2016-05-18 14:16:46',594769,'2016-05-18 14:16:46',594769,NULL),(42,1,43,68,'2016-05-18 14:46:46',720253,'2016-05-18 14:46:46',720253,NULL),(43,1,44,68,'2016-05-18 15:16:49',223612,'2016-05-18 15:16:49',223612,NULL),(44,1,45,68,'2016-05-18 15:46:54',190898,'2016-05-18 15:46:54',190898,NULL),(45,1,46,68,'2016-05-18 16:16:59',173983,'2016-05-18 16:16:59',173983,NULL),(46,1,47,68,'2016-05-18 16:46:59',200938,'2016-05-18 16:46:59',200938,NULL),(47,1,48,68,'2016-05-18 17:16:59',204904,'2016-05-18 17:16:59',204904,NULL),(48,1,49,68,'2016-05-18 17:46:59',206758,'2016-05-18 17:46:59',206758,NULL),(49,1,50,68,'2016-05-18 18:17:04',204334,'2016-05-18 18:17:04',204334,NULL),(50,1,51,68,'2016-05-18 18:47:04',207108,'2016-05-18 18:47:04',207108,NULL),(51,1,52,68,'2016-05-18 19:17:09',205868,'2016-05-18 19:17:09',205868,NULL),(52,1,53,68,'2016-05-18 19:47:09',285361,'2016-05-18 19:47:09',285361,NULL),(53,1,54,68,'2016-05-18 20:17:09',364845,'2016-05-18 20:17:09',364845,NULL),(54,1,55,68,'2016-05-18 20:47:09',448851,'2016-05-18 20:47:09',448851,NULL),(55,1,56,68,'2016-05-18 21:17:09',449449,'2016-05-18 21:17:09',449449,NULL),(56,1,57,68,'2016-05-18 21:47:14',443042,'2016-05-18 21:47:14',443042,NULL),(57,1,58,68,'2016-05-18 22:17:14',461664,'2016-05-18 22:17:14',461664,NULL),(58,1,59,68,'2016-05-18 22:47:19',460530,'2016-05-18 22:47:19',460530,NULL),(59,1,60,68,'2016-05-18 23:17:24',458106,'2016-05-18 23:17:24',458106,NULL),(60,1,61,68,'2016-05-18 23:47:24',460072,'2016-05-18 23:47:24',460072,NULL),(61,1,62,68,'2016-05-19 00:17:29',458477,'2016-05-19 00:17:29',458477,NULL),(62,1,63,68,'2016-05-19 00:47:29',465470,'2016-05-19 00:47:29',465470,NULL),(63,1,64,68,'2016-05-19 01:17:29',480046,'2016-05-19 01:17:29',480046,NULL),(64,1,65,68,'2016-05-19 01:47:29',611002,'2016-05-19 01:47:29',611002,NULL),(65,1,66,68,'2016-05-19 02:17:29',780445,'2016-05-19 02:17:29',780445,NULL),(66,1,67,68,'2016-05-19 02:47:29',872066,'2016-05-19 02:47:29',872066,NULL),(67,1,68,68,'2016-05-19 03:17:29',982913,'2016-05-19 03:17:29',982913,NULL),(68,1,69,68,'2016-05-19 03:47:30',64851,'2016-05-19 03:47:30',64851,NULL),(69,1,70,68,'2016-05-19 04:17:30',205986,'2016-05-19 04:17:30',205986,NULL),(70,1,71,68,'2016-05-19 04:47:30',347357,'2016-05-19 04:47:30',347357,NULL),(71,1,72,68,'2016-05-19 05:17:30',433691,'2016-05-19 05:17:30',433691,NULL),(72,1,73,68,'2016-05-19 05:47:30',692028,'2016-05-19 05:47:30',692028,NULL),(73,1,74,68,'2016-05-19 06:00:22',960550,'2016-05-19 06:00:22',960550,NULL),(74,1,75,68,'2016-05-19 06:17:30',784768,'2016-05-19 06:17:30',784768,NULL),(75,1,76,68,'2016-05-19 06:47:30',994792,'2016-05-19 06:47:30',994792,NULL),(76,1,77,68,'2016-05-19 07:00:22',968082,'2016-05-19 07:00:22',968082,NULL),(77,1,78,68,'2016-05-19 07:17:31',121016,'2016-05-19 07:17:31',121016,NULL),(78,1,79,68,'2016-05-19 07:47:31',210923,'2016-05-19 07:47:31',210923,NULL),(79,1,80,68,'2016-05-19 08:17:31',222692,'2016-05-19 08:17:31',222692,NULL),(80,1,81,68,'2016-05-19 08:47:31',381145,'2016-05-19 08:47:31',381145,NULL),(81,1,82,68,'2016-05-19 09:17:31',542047,'2016-05-19 09:17:31',542047,NULL),(82,1,83,68,'2016-05-19 09:47:31',674562,'2016-05-19 09:47:31',674562,NULL),(83,1,84,68,'2016-05-19 10:17:31',792241,'2016-05-19 10:17:31',792241,NULL),(84,1,85,68,'2016-05-19 10:47:31',927351,'2016-05-19 10:47:31',927351,NULL),(85,1,86,68,'2016-05-19 11:17:32',3470,'2016-05-19 11:17:32',3470,NULL),(86,1,87,68,'2016-05-19 11:47:32',109792,'2016-05-19 11:47:32',109792,NULL),(87,1,88,68,'2016-05-19 12:17:32',237185,'2016-05-19 12:17:32',237185,NULL),(88,1,89,68,'2016-05-19 12:47:32',344046,'2016-05-19 12:47:32',344046,NULL),(89,1,90,68,'2016-05-19 12:58:33',939950,'2016-05-19 12:58:33',939950,NULL);
/*!40000 ALTER TABLE `icinga_contactnotifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contacts`
--

DROP TABLE IF EXISTS `icinga_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contacts` (
  `contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` text,
  `email_address` varchar(255) DEFAULT '',
  `pager_address` varchar(64) DEFAULT '',
  `host_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `service_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `host_notifications_enabled` smallint(6) DEFAULT '0',
  `service_notifications_enabled` smallint(6) DEFAULT '0',
  `can_submit_commands` smallint(6) DEFAULT '0',
  `notify_service_recovery` smallint(6) DEFAULT '0',
  `notify_service_warning` smallint(6) DEFAULT '0',
  `notify_service_unknown` smallint(6) DEFAULT '0',
  `notify_service_critical` smallint(6) DEFAULT '0',
  `notify_service_flapping` smallint(6) DEFAULT '0',
  `notify_service_downtime` smallint(6) DEFAULT '0',
  `notify_host_recovery` smallint(6) DEFAULT '0',
  `notify_host_down` smallint(6) DEFAULT '0',
  `notify_host_unreachable` smallint(6) DEFAULT '0',
  `notify_host_flapping` smallint(6) DEFAULT '0',
  `notify_host_downtime` smallint(6) DEFAULT '0',
  PRIMARY KEY (`contact_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`contact_object_id`),
  KEY `contacts_i_id_idx` (`instance_id`),
  KEY `contacts_object_id_idx` (`contact_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contact definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contacts`
--

LOCK TABLES `icinga_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_contacts` DISABLE KEYS */;
INSERT INTO `icinga_contacts` VALUES (1,1,1,68,'Icinga 2 Admin','icinga@localhost','',0,0,1,1,1,1,1,1,1,1,1,1,1,0,1,1);
/*!40000 ALTER TABLE `icinga_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_contactstatus`
--

DROP TABLE IF EXISTS `icinga_contactstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_contactstatus` (
  `contactstatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `host_notifications_enabled` smallint(6) DEFAULT '0',
  `service_notifications_enabled` smallint(6) DEFAULT '0',
  `last_host_notification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_service_notification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_attributes` int(11) DEFAULT '0',
  `modified_host_attributes` int(11) DEFAULT '0',
  `modified_service_attributes` int(11) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contactstatus_id`),
  UNIQUE KEY `contact_object_id` (`contact_object_id`),
  KEY `contactstatus_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Contact status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_contactstatus`
--

LOCK TABLES `icinga_contactstatus` WRITE;
/*!40000 ALTER TABLE `icinga_contactstatus` DISABLE KEYS */;
INSERT INTO `icinga_contactstatus` VALUES (1,1,68,'2016-05-17 05:21:37',1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,0,0,1);
/*!40000 ALTER TABLE `icinga_contactstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_customvariables`
--

DROP TABLE IF EXISTS `icinga_customvariables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_customvariables` (
  `customvariable_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `has_been_modified` smallint(6) DEFAULT '0',
  `varname` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `varvalue` text,
  `is_json` smallint(6) DEFAULT '0',
  `session_token` int(11) DEFAULT NULL,
  PRIMARY KEY (`customvariable_id`),
  UNIQUE KEY `object_id_2` (`object_id`,`config_type`,`varname`),
  KEY `varname` (`varname`),
  KEY `customvariables_i_id_idx` (`instance_id`),
  KEY `cv_session_del_idx` (`session_token`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=latin1 COMMENT='Custom variables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_customvariables`
--

LOCK TABLES `icinga_customvariables` WRITE;
/*!40000 ALTER TABLE `icinga_customvariables` DISABLE KEYS */;
INSERT INTO `icinga_customvariables` VALUES (1,1,4,1,0,'by_ssh_address','$check_address$',0,1463462497),(2,1,4,1,0,'by_ssh_quiet','false',0,1463462497),(3,1,4,1,0,'check_address','Object of type \'Function\'',0,1463462497),(4,1,4,1,0,'check_ipv4','false',0,1463462497),(5,1,4,1,0,'check_ipv6','false',0,1463462497),(6,1,5,1,0,'clamd_mismatch','warn',0,1463462497),(7,1,5,1,0,'clamd_refuse','crit',0,1463462497),(8,1,5,1,0,'clamd_ssl','false',0,1463462497),(9,1,5,1,0,'clamd_timeout','10',0,1463462497),(10,1,7,1,0,'cluster_zone','$host.name$',0,1463462497),(11,1,8,1,0,'dhcp_unicast','false',0,1463462497),(12,1,9,1,0,'check_address','Object of type \'Function\'',0,1463462497),(13,1,9,1,0,'check_ipv4','false',0,1463462497),(14,1,9,1,0,'check_ipv6','false',0,1463462497),(15,1,9,1,0,'dig_server','$check_address$',0,1463462497),(16,1,10,1,0,'disk_cfree','10%',0,1463462497),(17,1,10,1,0,'disk_exclude_type','[\"none\",\"tmpfs\",\"sysfs\",\"proc\",\"devtmpfs\",\"devfs\",\"mtmfs\"]',1,1463462497),(18,1,10,1,0,'disk_inode_cfree','10%',0,1463462497),(19,1,10,1,0,'disk_inode_wfree','20%',0,1463462497),(20,1,10,1,0,'disk_megabytes','true',0,1463462497),(21,1,10,1,0,'disk_wfree','20%',0,1463462497),(22,1,11,1,0,'disk_smb_cused','95%',0,1463462497),(23,1,11,1,0,'disk_smb_wused','85%',0,1463462497),(24,1,12,1,0,'check_address','Object of type \'Function\'',0,1463462497),(25,1,12,1,0,'check_ipv4','false',0,1463462497),(26,1,12,1,0,'check_ipv6','false',0,1463462497),(27,1,12,1,0,'dns_expected_answer','$check_address$',0,1463462497),(28,1,12,1,0,'dns_lookup','$host.name$',0,1463462497),(29,1,12,1,0,'dns_timeout','10',0,1463462497),(30,1,13,1,0,'dummy_state','0',0,1463462497),(31,1,13,1,0,'dummy_text','Check was successful.',0,1463462497),(32,1,14,1,0,'fping_address','$address$',0,1463462497),(33,1,14,1,0,'fping_cpl','15',0,1463462497),(34,1,14,1,0,'fping_crta','200',0,1463462497),(35,1,14,1,0,'fping_interval','500',0,1463462497),(36,1,14,1,0,'fping_number','5',0,1463462497),(37,1,14,1,0,'fping_wpl','5',0,1463462497),(38,1,14,1,0,'fping_wrta','100',0,1463462497),(39,1,15,1,0,'fping_address','$address6$',0,1463462497),(40,1,15,1,0,'fping_cpl','15',0,1463462497),(41,1,15,1,0,'fping_crta','200',0,1463462497),(42,1,15,1,0,'fping_interval','500',0,1463462497),(43,1,15,1,0,'fping_number','5',0,1463462497),(44,1,15,1,0,'fping_wpl','5',0,1463462497),(45,1,15,1,0,'fping_wrta','100',0,1463462497),(46,1,16,1,0,'check_address','Object of type \'Function\'',0,1463462497),(47,1,16,1,0,'check_ipv4','false',0,1463462497),(48,1,16,1,0,'check_ipv6','false',0,1463462497),(49,1,16,1,0,'ftp_address','$check_address$',0,1463462497),(50,1,16,1,0,'ftp_mismatch','warn',0,1463462497),(51,1,16,1,0,'ftp_refuse','crit',0,1463462497),(52,1,16,1,0,'ftp_ssl','false',0,1463462497),(53,1,16,1,0,'ftp_timeout','10',0,1463462497),(54,1,17,1,0,'check_address','Object of type \'Function\'',0,1463462497),(55,1,17,1,0,'check_ipv4','false',0,1463462497),(56,1,17,1,0,'check_ipv6','false',0,1463462497),(57,1,17,1,0,'ping_address','$check_address$',0,1463462497),(58,1,17,1,0,'ping_cpl','100',0,1463462497),(59,1,17,1,0,'ping_crta','5000',0,1463462497),(60,1,17,1,0,'ping_wpl','80',0,1463462497),(61,1,17,1,0,'ping_wrta','3000',0,1463462497),(62,1,18,1,0,'ping_address','$address$',0,1463462497),(63,1,18,1,0,'ping_cpl','100',0,1463462497),(64,1,18,1,0,'ping_crta','5000',0,1463462497),(65,1,18,1,0,'ping_wpl','80',0,1463462497),(66,1,18,1,0,'ping_wrta','3000',0,1463462497),(67,1,19,1,0,'ping_address','$address6$',0,1463462497),(68,1,19,1,0,'ping_cpl','100',0,1463462497),(69,1,19,1,0,'ping_crta','5000',0,1463462497),(70,1,19,1,0,'ping_wpl','80',0,1463462497),(71,1,19,1,0,'ping_wrta','3000',0,1463462497),(72,1,20,1,0,'check_address','Object of type \'Function\'',0,1463462497),(73,1,20,1,0,'check_ipv4','false',0,1463462497),(74,1,20,1,0,'check_ipv6','false',0,1463462497),(75,1,20,1,0,'hpjd_address','$check_address$',0,1463462497),(76,1,21,1,0,'check_address','Object of type \'Function\'',0,1463462497),(77,1,21,1,0,'check_ipv4','$http_ipv4$',0,1463462497),(78,1,21,1,0,'check_ipv6','$http_ipv6$',0,1463462497),(79,1,21,1,0,'http_address','$check_address$',0,1463462497),(80,1,21,1,0,'http_invertregex','false',0,1463462497),(81,1,21,1,0,'http_linespan','false',0,1463462497),(82,1,21,1,0,'http_sni','false',0,1463462497),(83,1,21,1,0,'http_ssl','false',0,1463462497),(84,1,23,1,0,'icmp_address','$address$',0,1463462497),(85,1,23,1,0,'icmp_cpl','15',0,1463462497),(86,1,23,1,0,'icmp_crta','200',0,1463462497),(87,1,23,1,0,'icmp_wpl','5',0,1463462497),(88,1,23,1,0,'icmp_wrta','100',0,1463462497),(89,1,25,1,0,'check_address','Object of type \'Function\'',0,1463462497),(90,1,25,1,0,'check_ipv4','false',0,1463462497),(91,1,25,1,0,'check_ipv6','false',0,1463462497),(92,1,25,1,0,'imap_address','$check_address$',0,1463462497),(93,1,26,1,0,'check_address','Object of type \'Function\'',0,1463462497),(94,1,26,1,0,'check_ipv4','false',0,1463462497),(95,1,26,1,0,'check_ipv6','false',0,1463462497),(96,1,26,1,0,'ldap_address','$check_address$',0,1463462497),(97,1,26,1,0,'ldap_timeout','10',0,1463462497),(98,1,26,1,0,'ldap_v2','true',0,1463462497),(99,1,26,1,0,'ldap_v3','false',0,1463462497),(100,1,26,1,0,'ldap_verbose','false',0,1463462497),(101,1,27,1,0,'load_cload1','10',0,1463462497),(102,1,27,1,0,'load_cload15','4',0,1463462497),(103,1,27,1,0,'load_cload5','6',0,1463462497),(104,1,27,1,0,'load_percpu','false',0,1463462497),(105,1,27,1,0,'load_wload1','5',0,1463462497),(106,1,27,1,0,'load_wload15','3',0,1463462497),(107,1,27,1,0,'load_wload5','4',0,1463462497),(108,1,29,1,0,'check_address','Object of type \'Function\'',0,1463462497),(109,1,29,1,0,'check_ipv4','false',0,1463462497),(110,1,29,1,0,'check_ipv6','false',0,1463462497),(111,1,29,1,0,'mysql_hostname','$check_address$',0,1463462497),(112,1,30,1,0,'negate_timeout_result','UNKNOWN',0,1463462497),(113,1,31,1,0,'check_address','Object of type \'Function\'',0,1463462497),(114,1,31,1,0,'check_ipv4','$nrpe_ipv4$',0,1463462497),(115,1,31,1,0,'check_ipv6','$nrpe_ipv6$',0,1463462497),(116,1,31,1,0,'nrpe_address','$check_address$',0,1463462497),(117,1,31,1,0,'nrpe_no_ssl','false',0,1463462497),(118,1,31,1,0,'nrpe_timeout_unknown','false',0,1463462497),(119,1,32,1,0,'check_address','Object of type \'Function\'',0,1463462497),(120,1,32,1,0,'check_ipv4','false',0,1463462497),(121,1,32,1,0,'check_ipv6','false',0,1463462497),(122,1,32,1,0,'nscp_address','$check_address$',0,1463462497),(123,1,32,1,0,'nscp_port','12489',0,1463462497),(124,1,32,1,0,'nscp_showall','false',0,1463462497),(125,1,33,1,0,'check_address','Object of type \'Function\'',0,1463462497),(126,1,33,1,0,'check_ipv4','false',0,1463462497),(127,1,33,1,0,'check_ipv6','false',0,1463462497),(128,1,33,1,0,'ntp_address','$check_address$',0,1463462497),(129,1,34,1,0,'check_address','Object of type \'Function\'',0,1463462497),(130,1,34,1,0,'check_ipv4','false',0,1463462497),(131,1,34,1,0,'check_ipv6','false',0,1463462497),(132,1,34,1,0,'ntp_address','$check_address$',0,1463462497),(133,1,35,1,0,'dummy_state','3',0,1463462497),(134,1,35,1,0,'dummy_text','No Passive Check Result Received.',0,1463462497),(135,1,36,1,0,'check_address','Object of type \'Function\'',0,1463462497),(136,1,36,1,0,'check_ipv4','false',0,1463462497),(137,1,36,1,0,'check_ipv6','false',0,1463462497),(138,1,36,1,0,'pgsql_hostname','$check_address$',0,1463462497),(139,1,37,1,0,'check_address','Object of type \'Function\'',0,1463462497),(140,1,37,1,0,'check_ipv4','false',0,1463462497),(141,1,37,1,0,'check_ipv6','false',0,1463462497),(142,1,37,1,0,'ping_address','$check_address$',0,1463462497),(143,1,37,1,0,'ping_cpl','15',0,1463462497),(144,1,37,1,0,'ping_crta','200',0,1463462497),(145,1,37,1,0,'ping_wpl','5',0,1463462497),(146,1,37,1,0,'ping_wrta','100',0,1463462497),(147,1,38,1,0,'ping_address','$address$',0,1463462497),(148,1,38,1,0,'ping_cpl','15',0,1463462497),(149,1,38,1,0,'ping_crta','200',0,1463462497),(150,1,38,1,0,'ping_wpl','5',0,1463462497),(151,1,38,1,0,'ping_wrta','100',0,1463462497),(152,1,39,1,0,'ping_address','$address6$',0,1463462497),(153,1,39,1,0,'ping_cpl','15',0,1463462497),(154,1,39,1,0,'ping_crta','200',0,1463462497),(155,1,39,1,0,'ping_wpl','5',0,1463462497),(156,1,39,1,0,'ping_wrta','100',0,1463462497),(157,1,40,1,0,'check_address','Object of type \'Function\'',0,1463462497),(158,1,40,1,0,'check_ipv4','false',0,1463462497),(159,1,40,1,0,'check_ipv6','false',0,1463462497),(160,1,40,1,0,'pop_address','$check_address$',0,1463462497),(161,1,41,1,0,'procs_critical','400',0,1463462497),(162,1,41,1,0,'procs_nokthreads','false',0,1463462497),(163,1,41,1,0,'procs_traditional','false',0,1463462497),(164,1,41,1,0,'procs_warning','250',0,1463462497),(165,1,43,1,0,'check_address','Object of type \'Function\'',0,1463462497),(166,1,43,1,0,'check_ipv4','false',0,1463462497),(167,1,43,1,0,'check_ipv6','false',0,1463462497),(168,1,43,1,0,'simap_address','$check_address$',0,1463462497),(169,1,44,1,0,'check_address','Object of type \'Function\'',0,1463462497),(170,1,44,1,0,'check_ipv4','false',0,1463462497),(171,1,44,1,0,'check_ipv6','false',0,1463462497),(172,1,44,1,0,'smtp_address','$check_address$',0,1463462497),(173,1,45,1,0,'snmp_address','Object of type \'Function\'',0,1463462497),(174,1,45,1,0,'snmp_community','public',0,1463462497),(175,1,45,1,0,'snmp_invert_search','false',0,1463462497),(176,1,45,1,0,'snmp_timeout','10',0,1463462497),(177,1,46,1,0,'snmp_address','Object of type \'Function\'',0,1463462497),(178,1,46,1,0,'snmp_community','public',0,1463462497),(179,1,46,1,0,'snmp_invert_search','false',0,1463462497),(180,1,46,1,0,'snmp_oid','1.3.6.1.2.1.1.3.0',0,1463462497),(181,1,46,1,0,'snmp_timeout','10',0,1463462497),(182,1,47,1,0,'check_address','Object of type \'Function\'',0,1463462497),(183,1,47,1,0,'check_ipv4','false',0,1463462497),(184,1,47,1,0,'check_ipv6','false',0,1463462497),(185,1,47,1,0,'snmpv3_address','$check_address$',0,1463462497),(186,1,47,1,0,'snmpv3_auth_alg','SHA',0,1463462497),(187,1,47,1,0,'snmpv3_priv_alg','AES',0,1463462497),(188,1,47,1,0,'snmpv3_seclevel','authPriv',0,1463462497),(189,1,47,1,0,'snmpv3_timeout','10',0,1463462497),(190,1,48,1,0,'check_address','Object of type \'Function\'',0,1463462497),(191,1,48,1,0,'check_ipv4','false',0,1463462497),(192,1,48,1,0,'check_ipv6','false',0,1463462497),(193,1,48,1,0,'spop_address','$check_address$',0,1463462497),(194,1,49,1,0,'check_address','Object of type \'Function\'',0,1463462497),(195,1,49,1,0,'check_ipv4','false',0,1463462497),(196,1,49,1,0,'check_ipv6','false',0,1463462497),(197,1,49,1,0,'ssh_address','$check_address$',0,1463462497),(198,1,50,1,0,'check_address','Object of type \'Function\'',0,1463462497),(199,1,50,1,0,'check_ipv4','false',0,1463462497),(200,1,50,1,0,'check_ipv6','false',0,1463462497),(201,1,50,1,0,'ssl_address','$check_address$',0,1463462497),(202,1,51,1,0,'check_address','Object of type \'Function\'',0,1463462497),(203,1,51,1,0,'check_ipv4','false',0,1463462497),(204,1,51,1,0,'check_ipv6','false',0,1463462497),(205,1,51,1,0,'ssmtp_address','$check_address$',0,1463462497),(206,1,52,1,0,'swap_cfree','25',0,1463462497),(207,1,52,1,0,'swap_wfree','50',0,1463462497),(208,1,53,1,0,'check_address','Object of type \'Function\'',0,1463462497),(209,1,53,1,0,'check_ipv4','$tcp_ipv4$',0,1463462497),(210,1,53,1,0,'check_ipv6','$tcp_ipv6$',0,1463462497),(211,1,53,1,0,'tcp_address','$check_address$',0,1463462497),(212,1,53,1,0,'tcp_all','false',0,1463462497),(213,1,53,1,0,'tcp_mismatch','warn',0,1463462497),(214,1,53,1,0,'tcp_refuse','crit',0,1463462497),(215,1,53,1,0,'tcp_timeout','10',0,1463462497),(216,1,54,1,0,'check_address','Object of type \'Function\'',0,1463462497),(217,1,54,1,0,'check_ipv4','$udp_ipv4$',0,1463462497),(218,1,54,1,0,'check_ipv6','$udp_ipv6$',0,1463462497),(219,1,54,1,0,'udp_address','$check_address$',0,1463462497),(220,1,55,1,0,'check_address','Object of type \'Function\'',0,1463462497),(221,1,55,1,0,'check_ipv4','false',0,1463462497),(222,1,55,1,0,'check_ipv6','false',0,1463462497),(223,1,55,1,0,'ups_address','$check_address$',0,1463462497),(224,1,55,1,0,'ups_name','ups',0,1463462497),(225,1,56,1,0,'users_cgreater','50',0,1463462497),(226,1,56,1,0,'users_wgreater','20',0,1463462497),(227,1,67,1,0,'disks','{\"disk\":{},\"disk /\":{\"disk_partitions\":\"/\"}}',1,1463462497),(228,1,67,1,0,'http_vhosts','{\"Icinga Web 2\":{\"http_uri\":\"/icingaweb2\"}}',1,1463462497),(229,1,67,1,0,'notification','{\"mail\":{\"groups\":[\"icingaadmins\"]}}',1,1463462497),(230,1,67,1,0,'os','Linux',0,1463462497),(232,1,75,1,0,'disk_partitions','/',0,1463462497),(233,1,77,1,0,'backup_downtime','02:00-03:00',0,1463462497),(234,1,85,1,0,'http_uri','/icingaweb2',0,1463462497),(235,1,90,1,0,'disks','{\"disk\":{},\"disk /\":{\"disk_partitions\":\"/\"}}',1,1463462497),(236,1,90,1,0,'notification','{\"mail\":{\"groups\":[\"icingaadmins\"]}}',1,1463462497),(237,1,90,1,0,'os','Linux',0,1463462497),(238,1,91,1,0,'disks','{\"disk\":{},\"disk /\":{\"disk_partitions\":\"/\"}}',1,1463462497),(239,1,91,1,0,'notification','{\"mail\":{\"groups\":[\"icingaadmins\"]}}',1,1463462497),(240,1,91,1,0,'os','Linux',0,1463462497),(241,1,95,1,0,'disk_partitions','/',0,1463462497),(242,1,99,1,0,'disk_partitions','/',0,1463462497),(243,1,106,1,0,'mysql_check_slave','false',0,1463462497),(244,1,106,1,0,'mysql_host','$address$',0,1463462497),(245,1,106,1,0,'mysql_ssl','false',0,1463462497),(246,1,90,1,0,'mysql_user','api',0,1463462497);
/*!40000 ALTER TABLE `icinga_customvariables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_customvariablestatus`
--

DROP TABLE IF EXISTS `icinga_customvariablestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_customvariablestatus` (
  `customvariablestatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `has_been_modified` smallint(6) DEFAULT '0',
  `varname` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `varvalue` text,
  `is_json` smallint(6) DEFAULT '0',
  `session_token` int(11) DEFAULT NULL,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`customvariablestatus_id`),
  UNIQUE KEY `object_id_2` (`object_id`,`varname`),
  KEY `varname` (`varname`),
  KEY `customvariablestatus_i_id_idx` (`instance_id`),
  KEY `cvs_session_del_idx` (`session_token`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=latin1 COMMENT='Custom variable status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_customvariablestatus`
--

LOCK TABLES `icinga_customvariablestatus` WRITE;
/*!40000 ALTER TABLE `icinga_customvariablestatus` DISABLE KEYS */;
INSERT INTO `icinga_customvariablestatus` VALUES (1,1,4,'2016-05-17 05:21:37',0,'by_ssh_address','$check_address$',0,1463462497,NULL),(2,1,4,'2016-05-17 05:21:37',0,'by_ssh_quiet','false',0,1463462497,NULL),(3,1,4,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(4,1,4,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(5,1,4,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(6,1,5,'2016-05-17 05:21:37',0,'clamd_mismatch','warn',0,1463462497,NULL),(7,1,5,'2016-05-17 05:21:37',0,'clamd_refuse','crit',0,1463462497,NULL),(8,1,5,'2016-05-17 05:21:37',0,'clamd_ssl','false',0,1463462497,NULL),(9,1,5,'2016-05-17 05:21:37',0,'clamd_timeout','10',0,1463462497,NULL),(10,1,7,'2016-05-17 05:21:37',0,'cluster_zone','$host.name$',0,1463462497,NULL),(11,1,8,'2016-05-17 05:21:37',0,'dhcp_unicast','false',0,1463462497,NULL),(12,1,9,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(13,1,9,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(14,1,9,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(15,1,9,'2016-05-17 05:21:37',0,'dig_server','$check_address$',0,1463462497,NULL),(16,1,10,'2016-05-17 05:21:37',0,'disk_cfree','10%',0,1463462497,NULL),(17,1,10,'2016-05-17 05:21:37',0,'disk_exclude_type','[\"none\",\"tmpfs\",\"sysfs\",\"proc\",\"devtmpfs\",\"devfs\",\"mtmfs\"]',1,1463462497,NULL),(18,1,10,'2016-05-17 05:21:37',0,'disk_inode_cfree','10%',0,1463462497,NULL),(19,1,10,'2016-05-17 05:21:37',0,'disk_inode_wfree','20%',0,1463462497,NULL),(20,1,10,'2016-05-17 05:21:37',0,'disk_megabytes','true',0,1463462497,NULL),(21,1,10,'2016-05-17 05:21:37',0,'disk_wfree','20%',0,1463462497,NULL),(22,1,11,'2016-05-17 05:21:37',0,'disk_smb_cused','95%',0,1463462497,NULL),(23,1,11,'2016-05-17 05:21:37',0,'disk_smb_wused','85%',0,1463462497,NULL),(24,1,12,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(25,1,12,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(26,1,12,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(27,1,12,'2016-05-17 05:21:37',0,'dns_expected_answer','$check_address$',0,1463462497,NULL),(28,1,12,'2016-05-17 05:21:37',0,'dns_lookup','$host.name$',0,1463462497,NULL),(29,1,12,'2016-05-17 05:21:37',0,'dns_timeout','10',0,1463462497,NULL),(30,1,13,'2016-05-17 05:21:37',0,'dummy_state','0',0,1463462497,NULL),(31,1,13,'2016-05-17 05:21:37',0,'dummy_text','Check was successful.',0,1463462497,NULL),(32,1,14,'2016-05-17 05:21:37',0,'fping_address','$address$',0,1463462497,NULL),(33,1,14,'2016-05-17 05:21:37',0,'fping_cpl','15',0,1463462497,NULL),(34,1,14,'2016-05-17 05:21:37',0,'fping_crta','200',0,1463462497,NULL),(35,1,14,'2016-05-17 05:21:37',0,'fping_interval','500',0,1463462497,NULL),(36,1,14,'2016-05-17 05:21:37',0,'fping_number','5',0,1463462497,NULL),(37,1,14,'2016-05-17 05:21:37',0,'fping_wpl','5',0,1463462497,NULL),(38,1,14,'2016-05-17 05:21:37',0,'fping_wrta','100',0,1463462497,NULL),(39,1,15,'2016-05-17 05:21:37',0,'fping_address','$address6$',0,1463462497,NULL),(40,1,15,'2016-05-17 05:21:37',0,'fping_cpl','15',0,1463462497,NULL),(41,1,15,'2016-05-17 05:21:37',0,'fping_crta','200',0,1463462497,NULL),(42,1,15,'2016-05-17 05:21:37',0,'fping_interval','500',0,1463462497,NULL),(43,1,15,'2016-05-17 05:21:37',0,'fping_number','5',0,1463462497,NULL),(44,1,15,'2016-05-17 05:21:37',0,'fping_wpl','5',0,1463462497,NULL),(45,1,15,'2016-05-17 05:21:37',0,'fping_wrta','100',0,1463462497,NULL),(46,1,16,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(47,1,16,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(48,1,16,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(49,1,16,'2016-05-17 05:21:37',0,'ftp_address','$check_address$',0,1463462497,NULL),(50,1,16,'2016-05-17 05:21:37',0,'ftp_mismatch','warn',0,1463462497,NULL),(51,1,16,'2016-05-17 05:21:37',0,'ftp_refuse','crit',0,1463462497,NULL),(52,1,16,'2016-05-17 05:21:37',0,'ftp_ssl','false',0,1463462497,NULL),(53,1,16,'2016-05-17 05:21:37',0,'ftp_timeout','10',0,1463462497,NULL),(54,1,17,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(55,1,17,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(56,1,17,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(57,1,17,'2016-05-17 05:21:37',0,'ping_address','$check_address$',0,1463462497,NULL),(58,1,17,'2016-05-17 05:21:37',0,'ping_cpl','100',0,1463462497,NULL),(59,1,17,'2016-05-17 05:21:37',0,'ping_crta','5000',0,1463462497,NULL),(60,1,17,'2016-05-17 05:21:37',0,'ping_wpl','80',0,1463462497,NULL),(61,1,17,'2016-05-17 05:21:37',0,'ping_wrta','3000',0,1463462497,NULL),(62,1,18,'2016-05-17 05:21:37',0,'ping_address','$address$',0,1463462497,NULL),(63,1,18,'2016-05-17 05:21:37',0,'ping_cpl','100',0,1463462497,NULL),(64,1,18,'2016-05-17 05:21:37',0,'ping_crta','5000',0,1463462497,NULL),(65,1,18,'2016-05-17 05:21:37',0,'ping_wpl','80',0,1463462497,NULL),(66,1,18,'2016-05-17 05:21:37',0,'ping_wrta','3000',0,1463462497,NULL),(67,1,19,'2016-05-17 05:21:37',0,'ping_address','$address6$',0,1463462497,NULL),(68,1,19,'2016-05-17 05:21:37',0,'ping_cpl','100',0,1463462497,NULL),(69,1,19,'2016-05-17 05:21:37',0,'ping_crta','5000',0,1463462497,NULL),(70,1,19,'2016-05-17 05:21:37',0,'ping_wpl','80',0,1463462497,NULL),(71,1,19,'2016-05-17 05:21:37',0,'ping_wrta','3000',0,1463462497,NULL),(72,1,20,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(73,1,20,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(74,1,20,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(75,1,20,'2016-05-17 05:21:37',0,'hpjd_address','$check_address$',0,1463462497,NULL),(76,1,21,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(77,1,21,'2016-05-17 05:21:37',0,'check_ipv4','$http_ipv4$',0,1463462497,NULL),(78,1,21,'2016-05-17 05:21:37',0,'check_ipv6','$http_ipv6$',0,1463462497,NULL),(79,1,21,'2016-05-17 05:21:37',0,'http_address','$check_address$',0,1463462497,NULL),(80,1,21,'2016-05-17 05:21:37',0,'http_invertregex','false',0,1463462497,NULL),(81,1,21,'2016-05-17 05:21:37',0,'http_linespan','false',0,1463462497,NULL),(82,1,21,'2016-05-17 05:21:37',0,'http_sni','false',0,1463462497,NULL),(83,1,21,'2016-05-17 05:21:37',0,'http_ssl','false',0,1463462497,NULL),(84,1,23,'2016-05-17 05:21:37',0,'icmp_address','$address$',0,1463462497,NULL),(85,1,23,'2016-05-17 05:21:37',0,'icmp_cpl','15',0,1463462497,NULL),(86,1,23,'2016-05-17 05:21:37',0,'icmp_crta','200',0,1463462497,NULL),(87,1,23,'2016-05-17 05:21:37',0,'icmp_wpl','5',0,1463462497,NULL),(88,1,23,'2016-05-17 05:21:37',0,'icmp_wrta','100',0,1463462497,NULL),(89,1,25,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(90,1,25,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(91,1,25,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(92,1,25,'2016-05-17 05:21:37',0,'imap_address','$check_address$',0,1463462497,NULL),(93,1,26,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(94,1,26,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(95,1,26,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(96,1,26,'2016-05-17 05:21:37',0,'ldap_address','$check_address$',0,1463462497,NULL),(97,1,26,'2016-05-17 05:21:37',0,'ldap_timeout','10',0,1463462497,NULL),(98,1,26,'2016-05-17 05:21:37',0,'ldap_v2','true',0,1463462497,NULL),(99,1,26,'2016-05-17 05:21:37',0,'ldap_v3','false',0,1463462497,NULL),(100,1,26,'2016-05-17 05:21:37',0,'ldap_verbose','false',0,1463462497,NULL),(101,1,27,'2016-05-17 05:21:37',0,'load_cload1','10',0,1463462497,NULL),(102,1,27,'2016-05-17 05:21:37',0,'load_cload15','4',0,1463462497,NULL),(103,1,27,'2016-05-17 05:21:37',0,'load_cload5','6',0,1463462497,NULL),(104,1,27,'2016-05-17 05:21:37',0,'load_percpu','false',0,1463462497,NULL),(105,1,27,'2016-05-17 05:21:37',0,'load_wload1','5',0,1463462497,NULL),(106,1,27,'2016-05-17 05:21:37',0,'load_wload15','3',0,1463462497,NULL),(107,1,27,'2016-05-17 05:21:37',0,'load_wload5','4',0,1463462497,NULL),(108,1,29,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(109,1,29,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(110,1,29,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(111,1,29,'2016-05-17 05:21:37',0,'mysql_hostname','$check_address$',0,1463462497,NULL),(112,1,30,'2016-05-17 05:21:37',0,'negate_timeout_result','UNKNOWN',0,1463462497,NULL),(113,1,31,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(114,1,31,'2016-05-17 05:21:37',0,'check_ipv4','$nrpe_ipv4$',0,1463462497,NULL),(115,1,31,'2016-05-17 05:21:37',0,'check_ipv6','$nrpe_ipv6$',0,1463462497,NULL),(116,1,31,'2016-05-17 05:21:37',0,'nrpe_address','$check_address$',0,1463462497,NULL),(117,1,31,'2016-05-17 05:21:37',0,'nrpe_no_ssl','false',0,1463462497,NULL),(118,1,31,'2016-05-17 05:21:37',0,'nrpe_timeout_unknown','false',0,1463462497,NULL),(119,1,32,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(120,1,32,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(121,1,32,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(122,1,32,'2016-05-17 05:21:37',0,'nscp_address','$check_address$',0,1463462497,NULL),(123,1,32,'2016-05-17 05:21:37',0,'nscp_port','12489',0,1463462497,NULL),(124,1,32,'2016-05-17 05:21:37',0,'nscp_showall','false',0,1463462497,NULL),(125,1,33,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(126,1,33,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(127,1,33,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(128,1,33,'2016-05-17 05:21:37',0,'ntp_address','$check_address$',0,1463462497,NULL),(129,1,34,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(130,1,34,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(131,1,34,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(132,1,34,'2016-05-17 05:21:37',0,'ntp_address','$check_address$',0,1463462497,NULL),(133,1,35,'2016-05-17 05:21:37',0,'dummy_state','3',0,1463462497,NULL),(134,1,35,'2016-05-17 05:21:37',0,'dummy_text','No Passive Check Result Received.',0,1463462497,NULL),(135,1,36,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(136,1,36,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(137,1,36,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(138,1,36,'2016-05-17 05:21:37',0,'pgsql_hostname','$check_address$',0,1463462497,NULL),(139,1,37,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(140,1,37,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(141,1,37,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(142,1,37,'2016-05-17 05:21:37',0,'ping_address','$check_address$',0,1463462497,NULL),(143,1,37,'2016-05-17 05:21:37',0,'ping_cpl','15',0,1463462497,NULL),(144,1,37,'2016-05-17 05:21:37',0,'ping_crta','200',0,1463462497,NULL),(145,1,37,'2016-05-17 05:21:37',0,'ping_wpl','5',0,1463462497,NULL),(146,1,37,'2016-05-17 05:21:37',0,'ping_wrta','100',0,1463462497,NULL),(147,1,38,'2016-05-17 05:21:37',0,'ping_address','$address$',0,1463462497,NULL),(148,1,38,'2016-05-17 05:21:37',0,'ping_cpl','15',0,1463462497,NULL),(149,1,38,'2016-05-17 05:21:37',0,'ping_crta','200',0,1463462497,NULL),(150,1,38,'2016-05-17 05:21:37',0,'ping_wpl','5',0,1463462497,NULL),(151,1,38,'2016-05-17 05:21:37',0,'ping_wrta','100',0,1463462497,NULL),(152,1,39,'2016-05-17 05:21:37',0,'ping_address','$address6$',0,1463462497,NULL),(153,1,39,'2016-05-17 05:21:37',0,'ping_cpl','15',0,1463462497,NULL),(154,1,39,'2016-05-17 05:21:37',0,'ping_crta','200',0,1463462497,NULL),(155,1,39,'2016-05-17 05:21:37',0,'ping_wpl','5',0,1463462497,NULL),(156,1,39,'2016-05-17 05:21:37',0,'ping_wrta','100',0,1463462497,NULL),(157,1,40,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(158,1,40,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(159,1,40,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(160,1,40,'2016-05-17 05:21:37',0,'pop_address','$check_address$',0,1463462497,NULL),(161,1,41,'2016-05-17 05:21:37',0,'procs_critical','400',0,1463462497,NULL),(162,1,41,'2016-05-17 05:21:37',0,'procs_nokthreads','false',0,1463462497,NULL),(163,1,41,'2016-05-17 05:21:37',0,'procs_traditional','false',0,1463462497,NULL),(164,1,41,'2016-05-17 05:21:37',0,'procs_warning','250',0,1463462497,NULL),(165,1,43,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(166,1,43,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(167,1,43,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(168,1,43,'2016-05-17 05:21:37',0,'simap_address','$check_address$',0,1463462497,NULL),(169,1,44,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(170,1,44,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(171,1,44,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(172,1,44,'2016-05-17 05:21:37',0,'smtp_address','$check_address$',0,1463462497,NULL),(173,1,45,'2016-05-17 05:21:37',0,'snmp_address','Object of type \'Function\'',0,1463462497,NULL),(174,1,45,'2016-05-17 05:21:37',0,'snmp_community','public',0,1463462497,NULL),(175,1,45,'2016-05-17 05:21:37',0,'snmp_invert_search','false',0,1463462497,NULL),(176,1,45,'2016-05-17 05:21:37',0,'snmp_timeout','10',0,1463462497,NULL),(177,1,46,'2016-05-17 05:21:37',0,'snmp_address','Object of type \'Function\'',0,1463462497,NULL),(178,1,46,'2016-05-17 05:21:37',0,'snmp_community','public',0,1463462497,NULL),(179,1,46,'2016-05-17 05:21:37',0,'snmp_invert_search','false',0,1463462497,NULL),(180,1,46,'2016-05-17 05:21:37',0,'snmp_oid','1.3.6.1.2.1.1.3.0',0,1463462497,NULL),(181,1,46,'2016-05-17 05:21:37',0,'snmp_timeout','10',0,1463462497,NULL),(182,1,47,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(183,1,47,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(184,1,47,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(185,1,47,'2016-05-17 05:21:37',0,'snmpv3_address','$check_address$',0,1463462497,NULL),(186,1,47,'2016-05-17 05:21:37',0,'snmpv3_auth_alg','SHA',0,1463462497,NULL),(187,1,47,'2016-05-17 05:21:37',0,'snmpv3_priv_alg','AES',0,1463462497,NULL),(188,1,47,'2016-05-17 05:21:37',0,'snmpv3_seclevel','authPriv',0,1463462497,NULL),(189,1,47,'2016-05-17 05:21:37',0,'snmpv3_timeout','10',0,1463462497,NULL),(190,1,48,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(191,1,48,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(192,1,48,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(193,1,48,'2016-05-17 05:21:37',0,'spop_address','$check_address$',0,1463462497,NULL),(194,1,49,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(195,1,49,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(196,1,49,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(197,1,49,'2016-05-17 05:21:37',0,'ssh_address','$check_address$',0,1463462497,NULL),(198,1,50,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(199,1,50,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(200,1,50,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(201,1,50,'2016-05-17 05:21:37',0,'ssl_address','$check_address$',0,1463462497,NULL),(202,1,51,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(203,1,51,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(204,1,51,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(205,1,51,'2016-05-17 05:21:37',0,'ssmtp_address','$check_address$',0,1463462497,NULL),(206,1,52,'2016-05-17 05:21:37',0,'swap_cfree','25',0,1463462497,NULL),(207,1,52,'2016-05-17 05:21:37',0,'swap_wfree','50',0,1463462497,NULL),(208,1,53,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(209,1,53,'2016-05-17 05:21:37',0,'check_ipv4','$tcp_ipv4$',0,1463462497,NULL),(210,1,53,'2016-05-17 05:21:37',0,'check_ipv6','$tcp_ipv6$',0,1463462497,NULL),(211,1,53,'2016-05-17 05:21:37',0,'tcp_address','$check_address$',0,1463462497,NULL),(212,1,53,'2016-05-17 05:21:37',0,'tcp_all','false',0,1463462497,NULL),(213,1,53,'2016-05-17 05:21:37',0,'tcp_mismatch','warn',0,1463462497,NULL),(214,1,53,'2016-05-17 05:21:37',0,'tcp_refuse','crit',0,1463462497,NULL),(215,1,53,'2016-05-17 05:21:37',0,'tcp_timeout','10',0,1463462497,NULL),(216,1,54,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(217,1,54,'2016-05-17 05:21:37',0,'check_ipv4','$udp_ipv4$',0,1463462497,NULL),(218,1,54,'2016-05-17 05:21:37',0,'check_ipv6','$udp_ipv6$',0,1463462497,NULL),(219,1,54,'2016-05-17 05:21:37',0,'udp_address','$check_address$',0,1463462497,NULL),(220,1,55,'2016-05-17 05:21:37',0,'check_address','Object of type \'Function\'',0,1463462497,NULL),(221,1,55,'2016-05-17 05:21:37',0,'check_ipv4','false',0,1463462497,NULL),(222,1,55,'2016-05-17 05:21:37',0,'check_ipv6','false',0,1463462497,NULL),(223,1,55,'2016-05-17 05:21:37',0,'ups_address','$check_address$',0,1463462497,NULL),(224,1,55,'2016-05-17 05:21:37',0,'ups_name','ups',0,1463462497,NULL),(225,1,56,'2016-05-17 05:21:37',0,'users_cgreater','50',0,1463462497,NULL),(226,1,56,'2016-05-17 05:21:37',0,'users_wgreater','20',0,1463462497,NULL),(227,1,67,'2016-05-17 05:21:37',0,'disks','{\"disk\":{},\"disk /\":{\"disk_partitions\":\"/\"}}',1,1463462497,NULL),(228,1,67,'2016-05-17 05:21:37',0,'http_vhosts','{\"Icinga Web 2\":{\"http_uri\":\"/icingaweb2\"}}',1,1463462497,NULL),(229,1,67,'2016-05-17 05:21:37',0,'notification','{\"mail\":{\"groups\":[\"icingaadmins\"]}}',1,1463462497,NULL),(230,1,67,'2016-05-17 05:21:37',0,'os','Linux',0,1463462497,NULL),(232,1,75,'2016-05-17 05:21:37',0,'disk_partitions','/',0,1463462497,NULL),(233,1,77,'2016-05-17 05:21:37',0,'backup_downtime','02:00-03:00',0,1463462497,NULL),(234,1,85,'2016-05-17 05:21:37',0,'http_uri','/icingaweb2',0,1463462497,NULL),(235,1,90,'2016-05-17 05:21:37',0,'disks','{\"disk\":{},\"disk /\":{\"disk_partitions\":\"/\"}}',1,1463462497,NULL),(236,1,90,'2016-05-17 05:21:37',0,'notification','{\"mail\":{\"groups\":[\"icingaadmins\"]}}',1,1463462497,NULL),(237,1,90,'2016-05-17 05:21:37',0,'os','Linux',0,1463462497,NULL),(238,1,91,'2016-05-17 05:21:37',0,'disks','{\"disk\":{},\"disk /\":{\"disk_partitions\":\"/\"}}',1,1463462497,NULL),(239,1,91,'2016-05-17 05:21:37',0,'notification','{\"mail\":{\"groups\":[\"icingaadmins\"]}}',1,1463462497,NULL),(240,1,91,'2016-05-17 05:21:37',0,'os','Linux',0,1463462497,NULL),(241,1,95,'2016-05-17 05:21:37',0,'disk_partitions','/',0,1463462497,NULL),(242,1,99,'2016-05-17 05:21:37',0,'disk_partitions','/',0,1463462497,NULL),(243,1,106,'2016-05-17 05:21:37',0,'mysql_check_slave','false',0,1463462497,NULL),(244,1,106,'2016-05-17 05:21:37',0,'mysql_host','$address$',0,1463462497,NULL),(245,1,106,'2016-05-17 05:21:37',0,'mysql_ssl','false',0,1463462497,NULL),(246,1,90,'2016-05-17 05:21:37',0,'mysql_user','api',0,1463462497,NULL);
/*!40000 ALTER TABLE `icinga_customvariablestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_dbversion`
--

DROP TABLE IF EXISTS `icinga_dbversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_dbversion` (
  `dbversion_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT '',
  `version` varchar(10) DEFAULT '',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modify_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`dbversion_id`),
  UNIQUE KEY `dbversion` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_dbversion`
--

LOCK TABLES `icinga_dbversion` WRITE;
/*!40000 ALTER TABLE `icinga_dbversion` DISABLE KEYS */;
INSERT INTO `icinga_dbversion` VALUES (1,'idoutils','1.14.0','2016-05-17 00:43:02','2016-05-17 00:43:02');
/*!40000 ALTER TABLE `icinga_dbversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_downtimehistory`
--

DROP TABLE IF EXISTS `icinga_downtimehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_downtimehistory` (
  `downtimehistory_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `downtime_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `internal_downtime_id` bigint(20) unsigned DEFAULT '0',
  `triggered_by_id` bigint(20) unsigned DEFAULT '0',
  `is_fixed` smallint(6) DEFAULT '0',
  `duration` bigint(20) DEFAULT '0',
  `scheduled_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `was_started` smallint(6) DEFAULT '0',
  `actual_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actual_start_time_usec` int(11) DEFAULT '0',
  `actual_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actual_end_time_usec` int(11) DEFAULT '0',
  `was_cancelled` smallint(6) DEFAULT '0',
  `is_in_effect` smallint(6) DEFAULT '0',
  `trigger_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`downtimehistory_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`entry_time`,`internal_downtime_id`),
  KEY `sla_idx_dohist` (`object_id`,`actual_start_time`,`actual_end_time`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Historical scheduled host and service downtime';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_downtimehistory`
--

LOCK TABLES `icinga_downtimehistory` WRITE;
/*!40000 ALTER TABLE `icinga_downtimehistory` DISABLE KEYS */;
INSERT INTO `icinga_downtimehistory` VALUES (1,1,1,77,'2016-05-17 06:00:37','icingaadmin','Scheduled downtime for backup',2,0,1,0,'2016-05-18 06:00:00','2016-05-18 07:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,0,0,'0000-00-00 00:00:00','icinga-xover!load!icinga-xover-1463464837-0',1),(2,1,1,77,'2016-05-18 06:00:38','icingaadmin','Scheduled downtime for backup',3,0,1,0,'2016-05-19 06:00:00','2016-05-19 07:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,0,0,'0000-00-00 00:00:00','icinga-xover!load!icinga-xover-1463551238-1',1),(3,1,1,77,'2016-05-19 06:00:39','icingaadmin','Scheduled downtime for backup',4,0,1,0,'2016-05-20 06:00:00','2016-05-20 07:00:00',0,'0000-00-00 00:00:00',0,'0000-00-00 00:00:00',0,0,0,'0000-00-00 00:00:00','icinga-xover!load!icinga-xover-1463637639-2',1);
/*!40000 ALTER TABLE `icinga_downtimehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_endpoints`
--

DROP TABLE IF EXISTS `icinga_endpoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_endpoints` (
  `endpoint_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `endpoint_object_id` bigint(20) unsigned DEFAULT '0',
  `zone_object_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `identity` varchar(255) DEFAULT NULL,
  `node` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`endpoint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Endpoint configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_endpoints`
--

LOCK TABLES `icinga_endpoints` WRITE;
/*!40000 ALTER TABLE `icinga_endpoints` DISABLE KEYS */;
INSERT INTO `icinga_endpoints` VALUES (1,1,1,2,1,'icinga-xover','icinga-xover');
/*!40000 ALTER TABLE `icinga_endpoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_endpointstatus`
--

DROP TABLE IF EXISTS `icinga_endpointstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_endpointstatus` (
  `endpointstatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `endpoint_object_id` bigint(20) unsigned DEFAULT '0',
  `zone_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `identity` varchar(255) DEFAULT NULL,
  `node` varchar(255) DEFAULT NULL,
  `is_connected` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`endpointstatus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Endpoint status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_endpointstatus`
--

LOCK TABLES `icinga_endpointstatus` WRITE;
/*!40000 ALTER TABLE `icinga_endpointstatus` DISABLE KEYS */;
INSERT INTO `icinga_endpointstatus` VALUES (1,1,1,2,'2016-05-17 05:21:37','icinga-xover','icinga-xover',1);
/*!40000 ALTER TABLE `icinga_endpointstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_eventhandlers`
--

DROP TABLE IF EXISTS `icinga_eventhandlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_eventhandlers` (
  `eventhandler_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `eventhandler_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `state_type` smallint(6) DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` text,
  `command_line` text,
  `timeout` smallint(6) DEFAULT '0',
  `early_timeout` smallint(6) DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `return_code` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`eventhandler_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`start_time`,`start_time_usec`),
  KEY `eventhandlers_i_id_idx` (`instance_id`),
  KEY `eventhandlers_time_id_idx` (`start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical host and service event handlers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_eventhandlers`
--

LOCK TABLES `icinga_eventhandlers` WRITE;
/*!40000 ALTER TABLE `icinga_eventhandlers` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_eventhandlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_externalcommands`
--

DROP TABLE IF EXISTS `icinga_externalcommands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_externalcommands` (
  `externalcommand_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `command_type` smallint(6) DEFAULT '0',
  `command_name` varchar(128) DEFAULT '',
  `command_args` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`externalcommand_id`),
  KEY `externalcommands_i_id_idx` (`instance_id`),
  KEY `externalcommands_time_id_idx` (`entry_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical record of processed external commands';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_externalcommands`
--

LOCK TABLES `icinga_externalcommands` WRITE;
/*!40000 ALTER TABLE `icinga_externalcommands` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_externalcommands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_flappinghistory`
--

DROP TABLE IF EXISTS `icinga_flappinghistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_flappinghistory` (
  `flappinghistory_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `event_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `event_time_usec` int(11) DEFAULT '0',
  `event_type` smallint(6) DEFAULT '0',
  `reason_type` smallint(6) DEFAULT '0',
  `flapping_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `percent_state_change` double DEFAULT '0',
  `low_threshold` double DEFAULT '0',
  `high_threshold` double DEFAULT '0',
  `comment_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `internal_comment_id` bigint(20) unsigned DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`flappinghistory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Current and historical record of host and service flapping';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_flappinghistory`
--

LOCK TABLES `icinga_flappinghistory` WRITE;
/*!40000 ALTER TABLE `icinga_flappinghistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_flappinghistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host_contactgroups`
--

DROP TABLE IF EXISTS `icinga_host_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host_contactgroups` (
  `host_contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`host_contactgroup_id`),
  KEY `host_contactgroups_i_id_idx` (`instance_id`),
  KEY `hstcntgrps_hid_cgoid` (`host_id`,`contactgroup_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COMMENT='Host contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_contactgroups`
--

LOCK TABLES `icinga_host_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_host_contactgroups` DISABLE KEYS */;
INSERT INTO `icinga_host_contactgroups` VALUES (17,1,1,69),(18,1,2,69),(19,1,3,69);
/*!40000 ALTER TABLE `icinga_host_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host_contacts`
--

DROP TABLE IF EXISTS `icinga_host_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host_contacts` (
  `host_contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`host_contact_id`),
  KEY `host_contacts_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COMMENT='Host contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_contacts`
--

LOCK TABLES `icinga_host_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_host_contacts` DISABLE KEYS */;
INSERT INTO `icinga_host_contacts` VALUES (17,1,1,68),(18,1,2,68),(19,1,3,68);
/*!40000 ALTER TABLE `icinga_host_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_host_parenthosts`
--

DROP TABLE IF EXISTS `icinga_host_parenthosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_host_parenthosts` (
  `host_parenthost_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_id` bigint(20) unsigned DEFAULT '0',
  `parent_host_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`host_parenthost_id`),
  KEY `host_parenthosts_i_id_idx` (`instance_id`),
  KEY `hstprnthsts_hid_phoid` (`host_id`,`parent_host_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Parent hosts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_host_parenthosts`
--

LOCK TABLES `icinga_host_parenthosts` WRITE;
/*!40000 ALTER TABLE `icinga_host_parenthosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_host_parenthosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostchecks`
--

DROP TABLE IF EXISTS `icinga_hostchecks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostchecks` (
  `hostcheck_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `check_type` smallint(6) DEFAULT '0',
  `is_raw_check` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `state_type` smallint(6) DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` text,
  `command_line` text,
  `timeout` smallint(6) DEFAULT '0',
  `early_timeout` smallint(6) DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `latency` double DEFAULT '0',
  `return_code` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `perfdata` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`hostcheck_id`),
  KEY `hostchecks_i_id_idx` (`instance_id`),
  KEY `hostchecks_time_id_idx` (`start_time`),
  KEY `hostchks_h_obj_id_idx` (`host_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical host checks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostchecks`
--

LOCK TABLES `icinga_hostchecks` WRITE;
/*!40000 ALTER TABLE `icinga_hostchecks` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostchecks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostdependencies`
--

DROP TABLE IF EXISTS `icinga_hostdependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostdependencies` (
  `hostdependency_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `dependent_host_object_id` bigint(20) unsigned DEFAULT '0',
  `dependency_type` smallint(6) DEFAULT '0',
  `inherits_parent` smallint(6) DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `fail_on_up` smallint(6) DEFAULT '0',
  `fail_on_down` smallint(6) DEFAULT '0',
  `fail_on_unreachable` smallint(6) DEFAULT '0',
  PRIMARY KEY (`hostdependency_id`),
  KEY `instance_id` (`instance_id`,`config_type`,`host_object_id`,`dependent_host_object_id`,`dependency_type`,`inherits_parent`,`fail_on_up`,`fail_on_down`,`fail_on_unreachable`),
  KEY `hostdependencies_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Host dependency definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostdependencies`
--

LOCK TABLES `icinga_hostdependencies` WRITE;
/*!40000 ALTER TABLE `icinga_hostdependencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostdependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostescalation_contactgroups`
--

DROP TABLE IF EXISTS `icinga_hostescalation_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostescalation_contactgroups` (
  `hostescalation_contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `hostescalation_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`hostescalation_contactgroup_id`),
  UNIQUE KEY `instance_id` (`hostescalation_id`,`contactgroup_object_id`),
  KEY `hostesc_cgroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Host escalation contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostescalation_contactgroups`
--

LOCK TABLES `icinga_hostescalation_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_hostescalation_contactgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostescalation_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostescalation_contacts`
--

DROP TABLE IF EXISTS `icinga_hostescalation_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostescalation_contacts` (
  `hostescalation_contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `hostescalation_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`hostescalation_contact_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`hostescalation_id`,`contact_object_id`),
  KEY `hostesc_contacts_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Host escalation contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostescalation_contacts`
--

LOCK TABLES `icinga_hostescalation_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_hostescalation_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostescalation_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostescalations`
--

DROP TABLE IF EXISTS `icinga_hostescalations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostescalations` (
  `hostescalation_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `first_notification` smallint(6) DEFAULT '0',
  `last_notification` smallint(6) DEFAULT '0',
  `notification_interval` double DEFAULT '0',
  `escalate_on_recovery` smallint(6) DEFAULT '0',
  `escalate_on_down` smallint(6) DEFAULT '0',
  `escalate_on_unreachable` smallint(6) DEFAULT '0',
  PRIMARY KEY (`hostescalation_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`host_object_id`,`timeperiod_object_id`,`first_notification`,`last_notification`),
  KEY `hostesc_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Host escalation definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostescalations`
--

LOCK TABLES `icinga_hostescalations` WRITE;
/*!40000 ALTER TABLE `icinga_hostescalations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_hostescalations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostgroup_members`
--

DROP TABLE IF EXISTS `icinga_hostgroup_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostgroup_members` (
  `hostgroup_member_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `hostgroup_id` bigint(20) unsigned DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`hostgroup_member_id`),
  KEY `hostgroup_members_i_id_idx` (`instance_id`),
  KEY `hstgrpmbrs_hgid_hoid` (`hostgroup_id`,`host_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COMMENT='Hostgroup members';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostgroup_members`
--

LOCK TABLES `icinga_hostgroup_members` WRITE;
/*!40000 ALTER TABLE `icinga_hostgroup_members` DISABLE KEYS */;
INSERT INTO `icinga_hostgroup_members` VALUES (17,1,1,67),(18,1,1,90),(19,1,1,91);
/*!40000 ALTER TABLE `icinga_hostgroup_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hostgroups`
--

DROP TABLE IF EXISTS `icinga_hostgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hostgroups` (
  `hostgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `hostgroup_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` text,
  `notes` text,
  `notes_url` text,
  `action_url` text,
  PRIMARY KEY (`hostgroup_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`hostgroup_object_id`),
  KEY `hostgroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='Hostgroup definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hostgroups`
--

LOCK TABLES `icinga_hostgroups` WRITE;
/*!40000 ALTER TABLE `icinga_hostgroups` DISABLE KEYS */;
INSERT INTO `icinga_hostgroups` VALUES (1,1,1,62,'Linux Servers','','',''),(2,1,1,63,'Windows Servers','','','');
/*!40000 ALTER TABLE `icinga_hostgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hosts`
--

DROP TABLE IF EXISTS `icinga_hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hosts` (
  `host_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` text,
  `display_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT '',
  `address` varchar(128) DEFAULT '',
  `address6` varchar(128) DEFAULT '',
  `check_command_object_id` bigint(20) unsigned DEFAULT '0',
  `check_command_args` text,
  `eventhandler_command_object_id` bigint(20) unsigned DEFAULT '0',
  `eventhandler_command_args` text,
  `notification_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `check_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `failure_prediction_options` varchar(128) DEFAULT '',
  `check_interval` double DEFAULT '0',
  `retry_interval` double DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `first_notification_delay` double DEFAULT '0',
  `notification_interval` double DEFAULT '0',
  `notify_on_down` smallint(6) DEFAULT '0',
  `notify_on_unreachable` smallint(6) DEFAULT '0',
  `notify_on_recovery` smallint(6) DEFAULT '0',
  `notify_on_flapping` smallint(6) DEFAULT '0',
  `notify_on_downtime` smallint(6) DEFAULT '0',
  `stalk_on_up` smallint(6) DEFAULT '0',
  `stalk_on_down` smallint(6) DEFAULT '0',
  `stalk_on_unreachable` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `flap_detection_on_up` smallint(6) DEFAULT '0',
  `flap_detection_on_down` smallint(6) DEFAULT '0',
  `flap_detection_on_unreachable` smallint(6) DEFAULT '0',
  `low_flap_threshold` double DEFAULT '0',
  `high_flap_threshold` double DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `freshness_checks_enabled` smallint(6) DEFAULT '0',
  `freshness_threshold` int(11) DEFAULT '0',
  `passive_checks_enabled` smallint(6) DEFAULT '0',
  `event_handler_enabled` smallint(6) DEFAULT '0',
  `active_checks_enabled` smallint(6) DEFAULT '0',
  `retain_status_information` smallint(6) DEFAULT '0',
  `retain_nonstatus_information` smallint(6) DEFAULT '0',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `obsess_over_host` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `notes` text,
  `notes_url` text,
  `action_url` text,
  `icon_image` text,
  `icon_image_alt` text,
  `vrml_image` text,
  `statusmap_image` text,
  `have_2d_coords` smallint(6) DEFAULT '0',
  `x_2d` smallint(6) DEFAULT '0',
  `y_2d` smallint(6) DEFAULT '0',
  `have_3d_coords` smallint(6) DEFAULT '0',
  `x_3d` double DEFAULT '0',
  `y_3d` double DEFAULT '0',
  `z_3d` double DEFAULT '0',
  PRIMARY KEY (`host_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`host_object_id`),
  KEY `host_object_id` (`host_object_id`),
  KEY `hosts_i_id_idx` (`instance_id`),
  KEY `hosts_host_object_id_idx` (`host_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Host definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hosts`
--

LOCK TABLES `icinga_hosts` WRITE;
/*!40000 ALTER TABLE `icinga_hosts` DISABLE KEYS */;
INSERT INTO `icinga_hosts` VALUES (1,1,1,67,'icinga-xover','icinga-xover','127.0.0.1','::1',17,'',0,NULL,0,0,'',1,0.5,3,0,30,0,0,1,1,1,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,1,1,1,0,0,'','','','','',NULL,NULL,0,0,0,0,0,0,0),(2,1,1,90,'dbserver','dbserver','192.168.200.41','',17,'',0,NULL,0,0,'',1,0.5,3,0,30,0,0,1,1,1,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,1,1,1,0,0,'','','','','',NULL,NULL,0,0,0,0,0,0,0),(3,1,1,91,'webserver','webserver','192.168.200.40','',17,'',0,NULL,0,0,'',1,0.5,3,0,30,0,0,1,1,1,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,1,1,1,0,0,'','','','','',NULL,NULL,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `icinga_hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_hoststatus`
--

DROP TABLE IF EXISTS `icinga_hoststatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_hoststatus` (
  `hoststatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `output` text,
  `long_output` text,
  `perfdata` text,
  `check_source` text,
  `current_state` smallint(6) DEFAULT '0',
  `has_been_checked` smallint(6) DEFAULT '0',
  `should_be_scheduled` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `last_check` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `next_check` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `check_type` smallint(6) DEFAULT '0',
  `last_state_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_hard_state_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_hard_state` smallint(6) DEFAULT '0',
  `last_time_up` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_time_down` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_time_unreachable` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state_type` smallint(6) DEFAULT '0',
  `last_notification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `next_notification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `no_more_notifications` smallint(6) DEFAULT '0',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `problem_has_been_acknowledged` smallint(6) DEFAULT '0',
  `acknowledgement_type` smallint(6) DEFAULT '0',
  `current_notification_number` smallint(6) DEFAULT '0',
  `passive_checks_enabled` smallint(6) DEFAULT '0',
  `active_checks_enabled` smallint(6) DEFAULT '0',
  `event_handler_enabled` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `is_flapping` smallint(6) DEFAULT '0',
  `percent_state_change` double DEFAULT '0',
  `latency` double DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `scheduled_downtime_depth` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `obsess_over_host` smallint(6) DEFAULT '0',
  `modified_host_attributes` int(11) DEFAULT '0',
  `original_attributes` text,
  `event_handler` text,
  `check_command` text,
  `normal_check_interval` double DEFAULT '0',
  `retry_check_interval` double DEFAULT '0',
  `check_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `is_reachable` smallint(6) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`hoststatus_id`),
  UNIQUE KEY `object_id` (`host_object_id`),
  KEY `hoststatus_i_id_idx` (`instance_id`),
  KEY `hoststatus_stat_upd_time_idx` (`status_update_time`),
  KEY `hoststatus_current_state_idx` (`current_state`),
  KEY `hoststatus_check_type_idx` (`check_type`),
  KEY `hoststatus_state_type_idx` (`state_type`),
  KEY `hoststatus_last_state_chg_idx` (`last_state_change`),
  KEY `hoststatus_notif_enabled_idx` (`notifications_enabled`),
  KEY `hoststatus_problem_ack_idx` (`problem_has_been_acknowledged`),
  KEY `hoststatus_act_chks_en_idx` (`active_checks_enabled`),
  KEY `hoststatus_pas_chks_en_idx` (`passive_checks_enabled`),
  KEY `hoststatus_event_hdl_en_idx` (`event_handler_enabled`),
  KEY `hoststatus_flap_det_en_idx` (`flap_detection_enabled`),
  KEY `hoststatus_is_flapping_idx` (`is_flapping`),
  KEY `hoststatus_p_state_chg_idx` (`percent_state_change`),
  KEY `hoststatus_latency_idx` (`latency`),
  KEY `hoststatus_ex_time_idx` (`execution_time`),
  KEY `hoststatus_sch_downt_d_idx` (`scheduled_downtime_depth`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Current host status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_hoststatus`
--

LOCK TABLES `icinga_hoststatus` WRITE;
/*!40000 ALTER TABLE `icinga_hoststatus` DISABLE KEYS */;
INSERT INTO `icinga_hoststatus` VALUES (1,1,67,'2016-05-20 03:24:31','PING OK - Packet loss = 0%, RTA = 0.07 ms','','rta=0.070000ms;3000.000000;5000.000000;0.000000 pl=0%;80;100;0','icinga-xover',0,1,1,1,3,'2016-05-20 03:24:31','2016-05-20 03:25:27',0,'2016-05-17 00:46:00','2016-05-17 00:46:00',0,'2016-05-20 03:24:31','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'2016-05-17 00:46:00','2016-05-20 03:27:14',0,1,0,0,0,1,1,1,0,0,0,0,4.0048370361328125,0,0,1,0,0,'null','','hostalive',1,0.5,0,1,1),(2,1,90,'2016-05-20 03:24:58','PING OK - Packet loss = 0%, RTA = 0.75 ms','','rta=0.748000ms;3000.000000;5000.000000;0.000000 pl=0%;80;100;0','icinga-xover',0,1,1,1,3,'2016-05-20 03:24:58','2016-05-20 03:25:54',0,'2016-05-17 04:14:12','2016-05-17 04:14:42',0,'2016-05-20 03:24:58','2016-05-17 04:13:57','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:44:29',0,1,0,0,0,1,1,1,0,0,0,0,4.015113115310669,0,0,1,0,0,'null','','hostalive',1,0.5,0,1,1),(3,1,91,'2016-05-20 03:24:44','PING OK - Packet loss = 0%, RTA = 1.16 ms','','rta=1.165000ms;3000.000000;5000.000000;0.000000 pl=0%;80;100;0','icinga-xover',0,1,1,1,3,'2016-05-20 03:24:44','2016-05-20 03:25:40',0,'2016-05-17 03:12:29','2016-05-17 03:12:29',0,'2016-05-20 03:24:44','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:44:29',0,1,0,0,0,1,1,1,0,0,0,0,4.020079851150513,0,0,1,0,0,'null','','hostalive',1,0.5,0,1,1);
/*!40000 ALTER TABLE `icinga_hoststatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_instances`
--

DROP TABLE IF EXISTS `icinga_instances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_instances` (
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_name` varchar(64) DEFAULT '',
  `instance_description` varchar(128) DEFAULT '',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Location names of various Icinga installations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_instances`
--

LOCK TABLES `icinga_instances` WRITE;
/*!40000 ALTER TABLE `icinga_instances` DISABLE KEYS */;
INSERT INTO `icinga_instances` VALUES (1,'default','');
/*!40000 ALTER TABLE `icinga_instances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_logentries`
--

DROP TABLE IF EXISTS `icinga_logentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_logentries` (
  `logentry_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `logentry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `entry_time_usec` int(11) DEFAULT '0',
  `logentry_type` int(11) DEFAULT '0',
  `logentry_data` text,
  `realtime_data` smallint(6) DEFAULT '0',
  `inferred_data_extracted` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT NULL,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`logentry_id`),
  KEY `loge_time_idx` (`logentry_time`),
  KEY `loge_inst_id_time_idx` (`instance_id`,`logentry_time`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1 COMMENT='Historical record of log entries';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_logentries`
--

LOCK TABLES `icinga_logentries` WRITE;
/*!40000 ALTER TABLE `icinga_logentries` DISABLE KEYS */;
INSERT INTO `icinga_logentries` VALUES (1,1,'2016-05-17 00:45:08','2016-05-17 00:45:08',821435,8192,'SERVICE ALERT: icinga-xover;disk /;OK;HARD;1;DISK OK - free space: / 34534 MB (95% inode=97%):',0,0,75,1),(2,1,'2016-05-17 00:45:13','2016-05-17 00:45:13',414772,8192,'SERVICE ALERT: icinga-xover;users;OK;HARD;1;USERS OK - 2 users currently logged in ',0,0,80,1),(3,1,'2016-05-17 00:45:13','2016-05-17 00:45:13',961512,8192,'SERVICE ALERT: icinga-xover;disk;OK;HARD;1;DISK OK - free space: / 34534 MB (95% inode=97%): /boot 58 MB (33% inode=99%):',0,0,74,1),(4,1,'2016-05-17 00:45:14','2016-05-17 00:45:14',474430,8192,'SERVICE ALERT: icinga-xover;procs;OK;HARD;1;PROCS OK: 91 processes ',0,0,78,1),(5,1,'2016-05-17 00:45:26','2016-05-17 00:45:26',196259,8192,'SERVICE ALERT: icinga-xover;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.07 ms',0,0,70,1),(6,1,'2016-05-17 00:45:28','2016-05-17 00:45:28',257365,65536,'SERVICE ALERT: icinga-xover;http;CRITICAL;HARD;1;connect to address 127.0.0.1 and port 80: Connection refused',0,0,73,1),(7,1,'2016-05-17 00:45:48','2016-05-17 00:45:48',875221,8192,'SERVICE ALERT: icinga-xover;ssh;OK;HARD;1;SSH OK - OpenSSH_6.6.1 (protocol 2.0) ',0,0,72,1),(8,1,'2016-05-17 00:45:58','2016-05-17 00:45:58',264848,8192,'SERVICE ALERT: icinga-xover;swap;OK;HARD;1;SWAP OK - 100% free (1533 MB out of 1535 MB) ',0,0,79,1),(9,1,'2016-05-17 00:45:59','2016-05-17 00:45:59',716690,8192,'SERVICE ALERT: icinga-xover;load;OK;HARD;1;OK - load average: 0.00, 0.02, 0.05',0,0,77,1),(10,1,'2016-05-17 00:46:00','2016-05-17 00:46:00',704360,1024,'HOST ALERT: icinga-xover;UP;HARD;1;PING OK - Packet loss = 0%, RTA = 0.05 ms',0,0,67,1),(11,1,'2016-05-17 00:46:00','2016-05-17 00:46:00',740422,524288,'HOST NOTIFICATION: icingaadmin;icinga-xover;RECOVERY (UP);hostalive;PING OK - Packet loss = 0%, RTA = 0.05 ms',0,0,67,1),(12,1,'2016-05-17 00:46:01','2016-05-17 00:46:01',157075,8192,'SERVICE ALERT: icinga-xover;ping6;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.05 ms',0,0,71,1),(13,1,'2016-05-17 00:46:08','2016-05-17 00:46:08',815124,8192,'SERVICE ALERT: icinga-xover;disk /;OK;HARD;1;DISK OK - free space: / 34534 MB (95% inode=97%):',0,0,75,1),(14,1,'2016-05-17 00:46:13','2016-05-17 00:46:13',413189,8192,'SERVICE ALERT: icinga-xover;users;OK;HARD;1;USERS OK - 2 users currently logged in ',0,0,80,1),(15,1,'2016-05-17 00:46:13','2016-05-17 00:46:13',954636,8192,'SERVICE ALERT: icinga-xover;disk;OK;HARD;1;DISK OK - free space: / 34534 MB (95% inode=97%): /boot 58 MB (33% inode=99%):',0,0,74,1),(16,1,'2016-05-17 00:46:14','2016-05-17 00:46:14',434027,8192,'SERVICE ALERT: icinga-xover;procs;OK;HARD;1;PROCS OK: 93 processes ',0,0,78,1),(17,1,'2016-05-17 00:46:26','2016-05-17 00:46:26',177792,8192,'SERVICE ALERT: icinga-xover;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.05 ms',0,0,70,1),(18,1,'2016-05-17 00:46:28','2016-05-17 00:46:28',254863,65536,'SERVICE ALERT: icinga-xover;http;CRITICAL;HARD;1;connect to address 127.0.0.1 and port 80: Connection refused',0,0,73,1),(19,1,'2016-05-17 00:46:42','2016-05-17 00:46:42',442127,8192,'SERVICE ALERT: icinga-xover;icinga;OK;HARD;1;Icinga 2 has been running for 1 minute and 39 seconds. Version: v2.4.7',0,0,76,1),(20,1,'2016-05-17 00:46:48','2016-05-17 00:46:48',829452,8192,'SERVICE ALERT: icinga-xover;ssh;OK;HARD;1;SSH OK - OpenSSH_6.6.1 (protocol 2.0) ',0,0,72,1),(21,1,'2016-05-17 00:46:58','2016-05-17 00:46:58',264144,8192,'SERVICE ALERT: icinga-xover;swap;OK;HARD;1;SWAP OK - 100% free (1533 MB out of 1535 MB) ',0,0,79,1),(22,1,'2016-05-17 00:46:59','2016-05-17 00:46:59',707710,8192,'SERVICE ALERT: icinga-xover;load;OK;HARD;1;OK - load average: 0.00, 0.01, 0.05',0,0,77,1),(23,1,'2016-05-17 00:48:28','2016-05-17 00:48:28',256479,32768,'SERVICE ALERT: icinga-xover;http;WARNING;HARD;1;HTTP WARNING: HTTP/1.1 403 Forbidden - 5168 bytes in 0.002 second response time ',0,0,73,1),(24,1,'2016-05-17 00:48:28','2016-05-17 00:48:28',294572,524288,'SERVICE NOTIFICATION: icingaadmin;icinga-xover;http;PROBLEM (WARNING);http;HTTP WARNING: HTTP/1.1 403 Forbidden - 5168 bytes in 0.002 second response time ',0,0,73,1),(25,1,'2016-05-17 00:54:05','2016-05-17 00:54:05',332694,524288,'SERVICE NOTIFICATION: icingaadmin;icinga-xover;http;PROBLEM (WARNING);http;HTTP WARNING: HTTP/1.1 403 Forbidden - 5168 bytes in 0.001 second response time ',0,0,73,1),(26,1,'2016-05-17 01:24:05','2016-05-17 01:24:05',389419,524288,'SERVICE NOTIFICATION: icingaadmin;icinga-xover;http;PROBLEM (WARNING);http;HTTP WARNING: HTTP/1.1 403 Forbidden - 5179 bytes in 0.001 second response time ',0,0,73,1),(27,1,'2016-05-17 01:54:07','2016-05-17 01:54:07',626084,524288,'SERVICE NOTIFICATION: icingaadmin;icinga-xover;http;PROBLEM (WARNING);http;HTTP WARNING: HTTP/1.1 403 Forbidden - 5179 bytes in 0.001 second response time ',0,0,73,1),(28,1,'2016-05-17 02:24:07','2016-05-17 02:24:07',774950,524288,'SERVICE NOTIFICATION: icingaadmin;icinga-xover;http;PROBLEM (WARNING);http;HTTP WARNING: HTTP/1.1 403 Forbidden - 5179 bytes in 0.001 second response time ',0,0,73,1),(29,1,'2016-05-17 02:54:08','2016-05-17 02:54:08',121773,524288,'SERVICE NOTIFICATION: icingaadmin;icinga-xover;http;PROBLEM (WARNING);http;HTTP WARNING: HTTP/1.1 403 Forbidden - 5179 bytes in 0.001 second response time ',0,0,73,1),(30,1,'2016-05-17 02:57:57','2016-05-17 02:57:57',766966,8192,'SERVICE ALERT: icinga-xover;Icinga Web 2;OK;HARD;1;HTTP OK: HTTP/1.1 301 Moved Permanently - 474 bytes in 0.001 second response time ',0,0,85,1),(31,1,'2016-05-17 03:11:59','2016-05-17 03:11:59',540455,1024,'HOST ALERT: dbserver;UP;HARD;1;PING OK - Packet loss = 0%, RTA = 0.75 ms',0,0,90,1),(32,1,'2016-05-17 03:12:07','2016-05-17 03:12:07',144761,8192,'SERVICE ALERT: webserver;disk;OK;HARD;1;DISK OK - free space: / 34360 MB (94% inode=97%): /boot 58 MB (33% inode=99%):',0,0,98,1),(33,1,'2016-05-17 03:12:16','2016-05-17 03:12:16',191114,8192,'SERVICE ALERT: webserver;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.62 ms',0,0,96,1),(34,1,'2016-05-17 03:12:21','2016-05-17 03:12:21',794384,8192,'SERVICE ALERT: dbserver;ssh;OK;HARD;1;SSH OK - OpenSSH_6.6.1 (protocol 2.0) ',0,0,93,1),(35,1,'2016-05-17 03:12:24','2016-05-17 03:12:24',404297,8192,'SERVICE ALERT: dbserver;disk;OK;HARD;1;DISK OK - free space: / 34360 MB (94% inode=97%): /boot 58 MB (33% inode=99%):',0,0,94,1),(36,1,'2016-05-17 03:12:26','2016-05-17 03:12:26',404187,8192,'SERVICE ALERT: webserver;disk /;OK;HARD;1;DISK OK - free space: / 34360 MB (94% inode=97%):',0,0,99,1),(37,1,'2016-05-17 03:12:29','2016-05-17 03:12:29',652921,1024,'HOST ALERT: webserver;UP;HARD;1;PING OK - Packet loss = 0%, RTA = 0.63 ms',0,0,91,1),(38,1,'2016-05-17 03:12:30','2016-05-17 03:12:30',655678,8192,'SERVICE ALERT: dbserver;disk /;OK;HARD;1;DISK OK - free space: / 34360 MB (94% inode=97%):',0,0,95,1),(39,1,'2016-05-17 03:12:31','2016-05-17 03:12:31',57514,8192,'SERVICE ALERT: webserver;ssh;OK;HARD;1;SSH OK - OpenSSH_6.6.1 (protocol 2.0) ',0,0,97,1),(40,1,'2016-05-17 03:12:36','2016-05-17 03:12:36',702754,8192,'SERVICE ALERT: dbserver;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.64 ms',0,0,92,1),(41,1,'2016-05-17 03:28:05','2016-05-17 03:28:05',862734,8192,'SERVICE ALERT: dbserver;users;OK;HARD;1;USERS OK - 2 users currently logged in ',0,0,103,1),(42,1,'2016-05-17 03:28:15','2016-05-17 03:28:15',883306,8192,'SERVICE ALERT: webserver;swap;OK;HARD;1;SWAP OK - 100% free (1528 MB out of 1535 MB) ',0,0,104,1),(43,1,'2016-05-17 03:28:19','2016-05-17 03:28:19',632745,8192,'SERVICE ALERT: webserver;users;OK;HARD;1;USERS OK - 2 users currently logged in ',0,0,105,1),(44,1,'2016-05-17 03:28:25','2016-05-17 03:28:25',533943,8192,'SERVICE ALERT: dbserver;swap;OK;HARD;1;SWAP OK - 100% free (1528 MB out of 1535 MB) ',0,0,102,1),(45,1,'2016-05-17 04:13:57','2016-05-17 04:13:57',92828,65536,'SERVICE ALERT: dbserver;ping4;CRITICAL;SOFT;1;CRITICAL - Host Unreachable (192.168.200.41)',0,0,92,1),(46,1,'2016-05-17 04:13:57','2016-05-17 04:13:57',118938,2048,'HOST ALERT: dbserver;DOWN;SOFT;1;CRITICAL - Host Unreachable (192.168.200.41)',0,0,90,1),(47,1,'2016-05-17 04:14:12','2016-05-17 04:14:12',80276,1024,'HOST ALERT: dbserver;UP;SOFT;1;PING OK - Packet loss = 0%, RTA = 5.24 ms',0,0,90,1),(48,1,'2016-05-17 04:14:28','2016-05-17 04:14:28',458904,8192,'SERVICE ALERT: dbserver;ping4;OK;SOFT;1;PING OK - Packet loss = 0%, RTA = 6.17 ms',0,0,92,1),(49,1,'2016-05-17 04:14:42','2016-05-17 04:14:42',75738,1024,'HOST ALERT: dbserver;UP;HARD;1;PING OK - Packet loss = 0%, RTA = 0.83 ms',0,0,90,1),(50,1,'2016-05-17 04:14:58','2016-05-17 04:14:58',379775,8192,'SERVICE ALERT: dbserver;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.79 ms',0,0,92,1),(51,1,'2016-05-17 05:15:29','2016-05-17 05:15:29',622268,8192,'SERVICE ALERT: dbserver;mysql;OK;HARD;1;OK - alive Mysql is alive, running fine.',0,0,109,1),(52,1,'2016-05-17 05:16:31','2016-05-17 05:16:31',741010,16384,'SERVICE ALERT: dbserver;mysql;UNKNOWN;SOFT;1;Error: Non-optional macro \'mysql_user\' used in argument \'-u\' is missing.',0,0,109,1),(53,1,'2016-05-17 05:17:01','2016-05-17 05:17:01',740693,16384,'SERVICE ALERT: dbserver;mysql;UNKNOWN;SOFT;2;Error: Non-optional macro \'mysql_user\' used in argument \'-u\' is missing.',0,0,109,1),(54,1,'2016-05-17 05:17:31','2016-05-17 05:17:31',740772,16384,'SERVICE ALERT: dbserver;mysql;UNKNOWN;SOFT;3;Error: Non-optional macro \'mysql_user\' used in argument \'-u\' is missing.',0,0,109,1),(55,1,'2016-05-17 05:18:01','2016-05-17 05:18:01',740693,16384,'SERVICE ALERT: dbserver;mysql;UNKNOWN;SOFT;4;Error: Non-optional macro \'mysql_user\' used in argument \'-u\' is missing.',0,0,109,1),(56,1,'2016-05-17 05:18:31','2016-05-17 05:18:31',740859,16384,'SERVICE ALERT: dbserver;mysql;UNKNOWN;SOFT;5;Error: Non-optional macro \'mysql_user\' used in argument \'-u\' is missing.',0,0,109,1),(57,1,'2016-05-17 05:19:01','2016-05-17 05:19:01',740735,16384,'SERVICE ALERT: dbserver;mysql;UNKNOWN;HARD;1;Error: Non-optional macro \'mysql_user\' used in argument \'-u\' is missing.',0,0,109,1),(58,1,'2016-05-17 05:19:01','2016-05-17 05:19:01',765439,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (UNKNOWN);mysql_command;Error: Non-optional macro \'mysql_user\' used in argument \'-u\' is missing.',0,0,109,1),(59,1,'2016-05-17 05:22:33','2016-05-17 05:22:33',893333,8192,'SERVICE ALERT: dbserver;mysql;OK;HARD;1;OK - alive Mysql is alive, running fine.',0,0,109,1),(60,1,'2016-05-17 05:22:33','2016-05-17 05:22:33',897680,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;RECOVERY (OK);mysql_command;OK - alive Mysql is alive, running fine.',0,0,109,1),(61,1,'2016-05-17 06:00:22','2016-05-17 06:00:22',974446,524288,'SERVICE NOTIFICATION: icingaadmin;icinga-xover;load;DOWNTIMESTART (OK);load;OK - load average: 0.40, 0.52, 0.35',0,0,77,1),(62,1,'2016-05-17 07:00:23','2016-05-17 07:00:23',23312,524288,'SERVICE NOTIFICATION: icingaadmin;icinga-xover;load;DOWNTIMEEND (OK);load;OK - load average: 0.00, 0.09, 0.22',0,0,77,1),(63,1,'2016-05-18 01:04:33','2016-05-18 01:04:33',883629,65536,'SERVICE ALERT: dbserver;mysql;CRITICAL;SOFT;1;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(64,1,'2016-05-18 01:05:03','2016-05-18 01:05:03',887300,65536,'SERVICE ALERT: dbserver;mysql;CRITICAL;SOFT;2;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(65,1,'2016-05-18 01:05:33','2016-05-18 01:05:33',888350,65536,'SERVICE ALERT: dbserver;mysql;CRITICAL;SOFT;3;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(66,1,'2016-05-18 01:06:03','2016-05-18 01:06:03',890676,65536,'SERVICE ALERT: dbserver;mysql;CRITICAL;SOFT;4;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(67,1,'2016-05-18 01:06:33','2016-05-18 01:06:33',882067,65536,'SERVICE ALERT: dbserver;mysql;CRITICAL;SOFT;5;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(68,1,'2016-05-18 01:07:03','2016-05-18 01:07:03',886693,65536,'SERVICE ALERT: dbserver;mysql;CRITICAL;HARD;1;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(69,1,'2016-05-18 01:07:03','2016-05-18 01:07:03',908848,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(70,1,'2016-05-18 01:16:16','2016-05-18 01:16:16',227457,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(71,1,'2016-05-18 01:37:15','2016-05-18 01:37:15',675972,32768,'SERVICE ALERT: webserver;ping4;WARNING;SOFT;1;PING WARNING - Packet loss = 0%, RTA = 109.09 ms',0,0,96,1),(72,1,'2016-05-18 01:37:41','2016-05-18 01:37:41',803271,8192,'SERVICE ALERT: webserver;ping4;OK;SOFT;1;PING OK - Packet loss = 0%, RTA = 9.30 ms',0,0,96,1),(73,1,'2016-05-18 01:38:11','2016-05-18 01:38:11',360877,8192,'SERVICE ALERT: webserver;ping4;OK;HARD;1;PING OK - Packet loss = 0%, RTA = 0.58 ms',0,0,96,1),(74,1,'2016-05-18 01:46:20','2016-05-18 01:46:20',98417,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(75,1,'2016-05-18 02:16:20','2016-05-18 02:16:20',335772,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(76,1,'2016-05-18 02:46:20','2016-05-18 02:46:20',418545,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(77,1,'2016-05-18 03:16:20','2016-05-18 03:16:20',458409,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(78,1,'2016-05-18 03:46:20','2016-05-18 03:46:20',513772,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(79,1,'2016-05-18 04:16:20','2016-05-18 04:16:20',613038,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(80,1,'2016-05-18 04:46:20','2016-05-18 04:46:20',764146,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(81,1,'2016-05-18 05:16:20','2016-05-18 05:16:20',800271,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(82,1,'2016-05-18 05:46:20','2016-05-18 05:46:20',899269,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(83,1,'2016-05-18 06:00:22','2016-05-18 06:00:22',968355,524288,'SERVICE NOTIFICATION: icingaadmin;icinga-xover;load;DOWNTIMESTART (OK);load;OK - load average: 0.00, 0.01, 0.05',0,0,77,1),(84,1,'2016-05-18 06:16:21','2016-05-18 06:16:21',17663,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(85,1,'2016-05-18 06:46:21','2016-05-18 06:46:21',133763,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(86,1,'2016-05-18 07:00:22','2016-05-18 07:00:22',978173,524288,'SERVICE NOTIFICATION: icingaadmin;icinga-xover;load;DOWNTIMEEND (OK);load;OK - load average: 0.01, 0.04, 0.05',0,0,77,1),(87,1,'2016-05-18 07:16:21','2016-05-18 07:16:21',169265,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(88,1,'2016-05-18 07:46:21','2016-05-18 07:46:21',225269,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(89,1,'2016-05-18 08:16:26','2016-05-18 08:16:26',150501,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(90,1,'2016-05-18 08:46:31','2016-05-18 08:46:31',70682,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(91,1,'2016-05-18 09:16:31','2016-05-18 09:16:31',189760,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(92,1,'2016-05-18 09:46:36','2016-05-18 09:46:36',143785,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(93,1,'2016-05-18 10:16:36','2016-05-18 10:16:36',196758,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(94,1,'2016-05-18 10:46:41','2016-05-18 10:46:41',175647,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(95,1,'2016-05-18 11:16:46','2016-05-18 11:16:46',169776,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(96,1,'2016-05-18 11:46:46','2016-05-18 11:46:46',199184,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(97,1,'2016-05-18 12:16:46','2016-05-18 12:16:46',364346,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(98,1,'2016-05-18 12:46:46','2016-05-18 12:46:46',468889,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(99,1,'2016-05-18 13:16:46','2016-05-18 13:16:46',512175,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(100,1,'2016-05-18 13:46:46','2016-05-18 13:46:46',596729,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(101,1,'2016-05-18 14:16:46','2016-05-18 14:16:46',598774,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(102,1,'2016-05-18 14:46:46','2016-05-18 14:46:46',734805,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(103,1,'2016-05-18 15:16:49','2016-05-18 15:16:49',228070,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(104,1,'2016-05-18 15:46:54','2016-05-18 15:46:54',194500,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(105,1,'2016-05-18 16:16:59','2016-05-18 16:16:59',181623,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(106,1,'2016-05-18 16:46:59','2016-05-18 16:46:59',205504,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(107,1,'2016-05-18 17:16:59','2016-05-18 17:16:59',216907,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(108,1,'2016-05-18 17:46:59','2016-05-18 17:46:59',223067,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(109,1,'2016-05-18 18:17:04','2016-05-18 18:17:04',216253,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(110,1,'2016-05-18 18:47:04','2016-05-18 18:47:04',223186,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(111,1,'2016-05-18 19:17:09','2016-05-18 19:17:09',222937,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(112,1,'2016-05-18 19:47:09','2016-05-18 19:47:09',300215,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(113,1,'2016-05-18 20:17:09','2016-05-18 20:17:09',376482,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(114,1,'2016-05-18 20:47:09','2016-05-18 20:47:09',463233,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(115,1,'2016-05-18 21:17:09','2016-05-18 21:17:09',470663,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(116,1,'2016-05-18 21:47:14','2016-05-18 21:47:14',457324,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(117,1,'2016-05-18 22:17:14','2016-05-18 22:17:14',475636,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(118,1,'2016-05-18 22:47:19','2016-05-18 22:47:19',474699,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(119,1,'2016-05-18 23:17:24','2016-05-18 23:17:24',471894,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(120,1,'2016-05-18 23:47:24','2016-05-18 23:47:24',473927,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(121,1,'2016-05-19 00:17:29','2016-05-19 00:17:29',473417,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(122,1,'2016-05-19 00:47:29','2016-05-19 00:47:29',483752,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(123,1,'2016-05-19 01:17:29','2016-05-19 01:17:29',495811,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(124,1,'2016-05-19 01:47:29','2016-05-19 01:47:29',626991,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(125,1,'2016-05-19 02:17:29','2016-05-19 02:17:29',794456,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(126,1,'2016-05-19 02:47:29','2016-05-19 02:47:29',886701,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(127,1,'2016-05-19 03:17:29','2016-05-19 03:17:29',998469,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(128,1,'2016-05-19 03:47:30','2016-05-19 03:47:30',81717,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(129,1,'2016-05-19 04:17:30','2016-05-19 04:17:30',209645,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(130,1,'2016-05-19 04:47:30','2016-05-19 04:47:30',362927,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(131,1,'2016-05-19 05:17:30','2016-05-19 05:17:30',450964,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(132,1,'2016-05-19 05:47:30','2016-05-19 05:47:30',707376,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(133,1,'2016-05-19 06:00:22','2016-05-19 06:00:22',971486,524288,'SERVICE NOTIFICATION: icingaadmin;icinga-xover;load;DOWNTIMESTART (OK);load;OK - load average: 0.00, 0.01, 0.05',0,0,77,1),(134,1,'2016-05-19 06:17:30','2016-05-19 06:17:30',799509,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(135,1,'2016-05-19 06:47:31','2016-05-19 06:47:31',11097,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(136,1,'2016-05-19 07:00:22','2016-05-19 07:00:22',984008,524288,'SERVICE NOTIFICATION: icingaadmin;icinga-xover;load;DOWNTIMEEND (OK);load;OK - load average: 0.00, 0.01, 0.05',0,0,77,1),(137,1,'2016-05-19 07:17:31','2016-05-19 07:17:31',137562,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(138,1,'2016-05-19 07:47:31','2016-05-19 07:47:31',232898,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(139,1,'2016-05-19 08:17:31','2016-05-19 08:17:31',237076,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(140,1,'2016-05-19 08:47:31','2016-05-19 08:47:31',398747,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(141,1,'2016-05-19 09:17:31','2016-05-19 09:17:31',556627,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(142,1,'2016-05-19 09:47:31','2016-05-19 09:47:31',690140,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(143,1,'2016-05-19 10:17:31','2016-05-19 10:17:31',820224,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(144,1,'2016-05-19 10:47:31','2016-05-19 10:47:31',942851,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(145,1,'2016-05-19 11:17:32','2016-05-19 11:17:32',18773,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(146,1,'2016-05-19 11:47:32','2016-05-19 11:47:32',137717,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(147,1,'2016-05-19 12:17:32','2016-05-19 12:17:32',255675,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(148,1,'2016-05-19 12:47:32','2016-05-19 12:47:32',354896,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;PROBLEM (CRITICAL);mysql_command;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(149,1,'2016-05-19 12:58:33','2016-05-19 12:58:33',938863,8192,'SERVICE ALERT: dbserver;mysql;OK;HARD;1;OK - alive Mysql is alive, running fine.',0,0,109,1),(150,1,'2016-05-19 12:58:33','2016-05-19 12:58:33',959888,524288,'SERVICE NOTIFICATION: icingaadmin;dbserver;mysql;RECOVERY (OK);mysql_command;OK - alive Mysql is alive, running fine.',0,0,109,1),(151,1,'2016-05-19 13:48:33','2016-05-19 13:48:33',898523,65536,'SERVICE ALERT: dbserver;mysql;CRITICAL;SOFT;1;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(152,1,'2016-05-19 13:49:03','2016-05-19 13:49:03',891700,65536,'SERVICE ALERT: dbserver;mysql;CRITICAL;SOFT;2;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(153,1,'2016-05-19 13:49:33','2016-05-19 13:49:33',902003,65536,'SERVICE ALERT: dbserver;mysql;CRITICAL;SOFT;3;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(154,1,'2016-05-19 13:50:03','2016-05-19 13:50:03',891858,65536,'SERVICE ALERT: dbserver;mysql;CRITICAL;SOFT;4;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(155,1,'2016-05-19 13:50:33','2016-05-19 13:50:33',896054,65536,'SERVICE ALERT: dbserver;mysql;CRITICAL;SOFT;5;/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed',0,0,109,1),(156,1,'2016-05-19 13:51:03','2016-05-19 13:51:03',904925,8192,'SERVICE ALERT: dbserver;mysql;OK;SOFT;1;OK - alive Mysql is alive, running fine.',0,0,109,1),(157,1,'2016-05-19 13:51:33','2016-05-19 13:51:33',891419,8192,'SERVICE ALERT: dbserver;mysql;OK;HARD;1;OK - alive Mysql is alive, running fine.',0,0,109,1);
/*!40000 ALTER TABLE `icinga_logentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_notifications`
--

DROP TABLE IF EXISTS `icinga_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_notifications` (
  `notification_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `notification_type` smallint(6) DEFAULT '0',
  `notification_reason` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `escalated` smallint(6) DEFAULT '0',
  `contacts_notified` smallint(6) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`start_time`,`start_time_usec`),
  KEY `notification_idx` (`notification_type`,`object_id`,`start_time`),
  KEY `notification_object_id_idx` (`object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=latin1 COMMENT='Historical record of host and service notifications';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_notifications`
--

LOCK TABLES `icinga_notifications` WRITE;
/*!40000 ALTER TABLE `icinga_notifications` DISABLE KEYS */;
INSERT INTO `icinga_notifications` VALUES (1,1,1,0,67,'2016-05-17 00:46:00',704838,'2016-05-17 00:46:00',704838,0,'PING OK - Packet loss = 0%, RTA = 0.05 ms','',0,1,1),(2,1,1,0,71,'2016-05-17 00:46:01',157577,'2016-05-17 00:46:01',157577,0,'PING OK - Packet loss = 0%, RTA = 0.05 ms','',0,0,1),(3,1,1,0,73,'2016-05-17 00:48:28',256958,'2016-05-17 00:48:28',256958,1,'HTTP WARNING: HTTP/1.1 403 Forbidden - 5168 bytes in 0.002 second response time ','',0,1,1),(4,1,1,0,73,'2016-05-17 00:54:05',326519,'2016-05-17 00:54:05',326519,1,'HTTP WARNING: HTTP/1.1 403 Forbidden - 5168 bytes in 0.001 second response time ','',0,1,1),(5,1,1,0,73,'2016-05-17 01:24:05',349685,'2016-05-17 01:24:05',349685,1,'HTTP WARNING: HTTP/1.1 403 Forbidden - 5179 bytes in 0.001 second response time ','',0,1,1),(6,1,1,0,73,'2016-05-17 01:54:07',599225,'2016-05-17 01:54:07',599225,1,'HTTP WARNING: HTTP/1.1 403 Forbidden - 5179 bytes in 0.001 second response time ','',0,1,1),(7,1,1,0,73,'2016-05-17 02:24:07',748975,'2016-05-17 02:24:07',748975,1,'HTTP WARNING: HTTP/1.1 403 Forbidden - 5179 bytes in 0.001 second response time ','',0,1,1),(8,1,1,0,73,'2016-05-17 02:54:08',93693,'2016-05-17 02:54:08',93693,1,'HTTP WARNING: HTTP/1.1 403 Forbidden - 5179 bytes in 0.001 second response time ','',0,1,1),(9,1,1,0,109,'2016-05-17 05:19:01',741660,'2016-05-17 05:19:01',741660,3,'Error: Non-optional macro \'mysql_user\' used in argument \'-u\' is missing.','',0,1,1),(10,1,1,0,109,'2016-05-17 05:22:33',894304,'2016-05-17 05:22:33',894304,0,'OK - alive Mysql is alive, running fine.','',0,1,1),(11,1,1,5,77,'2016-05-17 06:00:22',968977,'2016-05-17 06:00:22',968977,0,'OK - load average: 0.40, 0.52, 0.35','',0,1,1),(12,1,1,6,77,'2016-05-17 07:00:23',2846,'2016-05-17 07:00:23',2846,0,'OK - load average: 0.00, 0.09, 0.22','',0,1,1),(13,1,1,0,109,'2016-05-18 01:07:03',892594,'2016-05-18 01:07:03',892594,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(14,1,1,0,109,'2016-05-18 01:16:16',215495,'2016-05-18 01:16:16',215495,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(15,1,1,0,109,'2016-05-18 01:46:20',68882,'2016-05-18 01:46:20',68882,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(16,1,1,0,109,'2016-05-18 02:16:20',336008,'2016-05-18 02:16:20',336008,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(17,1,1,0,109,'2016-05-18 02:46:20',402931,'2016-05-18 02:46:20',402931,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(18,1,1,0,109,'2016-05-18 03:16:20',444907,'2016-05-18 03:16:20',444907,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(19,1,1,0,109,'2016-05-18 03:46:20',498641,'2016-05-18 03:46:20',498641,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(20,1,1,0,109,'2016-05-18 04:16:20',598884,'2016-05-18 04:16:20',598884,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(21,1,1,0,109,'2016-05-18 04:46:20',741564,'2016-05-18 04:46:20',741564,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(22,1,1,0,109,'2016-05-18 05:16:20',786541,'2016-05-18 05:16:20',786541,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(23,1,1,0,109,'2016-05-18 05:46:20',883595,'2016-05-18 05:46:20',883595,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(24,1,1,5,77,'2016-05-18 06:00:22',959425,'2016-05-18 06:00:22',959425,0,'OK - load average: 0.00, 0.01, 0.05','',0,1,1),(25,1,1,0,109,'2016-05-18 06:16:21',3680,'2016-05-18 06:16:21',3680,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(26,1,1,0,109,'2016-05-18 06:46:21',129606,'2016-05-18 06:46:21',129606,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(27,1,1,6,77,'2016-05-18 07:00:22',963116,'2016-05-18 07:00:22',963116,0,'OK - load average: 0.01, 0.04, 0.05','',0,1,1),(28,1,1,0,109,'2016-05-18 07:16:21',157273,'2016-05-18 07:16:21',157273,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(29,1,1,0,109,'2016-05-18 07:46:21',205519,'2016-05-18 07:46:21',205519,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(30,1,1,0,109,'2016-05-18 08:16:26',145968,'2016-05-18 08:16:26',145968,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(31,1,1,0,109,'2016-05-18 08:46:31',67295,'2016-05-18 08:46:31',67295,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(32,1,1,0,109,'2016-05-18 09:16:31',186009,'2016-05-18 09:16:31',186009,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(33,1,1,0,109,'2016-05-18 09:46:36',131637,'2016-05-18 09:46:36',131637,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(34,1,1,0,109,'2016-05-18 10:16:36',180782,'2016-05-18 10:16:36',180782,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(35,1,1,0,109,'2016-05-18 10:46:41',169790,'2016-05-18 10:46:41',169790,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(36,1,1,0,109,'2016-05-18 11:16:46',159794,'2016-05-18 11:16:46',159794,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(37,1,1,0,109,'2016-05-18 11:46:46',184175,'2016-05-18 11:46:46',184175,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(38,1,1,0,109,'2016-05-18 12:16:46',353194,'2016-05-18 12:16:46',353194,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(39,1,1,0,109,'2016-05-18 12:46:46',453083,'2016-05-18 12:46:46',453083,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(40,1,1,0,109,'2016-05-18 13:16:46',486058,'2016-05-18 13:16:46',486058,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(41,1,1,0,109,'2016-05-18 13:46:46',571975,'2016-05-18 13:46:46',571975,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(42,1,1,0,109,'2016-05-18 14:16:46',594769,'2016-05-18 14:16:46',594769,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(43,1,1,0,109,'2016-05-18 14:46:46',720253,'2016-05-18 14:46:46',720253,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(44,1,1,0,109,'2016-05-18 15:16:49',223612,'2016-05-18 15:16:49',223612,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(45,1,1,0,109,'2016-05-18 15:46:54',190898,'2016-05-18 15:46:54',190898,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(46,1,1,0,109,'2016-05-18 16:16:59',173983,'2016-05-18 16:16:59',173983,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(47,1,1,0,109,'2016-05-18 16:46:59',200938,'2016-05-18 16:46:59',200938,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(48,1,1,0,109,'2016-05-18 17:16:59',204904,'2016-05-18 17:16:59',204904,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(49,1,1,0,109,'2016-05-18 17:46:59',206758,'2016-05-18 17:46:59',206758,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(50,1,1,0,109,'2016-05-18 18:17:04',204334,'2016-05-18 18:17:04',204334,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(51,1,1,0,109,'2016-05-18 18:47:04',207108,'2016-05-18 18:47:04',207108,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(52,1,1,0,109,'2016-05-18 19:17:09',205868,'2016-05-18 19:17:09',205868,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(53,1,1,0,109,'2016-05-18 19:47:09',285361,'2016-05-18 19:47:09',285361,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(54,1,1,0,109,'2016-05-18 20:17:09',364845,'2016-05-18 20:17:09',364845,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(55,1,1,0,109,'2016-05-18 20:47:09',448851,'2016-05-18 20:47:09',448851,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(56,1,1,0,109,'2016-05-18 21:17:09',449449,'2016-05-18 21:17:09',449449,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(57,1,1,0,109,'2016-05-18 21:47:14',443042,'2016-05-18 21:47:14',443042,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(58,1,1,0,109,'2016-05-18 22:17:14',461664,'2016-05-18 22:17:14',461664,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(59,1,1,0,109,'2016-05-18 22:47:19',460530,'2016-05-18 22:47:19',460530,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(60,1,1,0,109,'2016-05-18 23:17:24',458106,'2016-05-18 23:17:24',458106,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(61,1,1,0,109,'2016-05-18 23:47:24',460072,'2016-05-18 23:47:24',460072,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(62,1,1,0,109,'2016-05-19 00:17:29',458477,'2016-05-19 00:17:29',458477,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(63,1,1,0,109,'2016-05-19 00:47:29',465470,'2016-05-19 00:47:29',465470,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(64,1,1,0,109,'2016-05-19 01:17:29',480046,'2016-05-19 01:17:29',480046,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(65,1,1,0,109,'2016-05-19 01:47:29',611002,'2016-05-19 01:47:29',611002,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(66,1,1,0,109,'2016-05-19 02:17:29',780445,'2016-05-19 02:17:29',780445,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(67,1,1,0,109,'2016-05-19 02:47:29',872066,'2016-05-19 02:47:29',872066,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(68,1,1,0,109,'2016-05-19 03:17:29',982913,'2016-05-19 03:17:29',982913,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(69,1,1,0,109,'2016-05-19 03:47:30',64851,'2016-05-19 03:47:30',64851,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(70,1,1,0,109,'2016-05-19 04:17:30',205986,'2016-05-19 04:17:30',205986,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(71,1,1,0,109,'2016-05-19 04:47:30',347357,'2016-05-19 04:47:30',347357,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(72,1,1,0,109,'2016-05-19 05:17:30',433691,'2016-05-19 05:17:30',433691,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(73,1,1,0,109,'2016-05-19 05:47:30',692028,'2016-05-19 05:47:30',692028,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(74,1,1,5,77,'2016-05-19 06:00:22',960550,'2016-05-19 06:00:22',960550,0,'OK - load average: 0.00, 0.01, 0.05','',0,1,1),(75,1,1,0,109,'2016-05-19 06:17:30',784768,'2016-05-19 06:17:30',784768,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(76,1,1,0,109,'2016-05-19 06:47:30',994792,'2016-05-19 06:47:30',994792,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(77,1,1,6,77,'2016-05-19 07:00:22',968082,'2016-05-19 07:00:22',968082,0,'OK - load average: 0.00, 0.01, 0.05','',0,1,1),(78,1,1,0,109,'2016-05-19 07:17:31',121016,'2016-05-19 07:17:31',121016,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(79,1,1,0,109,'2016-05-19 07:47:31',210923,'2016-05-19 07:47:31',210923,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(80,1,1,0,109,'2016-05-19 08:17:31',222692,'2016-05-19 08:17:31',222692,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(81,1,1,0,109,'2016-05-19 08:47:31',381145,'2016-05-19 08:47:31',381145,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(82,1,1,0,109,'2016-05-19 09:17:31',542047,'2016-05-19 09:17:31',542047,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(83,1,1,0,109,'2016-05-19 09:47:31',674562,'2016-05-19 09:47:31',674562,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(84,1,1,0,109,'2016-05-19 10:17:31',792241,'2016-05-19 10:17:31',792241,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(85,1,1,0,109,'2016-05-19 10:47:31',927351,'2016-05-19 10:47:31',927351,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(86,1,1,0,109,'2016-05-19 11:17:32',3470,'2016-05-19 11:17:32',3470,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(87,1,1,0,109,'2016-05-19 11:47:32',109792,'2016-05-19 11:47:32',109792,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(88,1,1,0,109,'2016-05-19 12:17:32',237185,'2016-05-19 12:17:32',237185,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(89,1,1,0,109,'2016-05-19 12:47:32',344046,'2016-05-19 12:47:32',344046,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.',0,1,1),(90,1,1,0,109,'2016-05-19 12:58:33',939950,'2016-05-19 12:58:33',939950,0,'OK - alive Mysql is alive, running fine.','',0,1,1);
/*!40000 ALTER TABLE `icinga_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_objects`
--

DROP TABLE IF EXISTS `icinga_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_objects` (
  `object_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `objecttype_id` bigint(20) unsigned DEFAULT '0',
  `name1` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT '',
  `name2` varchar(128) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `is_active` smallint(6) DEFAULT '0',
  PRIMARY KEY (`object_id`),
  KEY `objecttype_id` (`objecttype_id`,`name1`,`name2`),
  KEY `objects_objtype_id_idx` (`objecttype_id`),
  KEY `objects_name1_idx` (`name1`),
  KEY `objects_name2_idx` (`name2`),
  KEY `objects_inst_id_idx` (`instance_id`),
  KEY `sla_idx_obj` (`objecttype_id`,`is_active`,`name1`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=latin1 COMMENT='Current and historical objects of all kinds';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_objects`
--

LOCK TABLES `icinga_objects` WRITE;
/*!40000 ALTER TABLE `icinga_objects` DISABLE KEYS */;
INSERT INTO `icinga_objects` VALUES (1,1,13,'icinga-xover',NULL,1),(2,1,14,'icinga-xover',NULL,1),(3,1,12,'check_apt',NULL,1),(4,1,12,'check_by_ssh',NULL,1),(5,1,12,'check_clamd',NULL,1),(6,1,12,'check_cluster',NULL,1),(7,1,12,'check_cluster-zone',NULL,1),(8,1,12,'check_dhcp',NULL,1),(9,1,12,'check_dig',NULL,1),(10,1,12,'check_disk',NULL,1),(11,1,12,'check_disk_smb',NULL,1),(12,1,12,'check_dns',NULL,1),(13,1,12,'check_dummy',NULL,1),(14,1,12,'check_fping4',NULL,1),(15,1,12,'check_fping6',NULL,1),(16,1,12,'check_ftp',NULL,1),(17,1,12,'check_hostalive',NULL,1),(18,1,12,'check_hostalive4',NULL,1),(19,1,12,'check_hostalive6',NULL,1),(20,1,12,'check_hpjd',NULL,1),(21,1,12,'check_http',NULL,1),(22,1,12,'check_icinga',NULL,1),(23,1,12,'check_icmp',NULL,1),(24,1,12,'check_ido',NULL,1),(25,1,12,'check_imap',NULL,1),(26,1,12,'check_ldap',NULL,1),(27,1,12,'check_load',NULL,1),(28,1,12,'check_mailq',NULL,1),(29,1,12,'check_mysql',NULL,1),(30,1,12,'check_negate',NULL,1),(31,1,12,'check_nrpe',NULL,1),(32,1,12,'check_nscp',NULL,1),(33,1,12,'check_ntp_peer',NULL,1),(34,1,12,'check_ntp_time',NULL,1),(35,1,12,'check_passive',NULL,1),(36,1,12,'check_pgsql',NULL,1),(37,1,12,'check_ping',NULL,1),(38,1,12,'check_ping4',NULL,1),(39,1,12,'check_ping6',NULL,1),(40,1,12,'check_pop',NULL,1),(41,1,12,'check_procs',NULL,1),(42,1,12,'check_random',NULL,1),(43,1,12,'check_simap',NULL,1),(44,1,12,'check_smtp',NULL,1),(45,1,12,'check_snmp',NULL,1),(46,1,12,'check_snmp-uptime',NULL,1),(47,1,12,'check_snmpv3',NULL,1),(48,1,12,'check_spop',NULL,1),(49,1,12,'check_ssh',NULL,1),(50,1,12,'check_ssl',NULL,1),(51,1,12,'check_ssmtp',NULL,1),(52,1,12,'check_swap',NULL,1),(53,1,12,'check_tcp',NULL,1),(54,1,12,'check_udp',NULL,1),(55,1,12,'check_ups',NULL,1),(56,1,12,'check_users',NULL,1),(57,1,12,'notification_mail-host-notification',NULL,0),(58,1,12,'notification_mail-service-notification',NULL,0),(59,1,9,'24x7',NULL,1),(60,1,9,'9to5',NULL,1),(61,1,9,'never',NULL,1),(62,1,3,'linux-servers',NULL,1),(63,1,3,'windows-servers',NULL,1),(64,1,4,'disk',NULL,1),(65,1,4,'http',NULL,1),(66,1,4,'ping',NULL,1),(67,1,1,'icinga-xover',NULL,1),(68,1,10,'icingaadmin',NULL,1),(69,1,11,'icingaadmins',NULL,1),(70,1,2,'icinga-xover','ping4',1),(71,1,2,'icinga-xover','ping6',1),(72,1,2,'icinga-xover','ssh',1),(73,1,2,'icinga-xover','http',0),(74,1,2,'icinga-xover','disk',1),(75,1,2,'icinga-xover','disk /',1),(76,1,2,'icinga-xover','icinga',1),(77,1,2,'icinga-xover','load',1),(78,1,2,'icinga-xover','procs',1),(79,1,2,'icinga-xover','swap',1),(80,1,2,'icinga-xover','users',1),(81,1,12,'notification_mail-host-notification',NULL,0),(82,1,12,'notification_mail-service-notification',NULL,0),(83,1,12,'notification_mail-host-notification',NULL,0),(84,1,12,'notification_mail-service-notification',NULL,0),(85,1,2,'icinga-xover','Icinga Web 2',1),(86,1,12,'notification_mail-host-notification',NULL,0),(87,1,12,'notification_mail-service-notification',NULL,0),(88,1,12,'notification_mail-host-notification',NULL,0),(89,1,12,'notification_mail-service-notification',NULL,0),(90,1,1,'dbserver',NULL,1),(91,1,1,'webserver',NULL,1),(92,1,2,'dbserver','ping4',1),(93,1,2,'dbserver','ssh',1),(94,1,2,'dbserver','disk',1),(95,1,2,'dbserver','disk /',1),(96,1,2,'webserver','ping4',1),(97,1,2,'webserver','ssh',1),(98,1,2,'webserver','disk',1),(99,1,2,'webserver','disk /',1),(100,1,12,'notification_mail-host-notification',NULL,0),(101,1,12,'notification_mail-service-notification',NULL,0),(102,1,2,'dbserver','swap',1),(103,1,2,'dbserver','users',1),(104,1,2,'webserver','swap',1),(105,1,2,'webserver','users',1),(106,1,12,'check_mysql_command',NULL,1),(107,1,12,'notification_mail-host-notification',NULL,0),(108,1,12,'notification_mail-service-notification',NULL,0),(109,1,2,'dbserver','mysql',1),(110,1,12,'notification_mail-host-notification',NULL,0),(111,1,12,'notification_mail-service-notification',NULL,0),(112,1,12,'notification_mail-host-notification',NULL,1),(113,1,12,'notification_mail-service-notification',NULL,1);
/*!40000 ALTER TABLE `icinga_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_processevents`
--

DROP TABLE IF EXISTS `icinga_processevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_processevents` (
  `processevent_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `event_type` smallint(6) DEFAULT '0',
  `event_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `event_time_usec` int(11) DEFAULT '0',
  `process_id` bigint(20) unsigned DEFAULT '0',
  `program_name` varchar(16) DEFAULT '',
  `program_version` varchar(20) DEFAULT '',
  `program_date` varchar(10) DEFAULT '',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`processevent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical Icinga process events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_processevents`
--

LOCK TABLES `icinga_processevents` WRITE;
/*!40000 ALTER TABLE `icinga_processevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_processevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_programstatus`
--

DROP TABLE IF EXISTS `icinga_programstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_programstatus` (
  `programstatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `program_version` varchar(64) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `program_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `program_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endpoint_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `is_currently_running` smallint(6) DEFAULT '0',
  `process_id` bigint(20) unsigned DEFAULT '0',
  `daemon_mode` smallint(6) DEFAULT '0',
  `last_command_check` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_log_rotation` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `disable_notif_expire_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active_service_checks_enabled` smallint(6) DEFAULT '0',
  `passive_service_checks_enabled` smallint(6) DEFAULT '0',
  `active_host_checks_enabled` smallint(6) DEFAULT '0',
  `passive_host_checks_enabled` smallint(6) DEFAULT '0',
  `event_handlers_enabled` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `obsess_over_hosts` smallint(6) DEFAULT '0',
  `obsess_over_services` smallint(6) DEFAULT '0',
  `modified_host_attributes` int(11) DEFAULT '0',
  `modified_service_attributes` int(11) DEFAULT '0',
  `global_host_event_handler` text,
  `global_service_event_handler` text,
  `config_dump_in_progress` smallint(6) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`programstatus_id`),
  UNIQUE KEY `instance_id` (`instance_id`),
  KEY `programstatus_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26876 DEFAULT CHARSET=latin1 COMMENT='Current program status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_programstatus`
--

LOCK TABLES `icinga_programstatus` WRITE;
/*!40000 ALTER TABLE `icinga_programstatus` DISABLE KEYS */;
INSERT INTO `icinga_programstatus` VALUES (26875,1,'v2.4.7','2016-05-20 03:25:15','2016-05-17 05:21:37','0000-00-00 00:00:00','icinga-xover',1,3712,1,'2016-05-20 03:25:15','0000-00-00 00:00:00',1,'0000-00-00 00:00:00',1,1,1,1,1,1,0,1,0,0,0,0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `icinga_programstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_runtimevariables`
--

DROP TABLE IF EXISTS `icinga_runtimevariables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_runtimevariables` (
  `runtimevariable_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `varname` varchar(64) DEFAULT '',
  `varvalue` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`runtimevariable_id`),
  KEY `runtimevariables_i_id_idx` (`instance_id`),
  KEY `runtimevars_iid_varn` (`instance_id`,`varname`)
) ENGINE=InnoDB AUTO_INCREMENT=107501 DEFAULT CHARSET=latin1 COMMENT='Runtime variables from the Icinga daemon';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_runtimevariables`
--

LOCK TABLES `icinga_runtimevariables` WRITE;
/*!40000 ALTER TABLE `icinga_runtimevariables` DISABLE KEYS */;
INSERT INTO `icinga_runtimevariables` VALUES (107497,1,'total_services','24',NULL),(107498,1,'total_scheduled_services','24',NULL),(107499,1,'total_hosts','3',NULL),(107500,1,'total_scheduled_hosts','3',NULL);
/*!40000 ALTER TABLE `icinga_runtimevariables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_scheduleddowntime`
--

DROP TABLE IF EXISTS `icinga_scheduleddowntime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_scheduleddowntime` (
  `scheduleddowntime_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `downtime_type` smallint(6) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `entry_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `author_name` varchar(64) DEFAULT '',
  `comment_data` text,
  `internal_downtime_id` bigint(20) unsigned DEFAULT '0',
  `triggered_by_id` bigint(20) unsigned DEFAULT '0',
  `is_fixed` smallint(6) DEFAULT '0',
  `duration` bigint(20) DEFAULT '0',
  `scheduled_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `was_started` smallint(6) DEFAULT '0',
  `actual_start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actual_start_time_usec` int(11) DEFAULT '0',
  `is_in_effect` smallint(6) DEFAULT '0',
  `trigger_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`scheduleddowntime_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`object_id`,`entry_time`,`internal_downtime_id`),
  KEY `scheduleddowntime_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 COMMENT='Current scheduled host and service downtime';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_scheduleddowntime`
--

LOCK TABLES `icinga_scheduleddowntime` WRITE;
/*!40000 ALTER TABLE `icinga_scheduleddowntime` DISABLE KEYS */;
INSERT INTO `icinga_scheduleddowntime` VALUES (9,1,1,77,'2016-05-16 20:23:55','icingaadmin','Scheduled downtime for backup',1,0,1,0,'2016-05-17 06:00:00','2016-05-17 07:00:00',0,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','icinga-xover!load!icinga-xover-1463430235-0',1),(10,1,1,77,'2016-05-17 06:00:37','icingaadmin','Scheduled downtime for backup',2,0,1,0,'2016-05-18 06:00:00','2016-05-18 07:00:00',0,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','icinga-xover!load!icinga-xover-1463464837-0',1),(11,1,1,77,'2016-05-18 06:00:38','icingaadmin','Scheduled downtime for backup',3,0,1,0,'2016-05-19 06:00:00','2016-05-19 07:00:00',0,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','icinga-xover!load!icinga-xover-1463551238-1',1),(12,1,1,77,'2016-05-19 06:00:39','icingaadmin','Scheduled downtime for backup',4,0,1,0,'2016-05-20 06:00:00','2016-05-20 07:00:00',0,'0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','icinga-xover!load!icinga-xover-1463637639-2',1);
/*!40000 ALTER TABLE `icinga_scheduleddowntime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_service_contactgroups`
--

DROP TABLE IF EXISTS `icinga_service_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_service_contactgroups` (
  `service_contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `service_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`service_contactgroup_id`),
  KEY `service_contactgroups_i_id_idx` (`instance_id`),
  KEY `scgrps_sid_cgoid` (`service_id`,`contactgroup_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1 COMMENT='Service contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_service_contactgroups`
--

LOCK TABLES `icinga_service_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_service_contactgroups` DISABLE KEYS */;
INSERT INTO `icinga_service_contactgroups` VALUES (136,1,1,69),(137,1,2,69),(138,1,3,69),(139,1,5,69),(140,1,6,69),(141,1,7,69),(142,1,8,69),(143,1,9,69),(144,1,10,69),(145,1,11,69),(146,1,12,69),(147,1,13,69),(148,1,14,69),(149,1,15,69),(150,1,16,69),(151,1,17,69),(152,1,18,69),(153,1,19,69),(154,1,20,69),(155,1,21,69),(156,1,22,69),(157,1,23,69),(158,1,24,69),(159,1,25,69);
/*!40000 ALTER TABLE `icinga_service_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_service_contacts`
--

DROP TABLE IF EXISTS `icinga_service_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_service_contacts` (
  `service_contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `service_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`service_contact_id`),
  KEY `service_contacts_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1 COMMENT='Service contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_service_contacts`
--

LOCK TABLES `icinga_service_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_service_contacts` DISABLE KEYS */;
INSERT INTO `icinga_service_contacts` VALUES (136,1,1,68),(137,1,2,68),(138,1,3,68),(139,1,5,68),(140,1,6,68),(141,1,7,68),(142,1,8,68),(143,1,9,68),(144,1,10,68),(145,1,11,68),(146,1,12,68),(147,1,13,68),(148,1,14,68),(149,1,15,68),(150,1,16,68),(151,1,17,68),(152,1,18,68),(153,1,19,68),(154,1,20,68),(155,1,21,68),(156,1,22,68),(157,1,23,68),(158,1,24,68),(159,1,25,68);
/*!40000 ALTER TABLE `icinga_service_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicechecks`
--

DROP TABLE IF EXISTS `icinga_servicechecks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicechecks` (
  `servicecheck_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `check_type` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `state_type` smallint(6) DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `command_object_id` bigint(20) unsigned DEFAULT '0',
  `command_args` text,
  `command_line` text,
  `timeout` smallint(6) DEFAULT '0',
  `early_timeout` smallint(6) DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `latency` double DEFAULT '0',
  `return_code` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `perfdata` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`servicecheck_id`),
  KEY `servicechecks_i_id_idx` (`instance_id`),
  KEY `servicechecks_time_id_idx` (`start_time`),
  KEY `servicechks_s_obj_id_idx` (`service_object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical service checks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicechecks`
--

LOCK TABLES `icinga_servicechecks` WRITE;
/*!40000 ALTER TABLE `icinga_servicechecks` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_servicechecks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicedependencies`
--

DROP TABLE IF EXISTS `icinga_servicedependencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicedependencies` (
  `servicedependency_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `dependent_service_object_id` bigint(20) unsigned DEFAULT '0',
  `dependency_type` smallint(6) DEFAULT '0',
  `inherits_parent` smallint(6) DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `fail_on_ok` smallint(6) DEFAULT '0',
  `fail_on_warning` smallint(6) DEFAULT '0',
  `fail_on_unknown` smallint(6) DEFAULT '0',
  `fail_on_critical` smallint(6) DEFAULT '0',
  PRIMARY KEY (`servicedependency_id`),
  KEY `instance_id` (`instance_id`,`config_type`,`service_object_id`,`dependent_service_object_id`,`dependency_type`,`inherits_parent`,`fail_on_ok`,`fail_on_warning`,`fail_on_unknown`,`fail_on_critical`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Service dependency definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicedependencies`
--

LOCK TABLES `icinga_servicedependencies` WRITE;
/*!40000 ALTER TABLE `icinga_servicedependencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_servicedependencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_serviceescalation_contactgroups`
--

DROP TABLE IF EXISTS `icinga_serviceescalation_contactgroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_serviceescalation_contactgroups` (
  `serviceescalation_contactgroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `serviceescalation_id` bigint(20) unsigned DEFAULT '0',
  `contactgroup_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`serviceescalation_contactgroup_id`),
  UNIQUE KEY `instance_id` (`serviceescalation_id`,`contactgroup_object_id`),
  KEY `serviceesc_cgroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Service escalation contact groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_serviceescalation_contactgroups`
--

LOCK TABLES `icinga_serviceescalation_contactgroups` WRITE;
/*!40000 ALTER TABLE `icinga_serviceescalation_contactgroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_serviceescalation_contactgroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_serviceescalation_contacts`
--

DROP TABLE IF EXISTS `icinga_serviceescalation_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_serviceescalation_contacts` (
  `serviceescalation_contact_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `serviceescalation_id` bigint(20) unsigned DEFAULT '0',
  `contact_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`serviceescalation_contact_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`serviceescalation_id`,`contact_object_id`),
  KEY `serviceesc_contacts_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Service escalation contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_serviceescalation_contacts`
--

LOCK TABLES `icinga_serviceescalation_contacts` WRITE;
/*!40000 ALTER TABLE `icinga_serviceescalation_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_serviceescalation_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_serviceescalations`
--

DROP TABLE IF EXISTS `icinga_serviceescalations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_serviceescalations` (
  `serviceescalation_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `first_notification` smallint(6) DEFAULT '0',
  `last_notification` smallint(6) DEFAULT '0',
  `notification_interval` double DEFAULT '0',
  `escalate_on_recovery` smallint(6) DEFAULT '0',
  `escalate_on_warning` smallint(6) DEFAULT '0',
  `escalate_on_unknown` smallint(6) DEFAULT '0',
  `escalate_on_critical` smallint(6) DEFAULT '0',
  PRIMARY KEY (`serviceescalation_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`service_object_id`,`timeperiod_object_id`,`first_notification`,`last_notification`),
  KEY `serviceesc_i_id_idx` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Service escalation definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_serviceescalations`
--

LOCK TABLES `icinga_serviceescalations` WRITE;
/*!40000 ALTER TABLE `icinga_serviceescalations` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_serviceescalations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicegroup_members`
--

DROP TABLE IF EXISTS `icinga_servicegroup_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicegroup_members` (
  `servicegroup_member_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `servicegroup_id` bigint(20) unsigned DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`servicegroup_member_id`),
  KEY `servicegroup_members_i_id_idx` (`instance_id`),
  KEY `sgmbrs_sgid_soid` (`servicegroup_id`,`service_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1 COMMENT='Servicegroup members';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicegroup_members`
--

LOCK TABLES `icinga_servicegroup_members` WRITE;
/*!40000 ALTER TABLE `icinga_servicegroup_members` DISABLE KEYS */;
INSERT INTO `icinga_servicegroup_members` VALUES (66,1,3,70),(67,1,3,71),(68,1,1,74),(69,1,1,75),(70,1,2,85),(71,1,3,92),(72,1,1,94),(73,1,1,95),(74,1,3,96),(75,1,1,98),(76,1,1,99);
/*!40000 ALTER TABLE `icinga_servicegroup_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicegroups`
--

DROP TABLE IF EXISTS `icinga_servicegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicegroups` (
  `servicegroup_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `servicegroup_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` text,
  `notes` text,
  `notes_url` text,
  `action_url` text,
  PRIMARY KEY (`servicegroup_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`servicegroup_object_id`),
  KEY `servicegroups_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Servicegroup definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicegroups`
--

LOCK TABLES `icinga_servicegroups` WRITE;
/*!40000 ALTER TABLE `icinga_servicegroups` DISABLE KEYS */;
INSERT INTO `icinga_servicegroups` VALUES (1,1,1,64,'Disk Checks','','',''),(2,1,1,65,'HTTP Checks','','',''),(3,1,1,66,'Ping Checks','','','');
/*!40000 ALTER TABLE `icinga_servicegroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_services`
--

DROP TABLE IF EXISTS `icinga_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_services` (
  `service_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `host_object_id` bigint(20) unsigned DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `display_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT '',
  `check_command_object_id` bigint(20) unsigned DEFAULT '0',
  `check_command_args` text,
  `eventhandler_command_object_id` bigint(20) unsigned DEFAULT '0',
  `eventhandler_command_args` text,
  `notification_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `check_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `failure_prediction_options` varchar(64) DEFAULT '',
  `check_interval` double DEFAULT '0',
  `retry_interval` double DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `first_notification_delay` double DEFAULT '0',
  `notification_interval` double DEFAULT '0',
  `notify_on_warning` smallint(6) DEFAULT '0',
  `notify_on_unknown` smallint(6) DEFAULT '0',
  `notify_on_critical` smallint(6) DEFAULT '0',
  `notify_on_recovery` smallint(6) DEFAULT '0',
  `notify_on_flapping` smallint(6) DEFAULT '0',
  `notify_on_downtime` smallint(6) DEFAULT '0',
  `stalk_on_ok` smallint(6) DEFAULT '0',
  `stalk_on_warning` smallint(6) DEFAULT '0',
  `stalk_on_unknown` smallint(6) DEFAULT '0',
  `stalk_on_critical` smallint(6) DEFAULT '0',
  `is_volatile` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `flap_detection_on_ok` smallint(6) DEFAULT '0',
  `flap_detection_on_warning` smallint(6) DEFAULT '0',
  `flap_detection_on_unknown` smallint(6) DEFAULT '0',
  `flap_detection_on_critical` smallint(6) DEFAULT '0',
  `low_flap_threshold` double DEFAULT '0',
  `high_flap_threshold` double DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `freshness_checks_enabled` smallint(6) DEFAULT '0',
  `freshness_threshold` int(11) DEFAULT '0',
  `passive_checks_enabled` smallint(6) DEFAULT '0',
  `event_handler_enabled` smallint(6) DEFAULT '0',
  `active_checks_enabled` smallint(6) DEFAULT '0',
  `retain_status_information` smallint(6) DEFAULT '0',
  `retain_nonstatus_information` smallint(6) DEFAULT '0',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `obsess_over_service` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `notes` text,
  `notes_url` text,
  `action_url` text,
  `icon_image` text,
  `icon_image_alt` text,
  PRIMARY KEY (`service_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`service_object_id`),
  KEY `service_object_id` (`service_object_id`),
  KEY `services_i_id_idx` (`instance_id`),
  KEY `services_host_object_id_idx` (`host_object_id`),
  KEY `services_combined_object_idx` (`service_object_id`,`host_object_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COMMENT='Service definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_services`
--

LOCK TABLES `icinga_services` WRITE;
/*!40000 ALTER TABLE `icinga_services` DISABLE KEYS */;
INSERT INTO `icinga_services` VALUES (1,1,1,67,70,'ping4',38,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(2,1,1,67,71,'ping6',39,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(3,1,1,67,72,'ssh',49,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(4,1,1,67,73,'http',21,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(5,1,1,67,74,'disk',10,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(6,1,1,67,75,'disk /',10,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(7,1,1,67,76,'icinga',22,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(8,1,1,67,77,'load',27,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(9,1,1,67,78,'procs',41,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(10,1,1,67,79,'swap',52,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(11,1,1,67,80,'users',56,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(12,1,1,67,85,'Icinga Web 2',21,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(13,1,1,90,92,'ping4',38,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(14,1,1,90,93,'ssh',49,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(15,1,1,90,94,'disk',10,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(16,1,1,90,95,'disk /',10,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(17,1,1,91,96,'ping4',38,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(18,1,1,91,97,'ssh',49,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(19,1,1,91,98,'disk',10,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(20,1,1,91,99,'disk /',10,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(21,1,1,90,102,'swap',52,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(22,1,1,90,103,'users',56,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(23,1,1,91,104,'swap',52,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(24,1,1,91,105,'users',56,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','',''),(25,1,1,90,109,'mysql',106,'',0,NULL,0,0,'',1,0.5,5,0,30,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,30,30,1,1,60,1,1,1,0,0,1,0,0,'','','','','');
/*!40000 ALTER TABLE `icinga_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_servicestatus`
--

DROP TABLE IF EXISTS `icinga_servicestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_servicestatus` (
  `servicestatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `service_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `output` text,
  `long_output` text,
  `perfdata` text,
  `check_source` text,
  `current_state` smallint(6) DEFAULT '0',
  `has_been_checked` smallint(6) DEFAULT '0',
  `should_be_scheduled` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `last_check` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `next_check` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `check_type` smallint(6) DEFAULT '0',
  `last_state_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_hard_state_change` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_hard_state` smallint(6) DEFAULT '0',
  `last_time_ok` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_time_warning` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_time_unknown` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_time_critical` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state_type` smallint(6) DEFAULT '0',
  `last_notification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `next_notification` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `no_more_notifications` smallint(6) DEFAULT '0',
  `notifications_enabled` smallint(6) DEFAULT '0',
  `problem_has_been_acknowledged` smallint(6) DEFAULT '0',
  `acknowledgement_type` smallint(6) DEFAULT '0',
  `current_notification_number` smallint(6) DEFAULT '0',
  `passive_checks_enabled` smallint(6) DEFAULT '0',
  `active_checks_enabled` smallint(6) DEFAULT '0',
  `event_handler_enabled` smallint(6) DEFAULT '0',
  `flap_detection_enabled` smallint(6) DEFAULT '0',
  `is_flapping` smallint(6) DEFAULT '0',
  `percent_state_change` double DEFAULT '0',
  `latency` double DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `scheduled_downtime_depth` smallint(6) DEFAULT '0',
  `failure_prediction_enabled` smallint(6) DEFAULT '0',
  `process_performance_data` smallint(6) DEFAULT '0',
  `obsess_over_service` smallint(6) DEFAULT '0',
  `modified_service_attributes` int(11) DEFAULT '0',
  `original_attributes` text,
  `event_handler` text,
  `check_command` text,
  `normal_check_interval` double DEFAULT '0',
  `retry_check_interval` double DEFAULT '0',
  `check_timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `is_reachable` smallint(6) DEFAULT '0',
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`servicestatus_id`),
  UNIQUE KEY `object_id` (`service_object_id`),
  KEY `servicestatus_i_id_idx` (`instance_id`),
  KEY `srvcstatus_stat_upd_time_idx` (`status_update_time`),
  KEY `srvcstatus_current_state_idx` (`current_state`),
  KEY `srvcstatus_check_type_idx` (`check_type`),
  KEY `srvcstatus_state_type_idx` (`state_type`),
  KEY `srvcstatus_last_state_chg_idx` (`last_state_change`),
  KEY `srvcstatus_notif_enabled_idx` (`notifications_enabled`),
  KEY `srvcstatus_problem_ack_idx` (`problem_has_been_acknowledged`),
  KEY `srvcstatus_act_chks_en_idx` (`active_checks_enabled`),
  KEY `srvcstatus_pas_chks_en_idx` (`passive_checks_enabled`),
  KEY `srvcstatus_event_hdl_en_idx` (`event_handler_enabled`),
  KEY `srvcstatus_flap_det_en_idx` (`flap_detection_enabled`),
  KEY `srvcstatus_is_flapping_idx` (`is_flapping`),
  KEY `srvcstatus_p_state_chg_idx` (`percent_state_change`),
  KEY `srvcstatus_latency_idx` (`latency`),
  KEY `srvcstatus_ex_time_idx` (`execution_time`),
  KEY `srvcstatus_sch_downt_d_idx` (`scheduled_downtime_depth`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 COMMENT='Current service status information';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_servicestatus`
--

LOCK TABLES `icinga_servicestatus` WRITE;
/*!40000 ALTER TABLE `icinga_servicestatus` DISABLE KEYS */;
INSERT INTO `icinga_servicestatus` VALUES (1,1,70,'2016-05-20 03:24:49','PING OK - Packet loss = 0%, RTA = 0.08 ms','','rta=0.081000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:49','2016-05-20 03:25:45',0,'2016-05-17 00:45:26','2016-05-17 00:45:26',0,'2016-05-20 03:24:49','0000-00-00 00:00:00','2016-05-17 00:44:53','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:27:14',0,1,0,0,0,1,1,1,0,0,0,0,4.006459951400757,0,0,1,0,0,'null','','ping4',1,0.5,0,1,1),(2,1,71,'2016-05-20 03:24:20','PING OK - Packet loss = 0%, RTA = 0.06 ms','','rta=0.064000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:20','2016-05-20 03:25:16',0,'2016-05-17 00:46:01','2016-05-17 00:46:01',0,'2016-05-20 03:24:20','0000-00-00 00:00:00','2016-05-17 00:44:38','0000-00-00 00:00:00',1,'2016-05-17 00:46:01','2016-05-20 03:27:14',0,1,0,0,0,1,1,1,0,0,0,0,4.00747013092041,0,0,1,0,0,'null','','ping6',1,0.5,0,1,1),(3,1,72,'2016-05-20 03:24:36','SSH OK - OpenSSH_6.6.1 (protocol 2.0) ','','time=0.021319s;;;0.000000;10.000000','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:36','2016-05-20 03:25:36',0,'2016-05-17 00:45:48','2016-05-17 00:45:48',0,'2016-05-20 03:24:36','0000-00-00 00:00:00','2016-05-17 00:44:47','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:27:14',0,1,0,0,0,1,1,1,0,0,0,0,0.024209976196289062,0,0,1,0,0,'null','','ssh',1,0.5,0,1,1),(4,1,73,'2016-05-17 02:57:19','HTTP WARNING: HTTP/1.1 403 Forbidden - 5179 bytes in 0.002 second response time ','','time=0.002329s;;;0.000000 size=5179B;;;0','icinga-xover',1,1,1,1,5,'2016-05-17 02:57:19','2016-05-17 02:58:19',0,'2016-05-17 00:48:28','2016-05-17 00:48:28',1,'0000-00-00 00:00:00','2016-05-17 02:57:19','2016-05-17 00:44:55','2016-05-17 00:47:28',1,'2016-05-17 02:54:08','2016-05-17 03:24:08',0,1,0,0,7,1,1,1,0,0,0,0,0.004598855972290039,0,0,1,0,0,'null','','http',1,0.5,0,1,1),(5,1,74,'2016-05-20 03:24:36','DISK OK - free space: / 32835 MB (90% inode=97%): /boot 58 MB (33% inode=99%):','','/=3345MB;30512;34326;0;38141 /boot=117MB;151;170;0;189','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:36','2016-05-20 03:25:36',0,'2016-05-17 00:45:13','2016-05-17 00:45:13',0,'2016-05-20 03:24:36','0000-00-00 00:00:00','2016-05-17 00:44:50','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:27:14',0,1,0,0,0,1,1,1,0,0,0,0,0.007510185241699219,0,0,1,0,0,'null','','disk',1,0.5,0,1,1),(6,1,75,'2016-05-20 03:25:05','DISK OK - free space: / 32835 MB (90% inode=97%):','','/=3345MB;30512;34326;0;38141','icinga-xover',0,1,1,1,5,'2016-05-20 03:25:05','2016-05-20 03:26:05',0,'2016-05-17 00:45:08','2016-05-17 00:45:08',0,'2016-05-20 03:25:05','0000-00-00 00:00:00','2016-05-17 00:44:33','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:27:14',0,1,0,0,0,1,1,1,0,0,0,0,0.006654024124145508,0,0,1,0,0,'null','','disk',1,0.5,0,1,1),(7,1,76,'2016-05-20 03:24:20','Icinga 2 has been running for 2 days, 22 hours, 2 minutes and 42 seconds. Version: v2.4.7','','active_host_checks=0.050000000000000003 passive_host_checks=0 active_host_checks_1min=3 passive_host_checks_1min=0 active_host_checks_5min=15 passive_host_checks_5min=0 active_host_checks_15min=45 passive_host_checks_15min=0 active_service_checks=0.40000000000000002 passive_service_checks=0 active_service_checks_1min=24 passive_service_checks_1min=0 active_service_checks_5min=120 passive_service_checks_5min=0 active_service_checks_15min=360 passive_service_checks_15min=0 min_latency=0 max_latency=0 avg_latency=0 min_execution_time=0 max_execution_time=0 avg_execution_time=0.67317914962768555 num_services_ok=24 num_services_warning=0 num_services_critical=0 num_services_unknown=0 num_services_pending=0 num_services_unreachable=0 num_services_flapping=0 num_services_in_downtime=0 num_services_acknowledged=0 uptime=252162.87663388252 num_hosts_up=3 num_hosts_down=0 num_hosts_pending=0 num_hosts_unreachable=0 num_hosts_flapping=0 num_hosts_in_downtime=0 num_hosts_acknowledged=0','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:20','2016-05-20 03:25:20',0,'2016-05-16 20:23:58','2016-05-16 20:23:58',0,'2016-05-20 03:24:20','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:27:14',0,1,0,0,0,1,1,1,0,0,0,0,0.0004711151123046875,0,0,1,0,0,'null','','icinga',1,0.5,0,1,1),(8,1,77,'2016-05-20 03:24:22','OK - load average: 0.08, 0.10, 0.07','','load1=0.080;5.000;10.000;0; load5=0.100;4.000;6.000;0; load15=0.070;3.000;4.000;0;','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:22','2016-05-20 03:25:22',0,'2016-05-17 00:45:59','2016-05-17 00:45:59',0,'2016-05-20 03:24:22','0000-00-00 00:00:00','2016-05-17 00:44:15','0000-00-00 00:00:00',1,'2016-05-19 07:00:22','2016-05-20 03:27:14',0,1,0,0,0,1,1,1,0,0,0,0,0.014768838882446289,0,0,1,0,0,'null','','load',1,0.5,0,1,1),(9,1,78,'2016-05-20 03:24:28','PROCS OK: 112 processes ','','procs=112;250;400;0;','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:28','2016-05-20 03:25:28',0,'2016-05-17 00:45:14','2016-05-17 00:45:14',0,'2016-05-20 03:24:28','0000-00-00 00:00:00','2016-05-17 00:44:15','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:27:14',0,1,0,0,0,1,1,1,0,0,0,0,0.02298283576965332,0,0,1,0,0,'null','','procs',1,0.5,0,1,1),(10,1,79,'2016-05-20 03:25:00','SWAP OK - 90% free (1370 MB out of 1535 MB) ','','swap=1370MB;767;383;0;1535','icinga-xover',0,1,1,1,5,'2016-05-20 03:25:00','2016-05-20 03:26:00',0,'2016-05-17 00:45:58','2016-05-17 00:45:58',0,'2016-05-20 03:25:00','0000-00-00 00:00:00','2016-05-17 00:44:24','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:27:14',0,1,0,0,0,1,1,1,0,0,0,0,0.005833148956298828,0,0,1,0,0,'null','','swap',1,0.5,0,1,1),(11,1,80,'2016-05-20 03:24:25','USERS OK - 2 users currently logged in ','','users=2;20;50;0','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:25','2016-05-20 03:25:25',0,'2016-05-17 00:45:13','2016-05-17 00:45:13',0,'2016-05-20 03:24:25','0000-00-00 00:00:00','2016-05-17 00:44:24','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:27:14',0,1,0,0,0,1,1,1,0,0,0,0,0.0025141239166259766,0,0,1,0,0,'null','','users',1,0.5,0,1,1),(12,1,85,'2016-05-20 03:24:38','HTTP OK: HTTP/1.1 301 Moved Permanently - 474 bytes in 0.001 second response time ','','time=0.000990s;;;0.000000 size=474B;;;0','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:38','2016-05-20 03:25:38',0,'2016-05-17 02:57:57','2016-05-17 02:57:57',0,'2016-05-20 03:24:38','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:29:59',0,1,0,0,0,1,1,1,0,0,0,0,0.002707958221435547,0,0,1,0,0,'null','','http',1,0.5,0,1,1),(13,1,92,'2016-05-20 03:24:56','PING OK - Packet loss = 0%, RTA = 2.86 ms','','rta=2.857000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:56','2016-05-20 03:25:52',0,'2016-05-17 04:14:28','2016-05-17 04:14:58',0,'2016-05-20 03:24:56','0000-00-00 00:00:00','0000-00-00 00:00:00','2016-05-17 04:13:57',1,'0000-00-00 00:00:00','2016-05-20 03:44:29',0,1,0,0,0,1,1,1,0,0,0,0,4.017240047454834,0,0,1,0,0,'null','','ping4',1,0.5,0,1,1),(14,1,93,'2016-05-20 03:25:09','SSH OK - OpenSSH_6.6.1 (protocol 2.0) ','','time=0.011379s;;;0.000000;10.000000','icinga-xover',0,1,1,1,5,'2016-05-20 03:25:09','2016-05-20 03:26:09',0,'2016-05-17 03:12:21','2016-05-17 03:12:21',0,'2016-05-20 03:25:09','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:44:29',0,1,0,0,0,1,1,1,0,0,0,0,0.013930797576904297,0,0,1,0,0,'null','','ssh',1,0.5,0,1,1),(15,1,94,'2016-05-20 03:24:36','DISK OK - free space: / 32835 MB (90% inode=97%): /boot 58 MB (33% inode=99%):','','/=3345MB;30512;34326;0;38141 /boot=117MB;151;170;0;189','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:36','2016-05-20 03:25:36',0,'2016-05-17 03:12:24','2016-05-17 03:12:24',0,'2016-05-20 03:24:36','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:44:29',0,1,0,0,0,1,1,1,0,0,0,0,0.007719993591308594,0,0,1,0,0,'null','','disk',1,0.5,0,1,1),(16,1,95,'2016-05-20 03:24:55','DISK OK - free space: / 32835 MB (90% inode=97%):','','/=3345MB;30512;34326;0;38141','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:55','2016-05-20 03:25:55',0,'2016-05-17 03:12:30','2016-05-17 03:12:30',0,'2016-05-20 03:24:55','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:44:29',0,1,0,0,0,1,1,1,0,0,0,0,0.0032579898834228516,0,0,1,0,0,'null','','disk',1,0.5,0,1,1),(17,1,96,'2016-05-20 03:25:11','PING OK - Packet loss = 0%, RTA = 0.63 ms','','rta=0.633000ms;100.000000;200.000000;0.000000 pl=0%;5;15;0','icinga-xover',0,1,1,1,5,'2016-05-20 03:25:11','2016-05-20 03:26:07',0,'2016-05-18 01:37:41','2016-05-18 01:38:11',0,'2016-05-20 03:25:11','2016-05-18 01:37:15','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:44:29',0,1,0,0,0,1,1,1,0,0,0,0,4.00907301902771,0,0,1,0,0,'null','','ping4',1,0.5,0,1,1),(18,1,97,'2016-05-20 03:24:41','SSH OK - OpenSSH_6.6.1 (protocol 2.0) ','','time=0.017947s;;;0.000000;10.000000','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:41','2016-05-20 03:25:41',0,'2016-05-17 03:12:31','2016-05-17 03:12:31',0,'2016-05-20 03:24:41','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:44:29',0,1,0,0,0,1,1,1,0,0,0,0,0.022813081741333008,0,0,1,0,0,'null','','ssh',1,0.5,0,1,1),(19,1,98,'2016-05-20 03:24:40','DISK OK - free space: / 32835 MB (90% inode=97%): /boot 58 MB (33% inode=99%):','','/=3345MB;30512;34326;0;38141 /boot=117MB;151;170;0;189','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:40','2016-05-20 03:25:40',0,'2016-05-17 03:12:07','2016-05-17 03:12:07',0,'2016-05-20 03:24:40','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:44:29',0,1,0,0,0,1,1,1,0,0,0,0,0.0028848648071289062,0,0,1,0,0,'null','','disk',1,0.5,0,1,1),(20,1,99,'2016-05-20 03:24:35','DISK OK - free space: / 32835 MB (90% inode=97%):','','/=3345MB;30512;34326;0;38141','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:35','2016-05-20 03:25:35',0,'2016-05-17 03:12:26','2016-05-17 03:12:26',0,'2016-05-20 03:24:35','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:44:29',0,1,0,0,0,1,1,1,0,0,0,0,0.007859945297241211,0,0,1,0,0,'null','','disk',1,0.5,0,1,1),(21,1,102,'2016-05-20 03:25:17','SWAP OK - 90% free (1370 MB out of 1535 MB) ','','swap=1370MB;767;383;0;1535','icinga-xover',0,1,1,1,5,'2016-05-20 03:25:17','2016-05-20 03:26:17',0,'2016-05-17 03:28:25','2016-05-17 03:28:25',0,'2016-05-20 03:25:17','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:31:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0022928714752197266,0,0,1,0,0,'null','','swap',1,0.5,0,1,1),(22,1,103,'2016-05-20 03:25:06','USERS OK - 2 users currently logged in ','','users=2;20;50;0','icinga-xover',0,1,1,1,5,'2016-05-20 03:25:06','2016-05-20 03:26:06',0,'2016-05-17 03:28:05','2016-05-17 03:28:05',0,'2016-05-20 03:25:06','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:31:24',0,1,0,0,0,1,1,1,0,0,0,0,0.00160980224609375,0,0,1,0,0,'null','','users',1,0.5,0,1,1),(23,1,104,'2016-05-20 03:25:06','SWAP OK - 90% free (1370 MB out of 1535 MB) ','','swap=1370MB;767;383;0;1535','icinga-xover',0,1,1,1,5,'2016-05-20 03:25:06','2016-05-20 03:26:06',0,'2016-05-17 03:28:15','2016-05-17 03:28:15',0,'2016-05-20 03:25:06','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:31:24',0,1,0,0,0,1,1,1,0,0,0,0,0.003718137741088867,0,0,1,0,0,'null','','swap',1,0.5,0,1,1),(24,1,105,'2016-05-20 03:25:13','USERS OK - 2 users currently logged in ','','users=2;20;50;0','icinga-xover',0,1,1,1,5,'2016-05-20 03:25:13','2016-05-20 03:26:13',0,'2016-05-17 03:28:19','2016-05-17 03:28:19',0,'2016-05-20 03:25:13','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'0000-00-00 00:00:00','2016-05-20 03:31:24',0,1,0,0,0,1,1,1,0,0,0,0,0.0015060901641845703,0,0,1,0,0,'null','','users',1,0.5,0,1,1),(25,1,109,'2016-05-20 03:24:33','OK - alive Mysql is alive, running fine.','','','icinga-xover',0,1,1,1,5,'2016-05-20 03:24:33','2016-05-20 03:25:33',0,'2016-05-19 13:51:03','2016-05-19 13:51:33',0,'2016-05-20 03:24:33','0000-00-00 00:00:00','2016-05-17 05:21:31','2016-05-19 13:50:33',1,'2016-05-19 12:58:33','2016-05-20 03:48:34',0,1,0,0,0,1,1,1,0,0,0,0,0.02761101722717285,0,0,1,0,0,'null','','mysql_command',1,0.5,0,1,1);
/*!40000 ALTER TABLE `icinga_servicestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_statehistory`
--

DROP TABLE IF EXISTS `icinga_statehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_statehistory` (
  `statehistory_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `state_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state_time_usec` int(11) DEFAULT '0',
  `object_id` bigint(20) unsigned DEFAULT '0',
  `state_change` smallint(6) DEFAULT '0',
  `state` smallint(6) DEFAULT '0',
  `state_type` smallint(6) DEFAULT '0',
  `current_check_attempt` smallint(6) DEFAULT '0',
  `max_check_attempts` smallint(6) DEFAULT '0',
  `last_state` smallint(6) DEFAULT '0',
  `last_hard_state` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `check_source` varchar(255) DEFAULT NULL,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`statehistory_id`),
  KEY `statehist_i_id_o_id_s_ty_s_ti` (`instance_id`,`object_id`,`state_type`,`state_time`),
  KEY `statehist_state_idx` (`object_id`,`state`),
  KEY `sla_idx_sthist` (`object_id`,`state_time`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 COMMENT='Historical host and service state changes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_statehistory`
--

LOCK TABLES `icinga_statehistory` WRITE;
/*!40000 ALTER TABLE `icinga_statehistory` DISABLE KEYS */;
INSERT INTO `icinga_statehistory` VALUES (1,1,'2016-05-17 00:45:08',820930,75,1,0,1,1,5,3,0,'DISK OK - free space: / 34534 MB (95% inode=97%):','','icinga-xover',1),(2,1,'2016-05-17 00:45:13',414273,80,1,0,1,1,5,3,0,'USERS OK - 2 users currently logged in ','','icinga-xover',1),(3,1,'2016-05-17 00:45:13',960917,74,1,0,1,1,5,3,0,'DISK OK - free space: / 34534 MB (95% inode=97%): /boot 58 MB (33% inode=99%):','','icinga-xover',1),(4,1,'2016-05-17 00:45:14',474219,78,1,0,1,1,5,3,0,'PROCS OK: 91 processes ','','icinga-xover',1),(5,1,'2016-05-17 00:45:26',196089,70,1,0,1,1,5,3,0,'PING OK - Packet loss = 0%, RTA = 0.07 ms','','icinga-xover',1),(6,1,'2016-05-17 00:45:28',257220,73,1,2,1,1,5,3,2,'connect to address 127.0.0.1 and port 80: Connection refused','HTTP CRITICAL - Unable to open TCP socket','icinga-xover',1),(7,1,'2016-05-17 00:45:48',874982,72,1,0,1,1,5,3,0,'SSH OK - OpenSSH_6.6.1 (protocol 2.0) ','','icinga-xover',1),(8,1,'2016-05-17 00:45:58',264568,79,1,0,1,1,5,3,0,'SWAP OK - 100% free (1533 MB out of 1535 MB) ','','icinga-xover',1),(9,1,'2016-05-17 00:45:59',716540,77,1,0,1,1,5,3,0,'OK - load average: 0.00, 0.02, 0.05','','icinga-xover',1),(10,1,'2016-05-17 00:46:00',704160,67,1,0,1,1,3,1,0,'PING OK - Packet loss = 0%, RTA = 0.05 ms','','icinga-xover',1),(11,1,'2016-05-17 00:46:01',156848,71,1,0,1,1,5,3,0,'PING OK - Packet loss = 0%, RTA = 0.05 ms','','icinga-xover',1),(12,1,'2016-05-17 00:48:28',256314,73,1,1,1,1,5,2,1,'HTTP WARNING: HTTP/1.1 403 Forbidden - 5168 bytes in 0.002 second response time ','','icinga-xover',1),(13,1,'2016-05-17 02:57:57',766596,85,1,0,1,1,5,3,0,'HTTP OK: HTTP/1.1 301 Moved Permanently - 474 bytes in 0.001 second response time ','','icinga-xover',1),(14,1,'2016-05-17 03:11:59',540083,90,1,0,1,1,3,1,0,'PING OK - Packet loss = 0%, RTA = 0.75 ms','','icinga-xover',1),(15,1,'2016-05-17 03:12:07',144568,98,1,0,1,1,5,3,0,'DISK OK - free space: / 34360 MB (94% inode=97%): /boot 58 MB (33% inode=99%):','','icinga-xover',1),(16,1,'2016-05-17 03:12:16',190958,96,1,0,1,1,5,3,0,'PING OK - Packet loss = 0%, RTA = 0.62 ms','','icinga-xover',1),(17,1,'2016-05-17 03:12:21',794049,93,1,0,1,1,5,3,0,'SSH OK - OpenSSH_6.6.1 (protocol 2.0) ','','icinga-xover',1),(18,1,'2016-05-17 03:12:24',403928,94,1,0,1,1,5,3,0,'DISK OK - free space: / 34360 MB (94% inode=97%): /boot 58 MB (33% inode=99%):','','icinga-xover',1),(19,1,'2016-05-17 03:12:26',403908,99,1,0,1,1,5,3,0,'DISK OK - free space: / 34360 MB (94% inode=97%):','','icinga-xover',1),(20,1,'2016-05-17 03:12:29',652513,91,1,0,1,1,3,1,0,'PING OK - Packet loss = 0%, RTA = 0.63 ms','','icinga-xover',1),(21,1,'2016-05-17 03:12:30',655473,95,1,0,1,1,5,3,0,'DISK OK - free space: / 34360 MB (94% inode=97%):','','icinga-xover',1),(22,1,'2016-05-17 03:12:31',56967,97,1,0,1,1,5,3,0,'SSH OK - OpenSSH_6.6.1 (protocol 2.0) ','','icinga-xover',1),(23,1,'2016-05-17 03:12:36',702414,92,1,0,1,1,5,3,0,'PING OK - Packet loss = 0%, RTA = 0.64 ms','','icinga-xover',1),(24,1,'2016-05-17 03:28:05',862626,103,1,0,1,1,5,3,0,'USERS OK - 2 users currently logged in ','','icinga-xover',1),(25,1,'2016-05-17 03:28:15',882994,104,1,0,1,1,5,3,0,'SWAP OK - 100% free (1528 MB out of 1535 MB) ','','icinga-xover',1),(26,1,'2016-05-17 03:28:19',632571,105,1,0,1,1,5,3,0,'USERS OK - 2 users currently logged in ','','icinga-xover',1),(27,1,'2016-05-17 03:28:25',533674,102,1,0,1,1,5,3,0,'SWAP OK - 100% free (1528 MB out of 1535 MB) ','','icinga-xover',1),(28,1,'2016-05-17 04:13:57',70395,92,1,2,0,1,5,0,0,'CRITICAL - Host Unreachable (192.168.200.41)','','icinga-xover',1),(29,1,'2016-05-17 04:13:57',72108,90,1,1,0,1,3,0,0,'CRITICAL - Host Unreachable (192.168.200.41)','','icinga-xover',1),(30,1,'2016-05-17 04:14:12',79845,90,1,0,0,1,3,1,0,'PING OK - Packet loss = 0%, RTA = 5.24 ms','','icinga-xover',1),(31,1,'2016-05-17 04:14:28',431853,92,1,0,0,1,5,2,0,'PING OK - Packet loss = 0%, RTA = 6.17 ms','','icinga-xover',1),(32,1,'2016-05-17 04:14:42',75386,90,1,0,1,1,3,0,0,'PING OK - Packet loss = 0%, RTA = 0.83 ms','','icinga-xover',1),(33,1,'2016-05-17 04:14:58',379429,92,1,0,1,1,5,0,0,'PING OK - Packet loss = 0%, RTA = 0.79 ms','','icinga-xover',1),(34,1,'2016-05-17 05:15:29',622004,109,1,0,1,1,5,3,0,'OK - alive Mysql is alive, running fine.','','icinga-xover',1),(35,1,'2016-05-17 05:16:31',740876,109,1,3,0,1,5,0,0,'Error: Non-optional macro \'mysql_user\' used in argument \'-u\' is missing.','','icinga-xover',1),(36,1,'2016-05-17 05:19:01',740662,109,1,3,1,1,5,3,3,'Error: Non-optional macro \'mysql_user\' used in argument \'-u\' is missing.','','icinga-xover',1),(37,1,'2016-05-17 05:22:33',893126,109,1,0,1,1,5,3,0,'OK - alive Mysql is alive, running fine.','','icinga-xover',1),(38,1,'2016-05-18 01:04:33',883316,109,1,2,0,1,5,0,0,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.','icinga-xover',1),(39,1,'2016-05-18 01:07:03',886349,109,1,2,1,1,5,2,2,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.','icinga-xover',1),(40,1,'2016-05-18 01:37:15',177619,96,1,1,0,1,5,0,0,'PING WARNING - Packet loss = 0%, RTA = 109.09 ms','','icinga-xover',1),(41,1,'2016-05-18 01:37:41',803076,96,1,0,0,1,5,1,0,'PING OK - Packet loss = 0%, RTA = 9.30 ms','','icinga-xover',1),(42,1,'2016-05-18 01:38:11',360471,96,1,0,1,1,5,0,0,'PING OK - Packet loss = 0%, RTA = 0.58 ms','','icinga-xover',1),(43,1,'2016-05-19 12:58:33',938386,109,1,0,1,1,5,2,0,'OK - alive Mysql is alive, running fine.','','icinga-xover',1),(44,1,'2016-05-19 13:48:33',898101,109,1,2,0,1,5,0,0,'/usr/bin/mysqladmin: connect to server at \'192.168.200.41\' failed','error: \'Can\'t connect to MySQL server on \'192.168.200.41\' (111)\'\\nCheck that mysqld is running on 192.168.200.41 and that the port is 3306.\\nYou can check this by doing \'telnet 192.168.200.41 3306\'\\nCRITICAL -  Mysql is DOWN.','icinga-xover',1),(45,1,'2016-05-19 13:51:03',904597,109,1,0,0,1,5,2,0,'OK - alive Mysql is alive, running fine.','','icinga-xover',1),(46,1,'2016-05-19 13:51:33',891258,109,1,0,1,1,5,0,0,'OK - alive Mysql is alive, running fine.','','icinga-xover',1);
/*!40000 ALTER TABLE `icinga_statehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_systemcommands`
--

DROP TABLE IF EXISTS `icinga_systemcommands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_systemcommands` (
  `systemcommand_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_time_usec` int(11) DEFAULT '0',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_time_usec` int(11) DEFAULT '0',
  `command_line` text,
  `timeout` smallint(6) DEFAULT '0',
  `early_timeout` smallint(6) DEFAULT '0',
  `execution_time` double DEFAULT '0',
  `return_code` smallint(6) DEFAULT '0',
  `output` text,
  `long_output` text,
  `endpoint_object_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`systemcommand_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`start_time`,`start_time_usec`),
  KEY `systemcommands_i_id_idx` (`instance_id`),
  KEY `systemcommands_time_id_idx` (`start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Historical system commands that are executed';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_systemcommands`
--

LOCK TABLES `icinga_systemcommands` WRITE;
/*!40000 ALTER TABLE `icinga_systemcommands` DISABLE KEYS */;
/*!40000 ALTER TABLE `icinga_systemcommands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_timeperiod_timeranges`
--

DROP TABLE IF EXISTS `icinga_timeperiod_timeranges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_timeperiod_timeranges` (
  `timeperiod_timerange_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `timeperiod_id` bigint(20) unsigned DEFAULT '0',
  `day` smallint(6) DEFAULT '0',
  `start_sec` int(11) DEFAULT '0',
  `end_sec` int(11) DEFAULT '0',
  PRIMARY KEY (`timeperiod_timerange_id`),
  KEY `timeperiod_timeranges_i_id_idx` (`instance_id`),
  KEY `tperiod_tid_d_ss_es` (`timeperiod_id`,`day`,`start_sec`,`end_sec`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1 COMMENT='Timeperiod definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_timeperiod_timeranges`
--

LOCK TABLES `icinga_timeperiod_timeranges` WRITE;
/*!40000 ALTER TABLE `icinga_timeperiod_timeranges` DISABLE KEYS */;
INSERT INTO `icinga_timeperiod_timeranges` VALUES (97,1,1,5,14400,14400),(98,1,1,1,14400,14400),(99,1,1,6,14400,14400),(100,1,1,0,14400,14400),(101,1,1,4,14400,14400),(102,1,1,2,14400,14400),(103,1,1,3,14400,14400),(104,1,2,5,46800,75600),(105,1,2,1,46800,75600),(106,1,2,4,46800,75600),(107,1,2,2,46800,75600),(108,1,2,3,46800,75600);
/*!40000 ALTER TABLE `icinga_timeperiod_timeranges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_timeperiods`
--

DROP TABLE IF EXISTS `icinga_timeperiods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_timeperiods` (
  `timeperiod_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `timeperiod_object_id` bigint(20) unsigned DEFAULT '0',
  `alias` text,
  PRIMARY KEY (`timeperiod_id`),
  UNIQUE KEY `instance_id` (`instance_id`,`config_type`,`timeperiod_object_id`),
  KEY `timeperiods_i_id_idx` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COMMENT='Timeperiod definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_timeperiods`
--

LOCK TABLES `icinga_timeperiods` WRITE;
/*!40000 ALTER TABLE `icinga_timeperiods` DISABLE KEYS */;
INSERT INTO `icinga_timeperiods` VALUES (1,1,1,59,'Icinga 2 24x7 TimePeriod'),(2,1,1,60,'Icinga 2 9to5 TimePeriod'),(3,1,1,61,'Icinga 2 never TimePeriod');
/*!40000 ALTER TABLE `icinga_timeperiods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_zones`
--

DROP TABLE IF EXISTS `icinga_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `zone_object_id` bigint(20) unsigned DEFAULT '0',
  `config_type` smallint(6) DEFAULT '0',
  `parent_zone_object_id` bigint(20) unsigned DEFAULT '0',
  `is_global` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Zone configuration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_zones`
--

LOCK TABLES `icinga_zones` WRITE;
/*!40000 ALTER TABLE `icinga_zones` DISABLE KEYS */;
INSERT INTO `icinga_zones` VALUES (1,1,2,1,0,0);
/*!40000 ALTER TABLE `icinga_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icinga_zonestatus`
--

DROP TABLE IF EXISTS `icinga_zonestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icinga_zonestatus` (
  `zonestatus_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` bigint(20) unsigned DEFAULT '0',
  `zone_object_id` bigint(20) unsigned DEFAULT '0',
  `status_update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `parent_zone_object_id` bigint(20) unsigned DEFAULT '0',
  PRIMARY KEY (`zonestatus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Zone status';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icinga_zonestatus`
--

LOCK TABLES `icinga_zonestatus` WRITE;
/*!40000 ALTER TABLE `icinga_zonestatus` DISABLE KEYS */;
INSERT INTO `icinga_zonestatus` VALUES (1,1,2,'2016-05-17 05:21:37',0);
/*!40000 ALTER TABLE `icinga_zonestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `icingaweb_db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `icingaweb_db` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `icingaweb_db`;

--
-- Table structure for table `icingaweb_group`
--

DROP TABLE IF EXISTS `icingaweb_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icingaweb_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(10) unsigned DEFAULT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_name` (`name`),
  KEY `fk_icingaweb_group_parent_id` (`parent`),
  CONSTRAINT `fk_icingaweb_group_parent_id` FOREIGN KEY (`parent`) REFERENCES `icingaweb_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icingaweb_group`
--

LOCK TABLES `icingaweb_group` WRITE;
/*!40000 ALTER TABLE `icingaweb_group` DISABLE KEYS */;
INSERT INTO `icingaweb_group` VALUES (1,'Administrators',NULL,'2016-05-17 06:30:39',NULL);
/*!40000 ALTER TABLE `icingaweb_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icingaweb_group_membership`
--

DROP TABLE IF EXISTS `icingaweb_group_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icingaweb_group_membership` (
  `group_id` int(10) unsigned NOT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`group_id`,`username`),
  CONSTRAINT `fk_icingaweb_group_membership_icingaweb_group` FOREIGN KEY (`group_id`) REFERENCES `icingaweb_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icingaweb_group_membership`
--

LOCK TABLES `icingaweb_group_membership` WRITE;
/*!40000 ALTER TABLE `icingaweb_group_membership` DISABLE KEYS */;
INSERT INTO `icingaweb_group_membership` VALUES (1,'icingaweb','2016-05-17 06:30:39',NULL);
/*!40000 ALTER TABLE `icingaweb_group_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icingaweb_user`
--

DROP TABLE IF EXISTS `icingaweb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icingaweb_user` (
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `password_hash` varbinary(255) NOT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icingaweb_user`
--

LOCK TABLES `icingaweb_user` WRITE;
/*!40000 ALTER TABLE `icingaweb_user` DISABLE KEYS */;
INSERT INTO `icingaweb_user` VALUES ('icingaweb',1,'$1$Â¯v¤ÍŠˆa$FsXwC2aRPWyQ4vWGS01Un/','2016-05-17 06:30:39',NULL);
/*!40000 ALTER TABLE `icingaweb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icingaweb_user_preference`
--

DROP TABLE IF EXISTS `icingaweb_user_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `icingaweb_user_preference` (
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) NOT NULL,
  `ctime` timestamp NULL DEFAULT NULL,
  `mtime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`section`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icingaweb_user_preference`
--

LOCK TABLES `icingaweb_user_preference` WRITE;
/*!40000 ALTER TABLE `icingaweb_user_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `icingaweb_user_preference` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-19 23:25:18
