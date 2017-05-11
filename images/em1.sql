-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: emcms
-- ------------------------------------------------------
-- Server version	5.7.18-0ubuntu0.16.04.1

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
-- Table structure for table `appointment_detail`
--

DROP TABLE IF EXISTS `appointment_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `appointed_by_id` bigint(20) NOT NULL,
  `appointed_to_id` bigint(20) NOT NULL,
  `appointment_date` datetime DEFAULT NULL,
  `appointment_status` varchar(255) NOT NULL,
  `to_be_checked` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjeqs1b9hrbsktbmfcpi26ket5` (`appointed_by_id`),
  KEY `FKr7ewtax1ix0qimjabdfi0u6s5` (`appointed_to_id`),
  CONSTRAINT `FKjeqs1b9hrbsktbmfcpi26ket5` FOREIGN KEY (`appointed_by_id`) REFERENCES `user_information` (`id`),
  CONSTRAINT `FKr7ewtax1ix0qimjabdfi0u6s5` FOREIGN KEY (`appointed_to_id`) REFERENCES `client_information` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_detail`
--

LOCK TABLES `appointment_detail` WRITE;
/*!40000 ALTER TABLE `appointment_detail` DISABLE KEYS */;
INSERT INTO `appointment_detail` VALUES (1,2,2,1,'2017-05-10 12:43:00','Attended','N'),(2,0,2,1,'2017-05-14 12:44:00','Approved','N'),(3,2,2,1,'2017-05-14 12:48:00','Approved','N'),(4,0,2,1,'2017-05-10 12:48:00','Approved','N');
/*!40000 ALTER TABLE `appointment_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appointment_remarks_log`
--

DROP TABLE IF EXISTS `appointment_remarks_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appointment_remarks_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `appointment_detail_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `remarks` longtext,
  `remarks_by_id` bigint(20) NOT NULL,
  `remarks_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKw1dwasq06rao6xtbyu3yp6wx` (`appointment_detail_id`),
  KEY `FKpydgmckgf3jk1x9n9idj9biuf` (`client_id`),
  KEY `FKfnqip1n2eq2e4v3j78n6ja21c` (`remarks_by_id`),
  CONSTRAINT `FKfnqip1n2eq2e4v3j78n6ja21c` FOREIGN KEY (`remarks_by_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKpydgmckgf3jk1x9n9idj9biuf` FOREIGN KEY (`client_id`) REFERENCES `client_information` (`id`),
  CONSTRAINT `FKw1dwasq06rao6xtbyu3yp6wx` FOREIGN KEY (`appointment_detail_id`) REFERENCES `appointment_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_remarks_log`
--

LOCK TABLES `appointment_remarks_log` WRITE;
/*!40000 ALTER TABLE `appointment_remarks_log` DISABLE KEYS */;
INSERT INTO `appointment_remarks_log` VALUES (1,0,1,1,'first re',6,'2017-05-10 12:42:02'),(2,0,2,1,'',2,'2017-05-10 12:44:45'),(3,0,3,1,'',6,'2017-05-10 12:47:55'),(4,0,1,1,'',2,'2017-05-10 12:48:37'),(5,0,3,1,'',2,'2017-05-10 12:48:44'),(6,0,4,1,'',2,'2017-05-10 12:49:09');
/*!40000 ALTER TABLE `appointment_remarks_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_application_detail`
--

DROP TABLE IF EXISTS `client_application_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_application_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `applicationgteapproximation` varchar(255) DEFAULT NULL,
  `brother1` varchar(255) DEFAULT NULL,
  `brother2` varchar(255) DEFAULT NULL,
  `brother3` varchar(255) DEFAULT NULL,
  `coe_approximation` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `duties_description` longtext,
  `email_address` varchar(255) DEFAULT NULL,
  `experience_from` varchar(255) DEFAULT NULL,
  `experience_remarks` longtext,
  `experience_to` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `financial_sponshorship` longtext,
  `full_name` varchar(255) DEFAULT NULL,
  `has_family_compiled_visa` char(1) NOT NULL,
  `has_family_visited` char(1) NOT NULL,
  `informationgteand_interview` longtext,
  `interviewed_date` datetime DEFAULT NULL,
  `is_eligible` char(1) NOT NULL,
  `is_job_related_to_study` char(1) NOT NULL,
  `is_likely_for_scholarship` char(1) DEFAULT NULL,
  `is_registered` char(1) NOT NULL,
  `is_visa_refused` char(1) DEFAULT NULL,
  `job_title` longtext,
  `marital_status` varchar(255) DEFAULT NULL,
  `mobile1` varchar(255) DEFAULT NULL,
  `mobile2` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `offer_approximation` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  `other_visa_refused` longtext,
  `preparinggteapproximation` varchar(255) DEFAULT NULL,
  `registered_date` datetime DEFAULT NULL,
  `resources_for_application_form` longtext,
  `scholarship_remarks` longtext,
  `tel_no` varchar(255) DEFAULT NULL,
  `uncle1` varchar(255) DEFAULT NULL,
  `uncle2` varchar(255) DEFAULT NULL,
  `uncle3` varchar(255) DEFAULT NULL,
  `user_information_inquiry_detail_id` bigint(20) DEFAULT NULL,
  `visa_application_approximation` varchar(255) DEFAULT NULL,
  `visa_refused_remarks` longtext,
  PRIMARY KEY (`id`),
  KEY `FKa63s6adaln4ol5hmp9tajlqmf` (`user_information_inquiry_detail_id`),
  CONSTRAINT `FKa63s6adaln4ol5hmp9tajlqmf` FOREIGN KEY (`user_information_inquiry_detail_id`) REFERENCES `user_information_inquiry_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_application_detail`
--

