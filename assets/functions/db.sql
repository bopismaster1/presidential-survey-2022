/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.22-MariaDB : Database - tiktok-survey
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tiktok-survey` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `tiktok-survey`;

/*Table structure for table `presidentlist` */

DROP TABLE IF EXISTS `presidentlist`;

CREATE TABLE `presidentlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `votes` varchar(11) DEFAULT '0',
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `presidentlist` */

insert  into `presidentlist`(`id`,`fname`,`lname`,`votes`,`path`) values 
(1,'Ernesto ','Abella','0','./assets/img/ernesto.jpg'),
(2,'Leody ','de Guzman','0','./assets/img/leody.jpg'),
(3,'ISKO ','Domagoso','0','./assets/img/isko.jpg'),
(4,'Norberto','Gonzales','0','./assets/img/nor.jpg'),
(5,'Ping ','Lacson','0','./assets/img/ping.jpg'),
(6,'Faisal ','Mangondato','0','./assets/img/faisal.jpg'),
(7,'Ferdinand ','Marcos Jr.','0','./assets/img/bbm.jpg'),
(8,'Jose ','Montemayor Jr.','0','./assets/img/jose.jpg'),
(9,'Manny ','Pacquiao','0','./assets/img/manny.jpg'),
(10,'Leni ','Robredo','0','./assets/img/lenny.jpg');

/*Table structure for table `voterid` */

DROP TABLE IF EXISTS `voterid`;

CREATE TABLE `voterid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `dateVoted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `voterid` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
