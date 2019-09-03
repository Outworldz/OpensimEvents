' \Mysql\bin.
' Once there, right click the blank area next to the filelist and press and hold the shift key. Select Open PowerShell Window Here, or Open Command Prompt Here.

type this:

mysql -u root -p<enter>
enter your root password

' copy and paste this after modfying the use id and password
' Add that use and password to the file lib/MYSQL.txt. 

CREATE DATABASE ossearch character set = 'utf8' collate = 'utf8_general_ci';
use ossearch;
create user 'ossearchuser'@'localhost' identified by 'ossearchpassword';
grant all on ossearch.* to 'ossearchuser'@'localhost';

CREATE TABLE `events` (
  `owneruuid` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `eventid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `creatoruuid` char(36) NOT NULL,
  `category` int(2) NOT NULL,
  `description` text,
  `dateUTC` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `covercharge` tinyint(1) NOT NULL,
  `coveramount` int(10) NOT NULL,
  `simname` varchar(255) NOT NULL,
  `parcelUUID` char(36) NOT NULL,
  `globalPos` varchar(255) NOT NULL,
  `eventflags` int(1) NOT NULL
  
  PRIMARY KEY (`eventid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

