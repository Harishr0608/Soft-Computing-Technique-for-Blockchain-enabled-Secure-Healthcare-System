-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.19


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hospital
--

CREATE DATABASE IF NOT EXISTS hospital;
USE hospital;

--
-- Definition of table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `apid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(130) NOT NULL,
  `contact` varchar(130) NOT NULL,
  `age` int(11) NOT NULL,
  `day` varchar(130) NOT NULL,
  `speciality` varchar(130) NOT NULL,
  `description` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`apid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` (`apid`,`name`,`email`,`contact`,`age`,`day`,`speciality`,`description`,`id`) VALUES 
 (6,'ii','ii@gmail.com','8877665544',22,'2020-04-30','cancer','suffer from cancer',11);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;


--
-- Definition of table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(100) DEFAULT NULL,
  `dept_description` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`dept_id`,`dept_name`,`dept_description`) VALUES 
 (5,'Nerology','brain,chest nerology solution'),
 (6,'Cardiology','angiography,angioplasty'),
 (7,'Cancer','blood cancer,stamoch cancer,bone cancer'),
 (8,'AIDS','Fever,blindness'),
 (9,'Arthopedic','Lungs'),
 (11,'General Physician','All types of disease'),
 (12,'Bone ','Osteoporosis is a debilitaring disease in which bones become fragile and are more likely to break'),
 (14,'Radiology','different types X-ray report'),
 (15,'cancer ','skin cancer');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;


--
-- Definition of table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `doctor_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` (`doctor_id`,`doc_name`,`email`,`password`,`address`,`phone`,`department`) VALUES 
 (1,'Sunil Bandishti','sunilbandishti@yahoomail.com','sunil@12345','Dhole Patil Road,Near Ruby Hall,Pune.','9875796434','Nerology'),
 (6,'Parvej Grant','parvejgrant@gmail.com','abc@123','Ruby Hall,Pune','7875796412','Cardiac'),
 (7,'Vijay Patil','patilvijay78@gmail.com','patil@123','Ahmednagar','8845746525','Bone'),
 (8,'Bapu Kandekar','bapukandekar33@gmail.com','abc@123','Nagar Manmad Road,Ahmednagar','9856321478','Cardiology'),
 (9,'Girish Jadhav','jadhavgirish@gmail.com','kkk@12','Balikashram Road,Ahmednagar,Maharashtra,India','9420949414','Arthopedic'),
 (10,'Sundar Gore','gores@gmail.com','gore@123','Choupati karanja,Ahmednagar','7475767271','Radiology'),
 (11,'moli','moli@gmail.com','moli@222','vlr','9988776655','cancer');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;


--
-- Definition of table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `suggestion` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`name`,`email`,`contact`,`suggestion`) VALUES 
 ('Kishor Kadam','kadamk33@gmail.com','9404308673','Awesome website'),
 ('thilip43','nnn@gmail.com','987458858','test');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Definition of table `filerequest`
--

DROP TABLE IF EXISTS `filerequest`;
CREATE TABLE `filerequest` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PatitentID` varchar(45) DEFAULT NULL,
  `DoctorID` varchar(45) DEFAULT NULL,
  `DoctorName` varchar(45) DEFAULT NULL,
  `RequestStatus` varchar(45) DEFAULT NULL,
  `HASH` varchar(1000) DEFAULT NULL,
  `CreatedDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filerequest`
--

/*!40000 ALTER TABLE `filerequest` DISABLE KEYS */;
INSERT INTO `filerequest` (`ID`,`PatitentID`,`DoctorID`,`DoctorName`,`RequestStatus`,`HASH`,`CreatedDate`) VALUES 
 (1,'3','11','moli','Pending','689cbaa0653f2321ab049eabb36c98b8','16 Nov 2021 13:14:34 PM'),
 (2,'3','11','moli','Pending','689cbaa0653f2321ab049eabb36c98b8','16 Nov 2021 15:02:58 PM'),
 (3,'5','11','moli','Approved','a067a91fd1ec76a72f26c6709e4c3878','16 Nov 2021 15:03:01 PM'),
 (4,'1','11','moli','Pending','98e9c3fafa27d0edbc304264ca97ce4c','16 Nov 2021 15:04:35 PM');
/*!40000 ALTER TABLE `filerequest` ENABLE KEYS */;


