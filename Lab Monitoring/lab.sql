-- MySQL dump 10.13  Distrib 5.5.40, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: lab
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `assign`
--

DROP TABLE IF EXISTS `assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assign` (
  `sno` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(1000) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `subkey` varchar(10) DEFAULT NULL,
  `date` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assign`
--

LOCK TABLES `assign` WRITE;
/*!40000 ALTER TABLE `assign` DISABLE KEYS */;
INSERT INTO `assign` VALUES ('1','Write a program to implement BFS.',' Done ','1','02/02/2015'),('2','Write a program to implement DFS.',' Done ','1','02/02/2015'),('3','Write a program to implement pointers using C.',' Done ','1','02/02/2015'),('4','Write a program to implement Data structre.',' Done ','1',NULL),('5','Write a program to implement RB tree.',' Done ','1',NULL),('null','null',' Done ','1',NULL),('6','Write a program to implement Coding Phase.',' Done ','1',NULL),('7','Umesh',' Done ','1',NULL),('1','Write a program to Do his',' Done ','5',NULL),('1','Write a Program To Implement RB-Tree.',' Done ','3','02/02/2015'),('2','Artificial Intelligence.',' Done ','5',NULL),('3','Write A Program To Implement IDMTA.',' Done ','5',NULL),('2','Write an Experiment to implement Heap Sort.',' Done ','3','02/02/2015'),('4','WAP to input two numbers and add them .',' Done ','5',NULL),('8','Write a program to erase human mind memory.',' Done ','1','02/02/2015'),('9','Write a program to destroy USA.',' Done ','1','02/02/2015'),('9','Write a program to destroy USA.',' Done ','1','02/02/2015'),('1','Write a program.',' Done ','2','02/02/2015'),('2','Write a program to make pluto as planet.',' Done ','null','02/02/2015'),('1','WAP',' Done ','null','02/02/2015'),('3','WAP for break up.',' Done ','null','02/02/2015'),('2','write a program to attack chinas economy.',' Done ','2','02/02/2015'),('10','Write a program that will takes input as student and gives output as Engineer.','Not Done','1','NOT DONE'),('3','write a program to desolve lAB IN  srmcem.',' Done ','2','02/02/2015'),('3','wap to do idmata',' Done ','3','02/02/2015');
/*!40000 ALTER TABLE `assign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_exp`
--

DROP TABLE IF EXISTS `current_exp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `current_exp` (
  `exp_no` varchar(20) DEFAULT NULL,
  `subkey` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_exp`
--

LOCK TABLES `current_exp` WRITE;
/*!40000 ALTER TABLE `current_exp` DISABLE KEYS */;
INSERT INTO `current_exp` VALUES ('2','3'),('2','3'),('3','3'),('2','3'),('2','3'),('3','3'),('3','3'),('3','3'),('1','1'),('3','1'),('3','3'),('3','3'),('3','1'),('1','1'),('2','1'),('5','1'),('2','1'),('3','1'),('1','1');
/*!40000 ALTER TABLE `current_exp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
INSERT INTO `email` VALUES ('rajat@gmail.com');
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty` (
  `loginid` varchar(300) DEFAULT NULL,
  `password` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES ('rajat','rajat');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `rollno` varchar(30) DEFAULT NULL,
  `sname` varchar(300) DEFAULT NULL,
  `sem` varchar(100) DEFAULT NULL,
  `section` varchar(70) DEFAULT NULL,
  `remark` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('1112210073','rajat singh bhadauria','8','83','brilliancy at its peak'),('1112210023','Leo','8','81','Cool');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_login`
--

DROP TABLE IF EXISTS `student_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_login` (
  `login_id` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_login`
--

LOCK TABLES `student_login` WRITE;
/*!40000 ALTER TABLE `student_login` DISABLE KEYS */;
INSERT INTO `student_login` VALUES ('san@dan.com','dan'),('hanny@h.com','hanny'),('p@p.com','p'),('sam@s.com','s'),('sam','sam'),('m','m'),('b','b'),('email','pass'),('b','b'),('net','net'),('tanu','tanu'),('sid','sid'),('ron','ro'),('dan','dan'),('rajatsbhadauria@gmail.com','123'),('super@gmail.com','super'),('shobhit@gmail.com','shobhit'),('spr@gmail.com','SPR'),('philips@gmail.com','philips'),('chanda@gmail.com','chanda'),('has@gmail.com','has');
/*!40000 ALTER TABLE `student_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_register`
--

DROP TABLE IF EXISTS `student_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_register` (
  `login_id` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_register`
--

LOCK TABLES `student_register` WRITE;
/*!40000 ALTER TABLE `student_register` DISABLE KEYS */;
INSERT INTO `student_register` VALUES ('san@dan.com','dan','Sanrita'),('hanny@h.com','hanny','HAnny'),('p@p.com','p','paro'),('sam@s.com','s','sam'),('sam','sam','sammy'),('m','m','mistry'),('b','b','babita'),('email','pass','name'),('b','b','boa'),('net','net','net'),('tanu','tanu','tanu'),('sid','sid','sid'),('ron','ro','ron'),('dan','dan','danish'),('rajatsbhadauria@gmail.com','123','RAJAT'),('super@gmail.com','super','superhero'),('shobhit@gmail.com','shobhit','Shobhit'),('spr@gmail.com','SPR','sneh'),('philips@gmail.com','philips','Philips'),('chanda@gmail.com','chanda','Chandramukhi'),('has@gmail.com','has','HashimAMLA');
/*!40000 ALTER TABLE `student_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `subid` varchar(20) DEFAULT NULL,
  `subname` varchar(40) DEFAULT NULL,
  `semester` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('1','Data structure','3'),('2','Algorithms','5'),('3','Distributed Systems',NULL),('4','Computer Network',NULL),('5','Compiler','6'),('6','Java',NULL),('7','Computer',NULL);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-28 22:24:22
