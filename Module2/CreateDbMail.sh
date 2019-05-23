#!/bin/bash   

service mysqld start 
mysqladmin -u root password password
mysql -u root -p email

#création de la base de données
mysql> CREATE DATABASE mailserver CHARACTER SET 'utf8';
mysql> use mailserver;  
mysql> GRANT SELECT, INSERT, UPDATE, DELETE ON mailserver.* TO 'alex'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;
mysql> FLUSH PRIVILEGES;

#création des tables domains,user

mysql> CREATE TABLE `virtual_domains` (`id` int(11) NOT NULL auto_increment,`name` varchar(50) NOT NULL,PRIMARY KEY (`id`)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
mysql> CREATE TABLE `virtual_users` (`id` int(11) NOT NULL auto_increment,`domain_id` int(11) NOT NULL,`password` varchar(106) NOT NULL,`email` varchar(100) NOT NULL,PRIMARY KEY (`id`),UNIQUE KEY `email` (`email`),FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE) ENGINE=InnoDB DEFAULT CHARSET=utf8;
mysql> CREATE TABLE `virtual_aliases` (`id` int(11) NOT NULL auto_increment,`domain_id` int(11) NOT NULL,`source` varchar(100) NOT NULL,`destination` varchar(100) NOT NULL,PRIMARY KEY (`id`),FOREIGN KEY (domain_id) REFERENCES virtual_domains(id) ON DELETE CASCADE) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#ajout de données

mysql> INSERT INTO virtual_domains (name) VALUES ('w17.ephec-ti.be');
mysql> INSERT INTO virtual_users (email, password) VALUES ('al.lefevre@w17.ephec-ti.be', ENCRYPT('password'));  
mysql> INSERT INTO `mailserver`.`virtual_aliases`(`id`, `domain_id`, `source`, `destination`) VALUES ('1', '1', 'alias@example.com', 'al.lefevre@w17.ephec-ti.be');
