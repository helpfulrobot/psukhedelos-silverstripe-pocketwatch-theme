# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 10.1.8-MariaDB)
# Database: SS_pocketwatch
# Generation Time: 2015-12-09 02:46:26 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Blog
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Blog`;

CREATE TABLE `Blog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0',
  `FeaturedPosts` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Blog` WRITE;
/*!40000 ALTER TABLE `Blog` DISABLE KEYS */;

INSERT INTO `Blog` (`ID`, `PostsPerPage`, `FeaturedPosts`)
VALUES
	(12,10,0);

/*!40000 ALTER TABLE `Blog` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Blog_Contributors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Blog_Contributors`;

CREATE TABLE `Blog_Contributors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BlogID` (`BlogID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Blog_Editors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Blog_Editors`;

CREATE TABLE `Blog_Editors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BlogID` (`BlogID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Blog_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Blog_Live`;

CREATE TABLE `Blog_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0',
  `FeaturedPosts` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Blog_Live` WRITE;
/*!40000 ALTER TABLE `Blog_Live` DISABLE KEYS */;

INSERT INTO `Blog_Live` (`ID`, `PostsPerPage`, `FeaturedPosts`)
VALUES
	(12,10,0);

/*!40000 ALTER TABLE `Blog_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Blog_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Blog_versions`;

CREATE TABLE `Blog_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PostsPerPage` int(11) NOT NULL DEFAULT '0',
  `FeaturedPosts` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Blog_versions` WRITE;
/*!40000 ALTER TABLE `Blog_versions` DISABLE KEYS */;

INSERT INTO `Blog_versions` (`ID`, `RecordID`, `Version`, `PostsPerPage`, `FeaturedPosts`)
VALUES
	(1,12,1,10,0),
	(2,12,2,10,0),
	(3,12,3,10,0),
	(4,12,4,10,0);

/*!40000 ALTER TABLE `Blog_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Blog_Writers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Blog_Writers`;

CREATE TABLE `Blog_Writers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BlogID` (`BlogID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BlogCategory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogCategory`;

CREATE TABLE `BlogCategory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('BlogCategory') DEFAULT 'BlogCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BlogID` (`BlogID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BlogCategory` WRITE;
/*!40000 ALTER TABLE `BlogCategory` DISABLE KEYS */;

INSERT INTO `BlogCategory` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `URLSegment`, `BlogID`)
VALUES
	(6,'BlogCategory','2015-12-08 14:28:06','2015-12-08 14:22:50','Category One','category-one',12),
	(7,'BlogCategory','2015-12-09 15:30:43','2015-12-08 14:23:06','Category Two','category-two',12),
	(8,'BlogCategory','2015-12-08 14:45:29','2015-12-08 14:23:43','Category Three','category-three',12),
	(9,'BlogCategory','2015-12-08 14:25:17','2015-12-08 14:25:17','Category Four','category-four',12),
	(10,'BlogCategory','2015-12-08 14:33:45','2015-12-08 14:26:28','Category Five','category-five',12);

/*!40000 ALTER TABLE `BlogCategory` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogEntry
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogEntry`;

CREATE TABLE `BlogEntry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BlogEntry_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogEntry_Live`;

CREATE TABLE `BlogEntry_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BlogEntry_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogEntry_versions`;

CREATE TABLE `BlogEntry_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BlogHolder
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogHolder`;

CREATE TABLE `BlogHolder` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AllowCustomAuthors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `OwnerID` (`OwnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BlogHolder_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogHolder_Live`;

CREATE TABLE `BlogHolder_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AllowCustomAuthors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `OwnerID` (`OwnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BlogHolder_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogHolder_versions`;

CREATE TABLE `BlogHolder_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `AllowCustomAuthors` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `OwnerID` (`OwnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BlogPost
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogPost`;

CREATE TABLE `BlogPost` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `FeaturedPost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FeaturedImageID` (`FeaturedImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BlogPost` WRITE;
/*!40000 ALTER TABLE `BlogPost` DISABLE KEYS */;

INSERT INTO `BlogPost` (`ID`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `FeaturedPost`)
VALUES
	(22,'2015-12-02 15:51:00',NULL,NULL,0,0),
	(23,'2015-11-26 15:52:00',NULL,NULL,0,0),
	(24,'2015-12-02 15:54:00',NULL,NULL,76,0),
	(26,'2015-12-02 17:06:00',NULL,NULL,75,0),
	(27,'2015-12-08 11:35:00',NULL,NULL,74,0),
	(28,'2015-12-08 11:39:00',NULL,NULL,73,0),
	(29,'2015-12-08 11:41:00',NULL,NULL,72,1);

/*!40000 ALTER TABLE `BlogPost` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogPost_Authors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogPost_Authors`;

CREATE TABLE `BlogPost_Authors` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BlogPostID` (`BlogPostID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BlogPost_Authors` WRITE;
/*!40000 ALTER TABLE `BlogPost_Authors` DISABLE KEYS */;

INSERT INTO `BlogPost_Authors` (`ID`, `BlogPostID`, `MemberID`)
VALUES
	(1,22,1),
	(2,23,1),
	(3,24,1),
	(4,26,1),
	(5,27,1),
	(6,28,1),
	(7,29,1),
	(8,30,1);

/*!40000 ALTER TABLE `BlogPost_Authors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogPost_Categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogPost_Categories`;

CREATE TABLE `BlogPost_Categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `BlogCategoryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BlogPostID` (`BlogPostID`),
  KEY `BlogCategoryID` (`BlogCategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BlogPost_Categories` WRITE;
/*!40000 ALTER TABLE `BlogPost_Categories` DISABLE KEYS */;

INSERT INTO `BlogPost_Categories` (`ID`, `BlogPostID`, `BlogCategoryID`)
VALUES
	(8,28,6),
	(9,29,7),
	(10,27,8),
	(11,26,9),
	(12,24,10),
	(13,22,6),
	(14,23,8);

/*!40000 ALTER TABLE `BlogPost_Categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogPost_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogPost_Live`;

CREATE TABLE `BlogPost_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `FeaturedPost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FeaturedImageID` (`FeaturedImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BlogPost_Live` WRITE;
/*!40000 ALTER TABLE `BlogPost_Live` DISABLE KEYS */;

INSERT INTO `BlogPost_Live` (`ID`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `FeaturedPost`)
VALUES
	(22,'2015-12-02 15:51:00',NULL,NULL,0,0),
	(23,'2015-11-26 15:52:00',NULL,NULL,0,0),
	(24,'2015-12-02 15:54:00',NULL,NULL,76,0),
	(26,'2015-12-02 17:06:00',NULL,NULL,75,0),
	(27,'2015-12-08 11:35:00',NULL,NULL,74,0),
	(28,'2015-12-08 11:39:00',NULL,NULL,73,0),
	(29,'2015-12-08 11:41:00',NULL,NULL,72,1);

/*!40000 ALTER TABLE `BlogPost_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogPost_Tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogPost_Tags`;

CREATE TABLE `BlogPost_Tags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `BlogTagID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BlogPostID` (`BlogPostID`),
  KEY `BlogTagID` (`BlogTagID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BlogPost_Tags` WRITE;
/*!40000 ALTER TABLE `BlogPost_Tags` DISABLE KEYS */;

INSERT INTO `BlogPost_Tags` (`ID`, `BlogPostID`, `BlogTagID`)
VALUES
	(9,24,6),
	(10,29,6);

/*!40000 ALTER TABLE `BlogPost_Tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogPost_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogPost_versions`;

CREATE TABLE `BlogPost_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `FeaturedPost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `FeaturedImageID` (`FeaturedImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BlogPost_versions` WRITE;
/*!40000 ALTER TABLE `BlogPost_versions` DISABLE KEYS */;

INSERT INTO `BlogPost_versions` (`ID`, `RecordID`, `Version`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `FeaturedPost`)
VALUES
	(1,22,1,NULL,NULL,NULL,0,0),
	(2,22,2,NULL,NULL,NULL,54,0),
	(3,22,3,'2015-12-02 15:51:54',NULL,NULL,54,0),
	(4,23,1,NULL,NULL,NULL,0,0),
	(5,23,2,NULL,NULL,NULL,55,0),
	(6,23,3,'2015-12-02 15:52:48',NULL,NULL,55,0),
	(7,24,1,NULL,NULL,NULL,0,0),
	(8,24,2,NULL,NULL,NULL,56,0),
	(9,24,3,'2015-12-02 15:54:06',NULL,NULL,56,0),
	(10,24,4,'2015-12-02 15:54:00',NULL,NULL,56,0),
	(11,23,4,'2015-12-02 15:52:00',NULL,NULL,55,0),
	(12,22,4,'2015-12-02 15:51:00',NULL,NULL,54,0),
	(13,26,1,NULL,NULL,NULL,0,0),
	(14,26,2,NULL,NULL,NULL,57,0),
	(15,26,3,'2015-12-02 17:06:29',NULL,NULL,57,0),
	(16,26,4,'2015-12-02 17:06:00',NULL,NULL,57,0),
	(17,26,5,'2015-12-02 17:06:00',NULL,NULL,57,0),
	(18,26,6,'2015-12-02 17:06:00',NULL,NULL,57,0),
	(19,26,7,'2015-12-02 17:06:00',NULL,NULL,57,0),
	(20,26,8,'2015-12-02 17:06:00',NULL,NULL,57,0),
	(21,26,9,'2015-12-02 17:06:00',NULL,NULL,57,0),
	(22,26,10,'2015-12-02 17:06:00',NULL,NULL,57,0),
	(23,26,11,'2015-12-02 17:06:00',NULL,NULL,57,0),
	(24,24,5,'2015-12-02 15:54:00',NULL,NULL,56,0),
	(25,23,5,'2015-12-02 15:52:00',NULL,NULL,55,0),
	(26,22,5,'2015-12-02 15:51:00',NULL,NULL,54,0),
	(27,27,1,NULL,NULL,NULL,0,0),
	(28,27,2,NULL,NULL,NULL,65,0),
	(29,27,3,'2015-12-08 11:35:38',NULL,NULL,65,0),
	(30,27,4,'2015-12-08 11:35:00',NULL,NULL,65,0),
	(31,28,1,NULL,NULL,NULL,0,0),
	(32,28,2,NULL,NULL,NULL,0,0),
	(33,28,3,NULL,NULL,NULL,66,0),
	(34,28,4,'2015-12-08 11:39:15',NULL,NULL,66,0),
	(35,29,1,NULL,NULL,NULL,0,0),
	(36,29,2,NULL,NULL,NULL,0,0),
	(37,29,3,NULL,NULL,NULL,67,0),
	(38,29,4,'2015-12-08 11:41:43',NULL,NULL,67,0),
	(39,30,1,NULL,NULL,NULL,0,0),
	(40,29,5,'2015-12-08 11:41:00',NULL,NULL,67,0),
	(41,29,6,'2015-12-08 11:41:00',NULL,NULL,72,0),
	(42,28,5,'2015-12-08 11:39:00',NULL,NULL,73,0),
	(43,27,5,'2015-12-08 11:35:00',NULL,NULL,74,0),
	(44,26,12,'2015-12-02 17:06:00',NULL,NULL,75,0),
	(45,24,6,'2015-12-02 15:54:00',NULL,NULL,76,0),
	(46,24,7,'2015-12-02 15:54:00',NULL,NULL,76,0),
	(47,22,6,'2015-12-02 15:51:00',NULL,NULL,0,0),
	(48,22,7,'2015-12-02 15:51:00',NULL,NULL,0,0),
	(49,23,6,'2015-12-02 15:52:00',NULL,NULL,0,0),
	(50,24,8,'2015-12-02 15:54:00',NULL,NULL,76,0),
	(51,23,7,'2015-11-26 15:52:00',NULL,NULL,0,0),
	(52,23,8,'2015-11-26 15:52:00',NULL,NULL,0,0),
	(53,29,7,'2015-12-08 11:41:00',NULL,NULL,72,1);

/*!40000 ALTER TABLE `BlogPost_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogTag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogTag`;

CREATE TABLE `BlogTag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('BlogTag') DEFAULT 'BlogTag',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BlogID` (`BlogID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `BlogTag` WRITE;
/*!40000 ALTER TABLE `BlogTag` DISABLE KEYS */;

INSERT INTO `BlogTag` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `URLSegment`, `BlogID`)
VALUES
	(1,'BlogTag','2015-12-02 17:03:55','2015-12-02 17:03:54','guinea pigs','guinea-pigs',12),
	(2,'BlogTag','2015-12-08 14:29:04','2015-12-02 17:04:19','dogs','dogs',12),
	(3,'BlogTag','2015-12-03 11:18:33','2015-12-02 17:04:34','cats','cats',12),
	(4,'BlogTag','2015-12-08 14:27:42','2015-12-08 11:29:35','burrito cat','burrito-cat',12),
	(5,'BlogTag','2015-12-08 11:32:43','2015-12-08 11:32:43','guinea in a car','guinea-in-a-car',12),
	(6,'BlogTag','2015-12-09 15:30:43','2015-12-08 14:33:45','photography','photography',12);

/*!40000 ALTER TABLE `BlogTag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table BlogTree
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogTree`;

CREATE TABLE `BlogTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BlogTree_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogTree_Live`;

CREATE TABLE `BlogTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table BlogTree_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `BlogTree_versions`;

CREATE TABLE `BlogTree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ContactPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ContactPage`;

CREATE TABLE `ContactPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ContactImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ContactImageID` (`ContactImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ContactPage` WRITE;
/*!40000 ALTER TABLE `ContactPage` DISABLE KEYS */;

INSERT INTO `ContactPage` (`ID`, `ContactImageID`)
VALUES
	(13,89);

/*!40000 ALTER TABLE `ContactPage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ContactPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ContactPage_Live`;

CREATE TABLE `ContactPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ContactImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ContactImageID` (`ContactImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ContactPage_Live` WRITE;
/*!40000 ALTER TABLE `ContactPage_Live` DISABLE KEYS */;

INSERT INTO `ContactPage_Live` (`ID`, `ContactImageID`)
VALUES
	(13,89);

/*!40000 ALTER TABLE `ContactPage_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ContactPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ContactPage_versions`;

CREATE TABLE `ContactPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ContactImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `ContactImageID` (`ContactImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ContactPage_versions` WRITE;
/*!40000 ALTER TABLE `ContactPage_versions` DISABLE KEYS */;

INSERT INTO `ContactPage_versions` (`ID`, `RecordID`, `Version`, `ContactImageID`)
VALUES
	(1,13,13,0),
	(2,13,14,70),
	(3,13,15,71),
	(4,13,16,88),
	(5,13,17,0),
	(6,13,18,89);

/*!40000 ALTER TABLE `ContactPage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table EditableCheckbox
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableCheckbox`;

CREATE TABLE `EditableCheckbox` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CheckedDefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableCheckbox_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableCheckbox_Live`;

CREATE TABLE `EditableCheckbox_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CheckedDefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableCheckbox_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableCheckbox_versions`;

CREATE TABLE `EditableCheckbox_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `CheckedDefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableCustomRule
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableCustomRule`;

CREATE TABLE `EditableCustomRule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableCustomRule') DEFAULT 'EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') DEFAULT 'IsBlank',
  `FieldValue` varchar(50) DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ConditionFieldID` (`ConditionFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableCustomRule_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableCustomRule_Live`;

CREATE TABLE `EditableCustomRule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableCustomRule') DEFAULT 'EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') DEFAULT 'IsBlank',
  `FieldValue` varchar(50) DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ConditionFieldID` (`ConditionFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableCustomRule_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableCustomRule_versions`;

CREATE TABLE `EditableCustomRule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableCustomRule') DEFAULT 'EditableCustomRule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Display` enum('Show','Hide') DEFAULT 'Show',
  `ConditionOption` enum('IsBlank','IsNotBlank','HasValue','ValueNot','ValueLessThan','ValueLessThanEqual','ValueGreaterThan','ValueGreaterThanEqual') DEFAULT 'IsBlank',
  `FieldValue` varchar(50) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ConditionFieldID` (`ConditionFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableDateField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableDateField`;

CREATE TABLE `EditableDateField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DefaultToToday` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableDateField_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableDateField_Live`;

CREATE TABLE `EditableDateField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DefaultToToday` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableDateField_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableDateField_versions`;

CREATE TABLE `EditableDateField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `DefaultToToday` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableFieldGroup
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFieldGroup`;

CREATE TABLE `EditableFieldGroup` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EndID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `EndID` (`EndID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableFieldGroup_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFieldGroup_Live`;

CREATE TABLE `EditableFieldGroup_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EndID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `EndID` (`EndID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableFieldGroup_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFieldGroup_versions`;

CREATE TABLE `EditableFieldGroup_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `EndID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `EndID` (`EndID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableFileField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFileField`;

CREATE TABLE `EditableFileField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FolderID` (`FolderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableFileField_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFileField_Live`;

CREATE TABLE `EditableFileField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FolderID` (`FolderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableFileField_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFileField_versions`;

CREATE TABLE `EditableFileField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `FolderID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `FolderID` (`FolderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableFormField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFormField`;

CREATE TABLE `EditableFormField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFieldGroup','EditableFieldGroupEnd','EditableFileField','EditableFormHeading','EditableFormStep','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableNumericField','EditableTextField') DEFAULT 'EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Default` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) DEFAULT NULL,
  `CustomRules` mediumtext,
  `CustomSettings` mediumtext,
  `Migrated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExtraClass` mediumtext,
  `RightTitle` varchar(255) DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `EditableFormField` WRITE;
/*!40000 ALTER TABLE `EditableFormField` DISABLE KEYS */;

