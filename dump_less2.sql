-- MySQL dump 10.13  Distrib 5.7.20, for Win32 (AMD64)
--
-- Host: localhost    Database: filmsDB
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors` (
  `actor_name` varchar(50) NOT NULL DEFAULT '',
  `awards` varchar(30) NOT NULL DEFAULT 'without awards',
  `actor_id` int(5) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES ('Leonardo DiCaprio','without awards',2),('Tom Hardy','without awards',3),('Will Poulter','without awards',4),('Chris Pratt','without awards',5),('Zoe Saldana','without awards',6),('Scarlett Johansson','without awards',7),('Morgan Freeman','without awards',8),('Sharlto Copley','without awards',9),('Dev Patel','without awards',10),('Dylan OBrien','without awards',11),('Kaya Scodelario','without awards',12),('Angelina Jolie','without awards',13),('Sharlto Copley','without awards',14),('Joaquin Phoenix','without awards',15),('Brad Pitt','without awards',16),('Shia LaBeouf','without awards',17);
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmDirectors`
--

DROP TABLE IF EXISTS `filmDirectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filmDirectors` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `awards` varchar(30) NOT NULL DEFAULT 'without awards',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmDirectors`
--

LOCK TABLES `filmDirectors` WRITE;
/*!40000 ALTER TABLE `filmDirectors` DISABLE KEYS */;
INSERT INTO `filmDirectors` VALUES (1,'Alejandro Gonzalez Inarritu','without awards'),(2,'James Gunn','without awards'),(3,'Luc Besson','without awards'),(4,'Neill Blomkamp','without awards'),(5,'Wes Ball','without awards'),(6,'Robert Stromberg','without awards'),(7,'Todd Phillips','without awards'),(8,'David Ayer','without awards');
/*!40000 ALTER TABLE `filmDirectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_actor`
--

DROP TABLE IF EXISTS `film_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `film_actor` (
  `film_id` int(3) NOT NULL DEFAULT '1',
  `actor_id` int(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_actor`
--

LOCK TABLES `film_actor` WRITE;
/*!40000 ALTER TABLE `film_actor` DISABLE KEYS */;
INSERT INTO `film_actor` VALUES (1,15),(2,2),(2,3),(2,4),(3,5),(3,6),(4,7),(4,8),(5,9),(5,10),(6,11),(6,12),(7,13),(7,14),(8,16),(8,17);
/*!40000 ALTER TABLE `film_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `films` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `genre` varchar(50) NOT NULL DEFAULT '',
  `year` int(4) NOT NULL DEFAULT '2011',
  `film_id` int(4) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`film_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES ('joker','crime,drama',2019,1),('The Revenant','vestern,drama',2015,2),('Guardians of the Galaxy','fantasy,action',2014,3),('Lucy',' science fiction action',2014,4),('Chappie','dystopian science fiction action',2015,5),('Maze Runner','science-fiction dystopian action adventure',2014,6),('Maleficent','fantasy',2014,7),('Fury','war film',2014,8);
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `films_directors`
--

DROP TABLE IF EXISTS `films_directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `films_directors` (
  `film_id` int(3) NOT NULL DEFAULT '1',
  `director_id` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films_directors`
--

LOCK TABLES `films_directors` WRITE;
/*!40000 ALTER TABLE `films_directors` DISABLE KEYS */;
INSERT INTO `films_directors` VALUES (1,7),(2,1),(3,2),(4,3),(5,4),(6,5),(7,6),(8,8);
/*!40000 ALTER TABLE `films_directors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-21 21:49:19
