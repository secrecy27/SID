CREATE TABLE Image_Upload (
num int(11) NOT NULL AUTO_INCREMENT,
title varchar(200),
description text ,
content mediumblob,
contentName varchar(200) ,
contentType varchar(255) ,
date timestamp DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (num)
);