CREATE DATABASE  IF NOT EXISTS `bdgestproyectos` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bdgestproyectos`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: bdgestproyectos
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `actividades`
--

DROP TABLE IF EXISTS `actividades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividades` (
  `codactividad` tinyint NOT NULL DEFAULT '0',
  `nomactividad` varchar(40) DEFAULT NULL,
  `desactividad` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`codactividad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividades`
--

LOCK TABLES `actividades` WRITE;
/*!40000 ALTER TABLE `actividades` DISABLE KEYS */;
INSERT INTO `actividades` VALUES (1,'Actividad 1',''),(2,'Actividad 2',''),(3,'Actividad 3',''),(4,'Actividad 4',''),(5,'Actividad 5',''),(6,'Actividad 6','');
/*!40000 ALTER TABLE `actividades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrativos`
--

DROP TABLE IF EXISTS `administrativos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrativos` (
  `numadmin` int NOT NULL DEFAULT '0',
  `numem` int DEFAULT NULL,
  PRIMARY KEY (`numadmin`),
  KEY `fk_administrativos_empleados` (`numem`),
  CONSTRAINT `fk_administrativos_empleados` FOREIGN KEY (`numem`) REFERENCES `empleados` (`numem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrativos`
--

LOCK TABLES `administrativos` WRITE;
/*!40000 ALTER TABLE `administrativos` DISABLE KEYS */;
INSERT INTO `administrativos` VALUES (1,110),(3,390),(2,562);
/*!40000 ALTER TABLE `administrativos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `numcli` int NOT NULL DEFAULT '0',
  `nomcli` varchar(20) DEFAULT NULL,
  `ape1cli` varchar(20) DEFAULT NULL,
  `ape2cli` varchar(20) DEFAULT NULL,
  `tlfcli` char(9) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `dircli` varchar(150) DEFAULT NULL,
  `codposcli` char(5) DEFAULT NULL,
  `fecnaccli` date DEFAULT NULL,
  `ptosacumulados` int DEFAULT NULL,
  `ptoscanjeados` int DEFAULT NULL,
  PRIMARY KEY (`numcli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Loreta','Zapata',NULL,'911 703 9','LoretaZapataOzuna@trashymail.c','C/ Eras 18 Pedrezuela','28723','2002-01-01',10,10),(2,'Teodequilda','Godoy',NULL,'955 510 9','TeodequildaGodoyBahena@dodgit.','Eusebio D??vila 82 La Campana','41429','2001-08-09',10,10),(3,'Danel','Jim??nez',NULL,'877 886 7','DanelJiminezSisneros@pookmail.','Outid de Arriba 7 Alcanar','43530','2000-11-19',10,10),(4,'Eliezer','Arroyo',NULL,'981 329 5','EliezerArroyoPedraza@pookmail.','Quevedo 1 Cari??o','15360','2003-09-04',10,10),(5,'Clelia','Gurule',NULL,'911 626 2','CleliaGuruleBenitez@mailinator','C/ Amoladera 95 Ajalvir','28864','2001-10-05',10,10),(6,'Longinos','Nazario',NULL,'923 684 6','LonginosNazarioAcevedo@mailina','Enxertos 49 La Atalaya','37591','0000-00-00',10,10),(7,'D??bora','Carranza',NULL,'911 956 5','DeboraCarranzaOrdonez@mailinat','Avda. de la Estaci??n 80 Chapiner??a','28694','0000-00-00',10,10),(8,'Florida','Candelaria',NULL,'920 308 2','FloridaCandelariaOcasio@mailin','C/ Libertad 80 El Barraco','05110','0000-00-00',10,10),(9,'Elisea','Pab??n',NULL,'984 208 4','EliseaPabonAngulo@dodgit.com','Ctra. Villena 11 San Mart??n del Rey Aurelio','33950','0000-00-00',10,10),(10,'Michele','Acosta',NULL,'971 452 1','MicheleAcostaLuevano@dodgit.co','Zumalakarregi etorbidea 83 Calvi??','07184','2002-02-21',10,10),(11,'Sofiel','Centeno',NULL,'710 745 1','SofielCentenoApodaca@trashymai','Avenda??o 72 N??jar','04100','2002-04-21',10,10),(12,'Abbot','Valadez',NULL,'967 914 8','AbbotValadezCenteno@spambob.co','C/ Domingo Beltr??n 62 Mahora','02240','2001-11-30',10,10),(13,'Myrna','Ibarra',NULL,'886 479 2','MyrnaIbarraRodriguez@mailinato','Atamaria 37 Pontecesures','36640','2000-02-05',10,10),(14,'Hilario','Alonso',NULL,'928 949 3','HilarioAlonsoTijerina@pookmail','Avda. Explanada Barnuevo 23 Artenara','35350','2000-12-20',10,10),(15,'Elsira','Gaytan',NULL,'881 364 7','ElsiraGaytanVillagomez@pookmai','El Roqueo 41 Ribeira','15960','2003-02-20',10,10),(16,'Nacho','Batista',NULL,'643 260 1','NachoBatistaFranco@spambob.com','Cartagena 6 Ceheg??n','30430','1999-12-03',10,10),(17,'Evarista','Torres',NULL,'687 956 1','EvaristaTorresSalazar@mailinat','Avda. Andaluc??a 96 Rabanera','26133','1999-06-04',10,10),(18,'Domiciano','Ballesteros',NULL,'785 112 5','DomicianoBallesterosUribe@dodg','Plaza Col??n 81 Astorga','24700','2001-10-17',10,10),(19,'Arqu??medes','Mu??iz',NULL,'915 232 8','ArquimedesMunizCordova@trashym','C/ Eras 53 Lozoya','28742','2001-09-17',10,10),(20,'Eira','Salcido',NULL,'953 001 8','EiraSalcidoTirado@trashymail.c','Ctra. Bail??n-Motril 66 Santa Elena','23213','2001-08-15',10,10),(21,'Carmine','Mata',NULL,'941 573 4','CarmineMataCarrera@trashymail.','Ctra. Hornos 33 Och??nduri','26213','2002-07-01',10,10),(22,'Patsy','Cordova',NULL,'983 328 9','PatsyCordovaLebron@trashymail.','Calvo Sotelo 85 Tudela de Duero','47320','2002-06-14',10,10),(23,'Madeleine','Merino',NULL,'932 032 3','MadeleineMerinoPosada@mailinat','Cercas Bajas 89 Lli???? d\'Amunt','08186','2002-06-14',10,10),(24,'Hilen','Anaya',NULL,'637 192 0','HilenAnayaEnriquez@mailinator.','Cartagena 54 Ulea','30612','2001-06-21',10,10),(25,'Gian','Gastelum',NULL,'964 171 8','GianGastelumBarrientos@pookmai','Paseo Junquera 33 Caudiel','12440','2001-06-29',10,10),(26,'Fuencista','Becerra',NULL,'937 478 8','FuencistaBecerraAlvarez@pookma','C/ Benito Guinea 35 Premi?? de Mar','08330','1998-06-29',10,10),(27,'Georges','Matos',NULL,'665 977 4','GeorgesMatosNevarez@trashymail','C/ Canarias 96 Hernani','20120','2003-12-18',10,10),(28,'Midas','Saenz',NULL,'822 724 1','MidasSaenzEspinal@spambob.com','Antonio V??zquez 19 Fuencaliente de la Palma','38740','2001-01-15',10,10),(29,'Ray','Villareal',NULL,'789 149 9','RayVillarealColunga@mailinator','Cruce Casa de Postas 36 Pampaneira','18411','2002-11-15',10,10),(30,'Joseph','Haro',NULL,'716 392 8','JosephHaroPrado@pookmail.com','C/ Rosa de los Vientos 87 Arcos de la Frontera','11630','2000-11-19',10,10),(31,'Alejandrino','Romero',NULL,'925 152 9','AlejandrinoRomeroMadrid@mailin','Reise??or 97 Quintanar de la Orden','45800','2000-02-21',10,10),(32,'Lain','Alaniz',NULL,'917 441 9','LainAlanizJasso@trashymail.com','C/ Henan Cortes 85 Alcorc??n','28920','1985-04-01',10,10),(33,'Jessica','Rojo',NULL,'981 095 4','JessicaRojoNava@mailinator.com','El Roqueo 54 Vedra','15885','2001-04-15',10,10),(34,'Minotauro','Hinojosa',NULL,'959 586 3','MinotauroHinojosaMojica@dodgit','Prolongacion San Sebastian 62 Linares de la Sierra','21341','2001-04-17',10,10),(35,'Ahmed','Zaragoza',NULL,'974 901 4','AhmedZaragozaVera@trashymail.c','Ca??adilla 46 A??nsa-Sobrarbe','22330','2001-04-17',10,10),(36,'Cupido','Sotelo',NULL,'628 406 3','CupidoSoteloRodrigez@mailinato','C/ Los Herr??n 91 Villafranca de los Barros','06220','2001-09-13',10,10),(37,'Grau','Nino',NULL,'858 206 6','GrauNinoRubio@pookmail.com','Paseo del Atl??ntico 46 Arenas del Rey','18126','2001-05-18',10,10),(38,'Chiara','Leyva',NULL,'958 466 1','ChiaraLeyvaRojo@spambob.com','Paseo del Atl??ntico 92 P????ar','18127','2001-08-18',10,10),(39,'Neptuno','Gamboa',NULL,'957 024 6','NeptunoGamboaPorras@dodgit.com','La Fontanilla 35 Villanueva de C??rdoba','14440','2003-07-11',10,10),(40,'Adassa','Porras',NULL,'868 006 4','AdassaPorrasApodaca@dodgit.com','Cartagena 3 Oj??s','30611','2003-09-22',10,10),(41,'Arydea','Segura',NULL,'941 042 5','ArydeaSeguraZavala@dodgit.com','Ctra. de la Puerta 42 Bergasa','26588','2003-01-22',10,10),(42,'Daila','Mena',NULL,'958 000 3','DailaMenaTafoya@trashymail.com','C??diz 87 Ferreira','18513','2003-01-12',10,10),(43,'Igone','Guti??rrez',NULL,'923 105 2','IgoneGutierrezHernadez@pookmai','Socampo 1 Sepulcro-Hilario','37638','2001-03-12',10,10),(44,'Clotilde','Ulibarri',NULL,'913 015 9','ClotildeUlibarriVelasco@mailin','Ventanilla de Beas 56 Madrid','28000','2001-04-18',10,10),(45,'Lara','Varela',NULL,'691 127 3','LaraVarelaSoria@pookmail.com','Cartagena 97 Caravaca de la Cruz','30400','2001-04-30',10,10),(46,'Dalma','Abrego',NULL,'868 570 4','DalmaAbregoSaldana@pookmail.co','Alcon Molina 8 Mazarr??n','30870','1998-04-10',10,10),(47,'Prudencio','Haro',NULL,'663 979 0','PrudencioHaroSanabria@mailinat','R??a de San Pedro 42 Berrocal de Salvatierra','37795','2002-08-10',10,10),(48,'Yair','Reyna',NULL,'693 941 4','YairReynaHinojosa@mailinator.c','Prolongacion San Sebastian 87 El Cerro de And??valo','21320','2002-07-21',10,10),(49,'Mari??n','Tejada',NULL,'923 579 4','MarienTejadaRangel@mailinator.','Rua da Rapina 91 Aldehuela de la B??veda','37460','2002-10-30',10,10),(50,'Amira','Cardona',NULL,'988 016 3','AmiraCardonaBarela@pookmail.co','Salzillo 91 A Mezquita','32549','2000-09-07',10,10),(51,'Maggie','Benavidez',NULL,'913 712 3','MaggieBenavidezCenteno@pookmai','C/ Amoladera 20 Ribatejada','28815','2001-09-11',10,10),(52,'Uberto','Mateo',NULL,'941 077 1','UbertoMateoUrias@pookmail.com','Plaza Col??n 51 Albelda de Iregua','26120','2002-12-19',10,10),(53,'Apia','Carri??n',NULL,'968 843 6','ApiaCarrionRocha@pookmail.com','Alcon Molina 94 Los Alc??zares','30710','0000-00-00',10,10),(54,'Emillen','Oquendo',NULL,'971 142 3','EmillenOquendoPichardo@spambob','Zumalakarregi etorbidea 58 Bunyola','07110','0000-00-00',10,10),(55,'Erico','Barrios',NULL,'601 095 1','EricoBarriosRael@pookmail.com','Bouci??a 35 Amposta','43870','0000-00-00',10,10),(205,'Marisa','Lorenzo','Bosque','911870101','MariaLorenzo1@gmail.com','C/ Viento 2, Estepona','29680','1987-01-01',30,100);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores`
--

DROP TABLE IF EXISTS `colaboradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaboradores` (
  `numcol` int NOT NULL DEFAULT '0',
  `nomcol` varchar(20) DEFAULT NULL,
  `ape1col` varchar(20) DEFAULT NULL,
  `ape2col` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`numcol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores`
--

LOCK TABLES `colaboradores` WRITE;
/*!40000 ALTER TABLE `colaboradores` DISABLE KEYS */;
INSERT INTO `colaboradores` VALUES (1,'Neville','Elvis','Geraldine'),(2,'Isabella','Keely','Cameron'),(3,'Angela','Ursa','Dustin'),(4,'Halee','Dominique','Mannix'),(5,'Lareina','Ariel','Octavia'),(6,'Fleur','Roanna','Nash'),(7,'Justina','Dolan','Melissa'),(8,'Ciara','Kai','Reuben'),(9,'Jorden','Britanni','Wynne'),(10,'Yael','Karyn','Kimberley'),(11,'Zahir','Connor','Shad'),(12,'Galena','Melanie','Haley'),(13,'Jonas','Nomlanga','Emma'),(14,'Quintessa','Barclay','Lana'),(15,'Hiroko','Melissa','Mallory'),(16,'Brielle','Zahir','Isabelle'),(17,'Roth','Jonas','Noelani'),(18,'Jessamine','Natalie','Connor'),(19,'Duncan','Charles','George'),(20,'Daquan','Carl','Sonia'),(21,'Rebekah','Calista','Ayanna'),(22,'Mannix','Jocelyn','Paula'),(23,'Adele','Yetta','Jana'),(24,'Eve','Perry','Kimberley'),(25,'Susan','Camille','Colette'),(26,'Karen','Ebony','Ciaran'),(27,'Willow','Bernard','Nathan'),(28,'Merritt','Lawrence','Harrison'),(29,'Tamara','Sigourney','Lane'),(30,'Daniel','Bernard','Orla'),(31,'Bethany','Tana','Sybill'),(32,'Chase','Keane','Griffith'),(33,'Vernon','Kelsey','Gay'),(34,'Heidi','Shad','Beau'),(35,'Walter','Oleg','Deanna'),(36,'Carissa','Daniel','Kelly'),(37,'Graham','Chiquita','Malik'),(38,'Angelica','Solomon','Colette'),(39,'Irene','Phillip','Astra'),(40,'Adena','Zena','Catherine'),(41,'Patience','Beatrice','Ariana'),(42,'Madonna','Eaton','Leo'),(43,'Zenaida','Colorado','Brianna'),(44,'Galena','Lydia','Xaviera'),(45,'Indigo','Kylan','Nathan'),(46,'Morgan','Octavius','Veda'),(47,'Colorado','Ava','Brielle'),(48,'Shay','Brynn','Zena'),(49,'Ariel','Lareina','Patricia'),(50,'Buckminster','Leila','Orson'),(51,'Evelyn','Francis','Samson'),(52,'Halee','Whoopi','Blythe'),(53,'Wynne','Wallace','Forrest'),(54,'Barbara','Ebony','Virginia'),(55,'Ann','Nomlanga','Judith'),(56,'Peter','Helen','Cooper'),(57,'Mona','Lynn','Eric'),(58,'Risa','Jaquelyn','Ira'),(59,'Rhiannon','Keegan','Adrienne'),(60,'Kessie','Melyssa','Lila'),(61,'Duncan','Yasir','Valentine'),(62,'Blake','Georgia','Sydney'),(63,'Conan','Faith','Samantha'),(64,'Kiara','Hermione','Bo'),(65,'Jocelyn','Jakeem','Sage'),(66,'Zachery','Cleo','Cruz'),(67,'Cleo','Tamekah','Sebastian'),(68,'Kamal','Neil','Erich'),(69,'Warren','Joseph','Sarah'),(70,'Wylie','Alvin','Joy'),(71,'Kyle','Felicia','Jenna'),(72,'Jolene','Illana','Rylee'),(73,'Hadley','Marny','Buckminster'),(74,'Ciara','Chastity','Kendall'),(75,'Ezekiel','Mira','Zephania'),(76,'Buffy','Melinda','Clare'),(77,'Graiden','Stacy','Basil'),(78,'Claire','Hannah','Reagan'),(79,'Justine','Francis','Edan'),(80,'Galvin','Elliott','Flavia'),(81,'Scott','Shelby','Mariam'),(82,'Ezra','Garth','Aristotle'),(83,'Brynne','Nola','Nita'),(84,'Dora','Trevor','Tate'),(85,'Roary','Cruz','Lani'),(86,'Rigel','Grant','Damon'),(87,'Acton','Oliver','Bianca'),(88,'Benjamin','Uta','Joel'),(89,'Tallulah','Indira','Ross'),(90,'Cassidy','Quon','Blaze'),(91,'Jordan','Lucian','Wyatt'),(92,'Bryar','Unity','Erich'),(93,'Christopher','Ann','Aimee'),(94,'Thor','Francis','Veda'),(95,'Riley','Burton','Camille'),(96,'Hammett','Vladimir','Kasimir'),(97,'Lyle','Wayne','Darryl'),(98,'Octavia','Amir','Catherine'),(99,'Clayton','Veronica','Logan'),(100,'Alden','Blaine','Hamish'),(310,'Marisa','Lorenzo','Bosque');
/*!40000 ALTER TABLE `colaboradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradoresenproyectos`
--

DROP TABLE IF EXISTS `colaboradoresenproyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaboradoresenproyectos` (
  `numproyecto` int NOT NULL DEFAULT '0',
  `numcol` int NOT NULL DEFAULT '0',
  `codfuncion` tinyint NOT NULL DEFAULT '0',
  `fecinitrabajo` date NOT NULL DEFAULT '0000-00-00',
  `fecfintrabajo` date DEFAULT NULL,
  `observaciones` text,
  PRIMARY KEY (`numproyecto`,`numcol`,`codfuncion`,`fecinitrabajo`),
  KEY `fk_colaboradoresenproyectos_colaboradores` (`numcol`),
  KEY `fk_colaboradoresenproyectos_funciones` (`codfuncion`),
  CONSTRAINT `fk_colaboradoresenproyectos_colaboradores` FOREIGN KEY (`numcol`) REFERENCES `colaboradores` (`numcol`),
  CONSTRAINT `fk_colaboradoresenproyectos_funciones` FOREIGN KEY (`codfuncion`) REFERENCES `funciones` (`codfuncion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradoresenproyectos`
--

LOCK TABLES `colaboradoresenproyectos` WRITE;
/*!40000 ALTER TABLE `colaboradoresenproyectos` DISABLE KEYS */;
INSERT INTO `colaboradoresenproyectos` VALUES (1,1,2,'2010-05-05','2010-10-05',NULL);
/*!40000 ALTER TABLE `colaboradoresenproyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `numem` int NOT NULL,
  `numde` int DEFAULT NULL,
  `extelem` char(3) DEFAULT NULL,
  `fecnaem` date NOT NULL,
  `fecinem` date NOT NULL,
  `salarem` decimal(18,2) DEFAULT NULL,
  `comisem` decimal(18,2) DEFAULT NULL,
  `numhiem` tinyint DEFAULT NULL,
  `nomem` varchar(20) DEFAULT NULL,
  `ape1em` varchar(20) DEFAULT NULL,
  `ape2em` varchar(20) DEFAULT NULL,
  `dniem` char(9) DEFAULT NULL,
  `userem` char(12) DEFAULT NULL,
  `passem` char(12) DEFAULT NULL,
  PRIMARY KEY (`numem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (110,121,'350','2065-02-17','1985-03-15',1000.00,NULL,2,'PEPITA','PEREZ','sanchez','25012345a','sa',''),(120,112,'840','1970-09-10','1995-10-01',1200.00,NULL,3,'JUAN','LOPEZ','sanchez','12000111a',NULL,''),(130,112,'810','1958-03-01','1988-03-01',987.00,NULL,1,'ANA','GARCIA','sanchez','23089765a',NULL,''),(150,121,'340','1972-01-15','2001-01-15',856.00,NULL,0,'JULIA','VARGAS','sanchez','12345678b',NULL,''),(160,111,'740','1969-03-18','2002-03-18',998.00,NULL,4,'PEPA','CANALES','sanchez',NULL,NULL,NULL),(180,110,'505','1971-02-11','1998-02-11',1967.00,NULL,5,'JUANA','RODRIGUEZ','sanchez',NULL,NULL,NULL),(190,121,'350','1969-01-22','1997-01-22',1174.00,NULL,0,'LUISA','GOMEZ','sanchez',NULL,NULL,NULL),(210,100,'200','1964-02-24','1986-02-24',3000.00,NULL,3,'CESAR','PONS','sanchez',NULL,NULL,NULL),(240,111,'760','1959-03-01','1987-03-01',2145.00,110.00,1,'MARIO','LASA','sanchez',NULL,NULL,NULL),(250,100,'250','1954-07-12','1976-07-12',3123.00,110.00,2,'LUCIANO','TEROL','sanchez',NULL,NULL,NULL),(260,100,'220','1960-09-10','1979-09-10',1896.00,NULL,0,'JULIO','PEREZ','sanchez',NULL,NULL,NULL),(270,112,'800','1979-10-08','2003-10-08',1215.00,110.00,2,'AUREO','AGUIRRE','sanchez',NULL,NULL,NULL),(280,130,'410','1964-02-15','2000-02-15',978.00,NULL,2,'MARCOS','PEREZ','sanchez',NULL,NULL,NULL),(285,122,'620','1966-09-10','1989-09-10',867.00,110.00,4,'JULIANA','VEIGA','sanchez',NULL,NULL,NULL),(290,120,'910','1962-10-08','1981-10-08',865.00,50.00,2,'PILAR','GALVEZ','sanchez',NULL,NULL,NULL),(310,130,'480','1971-01-15','1993-01-15',1125.00,NULL,3,'LAVINIA','SANZ','sanchez',NULL,NULL,NULL),(320,122,'620','1957-02-05','1978-02-05',1235.00,NULL,0,'ADRIANA','ALBA','sanchez',NULL,NULL,NULL),(330,112,'850','1949-03-01','1972-03-01',998.76,100.00,6,'ANTONIO','LOPEZ','sanchez',NULL,NULL,NULL),(350,122,'610','1949-09-10','1984-09-10',864.00,NULL,3,'OCTAVIO','GARCIA','sanchez',NULL,NULL,NULL),(360,111,'750','1958-10-28','1978-10-10',1724.00,80.00,5,'DOROTEA','FLOR','sanchez',NULL,NULL,NULL),(370,121,'360','1967-06-22','1987-01-20',999.99,NULL,0,'OTILIA','POLO','sanchez',NULL,NULL,NULL),(380,112,'880','1968-03-30','1988-01-01',1111.00,NULL,3,'GLORIA','GUIL','sanchez',NULL,NULL,NULL),(390,110,'500','1966-02-19','1986-10-08',1435.00,NULL,0,'AUGUSTO','GARCIA','sanchez',NULL,NULL,NULL),(400,111,'780','1969-08-18','1987-11-01',1198.00,NULL,2,'CORNELIO','SANZ','sanchez',NULL,NULL,NULL),(410,120,'910','1968-07-14','1988-10-13',735.00,NULL,1,'DORINDA','LARA','sanchez',NULL,NULL,NULL),(420,130,'450','1966-10-22','1988-10-13',968.00,90.00,1,'FABIOLA','RUIZ','sanchez',NULL,NULL,NULL),(430,122,'650','1967-10-26','1988-11-19',1196.00,NULL,2,'MICAELA','MARTIN','sanchez',NULL,NULL,NULL),(440,111,'760','1966-09-26','1988-11-19',882.00,100.00,1,'CARMEN','MORAN','sanchez',NULL,NULL,NULL),(450,112,'880','1966-10-21','1986-02-28',1112.00,NULL,NULL,'LUCRECIA','LARA','sanchez',NULL,NULL,NULL),(480,111,'760','1965-04-04','1986-02-28',1265.00,100.00,2,'AZUCENA','MU??OZ','sanchez',NULL,NULL,NULL),(490,112,'880','1964-06-06','1986-02-28',2178.00,100.00,1,'CLAUDIA','FIERRO','sanchez',NULL,NULL,NULL),(500,111,'750','1965-10-08','1988-01-01',1009.00,NULL,NULL,'VALERIANA','MORA','sanchez',NULL,NULL,NULL),(510,110,'550','1966-05-04','1987-01-01',1532.00,NULL,NULL,'LIVIA','DURAN','sanchez',NULL,NULL,NULL),(550,111,'780','1970-01-10','1986-11-01',1245.00,120.00,2,'DIANA','PINO','sanchez',NULL,NULL,NULL),(560,111,'780','1980-09-10','2000-11-10',999.00,NULL,1,'HONORIA','TORRES','sanchez',NULL,NULL,NULL),(561,131,'930','1967-06-12','2012-01-24',2040.00,150.00,2,'Rosa','del Campo','sanchez',NULL,NULL,NULL),(562,131,'940','1972-02-12','2012-01-24',1428.00,1428.00,1,'Pedro','Gonz??lez','sanchez',NULL,NULL,NULL),(563,122,'970','1980-10-05','2012-01-30',1836.00,395.76,NULL,'Pedro','Gonz??lez','sanchez',NULL,NULL,NULL),(890,121,'111','1900-01-01','1950-01-01',3060.00,2040.00,NULL,'eva','tortosa','perez',NULL,'eeee',NULL),(891,121,'111','1900-01-01','1950-01-01',2040.00,2040.00,NULL,'eva','tortosa','perez',NULL,'eeee',NULL),(999,121,'213','1900-01-01','1950-01-01',2040.00,2040.00,NULL,'eva2','tortosa','sanchez',NULL,'qq',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funciones`
--

DROP TABLE IF EXISTS `funciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funciones` (
  `codfuncion` tinyint NOT NULL DEFAULT '0',
  `nomfuncion` varchar(40) DEFAULT NULL,
  `desfuncion` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`codfuncion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funciones`
--

LOCK TABLES `funciones` WRITE;
/*!40000 ALTER TABLE `funciones` DISABLE KEYS */;
INSERT INTO `funciones` VALUES (1,'Funci??n 1',''),(2,'Funci??n 2',''),(3,'Funci??n 3',''),(4,'Funci??n 4',''),(5,'Funci??n 5',''),(6,'Funci??n 6','');
/*!40000 ALTER TABLE `funciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gratificaciones`
--

DROP TABLE IF EXISTS `gratificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gratificaciones` (
  `numproyecto` int NOT NULL DEFAULT '0',
  `numtecnico` int NOT NULL DEFAULT '0',
  `tiempoenproyecto` int DEFAULT NULL,
  `gratifTotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`numproyecto`,`numtecnico`),
  KEY `fk_gratif_tecnicos` (`numtecnico`),
  CONSTRAINT `fk_gratif_proyectos` FOREIGN KEY (`numproyecto`) REFERENCES `proyectos` (`numproyecto`),
  CONSTRAINT `fk_gratif_tecnicos` FOREIGN KEY (`numtecnico`) REFERENCES `tecnicos` (`numtec`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gratificaciones`
--

LOCK TABLES `gratificaciones` WRITE;
/*!40000 ALTER TABLE `gratificaciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `gratificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyectos` (
  `numproyecto` int NOT NULL DEFAULT '0',
  `numcli` int DEFAULT NULL,
  `director` int DEFAULT NULL,
  `fecpresupuesto` date DEFAULT NULL,
  `importepresu` decimal(12,2) unsigned DEFAULT NULL,
  `personal_prev` tinyint unsigned DEFAULT NULL,
  `aprobado` bit(1) DEFAULT NULL,
  `feciniproy` date DEFAULT NULL,
  `duracionprevista` tinyint DEFAULT NULL,
  `fecfinproy` date DEFAULT NULL,
  `codactividad` tinyint DEFAULT NULL,
  `gratifPorDia` decimal(7,2) DEFAULT '10.00',
  PRIMARY KEY (`numproyecto`),
  KEY `fk_proyectos_clientes` (`numcli`),
  KEY `fk_direccion` (`director`),
  KEY `fk_actividad` (`codactividad`),
  CONSTRAINT `fk_actividad` FOREIGN KEY (`codactividad`) REFERENCES `actividades` (`codactividad`),
  CONSTRAINT `fk_direccion` FOREIGN KEY (`director`) REFERENCES `tecnicos` (`numtec`),
  CONSTRAINT `fk_proyectos_clientes` FOREIGN KEY (`numcli`) REFERENCES `clientes` (`numcli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (1,1,1,'2010-01-02',7890.80,5,_binary ' ','2010-05-05',10,'2010-10-05',1,10.00),(2,1,1,'2011-11-02',4890.00,3,_binary '\0',NULL,5,NULL,2,10.00),(3,25,3,'2011-12-12',7890.00,5,_binary ' ','2011-12-15',12,'2012-03-22',2,10.00),(4,34,2,'2010-01-23',8890.00,5,_binary ' ','2010-06-01',8,'2010-12-22',4,10.00),(5,12,4,'2010-08-02',6800.00,4,_binary ' ','2010-09-01',15,'2010-10-02',3,10.00),(6,36,5,'2012-03-08',35559.00,8,_binary ' ','2012-04-01',8,'2012-05-22',1,10.00),(7,205,8,'2012-01-12',1500.00,2,_binary ' ','2012-01-15',1,'2012-06-15',2,10.00),(8,15,5,'2010-02-02',45000.00,8,_binary '\0',NULL,4,NULL,5,10.00),(9,44,1,'2012-07-17',4000.00,1,_binary '\0',NULL,3,NULL,6,10.00),(10,36,3,'2013-01-16',40000.00,6,_binary ' ','2013-02-01',5,NULL,1,10.00);
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnicos`
--

DROP TABLE IF EXISTS `tecnicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tecnicos` (
  `numtec` int NOT NULL AUTO_INCREMENT,
  `numem` int DEFAULT NULL,
  PRIMARY KEY (`numtec`),
  KEY `fk_tecnicos_empleados` (`numem`),
  CONSTRAINT `fk_tecnicos_empleados` FOREIGN KEY (`numem`) REFERENCES `empleados` (`numem`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnicos`
--

LOCK TABLES `tecnicos` WRITE;
/*!40000 ALTER TABLE `tecnicos` DISABLE KEYS */;
INSERT INTO `tecnicos` VALUES (1,120),(2,130),(3,150),(4,160),(5,180),(6,190),(7,210),(8,240),(9,250),(10,260),(11,270),(12,280),(13,285),(14,290),(15,310),(16,320),(17,330),(18,350),(19,360),(20,370),(21,380),(22,400),(23,410),(24,420),(25,430),(26,440),(27,450),(28,480),(29,490),(30,500),(31,510),(32,550),(33,560),(34,561),(35,563),(36,890),(37,891),(38,999);
/*!40000 ALTER TABLE `tecnicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tecnicosenproyectos`
--

DROP TABLE IF EXISTS `tecnicosenproyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tecnicosenproyectos` (
  `numproyecto` int NOT NULL DEFAULT '0',
  `numtec` int NOT NULL DEFAULT '0',
  `codfuncion` tinyint NOT NULL DEFAULT '0',
  `fecinitrabajo` date NOT NULL DEFAULT '0000-00-00',
  `fecfintrabajo` date DEFAULT NULL,
  `observaciones` text,
  PRIMARY KEY (`numproyecto`,`numtec`,`codfuncion`,`fecinitrabajo`),
  KEY `fk_tecnicosenproyectos_funciones` (`codfuncion`),
  KEY `fk_tecnicosenproyectos_tecnicos` (`numtec`),
  CONSTRAINT `fk_tecnicosenproyectos_funciones` FOREIGN KEY (`codfuncion`) REFERENCES `funciones` (`codfuncion`),
  CONSTRAINT `fk_tecnicosenproyectos_proyectos` FOREIGN KEY (`numproyecto`) REFERENCES `proyectos` (`numproyecto`),
  CONSTRAINT `fk_tecnicosenproyectos_tecnicos` FOREIGN KEY (`numtec`) REFERENCES `tecnicos` (`numtec`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tecnicosenproyectos`
--

LOCK TABLES `tecnicosenproyectos` WRITE;
/*!40000 ALTER TABLE `tecnicosenproyectos` DISABLE KEYS */;
INSERT INTO `tecnicosenproyectos` VALUES (1,1,1,'2010-05-05','2010-10-05',NULL),(1,2,2,'2010-05-05','2010-10-05',NULL),(1,3,2,'2010-05-05','2010-10-05',NULL),(3,3,1,'2011-12-15','2012-03-22',NULL),(3,5,2,'2011-12-15','2012-03-22',NULL),(3,7,1,'2011-12-15','2012-03-22',NULL);
/*!40000 ALTER TABLE `tecnicosenproyectos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-20 20:25:08