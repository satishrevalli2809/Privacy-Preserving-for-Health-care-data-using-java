/*
SQLyog Community v8.71 
MySQL - 5.5.30 : Database - vtjdm04-2022
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`vtjdm04-2022` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `vtjdm04-2022`;

/*Table structure for table `attack` */

DROP TABLE IF EXISTS `attack`;

CREATE TABLE `attack` (
  `Uid` varchar(245) DEFAULT NULL,
  `IP` varchar(255) DEFAULT NULL,
  `Date1` varchar(255) DEFAULT NULL,
  `fcount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attack` */

/*Table structure for table `backup` */

DROP TABLE IF EXISTS `backup`;

CREATE TABLE `backup` (
  `UserName` text NOT NULL,
  `FileName` text NOT NULL,
  `FilePath` text NOT NULL,
  `FileSize` text NOT NULL,
  `Date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `backup` */

insert  into `backup`(`UserName`,`FileName`,`FilePath`,`FileSize`,`Date`) values ('testuser@gmail.com','sample.docx','C:UsersLenovoeclipse-workspaceVTJNS08-2022WebContentlocationtwo/sample.docx','12583.0','1675431300183');

/*Table structure for table `backuprequest` */

DROP TABLE IF EXISTS `backuprequest`;

CREATE TABLE `backuprequest` (
  `Rid` int(11) NOT NULL AUTO_INCREMENT,
  `Aid` varchar(255) DEFAULT NULL,
  `Uid` varchar(255) DEFAULT NULL,
  `Request1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Rid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `backuprequest` */

insert  into `backuprequest`(`Rid`,`Aid`,`Uid`,`Request1`) values (4,'Admin','testuser@gmail.com','Accepted');

/*Table structure for table `cloudprovider` */

DROP TABLE IF EXISTS `cloudprovider`;

CREATE TABLE `cloudprovider` (
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloudprovider` */

insert  into `cloudprovider`(`Name`,`Email`,`Password`) values ('cloud1','cloud1@gmail.com','123456'),('cloud2','cloud2@gmail.com','123456');

/*Table structure for table `encrypt` */

DROP TABLE IF EXISTS `encrypt`;

CREATE TABLE `encrypt` (
  `Fid` int(12) NOT NULL AUTO_INCREMENT,
  `Email` varchar(255) DEFAULT NULL,
  `Filename` varchar(255) DEFAULT NULL,
  `Photo` longblob,
  `Enc` longtext,
  `Content` varchar(255) DEFAULT NULL,
  `Key1` varchar(255) DEFAULT NULL,
  `CloudName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `encrypt` */

/*Table structure for table `fcount` */

DROP TABLE IF EXISTS `fcount`;

CREATE TABLE `fcount` (
  `Uid` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fcount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fcount` */

/*Table structure for table `recovery` */

DROP TABLE IF EXISTS `recovery`;

CREATE TABLE `recovery` (
  `UserName` text NOT NULL,
  `fileName` text NOT NULL,
  `FilePath` text NOT NULL,
  `FileSize` text NOT NULL,
  `Date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `recovery` */

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `emailid` varchar(100) DEFAULT NULL,
  `password` varchar(1000) DEFAULT NULL,
  `address` varchar(10) DEFAULT NULL,
  `userType` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`userid`,`username`,`emailid`,`password`,`address`,`userType`) values (16,'shyam','shyam.9989@gmail.com','123456','9581022022','Doctor'),(17,'divya','divya@gmail.com','123456','985485785','Nurse'),(18,'newuser','newuser@gmail.com','123456','9874589878','Doctor'),(19,'nurse','newnurse@gmail.com','123456','9874584125','Nurse'),(20,'sunder','praveen@123gmail.com','123456','9502535441','Doctor');

/*Table structure for table `serverload` */

DROP TABLE IF EXISTS `serverload`;

CREATE TABLE `serverload` (
  `server` varchar(255) DEFAULT NULL,
  `Serverloads` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `serverload` */

insert  into `serverload`(`server`,`Serverloads`) values ('server1','188765'),('server2','961368');

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `UserName` text NOT NULL,
  `FileName` text NOT NULL,
  `FilePath` text NOT NULL,
  `FileSize` text NOT NULL,
  `Date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `Name` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Age` varchar(255) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `CloudName` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Status1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`Name`,`Email`,`Age`,`Gender`,`CloudName`,`Password`,`Status1`) values ('testuser','testuser@gmail.com','25','male','cloud1','123456','Approved'),('testuser','testuser@gmail.com','25','male','cloud1','123456','Approved');

/*Table structure for table `vm1` */

DROP TABLE IF EXISTS `vm1`;

CREATE TABLE `vm1` (
  `UserName` text NOT NULL,
  `FileName` text NOT NULL,
  `FilePath` text NOT NULL,
  `FileSize` decimal(18,0) NOT NULL,
  `Date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vm1` */

/*Table structure for table `vm2` */

DROP TABLE IF EXISTS `vm2`;

CREATE TABLE `vm2` (
  `UserName` text NOT NULL,
  `FileName` text NOT NULL,
  `FilePath` text NOT NULL,
  `FileSize` decimal(18,0) NOT NULL,
  `Date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vm2` */

insert  into `vm2`(`UserName`,`FileName`,`FilePath`,`FileSize`,`Date`) values ('testuser@gmail.com','sample.docx','C:UsersLenovoeclipse-workspaceVTJNS08-2022WebContentlocationtwo/sample.docx','12583','1675431300183');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
