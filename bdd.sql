-- Ecrire votre code SQL dans ce fichier
-- requete de strucutre
CREATE DATABASE  IF NOT EXISTS games CHARSET UTF8MB4;
USE games;

-- création de la table console
CREATE TABLE IF NOT EXISTS console(
id_console INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL ,
manufacturer VARCHAR(50) NOT NULL
)ENGINE=InnoDB;

-- creation de la table video_game
CREATE TABLE IF NOT EXISTS video_game(
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(50) NOT NULL ,
`type` VARCHAR(50) NOT NULL,
publish_at DATE NOT NULL,
id_console INT NOT NULL
)ENGINE=InnoDB;

-- modification de la table video_game, ajout de la contrainte et la suppression en cascade
ALTER TABLE `video_game`
ADD CONSTRAINT to_have_id_console
FOREIGN KEY (id_console)
REFERENCES `console` (id_console)
ON DELETE CASCADE;

-- requete d'insertion
-- insretion des quatres consoles dans la table consoles
INSERT INTO console( `name`, manufacturer)VALUES
("PlayStation 5" , "Sony"),
 ("Switch", "Nintendo"),
 ("Xbox Series X" ,"Microsoft"),
 ("Steam Deck" ,"Valve");

 SELECT `name`, manufacturer 
 FROM console;