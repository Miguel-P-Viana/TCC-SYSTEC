CREATE DATABASE  IF NOT EXISTS `bd_locapacos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `bd_locapacos`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_locapacos
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `item_equipe_reserva`
--

DROP TABLE IF EXISTS `item_equipe_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_equipe_reserva` (
  `id_equipe_reserva` int(11) NOT NULL AUTO_INCREMENT,
  `id_equipe` int(11) DEFAULT NULL,
  `id_reserva` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_equipe_reserva`),
  KEY `id_reserva` (`id_reserva`),
  KEY `id_equipe` (`id_equipe`),
  CONSTRAINT `item_equipe_reserva_ibfk_1` FOREIGN KEY (`id_reserva`) REFERENCES `tb_reserva` (`id_reserva`),
  CONSTRAINT `item_equipe_reserva_ibfk_2` FOREIGN KEY (`id_equipe`) REFERENCES `tb_equipe` (`id_equipe`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_equipe_reserva`
--

LOCK TABLES `item_equipe_reserva` WRITE;
/*!40000 ALTER TABLE `item_equipe_reserva` DISABLE KEYS */;
INSERT INTO `item_equipe_reserva` VALUES (1,12,1),(2,5,1),(3,3,2),(4,44,2),(5,7,3),(6,17,3),(7,8,4),(8,29,4),(9,15,5),(10,5,5),(11,9,6),(12,38,6),(13,2,7),(14,19,7),(15,33,8),(16,1,8),(17,20,9),(18,21,9),(19,4,10),(20,26,10),(21,11,11),(22,16,11),(23,1,12),(24,30,12),(25,22,13),(26,24,13),(27,2,14),(28,48,14),(29,6,15),(30,35,15),(31,17,16),(32,18,16),(33,12,17),(34,23,17),(35,9,18),(36,10,18),(37,13,19),(38,19,19),(39,14,20),(40,1,20),(41,3,21),(42,39,21),(43,25,22),(44,6,22),(45,5,23),(46,8,23),(47,27,24),(48,12,24),(49,2,25),(50,36,25),(51,7,26),(52,40,26),(53,18,27),(54,14,27),(55,6,28),(56,33,28),(57,45,29),(58,23,29),(59,1,30),(60,10,30),(61,44,31),(62,13,31),(63,22,32),(64,29,32),(65,5,33),(66,26,33),(67,4,34),(68,9,34),(69,17,35),(70,20,35),(71,30,36),(72,3,36),(73,38,37),(74,6,37),(75,2,38),(76,47,38),(77,15,39),(78,31,39),(79,8,40),(80,27,40),(81,12,41),(82,1,41),(83,19,42),(84,10,42),(85,11,43),(86,7,43),(87,16,44),(88,28,44),(89,24,45),(90,2,45),(91,25,46),(92,5,46),(93,36,47),(94,13,47),(95,32,48),(96,21,48),(97,39,49),(98,9,49),(99,35,50),(100,4,50),(101,32,46),(102,5,7),(103,33,2),(104,41,2),(105,50,3),(106,1,3),(107,33,14),(108,2,41),(109,5,15),(110,15,5),(111,4,16),(112,8,36),(113,22,7),(114,29,17),(115,3,35),(116,13,8),(117,30,9);
/*!40000 ALTER TABLE `item_equipe_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sorteio_equipe`
--

DROP TABLE IF EXISTS `sorteio_equipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sorteio_equipe` (
  `id_sorteio` int(11) NOT NULL AUTO_INCREMENT,
  `id_jogador` int(11) DEFAULT NULL,
  `id_equipe` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_sorteio`),
  KEY `id_jogador` (`id_jogador`),
  KEY `id_equipe` (`id_equipe`),
  CONSTRAINT `sorteio_equipe_ibfk_1` FOREIGN KEY (`id_jogador`) REFERENCES `tb_jogador_equipe` (`id_jogador`),
  CONSTRAINT `sorteio_equipe_ibfk_2` FOREIGN KEY (`id_equipe`) REFERENCES `tb_equipe` (`id_equipe`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sorteio_equipe`
--

LOCK TABLES `sorteio_equipe` WRITE;
/*!40000 ALTER TABLE `sorteio_equipe` DISABLE KEYS */;
INSERT INTO `sorteio_equipe` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,2),(6,6,2),(7,7,3),(8,8,3),(9,9,3),(10,10,4),(11,11,4),(12,12,4),(13,13,5),(14,14,5),(15,15,5),(16,16,6),(17,17,6),(18,18,6),(19,19,7),(20,20,7),(21,21,7),(22,22,8),(23,23,8),(24,24,8),(25,25,9),(26,26,9),(27,27,9),(28,28,10),(29,29,10),(30,30,10),(31,31,11),(32,32,11),(33,33,11),(34,34,12),(35,35,12),(36,36,12),(37,37,13),(38,38,13),(39,39,13),(40,40,14),(41,41,14),(42,42,14),(43,43,15),(44,44,15),(45,45,15),(46,46,16),(47,47,16),(48,48,16),(49,49,17),(50,50,17),(51,51,17),(52,52,18),(53,53,18),(54,54,18),(55,55,19),(56,56,19),(57,57,19),(58,58,20),(59,59,20),(60,60,20),(61,61,21),(62,62,21),(63,63,21),(64,64,22),(65,65,22),(66,66,22),(67,67,23),(68,68,23),(69,69,23),(70,70,24),(71,71,24),(72,72,24),(73,73,25),(74,74,25),(75,75,25),(76,76,26),(77,77,26),(78,78,26),(79,79,27),(80,80,27),(81,81,27),(82,82,28),(83,83,28),(84,84,28),(85,85,29),(86,86,29),(87,87,29),(88,88,30),(89,89,30),(90,90,30),(91,91,31),(92,92,31),(93,93,31),(94,94,32),(95,95,32),(96,96,32),(97,97,33),(98,98,33),(99,99,33),(100,100,34),(101,101,34),(102,102,34),(103,103,35),(104,104,35),(105,105,35),(106,106,36),(107,107,36),(108,108,36),(109,109,37),(110,110,37),(111,111,37),(112,112,38),(113,113,38),(114,114,38),(115,115,39),(116,116,39),(117,117,39),(118,118,40),(119,119,40),(120,120,40),(121,121,41),(122,122,41),(123,123,41),(124,124,42),(125,125,42),(126,126,42),(127,127,43),(128,128,43),(129,129,43),(130,130,44),(131,131,44),(132,132,44),(133,133,45),(134,134,45),(135,135,45),(136,136,46),(137,137,46),(138,138,46),(139,139,47),(140,140,47),(141,141,47),(142,142,48),(143,143,48),(144,144,48),(145,145,49),(146,146,49),(147,147,49),(148,148,50),(149,149,50),(150,150,50);
/*!40000 ALTER TABLE `sorteio_equipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cadastro`
--

DROP TABLE IF EXISTS `tb_cadastro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cadastro` (
  `id_cadastro` int(11) NOT NULL AUTO_INCREMENT,
  `nm_email` varchar(50) NOT NULL,
  `nm_senha` varchar(20) NOT NULL,
  `nm_usuario` varchar(15) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cadastro`),
  UNIQUE KEY `nm_email` (`nm_email`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `tb_cadastro_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `tb_cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cadastro`
--

LOCK TABLES `tb_cadastro` WRITE;
/*!40000 ALTER TABLE `tb_cadastro` DISABLE KEYS */;
INSERT INTO `tb_cadastro` VALUES (1,'joao.silva@email.com','senha123','joaosilva',1),(2,'carlos.pereira@email.com','senha123454','cpereira',2),(3,'marcos.oliveira@email.com','senha123535353454','moliveira',3),(4,'pedro.souza@email.com','senha454','psouza',4),(5,'rafael.lima@email.com','senha1454','rlima',5),(6,'andre.santos@email.com','senha4425454','asantos',6),(7,'lucas.almeida@email.com','senha54','lalmeida',7),(8,'rodrigo.costa@email.com','senha5244','rcosta',8),(9,'bruno.fernandes@email.com','senha1','bfernandes',9),(10,'diego.martins@email.com','senha11','dmartins',10),(11,'felipe.carvalho@email.com','senha5411','fcarvalho',11),(12,'thiago.ribeiro@email.com','senha2411','tribeiro',12),(13,'eduardo.castro@email.com','senha747411','ecastro',13),(14,'fernando.araujo@email.com','senha711','faraujo',14),(15,'daniel.melo@email.com','senha11','dmelo',15),(16,'paulo.henrique@email.com','senha2221','phenrique',16),(17,'gabriel.rocha@email.com','senha21','grocha',17),(18,'matheus.nunes@email.com','senha2211','mnunes',18),(19,'leonardo.barros@email.com','senha221341','lbarros',19),(20,'gustavo.freitas@email.com','senha34','gfreitas',20),(21,'jose.augusto@email.com','senha334','jaugusto',21),(22,'ricardo.teixeira@email.com','senha35434','rteixeira',22),(23,'marcelo.batista@email.com','senha3034','mbatista',23),(24,'fabio.correia@email.com','senha300034','fcorreia',24),(25,'vinicius.duarte@email.com','senha300000034','vduarte',25),(26,'marcela.silva@email.com','senha31534','msilva',26),(27,'ana.souza@email.com','senha1534','asouza',27),(28,'juliana.gomes@email.com','senha153','jgomes',28),(29,'camila.fernandes@email.com','senha15579','cfernandes',29),(30,'patricia.andrade@email.com','senha19','pandrade',30),(31,'roberto.moura@email.com','senha199','rmoura',31),(32,'otavio.almeida@email.com','senha1979','oalmeida',32),(33,'caio.cardoso@email.com','senha19379','ccardoso',33),(34,'hugo.moreira@email.com','senha192379','hmoreira',34),(35,'samuel.pinto@email.com','senha200909','spinto',35),(36,'murilo.rezende@email.com','senha2909','mrezende',36),(37,'claudio.ramos@email.com','senha213909','cramos',37),(38,'adriano.cunha@email.com','senha66663','acunha',38),(39,'alan.pires@email.com','senha16663','apires',39),(40,'robson.vieira@email.com','senha06663','rvieira',40),(41,'antonio.lopes@email.com','senha0863','alopes',41),(42,'sergio.matos@email.com','senha082563','smatos',42),(43,'mario.figueiredo@email.com','senha321','mfigueiredo',43),(44,'tatiane.costa@email.com','senha31321','tcosta',44),(45,'carolina.pacheco@email.com','senha324321','cpacheco',45),(46,'isabela.monteiro@email.com','senha121','imonteiro',46),(47,'fernanda.dias@email.com','senha09999','fdias',47),(48,'natalia.braga@email.com','senha092999','nbraga',48),(49,'vanessa.almeida@email.com','senha0999','valmeida',49),(50,'beatriz.torres@email.com','senha999','btorres',50);
/*!40000 ALTER TABLE `tb_cadastro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cliente`
--

DROP TABLE IF EXISTS `tb_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `cd_cpf` varchar(15) NOT NULL,
  `nm_cliente` varchar(50) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `cd_telefone` varchar(15) NOT NULL,
  `nm_estado` varchar(45) NOT NULL,
  `nm_cidade` varchar(45) NOT NULL,
  `cd_cep` varchar(15) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `cd_cpf` (`cd_cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cliente`
--

LOCK TABLES `tb_cliente` WRITE;
/*!40000 ALTER TABLE `tb_cliente` DISABLE KEYS */;
INSERT INTO `tb_cliente` VALUES (1,'11111111111','João Silva','Masculino','1985-03-12','11911111111','São Paulo','São Paulo','01000-000'),(2,'22222222222','Carlos Pereira','Masculino','1990-07-22','21922222222','Rio de Janeiro','Rio de Janeiro','20000-000'),(3,'33333333333','Marcos Oliveira','Masculino','1988-11-05','31933333333','Minas Gerais','Belo Horizonte','30000-000'),(4,'44444444444','Pedro Souza','Masculino','1992-04-18','71944444444','Bahia','Salvador','40000-000'),(5,'55555555555','Rafael Lima','Masculino','2006-09-30','41955555555','Paraná','Curitiba','80000-000'),(6,'66666666666','André Santos','Masculino','2004-06-10','81966666666','Pernambuco','Recife','50000-000'),(7,'77777777777','Lucas Almeida','Masculino','1987-12-15','85977777777','Ceará','Fortaleza','60000-000'),(8,'88888888888','Rodrigo Costa','Masculino','1991-08-23','51988888888','Rio Grande do Sul','Porto Alegre','90000-000'),(9,'99999999999','Bruno Fernandes','Masculino','1983-02-07','48999999999','Santa Catarina','Florianópolis','88000-000'),(10,'10101010101','Diego Martins','Masculino','1996-05-19','62910101010','Goiás','Goiânia','74000-000'),(11,'11111111112','Felipe Carvalho','Masculino','1989-10-28','27911111112','Espírito Santo','Vitória','29000-000'),(12,'12121212121','Thiago Ribeiro','Masculino','1993-01-14','65912121212','Mato Grosso','Cuiabá','78000-000'),(13,'13131313131','Eduardo Castro','Masculino','1984-07-03','67913131313','Mato Grosso do Sul','Campo Grande','79000-000'),(14,'14141414141','Fernando Araújo','Masculino','1998-09-09','91914141414','Pará','Belém','66000-000'),(15,'15151515151','Daniel Melo','Masculino','1981-03-17','98915151515','Maranhão','São Luís','65000-000'),(16,'16161616161','Paulo Henrique','Masculino','2007-12-01','92916161616','Amazonas','Manaus','69000-000'),(17,'17171717171','Gabriel Rocha','Masculino','1990-08-30','83917171717','Paraíba','João Pessoa','58000-000'),(18,'18181818181','Matheus Nunes','Masculino','2002-05-25','84918181818','Rio Grande do Norte','Natal','59000-000'),(19,'19191919191','Leonardo Barros','Masculino','1986-11-11','82919191919','Alagoas','Maceió','57000-000'),(20,'20202020202','Gustavo Freitas','Masculino','1995-04-21','79920202020','Sergipe','Aracaju','49000-000'),(21,'21212121212','José Augusto','Masculino','2000-06-09','69921212121','Rondônia','Porto Velho','76800-000'),(22,'22222222223','Ricardo Teixeira','Masculino','1991-02-02','68922222223','Acre','Rio Branco','69900-000'),(23,'23232323232','Marcelo Batista','Masculino','1987-07-13','96923232323','Amapá','Macapá','68900-000'),(24,'24242424242','Fábio Correia','Masculino','2009-12-19','63924242424','Tocantins','Palmas','77000-000'),(25,'25252525252','Vinícius Duarte','Masculino','1992-10-06','61925252525','Distrito Federal','Brasília','70000-000'),(26,'26262626262','Marcela Silva','Feminino','1984-01-29','19926262626','São Paulo','Campinas','13000-000'),(27,'27272727272','Ana Paula Souza','Feminino','1989-08-08','13927272727','São Paulo','Santos','11000-000'),(28,'28282828282','Juliana Gomes','Feminino','2003-05-16','21928282828','Rio de Janeiro','Niterói','24000-000'),(29,'29292929292','Camila Fernandes','Feminino','2007-09-04','34929292929','Minas Gerais','Uberlândia','38400-000'),(30,'30303030303','Patrícia Andrade','Feminino','2006-11-27','74930303030','Bahia','Feira de Santana','44000-000'),(31,'31313131313','Roberto Moura','Masculino','1982-02-02','43931313131','Paraná','Londrina','86000-000'),(32,'32323232323','Otávio Almeida','Masculino','1994-06-12','81932323232','Pernambuco','Olinda','53000-000'),(33,'33333333334','Caio Cardoso','Masculino','1991-01-20','88933333334','Ceará','Juazeiro do Norte','63000-000'),(34,'34343434343','Hugo Moreira','Masculino','1983-04-09','51934343434','Rio Grande do Sul','Caxias do Sul','95000-000'),(35,'35353535353','Samuel Pinto','Masculino','1998-07-22','47935353535','Santa Catarina','Joinville','89200-000'),(36,'36363636363','Murilo Rezende','Masculino','1995-09-01','62936363636','Goiás','Anápolis','75000-000'),(37,'37373737373','Cláudio Ramos','Masculino','1981-05-14','27937373737','Espírito Santo','Vila Velha','29100-000'),(38,'38383838383','Adriano Cunha','Masculino','1990-03-18','65938383838','Mato Grosso','Várzea Grande','78100-000'),(39,'39393939393','Alan Pires','Masculino','1997-08-28','67939393939','Mato Grosso do Sul','Dourados','79800-000'),(40,'40404040404','Robson Vieira','Masculino','1985-12-11','91940404040','Pará','Ananindeua','67100-000'),(41,'41414141414','Antônio Lopes','Masculino','1986-06-30','98941414141','Maranhão','Imperatriz','65900-000'),(42,'42424242424','Sérgio Matos','Masculino','1999-01-07','92942424242','Amazonas','Parintins','69100-000'),(43,'43434343434','Mário Figueiredo','Masculino','1993-09-15','83943434343','Paraíba','Campina Grande','58400-000'),(44,'44444444445','Tatiane Costa','Feminino','1982-10-19','84944444445','Rio Grande do Norte','Mossoró','59600-000'),(45,'45454545454','Carolina Pacheco','Feminino','1987-07-26','82945454545','Alagoas','Arapiraca','57300-000'),(46,'46464646464','Isabela Monteiro','Feminino','1995-12-03','79946464646','Sergipe','Nossa Senhora do Socorro','49100-000'),(47,'47474747474','Fernanda Dias','Feminino','2002-11-09','69947474747','Rondônia','Ji-Paraná','76900-000'),(48,'48484848484','Natália Braga','Feminino','2011-08-14','68948484848','Acre','Cruzeiro do Sul','69980-000'),(49,'49494949494','Vanessa Almeida','Feminino','1997-06-21','96949494949','Amapá','Santana','68925-000'),(50,'50505050505','Beatriz Torres','Feminino','1989-04-30','63950505050','Tocantins','Araguaína','77800-000');
/*!40000 ALTER TABLE `tb_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_endereco_espaco`
--

DROP TABLE IF EXISTS `tb_endereco_espaco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_endereco_espaco` (
  `id_endereço` int(11) NOT NULL AUTO_INCREMENT,
  `nm_estado` varchar(30) NOT NULL,
  `nm_cidade` varchar(40) NOT NULL,
  `nm_bairro` varchar(40) NOT NULL,
  `nm_rua` varchar(40) NOT NULL,
  `nm_numero` int(11) NOT NULL,
  `nm_complemento` int(11) DEFAULT NULL,
  `cd_cep` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_endereço`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_endereco_espaco`
--

LOCK TABLES `tb_endereco_espaco` WRITE;
/*!40000 ALTER TABLE `tb_endereco_espaco` DISABLE KEYS */;
INSERT INTO `tb_endereco_espaco` VALUES (1,'São Paulo','São Vicente','Jardim Independência','General San Martin',601,NULL,'11380-480'),(2,'São Paulo','São Vicente','Centro','Praça Cel. Lopes',167,NULL,'11310-020'),(3,'São Paulo','São Vicente','Parque São Vicente','Praça Cel. Lopes',1811,NULL,'11340-000'),(4,'São Paulo','São Vicente','Parque São Vicente','Frei Gaspar',2716,NULL,'11340-000'),(5,'São Paulo','São José dos Campos','Jardim Sul','Maurício Cardoso',220,NULL,'12236-495'),(6,'São Paulo','Osasco','Ayrosa','João Marchetti',471,NULL,'06283-080'),(7,'São Paulo','São Paulo','Butantã','Praça Professor Rômulo Ribeiro Pieroni',4541,NULL,'05509-020'),(8,'São Paulo','São Paulo',' Alto de Pinheiros','Alexandre Herculano',2,NULL,'05464-020'),(9,'São Paulo','São Paulo',' Vila Santa Teresa','Avenida Ellis Maas 300',132,NULL,'05859-900'),(10,'São Paulo','Guarujá','Vila Áurea','Rua Itanhaém',32,NULL,'11454-550'),(11,'São Paulo','São Paulo','Conjunto Habitacional Barro Branco II','Travessa Ézio Camussi',121,NULL,'08473-516'),(12,'São Paulo','Itatiba','Vila Cruzeiro','Antônio Luiz Sanfins',100,NULL,'13257-080'),(13,'São Paulo','São Paulo','Jardim Robru','Antônio Alves Parente',9980,NULL,'08150-400'),(14,'São Paulo','Franco da Rocha','Jardim Sinki','Brasília Vieira',910,NULL,'07863-450'),(15,'São Paulo','São José dos Campos','Urbanova','Rua Serra das Vertentes',211,NULL,'12244-615'),(16,'São Paulo','Sumaré','Residencial Parque Pavan','Rua Catarino Leite Gonçalves',1364,NULL,'11013-901'),(17,'São Paulo','Cajamar','São Luiz (Polvilho)','Rua Alan Conceição da Hora',743,NULL,'07793-475'),(18,'São Paulo','Cotia','do Tijuco Preto','Estrada da Mata',3,NULL,'06721-140'),(19,'São Paulo','São José dos Campos','Palmeiras de São José','Rua Osiris Costa Monteiro de Barros',192,NULL,'12237-841'),(20,'São Paulo','Araraquara','Parque Residencial Vale do Sol','Rua Arquiteto Carlos do Amaral Sampaio',198,NULL,'14804-064'),(21,'São Paulo','Praia Grande','Vila Sônia','Rua João Andrade de Jesus',887,NULL,'11722-360'),(22,'São Paulo','Caraguatatuba','Massaguaçu','Rua Parati',987,NULL,'11677-111'),(23,'São Paulo','Marília','Jardim Edisom da Silva Lima','Rua Alfredo Gavassi',546,NULL,'17512-809'),(24,'São Paulo','Itapira','Santa Cruz','Rua Major David Pereira',983,NULL,'13974-370'),(25,'São Paulo','Taubaté','Vila São José','Avenida Tomé Portes Del Rei',323,NULL,'12070-610'),(26,'São Paulo','São Carlos','Parque Belvedere','Rua Tadao Kamicado',76,NULL,'13568-878'),(27,'São Paulo','Jales','Conjunto Habitacional Doutor Pedro Nogue','Rua Dirce Reis',806,NULL,'15707-322'),(28,'São Paulo','São Bernardo do Campo','Montanhão','Travessa Maria Ermínia de Jesus',132,NULL,'09784-422'),(29,'São Paulo','São Paulo','Jardim Cidade Pirituba','Rua República dos Palmares',698,NULL,'02945-160'),(30,'São Paulo','Guarulhos','Jardim Marilena','Rua Piedade do Rio Grande',1709,NULL,'07140-520'),(31,'São Paulo','Guarulhos','Vila Nova Cumbica','Rua Jaguaribarae',19,NULL,'07231-350'),(32,'São Paulo','Jaú','Jardim Conde Pinhal I','Avenida Paulo Pacheco Filho',193,NULL,'17203-120'),(33,'São Paulo','Jundiaí','Corrupira','Travessa Um Santa Isabel',42,NULL,'05086-030'),(34,'São Paulo','São Paulo','Alto da Lapa','Rua Dalton',408,NULL,'13214-826'),(35,'São Paulo','Campinas','Jardim do Lago','Rua das Primaveras',152,NULL,'13051-010'),(36,'São Paulo','Ribeirão Preto','Campos Elíseos','Rua José Bonifácio',877,NULL,'14085-210'),(37,'São Paulo','Sorocaba','Vila Santana','Rua Antônio Vieira de Almeida',642,NULL,'18075-060'),(38,'São Paulo','Mogi das Cruzes','Centro Cívico','Avenida Vereador Narciso Yague Guimarães',1200,NULL,'08780-500'),(39,'São Paulo','Bauru','Vila Cardia','Rua Rio Branco',921,NULL,'17013-020'),(40,'São Paulo','Piracicaba','Nova América','Rua Regente Feijó',300,NULL,'13416-100'),(41,'São Paulo','Santos','Boqueirão','Rua da Liberdade',47,NULL,'11045-030'),(42,'São Paulo','Barueri','Alphaville Industrial','Alameda Mamoré',1089,NULL,'06454-040'),(43,'São Paulo','Jundiaí','Vila Arens','Rua do Retiro',755,NULL,'13209-170'),(44,'São Paulo','São Caetano do Sul','Barcelona','Rua Alegre',500,NULL,'09551-250'),(45,'São Paulo','Indaiatuba','Jardim Morada do Sol','Rua dos Indaiás',221,NULL,'13346-040'),(46,'São Paulo','Itapevi','Jardim Vitápolis','Rua Pedro Paulino',339,NULL,'06653-020'),(47,'São Paulo','Presidente Prudente','Jardim Paulista','Rua Washington Luís',601,NULL,'19015-080'),(48,'São Paulo','Limeira','Jardim Glória','Rua Barão de Cascalho',415,NULL,'13484-210'),(49,'São Paulo','Bragança Paulista','Vila Aparecida','Rua Coronel Osório',172,NULL,'12900-320'),(50,'São Paulo','Americana','Jardim São Vito','Rua das Rosas',87,NULL,'13477-210');
/*!40000 ALTER TABLE `tb_endereco_espaco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_equipe`
--

DROP TABLE IF EXISTS `tb_equipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_equipe` (
  `id_equipe` int(11) NOT NULL AUTO_INCREMENT,
  `nm_equipe` varchar(40) NOT NULL,
  `ds_equipe` text DEFAULT NULL,
  PRIMARY KEY (`id_equipe`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_equipe`
--

LOCK TABLES `tb_equipe` WRITE;
/*!40000 ALTER TABLE `tb_equipe` DISABLE KEYS */;
INSERT INTO `tb_equipe` VALUES (1,'Bandeirantes FC','Inspirado na força de São Paulo, este time tem tradição em formar grandes meio-campistas.'),(2,'Carcarás do Nordeste','Conhecido por sua garra e por dominar o campo em dias de sol forte. Tática baseada em velocidade.'),(3,'Galo Forte MG','Time famoso por nunca desistir, virando jogos considerados perdidos. Sua torcida é chamada de \"Massa\".'),(4,'Fogo do Paquistão','Equipe lendária por sua camisa vermelha e preta e por suas jogadas ensaiadas no ataque.'),(5,'Máquina Tricolor Sul','A base desse time está na organização defensiva, com transição rápida e lateralidade no campo.'),(6,'Cariocas da Gema FC','Time que preza pelo toque de bola refinado, inspirado na escola de futebol arte do Rio de Janeiro.'),(7,'Dragão da Vila','Apesar do nome imponente, é um time pequeno que costuma surpreender os grandes em jogos mata-mata.'),(8,'Raposa Azul','Time que valoriza a técnica individual, com foco em jovens revelações da base e passes precisos.'),(9,'Leões da Ilha SC','Equipe conhecida pela sua força dentro de casa e pela pressão que impõe aos adversários no campo molhado.'),(10,'Gigantes da Colina','Time de grande história e tradição, focado em cruzamentos na área e cabeceios potentes.'),(11,'Academia de Futebol SP',NULL),(12,'Timão Alvinegro',NULL),(13,'Peixe da Baixada',NULL),(14,'Furacão do Paraná',NULL),(15,'Colorado Gaúcho',NULL),(16,'Grêmio Imortal',NULL),(17,'Cruzeiro do Sul FC',NULL),(18,'Bahiaço de Aço',NULL),(19,'Sport Recife Leão',NULL),(20,'Vascão da Gama',NULL),(21,'Fluminense das Laranjeiras',NULL),(22,'Botafogo Estrela',NULL),(23,'Goiás Esmeraldino',NULL),(24,'Atlético Paranaense CA',NULL),(25,'Red Bull Bragança',NULL),(26,'2MIN','Repleto de craques prontos para serem canpeôes do interclasse!'),(27,'2MIL','Sala sem tanto brilho, que não nasceu para ganhar esportivamente.'),(28,'Santos Praiano',NULL),(29,'Juventude Papo',NULL),(30,'Caxias Grená',NULL),(31,'Remo do Pará',NULL),(32,'Paysandu Bicolor',NULL),(33,'Náutico Timbu',NULL),(34,'América Mineiro Coelho',NULL),(35,'Chapecoense Verdão',NULL),(36,'Avaí Leão',NULL),(37,'CSA Marujo',NULL),(38,'Fortaleza Tricolor',NULL),(39,'Ceará Vozão',NULL),(40,'Coritiba Coxa',NULL),(41,'Operário Fantasma',NULL),(42,'Sampaio Corrêa Tubarão',NULL),(43,'Vitória Rubro-Negro',NULL),(44,'Cuiabá Dourado',NULL),(45,'Novorizontino Tigre',NULL),(46,'Mirassol Leão',NULL),(47,'Ituano Galo de Itu',NULL),(48,'CRB Alvirrubro',NULL),(49,'Tombense Carcará',NULL),(50,'Brusque Quadricolor',NULL);
/*!40000 ALTER TABLE `tb_equipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_espaco`
--

DROP TABLE IF EXISTS `tb_espaco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_espaco` (
  `id_espaço` int(11) NOT NULL AUTO_INCREMENT,
  `nm_espaço` varchar(50) NOT NULL,
  `nm_tipo_espaço` varchar(20) NOT NULL,
  `ds_local` text DEFAULT NULL,
  `ds_horarios_disponiveis` varchar(100) NOT NULL,
  `vl_preço_hora` varchar(15) NOT NULL,
  `id_endereço` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_espaço`),
  KEY `id_endereço` (`id_endereço`),
  CONSTRAINT `tb_espaco_ibfk_1` FOREIGN KEY (`id_endereço`) REFERENCES `tb_endereco_espaco` (`id_endereço`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_espaco`
--

LOCK TABLES `tb_espaco` WRITE;
/*!40000 ALTER TABLE `tb_espaco` DISABLE KEYS */;
INSERT INTO `tb_espaco` VALUES (1,'Fosfertil','Quadra','Quadra para jogar futebol, basquete, volei e handball','13h,14h,15h,16h,17h,18h,19h,20h,21h,22h','R$150,00',1),(2,'Fosfertil','Campo de society','Campo de grama society para futebol','13h,14h,15h,16h,17h,18h,19h,20h,21h,22h','R$180,00',1),(3,'Fosfertil','Academia','Academia para musculação e cardio','6h,7h,8h,9h,11h,12h,13h,14h,15h,16h,17h,18h,19h,20h,21h,22h,23h','R$110,00',1),(4,'Fosfertil','Piscina','Piscina para natação','10h,11h,12h,13h,14h,15h,16h,17h','R$120,00',1),(5,'Tumiaru','Academia','Academia para musculação e cardio','6h,7h,8h,9h,11h,12h,13h,14h,15h,16h,17h,18h,19h,20h,21h,22h,23h','R$120,00',2),(6,'Tumiaru','Quadra','Quadra para futsal, basquete, volei e handball','13h,14h,15h,16h,17h,18h,19h,20h,21h,22h','R$100,00',2),(7,'Tumiaru','Piscina','Piscina olìmpica profissional para natação','10h,11h,12h,13h,14h,15h,16h,17h','R$40,00',2),(8,'Planet Ball','Campo de society','Campo de grama society para futebol','13h,14h,15h,16h,17h,18h,19h,20h,21h,22h','R$150,00',3),(9,'Xplay','Campo de society','Campo de grama society para futebol','13h,14h,15h,16h,17h,18h,19h,20h,21h,22h','R$180,00',4),(10,'Arena Sul','Quadra de Vôlei','Quadra de areia para prática de vôlei de praia','08h,09h,10h,11h,12h,13h,14h,15h,16h','R$120,00',5),(11,'Basquete Total','Quadra de Basquete','Quadra oficial coberta com piso de madeira','10h,11h,12h,13h,14h,15h,16h,17h,18h','R$150,00',6),(12,'Fut7 Prime','Campo de futebol soc','Campo com grama sintética e iluminação noturna','14h,15h,16h,17h,18h,19h,20h,21h,22h','R$200,00',7),(13,'Tênis Clube Alto','Quadra de Tênis','Quadra rápida com estrutura para torneios','07h,08h,09h,10h,11h,12h,13h,14h,15h','R$90,00',8),(14,'Cross Area','Área de Treinamento ','Espaço coberto para cross training e circuitos','06h,07h,08h,09h,10h,11h,12h,13h,14h','R$100,00',9),(15,'Ginásio Leste','Ginásio Poliesportiv','Espaço para esportes indoor como futsal e handebol','08h,09h,10h,11h,12h,13h,14h,15h,16h','R$160,00',10),(16,'SkateZone','Pista de Skate','Pista de concreto com obstáculos para manobras','10h,11h,12h,13h,14h,15h,16h,17h,18h','R$50,00',11),(17,'Piscina Olímpica Central','Piscina Olímpica','Piscina coberta aquecida, 50m com raias','06h,07h,08h,09h,10h,11h,12h,13h,14h','R$140,00',12),(18,'Beach Sports Arena','Quadra de Beach Tenn','Quadra de areia fina com rede oficial','08h,09h,10h,11h,12h,13h,14h,15h,16h','R$100,00',13),(19,'FutArena Zona Norte','Campo de society','Campo sintético com vestiários e arquibancada','13h,14h,15h,16h,17h,18h,19h,20h,21h,22h','R$170,00',14),(20,'Vôlei Master','Quadra de Vôlei','Quadra oficial coberta com piso emborrachado','09h,10h,11h,12h,13h,14h,15h,16h,17h','R$110,00',15),(21,'Tênis Pro Court','Quadra de Tênis','Quadra de saibro com iluminação noturna','07h,08h,09h,10h,11h,12h,13h,14h,15h','R$95,00',16),(22,'Society Express','Campo de society','Campo fechado com gramado novo e redes','14h,15h,16h,17h,18h,19h,20h,21h,22h','R$160,00',17),(23,'Beach Arena Norte','Quadra de Beach Tenn','Quadra dupla de areia fina com chuveiro externo','08h,09h,10h,11h,12h,13h,14h,15h,16h','R$85,00',18),(24,'Cross Training FitBox','Área de Treinamento ','Box equipado com barras, pesos e pneus','06h,07h,08h,09h,10h,11h,12h,13h,14h','R$120,00',19),(25,'Basquete Central Pro','Quadra de Basquete','Quadra coberta com tabela profissional','10h,11h,12h,13h,14h,15h,16h,17h,18h','R$135,00',20),(26,'Ginásio Municipal Oeste','Ginásio Poliesportiv','Espaço público coberto multiuso','08h,09h,10h,11h,12h,13h,14h,15h,16h','R$100,00',21),(27,'Skate Track 90º','Pista de Skate','Pista com obstáculos e rampas de nível intermediário','10h,11h,12h,13h,14h,15h,16h,17h,18h','R$60,00',22),(28,'Arena Natação Sul','Piscina Olímpica','Piscina semiolímpica aquecida com 6 raias','06h,07h,08h,09h,10h,11h,12h,13h,14h','R$130,00',23),(29,'Futevôlei Clube','Quadra de Futevôlei','Quadra de areia com rede ajustável e iluminação','08h,09h,10h,11h,12h,13h,14h,15h,16h','R$90,00',24),(30,'Tênis Open Club','Quadra de Tênis','Quadra rápida com cadeiras de árbitro','07h,08h,09h,10h,11h,12h,13h,14h,15h','R$105,00',25),(31,'Society Pro Gol','Campo de society','Gramado com padrão FIFA, ideal para torneios','14h,15h,16h,17h,18h,19h,20h,21h,22h','R$185,00',26),(32,'Vôlei Park Arena','Quadra de Vôlei','Quadra ao ar livre em praça esportiva','09h,10h,11h,12h,13h,14h,15h,16h,17h','R$75,00',27),(33,'Basquete 360º','Quadra de Basquete','Quadra de rua com marcação oficial e tabelas novas','10h,11h,12h,13h,14h,15h,16h,17h,18h','R$80,00',28),(34,'CrossZone Extreme','Área de Treinamento ','Espaço indoor com cordas, caixas e anilhas','06h,07h,08h,09h,10h,11h,12h,13h,14h','R$110,00',29),(35,'Tênis Elite','Quadra de Tênis','Saibro bem cuidado com área de descanso','07h,08h,09h,10h,11h,12h,13h,14h,15h','R$100,00',30),(36,'Futsal King','Quadra de Futsal','Quadra coberta com piso emborrachado','13h,14h,15h,16h,17h,18h,19h,20h,21h','R$140,00',31),(37,'Piscina Clube Vida','Piscina Olímpica','Piscina externa com 50 metros e arquibancadas','06h,07h,08h,09h,10h,11h,12h,13h,14h','R$125,00',32),(38,'Skate Zona Leste','Pista de Skate','Pista para iniciantes com corrimões e quarter pipes','10h,11h,12h,13h,14h,15h,16h,17h,18h','R$45,00',33),(39,'Handebol Arena','Quadra de Handebol','Quadra multiuso com marcação específica para handebol','09h,10h,11h,12h,13h,14h,15h,16h,17h','R$130,00',34),(40,'Beach Multi Esportes','Quadra de Beach Tenn','Espaço duplo para beach tênis e futevôlei','08h,09h,10h,11h,12h,13h,14h,15h,16h','R$95,00',35),(41,'Academia Livre Central','Área de Musculação A','Espaço público com equipamentos ao ar livre','05h,06h,07h,08h,09h,10h,11h,12h,13h','R$50,00',36),(42,'Tênis Kids Club','Quadra de Tênis Infa','Mini quadra com redes baixas e piso macio','08h,09h,10h,11h,12h,13h,14h,15h,16h','R$60,00',37),(43,'Society da Vila','Campo de society','Campo comunitário com grama sintética','14h,15h,16h,17h,18h,19h,20h,21h,22h','R$100,00',38),(44,'Ginásio Escolar Norte','Ginásio Poliesportiv','Espaço coberto anexo à escola pública','08h,09h,10h,11h,12h,13h,14h,15h,16h','R$90,00',39),(45,'Futebol Master Arena','Campo de Futebol','Campo de grama natural para jogos oficiais','13h,14h,15h,16h,17h,18h,19h,20h,21h','R$200,00',40),(46,'Box Funcional Xtreme','Área de Treinamento ','Box fechado com equipamento de alto rendimento','06h,07h,08h,09h,10h,11h,12h,13h,14h','R$130,00',41),(47,'Skate Rock Park','Pista de Skate','Pista temática com grafites e som ambiente','10h,11h,12h,13h,14h,15h,16h,17h,18h','R$55,00',42),(48,'Beach Point','Quadra de Beach Tenn','Espaço com areia branca e rede oficial','08h,09h,10h,11h,12h,13h,14h,15h,16h','R$105,00',43),(49,'Tênis Fast Club','Quadra de Tênis','Quadra rápida com agendamento por app','07h,08h,09h,10h,11h,12h,13h,14h,15h','R$98,00',44),(50,'Futevôlei Pro Zona Sul','Quadra de Futevôlei','Quadra de areia com duchas e bar esportivo','08h,09h,10h,11h,12h','R$100,00',45);
/*!40000 ALTER TABLE `tb_espaco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_historico_partidas`
--

DROP TABLE IF EXISTS `tb_historico_partidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_historico_partidas` (
  `id_historico` int(11) NOT NULL AUTO_INCREMENT,
  `id_reserva` int(11) DEFAULT NULL,
  `vl_placar` varchar(100) NOT NULL,
  `ds_partida` text NOT NULL,
  PRIMARY KEY (`id_historico`),
  KEY `id_reserva` (`id_reserva`),
  CONSTRAINT `tb_historico_partidas_ibfk_1` FOREIGN KEY (`id_reserva`) REFERENCES `tb_reserva` (`id_reserva`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_historico_partidas`
--

LOCK TABLES `tb_historico_partidas` WRITE;
/*!40000 ALTER TABLE `tb_historico_partidas` DISABLE KEYS */;
INSERT INTO `tb_historico_partidas` VALUES (1,1,'3x2','Gols: Máquina Tricolor Sul: Eduardo Castro (2), Daniel Melo (1) — Timão Alvinegro: Vitor Hugo (1), Sofia Mendes (1). Máquina Tricolor Sul venceu o Timão Alvinegro por 3x2.'),(2,2,'1x1','Gols: Galo Forte MG: Lucas Almeida (1) — Cuiabá Dourado: Afonso Bezerra (1). Galo Forte MG empatou com Cuiabá Dourado por 1x1.'),(3,3,'2x0','Gols: Dragão da Vila: Leonardo Barros (1), Gustavo Freitas (1) — Cruzeiro do Sul FC: Sem gols. Dragão da Vila venceu o Cruzeiro do Sul FC por 2x0.'),(4,4,'3x3','Gols: Raposa Azul: Ricardo Teixeira (1), Marcelo Batista (1), Fábio Correia (1) — Juventude Papo: Victor Hugo (1), Clara Morais (1), André Pimentel (1). Raposa Azul empatou com Juventude Papo por 3x3.'),(5,5,'2x1','Gols: Máquina Tricolor Sul: Eduardo Castro (1), Daniel Melo (1) — Colorado Gaúcho: Raul Tavares (1). Máquina Tricolor Sul venceu o Colorado Gaúcho por 2x1.'),(6,6,'1x2','Gols: Leões da Ilha SC: Vinícius Duarte (1) — Fortaleza Tricolor: Regina Falcão (1), Ronaldo Sales (1). Leões da Ilha SC perdeu para Fortaleza Tricolor por 1x2.'),(7,7,'0x0','Gols: Carcarás do Nordeste: Sem gols — Timão Alvinegro: Sem gols. Carcarás do Nordeste empatou com Timão Alvinegro por 0x0.'),(8,8,'1x3','Gols: Galo Forte MG: Rodrigo Costa (1) — Máquina Tricolor Sul: Eduardo Castro (2), Fernando Araujo (1). Galo Forte MG perdeu para Máquina Tricolor Sul por 1x3.'),(9,9,'2x2','Gols: Cuiabá Dourado: César Lins (1), Afonso Bezerra (1) — Dragão da Vila: Leonardo Barros (2). Cuiabá Dourado empatou com Dragão da Vila por 2x2.'),(10,10,'3x1','Gols: Cruzeiro do Sul FC: Viviane Castro (2), Leonardo Nogueira (1) — Raposa Azul: Marcelo Batista (1). Cruzeiro do Sul FC venceu o Raposa Azul por 3x1.'),(11,11,'1x2','Gols: Juventude Papo: Victor Hugo (1) — Colorado Gaúcho: Raul Tavares (1), Thiago Assis (1). Juventude Papo perdeu para Colorado Gaúcho por 1x2.'),(12,12,'4x0','Gols: Leões da Ilha SC: Vinícius Duarte (2), Marcela Silva (1), Ana Souza (1) — Fortaleza Tricolor: Sem gols. Leões da Ilha SC venceu o Fortaleza Tricolor por 4x0.'),(13,13,'0x1','Gols: Carcarás do Nordeste: Sem gols — Timão Alvinegro: Beatriz Pires (1). Carcarás do Nordeste perdeu para Timão Alvinegro por 0x1.'),(14,14,'2x3','Gols: Galo Forte MG: Lucas Almeida (2) — Máquina Tricolor Sul: Daniel Melo (1), Eduardo Castro (2). Galo Forte MG perdeu para Máquina Tricolor Sul por 2x3.'),(15,15,'1x0','Gols: Cuiabá Dourado: Vivian Santoro (1) — Dragão da Vila: Sem gols. Cuiabá Dourado venceu o Dragão da Vila por 1x0.'),(16,16,'3x2','Gols: Cruzeiro do Sul FC: Fábio Camargo (1), Viviane Castro (2) — Raposa Azul: Ricardo Teixeira (1), Fábio Correia (1). Cruzeiro do Sul FC venceu o Raposa Azul por 3x2.'),(17,17,'0x2','Gols: Juventude Papo: Sem gols — Colorado Gaúcho: Thiago Assis (2). Juventude Papo perdeu para Colorado Gaúcho por 0x2.'),(18,18,'2x1','Gols: Leões da Ilha SC: Ana Souza (1), Vinícius Duarte (1) — Fortaleza Tricolor: Ronaldo Sales (1). Leões da Ilha SC venceu o Fortaleza Tricolor por 2x1.'),(19,19,'1x1','Gols: Carcarás do Nordeste: Rafael Lima (1) — Timão Alvinegro: Sofia Mendes (1). Carcarás do Nordeste empatou com Timão Alvinegro por 1x1.'),(20,20,'3x0','Gols: Galo Forte MG: Rodrigo Costa (1), Bruno Fernandes (2) — Máquina Tricolor Sul: Sem gols. Galo Forte MG venceu o Máquina Tricolor Sul por 3x0.'),(21,21,'2x2','Gols: Cuiabá Dourado: Afonso Bezerra (2) — Dragão da Vila: Gustavo Freitas (2). Cuiabá Dourado empatou com Dragão da Vila por 2x2.'),(22,22,'1x3','Gols: Cruzeiro do Sul FC: Leonardo Nogueira (1) — Raposa Azul: Marcelo Batista (2), Ricardo Teixeira (1). Cruzeiro do Sul FC perdeu para Raposa Azul por 1x3.'),(23,23,'4x1','Gols: Juventude Papo: André Pimentel (2), Clara Morais (1), Victor Hugo (1) — Colorado Gaúcho: Raul Tavares (1). Juventude Papo venceu o Colorado Gaúcho por 4x1.'),(24,24,'2x2','Gols: Leões da Ilha SC: Marcela Silva (2) — Fortaleza Tricolor: Regina Falcão (1), Ronaldo Sales (1). Leões da Ilha SC empatou com Fortaleza Tricolor por 2x2.'),(25,25,'0x0','Gols: Carcarás do Nordeste: Sem gols — Timão Alvinegro: Sem gols. Carcarás do Nordeste empatou com Timão Alvinegro por 0x0.'),(26,26,'1x4','Gols: Galo Forte MG: Bruno Fernandes (1) — Máquina Tricolor Sul: Fernando Araujo (1), Eduardo Castro (3). Galo Forte MG perdeu para Máquina Tricolor Sul por 1x4.'),(27,27,'2x0','Gols: Cuiabá Dourado: César Lins (1), Afonso Bezerra (1) — Dragão da Vila: Sem gols. Cuiabá Dourado venceu o Dragão da Vila por 2x0.'),(28,28,'1x1','Gols: Cruzeiro do Sul FC: Viviane Castro (1) — Raposa Azul: Fábio Correia (1). Cruzeiro do Sul FC empatou com Raposa Azul por 1x1.'),(29,29,'3x2','Gols: Juventude Papo: Clara Morais (2), André Pimentel (1) — Colorado Gaúcho: Priscila Dias (1), Thiago Assis (1). Juventude Papo venceu o Colorado Gaúcho por 3x2.'),(30,30,'2x2','Gols: Leões da Ilha SC: Ana Souza (1), Vinícius Duarte (1) — Fortaleza Tricolor: Tatiane Pereira (2). Leões da Ilha SC empatou com Fortaleza Tricolor por 2x2.'),(31,31,'0x1','Gols: Carcarás do Nordeste: Sem gols — Timão Alvinegro: Beatriz Pires (1). Carcarás do Nordeste perdeu para Timão Alvinegro por 0x1.'),(32,32,'2x3','Gols: Galo Forte MG: Lucas Almeida (2) — Máquina Tricolor Sul: Daniel Melo (1), Eduardo Castro (2). Galo Forte MG perdeu para Máquina Tricolor Sul por 2x3.'),(33,33,'1x0','Gols: Cuiabá Dourado: Vivian Santoro (1) — Dragão da Vila: Sem gols. Cuiabá Dourado venceu o Dragão da Vila por 1x0.'),(34,34,'3x2','Gols: Cruzeiro do Sul FC: Fábio Camargo (1), Viviane Castro (2) — Raposa Azul: Ricardo Teixeira (1), Fábio Correia (1). Cruzeiro do Sul FC venceu o Raposa Azul por 3x2.'),(35,35,'0x2','Gols: Juventude Papo: Sem gols — Colorado Gaúcho: Thiago Assis (2). Juventude Papo perdeu para Colorado Gaúcho por 0x2.'),(36,36,'2x1','Gols: Leões da Ilha SC: Ana Souza (1), Vinícius Duarte (1) — Fortaleza Tricolor: Ronaldo Sales (1). Leões da Ilha SC venceu o Fortaleza Tricolor por 2x1.'),(37,37,'1x1','Gols: Carcarás do Nordeste: Rafael Lima (1) — Timão Alvinegro: Sofia Mendes (1). Carcarás do Nordeste empatou com Timão Alvinegro por 1x1.'),(38,38,'3x0','Gols: Galo Forte MG: Rodrigo Costa (1), Bruno Fernandes (2) — Máquina Tricolor Sul: Sem gols. Galo Forte MG venceu o Máquina Tricolor Sul por 3x0.'),(39,39,'2x2','Gols: Cuiabá Dourado: Afonso Bezerra (2) — Dragão da Vila: Gustavo Freitas (2). Cuiabá Dourado empatou com Dragão da Vila por 2x2.'),(40,40,'1x3','Gols: Cruzeiro do Sul FC: Leonardo Nogueira (1) — Raposa Azul: Marcelo Batista (2), Ricardo Teixeira (1). Cruzeiro do Sul FC perdeu para Raposa Azul por 1x3.'),(41,41,'4x1','Gols: Juventude Papo: André Pimentel (2), Clara Morais (1), Victor Hugo (1) — Colorado Gaúcho: Raul Tavares (1). Juventude Papo venceu o Colorado Gaúcho por 4x1.'),(42,42,'2x2','Gols: Leões da Ilha SC: Marcela Silva (2) — Fortaleza Tricolor: Regina Falcão (1), Ronaldo Sales (1). Leões da Ilha SC empatou com Fortaleza Tricolor por 2x2.'),(43,43,'0x0','Gols: Carcarás do Nordeste: Sem gols — Timão Alvinegro: Sem gols. Carcarás do Nordeste empatou com Timão Alvinegro por 0x0.'),(44,44,'1x4','Gols: Galo Forte MG: Bruno Fernandes (1) — Máquina Tricolor Sul: Fernando Araujo (1), Eduardo Castro (3). Galo Forte MG perdeu para Máquina Tricolor Sul por 1x4.'),(45,45,'2x0','Gols: Cuiabá Dourado: César Lins (1), Afonso Bezerra (1) — Dragão da Vila: Sem gols. Cuiabá Dourado venceu o Dragão da Vila por 2x0.'),(46,46,'1x1','Gols: Cruzeiro do Sul FC: Viviane Castro (1) — Raposa Azul: Fábio Correia (1). Cruzeiro do Sul FC empatou com Raposa Azul por 1x1.'),(47,47,'3x2','Gols: Juventude Papo: Clara Morais (2), André Pimentel (1) — Colorado Gaúcho: Priscila Dias (1), Thiago Assis (1). Juventude Papo venceu o Colorado Gaúcho por 3x2.'),(48,48,'2x2','Gols: Leões da Ilha SC: Ana Souza (1), Vinícius Duarte (1) — Fortaleza Tricolor: Tatiane Pereira (2). Leões da Ilha SC empatou com Fortaleza Tricolor por 2x2.'),(49,49,'0x1','Gols: Carcarás do Nordeste: Sem gols — Timão Alvinegro: Beatriz Pires (1). Carcarás do Nordeste perdeu para Timão Alvinegro por 0x1.'),(50,50,'2x3','Gols: Galo Forte MG: Lucas Almeida (2) — Máquina Tricolor Sul: Daniel Melo (1), Eduardo Castro (2). Galo Forte MG perdeu para Máquina Tricolor Sul por 2x3.');
/*!40000 ALTER TABLE `tb_historico_partidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_jogador_equipe`
--

DROP TABLE IF EXISTS `tb_jogador_equipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jogador_equipe` (
  `id_jogador` int(11) NOT NULL AUTO_INCREMENT,
  `nm_jogador` varchar(50) NOT NULL,
  `id_cadastro` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jogador`),
  KEY `id_cadastro` (`id_cadastro`),
  CONSTRAINT `tb_jogador_equipe_ibfk_1` FOREIGN KEY (`id_cadastro`) REFERENCES `tb_cadastro` (`id_cadastro`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jogador_equipe`
--

LOCK TABLES `tb_jogador_equipe` WRITE;
/*!40000 ALTER TABLE `tb_jogador_equipe` DISABLE KEYS */;
INSERT INTO `tb_jogador_equipe` VALUES (1,'João Silva',1),(2,'Carlos Pereira',2),(3,'Marcos Oliveira',3),(4,'Pedro Souza',4),(5,'Rafael Lima',5),(6,'André Santos',6),(7,'Lucas Almeida',7),(8,'Rodrigo Costa',8),(9,'Bruno Fernandes',9),(10,'Diego Martins',10),(11,'Felipe Carvalho',11),(12,'Thiago Ribeiro',12),(13,'Eduardo Castro',13),(14,'Fernando Araujo',14),(15,'Daniel Melo',15),(16,'Paulo Henrique',16),(17,'Gabriel Rocha',17),(18,'Matheus Nunes',18),(19,'Leonardo Barros',19),(20,'Gustavo Freitas',20),(21,'José Augusto',21),(22,'Ricardo Teixeira',22),(23,'Marcelo Batista',23),(24,'Fábio Correia',24),(25,'Vinícius Duarte',25),(26,'Marcela Silva',26),(27,'Ana Souza',27),(28,'Juliana gomes',28),(29,'Camila Fernandes',29),(30,'Patrícia Andrade',30),(31,'Alexandre Gomes',NULL),(32,'Mariana Costa',NULL),(33,'Renato Faria',NULL),(34,'Sofia Mendes',NULL),(35,'Vitor Hugo',NULL),(36,'Beatriz Pires',NULL),(37,'Guilherme Neves',NULL),(38,'Larissa Ramos',NULL),(39,'Henrique Diniz',NULL),(40,'Elisa Pereira',NULL),(41,'Gustavo Barros',NULL),(42,'Letícia Morais',NULL),(43,'Raul Tavares',NULL),(44,'Priscila Dias',NULL),(45,'Thiago Assis',NULL),(46,'Amanda Freitas',NULL),(47,'Elias Teixeira',NULL),(48,'Júlia Azevedo',NULL),(49,'Leonardo Nogueira',NULL),(50,'Viviane Castro',NULL),(51,'Fábio Camargo',NULL),(52,'Helena Costa',NULL),(53,'Ricardo Martins',NULL),(54,'Camila Souza',NULL),(55,'Bruno Teixeira',NULL),(56,'Débora Alves',NULL),(57,'Eduardo Garcia',NULL),(58,'Patrícia Ribeiro',NULL),(59,'Luiz Fernando',NULL),(60,'Mariana Dantas',NULL),(61,'Pedro Henrique',NULL),(62,'Alice Vieira',NULL),(63,'Jonas Oliveira',NULL),(64,'Vitória Nunes',NULL),(65,'Caio Rocha',NULL),(66,'Juliana Castro',NULL),(67,'Gabriel Santos',NULL),(68,'Letícia Melo',NULL),(69,'Arthur Lima',NULL),(70,'Laura Xavier',NULL),(71,'Thiago Assunção',NULL),(72,'Isabela Freitas',NULL),(73,'Diego Mendes',NULL),(74,'Fernanda Barros',NULL),(75,'Marcelo Gomes',NULL),(76,'Natália Pires',NULL),(77,'Daniel Ferreira',NULL),(78,'Renata Correia',NULL),(79,'Rafael Almeida',NULL),(80,'Sofia Cavalcante',NULL),(81,'Henrique Silva',NULL),(82,'Giovana Lemos',NULL),(83,'Lucas Farias',NULL),(84,'Beatriz Cardoso',NULL),(85,'Victor Hugo',NULL),(86,'Clara Morais',NULL),(87,'André Pimentel',NULL),(88,'Carolina Bastos',NULL),(89,'Guilherme Neves',NULL),(90,'Márcia Toledo',NULL),(91,'Rodrigo Queiroz',NULL),(92,'Érica Sampaio',NULL),(93,'João Paulo',NULL),(94,'Simone Prado',NULL),(95,'Antônio Rezende',NULL),(96,'Valéria Aguiar',NULL),(97,'Elias Bittencourt',NULL),(98,'Daniela Ribeiro',NULL),(99,'Felipe Magalhães',NULL),(100,'Mônica Duarte',NULL),(101,'Leandro Campos',NULL),(102,'Vanessa Borges',NULL),(103,'Sérgio Nogueira',NULL),(104,'Lívia Motta',NULL),(105,'Marcos Vinícius',NULL),(106,'Luana Figueiredo',NULL),(107,'Gustavo Penha',NULL),(108,'Aline Zacarias',NULL),(109,'Ivan Cordeiro',NULL),(110,'Taís Guimarães',NULL),(111,'Paulo Bueno',NULL),(112,'Regina Falcão',NULL),(113,'Ronaldo Sales',NULL),(114,'Tatiane Pereira',NULL),(115,'Sebastião Luz',NULL),(116,'Elisa Torres',NULL),(117,'Vinícius Rocha',NULL),(118,'Bruna Mendes',NULL),(119,'William Prado',NULL),(120,'Jéssica Matos',NULL),(121,'Otávio Silveira',NULL),(122,'Carla Abreu',NULL),(123,'Hugo Vasconcelos',NULL),(124,'Márcia Cruz',NULL),(125,'Luan Moreira',NULL),(126,'Zélia Rangel',NULL),(127,'Evandro Teles',NULL),(128,'Suzana Góis',NULL),(129,'Osmar Santos',NULL),(130,'Afonso Bezerra',NULL),(131,'Vivian Santoro',NULL),(132,'César Lins',NULL),(133,'Doralice Guedes',NULL),(134,'Eugênio Valente',NULL),(135,'Flávia Holanda',NULL),(136,'Geraldo Rocha',NULL),(137,'Hilda Menezes',NULL),(138,'Igor Caldeira',NULL),(139,'Janaína Goulart',NULL),(140,'Kelvin Bastos',NULL),(141,'Lourdes Quintela',NULL),(142,'Mauro Vasconcelos',NULL),(143,'Nádia Campos',NULL),(144,'Orlando Freitas',NULL),(145,'Pâmela Matos',NULL),(146,'Quirino Dias',NULL),(147,'Raquel Soares',NULL),(148,'Silas Toledo',NULL),(149,'Tainá Escobar',NULL),(150,'Juliano Simões',NULL);
/*!40000 ALTER TABLE `tb_jogador_equipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_reserva`
--

DROP TABLE IF EXISTS `tb_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_reserva` (
  `id_reserva` int(11) NOT NULL AUTO_INCREMENT,
  `dt_reserva` date NOT NULL,
  `dt_realização_reserva` date NOT NULL,
  `hr_inicio` time NOT NULL,
  `hr_fim` time NOT NULL,
  `vl_total_valor` decimal(5,2) NOT NULL,
  `id_cadastro` int(11) DEFAULT NULL,
  `id_espaço` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `id_cadastro` (`id_cadastro`),
  KEY `id_espaço` (`id_espaço`),
  CONSTRAINT `tb_reserva_ibfk_1` FOREIGN KEY (`id_cadastro`) REFERENCES `tb_cadastro` (`id_cadastro`),
  CONSTRAINT `tb_reserva_ibfk_2` FOREIGN KEY (`id_espaço`) REFERENCES `tb_espaco` (`id_espaço`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_reserva`
--

LOCK TABLES `tb_reserva` WRITE;
/*!40000 ALTER TABLE `tb_reserva` DISABLE KEYS */;
INSERT INTO `tb_reserva` VALUES (1,'2025-09-27','2025-09-26','19:00:00','20:00:00',150.00,1,1),(2,'2025-09-28','2025-09-26','19:00:00','21:00:00',360.00,2,2),(3,'2025-09-29','2025-09-27','09:00:00','11:00:00',220.00,3,3),(4,'2025-09-30','2025-09-25','12:00:00','13:00:00',120.00,4,4),(5,'2025-10-01','2025-09-24','16:00:00','18:00:00',240.00,5,5),(6,'2025-10-02','2025-09-23','16:00:00','19:00:00',300.00,6,6),(7,'2025-10-03','2025-09-23','16:00:00','18:00:00',240.00,7,7),(8,'2025-10-04','2025-09-22','19:00:00','21:00:00',300.00,8,8),(9,'2025-10-05','2025-09-21','15:00:00','17:00:00',360.00,9,9),(10,'2025-10-06','2025-09-20','08:00:00','09:00:00',120.00,10,10),(11,'2025-10-07','2025-09-19','10:00:00','11:00:00',150.00,11,11),(12,'2025-10-08','2025-09-18','14:00:00','16:00:00',400.00,12,12),(13,'2025-10-09','2025-09-17','08:00:00','10:00:00',180.00,13,13),(14,'2025-10-10','2025-09-16','06:00:00','07:00:00',100.00,14,14),(15,'2025-10-11','2025-09-15','10:00:00','11:00:00',160.00,15,15),(16,'2025-10-12','2025-09-14','10:00:00','11:00:00',150.00,16,16),(17,'2025-10-13','2025-09-13','10:00:00','11:00:00',280.00,17,17),(18,'2025-10-14','2025-09-12','08:00:00','09:00:00',100.00,18,18),(19,'2025-10-15','2025-09-11','21:00:00','22:00:00',170.00,19,19),(20,'2025-10-16','2025-09-10','15:00:00','17:00:00',220.00,20,20),(21,'2025-10-16','2025-09-19','07:00:00','09:00:00',190.00,21,21),(22,'2025-10-08','2025-09-15','14:00:00','16:00:00',320.00,22,22),(23,'2025-10-16','2025-09-19','07:00:00','09:00:00',190.00,23,23),(24,'2025-10-17','2025-09-15','13:00:00','15:00:00',240.00,24,24),(25,'2025-10-18','2025-09-16','10:00:00','11:00:00',135.00,25,25),(26,'2025-10-19','2025-09-17','15:00:00','16:00:00',100.00,26,26),(27,'2025-10-20','2025-09-16','10:00:00','12:00:00',120.00,27,27),(28,'2025-10-21','2025-09-15','12:00:00','13:00:00',130.00,28,28),(29,'2025-10-22','2025-09-14','08:00:00','10:00:00',180.00,29,29),(30,'2025-10-23','2025-09-13','08:00:00','10:00:00',210.00,30,30),(31,'2025-10-24','2025-09-15','17:00:00','18:00:00',185.00,31,31),(32,'2025-10-25','2025-09-14','07:00:00','09:00:00',150.00,32,32),(33,'2025-10-26','2025-09-15','10:00:00','12:00:00',160.00,33,33),(34,'2025-10-27','2025-09-13','11:00:00','13:00:00',220.00,34,34),(35,'2025-10-28','2025-09-14','14:00:00','16:00:00',200.00,35,35),(36,'2025-10-29','2025-09-13','20:00:00','21:00:00',140.00,36,36),(37,'2025-10-30','2025-09-12','09:00:00','11:00:00',125.00,37,37),(38,'2025-10-31','2025-09-11','10:00:00','12:00:00',90.00,38,38),(39,'2025-11-01','2025-09-10','15:00:00','17:00:00',260.00,39,39),(40,'2025-11-02','2025-09-12','08:00:00','10:00:00',190.00,40,40),(41,'2025-11-03','2025-09-10','06:00:00','08:00:00',100.00,41,41),(42,'2025-11-04','2025-09-11','11:00:00','13:00:00',120.00,42,42),(43,'2025-11-05','2025-09-12','14:00:00','16:00:00',200.00,43,43),(44,'2025-11-06','2025-09-11','08:00:00','09:00:00',90.00,44,44),(45,'2025-11-07','2025-09-10','19:00:00','21:00:00',400.00,45,45),(46,'2025-11-08','2025-09-12','06:00:00','08:00:00',260.00,46,46),(47,'2025-11-09','2025-09-11','10:00:00','12:00:00',110.00,47,47),(48,'2025-11-10','2025-09-09','08:00:00','09:00:00',105.00,48,48),(49,'2025-11-11','2025-09-08','10:00:00','12:00:00',196.00,49,49),(50,'2025-11-12','2025-09-07','08:00:00','12:00:00',500.00,50,50);
/*!40000 ALTER TABLE `tb_reserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-30 10:28:07
