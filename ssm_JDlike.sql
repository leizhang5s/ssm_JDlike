/*
SQLyog Ultimate - MySQL GUI v8.2 
MySQL - 5.7.15 : Database - jdlike_ssm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jdlike_ssm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jdlike_ssm`;

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `feedid` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `msg` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`feedid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `feedback` */

insert  into `feedback`(`feedid`,`name`,`subject`,`msg`,`email`,`ip`) values (12,'leizhang','java核心编程','123','email','0:0:0:0:0:0:0:1'),(13,'leizhang5s','Struts2','这本书还可以','leizhang5s@163.com','0:0:0:0:0:0:0:1');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goodsid` bigint(20) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `breifintroduction` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `detailintroduction` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `goodsprice` float DEFAULT NULL,
  `photo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `category` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`goodsid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `goods` */

insert  into `goods`(`goodsid`,`goodsname`,`breifintroduction`,`detailintroduction`,`goodsprice`,`photo`,`category`) values (1,'Java编程思想','本书赢得了全球程序员的广泛赞誉，即使是最晦涩的概念，在Bruce Eckel的文字亲和力和小而直接的编程示例面前也会化解于无形。从Java的基础语法到最高级特性（深入的面向对象概念、多线程、自动项目构建、单元测试和调试等），本书都能逐步指导你轻松掌握。[1] ','从本书获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者拥有多年教学经验，对C、C++以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。本书共22章，包括操作符、控制执行流程、访问权限控制、复用类、多态、接口、通过异常处理错误、字符串、泛型、数组、容器深入研究、JavaI/O系统、枚举类型、并发以及图形化用户界面等内容。这些丰富的内容，包含了Java语言基础语法以及高级特性，适合各个层次的Java程序员阅读，同时也是高等院校讲授面向对象程序设计语言以及Java语言的绝佳教材和参考书。',37,'03.jpg','编程语言'),(2,'Struts2权威指南','《Struts2权威指南:基于WebWork核心的MVC开发》介绍的Struts 2已经完全超出了Struts 1框架原有的高度，Struts 2建立在Struts 1和WebWork两个框架整合的基础之上，因此提供了更多优秀的机制。','虽然Struts 1目前还未被完全淘汰，但Struts 1所表现出来的缺陷已经处处制约着开发者的手脚。在2007年上半年，Struts 2终于在众多开发者期盼中，发布了第一个稳定版本：2.0.6。为了让众多Struts学习、工作者快速掌握Struts 2的开发，笔者精心编著了本书。本书按Struts 2的架构体系，细致地介绍了Struts 2各个知识点。在介绍过程中，笔者依照读者的学习规律，首先介绍基本概念和基本操作，然后对内容进行深入讲解。笔者在介绍Struts 2框架时，既照顾到Struts 2初学者的能力，对每个知识点都给出简单的快速上手的示例；同时也考虑到开发者在日后开发中可能遇到的问题，详细讲解了每个知识点的各种用法，本书覆盖到Struts 2近80%的API。因此，本书完全可以作为Struts 2框架的权威手册，以供开发者在实际开发过程中参考。\n本书最后配备了几个常用场景的实例，通过实例演示了Struts 2框架的用法，希望读者可以通过这几个实例，触类旁通，解决日常开发中的问题。',40,'08.jpg','程序框架'),(3,'Python核心编程','Python是一种功能十分强大的面向对象编程语言，可以用于编写独立程序、快速脚本和复杂应用的原型。作为一种开源软件，Python可以自由获取，而且非常易学易用。本书是Python语言的经典入门读本，由两名顶尖的Python技术专家兼培训专家联手撰写，涵盖了该语言的所有核心内容。所有练习的解答都可在书后找到。 本书描述了Python程序的基本构件：类型、操作符、语句、函数、模块、类以及异常和介绍了更','本书是经典的Python[1]  指导书，在第一版的基础上进行了全面升级。全书分为两个部分：第1部分占据了大约三分之二的篇幅，阐释这门语言的“核心”内容，包括基本的概念和语句、语法和风格、Python对象、数字类型、序列类型、映射和集合类型、条件和循环、文件和输入/输出、错误和异常、函数和函数式编程、模块、面向对象编程、执行环境等内容：第2部分则提供了各种高级主题来展示可以使用Python做些什么，包括正则表达式、网络编程、网络客户端编程、多线程编程、图形用户界面编程、Web编程、数据库编程、扩展Python 和一些其他材料。',58,'11.jpg','编程语言'),(4,'计算机网络','《计算机网络：自顶向下方法(原书第6版)》第6版继续保持了以前版本的特色，为计算机网络教学提供了一种新颖和与时俱进的方法，同时也进行了相当多的修订和更新：第1章更多地关注时下，更新了接入网的论述；第2章用python替代了java来介绍套接字编程；第3章补充了用于优化云服务性能的tcp分岔知识；第4章有关路由器体系结构的内容做了大量更新；第5章重新组织并新增了数据中心网络的内容；第6章更新了无线网','《计算机网络：自顶向下方法(原书第6版)》第1版于12年前出版，首创采用自顶向下的方法讲解计算机网络的原理和协议，出版以来已被几百所大学和学院选用，是业界最经典的计算机网络教材之一。',35,'12.jpg','专业基础'),(5,'C++程序设计','《C++程序设计》是依据ANSI C++标准进行介绍的，引导读者从一开始就按标准C++的规定编程。本书配有两本辅导教材，即《C++程序设计题解与上机指导》和《C++编程实践指导》，全书分为4篇：基本知识；基于过程的程序设计；基于对象的程序设计；面向对象的程序设计。 本书内容全面，例题丰富，概念清晰，循序渐进，易于学习，即使没有教师讲授，读者也能看懂本书的大部分内容。本书是学习C++的入门教材，可供','本书是为已学过C语言程序设计、具有程序设计初步知识的读者编写的，是与作者编著的《C++面向对象程序设计》（清华大学出版社出版）一书配套的辅助教材。本书包括3个部分: 《C++面向对象程序设计》一书各章中的全部习题的参考解答；C++的上机操作,这部分介绍了在两种典型的环境下运行C++程序的方法，即Visual C++6.0和GCC在DOS/Windows平台上的版本DJGPP（以及与之配合使用的集成软件开发环境RHIDE）；上机实验内容与安排，这部分提出了上机实验的指导思想和上机实验的内容与安排，供教学参考。',24,'13.jpg','编程语言');

/*Table structure for table `newgoods` */

DROP TABLE IF EXISTS `newgoods`;

CREATE TABLE `newgoods` (
  `goodsid` int(11) NOT NULL,
  PRIMARY KEY (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `newgoods` */

insert  into `newgoods`(`goodsid`) values (1),(2);

/*Table structure for table `promotiongoods` */

DROP TABLE IF EXISTS `promotiongoods`;

CREATE TABLE `promotiongoods` (
  `goodsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `promotiongoods` */

insert  into `promotiongoods`(`goodsid`) values (1),(2);

/*Table structure for table `specialgoods` */

DROP TABLE IF EXISTS `specialgoods`;

CREATE TABLE `specialgoods` (
  `goodsid` int(11) NOT NULL,
  PRIMARY KEY (`goodsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `specialgoods` */

insert  into `specialgoods`(`goodsid`) values (1),(2);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userid` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `password_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `grade` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `truename` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `address_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `users` */

insert  into `users`(`userid`,`username`,`password_`,`grade`,`truename`,`email`,`phone`,`address_`) values (4,'admin','admin','管理员','张磊2','leizhang5s','182301097xx','北京市朝阳区'),(5,'zhangsanshi','zhangsanshi','用户','leizhang','leizhang5s@111.com','12333212313','张家口市'),(6,'lisi','1234',NULL,NULL,NULL,NULL,NULL),(7,'wangwu','1234',NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
