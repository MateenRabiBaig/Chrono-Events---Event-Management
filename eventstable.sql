create database event;
use event;

-- Admin
-- mateen@gmail.com
-- 123

CREATE TABLE `bookevent` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `event_img` varchar(200) DEFAULT NULL,
  `event_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `event_cost` int unsigned NOT NULL,
  `uname` varchar(45) NOT NULL,
  `uid` int unsigned NOT NULL,
  `status` varchar(45) NOT NULL,
  `date` datetime DEFAULT NULL,
  `eventdate` date DEFAULT NULL,
  PRIMARY KEY (`event_id`)
);



CREATE TABLE `customer` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(45) NOT NULL,
  `cemail` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cemail_UNIQUE` (`cemail`)
);

CREATE TABLE `enquirylist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phno` varchar(45) NOT NULL,
  `sub` varchar(45) NOT NULL,
  `msg` varchar(2000) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
);

CREATE TABLE `events` (
  `event_id` int unsigned NOT NULL AUTO_INCREMENT,
  `event_img` varchar(16000) NOT NULL,
  `event_name` varchar(45) NOT NULL,
  `event_cost` int unsigned NOT NULL,
  `event_details` varchar(150) NOT NULL,
  `event_category` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`event_id`)
);

CREATE TABLE `review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `uname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `rating` varchar(45) NOT NULL,
  `message` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`review_id`)
);