LOCK TABLES `client_application_detail` WRITE;
/*!40000 ALTER TABLE `client_application_detail` DISABLE KEYS */;
INSERT INTO `client_application_detail` VALUES (1,0,NULL,NULL,NULL,NULL,NULL,'1989-05-10 00:00:00',NULL,'cli1@gmail.com',NULL,'BBA',NULL,NULL,NULL,'client Client','N','N',NULL,'2017-05-10 12:33:29','N','N','N','N','N',NULL,'Single','9586246456','2656596489',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5989855',NULL,NULL,NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `client_application_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_application_qualification_detail`
--

DROP TABLE IF EXISTS `client_application_qualification_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_application_qualification_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `client_application_detail_id` bigint(20) DEFAULT NULL,
  `discipline` varchar(255) DEFAULT NULL,
  `if_gap_remarks` longtext,
  `percentage_score` varchar(255) DEFAULT NULL,
  `qualification_id` bigint(20) DEFAULT NULL,
  `year_completed` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKeviwthyrwwucdcb9ct9cloiyx` (`client_application_detail_id`),
  KEY `FK3lo8638u3bfle0dwe15mxe21i` (`qualification_id`),
  CONSTRAINT `FK3lo8638u3bfle0dwe15mxe21i` FOREIGN KEY (`qualification_id`) REFERENCES `qualification` (`id`),
  CONSTRAINT `FKeviwthyrwwucdcb9ct9cloiyx` FOREIGN KEY (`client_application_detail_id`) REFERENCES `client_application_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_application_qualification_detail`
--

LOCK TABLES `client_application_qualification_detail` WRITE;
/*!40000 ALTER TABLE `client_application_qualification_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_application_qualification_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_financial_position`
--

DROP TABLE IF EXISTS `client_financial_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_financial_position` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `client_application_detail_id` bigint(20) DEFAULT NULL,
  `deposit_amount_and_bank` varchar(255) DEFAULT NULL,
  `education_loan_deposit` varchar(255) DEFAULT NULL,
  `relative` varchar(255) DEFAULT NULL,
  `relative_annual_income` varchar(255) DEFAULT NULL,
  `relative_job` varchar(255) DEFAULT NULL,
  `relative_location` varchar(255) DEFAULT NULL,
  `relative_property_worth` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK447sak1uj9f5h7mwpm35283l1` (`client_application_detail_id`),
  CONSTRAINT `FK447sak1uj9f5h7mwpm35283l1` FOREIGN KEY (`client_application_detail_id`) REFERENCES `client_application_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_financial_position`
--

LOCK TABLES `client_financial_position` WRITE;
/*!40000 ALTER TABLE `client_financial_position` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_financial_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_information`
--

DROP TABLE IF EXISTS `client_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `client_application_detail_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `company_branch_id` bigint(20) NOT NULL,
  `company_country_id` bigint(20) DEFAULT NULL,
  `is_enabled` char(1) NOT NULL,
  `registered_by_id` bigint(20) DEFAULT NULL,
  `response_completed_flag` char(1) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `visa_type_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9f3asjn3trwq28grwguq42946` (`client_application_detail_id`),
  KEY `FKcjihplebp7vyu31020wpk5dsc` (`company_id`),
  KEY `FKdmcxesyw02ovdbcygtmcx6nlc` (`company_branch_id`),
  KEY `FK3oeeqtsagi7k217i5ew2bmoyf` (`company_country_id`),
  KEY `FKl2j0ke8x5h9ru0bsokrp493p4` (`registered_by_id`),
  KEY `FKcifp4mgtidj56cwlyl2kp8vqk` (`user_id`),
  KEY `FKknmo3qcng0di8llsbnwa7bsou` (`visa_type_id`),
  CONSTRAINT `FK3oeeqtsagi7k217i5ew2bmoyf` FOREIGN KEY (`company_country_id`) REFERENCES `company_country` (`id`),
  CONSTRAINT `FK9f3asjn3trwq28grwguq42946` FOREIGN KEY (`client_application_detail_id`) REFERENCES `client_application_detail` (`id`),
  CONSTRAINT `FKcifp4mgtidj56cwlyl2kp8vqk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKcjihplebp7vyu31020wpk5dsc` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKdmcxesyw02ovdbcygtmcx6nlc` FOREIGN KEY (`company_branch_id`) REFERENCES `company_branch` (`id`),
  CONSTRAINT `FKknmo3qcng0di8llsbnwa7bsou` FOREIGN KEY (`visa_type_id`) REFERENCES `visa_type` (`id`),
  CONSTRAINT `FKl2j0ke8x5h9ru0bsokrp493p4` FOREIGN KEY (`registered_by_id`) REFERENCES `user_information` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_information`
--

LOCK TABLES `client_information` WRITE;
/*!40000 ALTER TABLE `client_information` DISABLE KEYS */;
INSERT INTO `client_information` VALUES (1,0,1,1,1,1,'Y',2,'N',6,1);
/*!40000 ALTER TABLE `client_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_information_country_visa_document_list`
--

DROP TABLE IF EXISTS `client_information_country_visa_document_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_information_country_visa_document_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `client_information_id` bigint(20) NOT NULL,
  `country_visa_document_list_id` bigint(20) DEFAULT NULL,
  `document_status` varchar(255) DEFAULT NULL,
  `is_verified` char(1) DEFAULT NULL,
  `remarks` longtext,
  `verified_by_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9n44ou9euhi6o03t31mblb97s` (`client_information_id`),
  KEY `FKcbmeq6u2to88qxl6rrr7c777y` (`country_visa_document_list_id`),
  KEY `FKktw44rvkphsm8c3uax4v79knr` (`verified_by_id`),
  CONSTRAINT `FK9n44ou9euhi6o03t31mblb97s` FOREIGN KEY (`client_information_id`) REFERENCES `client_information` (`id`),
  CONSTRAINT `FKcbmeq6u2to88qxl6rrr7c777y` FOREIGN KEY (`country_visa_document_list_id`) REFERENCES `country_visa_document_list` (`id`),
  CONSTRAINT `FKktw44rvkphsm8c3uax4v79knr` FOREIGN KEY (`verified_by_id`) REFERENCES `user_information` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_information_country_visa_document_list`
--

LOCK TABLES `client_information_country_visa_document_list` WRITE;
/*!40000 ALTER TABLE `client_information_country_visa_document_list` DISABLE KEYS */;
INSERT INTO `client_information_country_visa_document_list` VALUES (1,52,1,2,'Pending','Y',NULL,2),(2,41,1,3,'Pending','N',NULL,2),(3,38,1,1,'Pending','Y',NULL,2);
/*!40000 ALTER TABLE `client_information_country_visa_document_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_information_document_files`
--

DROP TABLE IF EXISTS `client_information_document_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_information_document_files` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `client_information_id` bigint(20) NOT NULL,
  `files` varchar(255) DEFAULT NULL,
  `remarks` longtext,
  PRIMARY KEY (`id`),
  KEY `FK3jkc2fm0o9l3v53csnvy63b38` (`client_information_id`),
  CONSTRAINT `FK3jkc2fm0o9l3v53csnvy63b38` FOREIGN KEY (`client_information_id`) REFERENCES `client_information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_information_document_files`
--

LOCK TABLES `client_information_document_files` WRITE;
/*!40000 ALTER TABLE `client_information_document_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_information_document_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_purpose_course_detail`
--

DROP TABLE IF EXISTS `client_purpose_course_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_purpose_course_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `client_application_detail_id` bigint(20) DEFAULT NULL,
  `purposed_city` varchar(255) DEFAULT NULL,
  `purposed_course` varchar(255) DEFAULT NULL,
  `reasons` longtext,
  PRIMARY KEY (`id`),
  KEY `FK9yqq77pis0qq7cb3tig4ugqaj` (`client_application_detail_id`),
  CONSTRAINT `FK9yqq77pis0qq7cb3tig4ugqaj` FOREIGN KEY (`client_application_detail_id`) REFERENCES `client_application_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_purpose_course_detail`
--

LOCK TABLES `client_purpose_course_detail` WRITE;
/*!40000 ALTER TABLE `client_purpose_course_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_purpose_course_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_response_status`
--

DROP TABLE IF EXISTS `client_response_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_response_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `client_information_id` bigint(20) DEFAULT NULL,
  `client_received_date` datetime DEFAULT NULL,
  `is_finished` char(1) NOT NULL,
  `lodged_date` datetime DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `requested_by_id` bigint(20) DEFAULT NULL,
  `requested_date` datetime DEFAULT NULL,
  `requested_to_id` bigint(20) DEFAULT NULL,
  `response_document_list_id` bigint(20) DEFAULT NULL,
  `response_document_status` varchar(255) DEFAULT NULL,
  `ucl_session_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1ar7ixomqc82dr44pj87iixpb` (`client_information_id`),
  KEY `FKje0vpkc5x5rk8exjnja7oinom` (`requested_by_id`),
  KEY `FKfgld7xldqspdgab3uly5wx6pn` (`requested_to_id`),
  KEY `FK20o2ck7cfvnrs0o24ums0kn1k` (`response_document_list_id`),
  KEY `FKd54ipragylfif3y60c3cgm9wn` (`ucl_session_id`),
  CONSTRAINT `FK1ar7ixomqc82dr44pj87iixpb` FOREIGN KEY (`client_information_id`) REFERENCES `client_information` (`id`),
  CONSTRAINT `FK20o2ck7cfvnrs0o24ums0kn1k` FOREIGN KEY (`response_document_list_id`) REFERENCES `response_document_list` (`id`),
  CONSTRAINT `FKd54ipragylfif3y60c3cgm9wn` FOREIGN KEY (`ucl_session_id`) REFERENCES `uclsession` (`id`),
  CONSTRAINT `FKfgld7xldqspdgab3uly5wx6pn` FOREIGN KEY (`requested_to_id`) REFERENCES `user_information` (`id`),
  CONSTRAINT `FKje0vpkc5x5rk8exjnja7oinom` FOREIGN KEY (`requested_by_id`) REFERENCES `user_information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_response_status`
--

LOCK TABLES `client_response_status` WRITE;
/*!40000 ALTER TABLE `client_response_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_response_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_visa_status`
--

DROP TABLE IF EXISTS `client_visa_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_visa_status` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `client_information_id` bigint(20) DEFAULT NULL,
  `client_received_date` datetime DEFAULT NULL,
  `is_granted` char(1) NOT NULL,
  `lodged_date` datetime DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `requested_date` datetime DEFAULT NULL,
  `visa_requested_by_id` bigint(20) DEFAULT NULL,
  `visa_requested_to_id` bigint(20) DEFAULT NULL,
  `visa_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkaalaonl9olckbjvofn7i33nq` (`client_information_id`),
  KEY `FK99rbmar6snqu7excti7o4xplg` (`visa_requested_by_id`),
  KEY `FKd1flpb7marmk1dos08riihs6g` (`visa_requested_to_id`),
  CONSTRAINT `FK99rbmar6snqu7excti7o4xplg` FOREIGN KEY (`visa_requested_by_id`) REFERENCES `user_information` (`id`),
  CONSTRAINT `FKd1flpb7marmk1dos08riihs6g` FOREIGN KEY (`visa_requested_to_id`) REFERENCES `user_information` (`id`),
  CONSTRAINT `FKkaalaonl9olckbjvofn7i33nq` FOREIGN KEY (`client_information_id`) REFERENCES `client_information` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_visa_status`
--

LOCK TABLES `client_visa_status` WRITE;
/*!40000 ALTER TABLE `client_visa_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_visa_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commission_setting`
--

DROP TABLE IF EXISTS `commission_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commission_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commission_setting`
--

LOCK TABLES `commission_setting` WRITE;
/*!40000 ALTER TABLE `commission_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `commission_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `description` longtext,
  `email_address` varchar(255) DEFAULT NULL,
  `entered_date` datetime NOT NULL,
  `is_deleted` char(1) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `web_link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,0,'Kathmandu','01-2001101','Nepal','Consultancy','info@oli.com','2017-05-10 12:16:55','N','Oli and Associates','01-2001101','www.oli.com.au');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_branch`
--

DROP TABLE IF EXISTS `company_branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_branch` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `country` varchar(255) NOT NULL,
  `is_disabled` char(1) NOT NULL,
  `is_main` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKift6x1euaka0k19gl3q10mlc1` (`company_id`),
  CONSTRAINT `FKift6x1euaka0k19gl3q10mlc1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_branch`
--

LOCK TABLES `company_branch` WRITE;
/*!40000 ALTER TABLE `company_branch` DISABLE KEYS */;
INSERT INTO `company_branch` VALUES (1,0,'Baneshowr','Baneshowr',1,'Nepal','N','Y'),(2,0,'Butwal','Branch A',1,'Nepal','N','N');
/*!40000 ALTER TABLE `company_branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_country`
--

DROP TABLE IF EXISTS `company_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5k9v1q27hhguy9r6ibng0q5ld` (`country_name`),
  KEY `FK4t2unyptywgnl20of0fbvfjgh` (`company_id`),
  CONSTRAINT `FK4t2unyptywgnl20of0fbvfjgh` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_country`
--

LOCK TABLES `company_country` WRITE;
/*!40000 ALTER TABLE `company_country` DISABLE KEYS */;
INSERT INTO `company_country` VALUES (1,0,1,'USA'),(2,0,1,'UK');
/*!40000 ALTER TABLE `company_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_country_visa_type`
--

DROP TABLE IF EXISTS `company_country_visa_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_country_visa_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_country_id` bigint(20) NOT NULL,
  `is_disabled` char(1) NOT NULL,
  `visa_type_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK31e5bcvif1dsyku74g8au6kle` (`company_country_id`),
  KEY `FK3ocqxu1d8yalf8129raqqwpy9` (`visa_type_id`),
  CONSTRAINT `FK31e5bcvif1dsyku74g8au6kle` FOREIGN KEY (`company_country_id`) REFERENCES `company_country` (`id`),
  CONSTRAINT `FK3ocqxu1d8yalf8129raqqwpy9` FOREIGN KEY (`visa_type_id`) REFERENCES `visa_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_country_visa_type`
--

LOCK TABLES `company_country_visa_type` WRITE;
/*!40000 ALTER TABLE `company_country_visa_type` DISABLE KEYS */;
INSERT INTO `company_country_visa_type` VALUES (1,0,1,'N',1),(2,0,1,'N',2),(3,0,2,'N',1),(4,0,2,'N',2);
/*!40000 ALTER TABLE `company_country_visa_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_visa_document_list`
--

DROP TABLE IF EXISTS `country_visa_document_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_visa_document_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_country_visa_type_id` bigint(20) NOT NULL,
  `document_list_id` bigint(20) NOT NULL,
  `is_disabled` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5huc26ecxpn98iknx5v7leulh` (`company_country_visa_type_id`),
  KEY `FKrsvhoov9ks5ix8yscw6rc0dg6` (`document_list_id`),
  CONSTRAINT `FK5huc26ecxpn98iknx5v7leulh` FOREIGN KEY (`company_country_visa_type_id`) REFERENCES `company_country_visa_type` (`id`),
  CONSTRAINT `FKrsvhoov9ks5ix8yscw6rc0dg6` FOREIGN KEY (`document_list_id`) REFERENCES `document_list` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_visa_document_list`
--

LOCK TABLES `country_visa_document_list` WRITE;
/*!40000 ALTER TABLE `country_visa_document_list` DISABLE KEYS */;
INSERT INTO `country_visa_document_list` VALUES (1,0,1,1,'N'),(2,0,1,2,'n'),(3,0,1,3,'n');
/*!40000 ALTER TABLE `country_visa_document_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `is_disabled` char(1) NOT NULL,
  `remarks` longtext,
  PRIMARY KEY (`id`),
  KEY `FKqoox7hj85mstdjri9gdve124s` (`company_id`),
  CONSTRAINT `FKqoox7hj85mstdjri9gdve124s` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,0,1,'course1','N',NULL),(2,0,1,'course2','N',NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_level`
--

DROP TABLE IF EXISTS `course_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  `is_disabled` char(1) NOT NULL,
  `level_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh8v5nebmqhr15a140e01wn72p` (`company_id`),
  KEY `FK1sc11vscwxtx5t8stgelfi310` (`course_id`),
  KEY `FKpb3gl7ouus8akmjgk5dom9tt9` (`level_id`),
  CONSTRAINT `FK1sc11vscwxtx5t8stgelfi310` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FKh8v5nebmqhr15a140e01wn72p` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKpb3gl7ouus8akmjgk5dom9tt9` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_level`
--

LOCK TABLES `course_level` WRITE;
/*!40000 ALTER TABLE `course_level` DISABLE KEYS */;
INSERT INTO `course_level` VALUES (1,0,1,1,'N',1),(2,0,1,2,'N',1);
/*!40000 ALTER TABLE `course_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_session`
--

DROP TABLE IF EXISTS `course_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_session` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `remarks` longtext,
  `session_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlembt7ddujy8mnfta0mrgjf8d` (`company_id`),
  CONSTRAINT `FKlembt7ddujy8mnfta0mrgjf8d` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_session`
--

LOCK TABLES `course_session` WRITE;
/*!40000 ALTER TABLE `course_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_authority`
--

DROP TABLE IF EXISTS `custom_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_authority` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_authority`
--

LOCK TABLES `custom_authority` WRITE;
/*!40000 ALTER TABLE `custom_authority` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `decided_universities`
--

DROP TABLE IF EXISTS `decided_universities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `decided_universities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `client_application_detail_id` bigint(20) NOT NULL,
  `commencement` datetime DEFAULT NULL,
  `university_course_level_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKich7ibnak7p947ax4j0vrj3pr` (`client_application_detail_id`),
  KEY `FKipv6uyyc6o57y6311rlvye7oo` (`university_course_level_id`),
  CONSTRAINT `FKich7ibnak7p947ax4j0vrj3pr` FOREIGN KEY (`client_application_detail_id`) REFERENCES `client_application_detail` (`id`),
  CONSTRAINT `FKipv6uyyc6o57y6311rlvye7oo` FOREIGN KEY (`university_course_level_id`) REFERENCES `university_course_level` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decided_universities`
--

LOCK TABLES `decided_universities` WRITE;
/*!40000 ALTER TABLE `decided_universities` DISABLE KEYS */;
/*!40000 ALTER TABLE `decided_universities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_list`
--

DROP TABLE IF EXISTS `document_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `description` longtext,
  `document_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKi9o4m5kqgudmwy4xemppsut2x` (`company_id`),
  CONSTRAINT `FKi9o4m5kqgudmwy4xemppsut2x` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_list`
--

LOCK TABLES `document_list` WRITE;
/*!40000 ALTER TABLE `document_list` DISABLE KEYS */;
INSERT INTO `document_list` VALUES (1,0,1,NULL,'DOC1'),(2,0,1,NULL,'doc2'),(3,0,1,NULL,'doc3');
/*!40000 ALTER TABLE `document_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry_client_application_detail`
--

DROP TABLE IF EXISTS `inquiry_client_application_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inquiry_client_application_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `client_application_detail_id` bigint(20) NOT NULL,
  `inquiry_detail_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsm3r0pfonwgn4mchn1hi006y3` (`client_application_detail_id`),
  KEY `FKhwk8us8wnakqrkekcx6eklko0` (`inquiry_detail_id`),
  CONSTRAINT `FKhwk8us8wnakqrkekcx6eklko0` FOREIGN KEY (`inquiry_detail_id`) REFERENCES `inquiry_detail` (`id`),
  CONSTRAINT `FKsm3r0pfonwgn4mchn1hi006y3` FOREIGN KEY (`client_application_detail_id`) REFERENCES `client_application_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry_client_application_detail`
--

LOCK TABLES `inquiry_client_application_detail` WRITE;
/*!40000 ALTER TABLE `inquiry_client_application_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `inquiry_client_application_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inquiry_detail`
--

DROP TABLE IF EXISTS `inquiry_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inquiry_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `age` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `company_branch_id` bigint(20) DEFAULT NULL,
  `company_country_id` bigint(20) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `inquired_date` datetime NOT NULL,
  `inquiry_for` varchar(255) DEFAULT NULL,
  `inquiry_purpose` varchar(255) DEFAULT NULL,
  `inquiry_remarks` longtext,
  `inquiry_type` varchar(255) NOT NULL,
  `is_interested` char(1) NOT NULL,
  `is_interviewed` char(1) DEFAULT NULL,
  `is_sent` char(1) NOT NULL,
  `known_language` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `passport_number` varchar(255) DEFAULT NULL,
  `permanent_address` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `remarks` longtext,
  `temporary_address` varchar(255) DEFAULT NULL,
  `test_id` bigint(20) DEFAULT NULL,
  `test_score` varchar(255) DEFAULT NULL,
  `test_taken` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlfir6ginbal2j555y4efolo11` (`company_id`),
  KEY `FKshwvupjec6gey9hvk9y62c33f` (`company_branch_id`),
  KEY `FK4reos0v88vvv5xpw35yaq7yjh` (`company_country_id`),
  KEY `FK75siuim7g42on0vu7dwp6y52f` (`test_id`),
  CONSTRAINT `FK4reos0v88vvv5xpw35yaq7yjh` FOREIGN KEY (`company_country_id`) REFERENCES `company_country` (`id`),
  CONSTRAINT `FK75siuim7g42on0vu7dwp6y52f` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`),
  CONSTRAINT `FKlfir6ginbal2j555y4efolo11` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKshwvupjec6gey9hvk9y62c33f` FOREIGN KEY (`company_branch_id`) REFERENCES `company_branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inquiry_detail`
--

LOCK TABLES `inquiry_detail` WRITE;
/*!40000 ALTER TABLE `inquiry_detail` DISABLE KEYS */;
INSERT INTO `inquiry_detail` VALUES (1,1,'20',NULL,1,1,1,'4554','cli1@gmail.com',NULL,'Client','Male','2017-05-10 12:27:08','Visa','Migration',NULL,'Telephone','Y','N','Y',NULL,'Client','Single',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'djfhk',NULL,NULL,'N'),(2,0,'20',NULL,1,1,1,'565','cli2@gmail.com',NULL,'Client2`','Male','2017-05-10 12:27:40','Visa','Migration',NULL,'Telephone','Y','N','N',NULL,'Client2','Single',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'fd',NULL,NULL,'N');
/*!40000 ALTER TABLE `inquiry_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `levels`
--

DROP TABLE IF EXISTS `levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `levels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `is_disabled` char(1) NOT NULL,
  `level_name` varchar(255) NOT NULL,
  `remarks` longtext,
  PRIMARY KEY (`id`),
  KEY `FKavoslmq0wgee3locweqxesjgn` (`company_id`),
  CONSTRAINT `FKavoslmq0wgee3locweqxesjgn` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `levels`
--

LOCK TABLES `levels` WRITE;
/*!40000 ALTER TABLE `levels` DISABLE KEYS */;
INSERT INTO `levels` VALUES (1,0,1,'N','Bachelor',NULL),(2,0,1,'N','Masters',NULL);
/*!40000 ALTER TABLE `levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_course`
--

DROP TABLE IF EXISTS `local_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local_course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `FKkd2f8xk7s7cri9gq5u5v5e1e6` (`company_id`),
  CONSTRAINT `FKkd2f8xk7s7cri9gq5u5v5e1e6` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_course`
--

LOCK TABLES `local_course` WRITE;
/*!40000 ALTER TABLE `local_course` DISABLE KEYS */;
INSERT INTO `local_course` VALUES (1,0,1,'IELTS',NULL),(2,0,1,'TOEFL',NULL);
/*!40000 ALTER TABLE `local_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `actions` varchar(255) NOT NULL,
  `controllers` varchar(255) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `is_seen` char(1) NOT NULL,
  `is_seen_date` datetime DEFAULT NULL,
  `messages` longtext NOT NULL,
  `notification_date` datetime NOT NULL,
  `notification_till_date` datetime NOT NULL,
  `notification_type` varchar(255) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlypes9uh09dct11s81dy8bakk` (`from_id`),
  KEY `FKq3fg54vthuwqr180ijscequt5` (`to_id`),
  CONSTRAINT `FKlypes9uh09dct11s81dy8bakk` FOREIGN KEY (`from_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKq3fg54vthuwqr180ijscequt5` FOREIGN KEY (`to_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,0,'inquiryList','consultant',4,'N',NULL,'has sent you <b>new Client</b> for','2017-05-10 12:27:52','2017-05-15 12:27:52','Inquiry',2),(2,0,'appointmentList','consultant',6,'N',NULL,'has request for','2017-05-10 12:42:02','2017-05-15 12:42:02','Appointment',2),(3,0,'appointmentList','consultant',6,'N',NULL,'has request for','2017-05-10 12:47:55','2017-05-15 12:47:55','Appointment',2);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `permission_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES (1,0,'SUPER_ADMIN','superAdmin'),(2,0,'GENERAL_ADMIN','generalAdmin'),(3,0,'FINANCE_ADMIN','financeAdmin'),(4,0,'VISA','visa'),(5,0,'COMPLIANCE','compliance'),(6,0,'ADMISSION','admission'),(7,0,'CONSULTANT','consultant'),(8,0,'RECEPTION','reception'),(9,0,'CLIENT','client'),(10,0,'LIST','superAdminGeneralAdmin'),(11,0,'CREATE','superAdminGeneralAdmin'),(12,0,'EDIT','superAdminGeneralAdmin'),(13,0,'DELETE','superAdminGeneralAdmin');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification`
--

DROP TABLE IF EXISTS `qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qualification` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5e2g51cv8c7039u43dymmq9mu` (`company_id`),
  CONSTRAINT `FK5e2g51cv8c7039u43dymmq9mu` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qualification`
--

LOCK TABLES `qualification` WRITE;
/*!40000 ALTER TABLE `qualification` DISABLE KEYS */;
/*!40000 ALTER TABLE `qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommended_universities`
--

DROP TABLE IF EXISTS `recommended_universities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recommended_universities` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `client_application_detail_id` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `remarks` longtext,
  `university_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKljba8b4pgfugaq5banswemm9i` (`client_application_detail_id`),
  KEY `FK9x3hyrhtqkvkjy7x2bts637w` (`university_id`),
  CONSTRAINT `FK9x3hyrhtqkvkjy7x2bts637w` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`),
  CONSTRAINT `FKljba8b4pgfugaq5banswemm9i` FOREIGN KEY (`client_application_detail_id`) REFERENCES `client_application_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommended_universities`
--

LOCK TABLES `recommended_universities` WRITE;
/*!40000 ALTER TABLE `recommended_universities` DISABLE KEYS */;
/*!40000 ALTER TABLE `recommended_universities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_code`
--

DROP TABLE IF EXISTS `registration_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `token` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_code`
--

LOCK TABLES `registration_code` WRITE;
/*!40000 ALTER TABLE `registration_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_map`
--

DROP TABLE IF EXISTS `request_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `config_attribute` varchar(255) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKf721bf1f2340334e273dd57aedcb` (`http_method`,`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_map`
--

LOCK TABLES `request_map` WRITE;
/*!40000 ALTER TABLE `request_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_document_entry`
--

DROP TABLE IF EXISTS `response_document_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_document_entry` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_document_entry`
--

LOCK TABLES `response_document_entry` WRITE;
/*!40000 ALTER TABLE `response_document_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `response_document_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `response_document_list`
--

DROP TABLE IF EXISTS `response_document_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_document_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `description` longtext,
  `document_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKarjgxtoq9waiq8y7y8rh6ouwd` (`company_id`),
  CONSTRAINT `FKarjgxtoq9waiq8y7y8rh6ouwd` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `response_document_list`
--

LOCK TABLES `response_document_list` WRITE;
/*!40000 ALTER TABLE `response_document_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `response_document_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `authority` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_irsamgnera6angm0prq1kemt2` (`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,0,'ROLE_SUPER_ADMIN'),(2,0,'ROLE_GENERAL_ADMIN'),(3,0,'ROLE_FINANCE_ADMIN'),(4,0,'ROLE_VISA'),(5,0,'ROLE_COMPLIANCE'),(6,0,'ROLE_ADMISSION'),(7,0,'ROLE_CONSULTANT'),(8,0,'ROLE_RECEPTION'),(9,0,'ROLE_CLIENT');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permission`
--

DROP TABLE IF EXISTS `role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permission` (
  `role_permissions_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) DEFAULT NULL,
  KEY `FKf8yllw1ecvwqy3ehyxawqa1qp` (`permission_id`),
  KEY `FKg8c3wpn8a78g9mtwwa5t9oq17` (`role_permissions_id`),
  CONSTRAINT `FKf8yllw1ecvwqy3ehyxawqa1qp` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`),
  CONSTRAINT `FKg8c3wpn8a78g9mtwwa5t9oq17` FOREIGN KEY (`role_permissions_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permission`
--

LOCK TABLES `role_permission` WRITE;
/*!40000 ALTER TABLE `role_permission` DISABLE KEYS */;
INSERT INTO `role_permission` VALUES (1,10),(1,12),(1,11),(1,13),(2,10),(2,12),(2,11),(2,13),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9);
/*!40000 ALTER TABLE `role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_course_list`
--

DROP TABLE IF EXISTS `support_course_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `support_course_list` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm6paj6i3awkkv5clqdosscf2s` (`company_id`),
  CONSTRAINT `FKm6paj6i3awkkv5clqdosscf2s` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_course_list`
--

LOCK TABLES `support_course_list` WRITE;
/*!40000 ALTER TABLE `support_course_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_course_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_assignment`
--

DROP TABLE IF EXISTS `task_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_assignment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `assigned_by_id` bigint(20) NOT NULL,
  `assigned_date` datetime NOT NULL,
  `assigned_to_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `company_branch_id` bigint(20) DEFAULT NULL,
  `deadline` datetime DEFAULT NULL,
  `task_category_id` bigint(20) NOT NULL,
  `task_name` longtext NOT NULL,
  `verification_status` varchar(255) NOT NULL,
  `verify_task` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbpvb6g306ilwejo4lmuxa8dm5` (`assigned_by_id`),
  KEY `FKa39xwkofoq5rehckn5uok2umc` (`assigned_to_id`),
  KEY `FKkn9qa790pic1je7yj1xax7tl7` (`company_id`),
  KEY `FKqdp6739axild8ep54fi67jdo9` (`company_branch_id`),
  KEY `FK4y57wp8e0h5prysclrdecfobe` (`task_category_id`),
  CONSTRAINT `FK4y57wp8e0h5prysclrdecfobe` FOREIGN KEY (`task_category_id`) REFERENCES `task_category` (`id`),
  CONSTRAINT `FKa39xwkofoq5rehckn5uok2umc` FOREIGN KEY (`assigned_to_id`) REFERENCES `user_information` (`id`),
  CONSTRAINT `FKbpvb6g306ilwejo4lmuxa8dm5` FOREIGN KEY (`assigned_by_id`) REFERENCES `user_information` (`id`),
  CONSTRAINT `FKkn9qa790pic1je7yj1xax7tl7` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKqdp6739axild8ep54fi67jdo9` FOREIGN KEY (`company_branch_id`) REFERENCES `company_branch` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_assignment`
--

LOCK TABLES `task_assignment` WRITE;
/*!40000 ALTER TABLE `task_assignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_category`
--

DROP TABLE IF EXISTS `task_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `remarks` longtext,
  PRIMARY KEY (`id`),
  KEY `FKa46c40hg30qr9c6unoxbcytfj` (`company_id`),
  CONSTRAINT `FKa46c40hg30qr9c6unoxbcytfj` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_category`
--

LOCK TABLES `task_category` WRITE;
/*!40000 ALTER TABLE `task_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_remarks_log`
--

DROP TABLE IF EXISTS `task_remarks_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_remarks_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `remarks` longtext,
  `remarks_by_id` bigint(20) NOT NULL,
  `remarks_date` datetime NOT NULL,
  `task_assignment_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc36jsd3s9vqx0jtfv58dxoguh` (`remarks_by_id`),
  KEY `FKrmto5uqhlsdlwmvm3lqy7nsyo` (`task_assignment_id`),
  CONSTRAINT `FKc36jsd3s9vqx0jtfv58dxoguh` FOREIGN KEY (`remarks_by_id`) REFERENCES `user_information` (`id`),
  CONSTRAINT `FKrmto5uqhlsdlwmvm3lqy7nsyo` FOREIGN KEY (`task_assignment_id`) REFERENCES `task_assignment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_remarks_log`
--

LOCK TABLES `task_remarks_log` WRITE;
/*!40000 ALTER TABLE `task_remarks_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `task_remarks_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `is_deleted` char(1) NOT NULL,
  `remarks` longtext,
  `test_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6spvqwcxklaja1fsfsiqww1jx` (`company_id`),
  CONSTRAINT `FK6spvqwcxklaja1fsfsiqww1jx` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uclsession`
--

DROP TABLE IF EXISTS `uclsession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uclsession` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `course_session_id` bigint(20) NOT NULL,
  `is_disabled` char(1) NOT NULL,
  `no_of_session` int(11) DEFAULT NULL,
  `university_course_level_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkw3wouar01ofndq8jn09tf0d3` (`company_id`),
  KEY `FKredyp8akwekjxhg1pmk9oirnh` (`course_session_id`),
  KEY `FKh2lpr7lh7qu8dxoctiup9hp1q` (`university_course_level_id`),
  CONSTRAINT `FKh2lpr7lh7qu8dxoctiup9hp1q` FOREIGN KEY (`university_course_level_id`) REFERENCES `university_course_level` (`id`),
  CONSTRAINT `FKkw3wouar01ofndq8jn09tf0d3` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKredyp8akwekjxhg1pmk9oirnh` FOREIGN KEY (`course_session_id`) REFERENCES `course_session` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uclsession`
--

LOCK TABLES `uclsession` WRITE;
/*!40000 ALTER TABLE `uclsession` DISABLE KEYS */;
/*!40000 ALTER TABLE `uclsession` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `university` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `company_country_id` bigint(20) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `weblink` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpxa41jnksk14hckvlwec6c5gr` (`company_id`),
  KEY `FKofmfwa51fr5d4mgemiyi9de65` (`company_country_id`),
  CONSTRAINT `FKofmfwa51fr5d4mgemiyi9de65` FOREIGN KEY (`company_country_id`) REFERENCES `company_country` (`id`),
  CONSTRAINT `FKpxa41jnksk14hckvlwec6c5gr` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university`
--

LOCK TABLES `university` WRITE;
/*!40000 ALTER TABLE `university` DISABLE KEYS */;
/*!40000 ALTER TABLE `university` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university_course_level`
--

DROP TABLE IF EXISTS `university_course_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `university_course_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `course_level_id` bigint(20) NOT NULL,
  `is_disabled` char(1) NOT NULL,
  `university_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKsfwbxcseywjccbr88t7sbb5j` (`company_id`),
  KEY `FK8vudt9g3udwcf75scbtu7lbxa` (`course_level_id`),
  KEY `FKpr1dnwjv1w23tsttfxuu3bifd` (`university_id`),
  CONSTRAINT `FK8vudt9g3udwcf75scbtu7lbxa` FOREIGN KEY (`course_level_id`) REFERENCES `course_level` (`id`),
  CONSTRAINT `FKpr1dnwjv1w23tsttfxuu3bifd` FOREIGN KEY (`university_id`) REFERENCES `university` (`id`),
  CONSTRAINT `FKsfwbxcseywjccbr88t7sbb5j` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university_course_level`
--

LOCK TABLES `university_course_level` WRITE;
/*!40000 ALTER TABLE `university_course_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `university_course_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `university_course_subject_detail`
--

DROP TABLE IF EXISTS `university_course_subject_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `university_course_subject_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `no_of_subjects` int(11) DEFAULT NULL,
  `session_priority` int(11) DEFAULT NULL,
  `ucl_session_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfdk50l1fbfk5hdbqnwit8719` (`company_id`),
  KEY `FKmrvt5jyj6adj0mf7o5hr4w2ko` (`ucl_session_id`),
  CONSTRAINT `FKfdk50l1fbfk5hdbqnwit8719` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKmrvt5jyj6adj0mf7o5hr4w2ko` FOREIGN KEY (`ucl_session_id`) REFERENCES `uclsession` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university_course_subject_detail`
--

LOCK TABLES `university_course_subject_detail` WRITE;
/*!40000 ALTER TABLE `university_course_subject_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `university_course_subject_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `confirm_code` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_expired` bit(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,0,'\0','\0',NULL,'','$2a$10$E/dKzUAvqvcnBOk6DBp6H.oMqNbYpQvZ5mbGBMxpnVKU/K2xlgn5e','\0','info@oli.com'),(2,0,'\0','\0',NULL,'','$2a$10$7PyUc/UO1WkiIG0js9U25e0ivEBMK.4cXyVQN9F62DbUAi//yL4Gy','\0','cons@gmail.com'),(3,0,'\0','\0',NULL,'','$2a$10$vkORJYCEYlgihzNGqBS9u.D503SviHrAwBO.PTEbG9ZX.tdKCW9Yi','\0','cons2@gmail.com'),(4,0,'\0','\0',NULL,'','$2a$10$ZcDfunuAW/yjNCAe3RHY.u5tI/HJ8l9.pORGY7MWvtbuhgFaofj2C','\0','rec@gmail.com'),(5,0,'\0','\0','2c48c194-c781-4dcd-98cf-54981bddabb1','','$2a$10$MaOVo9nA1jL2LAWg.j6qROb5/BUnEgRaHzFWBuajSyzOuRWKnLNL2','\0','cli1@gmail.com'),(6,0,'\0','\0','de07d875-6f4c-479b-9437-5e512ac8f4c8','','$2a$10$TpY5v.V7K1LJLkei/WzKa.fm1qP0pe/YAcZYT6OrfCw6Tuod0vUQy','\0','cli11@gmail.com'),(7,0,'\0','\0',NULL,'','$2a$10$MeUGiSW4bNQHdZ8PZsoJ8ezdSXUMIxXZekPHz2ZQCQcRIgBk/QiQm','\0','adm@gmail.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_information`
--

DROP TABLE IF EXISTS `user_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) NOT NULL,
  `company_branch_id` bigint(20) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `is_deleted` char(1) NOT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `remarks` longtext,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5kdma9o88lwhp5u44y7fcly4d` (`company_id`),
  KEY `FK8e594di69x5377inji4u9u5k9` (`company_branch_id`),
  KEY `FK3m7un8ya0qm2fxpy72ctf9d82` (`user_id`),
  CONSTRAINT `FK3m7un8ya0qm2fxpy72ctf9d82` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK5kdma9o88lwhp5u44y7fcly4d` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FK8e594di69x5377inji4u9u5k9` FOREIGN KEY (`company_branch_id`) REFERENCES `company_branch` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_information`
--

LOCK TABLES `user_information` WRITE;
/*!40000 ALTER TABLE `user_information` DISABLE KEYS */;
INSERT INTO `user_information` VALUES (1,1,'BANESHOWR',1,NULL,'55656',NULL,NULL,'OLI','N','',NULL,1),(2,0,'Baneshowr',1,1,'54654646546',NULL,'cons@gmail.com','Consultant','N','BBA',NULL,2),(3,0,'Baneshowr',1,1,'9844400099',NULL,'cons2@gmail.com','Consultant 2','N','BBA',NULL,3),(4,0,'Baneshowr',1,1,'9844400099',NULL,'rec@gmail.com','Reception','N','BBA',NULL,4),(5,0,'Baneshowr',1,1,'98454645',NULL,'adm@gmail.com','Admission Manager','N','BE',NULL,7);
/*!40000 ALTER TABLE `user_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_information_client_information`
--

DROP TABLE IF EXISTS `user_information_client_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_information_client_information` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `client_information_id` bigint(20) NOT NULL,
  `is_active` char(1) NOT NULL,
  `user_information_id` bigint(20) NOT NULL,
  `remarks` longtext,
  PRIMARY KEY (`id`),
  KEY `FKk1wp8jxp7jwfeawr24f1672h3` (`client_information_id`),
  KEY `FKs65bqfsx74b071nog9s0gti6b` (`user_information_id`),
  CONSTRAINT `FKk1wp8jxp7jwfeawr24f1672h3` FOREIGN KEY (`client_information_id`) REFERENCES `client_information` (`id`),
  CONSTRAINT `FKs65bqfsx74b071nog9s0gti6b` FOREIGN KEY (`user_information_id`) REFERENCES `user_information` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_information_client_information`
--

LOCK TABLES `user_information_client_information` WRITE;
/*!40000 ALTER TABLE `user_information_client_information` DISABLE KEYS */;
INSERT INTO `user_information_client_information` VALUES (1,0,1,'Y',2,NULL),(2,0,1,'Y',5,NULL);
/*!40000 ALTER TABLE `user_information_client_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_information_inquiry_detail`
--

DROP TABLE IF EXISTS `user_information_inquiry_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_information_inquiry_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `inquiry_detail_id` bigint(20) NOT NULL,
  `user_information_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa0ntjnl027ia3smf7liyi0icl` (`inquiry_detail_id`),
  KEY `FK6pb1vdckaqa8acj7m08gea5fg` (`user_information_id`),
  CONSTRAINT `FK6pb1vdckaqa8acj7m08gea5fg` FOREIGN KEY (`user_information_id`) REFERENCES `user_information` (`id`),
  CONSTRAINT `FKa0ntjnl027ia3smf7liyi0icl` FOREIGN KEY (`inquiry_detail_id`) REFERENCES `inquiry_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_information_inquiry_detail`
--

LOCK TABLES `user_information_inquiry_detail` WRITE;
/*!40000 ALTER TABLE `user_information_inquiry_detail` DISABLE KEYS */;
INSERT INTO `user_information_inquiry_detail` VALUES (1,0,1,2);
/*!40000 ALTER TABLE `user_information_inquiry_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1),(7,6),(2,7),(3,7),(4,8),(5,9),(6,9);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visa_type`
--

DROP TABLE IF EXISTS `visa_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visa_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `description` longtext,
  `is_disabled` char(1) NOT NULL,
  `visa_name` varchar(255) NOT NULL,
  `visa_types` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6txmuy0q9i3ucg625he91wj7w` (`company_id`),
  CONSTRAINT `FK6txmuy0q9i3ucg625he91wj7w` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visa_type`
--

LOCK TABLES `visa_type` WRITE;
/*!40000 ALTER TABLE `visa_type` DISABLE KEYS */;
INSERT INTO `visa_type` VALUES (1,0,1,NULL,'N','Student','Student'),(2,0,1,NULL,'N','wORK','Student');
/*!40000 ALTER TABLE `visa_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-11 15:07:27
