-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: qulearn
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `agreeordis`
--

DROP TABLE IF EXISTS `agreeordis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agreeordis` (
  `agreeordiss_id` varchar(255) NOT NULL,
  `isagree` varchar(2) DEFAULT NULL,
  `isdisagree` varchar(2) DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`agreeordiss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agreeordis`
--

LOCK TABLES `agreeordis` WRITE;
/*!40000 ALTER TABLE `agreeordis` DISABLE KEYS */;
/*!40000 ALTER TABLE `agreeordis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collection` (
  `collection_id` varchar(255) NOT NULL,
  `collection_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comment_id` varchar(255) NOT NULL,
  `comment_info` varchar(255) DEFAULT NULL,
  `comment_time` varchar(255) DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `draftbox`
--

DROP TABLE IF EXISTS `draftbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draftbox` (
  `draft_id` varchar(255) NOT NULL,
  `draft_type` varchar(255) DEFAULT NULL,
  `draft_name` varchar(255) DEFAULT NULL,
  `draft_info` varchar(2000) DEFAULT NULL,
  `draft_partition` varchar(255) DEFAULT NULL,
  `draft_essay_link` varchar(255) DEFAULT NULL,
  `draft_video_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`draft_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draftbox`
--

LOCK TABLES `draftbox` WRITE;
/*!40000 ALTER TABLE `draftbox` DISABLE KEYS */;
/*!40000 ALTER TABLE `draftbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `essay`
--

DROP TABLE IF EXISTS `essay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `essay` (
  `essay_id` varchar(255) NOT NULL,
  `essay_link` varchar(500) DEFAULT NULL,
  `essay_size` varchar(255) DEFAULT NULL,
  `essay_name` varchar(255) DEFAULT NULL,
  `essay_info` varchar(2000) DEFAULT NULL,
  `essay_partition` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`essay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `essay`
--

LOCK TABLES `essay` WRITE;
/*!40000 ALTER TABLE `essay` DISABLE KEYS */;
/*!40000 ALTER TABLE `essay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `message_id` varchar(255) NOT NULL,
  `message_type` varchar(20) DEFAULT NULL,
  `message_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `message_commentnum` int(11) DEFAULT NULL,
  `message_agreenum` int(11) DEFAULT NULL,
  `message_disagreenum` int(11) DEFAULT NULL,
  `message_collectnum` int(11) DEFAULT NULL,
  `message_sharenum` int(11) DEFAULT NULL,
  `video_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partitions`
--

DROP TABLE IF EXISTS `partitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partitions` (
  `partition_id` varchar(255) NOT NULL,
  `partition_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`partition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partitions`
--

LOCK TABLES `partitions` WRITE;
/*!40000 ALTER TABLE `partitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `partitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privateletter`
--

DROP TABLE IF EXISTS `privateletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privateletter` (
  `privateletter_id` varchar(255) NOT NULL,
  `privateletter_info` varchar(255) DEFAULT NULL,
  `privateletter_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_send_id` varchar(255) DEFAULT NULL,
  `user_recive_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`privateletter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privateletter`
--

LOCK TABLES `privateletter` WRITE;
/*!40000 ALTER TABLE `privateletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `privateletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relation`
--

DROP TABLE IF EXISTS `relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relation` (
  `user_id` varchar(255) NOT NULL,
  `follow_user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relation`
--

LOCK TABLES `relation` WRITE;
/*!40000 ALTER TABLE `relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_pwd` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_chatno` varchar(255) DEFAULT NULL,
  `user_qqno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `userinfo_id` varchar(255) NOT NULL,
  `userinfo_intro` varchar(500) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userinfo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `video_id` varchar(255) NOT NULL,
  `video_link` varchar(500) DEFAULT NULL,
  `video_size` varchar(255) DEFAULT NULL,
  `video_name` varchar(255) DEFAULT NULL,
  `video_info` varchar(255) DEFAULT NULL,
  `video_partition` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-10 16:02:36
