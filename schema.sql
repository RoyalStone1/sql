-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: virtual_library
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Stephen King','Info over Stephen KING','https://upload.wikimedia.org/wikipedia/commons/e/e3/Stephen_King%2C_Comicon.jpg'),(2,'JK Rowling','Info over JK ROWLING','https://images2.minutemediacdn.com/image/upload/c_crop,h_1382,w_2458,x_0,y_0/f_auto,q_auto,w_1100/v1554738059/shape/mentalfloss/563592-gettyimages-1067071942_0.jpg'),(3,'Ernest Hemingway','Info over Ernest HEMINGWAY','https://www.gannett-cdn.com/-mm-/c4930cebadab25f4df41c3686aa6002af842f58a/c=82-0-1582-2000/local/-/media/PalmSprings/2014/11/15/-tdsbrd01-26-2014desertsun1u00620140124imgdprimehemingway1411.jpg?width=534&height=712&fit=crop'),(4,'Dave Barry','Info over Dave BARRY','https://upload.wikimedia.org/wikipedia/commons/0/04/Dave-barry-post-hunt-2011.jpg');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `author` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `info` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'IT','Leuk boek',1,NULL,NULL),(2,'Harry Potter','Fantasie boek',2,'https://images-na.ssl-images-amazon.com/images/I/71Ui-NwYUmL.jpg','Harry Potter is een zevendelige fantasyserie geschreven door de Britse schrijfster J.K. Rowling. De boeken volgen chronologisch de puberteit en de adolescentie van leerling-tovenaar Harry Potter en zijn beste vrienden Ronald Wemel en Hermelien Griffel, met wie hij samen studeert aan Zweinsteins Hogeschool voor Hekserij en Hocus-Pocus. Het hoofdverhaal concentreert zich op Harry\'s gevecht tegen de duistere tovenaar Heer Voldemort, die Harry\'s ouders vermoordde in een poging onsterfelijkheid te verwerven en de tovergemeenschap aan zich te onderwerpen.'),(3,'Fantastic Beasts and Where to Find Them','Cool boek',2,NULL,NULL),(4,'Misery','Horror boek',1,NULL,NULL),(5,'The Killers','Eng boek',3,NULL,NULL),(6,'A Farewell to Arms','Interessant boek',3,NULL,NULL),(7,'Big Trouble','Grappig boek',4,NULL,NULL),(8,'Insane City','Gek boek',4,NULL,NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `book` int(11) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Sjoerd Roodenburg'),(2,'Arjen Pander'),(3,'Stef van Houten'),(4,'Jan Klopper'),(5,'Heleen Klopper');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `customer` int(11) NOT NULL,
  `rented` int(11) NOT NULL,
  `book` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rented`
--

DROP TABLE IF EXISTS `rented`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rented` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `customer` int(11) NOT NULL,
  `book` int(11) NOT NULL,
  `state` enum('rented','returned') NOT NULL DEFAULT 'rented',
  `rent_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `return_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `book` (`book`),
  KEY `customer` (`customer`),
  CONSTRAINT `rented_ibfk_1` FOREIGN KEY (`book`) REFERENCES `book` (`ID`),
  CONSTRAINT `rented_ibfk_2` FOREIGN KEY (`customer`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rented`
--

LOCK TABLES `rented` WRITE;
/*!40000 ALTER TABLE `rented` DISABLE KEYS */;
INSERT INTO `rented` VALUES (1,1,1,'returned','2019-10-02 11:33:25','2019-10-29 09:38:50'),(2,4,3,'rented','2019-10-02 11:33:25',NULL),(4,3,7,'rented','2019-10-02 11:33:25',NULL),(9,2,5,'rented','2019-10-02 11:33:25',NULL),(11,1,2,'rented','2019-10-02 11:33:25',NULL),(13,1,1,'returned','2019-10-02 11:37:29','2019-10-02 11:43:18'),(14,1,8,'returned','2019-10-02 14:04:54','2019-10-02 14:04:57'),(15,3,5,'returned','2019-10-02 14:06:49','2019-10-02 14:06:52'),(22,1,5,'returned','2019-10-17 09:33:54','2019-10-17 09:33:58'),(27,3,7,'returned','2019-10-29 09:39:49','2019-10-29 09:40:24'),(28,3,6,'returned','2019-10-29 10:36:47','2019-10-29 10:37:05');
/*!40000 ALTER TABLE `rented` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-30  9:15:10
