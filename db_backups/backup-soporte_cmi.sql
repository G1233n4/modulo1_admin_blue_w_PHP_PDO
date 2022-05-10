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
  `orden_jerarquico` enum('Desconocido','Coordinación','Subcoordinación','Departamento','Interna','Dirección','Subdirección') NOT NULL DEFAULT 'Desconocido',
  `grupo_pertenece` enum('Presidencia','Dependencia','Administración Pública Desconcentrada') NOT NULL,
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
INSERT INTO `unidades` VALUES (0,1,'Secretaría Particular','Lic.','Aura del Carmen','Medina','Cano','Coordinación','Presidencia',NULL,NULL,NULL),(0,2,'Enlace Administrativo','Lic.','Christina Guadalupe','Vidal','Andrade','Desconocido','',NULL,1,NULL),(0,3,'Secretaria Ejecutiva','Lic.','Mónica','Rodríguez','Hidalgo','Desconocido','',NULL,1,NULL),(0,4,'Secretaría Técnica','Dr.','Mario De Jesús','Cerino','Madrigal','Coordinación','Presidencia',NULL,NULL,NULL),(0,5,'Unidad de Información y Análisis','Mtro.','Miguel','Pérez ','León','Desconocido','',NULL,4,NULL),(0,6,'Departamento de Investigación','Lic.','Cecilia Guadalupe','Lezama','Sarmiento','Departamento','',5,4,NULL),(0,7,'Departamento de Información y Estadística','Mtra.','Angélica','López','Baeza','Departamento','',5,4,NULL),(0,8,'Unidad de Seguimiento y Evaluación','Mtro.','Juan Gabriel','Hernández','Cruz','Desconocido','',NULL,4,NULL),(0,9,'Departamento de Seguimiento y Evaluación','Mtro.','Ernesto Francisco','Martínez','Vargas','Departamento','',8,4,NULL),(0,10,'Departamento de Sistematización','Lic.','Juan Luis','Baeza','Mendoza','Departamento','',8,4,NULL),(0,11,'Coordinación de Comunicación Social y Relaciones Públicas','Mtra.','Lizbeth','Méndez','Landero','Coordinación','Presidencia',NULL,NULL,NULL),(0,12,'Unidad de Seguimiento y Análisis de la Información','Lic.','Francisco Javier','Gaytán','Farah','Subcoordinación','',NULL,11,NULL),(0,13,'Departamento de Monitoreo','C.','Hipólito','Torres','Arias','Departamento','',12,11,NULL),(0,14,'Unidad de Información','Lic.','Claudia Janette','Campos','Notario','Subcoordinación','',NULL,11,NULL),(0,15,'Departamento de Prensa y Edición','Lic.','Humberto','Yduarte','Castillo','Departamento','',14,11,NULL),(0,16,'Unidad de Relaciones Públicas, Protocolo y Eventos','Lic.','Kristian Antonio','Cerino','Córdova','Subcoordinación','',NULL,11,NULL),(0,17,'Coordinación de Modernización e Innovación',NULL,'Emilio Francisco','Alvarez','Quevedo','Coordinación','Presidencia',NULL,NULL,NULL),(0,18,'Subcoordinación de Innovación y Mejora Institucional\r',NULL,'Carlos Manuel','Hidalgo','Ruiz','Subcoordinación','',NULL,17,NULL),(0,19,'Departamento de Políticas Públicas y Administración del Monitor Ejecutivo Gubernamental',NULL,'Alma Yazmín',' de la Cruz','Lázaro','Departamento','',18,17,NULL),(0,20,'Subcoordinación de Desarrollo Organizacional',NULL,'Carlos Francisco','Reyes','Abreu','Subcoordinación','',NULL,17,NULL),(0,21,'Departamento de Simplificación Administrativa',NULL,'Jorge','Ochoa','Campos','Departamento','',20,17,NULL),(0,22,'Subcoordinación de Tecnologías de Información\r',NULL,'Irwing','Castellanos','Alamilla','Subcoordinación','',NULL,17,NULL),(0,23,'Departamento de Redes, Soporte y Mantenimiento Tecnológico',NULL,'José','Ochoa','Maldonado','Departamento','',22,17,NULL),(0,24,'Departamento de Administración del Portal Electrónico Municipal\r',NULL,'Cindy Alejandra','Lázaro','Hernández','Departamento','',22,17,NULL),(0,25,'Departamento Diseño de Sistemas Integrales de Información',NULL,'Johana Lizet','Escalante','Alvarez','Departamento','',22,17,NULL),(0,26,'Coordinación de Desarrollo Político','Lic.','Johnny','Magaña','Álvarez','Coordinación','Presidencia',NULL,NULL,NULL),(0,27,'Subcoordinación de Concertación Política','Lic.','Francisco Alberto','Castro','Valencia','Subcoordinación','',NULL,26,NULL),(0,28,'Departamento de Análisis Sectorial',NULL,NULL,NULL,NULL,'Departamento','',27,26,NULL),(0,29,'Departamento de Evaluación',NULL,NULL,NULL,NULL,'Departamento','',27,26,NULL),(0,30,'Subcoordinación de Enlace y Prospectiva','Ing.','Boris Abraham','Evia','González','Subcoordinación','',NULL,26,NULL),(0,31,'Departamento de Enlace Urbano',NULL,NULL,NULL,NULL,'Departamento','',30,26,NULL),(0,32,'Departamento de Enlace Rural',NULL,NULL,NULL,NULL,'Departamento','',30,26,NULL),(0,33,'Departamento de Vinculación',NULL,NULL,NULL,NULL,'Departamento','',30,26,NULL),(0,34,'Coordinación de Salud','Dra.','Beatriz de los Angeles','Pedrero','Villafuerte','Coordinación','Dependencia',NULL,NULL,NULL),(0,35,'Subcoordinación de Salud Pública','Dr.','Cesar Augusto','Estrada','López','Subcoordinación','',NULL,34,NULL),(0,36,'Departamento de Regulación Sanitaria','Ing.','Jorge Amado','Brito','Lopez','Departamento','',35,34,NULL),(0,37,'Departamento de Regulación y Promoción a la Salud',NULL,NULL,NULL,NULL,'Departamento','',35,34,NULL),(0,38,'Subcoordinación de Atención Social','Dr.','Manuel','Lezama','de la Torre','Subcoordinación','',NULL,34,NULL),(0,39,'Departamento de Atención Comunitaria','Dra.','Yolanda','Hernández','Aguirre','Departamento','',38,34,NULL),(0,40,'Departamento de Unidad Médica Móvil','Dra.','Ana Patricia','Izquierdo','Sánchez','Departamento','',38,34,NULL),(0,41,'Departamento de Gestión Médica y Proyecto','Lic.','Francisco José','Salas','Hernández','Departamento','',38,34,NULL),(0,42,'Departamento de Salud Mental','Psic.','Ana Beatriz','Evia','González','Departamento','',38,34,NULL),(0,43,'Coordinación de Transparencia y Acceso a la Información Pública\r','Lic.','Beatriz Adriana','Roja','Ysquierdo','Coordinación','Presidencia',NULL,NULL,NULL),(0,44,'Unidad de Enlace de Mejora Regulatoria',NULL,NULL,NULL,NULL,'Desconocido','',NULL,43,NULL),(0,45,'Subcoordinación de Archivo Municipal\r','Mtro.','Gualberto Iván','Luna','Jiménez','Subcoordinación','',NULL,43,NULL),(0,46,'Departamento de Correspondencia',NULL,NULL,NULL,NULL,'Departamento','',45,43,NULL),(0,47,'Departamento de Archivo de Trámite',NULL,NULL,NULL,NULL,'Departamento','',45,43,NULL),(0,48,'Departamento de Archivo de Concentración',NULL,NULL,NULL,NULL,'Departamento','',45,43,NULL),(0,49,'Departamento Archivo Histórico',NULL,NULL,NULL,NULL,'Departamento','',45,43,NULL),(0,50,'Departamento Jurídico','Lic.','Xanath Sheila','Montalvo','Zamudio','Departamento','',NULL,43,NULL),(0,51,'Departamento de Atención al Público','M.D.','Moisés','Acosta','García','Departamento','',NULL,43,NULL),(0,52,'Departamento Estadística e Informática',NULL,NULL,NULL,NULL,'Departamento','',NULL,43,NULL),(0,53,'Departamento de Difusión',NULL,NULL,NULL,NULL,'Departamento','',NULL,43,NULL),(0,54,'Comité de Transparencia',NULL,NULL,NULL,NULL,'Desconocido','',NULL,43,NULL),(0,55,'Autoridad Municipal de Mejora Regulatoria','Lic.','Zoila H.','Muñoz','Baeza','Coordinación','Presidencia',NULL,NULL,NULL),(0,56,'Subcoordinación de Mejora Regulatoria',NULL,NULL,NULL,NULL,'Subcoordinación','',NULL,55,NULL),(0,57,'Departamento del Catálogo Municipal de Regulaciones y Servicios y del Expediente para Trámites y Servicios','Lic.','July Karina','Cabrales','Quevedo','Departamento','',56,55,NULL),(0,58,'Departamento de Simplificación, Análisis de Impacto Regulatorio y Protesta Ciudadana','Lic.','Karen Gisselle','May','Flores','Departamento','',56,55,NULL),(0,59,'Secretaría del Heroico Ayuntamiento','Lic.','José Antonio','Alejo','Hernández','Desconocido','Dependencia',NULL,NULL,NULL),(0,60,'Unidad Técnica','Lic.','Juan','Solís','Aguilar','Subdirección','',NULL,59,NULL),(0,61,'Departamento de Control y Seguimiento','Lic.','Jhovanny','Hipólito','García','Departamento','',60,59,NULL),(0,62,'Unidad de Enlace Administrativo','Lic.','Julio César','Fuentes','Mendoza','Subdirección','',NULL,59,NULL),(0,63,'Unidad de Asuntos Jurídicos','Lic.','Alfredo Guadalupe','Mendoza','Jiménez','Subdirección','',NULL,59,NULL),(0,64,'Departamento de Seguimiento','Lic.','Jesús Adrían','Lara','Vera','Departamento','',63,59,NULL),(0,65,'Departamento de Acuerdos y Actas de Cabildo','L.D.','Ana Isabel','Chablé','de la Cruz','Departamento','',63,59,NULL),(0,66,'Coordinación de Delegados','Lic.','Carlos Manuel','Díaz','Hernández','Coordinación','',NULL,59,NULL),(0,67,'Subcoordinación de Delegados','C.','Irene','Contreras','Sánchez','Subcoordinación','',66,59,NULL),(0,69,'Departamento de Información y Análisis','Ing.','Alfonso Esteban','Fuentes','Mendoza','Departamento','',67,59,NULL),(0,70,'Departamento de Seguimiento a Demandas Sociales','Lic.','Hans Moroni','Gómez','Vidal','Departamento','',67,59,NULL),(0,71,'Coordinación de Asuntos Religiosos','Lic.','Max Giovanni','Moscoso','Baena','Coordinación','',NULL,59,NULL),(0,72,'Departamento de Gestión de Relaciones Eclesiásticas','Lic.','Christian Alejandro','Aguirre','Uicab','Departamento','',71,59,NULL),(0,73,'Unidad de Registro del Servicio Militar','Lic.','Rodolfo','Izquierdo','Mosqueda','Subcoordinación','',NULL,59,NULL),(0,74,'Unidad del Registro Civil','Lic.','María de Jesús','Pérez','Pérez','Subcoordinación','',NULL,59,NULL),(0,75,'Unidad de Enlace de Mejora Regulatoria ',NULL,NULL,NULL,NULL,'Desconocido','',NULL,59,NULL);
/*!40000 ALTER TABLE `unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `usuario_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'Número que identifica a cada usuario.',
  `usuario_nombre` varchar(100) DEFAULT NULL COMMENT 'Nombre que identifica al usuario.',
  `unidad_id` int(3) DEFAULT NULL COMMENT 'Unidad a la que pertenece.',
  `rol_id` int(2) DEFAULT NULL COMMENT 'Llave foranea que extrae los permisos asignados en la tabla roles.',
  `clave` varchar(150) DEFAULT NULL COMMENT 'Clave para que el usuario ingrese al sistema.',
  `verify_pass` tinyint(1) DEFAULT NULL COMMENT 'No sé ',
  `email` varchar(50) DEFAULT NULL COMMENT 'Correo electrónico del usuario.',
  `verify_email` tinyint(1) DEFAULT NULL COMMENT 'No sé x2',
  `nombre` varchar(100) DEFAULT NULL COMMENT 'Nombre de pila del usuario.',
  `ap_paterno` varchar(100) DEFAULT NULL COMMENT 'Apellido paterno del usuario.',
  `ap_materno` varchar(100) DEFAULT NULL COMMENT 'Apellido materno del usuario.',
  `curp` varchar(20) DEFAULT NULL COMMENT 'Identificador CURP del usuario. [POSIBLE ID]',
  `verify_curp` tinyint(1) DEFAULT NULL COMMENT 'No sé x3',
  `num_telefono` int(11) DEFAULT NULL COMMENT 'Número de telefono de contacto del usuario. [POSIBLE ID]',
  `fecha_nac` date DEFAULT NULL COMMENT 'Fecha de nacimiento del usuario.',
  `estado_nac` varchar(50) DEFAULT NULL COMMENT 'Estado donde nació el usuario.',
  `muni_nac` varchar(50) DEFAULT NULL COMMENT 'Municipio donde nació el usuario.',
  `pais_nac` varchar(50) DEFAULT NULL COMMENT 'País donde nació el usuario.',
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