--
-- Definition of table `nurse`
--

DROP TABLE IF EXISTS `nurse`;
CREATE TABLE `nurse` (
  `nurse_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nurse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

/*!40000 ALTER TABLE `nurse` DISABLE KEYS */;
INSERT INTO `nurse` (`nurse_id`,`name`,`email`,`password`,`address`,`phone`) VALUES 
 (3,'Deepika Nangare','deepikanangare@yahoomail.com','java@123','Kedgaon,Ahmednagar','7276763516'),
 (5,'Charulata Kadam','charu33@gmail.com','xxx@111','Bhalawani,Ahmednagar,Maharashtra,India','8855441199'),
 (6,'Kargi Patil','kargi333@gmail.com','kargi@999','Ruby Hall Pune','7475767271'),
 (7,'Pritam Kadam','pritam@yahoomail.com','pritam@1212','Bhalawani,Ahmednagar,Maharashtra,India','8812475685'),
 (8,'Sanika Kharmale','kharmales@gmail.com','sanika@8987','Malwadi,Pune','8387741568'),
 (9,'Pratibha Kadam','pratibhakadam@yahoomail.com','pratibha@000','Bhalawani,Ahmednagar,Maharashtra,India','8874563515'),
 (10,'Mayuri Patil','mayuripatil@rediffmail.com','mayuri@321','Hadapsar,Pune','7476968573'),
 (11,'nn','nnn@gmail.com','nn','mhm','8877666889');
/*!40000 ALTER TABLE `nurse` ENABLE KEYS */;


--
-- Definition of table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `birthdate` varchar(100) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `blood_group` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` (`patient_id`,`patient_name`,`email`,`password`,`address`,`phone`,`sex`,`birthdate`,`age`,`blood_group`) VALUES 
 (1,'Kishor Kadam','kadamk329@yahoo.com','java@1991','Bhalawani,Ahmednagar,Maharashtra','9404308673','Male',NULL,28,'A+'),
 (3,'Sanket Sambhaji Kadam','kadamk33@gmail.com','pqr@123','Bhalawani,Ahmednagar','9404308673','Male',NULL,16,'AB+'),
 (4,'Rahul Narsale','narsale@gmail.com','rahul_123','Wakad,Pune','9865321475','Male','1996-06-15',22,'O+'),
 (5,'Sagar Kharmale','sagar@yahoomail.com','java@123','Malwadi,Pune','8855224467','Male','1988-06-30',29,'A-'),
 (6,'Govind Raut','rautgovind@rediffmail.com','xxx@000','Bhurate Wadi,Beed','9693857246','Male','1991-04-18',27,'AB-'),
 (7,'Akshay Jadhav','akshay88@gmail.com','kkk_123','Hinjewadi,Pune','8675731467','Male','1994-09-06',24,'O+'),
 (8,'ii','ii@gmail.com','ii@222','vlrrr','9988998899','Male','1998-06-16',22,'O+');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;


--
-- Definition of table `patientrecords`
--

DROP TABLE IF EXISTS `patientrecords`;
CREATE TABLE `patientrecords` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `PatientID` varchar(45) DEFAULT NULL,
  `LabID` varchar(45) DEFAULT NULL,
  `BMP` varchar(45) DEFAULT NULL,
  `CBC` varchar(45) DEFAULT NULL,
  `BP` varchar(45) DEFAULT NULL,
  `KCL` varchar(45) DEFAULT NULL,
  `PMS` varchar(200) DEFAULT NULL,
  `HEARTRATE` varchar(45) DEFAULT NULL,
  `PULSE` varchar(45) DEFAULT NULL,
  `BMPHASH` varchar(1000) DEFAULT NULL,
  `CBCHASH` varchar(1000) DEFAULT NULL,
  `BPHASH` varchar(1000) DEFAULT NULL,
  `KCLHASH` varchar(1000) DEFAULT NULL,
  `PMSHASH` varchar(1000) DEFAULT NULL,
  `HEARTRATEHASH` varchar(1000) DEFAULT NULL,
  `PULSEHASH` varchar(1000) DEFAULT NULL,
  `CreatedDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patientrecords`
--

/*!40000 ALTER TABLE `patientrecords` DISABLE KEYS */;
INSERT INTO `patientrecords` (`ID`,`PatientID`,`LabID`,`BMP`,`CBC`,`BP`,`KCL`,`PMS`,`HEARTRATE`,`PULSE`,`BMPHASH`,`CBCHASH`,`BPHASH`,`KCLHASH`,`PMSHASH`,`HEARTRATEHASH`,`PULSEHASH`,`CreatedDate`) VALUES 
 (1,'4','11','25 Mg','528','25','558','78','58','22','56662626af3cab91cc7a1c81998c58fe','f4be00279ee2e0a53eafdaa94a151e2c','8e296a067a37563370ded05f5a3bf3ec','1bb91f73e9d31ea2830a5e73ce3ed328','35f4a8d465e6e1edc05f3d8ab658c551','66f041e16a60928b05a7e228a89c3799','b6d767d2f8ed5d21a44b0e5886680cb9','16 Nov 2021 12:11:30 PM'),
 (2,'3','11','44','23','44','55','21','222','33','f7177163c833dff4b38fc8d2872f1ec6','37693cfc748049e45d87b8c7d8b9aacd','f7177163c833dff4b38fc8d2872f1ec6','b53b3a3d6ab90ce0268229151c9bde11','3c59dc048e8850243be8079a5c74d079','bcbe3365e6ac95ea2c0343a2395834dd','182be0c5cdcd5072bb1864cdee4d3d6e','16 Nov 2021 15:01:06 PM'),
 (3,'4','11','54','44','55','32','33','43','44','a684eceee76fc522773286a895bc8436','f7177163c833dff4b38fc8d2872f1ec6','b53b3a3d6ab90ce0268229151c9bde11','6364d3f0f495b6ab9dcf8d3b5c6e0b01','182be0c5cdcd5072bb1864cdee4d3d6e','17e62166fc8586dfa4d1bc0e1742c08b','f7177163c833dff4b38fc8d2872f1ec6','16 Nov 2021 15:01:22 PM'),
 (4,'5','11','75','55','44','55','66','77','66','d09bf41544a3365a46c9077ebb5e35c3','b53b3a3d6ab90ce0268229151c9bde11','f7177163c833dff4b38fc8d2872f1ec6','b53b3a3d6ab90ce0268229151c9bde11','3295c76acbf4caaed33c36b1b5fc2cb1','28dd2c7955ce926456240b2ff0100bde','3295c76acbf4caaed33c36b1b5fc2cb1','16 Nov 2021 15:01:36 PM'),
 (5,'6','11','55','44','33','876','56','77','86','b53b3a3d6ab90ce0268229151c9bde11','f7177163c833dff4b38fc8d2872f1ec6','182be0c5cdcd5072bb1864cdee4d3d6e','67d16d00201083a2b118dd5128dd6f59','9f61408e3afb633e50cdf1b20de6f466','28dd2c7955ce926456240b2ff0100bde','93db85ed909c13838ff95ccfa94cebd9','16 Nov 2021 15:01:52 PM'),
 (6,'7','11','85','55','44','33','44','55','66','3ef815416f775098fe977004015c6193','b53b3a3d6ab90ce0268229151c9bde11','f7177163c833dff4b38fc8d2872f1ec6','182be0c5cdcd5072bb1864cdee4d3d6e','f7177163c833dff4b38fc8d2872f1ec6','b53b3a3d6ab90ce0268229151c9bde11','3295c76acbf4caaed33c36b1b5fc2cb1','16 Nov 2021 15:02:06 PM');
/*!40000 ALTER TABLE `patientrecords` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`,`name`,`email`,`address`,`phone`,`password`) VALUES 
 (1,'Kishor Kadam','kadamk329@yahoo.com','Bhalawani,Ahmednagar,Maharashtra,India','7276763516','java@1991'),
 (2,'Sanket Kadam','kadamk329@gmail.com','Bhalawani,Ahmednagar','9404308673','java@1992'),
 (3,NULL,NULL,NULL,NULL,NULL),
 (4,'mm','mn@gmail.com',NULL,'9999988888','mmmmm@222'),
 (5,'vv','vv@gmail.com',NULL,'9988776655','vv@222'),
 (6,'ramesh','ramesh@gmail.com',NULL,'98752525895','12345'),
 (7,'kann','kannan@gmail.com',NULL,'98752525895','123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
