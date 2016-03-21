-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 21 Mars 2016 à 11:13
-- Version du serveur :  5.7.9
-- Version de PHP :  5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nekoatsume`
--

-- --------------------------------------------------------

--
-- Structure de la table `astuce`
--

DROP TABLE IF EXISTS `astuce`;
CREATE TABLE IF NOT EXISTS `astuce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_chat` int(11) DEFAULT NULL,
  `id_utilisateur` int(11) DEFAULT NULL,
  `description` text,
  `voteplus` int(11) DEFAULT NULL,
  `votemoins` int(11) DEFAULT NULL,
  `titre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ast_chat` (`id_chat`),
  KEY `ast_user` (`id_utilisateur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tablechat`
--

DROP TABLE IF EXISTS `tablechat`;
CREATE TABLE IF NOT EXISTS `tablechat` (
  `id_chat` int(11) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(50) DEFAULT NULL,
  `NOM_JAPONAIS` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(50) DEFAULT NULL,
  `PERSONNALITE` varchar(50) DEFAULT NULL,
  `NIVEAU` int(11) DEFAULT NULL,
  `RARE` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_chat`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tablechat`
--

INSERT INTO `tablechat` (`id_chat`, `NOM`, `NOM_JAPONAIS`, `DESCRIPTION`, `PERSONNALITE`, `NIVEAU`, `RARE`) VALUES
(1, 'Snowball', 'しろねこさん', 'Solid White', 'Mellow', 80, 0),
(2, 'Smokey', 'くろねこさん', 'Solid Black', 'Hot and Cold', 140, 0),
(3, 'Spots', 'しろくろさん', 'Black & White', 'Joker', 75, 0),
(4, 'Shadow', 'はいいろさん', 'Solid Grey', 'Peculiar', 50, 0),
(5, 'Sunny', 'とびみけさん', 'Turkish Calico', 'Mischievous', 120, 0),
(6, 'Fred', 'ちゃとらさん', 'Orange Tabby', 'Lady-Killer', 150, 0),
(7, 'Pumpkin', 'しろちゃとらさん', 'Orange & White Tabby', 'Spacey', 90, 0),
(8, 'Callie', 'みけさん ', 'Calico', 'Carefree', 50, 0),
(9, 'Tabitha', 'しまみけさん', 'Calico Tabby', 'Leisurely', 40, 0),
(10, 'Bandit', 'さびがらさん', 'Tortoiseshell', 'Wild at Heart', 180, 0),
(11, 'Gabriel', 'はちわれさん ', 'Tuxedo', 'Diligent', 150, 0),
(12, 'Marshmallow', 'ぽいんとさん', 'Pointed', 'Aloof', 170, 0),
(13, 'Socks', 'くつしたさん', 'Black w/ White Mitts', 'Adventurous', 70, 0),
(14, 'Lexy', 'はいしろさん', 'Grey & White', 'Expensive Tastes', 100, 0),
(15, 'Bolt', 'きじとらさん', 'Brown Tabby', 'Insatiable', 140, 0),
(16, 'Breezy', 'しろきじさん', 'Brown & White Tabby', 'Laid Back', 30, 0),
(17, 'Misty', 'さばとらさん', 'Mackerel Tabby', 'Lazy', 160, 0),
(18, 'Pickles', 'しろさばさん', 'Gray & White Tabby', 'Faint-Hearted', 0, 0),
(19, 'Pepper', 'おっどさん ', 'Black w/ Odd Eyes', 'Shy', 165, 0),
(20, 'Patches', 'ぶちさん ', 'Orange Patches', 'Jealous', 80, 0),
(21, 'Gozer', 'とーびーさん', 'Tortoiseshell Tabby', 'Sore Loser', 155, 0),
(22, 'Cocoa', 'ちゃはちさん', 'Brown Tuxedo', 'Indecisive', 45, 0),
(23, 'Princess', 'むぎわらさん', 'Striped Torbie', 'Ditzy', 125, 0),
(24, 'Ginger', 'あかげさん ', 'Red w/ White Mitts', 'Bashful', 60, 0),
(25, 'Peaches', 'くりーむさん', 'Tan & Orange', 'Capricious', 45, 0),
(26, 'Spud', 'あかさびさん', 'Red Tortoiseshell', 'Cautious', 80, 0),
(27, 'Mack', 'しろとらさん', 'White Mackerel', 'Determined', 130, 0),
(28, 'Speckles', 'くろぶちさん', 'Black Patches', 'Lonely', 40, 0),
(29, 'Willie', 'くろとらさん', 'Black Tabby', 'Crafty', 75, 0),
(30, 'Rascal', 'はいはちさん', 'Grey Tuxedo', 'Selfish', 140, 0),
(31, 'Dottie', 'しろみけさん', 'White Calico', 'Friendly', 195, 0),
(32, 'Spooky', 'はいさびさん', 'Grey Tortoiseshell', 'Reserved', 35, 0),
(33, 'Joe DiMeowgio', 'たてじまさん ', 'Baseball Jersey', 'Team Player', 28, 1),
(34, 'Senor Don Gato', 'ながぐつさん ', 'Mustachioed', 'Scheming', 30, 1),
(35, 'Xerxes IX', 'ぷりんすさん ', 'Persian', 'Regal', 70, 1),
(36, 'Chairman Meow', 'なべねこさん ', 'Camouflage', 'Boorish', 111, 1),
(37, 'Saint Purrtrick', 'ねこまたさん ', 'Ethereal', 'Awe-Inspiring', 222, 1),
(38, 'Ms. Fortune', 'こいこいさん ', 'Gold', 'Charismatic', 20, 1),
(39, 'Bob the Cat', 'やまねこさん ', 'Adventurer', 'Outdoorsy', 40, 1),
(40, 'Conductor Whiskers', 'えきちょうさん ', 'Railway Uniform', 'Vigilant', 50, 1),
(41, 'Tubbs', 'まんぞくさん ', 'Fluffy', 'Finicky Feaster', 130, 1),
(42, 'Mr.Meowgi', 'おさむらいさん ', 'Ronin', 'Mentoring', 250, 1),
(43, 'Lady Meow-Meow', 'あめしょさん ', 'American Shorthair', 'Diva', 100, 1),
(44, 'Guy Furry', 'びすとろさん ', 'Apron', 'Artisan', 30, 1),
(45, 'Kathmandu', 'まろまゆさん ', 'Hunting Coat', 'Refined', 150, 1),
(46, 'Ramses the Great', 'すふぃんさん ', 'Sphinx', 'Riddler', 230, 1),
(47, 'Sassy Fran', 'かふぇさん ', 'Waitress', 'Enthusiastic', 180, 1),
(48, 'Billy the Kitten', 'きっどさん ', 'Western Wear', 'Nihilistic', 250, 1),
(49, 'Frosty', 'ゆきねこさん ', 'Straw Coat', 'Sensitive', 5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo_utilisateur` varchar(50) DEFAULT NULL,
  `mdp` varchar(50) DEFAULT NULL,
  `nom_utilisateur` varchar(50) DEFAULT NULL,
  `prenom_utilisateur` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `pseudo_utilisateur`, `mdp`, `nom_utilisateur`, `prenom_utilisateur`, `email`, `admin`) VALUES
(19, 'iuhuvbi', 'uuu', 'ub', 'iub', 'kkk@ff.dom', NULL),
(20, 'uhiubn', 'uuu', NULL, NULL, 'kln@gmail.com', NULL),
(21, 'ipugbiub', 'uuu', 'i', 'biu', 'jj@dd.dd', NULL),
(22, 'mata', 'uuu', 'yyy', 'ttt', 'iii@gmail.com', NULL);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `astuce`
--
ALTER TABLE `astuce`
  ADD CONSTRAINT `ast_chat` FOREIGN KEY (`id_chat`) REFERENCES `tablechat` (`id_chat`),
  ADD CONSTRAINT `ast_user` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
