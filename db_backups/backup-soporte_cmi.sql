-- MariaDB dump 10.19  Distrib 10.4.21-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: soporte_cmi
-- ------------------------------------------------------
-- Server version	10.4.21-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `rol_id` int(2) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del rol.',
  `nombre` varchar(50) NOT NULL COMMENT 'Nombre del rol.',
  PRIMARY KEY (`rol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrador'),(2,'Soporte A'),(3,'Soporte B'),(4,'Soporte C'),(5,'Cliente de la Presidencia'),(6,'Cliente de una Dependencia'),(7,'Cliente de una A.P.D.');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades`
--

DROP TABLE IF EXISTS `unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidades` (
  `estado` tinyint(1) NOT NULL,
  `unidad_id` int(4) NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(150) NOT NULL,
  `grado_academ_titular` varchar(40) DEFAULT NULL,
  `nombres_titular` varchar(40) DEFAULT NULL,
  `ap_pat_titular` varchar(25) DEFAULT NULL,
  `ap_mat_titular` varchar(25) DEFAULT NULL,
  `orden_jerarquico` enum('Desconocido','Coordinaci??n','Subcoordinaci??n','Departamento','Interna','Direcci??n','Subdirecci??n') NOT NULL DEFAULT 'Desconocido',
  `grupo_pertenece` enum('Presidencia','Dependencia','Administraci??n P??blica Desconcentrada') NOT NULL,
  `padre_id` int(4) DEFAULT NULL,
  `abuelo_id` int(4) DEFAULT NULL,
  `unidad_alias` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`unidad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades`
--

LOCK TABLES `unidades` WRITE;
/*!40000 ALTER TABLE `unidades` DISABLE KEYS */;
INSERT INTO `unidades` VALUES (0,1,'Secretar??a Particular','Lic.','Aura del Carmen','Medina','Cano','Coordinaci??n','Presidencia',NULL,NULL,NULL),(0,2,'Enlace Administrativo','Lic.','Christina Guadalupe','Vidal','Andrade','Desconocido','',NULL,1,NULL),(0,3,'Secretaria Ejecutiva','Lic.','M??nica','Rodr??guez','Hidalgo','Desconocido','',NULL,1,NULL),(0,4,'Secretar??a T??cnica','Dr.','Mario De Jes??s','Cerino','Madrigal','Coordinaci??n','Presidencia',NULL,NULL,NULL),(0,5,'Unidad de Informaci??n y An??lisis','Mtro.','Miguel','P??rez ','Le??n','Desconocido','',NULL,4,NULL),(0,6,'Departamento de Investigaci??n','Lic.','Cecilia Guadalupe','Lezama','Sarmiento','Departamento','',5,4,NULL),(0,7,'Departamento de Informaci??n y Estad??stica','Mtra.','Ang??lica','L??pez','Baeza','Departamento','',5,4,NULL),(0,8,'Unidad de Seguimiento y Evaluaci??n','Mtro.','Juan Gabriel','Hern??ndez','Cruz','Desconocido','',NULL,4,NULL),(0,9,'Departamento de Seguimiento y Evaluaci??n','Mtro.','Ernesto Francisco','Mart??nez','Vargas','Departamento','',8,4,NULL),(0,10,'Departamento de Sistematizaci??n','Lic.','Juan Luis','Baeza','Mendoza','Departamento','',8,4,NULL),(0,11,'Coordinaci??n de Comunicaci??n Social y Relaciones P??blicas','Mtra.','Lizbeth','M??ndez','Landero','Coordinaci??n','Presidencia',NULL,NULL,NULL),(0,12,'Unidad de Seguimiento y An??lisis de la Informaci??n','Lic.','Francisco Javier','Gayt??n','Farah','Subcoordinaci??n','',NULL,11,NULL),(0,13,'Departamento de Monitoreo','C.','Hip??lito','Torres','Arias','Departamento','',12,11,NULL),(0,14,'Unidad de Informaci??n','Lic.','Claudia Janette','Campos','Notario','Subcoordinaci??n','',NULL,11,NULL),(0,15,'Departamento de Prensa y Edici??n','Lic.','Humberto','Yduarte','Castillo','Departamento','',14,11,NULL),(0,16,'Unidad de Relaciones P??blicas, Protocolo y Eventos','Lic.','Kristian Antonio','Cerino','C??rdova','Subcoordinaci??n','',NULL,11,NULL),(0,17,'Coordinaci??n de Modernizaci??n e Innovaci??n',NULL,'Emilio Francisco','Alvarez','Quevedo','Coordinaci??n','Presidencia',NULL,NULL,NULL),(0,18,'Subcoordinaci??n de Innovaci??n y Mejora Institucional\r',NULL,'Carlos Manuel','Hidalgo','Ruiz','Subcoordinaci??n','',NULL,17,NULL),(0,19,'Departamento de Pol??ticas P??blicas y Administraci??n del Monitor Ejecutivo Gubernamental',NULL,'Alma Yazm??n',' de la Cruz','L??zaro','Departamento','',18,17,NULL),(0,20,'Subcoordinaci??n de Desarrollo Organizacional',NULL,'Carlos Francisco','Reyes','Abreu','Subcoordinaci??n','',NULL,17,NULL),(0,21,'Departamento de Simplificaci??n Administrativa',NULL,'Jorge','Ochoa','Campos','Departamento','',20,17,NULL),(0,22,'Subcoordinaci??n de Tecnolog??as de Informaci??n\r',NULL,'Irwing','Castellanos','Alamilla','Subcoordinaci??n','',NULL,17,NULL),(0,23,'Departamento de Redes, Soporte y Mantenimiento Tecnol??gico',NULL,'Jos??','Ochoa','Maldonado','Departamento','',22,17,NULL),(0,24,'Departamento de Administraci??n del Portal Electr??nico Municipal\r',NULL,'Cindy Alejandra','L??zaro','Hern??ndez','Departamento','',22,17,NULL),(0,25,'Departamento Dise??o de Sistemas Integrales de Informaci??n',NULL,'Johana Lizet','Escalante','Alvarez','Departamento','',22,17,NULL),(0,26,'Coordinaci??n de Desarrollo Pol??tico','Lic.','Johnny','Maga??a','??lvarez','Coordinaci??n','Presidencia',NULL,NULL,NULL),(0,27,'Subcoordinaci??n de Concertaci??n Pol??tica','Lic.','Francisco Alberto','Castro','Valencia','Subcoordinaci??n','',NULL,26,NULL),(0,28,'Departamento de An??lisis Sectorial',NULL,NULL,NULL,NULL,'Departamento','',27,26,NULL),(0,29,'Departamento de Evaluaci??n',NULL,NULL,NULL,NULL,'Departamento','',27,26,NULL),(0,30,'Subcoordinaci??n de Enlace y Prospectiva','Ing.','Boris Abraham','Evia','Gonz??lez','Subcoordinaci??n','',NULL,26,NULL),(0,31,'Departamento de Enlace Urbano',NULL,NULL,NULL,NULL,'Departamento','',30,26,NULL),(0,32,'Departamento de Enlace Rural',NULL,NULL,NULL,NULL,'Departamento','',30,26,NULL),(0,33,'Departamento de Vinculaci??n',NULL,NULL,NULL,NULL,'Departamento','',30,26,NULL),(0,34,'Coordinaci??n de Salud','Dra.','Beatriz de los Angeles','Pedrero','Villafuerte','Coordinaci??n','Dependencia',NULL,NULL,NULL),(0,35,'Subcoordinaci??n de Salud P??blica','Dr.','Cesar Augusto','Estrada','L??pez','Subcoordinaci??n','',NULL,34,NULL),(0,36,'Departamento de Regulaci??n Sanitaria','Ing.','Jorge Amado','Brito','Lopez','Departamento','',35,34,NULL),(0,37,'Departamento de Regulaci??n y Promoci??n a la Salud',NULL,NULL,NULL,NULL,'Departamento','',35,34,NULL),(0,38,'Subcoordinaci??n de Atenci??n Social','Dr.','Manuel','Lezama','de la Torre','Subcoordinaci??n','',NULL,34,NULL),(0,39,'Departamento de Atenci??n Comunitaria','Dra.','Yolanda','Hern??ndez','Aguirre','Departamento','',38,34,NULL),(0,40,'Departamento de Unidad M??dica M??vil','Dra.','Ana Patricia','Izquierdo','S??nchez','Departamento','',38,34,NULL),(0,41,'Departamento de Gesti??n M??dica y Proyecto','Lic.','Francisco Jos??','Salas','Hern??ndez','Departamento','',38,34,NULL),(0,42,'Departamento de Salud Mental','Psic.','Ana Beatriz','Evia','Gonz??lez','Departamento','',38,34,NULL),(0,43,'Coordinaci??n de Transparencia y Acceso a la Informaci??n P??blica\r','Lic.','Beatriz Adriana','Roja','Ysquierdo','Coordinaci??n','Presidencia',NULL,NULL,NULL),(0,44,'Unidad de Enlace de Mejora Regulatoria',NULL,NULL,NULL,NULL,'Desconocido','',NULL,43,NULL),(0,45,'Subcoordinaci??n de Archivo Municipal\r','Mtro.','Gualberto Iv??n','Luna','Jim??nez','Subcoordinaci??n','',NULL,43,NULL),(0,46,'Departamento de Correspondencia',NULL,NULL,NULL,NULL,'Departamento','',45,43,NULL),(0,47,'Departamento de Archivo de Tr??mite',NULL,NULL,NULL,NULL,'Departamento','',45,43,NULL),(0,48,'Departamento de Archivo de Concentraci??n',NULL,NULL,NULL,NULL,'Departamento','',45,43,NULL),(0,49,'Departamento Archivo Hist??rico',NULL,NULL,NULL,NULL,'Departamento','',45,43,NULL),(0,50,'Departamento Jur??dico','Lic.','Xanath Sheila','Montalvo','Zamudio','Departamento','',NULL,43,NULL),(0,51,'Departamento de Atenci??n al P??blico','M.D.','Mois??s','Acosta','Garc??a','Departamento','',NULL,43,NULL),(0,52,'Departamento Estad??stica e Inform??tica',NULL,NULL,NULL,NULL,'Departamento','',NULL,43,NULL),(0,53,'Departamento de Difusi??n',NULL,NULL,NULL,NULL,'Departamento','',NULL,43,NULL),(0,54,'Comit?? de Transparencia',NULL,NULL,NULL,NULL,'Desconocido','',NULL,43,NULL),(0,55,'Autoridad Municipal de Mejora Regulatoria','Lic.','Zoila H.','Mu??oz','Baeza','Coordinaci??n','Presidencia',NULL,NULL,NULL),(0,56,'Subcoordinaci??n de Mejora Regulatoria',NULL,NULL,NULL,NULL,'Subcoordinaci??n','',NULL,55,NULL),(0,57,'Departamento del Cat??logo Municipal de Regulaciones y Servicios y del Expediente para Tr??mites y Servicios','Lic.','July Karina','Cabrales','Quevedo','Departamento','',56,55,NULL),(0,58,'Departamento de Simplificaci??n, An??lisis de Impacto Regulatorio y Protesta Ciudadana','Lic.','Karen Gisselle','May','Flores','Departamento','',56,55,NULL),(0,59,'Secretar??a del Heroico Ayuntamiento','Lic.','Jos?? Antonio','Alejo','Hern??ndez','Desconocido','Dependencia',NULL,NULL,NULL),(0,60,'Unidad T??cnica','Lic.','Juan','Sol??s','Aguilar','Subdirecci??n','',NULL,59,NULL),(0,61,'Departamento de Control y Seguimiento','Lic.','Jhovanny','Hip??lito','Garc??a','Departamento','',60,59,NULL),(0,62,'Unidad de Enlace Administrativo','Lic.','Julio C??sar','Fuentes','Mendoza','Subdirecci??n','',NULL,59,NULL),(0,63,'Unidad de Asuntos Jur??dicos','Lic.','Alfredo Guadalupe','Mendoza','Jim??nez','Subdirecci??n','',NULL,59,NULL),(0,64,'Departamento de Seguimiento','Lic.','Jes??s Adr??an','Lara','Vera','Departamento','',63,59,NULL),(0,65,'Departamento de Acuerdos y Actas de Cabildo','L.D.','Ana Isabel','Chabl??','de la Cruz','Departamento','',63,59,NULL),(0,66,'Coordinaci??n de Delegados','Lic.','Carlos Manuel','D??az','Hern??ndez','Coordinaci??n','',NULL,59,NULL),(0,67,'Subcoordinaci??n de Delegados','C.','Irene','Contreras','S??nchez','Subcoordinaci??n','',66,59,NULL),(0,69,'Departamento de Informaci??n y An??lisis','Ing.','Alfonso Esteban','Fuentes','Mendoza','Departamento','',67,59,NULL),(0,70,'Departamento de Seguimiento a Demandas Sociales','Lic.','Hans Moroni','G??mez','Vidal','Departamento','',67,59,NULL),(0,71,'Coordinaci??n de Asuntos Religiosos','Lic.','Max Giovanni','Moscoso','Baena','Coordinaci??n','',NULL,59,NULL),(0,72,'Departamento de Gesti??n de Relaciones Eclesi??sticas','Lic.','Christian Alejandro','Aguirre','Uicab','Departamento','',71,59,NULL),(0,73,'Unidad de Registro del Servicio Militar','Lic.','Rodolfo','Izquierdo','Mosqueda','Subcoordinaci??n','',NULL,59,NULL),(0,74,'Unidad del Registro Civil','Lic.','Mar??a de Jes??s','P??rez','P??rez','Subcoordinaci??n','',NULL,59,NULL),(0,75,'Unidad de Enlace de Mejora Regulatoria ',NULL,NULL,NULL,NULL,'Desconocido','',NULL,59,NULL);
/*!40000 ALTER TABLE `unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `usuario_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'N??mero que identifica a cada usuario.',
  `usuario_nombre` varchar(100) DEFAULT NULL COMMENT 'Nombre que identifica al usuario.',
  `unidad_id` int(3) DEFAULT NULL COMMENT 'Unidad a la que pertenece.',
  `rol_id` int(2) DEFAULT NULL COMMENT 'Llave foranea que extrae los permisos asignados en la tabla roles.',
  `clave` varchar(150) DEFAULT NULL COMMENT 'Clave para que el usuario ingrese al sistema.',
  `verify_pass` tinyint(1) DEFAULT NULL COMMENT 'No s?? ',
  `email` varchar(50) DEFAULT NULL COMMENT 'Correo electr??nico del usuario.',
  `verify_email` tinyint(1) DEFAULT NULL COMMENT 'No s?? x2',
  `nombre` varchar(100) DEFAULT NULL COMMENT 'Nombre de pila del usuario.',
  `ap_paterno` varchar(100) DEFAULT NULL COMMENT 'Apellido paterno del usuario.',
  `ap_materno` varchar(100) DEFAULT NULL COMMENT 'Apellido materno del usuario.',
  `curp` varchar(20) DEFAULT NULL COMMENT 'Identificador CURP del usuario. [POSIBLE ID]',
  `verify_curp` tinyint(1) DEFAULT NULL COMMENT 'No s?? x3',
  `num_telefono` int(11) DEFAULT NULL COMMENT 'N??mero de telefono de contacto del usuario. [POSIBLE ID]',
  `fecha_nac` date DEFAULT NULL COMMENT 'Fecha de nacimiento del usuario.',
  `estado_nac` varchar(50) DEFAULT NULL COMMENT 'Estado donde naci?? el usuario.',
  `muni_nac` varchar(50) DEFAULT NULL COMMENT 'Municipio donde naci?? el usuario.',
  `pais_nac` varchar(50) DEFAULT NULL COMMENT 'Pa??s donde naci?? el usuario.',
  PRIMARY KEY (`usuario_id`),
  UNIQUE KEY `unidad_id` (`unidad_id`),
  UNIQUE KEY `rol_id` (`rol_id`),
  UNIQUE KEY `usuario_nombre` (`usuario_nombre`),
  UNIQUE KEY `curp` (`curp`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (28,'GULAa54a656464Aaqa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-10 10:51:12