INSERT INTO `EditableFormField` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `Migrated`, `ExtraClass`, `RightTitle`, `ShowOnLoad`, `Version`, `ParentID`)
VALUES
	(1,'EditableFormStep','2015-12-09 15:23:18','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,21,13),
	(2,'EditableFormStep','2015-12-07 10:16:26','2015-12-02 15:54:27','EditableFormStep_eea8d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,4,25),
	(3,'EditableTextField','2015-12-07 10:16:26','2015-12-02 15:54:54','EditableTextField_e53e9',NULL,NULL,2,0,NULL,NULL,NULL,1,NULL,NULL,1,4,25),
	(4,'EditableTextField','2015-12-07 10:16:26','2015-12-02 15:55:04','EditableTextField_1fd97',NULL,NULL,3,0,NULL,NULL,NULL,1,NULL,NULL,1,4,25),
	(5,'EditableTextField','2015-12-07 10:16:26','2015-12-02 15:55:14','EditableTextField_625dc',NULL,NULL,4,0,NULL,NULL,NULL,1,NULL,NULL,1,4,25),
	(7,'EditableTextField','2015-12-09 15:23:18','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,1,'form-name',NULL,1,20,13),
	(8,'EditableEmailField','2015-12-09 15:23:18','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,1,'form-email',NULL,1,20,13),
	(9,'EditableTextField','2015-12-09 15:23:18','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,1,'form-message',NULL,1,20,13);

/*!40000 ALTER TABLE `EditableFormField` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table EditableFormField_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFormField_Live`;

CREATE TABLE `EditableFormField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFieldGroup','EditableFieldGroupEnd','EditableFileField','EditableFormHeading','EditableFormStep','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableNumericField','EditableTextField') DEFAULT 'EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Default` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) DEFAULT NULL,
  `CustomRules` mediumtext,
  `CustomSettings` mediumtext,
  `Migrated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExtraClass` mediumtext,
  `RightTitle` varchar(255) DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `EditableFormField_Live` WRITE;
/*!40000 ALTER TABLE `EditableFormField_Live` DISABLE KEYS */;

INSERT INTO `EditableFormField_Live` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `Migrated`, `ExtraClass`, `RightTitle`, `ShowOnLoad`, `Version`, `ParentID`)
VALUES
	(1,'EditableFormStep','2015-12-09 15:23:18','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,21,13),
	(6,'EditableFormStep','2015-12-07 16:46:41','2015-12-07 10:19:01','EditableFormStep_09b55','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,3,25),
	(7,'EditableTextField','2015-12-09 15:23:18','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,1,'form-name',NULL,1,20,13),
	(8,'EditableEmailField','2015-12-09 15:23:18','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,1,'form-email',NULL,1,20,13),
	(9,'EditableTextField','2015-12-09 15:23:18','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,1,'form-message',NULL,1,20,13);

/*!40000 ALTER TABLE `EditableFormField_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table EditableFormField_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFormField_versions`;

CREATE TABLE `EditableFormField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableFormField','EditableCheckbox','EditableCountryDropdownField','EditableDateField','EditableEmailField','EditableFieldGroup','EditableFieldGroupEnd','EditableFileField','EditableFormHeading','EditableFormStep','EditableLiteralField','EditableMemberListField','EditableMultipleOptionField','EditableCheckboxGroupField','EditableDropdown','EditableRadioField','EditableNumericField','EditableTextField') DEFAULT 'EditableFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Default` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomErrorMessage` varchar(255) DEFAULT NULL,
  `CustomRules` mediumtext,
  `CustomSettings` mediumtext,
  `Migrated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ExtraClass` mediumtext,
  `RightTitle` varchar(255) DEFAULT NULL,
  `ShowOnLoad` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `EditableFormField_versions` WRITE;
/*!40000 ALTER TABLE `EditableFormField_versions` DISABLE KEYS */;

INSERT INTO `EditableFormField_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Default`, `Sort`, `Required`, `CustomErrorMessage`, `CustomRules`, `CustomSettings`, `Migrated`, `ExtraClass`, `RightTitle`, `ShowOnLoad`, `ParentID`)
VALUES
	(1,1,1,0,1,0,'EditableFormStep','2015-11-27 10:27:32','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,0,NULL,NULL,1,0),
	(2,1,2,0,1,0,'EditableFormStep','2015-11-27 10:27:32','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,0,NULL,NULL,1,13),
	(3,1,3,1,1,1,'EditableFormStep','2015-11-27 10:27:45','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,0,NULL,NULL,1,13),
	(4,1,4,0,1,0,'EditableFormStep','2015-11-27 13:32:44','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(5,1,5,0,1,0,'EditableFormStep','2015-11-27 13:32:44','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(6,2,1,0,1,0,'EditableFormStep','2015-12-02 15:54:27','2015-12-02 15:54:27','EditableFormStep_eea8d','First Page',NULL,1,0,NULL,NULL,NULL,0,NULL,NULL,1,0),
	(7,2,2,0,1,0,'EditableFormStep','2015-12-02 15:54:27','2015-12-02 15:54:27','EditableFormStep_eea8d','First Page',NULL,1,0,NULL,NULL,NULL,0,NULL,NULL,1,25),
	(8,3,1,0,1,0,'EditableTextField','2015-12-02 15:54:54','2015-12-02 15:54:54','EditableTextField_e53e9',NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,1,0),
	(9,3,2,0,1,0,'EditableTextField','2015-12-02 15:54:54','2015-12-02 15:54:54','EditableTextField_e53e9',NULL,NULL,2,0,NULL,NULL,NULL,0,NULL,NULL,1,25),
	(10,4,1,0,1,0,'EditableTextField','2015-12-02 15:55:04','2015-12-02 15:55:04','EditableTextField_1fd97',NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,1,0),
	(11,4,2,0,1,0,'EditableTextField','2015-12-02 15:55:04','2015-12-02 15:55:04','EditableTextField_1fd97',NULL,NULL,3,0,NULL,NULL,NULL,0,NULL,NULL,1,25),
	(12,5,1,0,1,0,'EditableTextField','2015-12-02 15:55:14','2015-12-02 15:55:14','EditableTextField_625dc',NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,1,0),
	(13,5,2,0,1,0,'EditableTextField','2015-12-02 15:55:14','2015-12-02 15:55:14','EditableTextField_625dc',NULL,NULL,4,0,NULL,NULL,NULL,0,NULL,NULL,1,25),
	(14,2,3,1,1,1,'EditableFormStep','2015-12-02 15:56:12','2015-12-02 15:54:27','EditableFormStep_eea8d','First Page',NULL,1,0,NULL,NULL,NULL,0,NULL,NULL,1,25),
	(15,3,3,1,1,1,'EditableTextField','2015-12-02 15:56:12','2015-12-02 15:54:54','EditableTextField_e53e9',NULL,NULL,2,0,NULL,NULL,NULL,0,NULL,NULL,1,25),
	(16,4,3,1,1,1,'EditableTextField','2015-12-02 15:56:12','2015-12-02 15:55:04','EditableTextField_1fd97',NULL,NULL,3,0,NULL,NULL,NULL,0,NULL,NULL,1,25),
	(17,5,3,1,1,1,'EditableTextField','2015-12-02 15:56:12','2015-12-02 15:55:14','EditableTextField_625dc',NULL,NULL,4,0,NULL,NULL,NULL,0,NULL,NULL,1,25),
	(18,1,6,1,1,1,'EditableFormStep','2015-12-02 15:59:00','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(19,2,4,0,1,0,'EditableFormStep','2015-12-07 10:16:26','2015-12-02 15:54:27','EditableFormStep_eea8d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,25),
	(20,2,5,0,1,0,'EditableFormStep','2015-12-07 10:16:26','2015-12-02 15:54:27','EditableFormStep_eea8d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,25),
	(21,3,4,0,1,0,'EditableTextField','2015-12-07 10:16:26','2015-12-02 15:54:54','EditableTextField_e53e9',NULL,NULL,2,0,NULL,NULL,NULL,1,NULL,NULL,1,25),
	(22,3,5,0,1,0,'EditableTextField','2015-12-07 10:16:26','2015-12-02 15:54:54','EditableTextField_e53e9',NULL,NULL,2,0,NULL,NULL,NULL,1,NULL,NULL,1,25),
	(23,4,4,0,1,0,'EditableTextField','2015-12-07 10:16:26','2015-12-02 15:55:04','EditableTextField_1fd97',NULL,NULL,3,0,NULL,NULL,NULL,1,NULL,NULL,1,25),
	(24,4,5,0,1,0,'EditableTextField','2015-12-07 10:16:26','2015-12-02 15:55:04','EditableTextField_1fd97',NULL,NULL,3,0,NULL,NULL,NULL,1,NULL,NULL,1,25),
	(25,5,4,0,1,0,'EditableTextField','2015-12-07 10:16:26','2015-12-02 15:55:14','EditableTextField_625dc',NULL,NULL,4,0,NULL,NULL,NULL,1,NULL,NULL,1,25),
	(26,5,5,0,1,0,'EditableTextField','2015-12-07 10:16:26','2015-12-02 15:55:14','EditableTextField_625dc',NULL,NULL,4,0,NULL,NULL,NULL,1,NULL,NULL,1,25),
	(27,6,1,0,1,0,'EditableFormStep','2015-12-07 10:19:01','2015-12-07 10:19:01','EditableFormStep_09b55','First Page',NULL,1,0,NULL,NULL,NULL,0,NULL,NULL,1,0),
	(28,6,2,0,1,0,'EditableFormField','2015-12-07 10:19:01',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,1,25),
	(29,7,1,0,1,0,'EditableTextField','2015-12-07 10:19:15','2015-12-07 10:19:15','EditableTextField_c92b8',NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,1,0),
	(30,7,2,0,1,0,'EditableTextField','2015-12-07 10:19:15','2015-12-07 10:19:15','EditableTextField_c92b8',NULL,NULL,2,0,NULL,NULL,NULL,0,NULL,NULL,1,13),
	(31,8,1,0,1,0,'EditableTextField','2015-12-07 10:19:26','2015-12-07 10:19:26','EditableTextField_5cd04',NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,1,0),
	(32,8,2,0,1,0,'EditableTextField','2015-12-07 10:19:26','2015-12-07 10:19:26','EditableTextField_5cd04',NULL,NULL,3,0,NULL,NULL,NULL,0,NULL,NULL,1,13),
	(33,9,1,0,1,0,'EditableTextField','2015-12-07 10:19:38','2015-12-07 10:19:38','EditableTextField_fd940',NULL,NULL,0,0,NULL,NULL,NULL,0,NULL,NULL,1,0),
	(34,9,2,0,1,0,'EditableTextField','2015-12-07 10:19:38','2015-12-07 10:19:38','EditableTextField_fd940',NULL,NULL,4,0,NULL,NULL,NULL,0,NULL,NULL,1,13),
	(35,1,7,1,1,1,'EditableFormStep','2015-12-07 10:19:57','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(36,7,3,1,1,1,'EditableTextField','2015-12-07 10:19:57','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,0,NULL,NULL,1,13),
	(37,8,3,1,1,1,'EditableEmailField','2015-12-07 10:19:57','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,0,NULL,NULL,1,13),
	(38,9,3,1,1,1,'EditableTextField','2015-12-07 10:19:57','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,0,NULL,NULL,1,13),
	(39,7,4,0,1,0,'EditableTextField','2015-12-07 10:21:34','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,0,'form-name',NULL,1,13),
	(40,8,4,0,1,0,'EditableEmailField','2015-12-07 10:21:47','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,0,'form-email',NULL,1,13),
	(41,9,4,0,1,0,'EditableTextField','2015-12-07 10:22:01','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,0,'form-message',NULL,1,13),
	(42,1,8,1,1,1,'EditableFormStep','2015-12-07 10:22:30','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(43,7,5,1,1,1,'EditableTextField','2015-12-07 10:22:30','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,0,'form-name',NULL,1,13),
	(44,8,5,1,1,1,'EditableEmailField','2015-12-07 10:22:31','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,0,'form-email',NULL,1,13),
	(45,9,5,1,1,1,'EditableTextField','2015-12-07 10:22:31','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,0,'form-message',NULL,1,13),
	(46,1,9,1,1,1,'EditableFormStep','2015-12-07 10:41:30','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(47,7,6,1,1,1,'EditableTextField','2015-12-07 10:41:30','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,0,'form-name',NULL,1,13),
	(48,8,6,1,1,1,'EditableEmailField','2015-12-07 10:41:30','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,0,'form-email',NULL,1,13),
	(49,9,6,1,1,1,'EditableTextField','2015-12-07 10:41:30','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,0,'form-message',NULL,1,13),
	(50,1,10,1,1,1,'EditableFormStep','2015-12-07 10:46:00','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(51,7,7,1,1,1,'EditableTextField','2015-12-07 10:46:00','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,0,'form-name',NULL,1,13),
	(52,8,7,1,1,1,'EditableEmailField','2015-12-07 10:46:00','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,0,'form-email',NULL,1,13),
	(53,9,7,1,1,1,'EditableTextField','2015-12-07 10:46:00','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,0,'form-message',NULL,1,13),
	(54,1,11,1,1,1,'EditableFormStep','2015-12-07 10:46:18','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(55,7,8,1,1,1,'EditableTextField','2015-12-07 10:46:18','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,0,'form-name',NULL,1,13),
	(56,8,8,1,1,1,'EditableEmailField','2015-12-07 10:46:18','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,0,'form-email',NULL,1,13),
	(57,9,8,1,1,1,'EditableTextField','2015-12-07 10:46:18','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,0,'form-message',NULL,1,13),
	(58,1,12,1,1,1,'EditableFormStep','2015-12-07 10:46:40','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(59,7,9,1,1,1,'EditableTextField','2015-12-07 10:46:40','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,0,'form-name',NULL,1,13),
	(60,8,9,1,1,1,'EditableEmailField','2015-12-07 10:46:40','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,0,'form-email',NULL,1,13),
	(61,9,9,1,1,1,'EditableTextField','2015-12-07 10:46:40','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,0,'form-message',NULL,1,13),
	(62,1,13,1,1,1,'EditableFormStep','2015-12-07 10:47:44','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(63,7,10,1,1,1,'EditableTextField','2015-12-07 10:47:44','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,0,'form-name',NULL,1,13),
	(64,8,10,1,1,1,'EditableEmailField','2015-12-07 10:47:44','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,0,'form-email',NULL,1,13),
	(65,9,10,1,1,1,'EditableTextField','2015-12-07 10:47:44','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,0,'form-message',NULL,1,13),
	(66,1,14,1,1,1,'EditableFormStep','2015-12-07 10:47:53','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(67,7,11,1,1,1,'EditableTextField','2015-12-07 10:47:53','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,0,'form-name',NULL,1,13),
	(68,8,11,1,1,1,'EditableEmailField','2015-12-07 10:47:53','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,0,'form-email',NULL,1,13),
	(69,9,11,1,1,1,'EditableTextField','2015-12-07 10:47:53','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,0,'form-message',NULL,1,13),
	(70,1,15,1,1,1,'EditableFormStep','2015-12-07 10:48:11','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(71,7,12,1,1,1,'EditableTextField','2015-12-07 10:48:11','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,0,'form-name',NULL,1,13),
	(72,8,12,1,1,1,'EditableEmailField','2015-12-07 10:48:11','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,0,'form-email',NULL,1,13),
	(73,9,12,1,1,1,'EditableTextField','2015-12-07 10:48:11','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,0,'form-message',NULL,1,13),
	(74,6,3,0,1,0,'EditableFormField','2015-12-07 16:46:41',NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,1,NULL,NULL,1,0),
	(75,7,13,0,1,0,'EditableTextField','2015-12-07 16:46:41','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,1,'form-name',NULL,1,13),
	(76,7,14,0,1,0,'EditableTextField','2015-12-07 16:46:41','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,1,'form-name',NULL,1,13),
	(77,8,13,0,1,0,'EditableEmailField','2015-12-07 16:46:41','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,1,'form-email',NULL,1,13),
	(78,8,14,0,1,0,'EditableEmailField','2015-12-07 16:46:41','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,1,'form-email',NULL,1,13),
	(79,9,13,0,1,0,'EditableTextField','2015-12-07 16:46:41','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,1,'form-message',NULL,1,13),
	(80,9,14,0,1,0,'EditableTextField','2015-12-07 16:46:41','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,1,'form-message',NULL,1,13),
	(81,1,16,1,1,1,'EditableFormStep','2015-12-08 09:36:49','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(82,7,15,1,1,1,'EditableTextField','2015-12-08 09:36:49','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,1,'form-name',NULL,1,13),
	(83,8,15,1,1,1,'EditableEmailField','2015-12-08 09:36:49','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,1,'form-email',NULL,1,13),
	(84,9,15,1,1,1,'EditableTextField','2015-12-08 09:36:49','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,1,'form-message',NULL,1,13),
	(85,1,17,1,1,1,'EditableFormStep','2015-12-08 13:42:45','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(86,7,16,1,1,1,'EditableTextField','2015-12-08 13:42:45','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,1,'form-name',NULL,1,13),
	(87,8,16,1,1,1,'EditableEmailField','2015-12-08 13:42:45','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,1,'form-email',NULL,1,13),
	(88,9,16,1,1,1,'EditableTextField','2015-12-08 13:42:45','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,1,'form-message',NULL,1,13),
	(89,1,18,1,1,1,'EditableFormStep','2015-12-08 13:57:15','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(90,7,17,1,1,1,'EditableTextField','2015-12-08 13:57:15','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,1,'form-name',NULL,1,13),
	(91,8,17,1,1,1,'EditableEmailField','2015-12-08 13:57:15','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,1,'form-email',NULL,1,13),
	(92,9,17,1,1,1,'EditableTextField','2015-12-08 13:57:15','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,1,'form-message',NULL,1,13),
	(93,1,19,1,1,1,'EditableFormStep','2015-12-09 10:10:52','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(94,7,18,1,1,1,'EditableTextField','2015-12-09 10:10:52','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,1,'form-name',NULL,1,13),
	(95,8,18,1,1,1,'EditableEmailField','2015-12-09 10:10:52','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,1,'form-email',NULL,1,13),
	(96,9,18,1,1,1,'EditableTextField','2015-12-09 10:10:52','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,1,'form-message',NULL,1,13),
	(97,1,20,1,1,1,'EditableFormStep','2015-12-09 10:15:16','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(98,7,19,1,1,1,'EditableTextField','2015-12-09 10:15:16','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,1,'form-name',NULL,1,13),
	(99,8,19,1,1,1,'EditableEmailField','2015-12-09 10:15:16','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,1,'form-email',NULL,1,13),
	(100,9,19,1,1,1,'EditableTextField','2015-12-09 10:15:16','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,1,'form-message',NULL,1,13),
	(101,1,21,1,1,1,'EditableFormStep','2015-12-09 15:23:18','2015-11-27 10:27:32','EditableFormStep_e727d','First Page',NULL,1,0,NULL,NULL,NULL,1,NULL,NULL,1,13),
	(102,7,20,1,1,1,'EditableTextField','2015-12-09 15:23:18','2015-12-07 10:19:15','EditableTextField_c92b8','Name',NULL,2,0,NULL,NULL,NULL,1,'form-name',NULL,1,13),
	(103,8,20,1,1,1,'EditableEmailField','2015-12-09 15:23:18','2015-12-07 10:19:26','EditableTextField_5cd04','Email',NULL,3,0,NULL,NULL,NULL,1,'form-email',NULL,1,13),
	(104,9,20,1,1,1,'EditableTextField','2015-12-09 15:23:18','2015-12-07 10:19:38','EditableTextField_fd940','Message',NULL,4,0,NULL,NULL,NULL,1,'form-message',NULL,1,13);

/*!40000 ALTER TABLE `EditableFormField_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table EditableFormHeading
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFormHeading`;

CREATE TABLE `EditableFormHeading` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Level` int(11) NOT NULL DEFAULT '3',
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableFormHeading_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFormHeading_Live`;

CREATE TABLE `EditableFormHeading_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Level` int(11) NOT NULL DEFAULT '3',
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableFormHeading_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableFormHeading_versions`;

CREATE TABLE `EditableFormHeading_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Level` int(11) NOT NULL DEFAULT '3',
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableLiteralField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableLiteralField`;

CREATE TABLE `EditableLiteralField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideLabel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableLiteralField_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableLiteralField_Live`;

CREATE TABLE `EditableLiteralField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideLabel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableLiteralField_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableLiteralField_versions`;

CREATE TABLE `EditableLiteralField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Content` mediumtext,
  `HideFromReports` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideLabel` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableMemberListField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableMemberListField`;

CREATE TABLE `EditableMemberListField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableMemberListField_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableMemberListField_Live`;

CREATE TABLE `EditableMemberListField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableMemberListField_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableMemberListField_versions`;

CREATE TABLE `EditableMemberListField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableNumericField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableNumericField`;

CREATE TABLE `EditableNumericField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MinValue` int(11) NOT NULL DEFAULT '0',
  `MaxValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableNumericField_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableNumericField_Live`;

CREATE TABLE `EditableNumericField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MinValue` int(11) NOT NULL DEFAULT '0',
  `MaxValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableNumericField_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableNumericField_versions`;

CREATE TABLE `EditableNumericField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MinValue` int(11) NOT NULL DEFAULT '0',
  `MaxValue` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableOption
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableOption`;

CREATE TABLE `EditableOption` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableOption') DEFAULT 'EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableOption_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableOption_Live`;

CREATE TABLE `EditableOption_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EditableOption') DEFAULT 'EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableOption_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableOption_versions`;

CREATE TABLE `EditableOption_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('EditableOption') DEFAULT 'EditableOption',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table EditableTextField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableTextField`;

CREATE TABLE `EditableTextField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MinLength` int(11) NOT NULL DEFAULT '0',
  `MaxLength` int(11) NOT NULL DEFAULT '0',
  `Rows` int(11) NOT NULL DEFAULT '1',
  `Placeholder` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `EditableTextField` WRITE;
/*!40000 ALTER TABLE `EditableTextField` DISABLE KEYS */;

INSERT INTO `EditableTextField` (`ID`, `MinLength`, `MaxLength`, `Rows`, `Placeholder`)
VALUES
	(3,0,0,1,NULL),
	(4,0,0,1,NULL),
	(5,0,0,1,NULL),
	(7,0,0,1,NULL),
	(8,0,0,1,NULL),
	(9,0,0,5,NULL);

/*!40000 ALTER TABLE `EditableTextField` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table EditableTextField_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableTextField_Live`;

CREATE TABLE `EditableTextField_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MinLength` int(11) NOT NULL DEFAULT '0',
  `MaxLength` int(11) NOT NULL DEFAULT '0',
  `Rows` int(11) NOT NULL DEFAULT '1',
  `Placeholder` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `EditableTextField_Live` WRITE;
/*!40000 ALTER TABLE `EditableTextField_Live` DISABLE KEYS */;

INSERT INTO `EditableTextField_Live` (`ID`, `MinLength`, `MaxLength`, `Rows`, `Placeholder`)
VALUES
	(7,0,0,1,NULL),
	(9,0,0,5,NULL);

/*!40000 ALTER TABLE `EditableTextField_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table EditableTextField_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `EditableTextField_versions`;

CREATE TABLE `EditableTextField_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `MinLength` int(11) NOT NULL DEFAULT '0',
  `MaxLength` int(11) NOT NULL DEFAULT '0',
  `Rows` int(11) NOT NULL DEFAULT '1',
  `Placeholder` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `EditableTextField_versions` WRITE;
/*!40000 ALTER TABLE `EditableTextField_versions` DISABLE KEYS */;

INSERT INTO `EditableTextField_versions` (`ID`, `RecordID`, `Version`, `MinLength`, `MaxLength`, `Rows`, `Placeholder`)
VALUES
	(1,3,1,0,0,1,NULL),
	(2,3,2,0,0,1,NULL),
	(3,4,1,0,0,1,NULL),
	(4,4,2,0,0,1,NULL),
	(5,5,1,0,0,1,NULL),
	(6,5,2,0,0,1,NULL),
	(7,3,3,0,0,1,NULL),
	(8,4,3,0,0,1,NULL),
	(9,5,3,0,0,1,NULL),
	(10,3,4,0,0,1,NULL),
	(11,3,5,0,0,1,NULL),
	(12,4,4,0,0,1,NULL),
	(13,4,5,0,0,1,NULL),
	(14,5,4,0,0,1,NULL),
	(15,5,5,0,0,1,NULL),
	(16,7,1,0,0,1,NULL),
	(17,7,2,0,0,1,NULL),
	(18,8,1,0,0,1,NULL),
	(19,8,2,0,0,1,NULL),
	(20,9,1,0,0,1,NULL),
	(21,9,2,0,0,1,NULL),
	(22,7,3,0,0,1,NULL),
	(23,9,3,0,0,1,NULL),
	(24,7,4,0,0,1,NULL),
	(25,9,4,0,0,5,NULL),
	(26,7,5,0,0,1,NULL),
	(27,9,5,0,0,5,NULL),
	(28,7,6,0,0,1,NULL),
	(29,9,6,0,0,5,NULL),
	(30,7,7,0,0,1,NULL),
	(31,9,7,0,0,5,NULL),
	(32,7,8,0,0,1,NULL),
	(33,9,8,0,0,5,NULL),
	(34,7,9,0,0,1,NULL),
	(35,9,9,0,0,5,NULL),
	(36,7,10,0,0,1,NULL),
	(37,9,10,0,0,5,NULL),
	(38,7,11,0,0,1,NULL),
	(39,9,11,0,0,5,NULL),
	(40,7,12,0,0,1,NULL),
	(41,9,12,0,0,5,NULL),
	(42,7,13,0,0,1,NULL),
	(43,7,14,0,0,1,NULL),
	(44,9,13,0,0,5,NULL),
	(45,9,14,0,0,5,NULL),
	(46,7,15,0,0,1,NULL),
	(47,9,15,0,0,5,NULL),
	(48,7,16,0,0,1,NULL),
	(49,9,16,0,0,5,NULL),
	(50,7,17,0,0,1,NULL),
	(51,9,17,0,0,5,NULL),
	(52,7,18,0,0,1,NULL),
	(53,9,18,0,0,5,NULL),
	(54,7,19,0,0,1,NULL),
	(55,9,19,0,0,5,NULL),
	(56,7,20,0,0,1,NULL),
	(57,9,20,0,0,5,NULL);

/*!40000 ALTER TABLE `EditableTextField_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ErrorPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ErrorPage`;

CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`)
VALUES
	(4,404),
	(5,500);

/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ErrorPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ErrorPage_Live`;

CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ErrorPage_Live` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`)
VALUES
	(4,404),
	(5,500);

/*!40000 ALTER TABLE `ErrorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ErrorPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ErrorPage_versions`;

CREATE TABLE `ErrorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `ErrorPage_versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_versions` DISABLE KEYS */;

INSERT INTO `ErrorPage_versions` (`ID`, `RecordID`, `Version`, `ErrorCode`)
VALUES
	(1,4,1,404),
	(2,5,1,500);

/*!40000 ALTER TABLE `ErrorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table File
# ------------------------------------------------------------

DROP TABLE IF EXISTS `File`;

CREATE TABLE `File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','Folder','Image','Image_Cached') DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext,
  `Content` mediumtext,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;

INSERT INTO `File` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`)
VALUES
	(1,'Folder','2015-11-27 09:38:44','2015-11-27 09:38:44','Header','Header','assets/Header/',NULL,1,0,1),
	(2,'Image','2015-11-27 09:39:15','2015-11-27 09:38:44','Logo-Final.png','Logo Final','assets/Header/Logo-Final.png',NULL,1,1,1),
	(3,'Folder','2015-11-27 10:00:00','2015-11-27 10:00:00','Gallery','Gallery','assets/Gallery/',NULL,1,0,1),
	(4,'Image','2015-11-27 10:00:00','2015-11-27 10:00:00','bridge.jpg','bridge','assets/Gallery/bridge.jpg',NULL,1,3,1),
	(5,'Image','2015-11-27 10:18:17','2015-11-27 10:18:17','capistrana-1213320.jpg','capistrana 1213320','assets/Gallery/capistrana-1213320.jpg',NULL,1,3,1),
	(6,'Image','2015-11-27 10:18:43','2015-11-27 10:18:43','d95a415a88d4eda045056cb096109a1c.jpg','d95a415a88d4eda045056cb096109a1c','assets/Gallery/d95a415a88d4eda045056cb096109a1c.jpg',NULL,1,3,1),
	(7,'Image','2015-11-27 10:19:02','2015-11-27 10:19:02','hair.jpg','hair','assets/Gallery/hair.jpg',NULL,1,3,1),
	(8,'Image','2015-11-27 10:19:22','2015-11-27 10:19:22','ouro-preto-1213324.jpg','ouro preto 1213324','assets/Gallery/ouro-preto-1213324.jpg',NULL,1,3,1),
	(9,'Image','2015-11-27 10:21:34','2015-11-27 10:21:34','residentGP-brookeholm-marshagolemac-9-1024x683.jpg','residentGP brookeholm marshagolemac 9 1024x683','assets/Gallery/residentGP-brookeholm-marshagolemac-9-1024x683.jpg',NULL,1,3,1),
	(10,'Image','2015-11-27 10:41:22','2015-11-27 10:41:22','triangles.jpg','triangles','assets/Gallery/triangles.jpg',NULL,1,3,1),
	(11,'Image','2015-11-27 10:41:39','2015-11-27 10:41:39','ORANGE.jpg','ORANGE','assets/Gallery/ORANGE.jpg',NULL,1,3,1),
	(12,'Image','2015-11-27 10:42:29','2015-11-27 10:42:29','triangles2.jpg','triangles2','assets/Gallery/triangles2.jpg',NULL,1,3,1),
	(13,'Image','2015-11-27 10:48:24','2015-11-27 10:48:24','cameras.jpg','cameras','assets/Gallery/cameras.jpg',NULL,1,3,1),
	(14,'Image','2015-11-27 10:48:41','2015-11-27 10:48:41','pattern.jpg','pattern','assets/Gallery/pattern.jpg',NULL,1,3,1),
	(15,'Image','2015-11-30 11:02:23','2015-11-30 11:02:23','download.jpeg','download','assets/Header/download.jpeg',NULL,1,1,1),
	(16,'Image','2015-11-30 11:09:56','2015-11-30 11:09:56','capistrana-1213321.jpg','capistrana 1213321','assets/Gallery/capistrana-1213321.jpg',NULL,1,3,1),
	(17,'Image','2015-11-30 11:10:52','2015-11-30 11:10:52','ouro-preto-1213325.jpg','ouro preto 1213325','assets/Gallery/ouro-preto-1213325.jpg',NULL,1,3,1),
	(18,'Image','2015-11-30 11:11:14','2015-11-30 11:11:14','blue-barrow-1170123.jpg','blue barrow 1170123','assets/Gallery/blue-barrow-1170123.jpg',NULL,1,3,1),
	(19,'Image','2015-11-30 11:21:46','2015-11-30 11:21:46','Screen-Shot-2015-11-30-at-11.21.23-am.png','Screen Shot 2015 11 30 at 11.21.23 am','assets/Gallery/Screen-Shot-2015-11-30-at-11.21.23-am.png',NULL,1,3,1),
	(20,'Image','2015-11-30 11:21:59','2015-11-30 11:21:59','Screen-Shot-2015-11-30-at-11.21.02-am.png','Screen Shot 2015 11 30 at 11.21.02 am','assets/Gallery/Screen-Shot-2015-11-30-at-11.21.02-am.png',NULL,1,3,1),
	(21,'Image','2015-11-30 11:22:12','2015-11-30 11:22:12','Screen-Shot-2015-11-30-at-11.20.09-am.png','Screen Shot 2015 11 30 at 11.20.09 am','assets/Gallery/Screen-Shot-2015-11-30-at-11.20.09-am.png',NULL,1,3,1),
	(23,'Image','2015-11-30 11:24:20','2015-11-30 11:24:20','Screen-Shot-2015-11-30-at-12.21.23-am.png','Screen Shot 2015 11 30 at 12.21.23 am','assets/Gallery/Screen-Shot-2015-11-30-at-12.21.23-am.png',NULL,1,3,1),
	(24,'Image','2015-11-30 11:24:31','2015-11-30 11:24:31','Screen-Shot-2015-11-30-at-12.21.02-am.png','Screen Shot 2015 11 30 at 12.21.02 am','assets/Gallery/Screen-Shot-2015-11-30-at-12.21.02-am.png',NULL,1,3,1),
	(25,'Image','2015-11-30 11:24:44','2015-11-30 11:24:44','Screen-Shot-2015-11-30-at-12.20.09-am.png','Screen Shot 2015 11 30 at 12.20.09 am','assets/Gallery/Screen-Shot-2015-11-30-at-12.20.09-am.png',NULL,1,3,1),
	(26,'Image','2015-11-30 11:39:42','2015-11-30 11:39:42','Screen-Shot-2015-11-30-at-11.38.26-am.png','Screen Shot 2015 11 30 at 11.38.26 am','assets/Gallery/Screen-Shot-2015-11-30-at-11.38.26-am.png',NULL,1,3,1),
	(27,'Image','2015-11-30 11:39:56','2015-11-30 11:39:56','Screen-Shot-2015-11-30-at-11.38.17-am.png','Screen Shot 2015 11 30 at 11.38.17 am','assets/Gallery/Screen-Shot-2015-11-30-at-11.38.17-am.png',NULL,1,3,1),
	(28,'Image','2015-11-30 11:46:52','2015-11-30 11:46:52','Screen-Shot-2015-11-30-at-11.38.12-am.png','Screen Shot 2015 11 30 at 11.38.12 am','assets/Gallery/Screen-Shot-2015-11-30-at-11.38.12-am.png',NULL,1,3,1),
	(29,'Image','2015-11-30 11:47:06','2015-11-30 11:47:06','Screen-Shot-2015-11-30-at-11.37.26-am.png','Screen Shot 2015 11 30 at 11.37.26 am','assets/Gallery/Screen-Shot-2015-11-30-at-11.37.26-am.png',NULL,1,3,1),
	(30,'Image','2015-11-30 11:48:13','2015-11-30 11:48:13','Screen-Shot-2015-11-30-at-11.37.15-am.png','Screen Shot 2015 11 30 at 11.37.15 am','assets/Gallery/Screen-Shot-2015-11-30-at-11.37.15-am.png',NULL,1,3,1),
	(31,'Image','2015-11-30 11:54:23','2015-11-30 11:54:23','brooklyn-bridge-2-1170781.jpg','brooklyn bridge 2 1170781','assets/Gallery/brooklyn-bridge-2-1170781.jpg',NULL,1,3,1),
	(33,'Image','2015-11-30 12:04:20','2015-11-30 12:04:20','Screen-Shot-2015-11-30-at-12.02.03-pm.png','Screen Shot 2015 11 30 at 12.02.03 pm','assets/Gallery/Screen-Shot-2015-11-30-at-12.02.03-pm.png',NULL,1,3,1),
	(34,'Image','2015-11-30 12:04:34','2015-11-30 12:04:34','Screen-Shot-2015-11-30-at-12.01.56-pm.png','Screen Shot 2015 11 30 at 12.01.56 pm','assets/Gallery/Screen-Shot-2015-11-30-at-12.01.56-pm.png',NULL,1,3,1),
	(35,'Image','2015-11-30 12:04:55','2015-11-30 12:04:55','Screen-Shot-2015-11-30-at-12.01.42-pm.png','Screen Shot 2015 11 30 at 12.01.42 pm','assets/Gallery/Screen-Shot-2015-11-30-at-12.01.42-pm.png',NULL,1,3,1),
	(36,'Image','2015-11-30 13:12:41','2015-11-30 13:12:41','Logo-Final2.png','Logo Final2','assets/Header/Logo-Final2.png',NULL,1,1,1),
	(37,'Folder','2015-11-30 13:13:08','2015-11-30 13:13:08','Hero','Hero','assets/Hero/',NULL,1,0,1),
	(38,'Image','2015-11-30 13:23:28','2015-11-30 13:13:08','flatlay2.jpg','flatlay2','assets/Hero/flatlay2.jpg',NULL,1,37,1),
	(39,'Image','2015-11-30 13:17:32','2015-11-30 13:17:32','Screen-Shot-2015-11-30-at-12.02.42-pm.png','Screen Shot 2015 11 30 at 12.02.42 pm','assets/Gallery/Screen-Shot-2015-11-30-at-12.02.42-pm.png',NULL,1,3,1),
	(40,'Image','2015-11-30 13:17:47','2015-11-30 13:17:47','Screen-Shot-2015-11-30-at-12.02.35-pm.png','Screen Shot 2015 11 30 at 12.02.35 pm','assets/Gallery/Screen-Shot-2015-11-30-at-12.02.35-pm.png',NULL,1,3,1),
	(41,'Image','2015-11-30 13:18:00','2015-11-30 13:18:00','Screen-Shot-2015-11-30-at-12.02.29-pm.png','Screen Shot 2015 11 30 at 12.02.29 pm','assets/Gallery/Screen-Shot-2015-11-30-at-12.02.29-pm.png',NULL,1,3,1),
	(42,'Image','2015-11-30 13:18:12','2015-11-30 13:18:12','Screen-Shot-2015-11-30-at-12.02.22-pm.png','Screen Shot 2015 11 30 at 12.02.22 pm','assets/Gallery/Screen-Shot-2015-11-30-at-12.02.22-pm.png',NULL,1,3,1),
	(43,'Image','2015-11-30 13:23:50','2015-11-30 13:23:50','Screen-Shot-2015-11-30-at-12.02.42-pm.png','Screen Shot 2015 11 30 at 12.02.42 pm','assets/Hero/Screen-Shot-2015-11-30-at-12.02.42-pm.png',NULL,1,37,1),
	(44,'Image','2015-12-08 11:47:32','2015-11-30 13:24:19','flatlay3.jpg','flatlay3','assets/Hero/flatlay3.jpg',NULL,1,37,1),
	(45,'Image','2015-11-30 13:43:53','2015-11-30 13:43:53','Screen-Shot-2015-11-30-at-1.41.33-pm.png','Screen Shot 2015 11 30 at 1.41.33 pm','assets/Gallery/Screen-Shot-2015-11-30-at-1.41.33-pm.png',NULL,1,3,1),
	(46,'Image','2015-11-30 13:44:09','2015-11-30 13:44:09','Screen-Shot-2015-11-30-at-1.41.41-pm.png','Screen Shot 2015 11 30 at 1.41.41 pm','assets/Gallery/Screen-Shot-2015-11-30-at-1.41.41-pm.png',NULL,1,3,1),
	(47,'Image','2015-11-30 13:44:27','2015-11-30 13:44:27','Screen-Shot-2015-11-30-at-1.41.49-pm.png','Screen Shot 2015 11 30 at 1.41.49 pm','assets/Gallery/Screen-Shot-2015-11-30-at-1.41.49-pm.png',NULL,1,3,1),
	(48,'Image','2015-11-30 13:44:48','2015-11-30 13:44:48','Screen-Shot-2015-11-30-at-1.42.01-pm.png','Screen Shot 2015 11 30 at 1.42.01 pm','assets/Gallery/Screen-Shot-2015-11-30-at-1.42.01-pm.png',NULL,1,3,1),
	(49,'Image','2015-11-30 13:45:03','2015-11-30 13:45:03','Screen-Shot-2015-11-30-at-1.42.27-pm.png','Screen Shot 2015 11 30 at 1.42.27 pm','assets/Gallery/Screen-Shot-2015-11-30-at-1.42.27-pm.png',NULL,1,3,1),
	(50,'Image','2015-11-30 14:01:42','2015-11-30 14:01:42','Screen-Shot-2015-11-30-at-2.00.28-pm.png','Screen Shot 2015 11 30 at 2.00.28 pm','assets/Gallery/Screen-Shot-2015-11-30-at-2.00.28-pm.png',NULL,1,3,1),
	(51,'Image','2015-11-30 14:01:59','2015-11-30 14:01:59','Screen-Shot-2015-11-30-at-2.00.57-pm.png','Screen Shot 2015 11 30 at 2.00.57 pm','assets/Gallery/Screen-Shot-2015-11-30-at-2.00.57-pm.png',NULL,1,3,1),
	(52,'Image','2015-11-30 14:02:16','2015-11-30 14:02:16','Screen-Shot-2015-11-30-at-2.01.16-pm.png','Screen Shot 2015 11 30 at 2.01.16 pm','assets/Gallery/Screen-Shot-2015-11-30-at-2.01.16-pm.png',NULL,1,3,1),
	(53,'Folder','2015-12-02 15:51:50','2015-12-02 15:51:50','Uploads','Uploads','assets/Uploads/',NULL,1,0,1),
	(54,'Image','2015-12-02 15:51:50','2015-12-02 15:51:50','maxresdefault.jpg','maxresdefault','assets/Uploads/maxresdefault.jpg',NULL,1,53,1),
	(55,'Image','2015-12-02 15:52:47','2015-12-02 15:52:47','download.jpeg','download','assets/Uploads/download.jpeg',NULL,1,53,1),
	(56,'Image','2015-12-02 15:53:58','2015-12-02 15:53:58','guinea.jpg','guinea','assets/Uploads/guinea.jpg',NULL,1,53,1),
	(57,'Image','2015-12-02 17:06:22','2015-12-02 17:06:22','maxresdefault2.jpg','maxresdefault2','assets/Uploads/maxresdefault2.jpg',NULL,1,53,1),
	(58,'Image','2015-12-03 11:10:20','2015-12-03 11:10:20','WillWild-Granitepink.jpg','WillWild Granitepink','assets/Uploads/WillWild-Granitepink.jpg',NULL,1,53,1),
	(59,'Image','2015-12-03 11:12:24','2015-12-03 11:12:24','Screen-Shot-2015-11-18-at-1.10.12-pm.png','Screen Shot 2015 11 18 at 1.10.12 pm','assets/Uploads/Screen-Shot-2015-11-18-at-1.10.12-pm.png',NULL,1,53,1),
	(60,'Image','2015-12-07 10:31:35','2015-12-07 10:31:35','WillWild-Granitepink2.jpg','WillWild Granitepink2','assets/Uploads/WillWild-Granitepink2.jpg',NULL,1,53,1),
	(61,'Image','2015-12-08 10:40:44','2015-12-08 10:40:44','Logo-Final3.png','Logo Final3','assets/Header/Logo-Final3.png',NULL,1,1,1),
	(62,'Image','2015-12-08 10:41:30','2015-12-08 10:41:30','logo.png','logo','assets/Header/logo.png',NULL,1,1,1),
	(63,'Folder','2015-12-08 10:41:42','2015-12-08 10:41:42','Footer','Footer','assets/Footer/',NULL,1,0,1),
	(64,'Image','2015-12-08 10:41:42','2015-12-08 10:41:42','logo-inverse.png','logo inverse','assets/Footer/logo-inverse.png',NULL,1,63,1),
	(65,'Image','2015-12-08 11:35:35','2015-12-08 11:35:35','images.jpeg','images','assets/Uploads/images.jpeg',NULL,1,53,1),
	(66,'Image','2015-12-08 11:39:12','2015-12-08 11:39:12','download2.jpeg','download2','assets/Uploads/download2.jpeg',NULL,1,53,1),
	(67,'Image','2015-12-08 14:21:24','2015-12-08 11:41:41','biddy6.jpg','biddy6','assets/Uploads/biddy6.jpg',NULL,1,53,1),
	(68,'Image','2015-12-08 11:48:43','2015-12-08 11:48:43','welly-night.jpg','welly night','assets/Hero/welly-night.jpg',NULL,1,37,1),
	(69,'Folder','2015-12-08 13:42:42','2015-12-08 13:42:42','Contact','Contact','assets/Contact/',NULL,1,0,1),
	(70,'Image','2015-12-08 13:42:42','2015-12-08 13:42:42','biddy6.jpg','biddy6','assets/Contact/biddy6.jpg',NULL,1,69,1),
	(71,'Image','2015-12-08 13:57:12','2015-12-08 13:57:12','welly-night.jpg','welly night','assets/Contact/welly-night.jpg',NULL,1,69,1),
	(72,'Image','2015-12-08 14:21:39','2015-12-08 14:21:39','welly-night.jpg','welly night','assets/Uploads/welly-night.jpg',NULL,1,53,1),
	(73,'Image','2015-12-08 14:22:04','2015-12-08 14:22:04','welly-light.png','welly light','assets/Uploads/welly-light.png',NULL,1,53,1),
	(74,'Image','2015-12-08 14:23:27','2015-12-08 14:23:27','welly-road.png','welly road','assets/Uploads/welly-road.png',NULL,1,53,1),
	(75,'Image','2015-12-08 14:24:57','2015-12-08 14:24:57','welly-world.jpg','welly world','assets/Uploads/welly-world.jpg',NULL,1,53,1),
	(76,'Image','2015-12-08 14:26:00','2015-12-08 14:26:00','welly-light2.png','welly light2','assets/Uploads/welly-light2.png',NULL,1,53,1),
	(77,'Folder','2015-12-08 14:35:25','2015-12-08 14:35:25','TextSlice','TextSlice','assets/TextSlice/',NULL,1,0,1),
	(78,'Image','2015-12-08 14:35:25','2015-12-08 14:35:25','Pattern-for-contact-slice.png','Pattern for contact slice','assets/TextSlice/Pattern-for-contact-slice.png',NULL,1,77,1),
	(79,'Image','2015-12-08 14:38:56','2015-12-08 14:38:56','old-door-1172550.jpg','old door 1172550','assets/TextSlice/old-door-1172550.jpg',NULL,1,77,1),
	(80,'Image','2015-12-08 14:39:50','2015-12-08 14:39:50','flatlay4.jpg','flatlay4','assets/Hero/flatlay4.jpg',NULL,1,37,1),
	(81,'Image','2015-12-08 14:46:37','2015-12-08 14:46:37','flat-lay.jpg','flat lay','assets/TextSlice/flat-lay.jpg',NULL,1,77,1),
	(82,'Image','2015-12-08 14:50:01','2015-12-08 14:50:01','background.jpg','background','assets/TextSlice/background.jpg',NULL,1,77,1),
	(83,'Image','2015-12-08 14:50:46','2015-12-08 14:50:46','background2.jpg','background2','assets/TextSlice/background2.jpg',NULL,1,77,1),
	(84,'Image','2015-12-08 14:54:40','2015-12-08 14:54:40','background3.jpg','background3','assets/TextSlice/background3.jpg',NULL,1,77,1),
	(85,'Image','2015-12-08 14:55:23','2015-12-08 14:55:23','background4.jpg','background4','assets/TextSlice/background4.jpg',NULL,1,77,1),
	(86,'Image','2015-12-08 14:56:06','2015-12-08 14:56:06','background5.jpg','background5','assets/TextSlice/background5.jpg',NULL,1,77,1),
	(87,'Image','2015-12-08 15:00:43','2015-12-08 15:00:43','slice.jpg','slice','assets/TextSlice/slice.jpg',NULL,1,77,1),
	(88,'Image','2015-12-09 10:10:50','2015-12-09 10:10:50','Screen-Shot-2015-12-09-at-10.10.38-am.png','Screen Shot 2015 12 09 at 10.10.38 am','assets/Contact/Screen-Shot-2015-12-09-at-10.10.38-am.png',NULL,1,69,1),
	(89,'Image','2015-12-09 15:23:15','2015-12-09 15:23:15','welly-night2.jpg','welly night2','assets/Contact/welly-night2.jpg',NULL,1,69,1);

/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table GalleryAlbum
# ------------------------------------------------------------

DROP TABLE IF EXISTS `GalleryAlbum`;

CREATE TABLE `GalleryAlbum` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `GalleryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GalleryID` (`GalleryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `GalleryAlbum` WRITE;
/*!40000 ALTER TABLE `GalleryAlbum` DISABLE KEYS */;

INSERT INTO `GalleryAlbum` (`ID`, `Title`, `Description`, `GalleryID`)
VALUES
	(8,'Street Photography','My personal street photography taken in America in 2012. ',0),
	(9,'Line Work','Graphic line work for jdjcdjdc',0),
	(10,'Product Design','Product design for jdsjshicdhuidshi',0),
	(11,'Mor and Guy','Branding design for mor and guy ',0),
	(15,'City Photos','Photos taken in the city',0),
	(16,'Poster Design','huedhdchiei cicdids  dsidhds isiciv sdichidhds oidhdvhdv idhidsh sdivhsdhi idshih',0),
	(17,'Branding of Fleur','ajsguc ashaci dsichd di d ciashc saicjc sicjioch s dohaihs ishcd asidhc is c asociowhc dihchwic  sih',0),
	(18,'Logo Project','uishc sichc asic si siscicpa a[ap[w0fuc claisjx[s wosjsiwid cviefheihoso dudow wocjciapa dsidhw do w',0),
	(19,'Tamarindo Branding','cusuisw wudgc wucgsuib sai8c wchswud q8chsiw siwic oqos codq doischw wicoiw',0);

/*!40000 ALTER TABLE `GalleryAlbum` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table GalleryAlbum_GalleryTags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `GalleryAlbum_GalleryTags`;

CREATE TABLE `GalleryAlbum_GalleryTags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GalleryAlbumID` int(11) NOT NULL DEFAULT '0',
  `GalleryTagID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GalleryAlbumID` (`GalleryAlbumID`),
  KEY `GalleryTagID` (`GalleryTagID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `GalleryAlbum_GalleryTags` WRITE;
/*!40000 ALTER TABLE `GalleryAlbum_GalleryTags` DISABLE KEYS */;

INSERT INTO `GalleryAlbum_GalleryTags` (`ID`, `GalleryAlbumID`, `GalleryTagID`)
VALUES
	(1,8,1),
	(2,15,1),
	(3,9,2),
	(4,16,2),
	(5,17,2),
	(7,11,2),
	(8,18,3),
	(9,19,3),
	(10,10,4),
	(11,11,1);

/*!40000 ALTER TABLE `GalleryAlbum_GalleryTags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table GalleryAlbum_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `GalleryAlbum_Live`;

CREATE TABLE `GalleryAlbum_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `GalleryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GalleryID` (`GalleryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `GalleryAlbum_Live` WRITE;
/*!40000 ALTER TABLE `GalleryAlbum_Live` DISABLE KEYS */;

INSERT INTO `GalleryAlbum_Live` (`ID`, `Title`, `Description`, `GalleryID`)
VALUES
	(8,'Street Photography','My personal street photography taken in America in 2012. ',0),
	(9,'Line Work','Graphic line work for jdjcdjdc',0),
	(10,'Product Design','Product design for jdsjshicdhuidshi',0),
	(11,'Mor and Guy','Branding design for mor and guy ',0),
	(15,'City Photos','Photos taken in the city',0),
	(16,'Poster Design','huedhdchiei cicdids  dsidhds isiciv sdichidhds oidhdvhdv idhidsh sdivhsdhi idshih',0),
	(17,'Branding of Fleur','ajsguc ashaci dsichd di d ciashc saicjc sicjioch s dohaihs ishcd asidhc is c asociowhc dihchwic  sih',0),
	(18,'Logo Project','uishc sichc asic si siscicpa a[ap[w0fuc claisjx[s wosjsiwid cviefheihoso dudow wocjciapa dsidhw do w',0),
	(19,'Tamarindo Branding','cusuisw wudgc wucgsuib sai8c wchswud q8chsiw siwic oqos codq doischw wicoiw',0);

/*!40000 ALTER TABLE `GalleryAlbum_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table GalleryAlbum_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `GalleryAlbum_versions`;

CREATE TABLE `GalleryAlbum_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `GalleryID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `GalleryID` (`GalleryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `GalleryAlbum_versions` WRITE;
/*!40000 ALTER TABLE `GalleryAlbum_versions` DISABLE KEYS */;

INSERT INTO `GalleryAlbum_versions` (`ID`, `RecordID`, `Version`, `Title`, `Description`, `GalleryID`)
VALUES
	(1,8,1,'New Gallery Album',NULL,0),
	(2,8,2,'Photography',NULL,0),
	(3,9,1,'New Gallery Album',NULL,0),
	(4,9,2,'Graphic Design',NULL,0),
	(5,10,1,'New Gallery Album',NULL,0),
	(6,10,2,'Product Design',NULL,0),
	(7,11,1,'New Gallery Album',NULL,0),
	(8,11,2,'Illustration',NULL,0),
	(9,8,3,'Photography',NULL,0),
	(10,9,3,'Graphic Design',NULL,0),
	(11,8,4,'Photography',NULL,0),
	(12,10,3,'Product Design',NULL,0),
	(13,11,3,'Illustration',NULL,0),
	(14,8,5,'Child',NULL,0),
	(15,8,6,'Child',NULL,0),
	(16,15,1,'New Gallery Album',NULL,0),
	(17,15,2,'City Photos',NULL,0),
	(18,9,4,'Line Work',NULL,0),
	(19,16,1,'New Gallery Album',NULL,0),
	(20,16,2,'Poster Design',NULL,0),
	(21,17,1,'New Gallery Album',NULL,0),
	(22,17,2,'Branding of Fleur',NULL,0),
	(23,11,4,'Illustration',NULL,0),
	(24,11,5,'Illustration',NULL,0),
	(25,8,7,'Street Photography',NULL,0),
	(26,11,6,'Illustration',NULL,0),
	(27,11,7,'Illustration',NULL,0),
	(28,11,8,'Mor and Guy',NULL,0),
	(29,15,3,'City Photos',NULL,0),
	(30,18,1,'New Gallery Album',NULL,0),
	(31,18,2,'LOGO PROJECT',NULL,0),
	(32,18,3,'Logo Project',NULL,0),
	(33,19,1,'New Gallery Album',NULL,0),
	(34,19,2,'Tamarindo Branding',NULL,0),
	(35,19,3,'Tamarindo Branding',NULL,0),
	(36,10,4,'Product Design',NULL,0),
	(37,8,8,'Street Photography','My personal street photography taken in America in 2012. ',0),
	(38,9,5,'Line Work','Graphic line work for jdjcdjdc',0),
	(39,10,5,'Product Design','Product design for jdsjshicdhuidshi',0),
	(40,11,9,'Mor and Guy','Branding design for mor and guy ',0),
	(41,15,4,'City Photos','Photos taken in the city',0),
	(42,16,3,'Poster Design','huedhdchiei cicdids  dsidhds isiciv sdichidhds oidhdvhdv idhidsh sdivhsdhi idshih',0),
	(43,17,3,'Branding of Fleur','ajsguc ashaci dsichd di d ciashc saicjc sicjioch s dohaihs ishcd asidhc is c asociowhc dihchwic  sih',0),
	(44,18,4,'Logo Project','uishc sichc asic si siscicpa a[ap[w0fuc claisjx[s wosjsiwid cviefheihoso dudow wocjciapa dsidhw do w',0),
	(45,19,4,'Tamarindo Branding','cusuisw wudgc wucgsuib sai8c wchswud q8chsiw siwic oqos codq doischw wicoiw',0),
	(46,9,6,'Line Work','Graphic line work for jdjcdjdc',0),
	(47,9,7,'Line Work','Graphic line work for jdjcdjdc',0),
	(48,9,8,'Line Work','Graphic line work for jdjcdjdc',0);

/*!40000 ALTER TABLE `GalleryAlbum_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table GalleryItem
# ------------------------------------------------------------

DROP TABLE IF EXISTS `GalleryItem`;

CREATE TABLE `GalleryItem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('GalleryItem') DEFAULT 'GalleryItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SortID` int(11) NOT NULL DEFAULT '0',
  `GalleryImageID` int(11) NOT NULL DEFAULT '0',
  `GalleryAlbumID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GalleryImageID` (`GalleryImageID`),
  KEY `GalleryAlbumID` (`GalleryAlbumID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `GalleryItem` WRITE;
/*!40000 ALTER TABLE `GalleryItem` DISABLE KEYS */;

INSERT INTO `GalleryItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `SortID`, `GalleryImageID`, `GalleryAlbumID`)
VALUES
	(1,'GalleryItem','2015-11-30 11:07:18','2015-11-27 10:00:23',3,4,0),
	(3,'GalleryItem','2015-11-30 11:54:52','2015-11-27 10:18:46',7,6,8),
	(4,'GalleryItem','2015-11-30 11:07:29','2015-11-27 10:19:03',4,0,0),
	(5,'GalleryItem','2015-11-30 11:07:16','2015-11-27 10:19:24',2,8,0),
	(6,'GalleryItem','2015-11-30 11:07:13','2015-11-27 10:21:35',1,9,0),
	(7,'GalleryItem','2015-11-30 11:18:02','2015-11-27 10:41:26',3,10,0),
	(8,'GalleryItem','2015-11-30 11:18:01','2015-11-27 10:41:41',2,11,0),
	(9,'GalleryItem','2015-11-30 11:22:37','2015-11-27 10:42:31',5,12,9),
	(10,'GalleryItem','2015-11-30 14:02:21','2015-11-27 10:48:26',4,13,10),
	(11,'GalleryItem','2015-11-30 13:59:45','2015-11-27 10:48:42',2,0,0),
	(12,'GalleryItem','2015-11-30 11:11:19','2015-11-30 11:09:59',3,16,15),
	(13,'GalleryItem','2015-11-30 11:11:19','2015-11-30 11:10:54',2,17,15),
	(14,'GalleryItem','2015-11-30 11:11:19','2015-11-30 11:11:16',1,18,15),
	(15,'GalleryItem','2015-11-30 11:22:46','2015-11-30 11:21:48',4,19,0),
	(16,'GalleryItem','2015-11-30 11:22:47','2015-11-30 11:22:00',3,20,0),
	(17,'GalleryItem','2015-11-30 11:22:37','2015-11-30 11:22:14',2,21,9),
	(18,'GalleryItem','2015-11-30 11:22:37','2015-11-30 11:22:31',1,22,9),
	(19,'GalleryItem','2015-11-30 11:24:48','2015-11-30 11:24:22',3,23,16),
	(20,'GalleryItem','2015-11-30 11:24:48','2015-11-30 11:24:33',2,24,16),
	(21,'GalleryItem','2015-11-30 11:24:48','2015-11-30 11:24:46',1,25,16),
	(22,'GalleryItem','2015-11-30 11:48:41','2015-11-30 11:39:45',1,26,17),
	(23,'GalleryItem','2015-11-30 11:48:41','2015-11-30 11:40:25',3,27,17),
	(24,'GalleryItem','2015-11-30 11:48:41','2015-11-30 11:46:54',5,28,17),
	(25,'GalleryItem','2015-11-30 11:48:41','2015-11-30 11:47:08',4,29,17),
	(26,'GalleryItem','2015-11-30 11:48:41','2015-11-30 11:48:15',2,30,17),
	(27,'GalleryItem','2015-11-30 11:54:52','2015-11-30 11:54:38',1,31,8),
	(28,'GalleryItem','2015-11-30 13:16:08','2015-11-30 12:04:22',2,33,11),
	(29,'GalleryItem','2015-11-30 13:16:08','2015-11-30 12:04:40',3,34,11),
	(30,'GalleryItem','2015-11-30 13:16:08','2015-11-30 12:04:56',1,35,11),
	(31,'GalleryItem','2015-11-30 13:18:20','2015-11-30 13:17:35',4,39,18),
	(32,'GalleryItem','2015-11-30 13:18:20','2015-11-30 13:17:49',3,40,18),
	(33,'GalleryItem','2015-11-30 13:18:20','2015-11-30 13:18:01',2,41,18),
	(34,'GalleryItem','2015-11-30 13:18:20','2015-11-30 13:18:14',1,42,18),
	(35,'GalleryItem','2015-11-30 13:45:08','2015-11-30 13:43:55',5,45,19),
	(36,'GalleryItem','2015-11-30 13:45:08','2015-11-30 13:44:12',4,46,19),
	(37,'GalleryItem','2015-11-30 13:45:08','2015-11-30 13:44:30',3,47,19),
	(38,'GalleryItem','2015-11-30 13:45:08','2015-11-30 13:44:50',2,48,19),
	(39,'GalleryItem','2015-11-30 13:45:08','2015-11-30 13:45:05',1,49,19),
	(40,'GalleryItem','2015-11-30 14:02:21','2015-11-30 14:01:44',3,50,10),
	(41,'GalleryItem','2015-11-30 14:02:21','2015-11-30 14:02:02',2,51,10),
	(42,'GalleryItem','2015-11-30 14:02:21','2015-11-30 14:02:18',1,52,10);

/*!40000 ALTER TABLE `GalleryItem` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table GalleryTag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `GalleryTag`;

CREATE TABLE `GalleryTag` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('GalleryTag') DEFAULT 'GalleryTag',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `GalleryTag` WRITE;
/*!40000 ALTER TABLE `GalleryTag` DISABLE KEYS */;

INSERT INTO `GalleryTag` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`)
VALUES
	(1,'GalleryTag','2015-11-30 11:07:00','2015-11-30 11:07:00','PHOTOGRAPHY'),
	(2,'GalleryTag','2015-11-30 11:12:35','2015-11-30 11:12:35','GRAPHIC DESIGN'),
	(3,'GalleryTag','2015-11-30 13:18:59','2015-11-30 13:18:59','LOGO DESIGN'),
	(4,'GalleryTag','2015-11-30 14:03:17','2015-11-30 14:03:17','PRODUCT DESIGN');

/*!40000 ALTER TABLE `GalleryTag` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Group`;

CREATE TABLE `Group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;

INSERT INTO `Group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`)
VALUES
	(1,'Group','2015-11-27 09:10:01','2015-11-27 09:10:01','Content Authors',NULL,'content-authors',0,1,NULL,0),
	(2,'Group','2015-11-27 09:10:01','2015-11-27 09:10:01','Administrators',NULL,'administrators',0,0,NULL,0),
	(3,'Group','2015-11-27 10:23:51','2015-11-27 10:23:51','Blog users',NULL,'blog-users',0,0,NULL,0);

/*!40000 ALTER TABLE `Group` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Group_Members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Group_Members`;

CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`)
VALUES
	(1,2,1);

/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Group_Roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Group_Roles`;

CREATE TABLE `Group_Roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table HomePage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `HomePage`;

CREATE TABLE `HomePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeaderImageID` int(11) NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `FooterLogoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeaderImageID` (`HeaderImageID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `FooterLogoID` (`FooterLogoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `HomePage` WRITE;
/*!40000 ALTER TABLE `HomePage` DISABLE KEYS */;

INSERT INTO `HomePage` (`ID`, `HeaderImageID`, `HeroImageID`, `FooterLogoID`)
VALUES
	(6,36,80,0);

/*!40000 ALTER TABLE `HomePage` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table HomePage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `HomePage_Live`;

CREATE TABLE `HomePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeaderImageID` int(11) NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `FooterLogoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeaderImageID` (`HeaderImageID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `FooterLogoID` (`FooterLogoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `HomePage_Live` WRITE;
/*!40000 ALTER TABLE `HomePage_Live` DISABLE KEYS */;

INSERT INTO `HomePage_Live` (`ID`, `HeaderImageID`, `HeroImageID`, `FooterLogoID`)
VALUES
	(6,36,80,0);

/*!40000 ALTER TABLE `HomePage_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table HomePage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `HomePage_versions`;

CREATE TABLE `HomePage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeaderImageID` int(11) NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `FooterLogoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeaderImageID` (`HeaderImageID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `FooterLogoID` (`FooterLogoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `HomePage_versions` WRITE;
/*!40000 ALTER TABLE `HomePage_versions` DISABLE KEYS */;

INSERT INTO `HomePage_versions` (`ID`, `RecordID`, `Version`, `HeaderImageID`, `HeroImageID`, `FooterLogoID`)
VALUES
	(1,6,1,0,0,0),
	(2,6,2,0,0,0),
	(3,6,3,0,0,0),
	(4,6,4,2,0,0),
	(5,6,5,2,0,0),
	(6,6,6,2,0,0),
	(7,6,7,2,0,0),
	(8,6,8,2,0,0),
	(9,6,9,2,0,0),
	(10,6,10,2,0,0),
	(11,6,11,2,0,0),
	(12,6,12,2,0,0),
	(13,6,13,2,15,0),
	(14,6,14,2,15,0),
	(15,6,15,36,15,0),
	(16,6,16,36,38,0),
	(17,6,17,36,43,0),
	(18,6,18,36,44,0),
	(19,6,19,36,44,0),
	(20,6,20,36,44,0),
	(21,6,21,36,0,0),
	(22,6,22,36,68,0),
	(23,6,23,36,80,0);

/*!40000 ALTER TABLE `HomePage_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table LoginAttempt
# ------------------------------------------------------------

DROP TABLE IF EXISTS `LoginAttempt`;

CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Member`;

CREATE TABLE `Member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL,
  `URLSegment` varchar(50) DEFAULT NULL,
  `BlogProfileSummary` mediumtext,
  `BlogProfileImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`),
  KEY `BlogProfileImageID` (`BlogProfileImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;

INSERT INTO `Member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`, `URLSegment`, `BlogProfileSummary`, `BlogProfileImageID`)
VALUES
	(1,'Member','2015-12-09 12:02:33','2015-11-27 09:10:01','Default Admin',NULL,'admin','e00fe57a4b1ca540336ae8168e0399150713a2bd','2015-12-12 12:02:33',NULL,NULL,2,'2015-12-09 15:45:04',NULL,NULL,NULL,NULL,NULL,NULL,'en_US',0,NULL,NULL,'default-admin',NULL,0);

/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table MemberPassword
# ------------------------------------------------------------

DROP TABLE IF EXISTS `MemberPassword`;

CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Permission`;

CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;

INSERT INTO `Permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`)
VALUES
	(1,'Permission','2015-11-27 09:10:01','2015-11-27 09:10:01','CMS_ACCESS_CMSMain',0,1,1),
	(2,'Permission','2015-11-27 09:10:01','2015-11-27 09:10:01','CMS_ACCESS_AssetAdmin',0,1,1),
	(3,'Permission','2015-11-27 09:10:01','2015-11-27 09:10:01','CMS_ACCESS_ReportAdmin',0,1,1),
	(4,'Permission','2015-11-27 09:10:01','2015-11-27 09:10:01','SITETREE_REORGANISE',0,1,1),
	(5,'Permission','2015-11-27 09:10:01','2015-11-27 09:10:01','ADMIN',0,1,2),
	(6,'Permission','2015-11-27 10:23:51','2015-11-27 10:23:51','CMS_ACCESS_CMSMain',0,1,3);

/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table PermissionRole
# ------------------------------------------------------------

DROP TABLE IF EXISTS `PermissionRole`;

CREATE TABLE `PermissionRole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table PermissionRoleCode
# ------------------------------------------------------------

DROP TABLE IF EXISTS `PermissionRoleCode`;

CREATE TABLE `PermissionRoleCode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table RedirectorPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RedirectorPage`;

CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table RedirectorPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RedirectorPage_Live`;

CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table RedirectorPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `RedirectorPage_versions`;

CREATE TABLE `RedirectorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SiteConfig
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteConfig`;

CREATE TABLE `SiteConfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Facebook` varchar(255) DEFAULT NULL,
  `Twitter` varchar(255) DEFAULT NULL,
  `Linkedin` varchar(255) DEFAULT NULL,
  `Instagram` varchar(255) DEFAULT NULL,
  `HeaderImageID` int(11) NOT NULL DEFAULT '0',
  `FooterLogoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `HeaderImageID` (`HeaderImageID`),
  KEY `FooterLogoID` (`FooterLogoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `SiteConfig` WRITE;
/*!40000 ALTER TABLE `SiteConfig` DISABLE KEYS */;

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `Address`, `Phone`, `Email`, `Facebook`, `Twitter`, `Linkedin`, `Instagram`, `HeaderImageID`, `FooterLogoID`)
VALUES
	(1,'SiteConfig','2015-12-08 10:41:44','2015-11-27 09:10:01','Your Site Name','your tagline here',NULL,'Anyone','LoggedInUsers','LoggedInUsers','157 Upland Road, Wellington, New Zealand, Earth, The Galaxy, ','0223252481','jess@silverstripe.com','https://www.facebook.com/jessica.noone','www.facebook.com/jessica.noone','www.facebook.com/jessica.noone','www.facebook.com/jessica.noone',62,64);

/*!40000 ALTER TABLE `SiteConfig` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteConfig_CreateTopLevelGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteConfig_CreateTopLevelGroups`;

CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SiteConfig_EditorGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteConfig_EditorGroups`;

CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SiteConfig_ViewerGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteConfig_ViewerGroups`;

CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SiteTree
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree`;

CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','Gallery','GalleryAlbum','HomePage','TextSlice','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm','ContactPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;

INSERT INTO `SiteTree` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`)
VALUES
	(4,'ErrorPage','2015-11-27 09:10:01','2015-11-27 09:10:01','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,7,0,0,NULL,'Inherit','Inherit',1,0),
	(5,'ErrorPage','2015-11-27 09:10:02','2015-11-27 09:10:02','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>',NULL,NULL,0,0,8,0,0,NULL,'Inherit','Inherit',1,0),
	(6,'HomePage','2015-12-08 14:39:51','2015-11-27 09:27:29','home','HOME',NULL,'<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',23,0),
	(7,'Gallery','2015-12-08 14:51:41','2015-11-27 09:30:04','new-gallery','New Gallery','WORK',NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',8,0),
	(8,'GalleryAlbum','2015-12-01 11:12:58','2015-11-27 09:30:45','photography','Street Photography',NULL,'<p style=\"text-align: center;\">This is an album of my latest photography. You could add as many images you like to this folder and the viewer can scroll through all of your work. </p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p style=\"text-align: center;\"> </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8,7),
	(9,'GalleryAlbum','2015-12-07 10:32:15','2015-11-27 09:50:45','graphic-design','Line Work',NULL,'<p style=\"text-align: center;\">This is an album for your graphic design.</p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p style=\"text-align: center;\"> </p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper, leo at convallis cursus, mauris lectus congue est, ut condimentum felis urna quis magna. Cras consectetur enim lorem, vitae efficitur elit mollis sit amet. Quisque egestas pulvinar neque, molestie posuere risus iaculis in. In massa velit, elementum eu velit eget, consectetur rutrum ipsum. Vestibulum lectus est, pharetra eget nunc nec, euismod hendrerit augue. Integer vitae risus nec neque volutpat sagittis et et elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec ligula pulvinar, tempor sem vel, cursus lectus. Duis euismod luctus arcu, sagittis malesuada risus tincidunt vitae. Vivamus malesuada posuere lacus sit amet pretium. Cras pharetra mauris id leo consectetur suscipit. Donec diam purus, semper eget vehicula quis, facilisis sit amet mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<p>Maecenas eget dolor venenatis est suscipit vestibulum. Sed sem est, efficitur eget malesuada quis, sollicitudin a sem. Integer feugiat quam a lectus vestibulum iaculis. Proin vel felis a turpis pulvinar vestibulum sit amet in orci. Nulla vehicula dui lacus. Donec laoreet nibh a urna volutpat, eu accumsan neque semper. Nam eu quam quis neque sagittis luctus sed ut neque. Nunc magna erat, sollicitudin a porttitor id, posuere sit amet nunc. Cras tincidunt bibendum luctus. Suspendisse mattis facilisis vestibulum. Curabitur tincidunt vitae erat a eleifend. Quisque lectus velit, interdum vitae orci id, sodales cursus lectus. Sed quis erat ante.</p>\n<p> </p>\n<p> </p>\n<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzNzVd-WillWild-Granitepink2.jpg\" alt=\"WillWild Granitepink2\" width=\"600\" height=\"375\">C</p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p>ras molestie finibus lacus, eu viverra ex sollicitudin vel. Donec lorem nisl, commodo eget tortor sed, tempus malesuada tellus. Sed elit lorem, volutpat eget quam blandit, auctor viverra nibh. Phasellus ac orci aliquam, viverra nibh sit amet, imperdiet urna. Maecenas feugiat purus felis, sed sagittis nunc rutrum ac. Integer molestie, orci eget laoreet faucibus, enim ante porttitor nibh, id ullamcorper ipsum lacus eu diam. Donec ultrices vulputate mauris id tincidunt. Suspendisse diam arcu, imperdiet id laoreet et, iaculis eget nisi. Maecenas finibus dolor vulputate pretium dapibus. Pellentesque at aliquam nisl, vitae interdum libero. Aenean auctor, nisi quis consequat vehicula, metus libero ultrices ligula, vel pulvinar velit odio et ligula. Cras ut dui et turpis dapibus interdum nec sit amet orci. Pellentesque bibendum feugiat ultrices. Vestibulum at augue ac elit ullamcorper eleifend. Praesent sed enim quis odio efficitur porttitor. Praesent rutrum non est vitae luctus.</p>\n<p>Etiam non vehicula tortor. Integer elementum consequat vulputate. Aliquam erat volutpat. Mauris lacinia turpis ut ornare sagittis. Praesent sollicitudin odio id nibh ornare vestibulum. Curabitur pharetra suscipit metus ut iaculis. Curabitur placerat mi ut purus ullamcorper, in gravida augue consectetur. Curabitur purus diam, viverra id ante tincidunt, lacinia tincidunt lectus. Aenean dictum metus dui, vel rutrum lorem pretium a. Ut non aliquam augue. Phasellus a leo ut erat ultricies scelerisque.</p>\n<p>Duis quis urna vitae tortor euismod posuere. Mauris molestie, turpis ultricies porttitor rhoncus, justo massa auctor arcu, ac auctor enim lorem a arcu. Nulla bibendum augue sit amet vestibulum egestas. Praesent non vehicula enim. Vivamus lacus purus, mollis sit amet venenatis eget, aliquam vel neque. Nunc a facilisis lectus. Ut blandit molestie libero. Curabitur at enim quis lacus pulvinar blandit. Etiam auctor lorem in posuere pharetra. Nulla sapien sem, sagittis ultricies eros et, sollicitudin dignissim ipsum.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8,7),
	(10,'GalleryAlbum','2015-12-01 11:13:27','2015-11-27 09:52:09','product-design','Product Design',NULL,'<p style=\"text-align: center;\">Example Post: This is an album of product design</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',5,7),
	(11,'GalleryAlbum','2015-12-01 11:14:10','2015-11-27 09:52:33','illustration','Mor and Guy',NULL,'<p>Example post: Invitation design</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',9,7),
	(12,'Blog','2015-12-08 14:42:31','2015-11-27 10:23:51','blog','Blog','BLOG',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',4,0),
	(13,'ContactPage','2015-12-09 15:23:18','2015-11-27 10:27:31','contact','CONTACT',NULL,'<p>$UserdefinedForm</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',18,0),
	(14,'Page','2015-11-30 11:05:22','2015-11-30 11:04:14','about','ABOUT',NULL,'<p>This will be the about page, it will also display information and an image.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',4,0),
	(15,'GalleryAlbum','2015-12-01 11:14:24','2015-11-30 11:09:05','city-photos','City Photos',NULL,'<p>Example Post: An album of photos of the city</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',4,7),
	(16,'GalleryAlbum','2015-12-01 11:14:40','2015-11-30 11:23:37','poster-design','Poster Design',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',3,7),
	(17,'GalleryAlbum','2015-12-01 11:14:59','2015-11-30 11:35:32','branding-of-fleur','Branding of Fleur',NULL,'<p>Example Post: A project for the branding of a company called Fleur.</p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',3,7),
	(18,'GalleryAlbum','2015-12-01 11:15:20','2015-11-30 13:17:12','logo-project','Logo Project',NULL,'<p>Example Post: A series of logos</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',4,7),
	(19,'GalleryAlbum','2015-12-01 11:15:34','2015-11-30 13:39:39','tamarindo-branding','Tamarindo Branding',NULL,'<p>Example Post: A branding study</p>',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',4,7),
	(20,'Page','2015-12-02 15:50:42','2015-12-02 15:50:23','filler-page','Filler Page',NULL,'<p>I\'m a filler page!</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',2,14),
	(21,'Page','2015-12-02 15:51:07','2015-12-02 15:50:54','filler-page-2','Filler Page 2',NULL,'<p>I\'m a filler page!</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',2,14),
	(22,'BlogPost','2015-12-08 14:28:06','2015-12-02 15:51:18','why-i-love-cats','Example Post',NULL,'<p>Aenean pellentesque enim et eros luctus iaculis. Praesent porta varius massa non iaculis. Suspendisse pulvinar id massa vel condimentum. Suspendisse urna lacus, auctor eu velit sed, rutrum dictum sapien. Integer massa augue, malesuada sit amet tortor eget, dapibus tristique eros. Phasellus eget bibendum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam tincidunt velit accumsan leo vulputate, id varius dolor placerat. Proin quis tellus mi. Integer et augue at orci luctus ullamcorper.</p>\n<p> </p>\n<h2><strong>Heading</strong></h2>\n<p>Aenean feugiat, lorem sed luctus semper, augue ligula ullamcorper nunc, vel elementum ipsum felis in metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet consectetur neque, at mattis velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam condimentum turpis a efficitur auctor. Proin hendrerit imperdiet mi eget posuere. Fusce rhoncus, dui et gravida pulvinar, ligula quam scelerisque ante, sed fermentum turpis sem ut felis. Ut fermentum leo vel dolor convallis semper. Phasellus ornare scelerisque hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut lobortis nec felis nec sodales. Sed at nisl justo. Vivamus mauris tellus, gravida vitae dignissim eget, rutrum eget purus. Duis feugiat, velit vitae dictum lacinia, ante erat posuere justo, a iaculis justo nisi sed odio.</p>',NULL,NULL,0,1,6,0,0,NULL,'Inherit','Inherit',7,12),
	(23,'BlogPost','2015-12-08 14:45:29','2015-12-02 15:52:05','why-i-love-dogs','Example Post Two',NULL,'<h1><strong>Heading</strong></h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<h1><strong>Heading</strong></h1>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<h4>Heading</h4>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',8,12),
	(24,'BlogPost','2015-12-08 14:33:45','2015-12-02 15:52:58','guinea-pigs-are-the-best','Another Lights Post',NULL,NULL,NULL,NULL,0,1,7,0,0,NULL,'Inherit','Inherit',8,12),
	(26,'BlogPost','2015-12-08 14:25:17','2015-12-02 17:05:47','extra-cat-post','Sunny Day',NULL,'<p> </p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque neque neque. Sed ac bibendum neque. Morbi vitae accumsan leo, sed feugiat ante. Nullam risus magna, ultricies quis faucibus in, aliquam a odio. Sed nunc orci, cursus sed hendrerit vitae, vulputate at magna. Sed tempor posuere magna, ut fringilla massa lacinia nec. Etiam tellus tortor, efficitur vitae massa sed, laoreet euismod velit. Etiam at arcu vulputate, lobortis justo eget, lobortis massa. Nulla eget pharetra turpis. Aenean at turpis et ligula aliquam fringilla. Integer efficitur gravida lacus, ac posuere massa dapibus at. Vivamus non facilisis nisi, vel eleifend dolor. Vestibulum volutpat dolor lectus, a luctus dui interdum ullamcorper. Praesent nec efficitur sapien.</p>\n<p> </p>\n<h4 style=\"text-align: center;\"><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzODld-Screen-Shot-2015-11-18-at-1.10.12-pm.png\" alt=\"Screen Shot 2015 11 18 at 1.10.12 pm\" width=\"600\" height=\"389\"><strong>Some of James work</strong></h4>\n<p>Cras ultrices facilisis turpis non molestie. Sed vel posuere dolor, a euismod metus. Integer vitae est nunc. Fusce augue sem, fringilla et nulla in, interdum pellentesque lorem. Maecenas euismod et orci sit amet placerat. Curabitur at arcu volutpat, imperdiet ante quis, fringilla lorem. Nullam sagittis, libero sit amet rhoncus sollicitudin, ante arcu semper est, vel fringilla tellus eros et nisi. Proin sollicitudin lacinia neque, non congue elit ornare eget. Vestibulum convallis volutpat tincidunt. Etiam ornare mollis rhoncus. Sed blandit ac sem at mattis. Duis congue nec nibh in congue. Vivamus nunc lorem, viverra sit amet enim vitae, lobortis fringilla ex. Nulla vehicula dapibus urna et efficitur.</p>\n<p> </p>',NULL,NULL,0,1,2,0,0,NULL,'Inherit','Inherit',12,12),
	(27,'BlogPost','2015-12-08 14:23:43','2015-12-08 11:34:41','dog-post-2','Traffic',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,3,0,0,NULL,'Inherit','Inherit',5,12),
	(28,'BlogPost','2015-12-08 14:22:50','2015-12-08 11:37:43','armidillo','Wellington Lights',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',5,12),
	(29,'BlogPost','2015-12-09 15:30:43','2015-12-08 11:40:50','hedghog-post','Wellington Night',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p> </p>',NULL,NULL,0,1,5,0,0,NULL,'Inherit','Inherit',7,12),
	(31,'TextSlice','2015-12-08 14:36:42','2015-12-08 12:47:51','contact-slice','Contact Me',NULL,'<p style=\"text-align: center;\">I\'m available for ....... You can email me on ...... or call me on ....... My studio is located in ...... and i\'d love to hear from you</p>',NULL,NULL,0,1,9,0,0,NULL,'Inherit','Inherit',4,0),
	(32,'TextSlice','2015-12-08 15:02:13','2015-12-08 14:37:51','my-awards','My Awards',NULL,'<p>Here are some awards I have</p>\n<p>Aenean pellentesque enim et eros luctus iaculis. Praesent porta varius massa non iaculis. Suspendisse pulvinar id massa vel condimentum. Suspendisse urna lacus, auctor eu velit sed, rutrum dictum sapien. Integer massa augue, malesuada sit amet tortor eget, dapibus tristique eros. Phasellus eget bibendum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam tincidunt velit accumsan leo vulputate, id varius dolor placerat. Proin quis tellus mi. Integer et augue at orci luctus ullamcorper.</p>\n<p> </p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',8,0);

/*!40000 ALTER TABLE `SiteTree` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteTree_EditorGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_EditorGroups`;

CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SiteTree_ImageTracking
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_ImageTracking`;

CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `SiteTree_ImageTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` DISABLE KEYS */;

INSERT INTO `SiteTree_ImageTracking` (`ID`, `SiteTreeID`, `FileID`, `FieldName`)
VALUES
	(57,9,60,'Content'),
	(82,26,59,'Content');

/*!40000 ALTER TABLE `SiteTree_ImageTracking` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteTree_LinkTracking
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_LinkTracking`;

CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SiteTree_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_Live`;

CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','Gallery','GalleryAlbum','HomePage','TextSlice','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm','ContactPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`)
VALUES
	(4,'ErrorPage','2015-11-27 09:10:01','2015-11-27 09:10:01','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,7,0,0,NULL,'Inherit','Inherit',1,0),
	(5,'ErrorPage','2015-11-27 09:10:02','2015-11-27 09:10:02','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>',NULL,NULL,0,0,8,0,0,NULL,'Inherit','Inherit',1,0),
	(6,'HomePage','2015-12-08 14:39:52','2015-11-27 09:27:29','home','HOME',NULL,'<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',23,0),
	(7,'Gallery','2015-11-27 10:47:27','2015-11-27 09:30:04','new-gallery','New Gallery','WORK',NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',7,0),
	(8,'GalleryAlbum','2015-12-01 11:12:59','2015-11-27 09:30:45','photography','Street Photography',NULL,'<p style=\"text-align: center;\">This is an album of my latest photography. You could add as many images you like to this folder and the viewer can scroll through all of your work. </p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p style=\"text-align: center;\"> </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',8,7),
	(9,'GalleryAlbum','2015-12-07 10:32:15','2015-11-27 09:50:45','graphic-design','Line Work',NULL,'<p style=\"text-align: center;\">This is an album for your graphic design.</p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p style=\"text-align: center;\"> </p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper, leo at convallis cursus, mauris lectus congue est, ut condimentum felis urna quis magna. Cras consectetur enim lorem, vitae efficitur elit mollis sit amet. Quisque egestas pulvinar neque, molestie posuere risus iaculis in. In massa velit, elementum eu velit eget, consectetur rutrum ipsum. Vestibulum lectus est, pharetra eget nunc nec, euismod hendrerit augue. Integer vitae risus nec neque volutpat sagittis et et elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec ligula pulvinar, tempor sem vel, cursus lectus. Duis euismod luctus arcu, sagittis malesuada risus tincidunt vitae. Vivamus malesuada posuere lacus sit amet pretium. Cras pharetra mauris id leo consectetur suscipit. Donec diam purus, semper eget vehicula quis, facilisis sit amet mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<p>Maecenas eget dolor venenatis est suscipit vestibulum. Sed sem est, efficitur eget malesuada quis, sollicitudin a sem. Integer feugiat quam a lectus vestibulum iaculis. Proin vel felis a turpis pulvinar vestibulum sit amet in orci. Nulla vehicula dui lacus. Donec laoreet nibh a urna volutpat, eu accumsan neque semper. Nam eu quam quis neque sagittis luctus sed ut neque. Nunc magna erat, sollicitudin a porttitor id, posuere sit amet nunc. Cras tincidunt bibendum luctus. Suspendisse mattis facilisis vestibulum. Curabitur tincidunt vitae erat a eleifend. Quisque lectus velit, interdum vitae orci id, sodales cursus lectus. Sed quis erat ante.</p>\n<p> </p>\n<p> </p>\n<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzNzVd-WillWild-Granitepink2.jpg\" alt=\"WillWild Granitepink2\" width=\"600\" height=\"375\">C</p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p>ras molestie finibus lacus, eu viverra ex sollicitudin vel. Donec lorem nisl, commodo eget tortor sed, tempus malesuada tellus. Sed elit lorem, volutpat eget quam blandit, auctor viverra nibh. Phasellus ac orci aliquam, viverra nibh sit amet, imperdiet urna. Maecenas feugiat purus felis, sed sagittis nunc rutrum ac. Integer molestie, orci eget laoreet faucibus, enim ante porttitor nibh, id ullamcorper ipsum lacus eu diam. Donec ultrices vulputate mauris id tincidunt. Suspendisse diam arcu, imperdiet id laoreet et, iaculis eget nisi. Maecenas finibus dolor vulputate pretium dapibus. Pellentesque at aliquam nisl, vitae interdum libero. Aenean auctor, nisi quis consequat vehicula, metus libero ultrices ligula, vel pulvinar velit odio et ligula. Cras ut dui et turpis dapibus interdum nec sit amet orci. Pellentesque bibendum feugiat ultrices. Vestibulum at augue ac elit ullamcorper eleifend. Praesent sed enim quis odio efficitur porttitor. Praesent rutrum non est vitae luctus.</p>\n<p>Etiam non vehicula tortor. Integer elementum consequat vulputate. Aliquam erat volutpat. Mauris lacinia turpis ut ornare sagittis. Praesent sollicitudin odio id nibh ornare vestibulum. Curabitur pharetra suscipit metus ut iaculis. Curabitur placerat mi ut purus ullamcorper, in gravida augue consectetur. Curabitur purus diam, viverra id ante tincidunt, lacinia tincidunt lectus. Aenean dictum metus dui, vel rutrum lorem pretium a. Ut non aliquam augue. Phasellus a leo ut erat ultricies scelerisque.</p>\n<p>Duis quis urna vitae tortor euismod posuere. Mauris molestie, turpis ultricies porttitor rhoncus, justo massa auctor arcu, ac auctor enim lorem a arcu. Nulla bibendum augue sit amet vestibulum egestas. Praesent non vehicula enim. Vivamus lacus purus, mollis sit amet venenatis eget, aliquam vel neque. Nunc a facilisis lectus. Ut blandit molestie libero. Curabitur at enim quis lacus pulvinar blandit. Etiam auctor lorem in posuere pharetra. Nulla sapien sem, sagittis ultricies eros et, sollicitudin dignissim ipsum.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',8,7),
	(10,'GalleryAlbum','2015-12-01 11:13:27','2015-11-27 09:52:09','product-design','Product Design',NULL,'<p style=\"text-align: center;\">Example Post: This is an album of product design</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',5,7),
	(11,'GalleryAlbum','2015-12-01 11:14:10','2015-11-27 09:52:33','illustration','Mor and Guy',NULL,'<p>Example post: Invitation design</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',9,7),
	(12,'Blog','2015-12-08 14:42:31','2015-11-27 10:23:51','blog','Blog','BLOG',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',4,0),
	(13,'ContactPage','2015-12-09 15:23:18','2015-11-27 10:27:31','contact','CONTACT',NULL,'<p>$UserdefinedForm</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',18,0),
	(14,'Page','2015-11-30 11:05:22','2015-11-30 11:04:14','about','ABOUT',NULL,'<p>This will be the about page, it will also display information and an image.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',4,0),
	(15,'GalleryAlbum','2015-12-01 11:14:24','2015-11-30 11:09:05','city-photos','City Photos',NULL,'<p>Example Post: An album of photos of the city</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',4,7),
	(16,'GalleryAlbum','2015-12-01 11:14:40','2015-11-30 11:23:37','poster-design','Poster Design',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',3,7),
	(17,'GalleryAlbum','2015-12-01 11:14:59','2015-11-30 11:35:32','branding-of-fleur','Branding of Fleur',NULL,'<p>Example Post: A project for the branding of a company called Fleur.</p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',3,7),
	(18,'GalleryAlbum','2015-12-01 11:15:20','2015-11-30 13:17:12','logo-project','Logo Project',NULL,'<p>Example Post: A series of logos</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',4,7),
	(19,'GalleryAlbum','2015-12-01 11:15:34','2015-11-30 13:39:39','tamarindo-branding','Tamarindo Branding',NULL,'<p>Example Post: A branding study</p>',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',4,7),
	(20,'Page','2015-12-02 15:50:42','2015-12-02 15:50:23','filler-page','Filler Page',NULL,'<p>I\'m a filler page!</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',2,14),
	(21,'Page','2015-12-02 15:51:07','2015-12-02 15:50:54','filler-page-2','Filler Page 2',NULL,'<p>I\'m a filler page!</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',2,14),
	(22,'BlogPost','2015-12-08 14:28:06','2015-12-02 15:51:18','why-i-love-cats','Example Post',NULL,'<p>Aenean pellentesque enim et eros luctus iaculis. Praesent porta varius massa non iaculis. Suspendisse pulvinar id massa vel condimentum. Suspendisse urna lacus, auctor eu velit sed, rutrum dictum sapien. Integer massa augue, malesuada sit amet tortor eget, dapibus tristique eros. Phasellus eget bibendum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam tincidunt velit accumsan leo vulputate, id varius dolor placerat. Proin quis tellus mi. Integer et augue at orci luctus ullamcorper.</p>\n<p> </p>\n<h2><strong>Heading</strong></h2>\n<p>Aenean feugiat, lorem sed luctus semper, augue ligula ullamcorper nunc, vel elementum ipsum felis in metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet consectetur neque, at mattis velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam condimentum turpis a efficitur auctor. Proin hendrerit imperdiet mi eget posuere. Fusce rhoncus, dui et gravida pulvinar, ligula quam scelerisque ante, sed fermentum turpis sem ut felis. Ut fermentum leo vel dolor convallis semper. Phasellus ornare scelerisque hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut lobortis nec felis nec sodales. Sed at nisl justo. Vivamus mauris tellus, gravida vitae dignissim eget, rutrum eget purus. Duis feugiat, velit vitae dictum lacinia, ante erat posuere justo, a iaculis justo nisi sed odio.</p>',NULL,NULL,0,1,6,0,0,NULL,'Inherit','Inherit',7,12),
	(23,'BlogPost','2015-12-08 14:45:29','2015-12-02 15:52:05','why-i-love-dogs','Example Post Two',NULL,'<h1><strong>Heading</strong></h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<h1><strong>Heading</strong></h1>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<h4>Heading</h4>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',8,12),
	(24,'BlogPost','2015-12-08 14:33:45','2015-12-02 15:52:58','guinea-pigs-are-the-best','Another Lights Post',NULL,NULL,NULL,NULL,0,1,7,0,0,NULL,'Inherit','Inherit',8,12),
	(26,'BlogPost','2015-12-08 14:25:17','2015-12-02 17:05:47','extra-cat-post','Sunny Day',NULL,'<p> </p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque neque neque. Sed ac bibendum neque. Morbi vitae accumsan leo, sed feugiat ante. Nullam risus magna, ultricies quis faucibus in, aliquam a odio. Sed nunc orci, cursus sed hendrerit vitae, vulputate at magna. Sed tempor posuere magna, ut fringilla massa lacinia nec. Etiam tellus tortor, efficitur vitae massa sed, laoreet euismod velit. Etiam at arcu vulputate, lobortis justo eget, lobortis massa. Nulla eget pharetra turpis. Aenean at turpis et ligula aliquam fringilla. Integer efficitur gravida lacus, ac posuere massa dapibus at. Vivamus non facilisis nisi, vel eleifend dolor. Vestibulum volutpat dolor lectus, a luctus dui interdum ullamcorper. Praesent nec efficitur sapien.</p>\n<p> </p>\n<h4 style=\"text-align: center;\"><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzODld-Screen-Shot-2015-11-18-at-1.10.12-pm.png\" alt=\"Screen Shot 2015 11 18 at 1.10.12 pm\" width=\"600\" height=\"389\"><strong>Some of James work</strong></h4>\n<p>Cras ultrices facilisis turpis non molestie. Sed vel posuere dolor, a euismod metus. Integer vitae est nunc. Fusce augue sem, fringilla et nulla in, interdum pellentesque lorem. Maecenas euismod et orci sit amet placerat. Curabitur at arcu volutpat, imperdiet ante quis, fringilla lorem. Nullam sagittis, libero sit amet rhoncus sollicitudin, ante arcu semper est, vel fringilla tellus eros et nisi. Proin sollicitudin lacinia neque, non congue elit ornare eget. Vestibulum convallis volutpat tincidunt. Etiam ornare mollis rhoncus. Sed blandit ac sem at mattis. Duis congue nec nibh in congue. Vivamus nunc lorem, viverra sit amet enim vitae, lobortis fringilla ex. Nulla vehicula dapibus urna et efficitur.</p>\n<p> </p>',NULL,NULL,0,1,2,0,0,NULL,'Inherit','Inherit',12,12),
	(27,'BlogPost','2015-12-08 14:23:43','2015-12-08 11:34:41','dog-post-2','Traffic',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,3,0,0,NULL,'Inherit','Inherit',5,12),
	(28,'BlogPost','2015-12-08 14:22:50','2015-12-08 11:37:43','armidillo','Wellington Lights',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',5,12),
	(29,'BlogPost','2015-12-09 15:30:43','2015-12-08 11:40:50','hedghog-post','Wellington Night',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p> </p>',NULL,NULL,0,1,5,0,0,NULL,'Inherit','Inherit',7,12),
	(31,'TextSlice','2015-12-08 14:36:43','2015-12-08 12:47:51','contact-slice','Contact Me',NULL,'<p style=\"text-align: center;\">I\'m available for ....... You can email me on ...... or call me on ....... My studio is located in ...... and i\'d love to hear from you</p>',NULL,NULL,0,1,9,0,0,NULL,'Inherit','Inherit',4,0),
	(32,'TextSlice','2015-12-08 14:51:05','2015-12-08 14:37:51','my-awards','My Awards',NULL,'<p>Here are some awards I have</p>\n<p>Aenean pellentesque enim et eros luctus iaculis. Praesent porta varius massa non iaculis. Suspendisse pulvinar id massa vel condimentum. Suspendisse urna lacus, auctor eu velit sed, rutrum dictum sapien. Integer massa augue, malesuada sit amet tortor eget, dapibus tristique eros. Phasellus eget bibendum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam tincidunt velit accumsan leo vulputate, id varius dolor placerat. Proin quis tellus mi. Integer et augue at orci luctus ullamcorper.</p>\n<p> </p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',7,0);

/*!40000 ALTER TABLE `SiteTree_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteTree_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_versions`;

CREATE TABLE `SiteTree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','Gallery','GalleryAlbum','HomePage','TextSlice','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','UserDefinedForm','ContactPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`)
VALUES
	(1,1,1,1,0,0,'Page','2015-11-27 09:10:01','2015-11-27 09:10:01','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(2,2,1,1,0,0,'Page','2015-11-27 09:10:01','2015-11-27 09:10:01','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(3,3,1,1,0,0,'Page','2015-11-27 09:10:01','2015-11-27 09:10:01','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(4,4,1,1,0,0,'ErrorPage','2015-11-27 09:10:01','2015-11-27 09:10:01','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>',NULL,NULL,0,0,4,0,0,NULL,'Inherit','Inherit',0),
	(5,5,1,1,0,0,'ErrorPage','2015-11-27 09:10:02','2015-11-27 09:10:02','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>',NULL,NULL,0,0,5,0,0,NULL,'Inherit','Inherit',0),
	(6,6,1,0,1,0,'HomePage','2015-11-27 09:27:29','2015-11-27 09:27:29','new-home-page','New Home Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',1),
	(7,6,2,0,1,0,'HomePage','2015-11-27 09:29:42','2015-11-27 09:27:29','new-home-page','New Home Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(8,6,3,1,1,1,'HomePage','2015-11-27 09:29:53','2015-11-27 09:27:29','my-home-page','My Home Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(9,7,1,0,1,0,'Gallery','2015-11-27 09:30:04','2015-11-27 09:30:04','new-gallery','New Gallery',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),
	(10,7,2,0,1,0,'Gallery','2015-11-27 09:30:13','2015-11-27 09:30:04','new-gallery','New Gallery',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(11,7,3,0,1,0,'Gallery','2015-11-27 09:30:13','2015-11-27 09:30:04','new-gallery','New Gallery',NULL,NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',0),
	(12,8,1,0,1,0,'GalleryAlbum','2015-11-27 09:30:45','2015-11-27 09:30:45','new-gallery-album','New Gallery Album',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',7),
	(13,6,4,1,1,1,'HomePage','2015-11-27 09:38:49','2015-11-27 09:27:29','my-home-page','My Home Page',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(14,6,5,0,1,0,'HomePage','2015-11-27 09:42:43','2015-11-27 09:27:29','my-home-page','My Home Page','Home','<p>cdbjkakjcsbjkdcbjcdbjkdcjbkcdbjk</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(15,6,6,0,1,0,'HomePage','2015-11-27 09:43:45','2015-11-27 09:27:29','my-home-page','My Home Page','Home','<h1 style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</h1>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(16,6,7,0,1,0,'HomePage','2015-11-27 09:43:56','2015-11-27 09:27:29','my-home-page','My Home Page','Home','<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(17,6,8,1,1,1,'HomePage','2015-11-27 09:44:07','2015-11-27 09:27:29','my-home-page','My Home Page','Home','<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(18,7,4,0,1,0,'Gallery','2015-11-27 09:48:09','2015-11-27 09:30:04','new-gallery','New Gallery','My Work','<p>edvdfvfvfv</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',0),
	(19,7,5,1,1,1,'Gallery','2015-11-27 09:49:37','2015-11-27 09:30:04','new-gallery','New Gallery','My Work','<p>edvdfvfvfv</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',0),
	(20,8,2,1,1,1,'GalleryAlbum','2015-11-27 09:50:28','2015-11-27 09:30:45','photography','Photography',NULL,'<p>jdshjdcbhjhvdscjhvdjchvdjhv</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',7),
	(21,9,1,0,1,0,'GalleryAlbum','2015-11-27 09:50:45','2015-11-27 09:50:45','new-gallery-album','New Gallery Album',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',7),
	(22,9,2,1,1,1,'GalleryAlbum','2015-11-27 09:51:02','2015-11-27 09:50:45','graphic-design','Graphic Design',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',7),
	(23,10,1,0,1,0,'GalleryAlbum','2015-11-27 09:52:09','2015-11-27 09:52:09','new-gallery-album','New Gallery Album',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',7),
	(24,10,2,1,1,1,'GalleryAlbum','2015-11-27 09:52:21','2015-11-27 09:52:09','product-design','Product Design',NULL,NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',7),
	(25,11,1,0,1,0,'GalleryAlbum','2015-11-27 09:52:33','2015-11-27 09:52:33','new-gallery-album','New Gallery Album',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',7),
	(26,11,2,1,1,1,'GalleryAlbum','2015-11-27 09:52:46','2015-11-27 09:52:33','illustration','Illustration',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',7),
	(27,6,9,1,1,1,'HomePage','2015-11-27 09:55:15','2015-11-27 09:27:29','my-home-page',NULL,'Home','<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(28,6,10,1,1,1,'HomePage','2015-11-27 09:56:12','2015-11-27 09:27:29','home','home','Home','<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(29,6,11,1,1,1,'HomePage','2015-11-27 09:57:07','2015-11-27 09:27:29','home','home','Home','<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(30,7,6,1,1,1,'Gallery','2015-11-27 10:04:14','2015-11-27 09:30:04','new-gallery','New Gallery','ALL CATEGORIES',NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',0),
	(31,12,1,0,1,0,'Blog','2015-11-27 10:23:51','2015-11-27 10:23:51','new-blog','New Blog',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),
	(32,12,2,1,1,1,'Blog','2015-11-27 10:24:11','2015-11-27 10:23:51','blog','Blog',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',0),
	(33,12,3,0,1,0,'Blog','2015-11-27 10:24:18','2015-11-27 10:23:51','blog','Blog',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(34,13,1,0,1,0,'UserDefinedForm','2015-11-27 10:27:31','2015-11-27 10:27:31','new-user-defined-form','New User Defined Form',NULL,'$UserDefinedForm',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),
	(35,13,2,1,1,1,'UserDefinedForm','2015-11-27 10:27:45','2015-11-27 10:27:31','contact','CONTACT',NULL,'<p>$UserDefinedForm</p>',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',0),
	(36,8,3,1,1,1,'GalleryAlbum','2015-11-27 10:44:38','2015-11-27 09:30:45','photography','Photography',NULL,'<p>This is an album of my latest photography. You could add as many images you like to this folder and the viewer can scroll through all of your work. <strong>Lorem Ipsum</strong><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',7),
	(37,9,3,1,1,1,'GalleryAlbum','2015-11-27 10:45:06','2015-11-27 09:50:45','graphic-design','Graphic Design',NULL,'<p style=\"text-align: center;\">This is an album for your graphic design.</p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',7),
	(38,8,4,1,1,1,'GalleryAlbum','2015-11-27 10:45:20','2015-11-27 09:30:45','photography','Photography',NULL,'<p style=\"text-align: center;\">This is an album of my latest photography. You could add as many images you like to this folder and the viewer can scroll through all of your work. </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p style=\"text-align: center;\"> </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',7),
	(39,10,3,1,1,1,'GalleryAlbum','2015-11-27 10:46:20','2015-11-27 09:52:09','product-design','Product Design',NULL,'<p style=\"text-align: center;\"><strong>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</strong></p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',7),
	(40,11,3,1,1,1,'GalleryAlbum','2015-11-27 10:46:31','2015-11-27 09:52:33','illustration','Illustration',NULL,'<p><em><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</em></p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',7),
	(41,6,12,1,1,1,'HomePage','2015-11-27 10:47:04','2015-11-27 09:27:29','home',NULL,'HOME','<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(42,12,4,1,1,1,'Blog','2015-11-27 10:47:17','2015-11-27 10:23:51','blog','Blog','BLOG',NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',0),
	(43,7,7,1,1,1,'Gallery','2015-11-27 10:47:27','2015-11-27 09:30:04','new-gallery','New Gallery','WORK',NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(44,13,3,1,1,1,'UserDefinedForm','2015-11-27 12:14:48','2015-11-27 10:27:31','contact','CONTACT',NULL,'<p>$UserDefinedForm</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(45,6,13,1,1,1,'HomePage','2015-11-30 11:02:27','2015-11-27 09:27:29','home',NULL,'HOME','<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(46,6,14,1,1,1,'HomePage','2015-11-30 11:03:59','2015-11-27 09:27:29','home',NULL,'HOME','<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(47,14,1,0,1,0,'Page','2015-11-30 11:04:14','2015-11-30 11:04:14','new-page','New Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',6),
	(48,14,2,0,1,0,'Page','2015-11-30 11:04:39','2015-11-30 11:04:14','new-page','New Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(49,14,3,1,1,1,'Page','2015-11-30 11:04:54','2015-11-30 11:04:14','about','ABOUT',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(50,14,4,1,1,1,'Page','2015-11-30 11:05:22','2015-11-30 11:04:14','about','ABOUT',NULL,'<p>This will be the about page, it will also display information and an image.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(51,8,5,1,1,1,'GalleryAlbum','2015-11-30 11:07:52','2015-11-27 09:30:45','photography','Child',NULL,'<p style=\"text-align: center;\">This is an album of my latest photography. You could add as many images you like to this folder and the viewer can scroll through all of your work. </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p style=\"text-align: center;\"> </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',7),
	(52,8,6,1,1,1,'GalleryAlbum','2015-11-30 11:08:33','2015-11-27 09:30:45','photography','Child',NULL,'<p style=\"text-align: center;\">This is an album of my latest photography. You could add as many images you like to this folder and the viewer can scroll through all of your work. </p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p style=\"text-align: center;\"> </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',7),
	(53,15,1,0,1,0,'GalleryAlbum','2015-11-30 11:09:05','2015-11-30 11:09:05','new-gallery-album','New Gallery Album',NULL,NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',7),
	(54,15,2,1,1,1,'GalleryAlbum','2015-11-30 11:09:31','2015-11-30 11:09:05','city-photos','City Photos',NULL,NULL,NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',7),
	(55,9,4,1,1,1,'GalleryAlbum','2015-11-30 11:12:52','2015-11-27 09:50:45','graphic-design','Line Work',NULL,'<p style=\"text-align: center;\">This is an album for your graphic design.</p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',7),
	(56,16,1,1,1,1,'GalleryAlbum','2015-11-30 11:23:37','2015-11-30 11:23:37','new-gallery-album','New Gallery Album',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',7),
	(57,16,2,1,1,1,'GalleryAlbum','2015-11-30 11:26:04','2015-11-30 11:23:37','poster-design','Poster Design',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',7),
	(58,17,1,0,1,0,'GalleryAlbum','2015-11-30 11:35:32','2015-11-30 11:35:32','new-gallery-album','New Gallery Album',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',7),
	(59,17,2,1,1,1,'GalleryAlbum','2015-11-30 11:39:15','2015-11-30 11:35:32','branding-of-fleur','Branding of Fleur',NULL,'<p>Example Post: A project for the branding of a company called Fleur.</p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',7),
	(60,11,4,0,1,0,'GalleryAlbum','2015-11-30 11:53:03','2015-11-27 09:52:33','illustration','Illustration',NULL,'<p><em><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</em></p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(61,11,5,0,1,0,'GalleryAlbum','2015-11-30 11:53:03','2015-11-27 09:52:33','illustration','Illustration',NULL,'<p><em><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</em></p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',0),
	(62,8,7,1,1,1,'GalleryAlbum','2015-11-30 11:54:02','2015-11-27 09:30:45','photography','Street Photography',NULL,'<p style=\"text-align: center;\">This is an album of my latest photography. You could add as many images you like to this folder and the viewer can scroll through all of your work. </p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p style=\"text-align: center;\"> </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',7),
	(63,11,6,0,1,0,'GalleryAlbum','2015-11-30 12:02:57','2015-11-27 09:52:33','illustration','Illustration',NULL,'<p><em><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</em></p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',7),
	(64,11,7,0,1,0,'GalleryAlbum','2015-11-30 12:02:57','2015-11-27 09:52:33','illustration','Illustration',NULL,'<p><em><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</em></p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',7),
	(65,11,8,1,1,1,'GalleryAlbum','2015-11-30 12:04:01','2015-11-27 09:52:33','illustration','Mor and Guy',NULL,'<p>Example post: Invitation design</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',7),
	(66,15,3,1,1,1,'GalleryAlbum','2015-11-30 12:16:49','2015-11-30 11:09:05','city-photos','City Photos',NULL,'<p>Example Post: An album of photos of the city</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',7),
	(67,6,15,1,1,1,'HomePage','2015-11-30 13:12:43','2015-11-27 09:27:29','home',NULL,NULL,'<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(68,6,16,1,1,1,'HomePage','2015-11-30 13:13:12','2015-11-27 09:27:29','home',NULL,NULL,'<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(69,18,1,1,1,1,'GalleryAlbum','2015-11-30 13:17:12','2015-11-30 13:17:12','new-gallery-album','New Gallery Album',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',7),
	(70,18,2,1,1,1,'GalleryAlbum','2015-11-30 13:19:13','2015-11-30 13:17:12','logo-project','LOGO PROJECT',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',7),
	(71,18,3,1,1,1,'GalleryAlbum','2015-11-30 13:19:44','2015-11-30 13:17:12','logo-project','Logo Project',NULL,'<p>Example Post: A series of logos</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',7),
	(72,6,17,1,1,1,'HomePage','2015-11-30 13:23:53','2015-11-27 09:27:29','home',NULL,NULL,'<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(73,6,18,1,1,1,'HomePage','2015-11-30 13:24:21','2015-11-27 09:27:29','home',NULL,NULL,'<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(74,19,1,0,1,0,'GalleryAlbum','2015-11-30 13:39:39','2015-11-30 13:39:39','new-gallery-album','New Gallery Album',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',7),
	(75,19,2,1,1,1,'GalleryAlbum','2015-11-30 13:43:27','2015-11-30 13:39:39','tamarindo-branding','Tamarindo Branding',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',7),
	(76,19,3,1,1,1,'GalleryAlbum','2015-11-30 13:45:34','2015-11-30 13:39:39','tamarindo-branding','Tamarindo Branding',NULL,'<p>Example Post: A branding study</p>',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',7),
	(77,10,4,1,1,1,'GalleryAlbum','2015-11-30 14:03:17','2015-11-27 09:52:09','product-design','Product Design',NULL,'<p style=\"text-align: center;\">Example Post: This is an album of product design</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',7),
	(78,6,19,1,1,1,'HomePage','2015-11-30 14:39:58','2015-11-27 09:27:29','home','HOME',NULL,'<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',0),
	(79,6,20,1,1,1,'HomePage','2015-11-30 14:40:15','2015-11-27 09:27:29','home','HOME',NULL,'<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',0),
	(80,8,8,1,1,1,'GalleryAlbum','2015-12-01 11:12:48','2015-11-27 09:30:45','photography','Street Photography',NULL,'<p style=\"text-align: center;\">This is an album of my latest photography. You could add as many images you like to this folder and the viewer can scroll through all of your work. </p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<p style=\"text-align: center;\"> </p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',7),
	(81,9,5,1,1,1,'GalleryAlbum','2015-12-01 11:13:12','2015-11-27 09:50:45','graphic-design','Line Work',NULL,'<p style=\"text-align: center;\">This is an album for your graphic design.</p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',7),
	(82,10,5,1,1,1,'GalleryAlbum','2015-12-01 11:13:27','2015-11-27 09:52:09','product-design','Product Design',NULL,'<p style=\"text-align: center;\">Example Post: This is an album of product design</p>',NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',7),
	(83,11,9,1,1,1,'GalleryAlbum','2015-12-01 11:14:10','2015-11-27 09:52:33','illustration','Mor and Guy',NULL,'<p>Example post: Invitation design</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',7),
	(84,15,4,1,1,1,'GalleryAlbum','2015-12-01 11:14:24','2015-11-30 11:09:05','city-photos','City Photos',NULL,'<p>Example Post: An album of photos of the city</p>',NULL,NULL,1,1,5,0,0,NULL,'Inherit','Inherit',7),
	(85,16,3,1,1,1,'GalleryAlbum','2015-12-01 11:14:40','2015-11-30 11:23:37','poster-design','Poster Design',NULL,NULL,NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',7),
	(86,17,3,1,1,1,'GalleryAlbum','2015-12-01 11:14:59','2015-11-30 11:35:32','branding-of-fleur','Branding of Fleur',NULL,'<p>Example Post: A project for the branding of a company called Fleur.</p>',NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',7),
	(87,18,4,1,1,1,'GalleryAlbum','2015-12-01 11:15:20','2015-11-30 13:17:12','logo-project','Logo Project',NULL,'<p>Example Post: A series of logos</p>',NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',7),
	(88,19,4,1,1,1,'GalleryAlbum','2015-12-01 11:15:34','2015-11-30 13:39:39','tamarindo-branding','Tamarindo Branding',NULL,'<p>Example Post: A branding study</p>',NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',7),
	(89,20,1,0,1,0,'Page','2015-12-02 15:50:23','2015-12-02 15:50:23','new-page','New Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',14),
	(90,20,2,1,1,1,'Page','2015-12-02 15:50:42','2015-12-02 15:50:23','filler-page','Filler Page',NULL,'<p>I\'m a filler page!</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',14),
	(91,21,1,0,1,0,'Page','2015-12-02 15:50:54','2015-12-02 15:50:54','new-page','New Page',NULL,NULL,NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',14),
	(92,21,2,1,1,1,'Page','2015-12-02 15:51:07','2015-12-02 15:50:54','filler-page-2','Filler Page 2',NULL,'<p>I\'m a filler page!</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',14),
	(93,22,1,0,1,0,'BlogPost','2015-12-02 15:51:18','2015-12-02 15:51:18','new-blog-post','New Blog Post',NULL,NULL,NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',12),
	(94,22,2,0,1,0,'BlogPost','2015-12-02 15:51:54','2015-12-02 15:51:18','why-i-love-cats','Why I love cats',NULL,'<p>Cats are great</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',12),
	(95,22,3,1,1,1,'BlogPost','2015-12-02 15:51:54','2015-12-02 15:51:18','why-i-love-cats','Why I love cats',NULL,'<p>Cats are great</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',12),
	(96,23,1,0,1,0,'BlogPost','2015-12-02 15:52:05','2015-12-02 15:52:05','new-blog-post','New Blog Post',NULL,NULL,NULL,NULL,0,1,2,0,0,NULL,'Inherit','Inherit',12),
	(97,23,2,0,1,0,'BlogPost','2015-12-02 15:52:48','2015-12-02 15:52:05','why-i-love-dogs','Why I love dogs',NULL,'<p>Dogs are cute</p>',NULL,NULL,0,1,2,0,0,NULL,'Inherit','Inherit',12),
	(98,23,3,1,1,1,'BlogPost','2015-12-02 15:52:48','2015-12-02 15:52:05','why-i-love-dogs','Why I love dogs',NULL,'<p>Dogs are cute</p>',NULL,NULL,0,1,2,0,0,NULL,'Inherit','Inherit',12),
	(99,24,1,0,1,0,'BlogPost','2015-12-02 15:52:58','2015-12-02 15:52:58','new-blog-post','New Blog Post',NULL,NULL,NULL,NULL,0,1,3,0,0,NULL,'Inherit','Inherit',12),
	(100,24,2,0,1,0,'BlogPost','2015-12-02 15:54:06','2015-12-02 15:52:58','guinea-pigs-are-the-best','Guinea Pigs are the best',NULL,'<p>Its a pig in a car.</p>\n<p> </p>\n<p>This is the best ever.</p>',NULL,NULL,0,1,3,0,0,NULL,'Inherit','Inherit',12),
	(101,24,3,1,1,1,'BlogPost','2015-12-02 15:54:06','2015-12-02 15:52:58','guinea-pigs-are-the-best','Guinea Pigs are the best',NULL,'<p>Its a pig in a car.</p>\n<p> </p>\n<p>This is the best ever.</p>',NULL,NULL,0,1,3,0,0,NULL,'Inherit','Inherit',12),
	(102,25,1,0,1,0,'UserDefinedForm','2015-12-02 15:54:26','2015-12-02 15:54:26','new-user-defined-form','New User Defined Form',NULL,'$UserDefinedForm',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',13),
	(103,25,2,1,1,1,'UserDefinedForm','2015-12-02 15:56:13','2015-12-02 15:54:26','send-a-message','Send A Message',NULL,'<p>$UserDefinedForm</p>',NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',13),
	(104,24,4,1,1,1,'BlogPost','2015-12-02 17:03:54','2015-12-02 15:52:58','guinea-pigs-are-the-best','Guinea Pigs are the best',NULL,'<p>Its a pig in a car.</p>\n<p> </p>\n<p>This is the best ever.</p>',NULL,NULL,0,1,3,0,0,NULL,'Inherit','Inherit',12),
	(105,23,4,1,1,1,'BlogPost','2015-12-02 17:04:19','2015-12-02 15:52:05','why-i-love-dogs','Why I love dogs',NULL,'<p>Dogs are cute</p>',NULL,NULL,0,1,2,0,0,NULL,'Inherit','Inherit',12),
	(106,22,4,1,1,1,'BlogPost','2015-12-02 17:04:34','2015-12-02 15:51:18','why-i-love-cats','Why I love cats',NULL,'<p>Cats are great</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',12),
	(107,26,1,0,1,0,'BlogPost','2015-12-02 17:05:47','2015-12-02 17:05:47','new-blog-post','New Blog Post',NULL,NULL,NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',12),
	(108,26,2,0,1,0,'BlogPost','2015-12-02 17:06:29','2015-12-02 17:05:47','extra-cat-post','Extra cat post',NULL,NULL,NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',12),
	(109,26,3,1,1,1,'BlogPost','2015-12-02 17:06:29','2015-12-02 17:05:47','extra-cat-post','Extra cat post',NULL,NULL,NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',12),
	(110,26,4,1,1,1,'BlogPost','2015-12-03 11:11:20','2015-12-02 17:05:47','extra-cat-post','Extra cat post',NULL,'<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzNzVd-WillWild-Granitepink.jpg\" alt=\"WillWild Granitepink\" width=\"600\" height=\"375\"></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque neque neque. Sed ac bibendum neque. Morbi vitae accumsan leo, sed feugiat ante. Nullam risus magna, ultricies quis faucibus in, aliquam a odio. Sed nunc orci, cursus sed hendrerit vitae, vulputate at magna. Sed tempor posuere magna, ut fringilla massa lacinia nec. Etiam tellus tortor, efficitur vitae massa sed, laoreet euismod velit. Etiam at arcu vulputate, lobortis justo eget, lobortis massa. Nulla eget pharetra turpis. Aenean at turpis et ligula aliquam fringilla. Integer efficitur gravida lacus, ac posuere massa dapibus at. Vivamus non facilisis nisi, vel eleifend dolor. Vestibulum volutpat dolor lectus, a luctus dui interdum ullamcorper. Praesent nec efficitur sapien.</p>\n<p>Cras ultrices facilisis turpis non molestie. Sed vel posuere dolor, a euismod metus. Integer vitae est nunc. Fusce augue sem, fringilla et nulla in, interdum pellentesque lorem. Maecenas euismod et orci sit amet placerat. Curabitur at arcu volutpat, imperdiet ante quis, fringilla lorem. Nullam sagittis, libero sit amet rhoncus sollicitudin, ante arcu semper est, vel fringilla tellus eros et nisi. Proin sollicitudin lacinia neque, non congue elit ornare eget. Vestibulum convallis volutpat tincidunt. Etiam ornare mollis rhoncus. Sed blandit ac sem at mattis. Duis congue nec nibh in congue. Vivamus nunc lorem, viverra sit amet enim vitae, lobortis fringilla ex. Nulla vehicula dapibus urna et efficitur.</p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',12),
	(111,26,5,1,1,1,'BlogPost','2015-12-03 11:12:30','2015-12-02 17:05:47','extra-cat-post','Extra cat post',NULL,'<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzNzVd-WillWild-Granitepink.jpg\" alt=\"WillWild Granitepink\" width=\"600\" height=\"375\"></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque neque neque. Sed ac bibendum neque. Morbi vitae accumsan leo, sed feugiat ante. Nullam risus magna, ultricies quis faucibus in, aliquam a odio. Sed nunc orci, cursus sed hendrerit vitae, vulputate at magna. Sed tempor posuere magna, ut fringilla massa lacinia nec. Etiam tellus tortor, efficitur vitae massa sed, laoreet euismod velit. Etiam at arcu vulputate, lobortis justo eget, lobortis massa. Nulla eget pharetra turpis. Aenean at turpis et ligula aliquam fringilla. Integer efficitur gravida lacus, ac posuere massa dapibus at. Vivamus non facilisis nisi, vel eleifend dolor. Vestibulum volutpat dolor lectus, a luctus dui interdum ullamcorper. Praesent nec efficitur sapien.</p>\n<p>Cras ultrices facilisis turpis non molestie. Sed vel posuere dolor, a euismod metus. Integer vitae est nunc. Fusce augue sem, fringilla et nulla in, interdum pellentesque lorem. Maecenas euismod et orci sit amet placerat. Curabitur at arcu volutpat, imperdiet ante quis, fringilla lorem. Nullam sagittis, libero sit amet rhoncus sollicitudin, ante arcu semper est, vel fringilla tellus eros et nisi. Proin sollicitudin lacinia neque, non congue elit ornare eget. Vestibulum convallis volutpat tincidunt. Etiam ornare mollis rhoncus. Sed blandit ac sem at mattis. Duis congue nec nibh in congue. Vivamus nunc lorem, viverra sit amet enim vitae, lobortis fringilla ex. Nulla vehicula dapibus urna et efficitur.</p>\n<p> </p>\n<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzODld-Screen-Shot-2015-11-18-at-1.10.12-pm.png\" alt=\"Screen Shot 2015 11 18 at 1.10.12 pm\" width=\"600\" height=\"389\"></p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',12),
	(112,26,6,1,1,1,'BlogPost','2015-12-03 11:17:14','2015-12-02 17:05:47','extra-cat-post','Extra cat post',NULL,'<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzNzVd-WillWild-Granitepink.jpg\" alt=\"WillWild Granitepink\" width=\"600\" height=\"375\"></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque neque neque. Sed ac bibendum neque. Morbi vitae accumsan leo, sed feugiat ante. Nullam risus magna, ultricies quis faucibus in, aliquam a odio. Sed nunc orci, cursus sed hendrerit vitae, vulputate at magna. Sed tempor posuere magna, ut fringilla massa lacinia nec. Etiam tellus tortor, efficitur vitae massa sed, laoreet euismod velit. Etiam at arcu vulputate, lobortis justo eget, lobortis massa. Nulla eget pharetra turpis. Aenean at turpis et ligula aliquam fringilla. Integer efficitur gravida lacus, ac posuere massa dapibus at. Vivamus non facilisis nisi, vel eleifend dolor. Vestibulum volutpat dolor lectus, a luctus dui interdum ullamcorper. Praesent nec efficitur sapien.</p>\n<p> </p>\n<h3 style=\"text-align: center;\"><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzODld-Screen-Shot-2015-11-18-at-1.10.12-pm.png\" alt=\"Screen Shot 2015 11 18 at 1.10.12 pm\" width=\"600\" height=\"389\">Some of James work</h3>\n<p>Cras ultrices facilisis turpis non molestie. Sed vel posuere dolor, a euismod metus. Integer vitae est nunc. Fusce augue sem, fringilla et nulla in, interdum pellentesque lorem. Maecenas euismod et orci sit amet placerat. Curabitur at arcu volutpat, imperdiet ante quis, fringilla lorem. Nullam sagittis, libero sit amet rhoncus sollicitudin, ante arcu semper est, vel fringilla tellus eros et nisi. Proin sollicitudin lacinia neque, non congue elit ornare eget. Vestibulum convallis volutpat tincidunt. Etiam ornare mollis rhoncus. Sed blandit ac sem at mattis. Duis congue nec nibh in congue. Vivamus nunc lorem, viverra sit amet enim vitae, lobortis fringilla ex. Nulla vehicula dapibus urna et efficitur.</p>\n<p> </p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',12),
	(113,26,7,1,1,1,'BlogPost','2015-12-03 11:17:35','2015-12-02 17:05:47','extra-cat-post','Extra cat post',NULL,'<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzNzVd-WillWild-Granitepink.jpg\" alt=\"WillWild Granitepink\" width=\"600\" height=\"375\"></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque neque neque. Sed ac bibendum neque. Morbi vitae accumsan leo, sed feugiat ante. Nullam risus magna, ultricies quis faucibus in, aliquam a odio. Sed nunc orci, cursus sed hendrerit vitae, vulputate at magna. Sed tempor posuere magna, ut fringilla massa lacinia nec. Etiam tellus tortor, efficitur vitae massa sed, laoreet euismod velit. Etiam at arcu vulputate, lobortis justo eget, lobortis massa. Nulla eget pharetra turpis. Aenean at turpis et ligula aliquam fringilla. Integer efficitur gravida lacus, ac posuere massa dapibus at. Vivamus non facilisis nisi, vel eleifend dolor. Vestibulum volutpat dolor lectus, a luctus dui interdum ullamcorper. Praesent nec efficitur sapien.</p>\n<p> </p>\n<h5 style=\"text-align: center;\"><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzODld-Screen-Shot-2015-11-18-at-1.10.12-pm.png\" alt=\"Screen Shot 2015 11 18 at 1.10.12 pm\" width=\"600\" height=\"389\">Some of James work</h5>\n<p>Cras ultrices facilisis turpis non molestie. Sed vel posuere dolor, a euismod metus. Integer vitae est nunc. Fusce augue sem, fringilla et nulla in, interdum pellentesque lorem. Maecenas euismod et orci sit amet placerat. Curabitur at arcu volutpat, imperdiet ante quis, fringilla lorem. Nullam sagittis, libero sit amet rhoncus sollicitudin, ante arcu semper est, vel fringilla tellus eros et nisi. Proin sollicitudin lacinia neque, non congue elit ornare eget. Vestibulum convallis volutpat tincidunt. Etiam ornare mollis rhoncus. Sed blandit ac sem at mattis. Duis congue nec nibh in congue. Vivamus nunc lorem, viverra sit amet enim vitae, lobortis fringilla ex. Nulla vehicula dapibus urna et efficitur.</p>\n<p> </p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',12),
	(114,26,8,1,1,1,'BlogPost','2015-12-03 11:17:55','2015-12-02 17:05:47','extra-cat-post','Extra cat post',NULL,'<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzNzVd-WillWild-Granitepink.jpg\" alt=\"WillWild Granitepink\" width=\"600\" height=\"375\"></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque neque neque. Sed ac bibendum neque. Morbi vitae accumsan leo, sed feugiat ante. Nullam risus magna, ultricies quis faucibus in, aliquam a odio. Sed nunc orci, cursus sed hendrerit vitae, vulputate at magna. Sed tempor posuere magna, ut fringilla massa lacinia nec. Etiam tellus tortor, efficitur vitae massa sed, laoreet euismod velit. Etiam at arcu vulputate, lobortis justo eget, lobortis massa. Nulla eget pharetra turpis. Aenean at turpis et ligula aliquam fringilla. Integer efficitur gravida lacus, ac posuere massa dapibus at. Vivamus non facilisis nisi, vel eleifend dolor. Vestibulum volutpat dolor lectus, a luctus dui interdum ullamcorper. Praesent nec efficitur sapien.</p>\n<p> </p>\n<h4 style=\"text-align: center;\"><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzODld-Screen-Shot-2015-11-18-at-1.10.12-pm.png\" alt=\"Screen Shot 2015 11 18 at 1.10.12 pm\" width=\"600\" height=\"389\">Some of James work</h4>\n<p>Cras ultrices facilisis turpis non molestie. Sed vel posuere dolor, a euismod metus. Integer vitae est nunc. Fusce augue sem, fringilla et nulla in, interdum pellentesque lorem. Maecenas euismod et orci sit amet placerat. Curabitur at arcu volutpat, imperdiet ante quis, fringilla lorem. Nullam sagittis, libero sit amet rhoncus sollicitudin, ante arcu semper est, vel fringilla tellus eros et nisi. Proin sollicitudin lacinia neque, non congue elit ornare eget. Vestibulum convallis volutpat tincidunt. Etiam ornare mollis rhoncus. Sed blandit ac sem at mattis. Duis congue nec nibh in congue. Vivamus nunc lorem, viverra sit amet enim vitae, lobortis fringilla ex. Nulla vehicula dapibus urna et efficitur.</p>\n<p> </p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',12),
	(115,26,9,1,1,1,'BlogPost','2015-12-03 11:18:33','2015-12-02 17:05:47','extra-cat-post','Extra cat post',NULL,'<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzNzVd-WillWild-Granitepink.jpg\" alt=\"WillWild Granitepink\" width=\"600\" height=\"375\"></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque neque neque. Sed ac bibendum neque. Morbi vitae accumsan leo, sed feugiat ante. Nullam risus magna, ultricies quis faucibus in, aliquam a odio. Sed nunc orci, cursus sed hendrerit vitae, vulputate at magna. Sed tempor posuere magna, ut fringilla massa lacinia nec. Etiam tellus tortor, efficitur vitae massa sed, laoreet euismod velit. Etiam at arcu vulputate, lobortis justo eget, lobortis massa. Nulla eget pharetra turpis. Aenean at turpis et ligula aliquam fringilla. Integer efficitur gravida lacus, ac posuere massa dapibus at. Vivamus non facilisis nisi, vel eleifend dolor. Vestibulum volutpat dolor lectus, a luctus dui interdum ullamcorper. Praesent nec efficitur sapien.</p>\n<p> </p>\n<h4 style=\"text-align: center;\"><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzODld-Screen-Shot-2015-11-18-at-1.10.12-pm.png\" alt=\"Screen Shot 2015 11 18 at 1.10.12 pm\" width=\"600\" height=\"389\"><strong>Some of James work</strong></h4>\n<p>Cras ultrices facilisis turpis non molestie. Sed vel posuere dolor, a euismod metus. Integer vitae est nunc. Fusce augue sem, fringilla et nulla in, interdum pellentesque lorem. Maecenas euismod et orci sit amet placerat. Curabitur at arcu volutpat, imperdiet ante quis, fringilla lorem. Nullam sagittis, libero sit amet rhoncus sollicitudin, ante arcu semper est, vel fringilla tellus eros et nisi. Proin sollicitudin lacinia neque, non congue elit ornare eget. Vestibulum convallis volutpat tincidunt. Etiam ornare mollis rhoncus. Sed blandit ac sem at mattis. Duis congue nec nibh in congue. Vivamus nunc lorem, viverra sit amet enim vitae, lobortis fringilla ex. Nulla vehicula dapibus urna et efficitur.</p>\n<p> </p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',12),
	(116,13,4,1,1,1,'UserDefinedForm','2015-12-07 10:22:31','2015-11-27 10:27:31','contact','CONTACT',NULL,'<p>$UserDefinedForm</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(117,9,6,1,1,1,'GalleryAlbum','2015-12-07 10:30:56','2015-11-27 09:50:45','graphic-design','Line Work',NULL,'<p style=\"text-align: center;\">This is an album for your graphic design.</p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p style=\"text-align: center;\"> </p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper, leo at convallis cursus, mauris lectus congue est, ut condimentum felis urna quis magna. Cras consectetur enim lorem, vitae efficitur elit mollis sit amet. Quisque egestas pulvinar neque, molestie posuere risus iaculis in. In massa velit, elementum eu velit eget, consectetur rutrum ipsum. Vestibulum lectus est, pharetra eget nunc nec, euismod hendrerit augue. Integer vitae risus nec neque volutpat sagittis et et elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec ligula pulvinar, tempor sem vel, cursus lectus. Duis euismod luctus arcu, sagittis malesuada risus tincidunt vitae. Vivamus malesuada posuere lacus sit amet pretium. Cras pharetra mauris id leo consectetur suscipit. Donec diam purus, semper eget vehicula quis, facilisis sit amet mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<p>Maecenas eget dolor venenatis est suscipit vestibulum. Sed sem est, efficitur eget malesuada quis, sollicitudin a sem. Integer feugiat quam a lectus vestibulum iaculis. Proin vel felis a turpis pulvinar vestibulum sit amet in orci. Nulla vehicula dui lacus. Donec laoreet nibh a urna volutpat, eu accumsan neque semper. Nam eu quam quis neque sagittis luctus sed ut neque. Nunc magna erat, sollicitudin a porttitor id, posuere sit amet nunc. Cras tincidunt bibendum luctus. Suspendisse mattis facilisis vestibulum. Curabitur tincidunt vitae erat a eleifend. Quisque lectus velit, interdum vitae orci id, sodales cursus lectus. Sed quis erat ante.</p>\n<p>Cras molestie finibus lacus, eu viverra ex sollicitudin vel. Donec lorem nisl, commodo eget tortor sed, tempus malesuada tellus. Sed elit lorem, volutpat eget quam blandit, auctor viverra nibh. Phasellus ac orci aliquam, viverra nibh sit amet, imperdiet urna. Maecenas feugiat purus felis, sed sagittis nunc rutrum ac. Integer molestie, orci eget laoreet faucibus, enim ante porttitor nibh, id ullamcorper ipsum lacus eu diam. Donec ultrices vulputate mauris id tincidunt. Suspendisse diam arcu, imperdiet id laoreet et, iaculis eget nisi. Maecenas finibus dolor vulputate pretium dapibus. Pellentesque at aliquam nisl, vitae interdum libero. Aenean auctor, nisi quis consequat vehicula, metus libero ultrices ligula, vel pulvinar velit odio et ligula. Cras ut dui et turpis dapibus interdum nec sit amet orci. Pellentesque bibendum feugiat ultrices. Vestibulum at augue ac elit ullamcorper eleifend. Praesent sed enim quis odio efficitur porttitor. Praesent rutrum non est vitae luctus.</p>\n<p>Etiam non vehicula tortor. Integer elementum consequat vulputate. Aliquam erat volutpat. Mauris lacinia turpis ut ornare sagittis. Praesent sollicitudin odio id nibh ornare vestibulum. Curabitur pharetra suscipit metus ut iaculis. Curabitur placerat mi ut purus ullamcorper, in gravida augue consectetur. Curabitur purus diam, viverra id ante tincidunt, lacinia tincidunt lectus. Aenean dictum metus dui, vel rutrum lorem pretium a. Ut non aliquam augue. Phasellus a leo ut erat ultricies scelerisque.</p>\n<p>Duis quis urna vitae tortor euismod posuere. Mauris molestie, turpis ultricies porttitor rhoncus, justo massa auctor arcu, ac auctor enim lorem a arcu. Nulla bibendum augue sit amet vestibulum egestas. Praesent non vehicula enim. Vivamus lacus purus, mollis sit amet venenatis eget, aliquam vel neque. Nunc a facilisis lectus. Ut blandit molestie libero. Curabitur at enim quis lacus pulvinar blandit. Etiam auctor lorem in posuere pharetra. Nulla sapien sem, sagittis ultricies eros et, sollicitudin dignissim ipsum.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',7),
	(118,9,7,1,1,1,'GalleryAlbum','2015-12-07 10:31:51','2015-11-27 09:50:45','graphic-design','Line Work',NULL,'<p style=\"text-align: center;\">This is an album for your graphic design.</p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p style=\"text-align: center;\"> </p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper, leo at convallis cursus, mauris lectus congue est, ut condimentum felis urna quis magna. Cras consectetur enim lorem, vitae efficitur elit mollis sit amet. Quisque egestas pulvinar neque, molestie posuere risus iaculis in. In massa velit, elementum eu velit eget, consectetur rutrum ipsum. Vestibulum lectus est, pharetra eget nunc nec, euismod hendrerit augue. Integer vitae risus nec neque volutpat sagittis et et elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec ligula pulvinar, tempor sem vel, cursus lectus. Duis euismod luctus arcu, sagittis malesuada risus tincidunt vitae. Vivamus malesuada posuere lacus sit amet pretium. Cras pharetra mauris id leo consectetur suscipit. Donec diam purus, semper eget vehicula quis, facilisis sit amet mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<p>Maecenas eget dolor venenatis est suscipit vestibulum. Sed sem est, efficitur eget malesuada quis, sollicitudin a sem. Integer feugiat quam a lectus vestibulum iaculis. Proin vel felis a turpis pulvinar vestibulum sit amet in orci. Nulla vehicula dui lacus. Donec laoreet nibh a urna volutpat, eu accumsan neque semper. Nam eu quam quis neque sagittis luctus sed ut neque. Nunc magna erat, sollicitudin a porttitor id, posuere sit amet nunc. Cras tincidunt bibendum luctus. Suspendisse mattis facilisis vestibulum. Curabitur tincidunt vitae erat a eleifend. Quisque lectus velit, interdum vitae orci id, sodales cursus lectus. Sed quis erat ante.</p>\n<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzNzVd-WillWild-Granitepink2.jpg\" alt=\"WillWild Granitepink2\" width=\"600\" height=\"375\">C</p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p>ras molestie finibus lacus, eu viverra ex sollicitudin vel. Donec lorem nisl, commodo eget tortor sed, tempus malesuada tellus. Sed elit lorem, volutpat eget quam blandit, auctor viverra nibh. Phasellus ac orci aliquam, viverra nibh sit amet, imperdiet urna. Maecenas feugiat purus felis, sed sagittis nunc rutrum ac. Integer molestie, orci eget laoreet faucibus, enim ante porttitor nibh, id ullamcorper ipsum lacus eu diam. Donec ultrices vulputate mauris id tincidunt. Suspendisse diam arcu, imperdiet id laoreet et, iaculis eget nisi. Maecenas finibus dolor vulputate pretium dapibus. Pellentesque at aliquam nisl, vitae interdum libero. Aenean auctor, nisi quis consequat vehicula, metus libero ultrices ligula, vel pulvinar velit odio et ligula. Cras ut dui et turpis dapibus interdum nec sit amet orci. Pellentesque bibendum feugiat ultrices. Vestibulum at augue ac elit ullamcorper eleifend. Praesent sed enim quis odio efficitur porttitor. Praesent rutrum non est vitae luctus.</p>\n<p>Etiam non vehicula tortor. Integer elementum consequat vulputate. Aliquam erat volutpat. Mauris lacinia turpis ut ornare sagittis. Praesent sollicitudin odio id nibh ornare vestibulum. Curabitur pharetra suscipit metus ut iaculis. Curabitur placerat mi ut purus ullamcorper, in gravida augue consectetur. Curabitur purus diam, viverra id ante tincidunt, lacinia tincidunt lectus. Aenean dictum metus dui, vel rutrum lorem pretium a. Ut non aliquam augue. Phasellus a leo ut erat ultricies scelerisque.</p>\n<p>Duis quis urna vitae tortor euismod posuere. Mauris molestie, turpis ultricies porttitor rhoncus, justo massa auctor arcu, ac auctor enim lorem a arcu. Nulla bibendum augue sit amet vestibulum egestas. Praesent non vehicula enim. Vivamus lacus purus, mollis sit amet venenatis eget, aliquam vel neque. Nunc a facilisis lectus. Ut blandit molestie libero. Curabitur at enim quis lacus pulvinar blandit. Etiam auctor lorem in posuere pharetra. Nulla sapien sem, sagittis ultricies eros et, sollicitudin dignissim ipsum.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',7),
	(119,9,8,1,1,1,'GalleryAlbum','2015-12-07 10:32:15','2015-11-27 09:50:45','graphic-design','Line Work',NULL,'<p style=\"text-align: center;\">This is an album for your graphic design.</p>\n<p style=\"text-align: center;\"> </p>\n<p style=\"text-align: center;\"><strong>Lorem Ipsum</strong><span> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>\n<p style=\"text-align: center;\"> </p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ullamcorper, leo at convallis cursus, mauris lectus congue est, ut condimentum felis urna quis magna. Cras consectetur enim lorem, vitae efficitur elit mollis sit amet. Quisque egestas pulvinar neque, molestie posuere risus iaculis in. In massa velit, elementum eu velit eget, consectetur rutrum ipsum. Vestibulum lectus est, pharetra eget nunc nec, euismod hendrerit augue. Integer vitae risus nec neque volutpat sagittis et et elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent nec ligula pulvinar, tempor sem vel, cursus lectus. Duis euismod luctus arcu, sagittis malesuada risus tincidunt vitae. Vivamus malesuada posuere lacus sit amet pretium. Cras pharetra mauris id leo consectetur suscipit. Donec diam purus, semper eget vehicula quis, facilisis sit amet mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n<p>Maecenas eget dolor venenatis est suscipit vestibulum. Sed sem est, efficitur eget malesuada quis, sollicitudin a sem. Integer feugiat quam a lectus vestibulum iaculis. Proin vel felis a turpis pulvinar vestibulum sit amet in orci. Nulla vehicula dui lacus. Donec laoreet nibh a urna volutpat, eu accumsan neque semper. Nam eu quam quis neque sagittis luctus sed ut neque. Nunc magna erat, sollicitudin a porttitor id, posuere sit amet nunc. Cras tincidunt bibendum luctus. Suspendisse mattis facilisis vestibulum. Curabitur tincidunt vitae erat a eleifend. Quisque lectus velit, interdum vitae orci id, sodales cursus lectus. Sed quis erat ante.</p>\n<p> </p>\n<p> </p>\n<p><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzNzVd-WillWild-Granitepink2.jpg\" alt=\"WillWild Granitepink2\" width=\"600\" height=\"375\">C</p>\n<p> </p>\n<p> </p>\n<p> </p>\n<p>ras molestie finibus lacus, eu viverra ex sollicitudin vel. Donec lorem nisl, commodo eget tortor sed, tempus malesuada tellus. Sed elit lorem, volutpat eget quam blandit, auctor viverra nibh. Phasellus ac orci aliquam, viverra nibh sit amet, imperdiet urna. Maecenas feugiat purus felis, sed sagittis nunc rutrum ac. Integer molestie, orci eget laoreet faucibus, enim ante porttitor nibh, id ullamcorper ipsum lacus eu diam. Donec ultrices vulputate mauris id tincidunt. Suspendisse diam arcu, imperdiet id laoreet et, iaculis eget nisi. Maecenas finibus dolor vulputate pretium dapibus. Pellentesque at aliquam nisl, vitae interdum libero. Aenean auctor, nisi quis consequat vehicula, metus libero ultrices ligula, vel pulvinar velit odio et ligula. Cras ut dui et turpis dapibus interdum nec sit amet orci. Pellentesque bibendum feugiat ultrices. Vestibulum at augue ac elit ullamcorper eleifend. Praesent sed enim quis odio efficitur porttitor. Praesent rutrum non est vitae luctus.</p>\n<p>Etiam non vehicula tortor. Integer elementum consequat vulputate. Aliquam erat volutpat. Mauris lacinia turpis ut ornare sagittis. Praesent sollicitudin odio id nibh ornare vestibulum. Curabitur pharetra suscipit metus ut iaculis. Curabitur placerat mi ut purus ullamcorper, in gravida augue consectetur. Curabitur purus diam, viverra id ante tincidunt, lacinia tincidunt lectus. Aenean dictum metus dui, vel rutrum lorem pretium a. Ut non aliquam augue. Phasellus a leo ut erat ultricies scelerisque.</p>\n<p>Duis quis urna vitae tortor euismod posuere. Mauris molestie, turpis ultricies porttitor rhoncus, justo massa auctor arcu, ac auctor enim lorem a arcu. Nulla bibendum augue sit amet vestibulum egestas. Praesent non vehicula enim. Vivamus lacus purus, mollis sit amet venenatis eget, aliquam vel neque. Nunc a facilisis lectus. Ut blandit molestie libero. Curabitur at enim quis lacus pulvinar blandit. Etiam auctor lorem in posuere pharetra. Nulla sapien sem, sagittis ultricies eros et, sollicitudin dignissim ipsum.</p>',NULL,NULL,1,1,2,0,0,NULL,'Inherit','Inherit',7),
	(120,13,5,1,1,1,'UserDefinedForm','2015-12-07 10:41:30','2015-11-27 10:27:31','contact','CONTACT',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(121,13,6,1,1,1,'UserDefinedForm','2015-12-07 10:46:00','2015-11-27 10:27:31','contact','CONTACT',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(122,13,7,1,1,1,'UserDefinedForm','2015-12-07 10:46:18','2015-11-27 10:27:31','contact','CONTACT',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(123,13,8,1,1,1,'UserDefinedForm','2015-12-07 10:46:40','2015-11-27 10:27:31','contact','CONTACT',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(124,13,9,1,1,1,'UserDefinedForm','2015-12-07 10:47:44','2015-11-27 10:27:31','contact','CONTACT',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(125,13,10,1,1,1,'UserDefinedForm','2015-12-07 10:47:53','2015-11-27 10:27:31','contact','CONTACT',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(126,13,11,1,1,1,'UserDefinedForm','2015-12-07 10:48:11','2015-11-27 10:27:31','contact','CONTACT',NULL,NULL,NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(127,13,12,1,1,1,'UserDefinedForm','2015-12-08 09:36:49','2015-11-27 10:27:31','contact','CONTACT',NULL,'<p>$UserdefinedForm</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(128,26,10,1,1,1,'BlogPost','2015-12-08 11:29:45','2015-12-02 17:05:47','extra-cat-post','Extra cat post',NULL,'<p> </p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque neque neque. Sed ac bibendum neque. Morbi vitae accumsan leo, sed feugiat ante. Nullam risus magna, ultricies quis faucibus in, aliquam a odio. Sed nunc orci, cursus sed hendrerit vitae, vulputate at magna. Sed tempor posuere magna, ut fringilla massa lacinia nec. Etiam tellus tortor, efficitur vitae massa sed, laoreet euismod velit. Etiam at arcu vulputate, lobortis justo eget, lobortis massa. Nulla eget pharetra turpis. Aenean at turpis et ligula aliquam fringilla. Integer efficitur gravida lacus, ac posuere massa dapibus at. Vivamus non facilisis nisi, vel eleifend dolor. Vestibulum volutpat dolor lectus, a luctus dui interdum ullamcorper. Praesent nec efficitur sapien.</p>\n<p> </p>\n<h4 style=\"text-align: center;\"><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzODld-Screen-Shot-2015-11-18-at-1.10.12-pm.png\" alt=\"Screen Shot 2015 11 18 at 1.10.12 pm\" width=\"600\" height=\"389\"><strong>Some of James work</strong></h4>\n<p>Cras ultrices facilisis turpis non molestie. Sed vel posuere dolor, a euismod metus. Integer vitae est nunc. Fusce augue sem, fringilla et nulla in, interdum pellentesque lorem. Maecenas euismod et orci sit amet placerat. Curabitur at arcu volutpat, imperdiet ante quis, fringilla lorem. Nullam sagittis, libero sit amet rhoncus sollicitudin, ante arcu semper est, vel fringilla tellus eros et nisi. Proin sollicitudin lacinia neque, non congue elit ornare eget. Vestibulum convallis volutpat tincidunt. Etiam ornare mollis rhoncus. Sed blandit ac sem at mattis. Duis congue nec nibh in congue. Vivamus nunc lorem, viverra sit amet enim vitae, lobortis fringilla ex. Nulla vehicula dapibus urna et efficitur.</p>\n<p> </p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',12),
	(129,26,11,1,1,1,'BlogPost','2015-12-08 11:31:49','2015-12-02 17:05:47','extra-cat-post','Cat Post 1',NULL,'<p> </p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque neque neque. Sed ac bibendum neque. Morbi vitae accumsan leo, sed feugiat ante. Nullam risus magna, ultricies quis faucibus in, aliquam a odio. Sed nunc orci, cursus sed hendrerit vitae, vulputate at magna. Sed tempor posuere magna, ut fringilla massa lacinia nec. Etiam tellus tortor, efficitur vitae massa sed, laoreet euismod velit. Etiam at arcu vulputate, lobortis justo eget, lobortis massa. Nulla eget pharetra turpis. Aenean at turpis et ligula aliquam fringilla. Integer efficitur gravida lacus, ac posuere massa dapibus at. Vivamus non facilisis nisi, vel eleifend dolor. Vestibulum volutpat dolor lectus, a luctus dui interdum ullamcorper. Praesent nec efficitur sapien.</p>\n<p> </p>\n<h4 style=\"text-align: center;\"><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzODld-Screen-Shot-2015-11-18-at-1.10.12-pm.png\" alt=\"Screen Shot 2015 11 18 at 1.10.12 pm\" width=\"600\" height=\"389\"><strong>Some of James work</strong></h4>\n<p>Cras ultrices facilisis turpis non molestie. Sed vel posuere dolor, a euismod metus. Integer vitae est nunc. Fusce augue sem, fringilla et nulla in, interdum pellentesque lorem. Maecenas euismod et orci sit amet placerat. Curabitur at arcu volutpat, imperdiet ante quis, fringilla lorem. Nullam sagittis, libero sit amet rhoncus sollicitudin, ante arcu semper est, vel fringilla tellus eros et nisi. Proin sollicitudin lacinia neque, non congue elit ornare eget. Vestibulum convallis volutpat tincidunt. Etiam ornare mollis rhoncus. Sed blandit ac sem at mattis. Duis congue nec nibh in congue. Vivamus nunc lorem, viverra sit amet enim vitae, lobortis fringilla ex. Nulla vehicula dapibus urna et efficitur.</p>\n<p> </p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',12),
	(130,24,5,1,1,1,'BlogPost','2015-12-08 11:32:43','2015-12-02 15:52:58','guinea-pigs-are-the-best','Guinea Pig Post 1',NULL,'<p>Its a pig in a car.</p>\n<p> </p>\n<p>This is the best thing ever.</p>',NULL,NULL,0,1,3,0,0,NULL,'Inherit','Inherit',12),
	(131,23,5,1,1,1,'BlogPost','2015-12-08 11:33:53','2015-12-02 15:52:05','why-i-love-dogs','Dog Post 1',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,2,0,0,NULL,'Inherit','Inherit',12),
	(132,22,5,1,1,1,'BlogPost','2015-12-08 11:34:28','2015-12-02 15:51:18','why-i-love-cats','Cat Post 2',NULL,'<p>Cats are great</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',12),
	(133,27,1,0,1,0,'BlogPost','2015-12-08 11:34:41','2015-12-08 11:34:41','new-blog-post','New Blog Post',NULL,NULL,NULL,NULL,0,1,5,0,0,NULL,'Inherit','Inherit',12),
	(134,27,2,0,1,0,'BlogPost','2015-12-08 11:35:38','2015-12-08 11:34:41','dog-post-2','Dog Post 2',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,5,0,0,NULL,'Inherit','Inherit',12),
	(135,27,3,1,1,1,'BlogPost','2015-12-08 11:35:38','2015-12-08 11:34:41','dog-post-2','Dog Post 2',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,5,0,0,NULL,'Inherit','Inherit',12),
	(136,27,4,1,1,1,'BlogPost','2015-12-08 11:36:11','2015-12-08 11:34:41','dog-post-2','Dog Post 2',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,5,0,0,NULL,'Inherit','Inherit',12),
	(137,28,1,0,1,0,'BlogPost','2015-12-08 11:37:43','2015-12-08 11:37:43','new-blog-post','New Blog Post',NULL,NULL,NULL,NULL,0,1,6,0,0,NULL,'Inherit','Inherit',12),
	(138,28,2,0,1,0,'BlogPost','2015-12-08 11:39:03','2015-12-08 11:37:43','armidillo','Armadillo',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,6,0,0,NULL,'Inherit','Inherit',12),
	(139,28,3,0,1,0,'BlogPost','2015-12-08 11:39:15','2015-12-08 11:37:43','armidillo','Armadillo',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,6,0,0,NULL,'Inherit','Inherit',12),
	(140,28,4,1,1,1,'BlogPost','2015-12-08 11:39:15','2015-12-08 11:37:43','armidillo','Armadillo',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,6,0,0,NULL,'Inherit','Inherit',12),
	(141,29,1,0,1,0,'BlogPost','2015-12-08 11:40:50','2015-12-08 11:40:50','new-blog-post','New Blog Post',NULL,NULL,NULL,NULL,0,1,7,0,0,NULL,'Inherit','Inherit',12),
	(142,29,2,0,1,0,'BlogPost','2015-12-08 11:41:34','2015-12-08 11:40:50','hedghog-post','Hedghog Post',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p> </p>',NULL,NULL,0,1,7,0,0,NULL,'Inherit','Inherit',12),
	(143,29,3,0,1,0,'BlogPost','2015-12-08 11:41:43','2015-12-08 11:40:50','hedghog-post','Hedghog Post',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p> </p>',NULL,NULL,0,1,7,0,0,NULL,'Inherit','Inherit',12),
	(144,29,4,1,1,1,'BlogPost','2015-12-08 11:41:43','2015-12-08 11:40:50','hedghog-post','Hedghog Post',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p> </p>',NULL,NULL,0,1,7,0,0,NULL,'Inherit','Inherit',12),
	(145,30,1,0,1,0,'BlogPost','2015-12-08 11:44:27','2015-12-08 11:44:27','new-blog-post','New Blog Post',NULL,NULL,NULL,NULL,0,1,8,0,0,NULL,'Inherit','Inherit',12),
	(146,6,21,0,1,0,'HomePage','2015-12-08 11:48:35','2015-11-27 09:27:29','home','HOME',NULL,'<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',0),
	(147,6,22,1,1,1,'HomePage','2015-12-08 11:48:46','2015-11-27 09:27:29','home','HOME',NULL,'<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',0),
	(148,31,1,0,1,0,'TextSlice','2015-12-08 12:47:51','2015-12-08 12:47:51','new-text-slice','New Text Slice',NULL,NULL,NULL,NULL,0,1,9,0,0,NULL,'Inherit','Inherit',0),
	(149,31,2,1,1,1,'TextSlice','2015-12-08 12:48:23','2015-12-08 12:47:51','contact-slice','Contact Me',NULL,'<p>khjfkhufdghkufidfbi bdfoubdfijdf</p>',NULL,NULL,0,1,9,0,0,NULL,'Inherit','Inherit',0),
	(150,13,13,1,1,1,'ContactPage','2015-12-08 13:41:53','2015-11-27 10:27:31','contact','CONTACT',NULL,'<p>$UserdefinedForm</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(151,13,14,1,1,1,'ContactPage','2015-12-08 13:42:46','2015-11-27 10:27:31','contact','CONTACT',NULL,'<p>$UserdefinedForm</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(152,13,15,1,1,1,'ContactPage','2015-12-08 13:57:15','2015-11-27 10:27:31','contact','CONTACT',NULL,'<p>$UserdefinedForm</p>',NULL,NULL,1,1,4,0,0,NULL,'Inherit','Inherit',0),
	(153,29,5,0,1,0,'BlogPost','2015-12-08 14:21:30','2015-12-08 11:40:50','hedghog-post','Wellington Night',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p> </p>',NULL,NULL,0,1,7,0,0,NULL,'Inherit','Inherit',12),
	(154,29,6,1,1,1,'BlogPost','2015-12-08 14:21:42','2015-12-08 11:40:50','hedghog-post','Wellington Night',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p> </p>',NULL,NULL,0,1,7,0,0,NULL,'Inherit','Inherit',12),
	(155,28,5,1,1,1,'BlogPost','2015-12-08 14:22:50','2015-12-08 11:37:43','armidillo','Wellington Lights',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,6,0,0,NULL,'Inherit','Inherit',12),
	(156,27,5,1,1,1,'BlogPost','2015-12-08 14:23:43','2015-12-08 11:34:41','dog-post-2','Traffic',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,5,0,0,NULL,'Inherit','Inherit',12),
	(157,26,12,1,1,1,'BlogPost','2015-12-08 14:25:17','2015-12-02 17:05:47','extra-cat-post','Sunny Day',NULL,'<p> </p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin scelerisque neque neque. Sed ac bibendum neque. Morbi vitae accumsan leo, sed feugiat ante. Nullam risus magna, ultricies quis faucibus in, aliquam a odio. Sed nunc orci, cursus sed hendrerit vitae, vulputate at magna. Sed tempor posuere magna, ut fringilla massa lacinia nec. Etiam tellus tortor, efficitur vitae massa sed, laoreet euismod velit. Etiam at arcu vulputate, lobortis justo eget, lobortis massa. Nulla eget pharetra turpis. Aenean at turpis et ligula aliquam fringilla. Integer efficitur gravida lacus, ac posuere massa dapibus at. Vivamus non facilisis nisi, vel eleifend dolor. Vestibulum volutpat dolor lectus, a luctus dui interdum ullamcorper. Praesent nec efficitur sapien.</p>\n<p> </p>\n<h4 style=\"text-align: center;\"><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCwzODld-Screen-Shot-2015-11-18-at-1.10.12-pm.png\" alt=\"Screen Shot 2015 11 18 at 1.10.12 pm\" width=\"600\" height=\"389\"><strong>Some of James work</strong></h4>\n<p>Cras ultrices facilisis turpis non molestie. Sed vel posuere dolor, a euismod metus. Integer vitae est nunc. Fusce augue sem, fringilla et nulla in, interdum pellentesque lorem. Maecenas euismod et orci sit amet placerat. Curabitur at arcu volutpat, imperdiet ante quis, fringilla lorem. Nullam sagittis, libero sit amet rhoncus sollicitudin, ante arcu semper est, vel fringilla tellus eros et nisi. Proin sollicitudin lacinia neque, non congue elit ornare eget. Vestibulum convallis volutpat tincidunt. Etiam ornare mollis rhoncus. Sed blandit ac sem at mattis. Duis congue nec nibh in congue. Vivamus nunc lorem, viverra sit amet enim vitae, lobortis fringilla ex. Nulla vehicula dapibus urna et efficitur.</p>\n<p> </p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',12),
	(158,24,6,1,1,1,'BlogPost','2015-12-08 14:26:28','2015-12-02 15:52:58','guinea-pigs-are-the-best','Another Lights Post',NULL,'<p>Its a pig in a car.</p>\n<p> </p>\n<p>This is the best thing ever.</p>',NULL,NULL,0,1,3,0,0,NULL,'Inherit','Inherit',12),
	(159,24,7,1,1,1,'BlogPost','2015-12-08 14:26:43','2015-12-02 15:52:58','guinea-pigs-are-the-best','Another Lights Post',NULL,'<p>Its a pig in a car.</p>\n<p> </p>\n<p>This is the best thing ever.</p>',NULL,NULL,0,1,3,0,0,NULL,'Inherit','Inherit',12),
	(160,22,6,1,1,1,'BlogPost','2015-12-08 14:27:41','2015-12-02 15:51:18','why-i-love-cats','Example Post',NULL,'<p>Aenean pellentesque enim et eros luctus iaculis. Praesent porta varius massa non iaculis. Suspendisse pulvinar id massa vel condimentum. Suspendisse urna lacus, auctor eu velit sed, rutrum dictum sapien. Integer massa augue, malesuada sit amet tortor eget, dapibus tristique eros. Phasellus eget bibendum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam tincidunt velit accumsan leo vulputate, id varius dolor placerat. Proin quis tellus mi. Integer et augue at orci luctus ullamcorper.</p>\n<p>Aenean feugiat, lorem sed luctus semper, augue ligula ullamcorper nunc, vel elementum ipsum felis in metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet consectetur neque, at mattis velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam condimentum turpis a efficitur auctor. Proin hendrerit imperdiet mi eget posuere. Fusce rhoncus, dui et gravida pulvinar, ligula quam scelerisque ante, sed fermentum turpis sem ut felis. Ut fermentum leo vel dolor convallis semper. Phasellus ornare scelerisque hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut lobortis nec felis nec sodales. Sed at nisl justo. Vivamus mauris tellus, gravida vitae dignissim eget, rutrum eget purus. Duis feugiat, velit vitae dictum lacinia, ante erat posuere justo, a iaculis justo nisi sed odio.</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',12),
	(161,22,7,1,1,1,'BlogPost','2015-12-08 14:28:06','2015-12-02 15:51:18','why-i-love-cats','Example Post',NULL,'<p>Aenean pellentesque enim et eros luctus iaculis. Praesent porta varius massa non iaculis. Suspendisse pulvinar id massa vel condimentum. Suspendisse urna lacus, auctor eu velit sed, rutrum dictum sapien. Integer massa augue, malesuada sit amet tortor eget, dapibus tristique eros. Phasellus eget bibendum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam tincidunt velit accumsan leo vulputate, id varius dolor placerat. Proin quis tellus mi. Integer et augue at orci luctus ullamcorper.</p>\n<p> </p>\n<h2><strong>Heading</strong></h2>\n<p>Aenean feugiat, lorem sed luctus semper, augue ligula ullamcorper nunc, vel elementum ipsum felis in metus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet consectetur neque, at mattis velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam condimentum turpis a efficitur auctor. Proin hendrerit imperdiet mi eget posuere. Fusce rhoncus, dui et gravida pulvinar, ligula quam scelerisque ante, sed fermentum turpis sem ut felis. Ut fermentum leo vel dolor convallis semper. Phasellus ornare scelerisque hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut lobortis nec felis nec sodales. Sed at nisl justo. Vivamus mauris tellus, gravida vitae dignissim eget, rutrum eget purus. Duis feugiat, velit vitae dictum lacinia, ante erat posuere justo, a iaculis justo nisi sed odio.</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',12),
	(162,23,6,1,1,1,'BlogPost','2015-12-08 14:29:03','2015-12-02 15:52:05','why-i-love-dogs','Example Post Two',NULL,'<h1>Heading</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<h1><strong>Heading</strong></h1>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<h4>Heading</h4>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,2,0,0,NULL,'Inherit','Inherit',12),
	(163,24,8,1,1,1,'BlogPost','2015-12-08 14:29:36','2015-12-02 15:52:58','guinea-pigs-are-the-best','Another Lights Post',NULL,NULL,NULL,NULL,0,1,7,0,0,NULL,'Inherit','Inherit',12),
	(164,23,7,1,1,1,'BlogPost','2015-12-08 14:30:05','2015-12-02 15:52:05','why-i-love-dogs','Example Post Two',NULL,'<h1>Heading</h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<h1><strong>Heading</strong></h1>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<h4>Heading</h4>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',12),
	(165,31,3,1,1,1,'TextSlice','2015-12-08 14:35:28','2015-12-08 12:47:51','contact-slice','Contact Me',NULL,'<p>khjfkhufdghkufidfbi bdfoubdfijdf</p>',NULL,NULL,0,1,9,0,0,NULL,'Inherit','Inherit',0),
	(166,31,4,1,1,1,'TextSlice','2015-12-08 14:36:42','2015-12-08 12:47:51','contact-slice','Contact Me',NULL,'<p style=\"text-align: center;\">I\'m available for ....... You can email me on ...... or call me on ....... My studio is located in ...... and i\'d love to hear from you</p>',NULL,NULL,0,1,9,0,0,NULL,'Inherit','Inherit',0),
	(167,32,1,0,1,0,'TextSlice','2015-12-08 14:37:51','2015-12-08 14:37:51','new-text-slice','New Text Slice',NULL,NULL,NULL,NULL,0,1,10,0,0,NULL,'Inherit','Inherit',0),
	(168,32,2,0,1,0,'TextSlice','2015-12-08 14:38:23','2015-12-08 14:37:51','my-awards','My Awards',NULL,'<p>Here are some awards I have</p>\n<p>Aenean pellentesque enim et eros luctus iaculis. Praesent porta varius massa non iaculis. Suspendisse pulvinar id massa vel condimentum. Suspendisse urna lacus, auctor eu velit sed, rutrum dictum sapien. Integer massa augue, malesuada sit amet tortor eget, dapibus tristique eros. Phasellus eget bibendum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam tincidunt velit accumsan leo vulputate, id varius dolor placerat. Proin quis tellus mi. Integer et augue at orci luctus ullamcorper.</p>\n<p> </p>',NULL,NULL,0,1,10,0,0,NULL,'Inherit','Inherit',0),
	(169,32,3,1,1,1,'TextSlice','2015-12-08 14:38:57','2015-12-08 14:37:51','my-awards','My Awards',NULL,'<p>Here are some awards I have</p>\n<p>Aenean pellentesque enim et eros luctus iaculis. Praesent porta varius massa non iaculis. Suspendisse pulvinar id massa vel condimentum. Suspendisse urna lacus, auctor eu velit sed, rutrum dictum sapien. Integer massa augue, malesuada sit amet tortor eget, dapibus tristique eros. Phasellus eget bibendum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam tincidunt velit accumsan leo vulputate, id varius dolor placerat. Proin quis tellus mi. Integer et augue at orci luctus ullamcorper.</p>\n<p> </p>',NULL,NULL,0,1,10,0,0,NULL,'Inherit','Inherit',0),
	(170,6,23,1,1,1,'HomePage','2015-12-08 14:39:51','2015-11-27 09:27:29','home','HOME',NULL,'<p style=\"text-align: center;\">A minimal theme allowing for functional and stylish design, paired with the exceptional customisation provided by SilverStripe.</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',0),
	(171,23,8,1,1,1,'BlogPost','2015-12-08 14:44:05','2015-12-02 15:52:05','why-i-love-dogs','Example Post Two',NULL,'<h1><strong>Heading</strong></h1>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<h1><strong>Heading</strong></h1>\n<p>Vivamus gravida diam eu luctus egestas. Nam congue tempus nisi, in malesuada est vehicula id. Nulla sed commodo odio. Maecenas quam nunc, convallis eget tempor non, suscipit eget est. Etiam placerat posuere ipsum, sed volutpat justo facilisis in. In at fermentum purus. Ut iaculis pulvinar quam id ullamcorper. Duis interdum id turpis eget porta. Nam sit amet fringilla metus, eu semper tellus. Pellentesque non lacus finibus, ultricies dolor id, mattis lacus. Nulla sodales augue vitae tristique porta. Phasellus pellentesque, orci eu vulputate sodales, urna tellus varius dui, id volutpat urna elit ut augue. Quisque facilisis elit eget magna elementum, at porta leo blandit. Vivamus accumsan venenatis erat in dapibus.</p>\n<h4>Heading</h4>\n<p>Proin sit amet neque eu tortor ultricies pellentesque. Vestibulum nec tellus urna. Cras vulputate, massa eu eleifend ultricies, erat erat dapibus turpis, tincidunt euismod enim arcu nec tortor. Sed dolor felis, dapibus quis semper sit amet, placerat a risus. Quisque dapibus lectus a elit suscipit consectetur. Vivamus sit amet est ex. Quisque ut vehicula tellus, quis iaculis libero. Nunc a neque ut leo faucibus lobortis. Etiam et dapibus leo. Suspendisse eleifend posuere odio a pellentesque. In pellentesque bibendum nunc ac dignissim.</p>',NULL,NULL,0,1,1,0,0,NULL,'Inherit','Inherit',12),
	(172,32,4,0,1,0,'TextSlice','2015-12-08 14:46:01','2015-12-08 14:37:51','my-awards','My Awards',NULL,'<p>Here are some awards I have</p>\n<p>Aenean pellentesque enim et eros luctus iaculis. Praesent porta varius massa non iaculis. Suspendisse pulvinar id massa vel condimentum. Suspendisse urna lacus, auctor eu velit sed, rutrum dictum sapien. Integer massa augue, malesuada sit amet tortor eget, dapibus tristique eros. Phasellus eget bibendum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam tincidunt velit accumsan leo vulputate, id varius dolor placerat. Proin quis tellus mi. Integer et augue at orci luctus ullamcorper.</p>\n<p> </p>',NULL,NULL,0,1,8,0,0,NULL,'Inherit','Inherit',0),
	(173,32,5,1,1,1,'TextSlice','2015-12-08 14:46:39','2015-12-08 14:37:51','my-awards','My Awards',NULL,'<p>Here are some awards I have</p>\n<p>Aenean pellentesque enim et eros luctus iaculis. Praesent porta varius massa non iaculis. Suspendisse pulvinar id massa vel condimentum. Suspendisse urna lacus, auctor eu velit sed, rutrum dictum sapien. Integer massa augue, malesuada sit amet tortor eget, dapibus tristique eros. Phasellus eget bibendum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam tincidunt velit accumsan leo vulputate, id varius dolor placerat. Proin quis tellus mi. Integer et augue at orci luctus ullamcorper.</p>\n<p> </p>',NULL,NULL,0,1,8,0,0,NULL,'Inherit','Inherit',0),
	(174,32,6,1,1,1,'TextSlice','2015-12-08 14:50:03','2015-12-08 14:37:51','my-awards','My Awards',NULL,'<p>Here are some awards I have</p>\n<p>Aenean pellentesque enim et eros luctus iaculis. Praesent porta varius massa non iaculis. Suspendisse pulvinar id massa vel condimentum. Suspendisse urna lacus, auctor eu velit sed, rutrum dictum sapien. Integer massa augue, malesuada sit amet tortor eget, dapibus tristique eros. Phasellus eget bibendum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam tincidunt velit accumsan leo vulputate, id varius dolor placerat. Proin quis tellus mi. Integer et augue at orci luctus ullamcorper.</p>\n<p> </p>',NULL,NULL,0,1,8,0,0,NULL,'Inherit','Inherit',0),
	(175,32,7,1,1,1,'TextSlice','2015-12-08 14:51:05','2015-12-08 14:37:51','my-awards','My Awards',NULL,'<p>Here are some awards I have</p>\n<p>Aenean pellentesque enim et eros luctus iaculis. Praesent porta varius massa non iaculis. Suspendisse pulvinar id massa vel condimentum. Suspendisse urna lacus, auctor eu velit sed, rutrum dictum sapien. Integer massa augue, malesuada sit amet tortor eget, dapibus tristique eros. Phasellus eget bibendum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam tincidunt velit accumsan leo vulputate, id varius dolor placerat. Proin quis tellus mi. Integer et augue at orci luctus ullamcorper.</p>\n<p> </p>',NULL,NULL,0,1,8,0,0,NULL,'Inherit','Inherit',0),
	(176,7,8,0,1,0,'Gallery','2015-12-08 14:51:41','2015-11-27 09:30:04','new-gallery','New Gallery','WORK',NULL,NULL,NULL,1,1,3,0,0,NULL,'Inherit','Inherit',0),
	(177,33,1,0,1,0,'TextSlice','2015-12-08 14:52:19','2015-12-08 14:52:19','new-text-slice','New Text Slice',NULL,NULL,NULL,NULL,0,1,10,0,0,NULL,'Inherit','Inherit',0),
	(178,33,2,1,1,1,'TextSlice','2015-12-08 14:52:57','2015-12-08 14:52:19','this-will-be-a-text-slider','This will be a text slider',NULL,NULL,NULL,NULL,0,1,10,0,0,NULL,'Inherit','Inherit',0),
	(179,33,3,1,1,1,'TextSlice','2015-12-08 14:54:41','2015-12-08 14:52:19','this-will-be-a-text-slider','This will be a text slider',NULL,NULL,NULL,NULL,0,1,10,0,0,NULL,'Inherit','Inherit',0),
	(180,33,4,1,1,1,'TextSlice','2015-12-08 14:55:26','2015-12-08 14:52:19','this-will-be-a-text-slider','This will be a text slider',NULL,NULL,NULL,NULL,0,1,10,0,0,NULL,'Inherit','Inherit',0),
	(181,33,5,1,1,1,'TextSlice','2015-12-08 14:56:08','2015-12-08 14:52:19','this-will-be-a-text-slider','This will be a text slider',NULL,NULL,NULL,NULL,0,1,10,0,0,NULL,'Inherit','Inherit',0),
	(182,33,6,1,1,1,'TextSlice','2015-12-08 15:00:48','2015-12-08 14:52:19','this-will-be-a-text-slider','This will be a text slider',NULL,NULL,NULL,NULL,0,1,10,0,0,NULL,'Inherit','Inherit',0),
	(183,33,7,0,1,0,'TextSlice','2015-12-08 15:01:25','2015-12-08 14:52:19','this-will-be-a-text-slider','This will be a text slider',NULL,NULL,NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',0),
	(184,32,8,0,1,0,'TextSlice','2015-12-08 15:02:13','2015-12-08 14:37:51','my-awards','My Awards',NULL,'<p>Here are some awards I have</p>\n<p>Aenean pellentesque enim et eros luctus iaculis. Praesent porta varius massa non iaculis. Suspendisse pulvinar id massa vel condimentum. Suspendisse urna lacus, auctor eu velit sed, rutrum dictum sapien. Integer massa augue, malesuada sit amet tortor eget, dapibus tristique eros. Phasellus eget bibendum tellus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam tincidunt velit accumsan leo vulputate, id varius dolor placerat. Proin quis tellus mi. Integer et augue at orci luctus ullamcorper.</p>\n<p> </p>',NULL,NULL,0,1,4,0,0,NULL,'Inherit','Inherit',0),
	(185,33,8,0,1,0,'TextSlice','2015-12-08 15:02:15','2015-12-08 14:52:19','this-will-be-a-text-slider','This will be a text slider',NULL,NULL,NULL,NULL,0,1,10,0,0,NULL,'Inherit','Inherit',0),
	(186,13,16,1,1,1,'ContactPage','2015-12-09 10:10:52','2015-11-27 10:27:31','contact','CONTACT',NULL,'<p>$UserdefinedForm</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(187,13,17,1,1,1,'ContactPage','2015-12-09 10:15:16','2015-11-27 10:27:31','contact','CONTACT',NULL,'<p>$UserdefinedForm</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(188,13,18,1,1,1,'ContactPage','2015-12-09 15:23:18','2015-11-27 10:27:31','contact','CONTACT',NULL,'<p>$UserdefinedForm</p>',NULL,NULL,1,1,6,0,0,NULL,'Inherit','Inherit',0),
	(189,29,7,1,1,1,'BlogPost','2015-12-09 15:30:43','2015-12-08 11:40:50','hedghog-post','Wellington Night',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur ut lectus et euismod. Etiam tristique, magna at pretium ultricies, neque leo euismod est, a faucibus elit erat sit amet neque. Proin eget euismod ex. Duis sed lectus varius, tristique turpis sed, dictum sapien. Etiam quis auctor magna. Suspendisse potenti. Vestibulum facilisis ultricies eleifend. Duis at ex mauris. Phasellus blandit ac mauris vel posuere. Integer mollis, elit nec dignissim ultricies, dui ligula euismod arcu, et rhoncus tortor diam non mauris. Cras sagittis, velit et congue condimentum, dolor risus varius urna, vel ornare lacus eros in purus. Fusce ultrices mollis elit ac dictum.</p>\n<p>Proin tincidunt elit et leo viverra, id venenatis ex lobortis. Donec at ex blandit, interdum justo quis, dignissim erat. Mauris a libero erat. Cras aliquam risus sed urna dictum, ut malesuada elit blandit. Quisque pellentesque, tellus eget lacinia faucibus, erat nunc porttitor magna, vitae pulvinar sapien neque sed nisl. Donec hendrerit dolor imperdiet, cursus arcu in, volutpat lacus. Mauris orci ligula, suscipit in dictum quis, molestie eget felis. Mauris lacinia vitae velit et fringilla. Vestibulum feugiat, felis id ornare fermentum, quam turpis porttitor libero, a laoreet lacus libero tempor odio. Maecenas imperdiet, magna ut lobortis posuere, libero odio luctus massa, sed gravida turpis massa non est. Sed euismod tortor ac augue efficitur, id elementum justo pulvinar. Proin efficitur vulputate justo, a scelerisque odio dictum ac. Vestibulum tempus odio et ante porttitor, at dapibus sem dictum.</p>\n<p>Pellentesque at diam egestas, congue nisi ut, fermentum lectus. Nunc ac orci ornare, hendrerit eros at, euismod turpis. Pellentesque lacus ex, fermentum a ipsum ut, sodales pellentesque ex. Morbi in augue est. Sed sed arcu urna. Nunc consequat consequat dignissim. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc purus metus, cursus quis lacus at, imperdiet porttitor risus. Fusce interdum erat et facilisis euismod. Vivamus in mauris et nisl lacinia tempor. Phasellus eleifend sit amet orci ut vestibulum.</p>\n<p> </p>',NULL,NULL,0,1,5,0,0,NULL,'Inherit','Inherit',12);

/*!40000 ALTER TABLE `SiteTree_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SiteTree_ViewerGroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SiteTree_ViewerGroups`;

CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SubmittedFileField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SubmittedFileField`;

CREATE TABLE `SubmittedFileField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UploadedFileID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `UploadedFileID` (`UploadedFileID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table SubmittedForm
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SubmittedForm`;

CREATE TABLE `SubmittedForm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SubmittedForm') DEFAULT 'SubmittedForm',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SubmittedByID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SubmittedByID` (`SubmittedByID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `SubmittedForm` WRITE;
/*!40000 ALTER TABLE `SubmittedForm` DISABLE KEYS */;

INSERT INTO `SubmittedForm` (`ID`, `ClassName`, `LastEdited`, `Created`, `SubmittedByID`, `ParentID`)
VALUES
	(1,'SubmittedForm','2015-12-07 10:40:53','2015-12-07 10:40:53',1,13),
	(2,'SubmittedForm','2015-12-07 10:41:48','2015-12-07 10:41:48',1,13),
	(3,'SubmittedForm','2015-12-07 10:48:50','2015-12-07 10:48:50',1,13),
	(4,'SubmittedForm','2015-12-07 13:41:23','2015-12-07 13:41:23',0,13);

/*!40000 ALTER TABLE `SubmittedForm` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table SubmittedFormField
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SubmittedFormField`;

CREATE TABLE `SubmittedFormField` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SubmittedFormField','SubmittedFileField') DEFAULT 'SubmittedFormField',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Value` mediumtext,
  `Title` varchar(255) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `SubmittedFormField` WRITE;
/*!40000 ALTER TABLE `SubmittedFormField` DISABLE KEYS */;

INSERT INTO `SubmittedFormField` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Value`, `Title`, `ParentID`)
VALUES
	(1,'SubmittedFormField','2015-12-07 10:40:53','2015-12-07 10:40:53','EditableTextField_c92b8','Glem','Name',1),
	(2,'SubmittedFormField','2015-12-07 10:40:53','2015-12-07 10:40:53','EditableTextField_5cd04','glen@silverstripe.com','Email',1),
	(3,'SubmittedFormField','2015-12-07 10:40:53','2015-12-07 10:40:53','EditableTextField_fd940','dsijoasihodsihodsv','Message',1),
	(4,'SubmittedFormField','2015-12-07 10:41:48','2015-12-07 10:41:48','EditableTextField_c92b8','geln','Name',2),
	(5,'SubmittedFormField','2015-12-07 10:41:48','2015-12-07 10:41:48','EditableTextField_5cd04','glen@silverstripe.com','Email',2),
	(6,'SubmittedFormField','2015-12-07 10:41:48','2015-12-07 10:41:48','EditableTextField_fd940','kldfslv','Message',2),
	(7,'SubmittedFormField','2015-12-07 10:48:50','2015-12-07 10:48:50','EditableTextField_c92b8','GRFG','Name',3),
	(8,'SubmittedFormField','2015-12-07 10:48:50','2015-12-07 10:48:50','EditableTextField_5cd04','JDJ@GMAIL.COM','Email',3),
	(9,'SubmittedFormField','2015-12-07 10:48:50','2015-12-07 10:48:50','EditableTextField_fd940','HCDJKBSD','Message',3),
	(10,'SubmittedFormField','2015-12-07 13:41:23','2015-12-07 13:41:23','EditableTextField_c92b8','jess','Name',4),
	(11,'SubmittedFormField','2015-12-07 13:41:23','2015-12-07 13:41:23','EditableTextField_5cd04','glen@silverstripe.com','Email',4),
	(12,'SubmittedFormField','2015-12-07 13:41:23','2015-12-07 13:41:23','EditableTextField_fd940','asguyscahvdsguiydsf','Message',4);

/*!40000 ALTER TABLE `SubmittedFormField` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TextSlice
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TextSlice`;

CREATE TABLE `TextSlice` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BackgroundImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BackgroundImageID` (`BackgroundImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TextSlice` WRITE;
/*!40000 ALTER TABLE `TextSlice` DISABLE KEYS */;

INSERT INTO `TextSlice` (`ID`, `BackgroundImageID`)
VALUES
	(32,0),
	(31,78);

/*!40000 ALTER TABLE `TextSlice` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TextSlice_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TextSlice_Live`;

CREATE TABLE `TextSlice_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BackgroundImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BackgroundImageID` (`BackgroundImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TextSlice_Live` WRITE;
/*!40000 ALTER TABLE `TextSlice_Live` DISABLE KEYS */;

INSERT INTO `TextSlice_Live` (`ID`, `BackgroundImageID`)
VALUES
	(32,0),
	(31,78);

/*!40000 ALTER TABLE `TextSlice_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table TextSlice_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `TextSlice_versions`;

CREATE TABLE `TextSlice_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `BackgroundImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `BackgroundImageID` (`BackgroundImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `TextSlice_versions` WRITE;
/*!40000 ALTER TABLE `TextSlice_versions` DISABLE KEYS */;

INSERT INTO `TextSlice_versions` (`ID`, `RecordID`, `Version`, `BackgroundImageID`)
VALUES
	(1,31,1,0),
	(2,31,2,0),
	(3,31,3,78),
	(4,31,4,78),
	(5,32,1,0),
	(6,32,2,0),
	(7,32,3,79),
	(8,32,4,79),
	(9,32,5,81),
	(10,32,6,82),
	(11,32,7,0),
	(12,33,1,0),
	(13,33,2,0),
	(14,33,3,84),
	(15,33,4,85),
	(16,33,5,86),
	(17,33,6,87),
	(18,33,7,87),
	(19,32,8,0),
	(20,33,8,87);

/*!40000 ALTER TABLE `TextSlice_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table UserDefinedForm
# ------------------------------------------------------------

DROP TABLE IF EXISTS `UserDefinedForm`;

CREATE TABLE `UserDefinedForm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubmitButtonText` varchar(50) DEFAULT NULL,
  `ClearButtonText` varchar(50) DEFAULT NULL,
  `OnCompleteMessage` mediumtext,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `UserDefinedForm` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm` DISABLE KEYS */;

INSERT INTO `UserDefinedForm` (`ID`, `SubmitButtonText`, `ClearButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `HideFieldLabels`, `DisplayErrorMessagesAtTop`, `DisableAuthenicatedFinishAction`, `DisableCsrfSecurityToken`)
VALUES
	(13,'SEND',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,0);

/*!40000 ALTER TABLE `UserDefinedForm` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table UserDefinedForm_EmailRecipient
# ------------------------------------------------------------

DROP TABLE IF EXISTS `UserDefinedForm_EmailRecipient`;

CREATE TABLE `UserDefinedForm_EmailRecipient` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('UserDefinedForm_EmailRecipient') DEFAULT 'UserDefinedForm_EmailRecipient',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `EmailAddress` varchar(200) DEFAULT NULL,
  `EmailSubject` varchar(200) DEFAULT NULL,
  `EmailFrom` varchar(200) DEFAULT NULL,
  `EmailReplyTo` varchar(200) DEFAULT NULL,
  `EmailBody` mediumtext,
  `EmailBodyHtml` mediumtext,
  `EmailTemplate` varchar(50) DEFAULT NULL,
  `SendPlain` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFormData` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CustomRulesCondition` enum('And','Or') DEFAULT 'And',
  `FormID` int(11) NOT NULL DEFAULT '0',
  `SendEmailFromFieldID` int(11) NOT NULL DEFAULT '0',
  `SendEmailToFieldID` int(11) NOT NULL DEFAULT '0',
  `SendEmailSubjectFieldID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FormID` (`FormID`),
  KEY `SendEmailFromFieldID` (`SendEmailFromFieldID`),
  KEY `SendEmailToFieldID` (`SendEmailToFieldID`),
  KEY `SendEmailSubjectFieldID` (`SendEmailSubjectFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `UserDefinedForm_EmailRecipient` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_EmailRecipient` DISABLE KEYS */;

INSERT INTO `UserDefinedForm_EmailRecipient` (`ID`, `ClassName`, `LastEdited`, `Created`, `EmailAddress`, `EmailSubject`, `EmailFrom`, `EmailReplyTo`, `EmailBody`, `EmailBodyHtml`, `EmailTemplate`, `SendPlain`, `HideFormData`, `CustomRulesCondition`, `FormID`, `SendEmailFromFieldID`, `SendEmailToFieldID`, `SendEmailSubjectFieldID`)
VALUES
	(1,'UserDefinedForm_EmailRecipient','2015-12-02 15:56:59','2015-12-02 15:56:59','jess@silverstripe.com','Messages from Contact Page',NULL,NULL,NULL,NULL,'SubmittedFormEmail',0,0,'Or',25,0,0,0),
	(2,'UserDefinedForm_EmailRecipient','2015-12-07 10:40:31','2015-12-07 10:40:31','jess@silverstripe.com','Website Message',NULL,NULL,NULL,NULL,'SubmittedFormEmail',0,0,'Or',13,0,0,0);

/*!40000 ALTER TABLE `UserDefinedForm_EmailRecipient` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table UserDefinedForm_EmailRecipientCondition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `UserDefinedForm_EmailRecipientCondition`;

CREATE TABLE `UserDefinedForm_EmailRecipientCondition` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('UserDefinedForm_EmailRecipientCondition') DEFAULT 'UserDefinedForm_EmailRecipientCondition',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `ConditionOption` enum('IsBlank','IsNotBlank','Equals','NotEquals') DEFAULT 'IsBlank',
  `ConditionValue` varchar(50) DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `ConditionFieldID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ConditionFieldID` (`ConditionFieldID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table UserDefinedForm_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `UserDefinedForm_Live`;

CREATE TABLE `UserDefinedForm_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubmitButtonText` varchar(50) DEFAULT NULL,
  `ClearButtonText` varchar(50) DEFAULT NULL,
  `OnCompleteMessage` mediumtext,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `UserDefinedForm_Live` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_Live` DISABLE KEYS */;

INSERT INTO `UserDefinedForm_Live` (`ID`, `SubmitButtonText`, `ClearButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `HideFieldLabels`, `DisplayErrorMessagesAtTop`, `DisableAuthenicatedFinishAction`, `DisableCsrfSecurityToken`)
VALUES
	(13,'SEND',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,0);

/*!40000 ALTER TABLE `UserDefinedForm_Live` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table UserDefinedForm_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `UserDefinedForm_versions`;

CREATE TABLE `UserDefinedForm_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `SubmitButtonText` varchar(50) DEFAULT NULL,
  `ClearButtonText` varchar(50) DEFAULT NULL,
  `OnCompleteMessage` mediumtext,
  `ShowClearButton` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableSaveSubmissions` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `EnableLiveValidation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideFieldLabels` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisplayErrorMessagesAtTop` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableAuthenicatedFinishAction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisableCsrfSecurityToken` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `UserDefinedForm_versions` WRITE;
/*!40000 ALTER TABLE `UserDefinedForm_versions` DISABLE KEYS */;

INSERT INTO `UserDefinedForm_versions` (`ID`, `RecordID`, `Version`, `SubmitButtonText`, `ClearButtonText`, `OnCompleteMessage`, `ShowClearButton`, `DisableSaveSubmissions`, `EnableLiveValidation`, `HideFieldLabels`, `DisplayErrorMessagesAtTop`, `DisableAuthenicatedFinishAction`, `DisableCsrfSecurityToken`)
VALUES
	(1,13,1,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0,0,0,0),
	(2,13,2,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0,0,0,0),
	(3,13,3,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0,0,0,0),
	(4,25,1,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0,0,0,0),
	(5,25,2,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0,0,0,0),
	(6,13,4,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,0,0,0,0,0),
	(7,13,5,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,0),
	(8,13,6,NULL,NULL,'<p>Thanks, we\'ve received your submission.</p>',1,0,1,0,0,0,0),
	(9,13,7,'SAVE',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,0),
	(10,13,8,'SEND',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,0),
	(11,13,9,'SEND',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,1,0,0,0),
	(12,13,10,'SEND',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,1),
	(13,13,11,'SEND',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,0),
	(14,13,12,'SEND',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,0),
	(15,13,13,'SEND',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,0),
	(16,13,14,'SEND',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,0),
	(17,13,15,'SEND',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,0),
	(18,13,16,'SEND',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,0),
	(19,13,17,'SEND',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,0),
	(20,13,18,'SEND',NULL,'<p>Thanks, we\'ve received your submission.</p>',0,0,1,0,0,0,0);

/*!40000 ALTER TABLE `UserDefinedForm_versions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table VirtualPage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VirtualPage`;

CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table VirtualPage_Live
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VirtualPage_Live`;

CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table VirtualPage_versions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `VirtualPage_versions`;

CREATE TABLE `VirtualPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
