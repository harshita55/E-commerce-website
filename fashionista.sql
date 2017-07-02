/*
SQLyog Ultimate v8.32 
MySQL - 5.5.36 : Database - fashionista
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fashionista` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `fashionista`;

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`name`,`email`,`subject`,`mobile`,`message`) values ('aa','aaa@gmail.com','aa','aa','aaaa'),('harshita','hp551995@gmail.com','h','8233097070','heya hws uh !!! \r\nmy website :)');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `name` varchar(200) DEFAULT NULL,
  `size` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `brand` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `gen` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`name`,`size`,`price`,`brand`,`image`,`gen`) values ('shirt','M','2000','Nike','similar1.jpg','men'),('shirt','M','2000','jade blue','product10.jpg','women');

/*Table structure for table `product1` */

DROP TABLE IF EXISTS `product1`;

CREATE TABLE `product1` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` int(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `product1` */

insert  into `product1`(`id`,`name`,`model`,`category`,`price`,`image`,`description`) values (1,'jeans','1','shirt',200,'one.png','sgdsgcjhsdgf'),(2,'vdgs','7','shirt',789,'three.png','jsjdhgwfdgweh '),(3,'dffferr','rewr','shirt',79,'two.png','efwef');

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `username` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`username`,`email`,`password`,`mobile`) values ('priya','a@gmail.com','88','786579547'),('harshita','hp551995@gmail.com','bb','2147483647'),('lakshya sharma','l@gmail.com','ll','988730578'),('popato','p@gmail.com','789564781','ll'),('ritu','ritu@gmail.com','aa','2147483647');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
