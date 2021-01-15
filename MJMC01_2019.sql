/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.30 : Database - mjmc01_2019
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mjmc01_2019` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mjmc01_2019`;

/*Table structure for table `adminreg` */

DROP TABLE IF EXISTS `adminreg`;

CREATE TABLE `adminreg` (
  `name` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  `email` varchar(45) NOT NULL DEFAULT '',
  `mobile` varchar(145) NOT NULL DEFAULT '',
  `addr` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminreg` */

insert  into `adminreg`(`name`,`password`,`email`,`mobile`,`addr`) values ('admin','admin','admin@gmail.com','9966885544','hyderabad');

/*Table structure for table `adowner` */

DROP TABLE IF EXISTS `adowner`;

CREATE TABLE `adowner` (
  `name` varchar(45) NOT NULL DEFAULT '',
  `pass` varchar(45) NOT NULL DEFAULT '',
  `mail` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adowner` */

/*Table structure for table `adserver` */

DROP TABLE IF EXISTS `adserver`;

CREATE TABLE `adserver` (
  `host_name` varchar(200) NOT NULL DEFAULT '',
  `username` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`host_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adserver` */

insert  into `adserver`(`host_name`,`username`,`password`) values ('ftp.drivehq.com','ramstudent ','studentsram123');

/*Table structure for table `domain` */

DROP TABLE IF EXISTS `domain`;

CREATE TABLE `domain` (
  `domain_name` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `domain` */

/*Table structure for table `filereq` */

DROP TABLE IF EXISTS `filereq`;

CREATE TABLE `filereq` (
  `fname` varchar(45) NOT NULL DEFAULT '',
  `u` varchar(45) NOT NULL DEFAULT '',
  `d` varchar(45) NOT NULL DEFAULT '',
  `sd` varchar(45) NOT NULL DEFAULT '',
  `status` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `filereq` */

/*Table structure for table `performance` */

DROP TABLE IF EXISTS `performance`;

CREATE TABLE `performance` (
  `logintime` varchar(250) DEFAULT NULL,
  `logout` varchar(250) DEFAULT NULL,
  `performance` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `performance` */

/*Table structure for table `sub_domain` */

DROP TABLE IF EXISTS `sub_domain`;

CREATE TABLE `sub_domain` (
  `subdomain_name` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sub_domain` */

/*Table structure for table `timecomplex` */

DROP TABLE IF EXISTS `timecomplex`;

CREATE TABLE `timecomplex` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `timecplx` varchar(250) DEFAULT NULL,
  `logintime` varchar(250) DEFAULT NULL,
  `logout` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

/*Data for the table `timecomplex` */

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `file_name` varchar(45) DEFAULT NULL,
  `domain` varchar(45) NOT NULL DEFAULT '',
  `sub_domain` varchar(45) NOT NULL DEFAULT '',
  `date` varchar(45) NOT NULL DEFAULT '',
  `file_data` varchar(6553) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

/*Table structure for table `userreg` */

DROP TABLE IF EXISTS `userreg`;

CREATE TABLE `userreg` (
  `name` varchar(45) NOT NULL DEFAULT '',
  `pass` varchar(45) NOT NULL DEFAULT '',
  `domain` varchar(45) NOT NULL DEFAULT '',
  `sub_domain` varchar(45) NOT NULL DEFAULT '',
  `mail` varchar(45) NOT NULL DEFAULT '',
  `key` varchar(45) NOT NULL DEFAULT '',
  `date` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userreg` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
