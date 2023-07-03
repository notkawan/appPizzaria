-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema dbpizzaria
--

CREATE DATABASE IF NOT EXISTS dbpizzaria;
USE dbpizzaria;

--
-- Definition of table `avaliacaocliente`
--

DROP TABLE IF EXISTS `avaliacaocliente`;
CREATE TABLE `avaliacaocliente` (
  `idavaliacaocliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idcliente` int(10) unsigned NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  `cadastro` datetime NOT NULL,
  `idproficao` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idavaliacaocliente`,`idcliente`,`idproficao`) USING BTREE,
  KEY `FK_avaliacaocliente_cliente` (`idcliente`),
  CONSTRAINT `FK_avaliacaocliente_cliente` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `avaliacaocliente`
--

/*!40000 ALTER TABLE `avaliacaocliente` DISABLE KEYS */;
INSERT INTO `avaliacaocliente` (`idavaliacaocliente`,`idcliente`,`descricao`,`alteracao`,`ativo`,`cadastro`,`idproficao`) VALUES 
 (1,2,'Ótima comida','2023-06-29 20:27:51','A','2023-06-23 00:00:00',1),
 (2,1,'Amei','2023-06-29 20:27:51','A','2023-06-23 00:00:00',1),
 (3,3,'Nota 10000','2023-06-29 20:27:51','A','2023-06-23 00:00:00',1),
 (4,1,'O melhor estabelecimento de todos','2023-06-29 20:27:51','A','2023-06-23 00:00:00',1);
/*!40000 ALTER TABLE `avaliacaocliente` ENABLE KEYS */;


--
-- Definition of table `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `idbanner` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(45) NOT NULL,
  `titulo` varchar(145) NOT NULL,
  `descricao` longtext NOT NULL,
  `video` longtext NOT NULL,
  `cadastro` datetime NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) CHARACTER SET ucs2 COLLATE ucs2_general_ci NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/ ''D''=desativado',
  `subtitulo` varchar(45) NOT NULL,
  PRIMARY KEY (`idbanner`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` (`idbanner`,`img`,`titulo`,`descricao`,`video`,`cadastro`,`alteracao`,`ativo`,`subtitulo`) VALUES 
 (1,'assets/img/hero-img.png','Pizzaria Yummy','Se você é o que você come, então eu só quero comer as coisas boas!','https://www.youtube.com/watch?v=XusBJ8ADSH8','2023-06-01 00:00:00','2023-07-03 18:42:08','A','- Ratatouille');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;


--
-- Definition of table `cardapio`
--

DROP TABLE IF EXISTS `cardapio`;
CREATE TABLE `cardapio` (
  `idcardapio` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idmenucardapio` int(10) unsigned NOT NULL,
  `img` longtext NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` longtext NOT NULL,
  `valor` float NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  `cadastro` datetime NOT NULL,
  PRIMARY KEY (`idcardapio`,`idmenucardapio`),
  KEY `FK_menucardapio` (`idmenucardapio`),
  CONSTRAINT `FK_menucardapio` FOREIGN KEY (`idmenucardapio`) REFERENCES `menucardapio` (`idmenuCardapio`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cardapio`
--

/*!40000 ALTER TABLE `cardapio` DISABLE KEYS */;
INSERT INTO `cardapio` (`idcardapio`,`idmenucardapio`,`img`,`titulo`,`descricao`,`valor`,`alteracao`,`ativo`,`cadastro`) VALUES 
 (1,3,'assets/img/events-6.jpg','AAAAAA','KKKKKKKK',234,'2023-07-03 19:04:15','A','0000-00-00 00:00:00'),
 (2,1,'assets/img/events-2.jpg','JJJJJJJJJ','LLLLLL',3455,'2023-07-03 19:04:15','A','0000-00-00 00:00:00'),
 (3,2,'assets/img/events-1.jpg','RRRRR','GGGG',3456,'2023-07-03 19:04:15','A','0000-00-00 00:00:00'),
 (4,1,'assets/img/events-3.jpg','FDGFDF','JKKKK',54654,'2023-07-03 19:04:15','A','0000-00-00 00:00:00'),
 (5,2,'assets/img/events-4.jpg','EEEEWEEW','GGGGUUUU',546,'2023-07-03 19:04:37','A','0000-00-00 00:00:00'),
 (7,1,'assets/img/events-5.jpg','PPPPPPPP','ÇÇÇÇÇÇÇÇÇÇ',565,'2023-07-03 19:04:15','A','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `cardapio` ENABLE KEYS */;


--
-- Definition of table `cards`
--

DROP TABLE IF EXISTS `cards`;
CREATE TABLE `cards` (
  `idcards` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(105) NOT NULL,
  `text` longtext NOT NULL,
  `img` longtext DEFAULT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  `cadastro` datetime NOT NULL,
  PRIMARY KEY (`idcards`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cards`
--

/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` (`idcards`,`titulo`,`text`,`img`,`alteracao`,`ativo`,`cadastro`) VALUES 
 (1,'Servirço','A qualidade de serviço do nosso estabelecimento, esta presente em todos os momentos! Venha ver por si.','','2023-06-29 20:36:24','A','2023-03-01 00:00:00'),
 (2,'Comida','A nossa comida é feita com muito amor e dedicação. Ela sempre vai está quentinha, para poder aquecer seu coração.','','2023-06-29 20:50:58','A','2023-05-01 00:00:00'),
 (3,'Entregas','Realizamos entregas! Prometemos entregar seu pedido quente para melhor experiencia.','','2023-06-29 20:51:18','A','2023-06-21 21:22:45');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;


--
-- Definition of table `chefs`
--

DROP TABLE IF EXISTS `chefs`;
CREATE TABLE `chefs` (
  `idchefs` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` longtext NOT NULL,
  `idcliente` int(10) unsigned NOT NULL,
  `descricao` longtext NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  `cadastro` datetime NOT NULL,
  PRIMARY KEY (`idchefs`,`idcliente`) USING BTREE,
  KEY `FK_chefs_cliente` (`idcliente`),
  CONSTRAINT `FK_chefs_cliente` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chefs`
--

/*!40000 ALTER TABLE `chefs` DISABLE KEYS */;
INSERT INTO `chefs` (`idchefs`,`img`,`idcliente`,`descricao`,`alteracao`,`ativo`,`cadastro`) VALUES 
 (1,'assets/img/ceo.jpg',1,'Sou o Anton Ego um CEO muito Crítico e dedicado! Criei esse restaurante cansado de comer comida ruim!','2023-06-29 20:56:14','A','2023-06-28 19:13:34'),
 (4,'assets/img/chef.jpg',2,'Sou o Chef Remy, irei realizar diversas comidas gostosas e inovadoras para meu cliente, sempre trazendo uma \'Pitada de Leptospirose!\'.','2023-06-29 20:57:39','A','2023-06-28 19:13:34'),
 (6,'assets/img/ajudante.jpg',3,'Sou o ajudante Linguini, sou estremamente chato e desastrado mas prometo ser um ótimo fantoche para o REMY!','2023-06-29 20:56:14','A','2023-06-28 19:13:34');
/*!40000 ALTER TABLE `chefs` ENABLE KEYS */;


--
-- Definition of table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `idcliente` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(65) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` char(17) NOT NULL,
  `data` date NOT NULL,
  `tempo` time NOT NULL,
  `quantidade` int(10) unsigned NOT NULL,
  `mensagem` longtext NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  `cadastro` datetime NOT NULL,
  `idproficao` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idcliente`) USING BTREE,
  KEY `FK_cliente_proficao` (`idproficao`),
  CONSTRAINT `FK_cliente_proficao` FOREIGN KEY (`idproficao`) REFERENCES `proficao` (`idproficao`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cliente`
--

/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`idcliente`,`nome`,`email`,`telefone`,`data`,`tempo`,`quantidade`,`mensagem`,`alteracao`,`ativo`,`cadastro`,`idproficao`) VALUES 
 (1,'Anton Ego','antonego@gmail.com','21423457659780978','2023-06-23','12:00:00',5,'dsgsdfklçfdkglçkj','2023-06-28 19:58:45','A','2023-06-23 00:00:00',2),
 (2,'Remy','remy@gmail.com','32479857984537598','2023-06-23','06:00:00',6,'sdbhfjbscxvmnxbcmn','2023-06-28 19:58:45','A','2023-06-23 00:00:00',1),
 (3,'Linguini ','linguini @gmail.com','3548689797897','2023-06-23','07:00:00',2,'bkjhsbdfjhhgfdkjh','2023-06-28 19:58:45','A','2023-06-23 00:00:00',3);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;


--
-- Definition of table `contato`
--

DROP TABLE IF EXISTS `contato`;
CREATE TABLE `contato` (
  `idcontato` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `email` varchar(175) NOT NULL,
  `assunto` longtext NOT NULL,
  `mensagem` longtext NOT NULL DEFAULT 'current_timestamp()',
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  PRIMARY KEY (`idcontato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contato`
--

/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;


--
-- Definition of table `evento`
--

DROP TABLE IF EXISTS `evento`;
CREATE TABLE `evento` (
  `idevento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(45) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `valor` float NOT NULL,
  `descricao` longtext NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  `cadastro` datetime NOT NULL,
  PRIMARY KEY (`idevento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evento`
--

/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` (`idevento`,`img`,`titulo`,`valor`,`descricao`,`alteracao`,`ativo`,`cadastro`) VALUES 
 (1,'assets/img/events-4.jpg','Balada',100,'Vem curtir uma bala cheia de DIVERSÃO!','2023-06-29 21:05:05','A','2023-06-26 00:00:00'),
 (2,'assets/img/events-6.jpg','Jantar ZOO',2,'Jantar entre Ratos','2023-06-29 21:05:05','A','2023-06-26 00:00:00'),
 (3,'assets/img/events-7.jpg','Resenha de Velhos ricos',300,'Venha encontar seu SUGAR DADDY!','2023-06-29 21:05:05','A','2023-06-27 00:00:00'),
 (4,'assets/img/events-5.png','Palestras sobre Doenças',1,'Isso mesmo que você ta pensando! Você vai aderir elas durante suas refeições no estabelecimento. Venha aprender a pega-las.','2023-06-29 21:05:05','A','2023-06-27 00:00:00');
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;


--
-- Definition of table `galeria`
--

DROP TABLE IF EXISTS `galeria`;
CREATE TABLE `galeria` (
  `idgaleria` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(45) NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  `cadastro` datetime NOT NULL,
  PRIMARY KEY (`idgaleria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galeria`
--

/*!40000 ALTER TABLE `galeria` DISABLE KEYS */;
INSERT INTO `galeria` (`idgaleria`,`img`,`alteracao`,`ativo`,`cadastro`) VALUES 
 (0,'','2023-06-28 21:25:19','A','0000-00-00 00:00:00'),
 (1,'assets/img/galeria-6.jpg','2023-06-28 21:01:42','A','2023-06-28 00:00:00'),
 (2,'assets/img/galeria-1.jpg','2023-06-28 21:28:27','A','2023-06-28 00:00:00'),
 (3,'assets/img/galeria-7.png','2023-06-28 21:28:27','A','2023-06-28 00:00:00'),
 (4,'assets/img/galeria-3.jpg','2023-06-28 21:28:27','A','2023-06-28 00:00:00'),
 (5,'assets/img/galeria-4.png','2023-06-28 21:28:27','A','2023-06-28 00:00:00'),
 (6,'assets/img/galeria-8.jpg','2023-06-28 21:28:27','A','2023-06-28 00:00:00'),
 (7,'','2023-06-28 21:28:27','A','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `galeria` ENABLE KEYS */;


--
-- Definition of table `mapa`
--

DROP TABLE IF EXISTS `mapa`;
CREATE TABLE `mapa` (
  `idmapa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mapa` longtext NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  `cadastro` datetime NOT NULL,
  `icon` longtext NOT NULL,
  `titulo` varchar(145) NOT NULL,
  `descricao` longtext NOT NULL,
  PRIMARY KEY (`idmapa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mapa`
--

/*!40000 ALTER TABLE `mapa` DISABLE KEYS */;
INSERT INTO `mapa` (`idmapa`,`mapa`,`alteracao`,`ativo`,`cadastro`,`icon`,`titulo`,`descricao`) VALUES 
 (1,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d60396.416978328954!2d-42.24003855547332!3d-18.897013273799892!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xb1b67c9521d847%3A0x8b495eacea9abbb0!2sPenha%20do%20Cassiano%2C%20Gov.%20Valadares%20-%20MG!5e0!3m2!1spt-BR!2sbr!4v1687999631506!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade','2023-06-28 21:47:53','A','2023-06-28 00:00:00','','ebaaaaaaa','parabens'),
 (2,'','2023-06-28 21:50:03','A','0000-00-00 00:00:00','','SEI LA','AAAAAAAAA');
/*!40000 ALTER TABLE `mapa` ENABLE KEYS */;


--
-- Definition of table `menucardapio`
--

DROP TABLE IF EXISTS `menucardapio`;
CREATE TABLE `menucardapio` (
  `idmenuCardapio` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomeMenu` varchar(100) NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  `cadastro` datetime NOT NULL,
  PRIMARY KEY (`idmenuCardapio`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menucardapio`
--

/*!40000 ALTER TABLE `menucardapio` DISABLE KEYS */;
INSERT INTO `menucardapio` (`idmenuCardapio`,`nomeMenu`,`alteracao`,`ativo`,`cadastro`) VALUES 
 (1,'alecrim','2023-06-30 18:56:59','A','2023-06-30 00:00:00'),
 (2,'doente','2023-06-30 18:56:59','A','2023-06-30 00:00:00'),
 (3,'arroz','2023-06-30 18:56:59','A','2023-06-30 00:00:00');
/*!40000 ALTER TABLE `menucardapio` ENABLE KEYS */;


--
-- Definition of table `proficao`
--

DROP TABLE IF EXISTS `proficao`;
CREATE TABLE `proficao` (
  `idproficao` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `proficao` varchar(150) NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  `cadastro` datetime NOT NULL,
  PRIMARY KEY (`idproficao`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proficao`
--

/*!40000 ALTER TABLE `proficao` DISABLE KEYS */;
INSERT INTO `proficao` (`idproficao`,`proficao`,`alteracao`,`ativo`,`cadastro`) VALUES 
 (1,'Chef','2023-06-26 21:22:52','A','2023-03-01 00:00:00'),
 (2,'CEO','2023-06-28 19:45:32','A','2023-06-05 21:28:49'),
 (3,'Ajudante','2023-06-05 21:28:49','A','2023-06-05 21:28:49'),
 (4,'Atendente','2023-06-05 21:28:49','A','2023-06-05 21:28:49'),
 (5,'Faxineiro','2023-06-05 21:28:49','A','2023-06-05 21:28:49'),
 (6,'Gerente','2023-06-05 21:28:49','A','2023-06-05 21:28:49'),
 (7,'Garçom','2023-06-05 21:28:49','A','2023-06-05 21:28:49');
/*!40000 ALTER TABLE `proficao` ENABLE KEYS */;


--
-- Definition of table `sobrenois`
--

DROP TABLE IF EXISTS `sobrenois`;
CREATE TABLE `sobrenois` (
  `idsobreNois` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(145) NOT NULL,
  `subtitulo` varchar(145) NOT NULL,
  `contato` char(17) NOT NULL,
  `text` longtext NOT NULL,
  `video` longtext NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cadastro` datetime NOT NULL,
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  `subtituloP` varchar(145) NOT NULL,
  `titulo` varchar(145) NOT NULL,
  `text2` varchar(245) NOT NULL,
  `text3` varchar(245) NOT NULL,
  `text4` varchar(245) NOT NULL,
  PRIMARY KEY (`idsobreNois`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sobrenois`
--

/*!40000 ALTER TABLE `sobrenois` DISABLE KEYS */;
INSERT INTO `sobrenois` (`idsobreNois`,`img`,`subtitulo`,`contato`,`text`,`video`,`alteracao`,`cadastro`,`ativo`,`subtituloP`,`titulo`,`text2`,`text3`,`text4`) VALUES 
 (1,'','Basta chamar','+55 33 9 9684-365','A pizzaria Yummi oferece as melhores pizza do mundo! ','https://www.youtube.com/watch?v=UOrBC_wo8uk','2023-06-29 21:11:01','2023-03-02 00:00:00','A','Sobre Nós','Pizzaria Yummi','Serviço de qualidade!','Otimo atendimento!','Venha conhece-lá!');
/*!40000 ALTER TABLE `sobrenois` ENABLE KEYS */;


--
-- Definition of table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `idstatus` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  `cadastro` datetime NOT NULL,
  `alteracao` datetime NOT NULL,
  `img` longtext NOT NULL,
  PRIMARY KEY (`idstatus`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

/*!40000 ALTER TABLE `status` DISABLE KEYS */;
/*!40000 ALTER TABLE `status` ENABLE KEYS */;


--
-- Definition of table `titulos`
--

DROP TABLE IF EXISTS `titulos`;
CREATE TABLE `titulos` (
  `idtitulos` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subtituloP` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `alteracao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ativo` char(1) NOT NULL DEFAULT 'A' COMMENT '''A''=ativo/''D''=desativado',
  `cadastro` datetime NOT NULL,
  PRIMARY KEY (`idtitulos`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `titulos`
--

/*!40000 ALTER TABLE `titulos` DISABLE KEYS */;
INSERT INTO `titulos` (`idtitulos`,`subtituloP`,`titulo`,`alteracao`,`ativo`,`cadastro`) VALUES 
 (1,'SOU FODA','MARAVILHOSA','2023-06-05 19:26:03','A','2023-01-05 00:00:00');
/*!40000 ALTER TABLE `titulos` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
