DROP DATABASE chat;
CREATE DATABASE `chat`;
USE chat;
-- CREATE TABLE messages (
--   /* Describe your table here.*/
--   createdAt TIMESTAMP(14), username VARCHAR(255), message VARCHAR(255), roomname VARCHAR(255)
-- );
CREATE TABLE `Users` (
  `idxUsers` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20),
  PRIMARY KEY  (`idxUsers`)
);
CREATE TABLE `Messages` (
  `idxMessages` INT NOT NULL AUTO_INCREMENT,
  `createdAt` TIMESTAMP,
  `user` INT,
  `rooms` INT,
  `text` VARCHAR(140),
  PRIMARY KEY  (`idxMessages`)
);
CREATE TABLE `Rooms` (
  `idxRooms` INT NOT NULL AUTO_INCREMENT,
  `roomname` VARCHAR(20),
  PRIMARY KEY  (`idxRooms`)
);
ALTER TABLE `Messages` ADD CONSTRAINT `Messages_FK_Users` FOREIGN KEY (`user`) REFERENCES Users(`idxUsers`);
ALTER TABLE `Messages` ADD CONSTRAINT `Messages_FK_Rooms` FOREIGN KEY (`rooms`) REFERENCES Rooms(`idxRooms`);
/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/
