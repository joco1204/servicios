-- --------------------------------------------------------
-- Host:                         172.246.126.64
-- Versión del servidor:         5.5.56-MariaDB - MariaDB Server
-- SO del servidor:              Linux
-- HeidiSQL Versión:             9.5.0.5229
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para crm_bpo
CREATE DATABASE IF NOT EXISTS `crm_bpo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `crm_bpo`;

-- Volcando estructura para tabla crm_bpo.crmconf_reportes
CREATE TABLE IF NOT EXISTS `crmconf_reportes` (
  `id_report` int(11) NOT NULL AUTO_INCREMENT,
  `report` varchar(50) DEFAULT NULL,
  `modal_id` varchar(50) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_report`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmconf_reportes: ~5 rows (aproximadamente)
DELETE FROM `crmconf_reportes`;
/*!40000 ALTER TABLE `crmconf_reportes` DISABLE KEYS */;
INSERT INTO `crmconf_reportes` (`id_report`, `report`, `modal_id`, `url`, `estado`) VALUES
	(1, 'Reporte Modulo AVANTEL OUT1', 'report_modulo1', 'report_modulo1', 1);
INSERT INTO `crmconf_reportes` (`id_report`, `report`, `modal_id`, `url`, `estado`) VALUES
	(2, 'Reporte Agenda AVANTEL OUT1', 'report_agenda1', 'report_agenda1', 1);
INSERT INTO `crmconf_reportes` (`id_report`, `report`, `modal_id`, `url`, `estado`) VALUES
	(3, 'Reporte Back Office Paso 1 AVANTEL OUT1', 'report_back1', 'report_back1', 1);
INSERT INTO `crmconf_reportes` (`id_report`, `report`, `modal_id`, `url`, `estado`) VALUES
	(4, 'Reporte Back Office Paso 2 AVANTEL OUT1', 'report_back2', 'report_back2', 1);
INSERT INTO `crmconf_reportes` (`id_report`, `report`, `modal_id`, `url`, `estado`) VALUES
	(5, 'Reporte Back Office Paso 3 AVANTEL OUT1', 'report_back3', 'report_back3', 1);
/*!40000 ALTER TABLE `crmconf_reportes` ENABLE KEYS */;

-- Volcando estructura para tabla crm_bpo.crmgest_back1
CREATE TABLE IF NOT EXISTS `crmgest_back1` (
  `id_back1` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo` int(11) NOT NULL,
  `linea` int(11) NOT NULL,
  `sim` varchar(50) NOT NULL,
  `evidente` varchar(50) NOT NULL,
  `asignado` varchar(50) NOT NULL,
  `anexo` varchar(50) NOT NULL,
  `oportunidad` varchar(50) NOT NULL,
  `compra` varchar(50) NOT NULL,
  `cotizacion` varchar(50) NOT NULL,
  `fca` varchar(50) NOT NULL,
  `fce` varchar(50) NOT NULL,
  PRIMARY KEY (`id_back1`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmgest_back1: ~9 rows (aproximadamente)
DELETE FROM `crmgest_back1`;
/*!40000 ALTER TABLE `crmgest_back1` DISABLE KEYS */;
INSERT INTO `crmgest_back1` (`id_back1`, `id_modulo`, `linea`, `sim`, `evidente`, `asignado`, `anexo`, `oportunidad`, `compra`, `cotizacion`, `fca`, `fce`) VALUES
	(76, 6, 1, '11', '12', '13', '14', '', '', '', '', '');
INSERT INTO `crmgest_back1` (`id_back1`, `id_modulo`, `linea`, `sim`, `evidente`, `asignado`, `anexo`, `oportunidad`, `compra`, `cotizacion`, `fca`, `fce`) VALUES
	(77, 6, 2, '21', '22', '23', '24', '', '', '', '', '');
INSERT INTO `crmgest_back1` (`id_back1`, `id_modulo`, `linea`, `sim`, `evidente`, `asignado`, `anexo`, `oportunidad`, `compra`, `cotizacion`, `fca`, `fce`) VALUES
	(78, 6, 3, '31', '32', '33', '34', '', '', '', '', '');
INSERT INTO `crmgest_back1` (`id_back1`, `id_modulo`, `linea`, `sim`, `evidente`, `asignado`, `anexo`, `oportunidad`, `compra`, `cotizacion`, `fca`, `fce`) VALUES
	(79, 6, 4, '41', '42', '43', '44', '', '', '', '', '');
INSERT INTO `crmgest_back1` (`id_back1`, `id_modulo`, `linea`, `sim`, `evidente`, `asignado`, `anexo`, `oportunidad`, `compra`, `cotizacion`, `fca`, `fce`) VALUES
	(80, 6, 5, '51', '52', '53', '54', '', '', '', '', '');
INSERT INTO `crmgest_back1` (`id_back1`, `id_modulo`, `linea`, `sim`, `evidente`, `asignado`, `anexo`, `oportunidad`, `compra`, `cotizacion`, `fca`, `fce`) VALUES
	(81, 6, 6, '61', '62', '63', '64', '65', '66', '67', '68', '69');
INSERT INTO `crmgest_back1` (`id_back1`, `id_modulo`, `linea`, `sim`, `evidente`, `asignado`, `anexo`, `oportunidad`, `compra`, `cotizacion`, `fca`, `fce`) VALUES
	(82, 6, 7, '71', '72', '73', '74', '75', '76', '77', '78', '79');
INSERT INTO `crmgest_back1` (`id_back1`, `id_modulo`, `linea`, `sim`, `evidente`, `asignado`, `anexo`, `oportunidad`, `compra`, `cotizacion`, `fca`, `fce`) VALUES
	(83, 1, 1, '111', '112', '113', '114', '', '', '', '', '');
INSERT INTO `crmgest_back1` (`id_back1`, `id_modulo`, `linea`, `sim`, `evidente`, `asignado`, `anexo`, `oportunidad`, `compra`, `cotizacion`, `fca`, `fce`) VALUES
	(84, 1, 2, '211', '212', '213', '214', '', '', '', '', '');
/*!40000 ALTER TABLE `crmgest_back1` ENABLE KEYS */;

-- Volcando estructura para tabla crm_bpo.crmpa_calificaciones
CREATE TABLE IF NOT EXISTS `crmpa_calificaciones` (
  `id_calif` int(11) NOT NULL AUTO_INCREMENT,
  `id_cl` int(11) DEFAULT NULL,
  `id_serv` int(11) DEFAULT NULL,
  `id_agente` int(11) DEFAULT NULL,
  `fec_ini` timestamp NULL DEFAULT NULL,
  `fec_fin` timestamp NULL DEFAULT NULL,
  `calif` varchar(200) DEFAULT NULL,
  `needs_back` int(11) DEFAULT NULL,
  `perfil` int(11) DEFAULT NULL,
  `back_agent_calif` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_calif`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmpa_calificaciones: ~57 rows (aproximadamente)
DELETE FROM `crmpa_calificaciones`;
/*!40000 ALTER TABLE `crmpa_calificaciones` DISABLE KEYS */;
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(1, 4, 7, 2, '2018-06-02 01:18:28', '2018-06-02 01:19:39', 'TELEFONO ERRADO', 0, 2, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(2, 4, 7, 2, '2018-06-02 01:18:28', '2018-06-02 01:23:04', 'TELEFONO ERRADO', 0, 2, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(3, 1, 7, 2, '2018-06-02 01:23:04', '2018-06-02 01:24:21', 'VENTA', 1, 2, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(4, 2, 7, 2, '2018-06-02 01:24:21', '2018-06-02 01:24:31', 'TELEFONO ERRADO', 0, 2, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(5, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 17:22:10', 'DOC INCOMPLETA', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(6, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 17:22:10', 'DOC INCOMPLETA', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(7, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 17:35:00', 'DOC INCOMPLETA', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(8, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 17:48:36', 'ASESOR', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(9, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 17:49:11', 'ASESOR', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(10, 0, 0, 3, '2018-06-04 17:10:33', '2018-06-04 17:50:03', 'DOC COMPLETA', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(11, 0, 0, 3, '2018-06-04 17:10:33', '2018-06-04 17:50:05', 'DOC COMPLETA', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(12, 0, 0, 3, '2018-06-04 17:10:33', '2018-06-04 17:50:06', 'DOC COMPLETA', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(13, 0, 0, 3, '2018-06-04 17:10:33', '2018-06-04 17:50:06', 'DOC COMPLETA', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(14, 0, 0, 3, '2018-06-04 17:10:33', '2018-06-04 17:50:06', 'DOC COMPLETA', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(15, 0, 0, 3, '2018-06-04 17:10:33', '2018-06-04 17:50:06', 'DOC COMPLETA', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(16, 0, 0, 3, '2018-06-04 17:10:33', '2018-06-04 17:50:07', 'DOC COMPLETA', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(17, 0, 0, 3, '2018-06-04 17:10:33', '2018-06-04 17:50:07', 'DOC COMPLETA', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(18, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 17:52:40', 'DIRECCION ERRADA', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(19, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 17:55:21', 'DOC COMPLETA', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(20, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 17:56:20', 'HONONIMO', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(21, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 17:56:26', 'APROBADO', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(22, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 17:56:27', 'APROBADO', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(23, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 17:56:28', 'APROBADO', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(24, 0, 0, 3, '2018-06-04 17:10:33', '2018-06-04 17:59:12', 'APROBADO', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(25, 0, 0, 3, '2018-06-04 17:10:33', '2018-06-04 17:59:13', 'APROBADO', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(26, 0, 0, 3, '2018-06-04 17:10:33', '2018-06-04 17:59:13', 'APROBADO', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(27, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 18:00:02', 'NIP ERRADO', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(28, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 18:00:11', 'PENDIENTE DE PAGO', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(29, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 18:01:42', 'NIP ERRADO', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(30, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 18:01:49', 'NO ES EL TITULAR', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(31, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 18:02:15', 'NIP ERRADO', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(32, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-04 18:03:30', 'NIP ERRADO', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(33, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-05 15:06:20', 'POR FRAUDE', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(34, 1, 7, 3, '2018-06-04 17:10:33', '2018-06-05 15:37:17', 'APROBADO', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(35, 0, 0, 3, '2018-06-05 15:37:17', '2018-06-05 15:37:24', 'NO ES EL TITULAR', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(36, 0, 0, 3, '2018-06-05 15:37:17', '2018-06-05 15:37:26', 'NO ES EL TITULAR', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(37, 1, 1, 3, '2018-06-05 15:37:17', '2018-06-05 15:37:38', 'NIP ERRADO', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(38, 1, 1, 3, '2018-06-05 15:37:38', '2018-06-05 15:37:46', 'PORTADA', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(39, 0, 0, 3, '2018-06-05 15:37:46', '2018-06-05 15:42:38', 'NIP ERRADO', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(40, 0, 0, 3, '2018-06-05 15:37:46', '2018-06-05 15:42:42', 'PORTADA', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(41, 0, 0, 3, '2018-06-05 15:37:46', '2018-06-05 15:42:45', 'SEGUMIENTO', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(42, 0, 0, 3, '2018-06-05 15:37:46', '2018-06-05 15:42:49', 'APROBADO', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(43, 1, 1, 3, '2018-06-05 15:37:46', '2018-06-05 15:43:15', 'DESISTE', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(44, 0, 0, 3, '2018-06-05 15:43:15', '2018-06-05 15:43:20', 'APROBADO', 0, 3, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(45, 1, 1, 3, '2018-06-05 15:43:15', '2018-06-05 15:43:25', 'APROBADO', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(46, 3, 7, 12, '2018-06-07 00:11:42', '2018-06-07 00:13:32', 'VENTA', 1, 2, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(47, 1, 7, 3, '2018-06-07 00:13:46', '2018-06-07 01:33:16', 'DOC COMPLETA', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(48, 4, 7, 12, '2018-06-07 02:45:15', '2018-06-07 02:49:22', 'VENTA', 1, 2, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(49, 4, 7, 3, '2018-06-07 02:49:30', '2018-06-07 02:50:13', 'DOC COMPLETA', 0, 3, 6);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(50, 4, 4, 3, '2018-06-07 02:50:13', '2018-06-07 03:13:17', 'APROBADO', 0, 3, 6);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(51, 4, 4, 3, '2018-06-07 02:50:13', '2018-06-07 03:14:24', 'APROBADO', 0, 3, 6);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(52, 4, 4, 3, '2018-06-07 02:50:13', '2018-06-07 03:27:16', 'APROBADO', 0, 3, 6);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(53, 1, 4, 3, '2018-06-07 02:50:13', '2018-06-07 03:36:43', 'APROBADO', 0, 3, 1);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(54, 4, 1, 3, '2018-06-07 03:36:43', '2018-06-07 04:12:35', 'NIP ERRADO', 0, 3, 6);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(55, 4, 4, 3, '2018-06-07 04:12:35', '2018-06-07 04:14:26', 'PORTADA', 0, 3, 6);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(56, 5, 7, 13, '2018-06-07 15:18:02', '2018-06-07 15:32:34', 'NO CONTESTA', 0, 2, 0);
INSERT INTO `crmpa_calificaciones` (`id_calif`, `id_cl`, `id_serv`, `id_agente`, `fec_ini`, `fec_fin`, `calif`, `needs_back`, `perfil`, `back_agent_calif`) VALUES
	(57, 26, 7, 13, '2018-06-07 18:49:10', '2018-06-07 18:55:30', 'TELEFONO NO EXISTE', 0, 2, 0);
/*!40000 ALTER TABLE `crmpa_calificaciones` ENABLE KEYS */;

-- Volcando estructura para tabla crm_bpo.crmpa_ciud
CREATE TABLE IF NOT EXISTS `crmpa_ciud` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(254) DEFAULT NULL,
  `depto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmpa_ciud: ~1.232 rows (aproximadamente)
DELETE FROM `crmpa_ciud`;
/*!40000 ALTER TABLE `crmpa_ciud` DISABLE KEYS */;
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1, 'MEDELLIN', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(2, 'ABEJORRAL', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(3, 'ABRIAQUI', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(4, 'ALEJANDRIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(5, 'AMAGA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(6, 'AMALFI', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(7, 'ANDES', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(8, 'ANGELOPOLIS', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(9, 'ANGOSTURA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(10, 'ANORI', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(11, 'SANTAFE DE ANTIOQUIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(12, 'ANZA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(13, 'APARTADO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(14, 'ARBOLETES', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(15, 'ARGELIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(16, 'ARMENIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(17, 'BARBOSA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(18, 'BELMIRA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(19, 'BELLO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(20, 'BETANIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(21, 'BETULIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(22, 'CIUDAD BOLIVAR', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(23, 'BRICEÑO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(24, 'BURITICA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(25, 'CACERES', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(26, 'CAICEDO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(27, 'CALDAS', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(28, 'CAMPAMENTO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(29, 'CAÑASGORDAS', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(30, 'CARACOLI', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(31, 'CARAMANTA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(32, 'CAREPA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(33, 'EL CARMEN DE VIBORAL', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(34, 'CAROLINA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(35, 'CAUCASIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(36, 'CHIGORODO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(37, 'CISNEROS', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(38, 'COCORNA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(39, 'CONCEPCION', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(40, 'CONCORDIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(41, 'COPACABANA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(42, 'DABEIBA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(43, 'DON MATIAS', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(44, 'EBEJICO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(45, 'EL BAGRE', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(46, 'ENTRERRIOS', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(47, 'ENVIGADO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(48, 'FREDONIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(49, 'FRONTINO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(50, 'GIRALDO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(51, 'GIRARDOTA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(52, 'GOMEZ PLATA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(53, 'GRANADA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(54, 'GUADALUPE', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(55, 'GUARNE', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(56, 'GUATAPE', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(57, 'HELICONIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(58, 'HISPANIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(59, 'ITAGUI', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(60, 'ITUANGO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(61, 'JARDIN', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(62, 'JERICO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(63, 'LA CEJA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(64, 'LA ESTRELLA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(65, 'LA PINTADA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(66, 'LA UNION', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(67, 'LIBORINA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(68, 'MACEO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(69, 'MARINILLA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(70, 'MONTEBELLO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(71, 'MURINDO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(72, 'MUTATA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(73, 'NARIÑO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(74, 'NECOCLI', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(75, 'NECHI', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(76, 'OLAYA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(77, 'PEÐOL', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(78, 'PEQUE', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(79, 'PUEBLORRICO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(80, 'PUERTO BERRIO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(81, 'PUERTO NARE', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(82, 'PUERTO TRIUNFO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(83, 'REMEDIOS', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(84, 'RETIRO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(85, 'RIONEGRO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(86, 'SABANALARGA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(87, 'SABANETA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(88, 'SALGAR', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(89, 'SAN ANDRES DE CUERQUIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(90, 'SAN CARLOS', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(91, 'SAN FRANCISCO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(92, 'SAN JERONIMO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(93, 'SAN JOSE DE LA MONTAÑA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(94, 'SAN JUAN DE URABA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(95, 'SAN LUIS', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(96, 'SAN PEDRO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(97, 'SAN PEDRO DE URABA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(98, 'SAN RAFAEL', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(99, 'SAN ROQUE', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(100, 'SAN VICENTE', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(101, 'SANTA BARBARA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(102, 'SANTA ROSA DE OSOS', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(103, 'SANTO DOMINGO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(104, 'EL SANTUARIO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(105, 'SEGOVIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(106, 'SONSON', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(107, 'SOPETRAN', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(108, 'TAMESIS', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(109, 'TARAZA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(110, 'TARSO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(111, 'TITIRIBI', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(112, 'TOLEDO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(113, 'TURBO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(114, 'URAMITA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(115, 'URRAO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(116, 'VALDIVIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(117, 'VALPARAISO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(118, 'VEGACHI', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(119, 'VENECIA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(120, 'VIGIA DEL FUERTE', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(121, 'YALI', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(122, 'YARUMAL', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(123, 'YOLOMBO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(124, 'YONDO', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(125, 'ZARAGOZA', 1);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(126, 'BARRANQUILLA', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(127, 'BARANOA', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(128, 'CAMPO DE LA CRUZ', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(129, 'CANDELARIA', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(130, 'GALAPA', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(131, 'JUAN DE ACOSTA', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(132, 'LURUACO', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(133, 'MALAMBO', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(134, 'MANATI', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(135, 'PALMAR DE VARELA', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(136, 'PIOJO', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(137, 'POLONUEVO', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(138, 'PONEDERA', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(139, 'PUERTO COLOMBIA', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(140, 'REPELON', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(141, 'SABANAGRANDE', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(142, 'SABANALARGA', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(143, 'SANTA LUCIA', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(144, 'SANTO TOMAS', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(145, 'SOLEDAD', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(146, 'SUAN', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(147, 'TUBARA', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(148, 'USIACURI', 2);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(149, 'BOGOTA, D.C.', 3);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(150, 'CARTAGENA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(151, 'ACHI', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(152, 'ALTOS DEL ROSARIO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(153, 'ARENAL', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(154, 'ARJONA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(155, 'ARROYOHONDO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(156, 'BARRANCO DE LOBA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(157, 'CALAMAR', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(158, 'CANTAGALLO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(159, 'CICUCO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(160, 'CORDOBA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(161, 'CLEMENCIA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(162, 'EL CARMEN DE BOLIVAR', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(163, 'EL GUAMO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(164, 'EL PEÑON', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(165, 'HATILLO DE LOBA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(166, 'MAGANGUE', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(167, 'MAHATES', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(168, 'MARGARITA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(169, 'MARIA LA BAJA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(170, 'MONTECRISTO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(171, 'MOMPOS', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(172, 'NOROSI', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(173, 'MORALES', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(174, 'PINILLOS', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(175, 'REGIDOR', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(176, 'RIO VIEJO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(177, 'SAN CRISTOBAL', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(178, 'SAN ESTANISLAO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(179, 'SAN FERNANDO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(180, 'SAN JACINTO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(181, 'SAN JACINTO DEL CAUCA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(182, 'SAN JUAN NEPOMUCENO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(183, 'SAN MARTIN DE LOBA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(184, 'SAN PABLO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(185, 'SANTA CATALINA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(186, 'SANTA ROSA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(187, 'SANTA ROSA DEL SUR', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(188, 'SIMITI', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(189, 'SOPLAVIENTO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(190, 'TALAIGUA NUEVO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(191, 'TIQUISIO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(192, 'TURBACO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(193, 'TURBANA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(194, 'VILLANUEVA', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(195, 'ZAMBRANO', 4);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(196, 'TUNJA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(197, 'ALMEIDA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(198, 'AQUITANIA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(199, 'ARCABUCO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(200, 'BELEN', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(201, 'BERBEO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(202, 'BETEITIVA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(203, 'BOAVITA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(204, 'BOYACA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(205, 'BRICEÑO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(206, 'BUENAVISTA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(207, 'BUSBANZA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(208, 'CALDAS', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(209, 'CAMPOHERMOSO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(210, 'CERINZA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(211, 'CHINAVITA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(212, 'CHIQUINQUIRA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(213, 'CHISCAS', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(214, 'CHITA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(215, 'CHITARAQUE', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(216, 'CHIVATA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(217, 'CIENEGA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(218, 'COMBITA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(219, 'COPER', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(220, 'CORRALES', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(221, 'COVARACHIA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(222, 'CUBARA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(223, 'CUCAITA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(224, 'CUITIVA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(225, 'CHIQUIZA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(226, 'CHIVOR', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(227, 'DUITAMA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(228, 'EL COCUY', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(229, 'EL ESPINO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(230, 'FIRAVITOBA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(231, 'FLORESTA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(232, 'GACHANTIVA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(233, 'GAMEZA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(234, 'GARAGOA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(235, 'GUACAMAYAS', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(236, 'GUATEQUE', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(237, 'GUAYATA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(238, 'GsICAN', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(239, 'IZA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(240, 'JENESANO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(241, 'JERICO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(242, 'LABRANZAGRANDE', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(243, 'LA CAPILLA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(244, 'LA VICTORIA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(245, 'LA UVITA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(246, 'VILLA DE LEYVA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(247, 'MACANAL', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(248, 'MARIPI', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(249, 'MIRAFLORES', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(250, 'MONGUA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(251, 'MONGUI', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(252, 'MONIQUIRA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(253, 'MOTAVITA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(254, 'MUZO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(255, 'NOBSA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(256, 'NUEVO COLON', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(257, 'OICATA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(258, 'OTANCHE', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(259, 'PACHAVITA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(260, 'PAEZ', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(261, 'PAIPA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(262, 'PAJARITO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(263, 'PANQUEBA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(264, 'PAUNA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(265, 'PAYA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(266, 'PAZ DE RIO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(267, 'PESCA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(268, 'PISBA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(269, 'PUERTO BOYACA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(270, 'QUIPAMA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(271, 'RAMIRIQUI', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(272, 'RAQUIRA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(273, 'RONDON', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(274, 'SABOYA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(275, 'SACHICA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(276, 'SAMACA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(277, 'SAN EDUARDO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(278, 'SAN JOSE DE PARE', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(279, 'SAN LUIS DE GACENO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(280, 'SAN MATEO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(281, 'SAN MIGUEL DE SEMA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(282, 'SAN PABLO DE BORBUR', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(283, 'SANTANA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(284, 'SANTA MARIA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(285, 'SANTA ROSA DE VITERBO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(286, 'SANTA SOFIA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(287, 'SATIVANORTE', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(288, 'SATIVASUR', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(289, 'SIACHOQUE', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(290, 'SOATA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(291, 'SOCOTA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(292, 'SOCHA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(293, 'SOGAMOSO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(294, 'SOMONDOCO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(295, 'SORA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(296, 'SOTAQUIRA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(297, 'SORACA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(298, 'SUSACON', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(299, 'SUTAMARCHAN', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(300, 'SUTATENZA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(301, 'TASCO', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(302, 'TENZA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(303, 'TIBANA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(304, 'TIBASOSA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(305, 'TINJACA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(306, 'TIPACOQUE', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(307, 'TOCA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(308, 'TOGsI', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(309, 'TOPAGA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(310, 'TOTA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(311, 'TUNUNGUA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(312, 'TURMEQUE', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(313, 'TUTA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(314, 'TUTAZA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(315, 'UMBITA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(316, 'VENTAQUEMADA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(317, 'VIRACACHA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(318, 'ZETAQUIRA', 5);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(319, 'MANIZALES', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(320, 'AGUADAS', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(321, 'ANSERMA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(322, 'ARANZAZU', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(323, 'BELALCAZAR', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(324, 'CHINCHINA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(325, 'FILADELFIA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(326, 'LA DORADA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(327, 'LA MERCED', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(328, 'MANZANARES', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(329, 'MARMATO', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(330, 'MARQUETALIA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(331, 'MARULANDA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(332, 'NEIRA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(333, 'NORCASIA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(334, 'PACORA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(335, 'PALESTINA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(336, 'PENSILVANIA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(337, 'RIOSUCIO', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(338, 'RISARALDA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(339, 'SALAMINA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(340, 'SAMANA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(341, 'SAN JOSE', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(342, 'SUPIA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(343, 'VICTORIA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(344, 'VILLAMARIA', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(345, 'VITERBO', 6);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(346, 'FLORENCIA', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(347, 'ALBANIA', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(348, 'BELEN DE LOS ANDAQUIES', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(349, 'CARTAGENA DEL CHAIRA', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(350, 'CURILLO', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(351, 'EL DONCELLO', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(352, 'EL PAUJIL', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(353, 'LA MONTAÑITA', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(354, 'MILAN', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(355, 'MORELIA', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(356, 'PUERTO RICO', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(357, 'SAN JOSE DEL FRAGUA', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(358, 'SAN VICENTE DEL CAGUAN', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(359, 'SOLANO', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(360, 'SOLITA', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(361, 'VALPARAISO', 7);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(362, 'POPAYAN', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(363, 'ALMAGUER', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(364, 'ARGELIA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(365, 'BALBOA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(366, 'BOLIVAR', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(367, 'BUENOS AIRES', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(368, 'CAJIBIO', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(369, 'CALDONO', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(370, 'CALOTO', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(371, 'CORINTO', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(372, 'EL TAMBO', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(373, 'FLORENCIA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(374, 'GUACHENE', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(375, 'GUAPI', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(376, 'INZA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(377, 'JAMBALO', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(378, 'LA SIERRA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(379, 'LA VEGA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(380, 'LOPEZ', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(381, 'MERCADERES', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(382, 'MIRANDA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(383, 'MORALES', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(384, 'PADILLA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(385, 'PAEZ', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(386, 'PATIA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(387, 'PIAMONTE', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(388, 'PIENDAMO', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(389, 'PUERTO TEJADA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(390, 'PURACE', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(391, 'ROSAS', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(392, 'SAN SEBASTIAN', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(393, 'SANTANDER DE QUILICHAO', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(394, 'SANTA ROSA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(395, 'SILVIA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(396, 'SOTARA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(397, 'SUAREZ', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(398, 'SUCRE', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(399, 'TIMBIO', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(400, 'TIMBIQUI', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(401, 'TORIBIO', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(402, 'TOTORO', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(403, 'VILLA RICA', 8);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(404, 'VALLEDUPAR', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(405, 'AGUACHICA', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(406, 'AGUSTIN CODAZZI', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(407, 'ASTREA', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(408, 'BECERRIL', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(409, 'BOSCONIA', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(410, 'CHIMICHAGUA', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(411, 'CHIRIGUANA', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(412, 'CURUMANI', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(413, 'EL COPEY', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(414, 'EL PASO', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(415, 'GAMARRA', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(416, 'GONZALEZ', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(417, 'LA GLORIA', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(418, 'LA JAGUA DE IBIRICO', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(419, 'MANAURE', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(420, 'PAILITAS', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(421, 'PELAYA', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(422, 'PUEBLO BELLO', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(423, 'RIO DE ORO', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(424, 'LA PAZ', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(425, 'SAN ALBERTO', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(426, 'SAN DIEGO', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(427, 'SAN MARTIN', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(428, 'TAMALAMEQUE', 9);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(429, 'MONTERIA', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(430, 'AYAPEL', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(431, 'BUENAVISTA', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(432, 'CANALETE', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(433, 'CERETE', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(434, 'CHIMA', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(435, 'CHINU', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(436, 'CIENAGA DE ORO', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(437, 'COTORRA', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(438, 'LA APARTADA', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(439, 'LORICA', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(440, 'LOS CORDOBAS', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(441, 'MOMIL', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(442, 'MONTELIBANO', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(443, 'MOÑITOS', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(444, 'PLANETA RICA', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(445, 'PUEBLO NUEVO', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(446, 'PUERTO ESCONDIDO', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(447, 'PUERTO LIBERTADOR', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(448, 'PURISIMA', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(449, 'SAHAGUN', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(450, 'SAN ANDRES SOTAVENTO', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(451, 'SAN ANTERO', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(452, 'SAN BERNARDO DEL VIENTO', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(453, 'SAN CARLOS', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(454, 'SAN PELAYO', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(455, 'TIERRALTA', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(456, 'VALENCIA', 10);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(457, 'AGUA DE DIOS', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(458, 'ALBAN', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(459, 'ANAPOIMA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(460, 'ANOLAIMA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(461, 'ARBELAEZ', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(462, 'BELTRAN', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(463, 'BITUIMA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(464, 'BOJACA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(465, 'CABRERA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(466, 'CACHIPAY', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(467, 'CAJICA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(468, 'CAPARRAPI', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(469, 'CAQUEZA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(470, 'CARMEN DE CARUPA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(471, 'CHAGUANI', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(472, 'CHIA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(473, 'CHIPAQUE', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(474, 'CHOACHI', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(475, 'CHOCONTA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(476, 'COGUA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(477, 'COTA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(478, 'CUCUNUBA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(479, 'EL COLEGIO', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(480, 'EL PEÑON', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(481, 'EL ROSAL', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(482, 'FACATATIVA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(483, 'FOMEQUE', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(484, 'FOSCA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(485, 'FUNZA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(486, 'FUQUENE', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(487, 'FUSAGASUGA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(488, 'GACHALA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(489, 'GACHANCIPA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(490, 'GACHETA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(491, 'GAMA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(492, 'GIRARDOT', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(493, 'GRANADA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(494, 'GUACHETA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(495, 'GUADUAS', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(496, 'GUASCA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(497, 'GUATAQUI', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(498, 'GUATAVITA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(499, 'GUAYABAL DE SIQUIMA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(500, 'GUAYABETAL', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(501, 'GUTIERREZ', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(502, 'JERUSALEN', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(503, 'JUNIN', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(504, 'LA CALERA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(505, 'LA MESA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(506, 'LA PALMA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(507, 'LA PEÑA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(508, 'LA VEGA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(509, 'LENGUAZAQUE', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(510, 'MACHETA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(511, 'MADRID', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(512, 'MANTA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(513, 'MEDINA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(514, 'MOSQUERA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(515, 'NARIÑO', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(516, 'NEMOCON', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(517, 'NILO', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(518, 'NIMAIMA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(519, 'NOCAIMA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(520, 'VENECIA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(521, 'PACHO', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(522, 'PAIME', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(523, 'PANDI', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(524, 'PARATEBUENO', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(525, 'PASCA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(526, 'PUERTO SALGAR', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(527, 'PULI', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(528, 'QUEBRADANEGRA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(529, 'QUETAME', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(530, 'QUIPILE', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(531, 'APULO', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(532, 'RICAURTE', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(533, 'SAN ANTONIO DEL TEQUENDAMA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(534, 'SAN BERNARDO', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(535, 'SAN CAYETANO', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(536, 'SAN FRANCISCO', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(537, 'SAN JUAN DE RIO SECO', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(538, 'SASAIMA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(539, 'SESQUILE', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(540, 'SIBATE', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(541, 'SILVANIA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(542, 'SIMIJACA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(543, 'SOACHA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(544, 'SOPO', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(545, 'SUBACHOQUE', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(546, 'SUESCA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(547, 'SUPATA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(548, 'SUSA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(549, 'SUTATAUSA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(550, 'TABIO', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(551, 'TAUSA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(552, 'TENA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(553, 'TENJO', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(554, 'TIBACUY', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(555, 'TIBIRITA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(556, 'TOCAIMA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(557, 'TOCANCIPA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(558, 'TOPAIPI', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(559, 'UBALA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(560, 'UBAQUE', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(561, 'VILLA DE SAN DIEGO DE UBATE', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(562, 'UNE', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(563, 'UTICA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(564, 'VERGARA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(565, 'VIANI', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(566, 'VILLAGOMEZ', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(567, 'VILLAPINZON', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(568, 'VILLETA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(569, 'VIOTA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(570, 'YACOPI', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(571, 'ZIPACON', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(572, 'ZIPAQUIRA', 11);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(573, 'QUIBDO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(574, 'ACANDI', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(575, 'ALTO BAUDO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(576, 'ATRATO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(577, 'BAGADO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(578, 'BAHIA SOLANO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(579, 'BAJO BAUDO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(580, 'BOJAYA', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(581, 'EL CANTON DEL SAN PABLO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(582, 'CARMEN DEL DARIEN', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(583, 'CERTEGUI', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(584, 'CONDOTO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(585, 'EL CARMEN DE ATRATO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(586, 'EL LITORAL DEL SAN JUAN', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(587, 'ISTMINA', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(588, 'JURADO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(589, 'LLORO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(590, 'MEDIO ATRATO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(591, 'MEDIO BAUDO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(592, 'MEDIO SAN JUAN', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(593, 'NOVITA', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(594, 'NUQUI', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(595, 'RIO IRO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(596, 'RIO QUITO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(597, 'RIOSUCIO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(598, 'SAN JOSE DEL PALMAR', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(599, 'SIPI', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(600, 'TADO', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(601, 'UNGUIA', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(602, 'UNION PANAMERICANA', 12);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(603, 'NEIVA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(604, 'ACEVEDO', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(605, 'AGRADO', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(606, 'AIPE', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(607, 'ALGECIRAS', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(608, 'ALTAMIRA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(609, 'BARAYA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(610, 'CAMPOALEGRE', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(611, 'COLOMBIA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(612, 'ELIAS', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(613, 'GARZON', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(614, 'GIGANTE', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(615, 'GUADALUPE', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(616, 'HOBO', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(617, 'IQUIRA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(618, 'ISNOS', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(619, 'LA ARGENTINA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(620, 'LA PLATA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(621, 'NATAGA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(622, 'OPORAPA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(623, 'PAICOL', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(624, 'PALERMO', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(625, 'PALESTINA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(626, 'PITAL', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(627, 'PITALITO', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(628, 'RIVERA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(629, 'SALADOBLANCO', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(630, 'SAN AGUSTIN', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(631, 'SANTA MARIA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(632, 'SUAZA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(633, 'TARQUI', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(634, 'TESALIA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(635, 'TELLO', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(636, 'TERUEL', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(637, 'TIMANA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(638, 'VILLAVIEJA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(639, 'YAGUARA', 13);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(640, 'RIOHACHA', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(641, 'ALBANIA', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(642, 'BARRANCAS', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(643, 'DIBULLA', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(644, 'DISTRACCION', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(645, 'EL MOLINO', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(646, 'FONSECA', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(647, 'HATONUEVO', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(648, 'LA JAGUA DEL PILAR', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(649, 'MAICAO', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(650, 'MANAURE', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(651, 'SAN JUAN DEL CESAR', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(652, 'URIBIA', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(653, 'URUMITA', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(654, 'VILLANUEVA', 14);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(655, 'SANTA MARTA', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(656, 'ALGARROBO', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(657, 'ARACATACA', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(658, 'ARIGUANI', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(659, 'CERRO SAN ANTONIO', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(660, 'CHIBOLO', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(661, 'CIENAGA', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(662, 'CONCORDIA', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(663, 'EL BANCO', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(664, 'EL PIÑON', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(665, 'EL RETEN', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(666, 'FUNDACION', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(667, 'GUAMAL', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(668, 'NUEVA GRANADA', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(669, 'PEDRAZA', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(670, 'PIJIÑO DEL CARMEN', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(671, 'PIVIJAY', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(672, 'PLATO', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(673, 'PUEBLOVIEJO', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(674, 'REMOLINO', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(675, 'SABANAS DE SAN ANGEL', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(676, 'SALAMINA', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(677, 'SAN SEBASTIAN DE BUENAVISTA', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(678, 'SAN ZENON', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(679, 'SANTA ANA', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(680, 'SANTA BARBARA DE PINTO', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(681, 'SITIONUEVO', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(682, 'TENERIFE', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(683, 'ZAPAYAN', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(684, 'ZONA BANANERA', 15);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(685, 'VILLAVICENCIO', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(686, 'ACACIAS', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(687, 'BARRANCA DE UPIA', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(688, 'CABUYARO', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(689, 'CASTILLA LA NUEVA', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(690, 'CUBARRAL', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(691, 'CUMARAL', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(692, 'EL CALVARIO', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(693, 'EL CASTILLO', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(694, 'EL DORADO', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(695, 'FUENTE DE ORO', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(696, 'GRANADA', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(697, 'GUAMAL', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(698, 'MAPIRIPAN', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(699, 'MESETAS', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(700, 'LA MACARENA', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(701, 'URIBE', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(702, 'LEJANIAS', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(703, 'PUERTO CONCORDIA', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(704, 'PUERTO GAITAN', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(705, 'PUERTO LOPEZ', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(706, 'PUERTO LLERAS', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(707, 'PUERTO RICO', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(708, 'RESTREPO', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(709, 'SAN CARLOS DE GUAROA', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(710, 'SAN JUAN DE ARAMA', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(711, 'SAN JUANITO', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(712, 'SAN MARTIN', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(713, 'VISTAHERMOSA', 16);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(714, 'PASTO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(715, 'ALBAN', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(716, 'ALDANA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(717, 'ANCUYA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(718, 'ARBOLEDA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(719, 'BARBACOAS', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(720, 'BELEN', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(721, 'BUESACO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(722, 'COLON', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(723, 'CONSACA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(724, 'CONTADERO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(725, 'CORDOBA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(726, 'CUASPUD', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(727, 'CUMBAL', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(728, 'CUMBITARA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(729, 'CHACHAGsI', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(730, 'EL CHARCO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(731, 'EL PEÑOL', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(732, 'EL ROSARIO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(733, 'EL TABLON DE GOMEZ', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(734, 'EL TAMBO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(735, 'FUNES', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(736, 'GUACHUCAL', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(737, 'GUAITARILLA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(738, 'GUALMATAN', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(739, 'ILES', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(740, 'IMUES', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(741, 'IPIALES', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(742, 'LA CRUZ', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(743, 'LA FLORIDA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(744, 'LA LLANADA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(745, 'LA TOLA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(746, 'LA UNION', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(747, 'LEIVA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(748, 'LINARES', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(749, 'LOS ANDES', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(750, 'MAGsI', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(751, 'MALLAMA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(752, 'MOSQUERA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(753, 'NARIÑO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(754, 'OLAYA HERRERA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(755, 'OSPINA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(756, 'FRANCISCO PIZARRO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(757, 'POLICARPA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(758, 'POTOSI', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(759, 'PROVIDENCIA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(760, 'PUERRES', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(761, 'PUPIALES', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(762, 'RICAURTE', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(763, 'ROBERTO PAYAN', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(764, 'SAMANIEGO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(765, 'SANDONA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(766, 'SAN BERNARDO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(767, 'SAN LORENZO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(768, 'SAN PABLO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(769, 'SAN PEDRO DE CARTAGO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(770, 'SANTA BARBARA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(771, 'SANTACRUZ', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(772, 'SAPUYES', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(773, 'TAMINANGO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(774, 'TANGUA', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(775, 'SAN ANDRES DE TUMACO', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(776, 'TUQUERRES', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(777, 'YACUANQUER', 17);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(778, 'CUCUTA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(779, 'ABREGO', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(780, 'ARBOLEDAS', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(781, 'BOCHALEMA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(782, 'BUCARASICA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(783, 'CACOTA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(784, 'CACHIRA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(785, 'CHINACOTA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(786, 'CHITAGA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(787, 'CONVENCION', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(788, 'CUCUTILLA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(789, 'DURANIA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(790, 'EL CARMEN', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(791, 'EL TARRA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(792, 'EL ZULIA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(793, 'GRAMALOTE', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(794, 'HACARI', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(795, 'HERRAN', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(796, 'LABATECA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(797, 'LA ESPERANZA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(798, 'LA PLAYA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(799, 'LOS PATIOS', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(800, 'LOURDES', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(801, 'MUTISCUA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(802, 'OCAÑA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(803, 'PAMPLONA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(804, 'PAMPLONITA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(805, 'PUERTO SANTANDER', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(806, 'RAGONVALIA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(807, 'SALAZAR', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(808, 'SAN CALIXTO', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(809, 'SAN CAYETANO', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(810, 'SANTIAGO', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(811, 'SARDINATA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(812, 'SILOS', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(813, 'TEORAMA', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(814, 'TIBU', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(815, 'TOLEDO', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(816, 'VILLA CARO', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(817, 'VILLA DEL ROSARIO', 18);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(818, 'ARMENIA', 19);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(819, 'BUENAVISTA', 19);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(820, 'CALARCA', 19);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(821, 'CIRCASIA', 19);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(822, 'CORDOBA', 19);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(823, 'FILANDIA', 19);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(824, 'GENOVA', 19);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(825, 'LA TEBAIDA', 19);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(826, 'MONTENEGRO', 19);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(827, 'PIJAO', 19);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(828, 'QUIMBAYA', 19);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(829, 'SALENTO', 19);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(830, 'PEREIRA', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(831, 'APIA', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(832, 'BALBOA', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(833, 'BELEN DE UMBRIA', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(834, 'DOSQUEBRADAS', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(835, 'GUATICA', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(836, 'LA CELIA', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(837, 'LA VIRGINIA', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(838, 'MARSELLA', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(839, 'MISTRATO', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(840, 'PUEBLO RICO', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(841, 'QUINCHIA', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(842, 'SANTA ROSA DE CABAL', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(843, 'SANTUARIO', 20);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(844, 'BUCARAMANGA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(845, 'AGUADA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(846, 'ALBANIA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(847, 'ARATOCA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(848, 'BARBOSA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(849, 'BARICHARA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(850, 'BARRANCABERMEJA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(851, 'BETULIA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(852, 'BOLIVAR', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(853, 'CABRERA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(854, 'CALIFORNIA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(855, 'CAPITANEJO', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(856, 'CARCASI', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(857, 'CEPITA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(858, 'CERRITO', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(859, 'CHARALA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(860, 'CHARTA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(861, 'CHIMA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(862, 'CHIPATA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(863, 'CIMITARRA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(864, 'CONCEPCION', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(865, 'CONFINES', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(866, 'CONTRATACION', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(867, 'COROMORO', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(868, 'CURITI', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(869, 'EL CARMEN DE CHUCURI', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(870, 'EL GUACAMAYO', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(871, 'EL PEÑON', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(872, 'EL PLAYON', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(873, 'ENCINO', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(874, 'ENCISO', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(875, 'FLORIAN', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(876, 'FLORIDABLANCA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(877, 'GALAN', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(878, 'GAMBITA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(879, 'GIRON', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(880, 'GUACA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(881, 'GUADALUPE', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(882, 'GUAPOTA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(883, 'GUAVATA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(884, 'GsEPSA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(885, 'HATO', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(886, 'JESUS MARIA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(887, 'JORDAN', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(888, 'LA BELLEZA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(889, 'LANDAZURI', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(890, 'LA PAZ', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(891, 'LEBRIJA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(892, 'LOS SANTOS', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(893, 'MACARAVITA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(894, 'MALAGA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(895, 'MATANZA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(896, 'MOGOTES', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(897, 'MOLAGAVITA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(898, 'OCAMONTE', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(899, 'OIBA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(900, 'ONZAGA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(901, 'PALMAR', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(902, 'PALMAS DEL SOCORRO', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(903, 'PARAMO', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(904, 'PIEDECUESTA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(905, 'PINCHOTE', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(906, 'PUENTE NACIONAL', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(907, 'PUERTO PARRA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(908, 'PUERTO WILCHES', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(909, 'RIONEGRO', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(910, 'SABANA DE TORRES', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(911, 'SAN ANDRES', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(912, 'SAN BENITO', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(913, 'SAN GIL', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(914, 'SAN JOAQUIN', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(915, 'SAN JOSE DE MIRANDA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(916, 'SAN MIGUEL', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(917, 'SAN VICENTE DE CHUCURI', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(918, 'SANTA BARBARA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(919, 'SANTA HELENA DEL OPON', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(920, 'SIMACOTA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(921, 'SOCORRO', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(922, 'SUAITA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(923, 'SUCRE', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(924, 'SURATA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(925, 'TONA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(926, 'VALLE DE SAN JOSE', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(927, 'VELEZ', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(928, 'VETAS', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(929, 'VILLANUEVA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(930, 'ZAPATOCA', 21);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(931, 'SINCELEJO', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(932, 'BUENAVISTA', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(933, 'CAIMITO', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(934, 'COLOSO', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(935, 'COROZAL', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(936, 'COVEÑAS', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(937, 'CHALAN', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(938, 'EL ROBLE', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(939, 'GALERAS', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(940, 'GUARANDA', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(941, 'LA UNION', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(942, 'LOS PALMITOS', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(943, 'MAJAGUAL', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(944, 'MORROA', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(945, 'OVEJAS', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(946, 'PALMITO', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(947, 'SAMPUES', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(948, 'SAN BENITO ABAD', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(949, 'SAN JUAN DE BETULIA', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(950, 'SAN MARCOS', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(951, 'SAN ONOFRE', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(952, 'SAN PEDRO', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(953, 'SAN LUIS DE SINCE', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(954, 'SUCRE', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(955, 'SANTIAGO DE TOLU', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(956, 'TOLU VIEJO', 22);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(957, 'IBAGUE', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(958, 'ALPUJARRA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(959, 'ALVARADO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(960, 'AMBALEMA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(961, 'ANZOATEGUI', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(962, 'ARMERO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(963, 'ATACO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(964, 'CAJAMARCA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(965, 'CARMEN DE APICALA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(966, 'CASABIANCA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(967, 'CHAPARRAL', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(968, 'COELLO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(969, 'COYAIMA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(970, 'CUNDAY', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(971, 'DOLORES', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(972, 'ESPINAL', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(973, 'FALAN', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(974, 'FLANDES', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(975, 'FRESNO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(976, 'GUAMO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(977, 'HERVEO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(978, 'HONDA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(979, 'ICONONZO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(980, 'LERIDA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(981, 'LIBANO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(982, 'MARIQUITA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(983, 'MELGAR', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(984, 'MURILLO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(985, 'NATAGAIMA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(986, 'ORTEGA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(987, 'PALOCABILDO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(988, 'PIEDRAS', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(989, 'PLANADAS', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(990, 'PRADO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(991, 'PURIFICACION', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(992, 'RIOBLANCO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(993, 'RONCESVALLES', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(994, 'ROVIRA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(995, 'SALDAÑA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(996, 'SAN ANTONIO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(997, 'SAN LUIS', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(998, 'SANTA ISABEL', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(999, 'SUAREZ', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1000, 'VALLE DE SAN JUAN', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1001, 'VENADILLO', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1002, 'VILLAHERMOSA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1003, 'VILLARRICA', 23);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1004, 'CALI', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1005, 'ALCALA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1006, 'ANDALUCIA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1007, 'ANSERMANUEVO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1008, 'ARGELIA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1009, 'BOLIVAR', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1010, 'BUENAVENTURA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1011, 'GUADALAJARA DE BUGA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1012, 'BUGALAGRANDE', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1013, 'CAICEDONIA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1014, 'CALIMA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1015, 'CANDELARIA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1016, 'CARTAGO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1017, 'DAGUA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1018, 'EL AGUILA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1019, 'EL CAIRO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1020, 'EL CERRITO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1021, 'EL DOVIO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1022, 'FLORIDA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1023, 'GINEBRA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1024, 'GUACARI', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1025, 'JAMUNDI', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1026, 'LA CUMBRE', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1027, 'LA UNION', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1028, 'LA VICTORIA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1029, 'OBANDO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1030, 'PALMIRA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1031, 'PRADERA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1032, 'RESTREPO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1033, 'RIOFRIO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1034, 'ROLDANILLO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1035, 'SAN PEDRO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1036, 'SEVILLA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1037, 'TORO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1038, 'TRUJILLO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1039, 'TULUA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1040, 'ULLOA', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1041, 'VERSALLES', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1042, 'VIJES', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1043, 'YOTOCO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1044, 'YUMBO', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1045, 'ZARZAL', 24);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1046, 'ARAUCA', 25);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1047, 'ARAUQUITA', 25);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1048, 'CRAVO NORTE', 25);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1049, 'FORTUL', 25);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1050, 'PUERTO RONDON', 25);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1051, 'SARAVENA', 25);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1052, 'TAME', 25);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1053, 'YOPAL', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1054, 'AGUAZUL', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1055, 'CHAMEZA', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1056, 'HATO COROZAL', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1057, 'LA SALINA', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1058, 'MANI', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1059, 'MONTERREY', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1060, 'NUNCHIA', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1061, 'OROCUE', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1062, 'PAZ DE ARIPORO', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1063, 'PORE', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1064, 'RECETOR', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1065, 'SABANALARGA', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1066, 'SACAMA', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1067, 'SAN LUIS DE PALENQUE', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1068, 'TAMARA', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1069, 'TAURAMENA', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1070, 'TRINIDAD', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1071, 'VILLANUEVA', 26);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1072, 'MOCOA', 27);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1073, 'COLON', 27);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1074, 'ORITO', 27);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1075, 'PUERTO ASIS', 27);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1076, 'PUERTO CAICEDO', 27);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1077, 'PUERTO GUZMAN', 27);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1078, 'LEGUIZAMO', 27);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1079, 'SIBUNDOY', 27);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1080, 'SAN FRANCISCO', 27);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1081, 'SAN MIGUEL', 27);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1082, 'SANTIAGO', 27);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1083, 'VALLE DEL GUAMUEZ', 27);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1084, 'VILLAGARZON', 27);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1085, 'SAN ANDRES', 28);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1086, 'PROVIDENCIA', 28);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1087, 'LETICIA', 29);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1088, 'EL ENCANTO', 29);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1089, 'LA CHORRERA', 29);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1090, 'LA PEDRERA', 29);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1091, 'LA VICTORIA', 29);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1092, 'MIRITI - PARANA', 29);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1093, 'PUERTO ALEGRIA', 29);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1094, 'PUERTO ARICA', 29);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1095, 'PUERTO NARIÑO', 29);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1096, 'PUERTO SANTANDER', 29);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1097, 'TARAPACA', 29);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1098, 'INIRIDA', 30);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1099, 'BARRANCO MINAS', 30);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1100, 'MAPIRIPANA', 30);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1101, 'SAN FELIPE', 30);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1102, 'PUERTO COLOMBIA', 30);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1103, 'LA GUADALUPE', 30);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1104, 'CACAHUAL', 30);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1105, 'PANA PANA', 30);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1106, 'MORICHAL', 30);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1107, 'SAN JOSE DEL GUAVIARE', 31);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1108, 'CALAMAR', 31);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1109, 'EL RETORNO', 31);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1110, 'MIRAFLORES', 31);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1111, 'MITU', 32);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1112, 'CARURU', 32);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1113, 'PACOA', 32);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1114, 'TARAIRA', 32);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1115, 'PAPUNAUA', 32);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1116, 'YAVARATE', 32);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1117, 'PUERTO CARREÑO', 33);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1118, 'LA PRIMAVERA', 33);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1119, 'SANTA ROSALIA', 33);
INSERT INTO `crmpa_ciud` (`id`, `nombre`, `depto`) VALUES
	(1120, 'CUMARIBO', 33);
/*!40000 ALTER TABLE `crmpa_ciud` ENABLE KEYS */;

-- Volcando estructura para tabla crm_bpo.crmpa_clientes
CREATE TABLE IF NOT EXISTS `crmpa_clientes` (
  `id_cl` int(11) NOT NULL AUTO_INCREMENT,
  `id_servicio` int(11) NOT NULL DEFAULT '0',
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ciudad` varchar(100) DEFAULT NULL,
  `tipo_documento` varchar(100) DEFAULT NULL,
  `documento` varchar(100) DEFAULT NULL,
  `isread` varchar(1) NOT NULL DEFAULT '0',
  `intentos` int(11) NOT NULL DEFAULT '0',
  `asesor` int(11) DEFAULT NULL,
  `again` timestamp NULL DEFAULT NULL,
  `seleccionado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_cl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmpa_clientes: ~48 rows (aproximadamente)
DELETE FROM `crmpa_clientes`;
/*!40000 ALTER TABLE `crmpa_clientes` DISABLE KEYS */;
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(1, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(2, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(3, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'N', 4, 0, NULL, 'N');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(4, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(5, 8, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, NULL);
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(6, 8, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, NULL);
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(7, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(8, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(9, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(10, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(11, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(12, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(13, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(14, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(15, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(16, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(17, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(18, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(19, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(20, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(21, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(22, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(23, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(24, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(25, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(26, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(27, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(28, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(29, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(30, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(31, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(32, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(33, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(34, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(35, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(36, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(37, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(38, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(39, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(40, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(41, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(42, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(43, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(44, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(45, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'N', 5, 0, NULL, 'N');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(46, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'N', 1, 0, NULL, 'N');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(47, 7, 'camilo', '123', '3007093263', 'fff', 'bogota', 'CC', '1010\r\n', 'Y', 0, 0, NULL, 'Y');
INSERT INTO `crmpa_clientes` (`id_cl`, `id_servicio`, `nombre`, `telefono`, `celular`, `email`, `ciudad`, `tipo_documento`, `documento`, `isread`, `intentos`, `asesor`, `again`, `seleccionado`) VALUES
	(48, 7, 'andrea', '4432', '3007093263', 'frdf', 'bogota', 'CC', '1010', 'Y', 0, 0, NULL, 'Y');
/*!40000 ALTER TABLE `crmpa_clientes` ENABLE KEYS */;

-- Volcando estructura para tabla crm_bpo.crmpa_deptos
CREATE TABLE IF NOT EXISTS `crmpa_deptos` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmpa_deptos: ~33 rows (aproximadamente)
DELETE FROM `crmpa_deptos`;
/*!40000 ALTER TABLE `crmpa_deptos` DISABLE KEYS */;
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(1, 'ANTIOQUIA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(2, 'ATLANTICO	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(3, 'BOGOTA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(4, 'BOLIVAR	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(5, 'BOYACA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(6, 'CALDAS	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(7, 'CAQUETA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(8, 'CAUCA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(9, 'CESAR	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(10, 'CORDOBA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(11, 'CUNDINAMARCA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(12, 'CHOCO	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(13, 'HUILA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(14, 'LA GUAJIRA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(15, 'MAGDALENA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(16, 'META	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(17, 'NARIÑO	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(18, 'N. DE SANTANDER	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(19, 'QUINDIO	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(20, 'RISARALDA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(21, 'SANTANDER	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(22, 'SUCRE	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(23, 'TOLIMA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(24, 'VALLE DEL CAUCA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(25, 'ARAUCA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(26, 'CASANARE	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(27, 'PUTUMAYO	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(28, 'SAN ANDRES	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(29, 'AMAZONAS	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(30, 'GUAINIA	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(31, 'GUAVIARE	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(32, 'VAUPES	');
INSERT INTO `crmpa_deptos` (`id`, `nombre`) VALUES
	(33, 'VICHADA	');
/*!40000 ALTER TABLE `crmpa_deptos` ENABLE KEYS */;

-- Volcando estructura para tabla crm_bpo.crmpa_empresa
CREATE TABLE IF NOT EXISTS `crmpa_empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL,
  `ncampanas` int(11) DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `descripcion` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmpa_empresa: ~3 rows (aproximadamente)
DELETE FROM `crmpa_empresa`;
/*!40000 ALTER TABLE `crmpa_empresa` DISABLE KEYS */;
INSERT INTO `crmpa_empresa` (`id`, `nombre`, `estado`, `ncampanas`, `fecha_creacion`, `descripcion`) VALUES
	(1, 'jewjew', 1, 2, '2018-05-28 22:50:27', 'wj');
INSERT INTO `crmpa_empresa` (`id`, `nombre`, `estado`, `ncampanas`, `fecha_creacion`, `descripcion`) VALUES
	(14, 'AVANTEL', 0, NULL, '2018-05-28 22:51:17', 'avantel OUT');
INSERT INTO `crmpa_empresa` (`id`, `nombre`, `estado`, `ncampanas`, `fecha_creacion`, `descripcion`) VALUES
	(15, 'AVANTEL', 0, NULL, '2018-06-07 13:44:12', '');
/*!40000 ALTER TABLE `crmpa_empresa` ENABLE KEYS */;

-- Volcando estructura para tabla crm_bpo.crmpa_encuesta_1
CREATE TABLE IF NOT EXISTS `crmpa_encuesta_1` (
  `id_encuesta` int(11) NOT NULL AUTO_INCREMENT,
  `id_cl` int(11) DEFAULT NULL,
  `id_calif` int(11) DEFAULT NULL,
  `fecha_in` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `encuesta_1` varchar(200) DEFAULT NULL,
  `encuesta_2` varchar(200) DEFAULT NULL,
  `encuesta_3` varchar(200) DEFAULT NULL,
  `encuesta_4` varchar(200) DEFAULT NULL,
  `encuesta_5` varchar(200) DEFAULT NULL,
  `encuesta_6` varchar(200) DEFAULT NULL,
  `encuesta_7` varchar(200) DEFAULT NULL,
  `encuesta_8` varchar(200) DEFAULT NULL,
  `encuesta_9` varchar(200) DEFAULT NULL,
  `encuesta_10` varchar(200) DEFAULT NULL,
  `encuesta_11` varchar(200) DEFAULT NULL,
  `encuesta_12` varchar(200) DEFAULT NULL,
  `encuesta_13` varchar(200) DEFAULT NULL,
  `encuesta_14` varchar(200) DEFAULT NULL,
  `encuesta_15` varchar(200) DEFAULT NULL,
  `encuesta_16` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_encuesta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmpa_encuesta_1: ~7 rows (aproximadamente)
DELETE FROM `crmpa_encuesta_1`;
/*!40000 ALTER TABLE `crmpa_encuesta_1` DISABLE KEYS */;
INSERT INTO `crmpa_encuesta_1` (`id_encuesta`, `id_cl`, `id_calif`, `fecha_in`, `encuesta_1`, `encuesta_2`, `encuesta_3`, `encuesta_4`, `encuesta_5`, `encuesta_6`, `encuesta_7`, `encuesta_8`, `encuesta_9`, `encuesta_10`, `encuesta_11`, `encuesta_12`, `encuesta_13`, `encuesta_14`, `encuesta_15`, `encuesta_16`) VALUES
	(1, 1, 3, '2018-06-01 18:24:21', '2018-06-01', 'CARRERA ', '432', 'CARRERA ', '4234', 'URBANIZACION', '342', 'URBANIZACION', '4324', '2', '127', '324', 'NORTE', 'CASA', '324', 'COMPLETO');
INSERT INTO `crmpa_encuesta_1` (`id_encuesta`, `id_cl`, `id_calif`, `fecha_in`, `encuesta_1`, `encuesta_2`, `encuesta_3`, `encuesta_4`, `encuesta_5`, `encuesta_6`, `encuesta_7`, `encuesta_8`, `encuesta_9`, `encuesta_10`, `encuesta_11`, `encuesta_12`, `encuesta_13`, `encuesta_14`, `encuesta_15`, `encuesta_16`) VALUES
	(2, 3, 46, '2018-06-06 17:13:32', '2018-06-06', 'CARRERA ', '32', 'CALLE ', '34', 'URBANIZACION', '45', 'INTERIOR', '54', '17', '715', '34', 'NORTE', 'CASA', '32', 'COMPLETO');
INSERT INTO `crmpa_encuesta_1` (`id_encuesta`, `id_cl`, `id_calif`, `fecha_in`, `encuesta_1`, `encuesta_2`, `encuesta_3`, `encuesta_4`, `encuesta_5`, `encuesta_6`, `encuesta_7`, `encuesta_8`, `encuesta_9`, `encuesta_10`, `encuesta_11`, `encuesta_12`, `encuesta_13`, `encuesta_14`, `encuesta_15`, `encuesta_16`) VALUES
	(3, 4, 48, '2018-06-06 19:49:22', '2018-06-06', 'CALLE ', '32', 'AUTOPISTA NORTE O SUR', '32', 'URBANIZACION', '32', 'APTARTAMENTO ', '32', '17', '730', '32', 'NORTE', 'CASA', '32', 'COMPLETO');
INSERT INTO `crmpa_encuesta_1` (`id_encuesta`, `id_cl`, `id_calif`, `fecha_in`, `encuesta_1`, `encuesta_2`, `encuesta_3`, `encuesta_4`, `encuesta_5`, `encuesta_6`, `encuesta_7`, `encuesta_8`, `encuesta_9`, `encuesta_10`, `encuesta_11`, `encuesta_12`, `encuesta_13`, `encuesta_14`, `encuesta_15`, `encuesta_16`) VALUES
	(4, 3, 0, '2018-06-13 00:19:45', '2018-06-12', 'CALLE ', '32', 'CALLE ', '32', 'URBANIZACION', '32', 'APTARTAMENTO ', '32', '3', '149', '23', 'NORTE', 'CASA', '23', 'COMPLETO');
INSERT INTO `crmpa_encuesta_1` (`id_encuesta`, `id_cl`, `id_calif`, `fecha_in`, `encuesta_1`, `encuesta_2`, `encuesta_3`, `encuesta_4`, `encuesta_5`, `encuesta_6`, `encuesta_7`, `encuesta_8`, `encuesta_9`, `encuesta_10`, `encuesta_11`, `encuesta_12`, `encuesta_13`, `encuesta_14`, `encuesta_15`, `encuesta_16`) VALUES
	(5, 3, 0, '2018-06-13 00:20:47', '2018-06-12', 'CALLE ', '32', 'CALLE ', '32', 'URBANIZACION', '32', 'APTARTAMENTO ', '32', '3', '149', '23', 'NORTE', 'CASA', '23', 'COMPLETO');
INSERT INTO `crmpa_encuesta_1` (`id_encuesta`, `id_cl`, `id_calif`, `fecha_in`, `encuesta_1`, `encuesta_2`, `encuesta_3`, `encuesta_4`, `encuesta_5`, `encuesta_6`, `encuesta_7`, `encuesta_8`, `encuesta_9`, `encuesta_10`, `encuesta_11`, `encuesta_12`, `encuesta_13`, `encuesta_14`, `encuesta_15`, `encuesta_16`) VALUES
	(6, 3, 0, '2018-06-13 00:20:58', '2018-06-12', 'CALLE ', '32', 'CALLE ', '32', 'URBANIZACION', '32', 'APTARTAMENTO ', '32', '3', '149', '23', 'NORTE', 'CASA', '23', 'COMPLETO');
INSERT INTO `crmpa_encuesta_1` (`id_encuesta`, `id_cl`, `id_calif`, `fecha_in`, `encuesta_1`, `encuesta_2`, `encuesta_3`, `encuesta_4`, `encuesta_5`, `encuesta_6`, `encuesta_7`, `encuesta_8`, `encuesta_9`, `encuesta_10`, `encuesta_11`, `encuesta_12`, `encuesta_13`, `encuesta_14`, `encuesta_15`, `encuesta_16`) VALUES
	(7, 3, 0, '2018-06-13 00:21:38', '2018-06-12', 'CALLE ', '32', 'CALLE ', '32', 'URBANIZACION', '32', 'APTARTAMENTO ', '32', '3', '149', '23', 'NORTE', 'CASA', '23', 'COMPLETO');
/*!40000 ALTER TABLE `crmpa_encuesta_1` ENABLE KEYS */;

-- Volcando estructura para tabla crm_bpo.crmpa_guiones
CREATE TABLE IF NOT EXISTS `crmpa_guiones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idserv` int(11) DEFAULT NULL,
  `guion` longtext,
  `Mostrar` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmpa_guiones: ~2 rows (aproximadamente)
DELETE FROM `crmpa_guiones`;
/*!40000 ALTER TABLE `crmpa_guiones` DISABLE KEYS */;
INSERT INTO `crmpa_guiones` (`id`, `idserv`, `guion`, `Mostrar`) VALUES
	(2, 7, '<p style="text-align: center;">Bienvenido ACSOIN CRM</p><p></p><ul><li style="text-align: center;">ewkjewlk<br></li><li style="text-align: center;">d<br></li><li style="text-align: center;">f<br></li><li style="text-align: center;">df<br></li></ul><p style="text-align: center;"><span style="color:rgb(255,0,0);">skdljklsdf</span></p><p style="text-align: center;"><span style="color:rgb(255,0,0);"><br></span></p><p style="text-align: center;"><br></p><p style="text-align: center;"><span style="text-align: center;"><br style="text-align: center;"></span></p><p></p><p style="text-align: center;"><br></p>', 'N');
INSERT INTO `crmpa_guiones` (`id`, `idserv`, `guion`, `Mostrar`) VALUES
	(3, 8, 'Bienvenido ACSOIN CRM', 'N');
/*!40000 ALTER TABLE `crmpa_guiones` ENABLE KEYS */;

-- Volcando estructura para tabla crm_bpo.crmpa_modulo_1
CREATE TABLE IF NOT EXISTS `crmpa_modulo_1` (
  `id_modulo` int(11) NOT NULL AUTO_INCREMENT,
  `paso_now` int(11) NOT NULL DEFAULT '1',
  `id_cl` int(11) DEFAULT NULL,
  `id_calif` int(11) DEFAULT NULL,
  `scoreG` varchar(50) DEFAULT NULL,
  `nline` int(11) DEFAULT NULL,
  `fecha_in` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `doc_sus` varchar(200) DEFAULT NULL,
  `name_sus` varchar(200) DEFAULT NULL,
  `apel_sus` varchar(200) DEFAULT NULL,
  `fec_nac_sus` varchar(200) DEFAULT NULL,
  `fec_exp_sus` varchar(200) DEFAULT NULL,
  `barrio_sus` varchar(200) DEFAULT NULL,
  `email_sus` varchar(200) DEFAULT NULL,
  `dir1_sus` varchar(200) DEFAULT NULL,
  `dir2_sus` varchar(200) DEFAULT NULL,
  `dir3_sus` varchar(200) DEFAULT NULL,
  `dir4_sus` varchar(200) DEFAULT NULL,
  `dir5_sus` varchar(200) DEFAULT NULL,
  `dir6_sus` varchar(200) DEFAULT NULL,
  `dir7_sus` varchar(200) DEFAULT NULL,
  `dir8_sus` varchar(200) DEFAULT NULL,
  `dept_sus` varchar(200) DEFAULT NULL,
  `ciud_sus` varchar(200) DEFAULT NULL,
  `doc_sus1` varchar(200) DEFAULT NULL,
  `name_sus1` varchar(200) DEFAULT NULL,
  `apel_sus1` varchar(200) DEFAULT NULL,
  `tipo_1` varchar(200) DEFAULT NULL,
  `linea_1` varchar(200) DEFAULT NULL,
  `otro_1` varchar(200) DEFAULT NULL,
  `nip_1` varchar(200) DEFAULT NULL,
  `operador_1` varchar(200) DEFAULT NULL,
  `tipservice1` varchar(200) DEFAULT NULL,
  `planservice1` varchar(200) DEFAULT NULL,
  `infoservice1` varchar(200) DEFAULT NULL,
  `service1` varchar(200) DEFAULT NULL,
  `fecha_venta_1` varchar(200) DEFAULT NULL,
  `obs_1` varchar(200) DEFAULT NULL,
  `doc_sus2` varchar(200) DEFAULT NULL,
  `name_sus2` varchar(200) DEFAULT NULL,
  `apel_sus2` varchar(200) DEFAULT NULL,
  `tipo_2` varchar(200) DEFAULT NULL,
  `linea_2` varchar(200) DEFAULT NULL,
  `otro_2` varchar(200) DEFAULT NULL,
  `nip_2` varchar(200) DEFAULT NULL,
  `operador_2` varchar(200) DEFAULT NULL,
  `tipservice2` varchar(200) DEFAULT NULL,
  `planservice2` varchar(200) DEFAULT NULL,
  `infoservice2` varchar(200) DEFAULT NULL,
  `service2` varchar(200) DEFAULT NULL,
  `fecha_venta_2` varchar(200) DEFAULT NULL,
  `obs_2` varchar(200) DEFAULT NULL,
  `doc_sus3` varchar(200) DEFAULT NULL,
  `name_sus3` varchar(200) DEFAULT NULL,
  `apel_sus3` varchar(200) DEFAULT NULL,
  `tipo_3` varchar(200) DEFAULT NULL,
  `linea_3` varchar(200) DEFAULT NULL,
  `otro_3` varchar(200) DEFAULT NULL,
  `nip_3` varchar(200) DEFAULT NULL,
  `operador_3` varchar(200) DEFAULT NULL,
  `tipservice3` varchar(200) DEFAULT NULL,
  `planservice3` varchar(200) DEFAULT NULL,
  `infoservice3` varchar(200) DEFAULT NULL,
  `service3` varchar(200) DEFAULT NULL,
  `fecha_venta_3` varchar(200) DEFAULT NULL,
  `obs_3` varchar(200) DEFAULT NULL,
  `doc_sus4` varchar(200) DEFAULT NULL,
  `name_sus4` varchar(200) DEFAULT NULL,
  `apel_sus4` varchar(200) DEFAULT NULL,
  `tipo_4` varchar(200) DEFAULT NULL,
  `linea_4` varchar(200) DEFAULT NULL,
  `otro_4` varchar(200) DEFAULT NULL,
  `nip_4` varchar(200) DEFAULT NULL,
  `operador_4` varchar(200) DEFAULT NULL,
  `tipservice4` varchar(200) DEFAULT NULL,
  `planservice4` varchar(200) DEFAULT NULL,
  `infoservice4` varchar(200) DEFAULT NULL,
  `service4` varchar(200) DEFAULT NULL,
  `fecha_venta_4` varchar(200) DEFAULT NULL,
  `obs_4` varchar(200) DEFAULT NULL,
  `doc_sus5` varchar(200) DEFAULT NULL,
  `name_sus5` varchar(200) DEFAULT NULL,
  `apel_sus5` varchar(200) DEFAULT NULL,
  `tipo_5` varchar(200) DEFAULT NULL,
  `linea_5` varchar(200) DEFAULT NULL,
  `otro_5` varchar(200) DEFAULT NULL,
  `nip_5` varchar(200) DEFAULT NULL,
  `operador_5` varchar(200) DEFAULT NULL,
  `tipservice5` varchar(200) DEFAULT NULL,
  `planservice5` varchar(200) DEFAULT NULL,
  `infoservice5` varchar(200) DEFAULT NULL,
  `service5` varchar(200) DEFAULT NULL,
  `fecha_venta_5` varchar(200) DEFAULT NULL,
  `obs_5` varchar(200) DEFAULT NULL,
  `doc_sus6` varchar(200) DEFAULT NULL,
  `name_sus6` varchar(200) DEFAULT NULL,
  `apel_sus6` varchar(200) DEFAULT NULL,
  `tipo_6` varchar(200) DEFAULT NULL,
  `linea_6` varchar(200) DEFAULT NULL,
  `otro_6` varchar(200) DEFAULT NULL,
  `nip_6` varchar(200) DEFAULT NULL,
  `operador_6` varchar(200) DEFAULT NULL,
  `tipservice6` varchar(200) DEFAULT NULL,
  `planservice6` varchar(200) DEFAULT NULL,
  `infoservice6` varchar(200) DEFAULT NULL,
  `service6` varchar(200) DEFAULT NULL,
  `fecha_venta_6` varchar(200) DEFAULT NULL,
  `obs_6` varchar(200) DEFAULT NULL,
  `doc_sus7` varchar(200) DEFAULT NULL,
  `name_sus7` varchar(200) DEFAULT NULL,
  `apel_sus7` varchar(200) DEFAULT NULL,
  `tipo_7` varchar(200) DEFAULT NULL,
  `linea_7` varchar(200) DEFAULT NULL,
  `otro_7` varchar(200) DEFAULT NULL,
  `nip_7` varchar(200) DEFAULT NULL,
  `operador_7` varchar(200) DEFAULT NULL,
  `tipservice7` varchar(200) DEFAULT NULL,
  `planservice7` varchar(200) DEFAULT NULL,
  `infoservice7` varchar(200) DEFAULT NULL,
  `service7` varchar(200) DEFAULT NULL,
  `fecha_venta_7` varchar(200) DEFAULT NULL,
  `obs_7` varchar(200) DEFAULT NULL,
  `doc_sus8` varchar(200) DEFAULT NULL,
  `name_sus8` varchar(200) DEFAULT NULL,
  `apel_sus8` varchar(200) DEFAULT NULL,
  `tipo_8` varchar(200) DEFAULT NULL,
  `linea_8` varchar(200) DEFAULT NULL,
  `otro_8` varchar(200) DEFAULT NULL,
  `nip_8` varchar(200) DEFAULT NULL,
  `operador_8` varchar(200) DEFAULT NULL,
  `tipservice8` varchar(200) DEFAULT NULL,
  `planservice8` varchar(200) DEFAULT NULL,
  `infoservice8` varchar(200) DEFAULT NULL,
  `service8` varchar(200) DEFAULT NULL,
  `fecha_venta_8` varchar(200) DEFAULT NULL,
  `obs_8` varchar(200) DEFAULT NULL,
  `doc_sus9` varchar(200) DEFAULT NULL,
  `name_sus9` varchar(200) DEFAULT NULL,
  `apel_sus9` varchar(200) DEFAULT NULL,
  `tipo_9` varchar(200) DEFAULT NULL,
  `linea_9` varchar(200) DEFAULT NULL,
  `otro_9` varchar(200) DEFAULT NULL,
  `nip_9` varchar(200) DEFAULT NULL,
  `operador_9` varchar(200) DEFAULT NULL,
  `tipservice9` varchar(200) DEFAULT NULL,
  `planservice9` varchar(200) DEFAULT NULL,
  `infoservice9` varchar(200) DEFAULT NULL,
  `service9` varchar(200) DEFAULT NULL,
  `fecha_venta_9` varchar(200) DEFAULT NULL,
  `obs_9` varchar(200) DEFAULT NULL,
  `doc_sus10` varchar(200) DEFAULT NULL,
  `name_sus10` varchar(200) DEFAULT NULL,
  `apel_sus10` varchar(200) DEFAULT NULL,
  `tipo_10` varchar(200) DEFAULT NULL,
  `linea_10` varchar(200) DEFAULT NULL,
  `otro_10` varchar(200) DEFAULT NULL,
  `nip_10` varchar(200) DEFAULT NULL,
  `operador_10` varchar(200) DEFAULT NULL,
  `tipservice10` varchar(200) DEFAULT NULL,
  `planservice10` varchar(200) DEFAULT NULL,
  `infoservice10` varchar(200) DEFAULT NULL,
  `service10` varchar(200) DEFAULT NULL,
  `fecha_venta_10` varchar(200) DEFAULT NULL,
  `obs_10` varchar(200) DEFAULT NULL,
  `back_fec1` timestamp NULL DEFAULT NULL,
  `back1` int(11) DEFAULT NULL,
  `back_obs1` varchar(254) DEFAULT NULL,
  `back_fec2` timestamp NULL DEFAULT NULL,
  `back2` int(11) DEFAULT NULL,
  `back_obs2` varchar(254) DEFAULT NULL,
  `back_fec3` timestamp NULL DEFAULT NULL,
  `back3` int(11) DEFAULT NULL,
  `back_obs3` varchar(254) DEFAULT NULL,
  `id_serv` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_modulo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmpa_modulo_1: ~7 rows (aproximadamente)
DELETE FROM `crmpa_modulo_1`;
/*!40000 ALTER TABLE `crmpa_modulo_1` DISABLE KEYS */;
INSERT INTO `crmpa_modulo_1` (`id_modulo`, `paso_now`, `id_cl`, `id_calif`, `scoreG`, `nline`, `fecha_in`, `doc_sus`, `name_sus`, `apel_sus`, `fec_nac_sus`, `fec_exp_sus`, `barrio_sus`, `email_sus`, `dir1_sus`, `dir2_sus`, `dir3_sus`, `dir4_sus`, `dir5_sus`, `dir6_sus`, `dir7_sus`, `dir8_sus`, `dept_sus`, `ciud_sus`, `doc_sus1`, `name_sus1`, `apel_sus1`, `tipo_1`, `linea_1`, `otro_1`, `nip_1`, `operador_1`, `tipservice1`, `planservice1`, `infoservice1`, `service1`, `fecha_venta_1`, `obs_1`, `doc_sus2`, `name_sus2`, `apel_sus2`, `tipo_2`, `linea_2`, `otro_2`, `nip_2`, `operador_2`, `tipservice2`, `planservice2`, `infoservice2`, `service2`, `fecha_venta_2`, `obs_2`, `doc_sus3`, `name_sus3`, `apel_sus3`, `tipo_3`, `linea_3`, `otro_3`, `nip_3`, `operador_3`, `tipservice3`, `planservice3`, `infoservice3`, `service3`, `fecha_venta_3`, `obs_3`, `doc_sus4`, `name_sus4`, `apel_sus4`, `tipo_4`, `linea_4`, `otro_4`, `nip_4`, `operador_4`, `tipservice4`, `planservice4`, `infoservice4`, `service4`, `fecha_venta_4`, `obs_4`, `doc_sus5`, `name_sus5`, `apel_sus5`, `tipo_5`, `linea_5`, `otro_5`, `nip_5`, `operador_5`, `tipservice5`, `planservice5`, `infoservice5`, `service5`, `fecha_venta_5`, `obs_5`, `doc_sus6`, `name_sus6`, `apel_sus6`, `tipo_6`, `linea_6`, `otro_6`, `nip_6`, `operador_6`, `tipservice6`, `planservice6`, `infoservice6`, `service6`, `fecha_venta_6`, `obs_6`, `doc_sus7`, `name_sus7`, `apel_sus7`, `tipo_7`, `linea_7`, `otro_7`, `nip_7`, `operador_7`, `tipservice7`, `planservice7`, `infoservice7`, `service7`, `fecha_venta_7`, `obs_7`, `doc_sus8`, `name_sus8`, `apel_sus8`, `tipo_8`, `linea_8`, `otro_8`, `nip_8`, `operador_8`, `tipservice8`, `planservice8`, `infoservice8`, `service8`, `fecha_venta_8`, `obs_8`, `doc_sus9`, `name_sus9`, `apel_sus9`, `tipo_9`, `linea_9`, `otro_9`, `nip_9`, `operador_9`, `tipservice9`, `planservice9`, `infoservice9`, `service9`, `fecha_venta_9`, `obs_9`, `doc_sus10`, `name_sus10`, `apel_sus10`, `tipo_10`, `linea_10`, `otro_10`, `nip_10`, `operador_10`, `tipservice10`, `planservice10`, `infoservice10`, `service10`, `fecha_venta_10`, `obs_10`, `back_fec1`, `back1`, `back_obs1`, `back_fec2`, `back2`, `back_obs2`, `back_fec3`, `back3`, `back_obs3`, `id_serv`) VALUES
	(1, 3, 1, 3, 'A', 2, '2018-06-06 20:36:43', '323', '34324', '342', '2018-06-01', '2018-06-01', '324', '342', 'CALLE ', '432', 'AVENIDA ', '34', 'APARTAMENTO ', '56', 'URBANIZACION', '67', '3', '149', '345', '345', '453', 'LINEA NUEVA', '345', '534', '534', 'CLARO', 'PERSONALES', '2', '400 MIN ; 500 SMS ; 5 GB EN 4G', 'VOZ Y DATOS', '2018-06-01', '534534', '324', '3423', '4234', 'LINEA NUEVA', '4234', '32432', '43242', 'CLARO', 'PERSONALES', '2', '400 MIN ; 500 SMS ; 5 GB EN 4G', 'VOZ Y DATOS', '2018-06-01', '432', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-01', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-01', '', '2018-06-06 00:00:00', 3, '2018-06-06', '2018-06-06 00:00:00', 3, '32', '0000-00-00 00:00:00', 3, '', NULL);
INSERT INTO `crmpa_modulo_1` (`id_modulo`, `paso_now`, `id_cl`, `id_calif`, `scoreG`, `nline`, `fecha_in`, `doc_sus`, `name_sus`, `apel_sus`, `fec_nac_sus`, `fec_exp_sus`, `barrio_sus`, `email_sus`, `dir1_sus`, `dir2_sus`, `dir3_sus`, `dir4_sus`, `dir5_sus`, `dir6_sus`, `dir7_sus`, `dir8_sus`, `dept_sus`, `ciud_sus`, `doc_sus1`, `name_sus1`, `apel_sus1`, `tipo_1`, `linea_1`, `otro_1`, `nip_1`, `operador_1`, `tipservice1`, `planservice1`, `infoservice1`, `service1`, `fecha_venta_1`, `obs_1`, `doc_sus2`, `name_sus2`, `apel_sus2`, `tipo_2`, `linea_2`, `otro_2`, `nip_2`, `operador_2`, `tipservice2`, `planservice2`, `infoservice2`, `service2`, `fecha_venta_2`, `obs_2`, `doc_sus3`, `name_sus3`, `apel_sus3`, `tipo_3`, `linea_3`, `otro_3`, `nip_3`, `operador_3`, `tipservice3`, `planservice3`, `infoservice3`, `service3`, `fecha_venta_3`, `obs_3`, `doc_sus4`, `name_sus4`, `apel_sus4`, `tipo_4`, `linea_4`, `otro_4`, `nip_4`, `operador_4`, `tipservice4`, `planservice4`, `infoservice4`, `service4`, `fecha_venta_4`, `obs_4`, `doc_sus5`, `name_sus5`, `apel_sus5`, `tipo_5`, `linea_5`, `otro_5`, `nip_5`, `operador_5`, `tipservice5`, `planservice5`, `infoservice5`, `service5`, `fecha_venta_5`, `obs_5`, `doc_sus6`, `name_sus6`, `apel_sus6`, `tipo_6`, `linea_6`, `otro_6`, `nip_6`, `operador_6`, `tipservice6`, `planservice6`, `infoservice6`, `service6`, `fecha_venta_6`, `obs_6`, `doc_sus7`, `name_sus7`, `apel_sus7`, `tipo_7`, `linea_7`, `otro_7`, `nip_7`, `operador_7`, `tipservice7`, `planservice7`, `infoservice7`, `service7`, `fecha_venta_7`, `obs_7`, `doc_sus8`, `name_sus8`, `apel_sus8`, `tipo_8`, `linea_8`, `otro_8`, `nip_8`, `operador_8`, `tipservice8`, `planservice8`, `infoservice8`, `service8`, `fecha_venta_8`, `obs_8`, `doc_sus9`, `name_sus9`, `apel_sus9`, `tipo_9`, `linea_9`, `otro_9`, `nip_9`, `operador_9`, `tipservice9`, `planservice9`, `infoservice9`, `service9`, `fecha_venta_9`, `obs_9`, `doc_sus10`, `name_sus10`, `apel_sus10`, `tipo_10`, `linea_10`, `otro_10`, `nip_10`, `operador_10`, `tipservice10`, `planservice10`, `infoservice10`, `service10`, `fecha_venta_10`, `obs_10`, `back_fec1`, `back1`, `back_obs1`, `back_fec2`, `back2`, `back_obs2`, `back_fec3`, `back3`, `back_obs3`, `id_serv`) VALUES
	(5, 1, 3, 46, 'C', 2, '2018-06-06 17:14:35', '686', '876', '876', '2018-06-06', '2018-06-06', '687', '68', 'CALLE ', '7', 'CARRERA ', '687', 'APARTAMENTO ', '876', 'MANZANA ', '87', '17', '731', '8789', '789', '789', 'TELEFONO A PORTAR', '7', '3', '34', 'CLARO', 'PERSONALES', '2', '400 MIN ; 500 SMS ; 5 GB EN 4G', 'VOZ Y DATOS', '2018-06-06', '34', '34', '34', '34', 'LINEA NUEVA', '34', '34', '34', 'TIGO', 'INTERNET MOVIL', '6', '5GB EN 4G', 'SOLO DATOS', '2018-06-06', '34', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-06', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-06', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-06', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-06', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-06', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-06', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-06', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-06', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `crmpa_modulo_1` (`id_modulo`, `paso_now`, `id_cl`, `id_calif`, `scoreG`, `nline`, `fecha_in`, `doc_sus`, `name_sus`, `apel_sus`, `fec_nac_sus`, `fec_exp_sus`, `barrio_sus`, `email_sus`, `dir1_sus`, `dir2_sus`, `dir3_sus`, `dir4_sus`, `dir5_sus`, `dir6_sus`, `dir7_sus`, `dir8_sus`, `dept_sus`, `ciud_sus`, `doc_sus1`, `name_sus1`, `apel_sus1`, `tipo_1`, `linea_1`, `otro_1`, `nip_1`, `operador_1`, `tipservice1`, `planservice1`, `infoservice1`, `service1`, `fecha_venta_1`, `obs_1`, `doc_sus2`, `name_sus2`, `apel_sus2`, `tipo_2`, `linea_2`, `otro_2`, `nip_2`, `operador_2`, `tipservice2`, `planservice2`, `infoservice2`, `service2`, `fecha_venta_2`, `obs_2`, `doc_sus3`, `name_sus3`, `apel_sus3`, `tipo_3`, `linea_3`, `otro_3`, `nip_3`, `operador_3`, `tipservice3`, `planservice3`, `infoservice3`, `service3`, `fecha_venta_3`, `obs_3`, `doc_sus4`, `name_sus4`, `apel_sus4`, `tipo_4`, `linea_4`, `otro_4`, `nip_4`, `operador_4`, `tipservice4`, `planservice4`, `infoservice4`, `service4`, `fecha_venta_4`, `obs_4`, `doc_sus5`, `name_sus5`, `apel_sus5`, `tipo_5`, `linea_5`, `otro_5`, `nip_5`, `operador_5`, `tipservice5`, `planservice5`, `infoservice5`, `service5`, `fecha_venta_5`, `obs_5`, `doc_sus6`, `name_sus6`, `apel_sus6`, `tipo_6`, `linea_6`, `otro_6`, `nip_6`, `operador_6`, `tipservice6`, `planservice6`, `infoservice6`, `service6`, `fecha_venta_6`, `obs_6`, `doc_sus7`, `name_sus7`, `apel_sus7`, `tipo_7`, `linea_7`, `otro_7`, `nip_7`, `operador_7`, `tipservice7`, `planservice7`, `infoservice7`, `service7`, `fecha_venta_7`, `obs_7`, `doc_sus8`, `name_sus8`, `apel_sus8`, `tipo_8`, `linea_8`, `otro_8`, `nip_8`, `operador_8`, `tipservice8`, `planservice8`, `infoservice8`, `service8`, `fecha_venta_8`, `obs_8`, `doc_sus9`, `name_sus9`, `apel_sus9`, `tipo_9`, `linea_9`, `otro_9`, `nip_9`, `operador_9`, `tipservice9`, `planservice9`, `infoservice9`, `service9`, `fecha_venta_9`, `obs_9`, `doc_sus10`, `name_sus10`, `apel_sus10`, `tipo_10`, `linea_10`, `otro_10`, `nip_10`, `operador_10`, `tipservice10`, `planservice10`, `infoservice10`, `service10`, `fecha_venta_10`, `obs_10`, `back_fec1`, `back1`, `back_obs1`, `back_fec2`, `back2`, `back_obs2`, `back_fec3`, `back3`, `back_obs3`, `id_serv`) VALUES
	(6, 2, 4, 48, 'C', 7, '2018-06-06 23:36:11', '1032345113', 'CAMILO', 'DIAZ', '2018-01-01', '2018-06-06', 'GILMAR', 'CAMILOSOSPED@GMAIL.COM', 'CALLE ', '111', 'CARRERA ', '32', 'APARTAMENTO ', '34', 'URBANIZACION', 'CONJUNTO', '17', '730', '1011', 'C1', 'W', 'LINEA NUEVA', '32', '7', '687', 'TIGO', 'PERSONALES', '2', '400 MIN ; 500 SMS ; 5 GB EN 4G', 'VOZ Y DATOS', '2018-06-06', '32', '32', '876', '876', 'LINEA NUEVA', '87', '687', '6', 'CLARO', 'PERSONALES', '3', '700 MIN ; 500 SMS ; 10GB EN 4G', 'VOZ Y DATOS', '2018-06-06', '32', '32', 'IU', '897', 'LINEA NUEVA', '7', '897', '89', 'MOVISTAR', 'CORPORATIVO', '9', 'MIN ILIM AVANTEL; 500 SMS ; 1GB EN 4G', 'VOZ Y DATOS', '2018-06-06', '32', '32O', 'Kpoi', 'po', 'TELEFONO A PORTAR', '7687', '687', '8768', 'CLARO', 'INTERNET MOVIL', '8', '30GB EN 4G', 'SOLO DATOS', '2018-06-06', '32', '32', '876897', '89', 'MIGRACION', '8798', '79', '879', 'ETB', 'INTERNET MOVIL', '7', '10GB EN 4G', 'SOLO DATOS', '2018-06-06', '323', '32KPO', 'K', 'POI', 'TELEFONO A PORTAR', '97', '89789', '79', 'TIGO', 'PERSONALES', '2', '400 MIN ; 500 SMS ; 5 GB EN 4G', 'VOZ Y DATOS', '2018-06-06', '3233', '32', '87', '98', 'TELEFONO A PORTAR', '7', '97', '9', 'AVANTEL', 'INTERNET MOVIL', '7', '10GB EN 4G', 'SOLO DATOS', '2018-06-06', '32', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-06', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-06', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-06', '', '2018-06-06 00:00:00', 3, '2018-06-06', '2018-06-06 00:00:00', 3, '2018-06-06', '2018-06-06 00:00:00', 3, 'EWKDWIDS OK FIN', NULL);
INSERT INTO `crmpa_modulo_1` (`id_modulo`, `paso_now`, `id_cl`, `id_calif`, `scoreG`, `nline`, `fecha_in`, `doc_sus`, `name_sus`, `apel_sus`, `fec_nac_sus`, `fec_exp_sus`, `barrio_sus`, `email_sus`, `dir1_sus`, `dir2_sus`, `dir3_sus`, `dir4_sus`, `dir5_sus`, `dir6_sus`, `dir7_sus`, `dir8_sus`, `dept_sus`, `ciud_sus`, `doc_sus1`, `name_sus1`, `apel_sus1`, `tipo_1`, `linea_1`, `otro_1`, `nip_1`, `operador_1`, `tipservice1`, `planservice1`, `infoservice1`, `service1`, `fecha_venta_1`, `obs_1`, `doc_sus2`, `name_sus2`, `apel_sus2`, `tipo_2`, `linea_2`, `otro_2`, `nip_2`, `operador_2`, `tipservice2`, `planservice2`, `infoservice2`, `service2`, `fecha_venta_2`, `obs_2`, `doc_sus3`, `name_sus3`, `apel_sus3`, `tipo_3`, `linea_3`, `otro_3`, `nip_3`, `operador_3`, `tipservice3`, `planservice3`, `infoservice3`, `service3`, `fecha_venta_3`, `obs_3`, `doc_sus4`, `name_sus4`, `apel_sus4`, `tipo_4`, `linea_4`, `otro_4`, `nip_4`, `operador_4`, `tipservice4`, `planservice4`, `infoservice4`, `service4`, `fecha_venta_4`, `obs_4`, `doc_sus5`, `name_sus5`, `apel_sus5`, `tipo_5`, `linea_5`, `otro_5`, `nip_5`, `operador_5`, `tipservice5`, `planservice5`, `infoservice5`, `service5`, `fecha_venta_5`, `obs_5`, `doc_sus6`, `name_sus6`, `apel_sus6`, `tipo_6`, `linea_6`, `otro_6`, `nip_6`, `operador_6`, `tipservice6`, `planservice6`, `infoservice6`, `service6`, `fecha_venta_6`, `obs_6`, `doc_sus7`, `name_sus7`, `apel_sus7`, `tipo_7`, `linea_7`, `otro_7`, `nip_7`, `operador_7`, `tipservice7`, `planservice7`, `infoservice7`, `service7`, `fecha_venta_7`, `obs_7`, `doc_sus8`, `name_sus8`, `apel_sus8`, `tipo_8`, `linea_8`, `otro_8`, `nip_8`, `operador_8`, `tipservice8`, `planservice8`, `infoservice8`, `service8`, `fecha_venta_8`, `obs_8`, `doc_sus9`, `name_sus9`, `apel_sus9`, `tipo_9`, `linea_9`, `otro_9`, `nip_9`, `operador_9`, `tipservice9`, `planservice9`, `infoservice9`, `service9`, `fecha_venta_9`, `obs_9`, `doc_sus10`, `name_sus10`, `apel_sus10`, `tipo_10`, `linea_10`, `otro_10`, `nip_10`, `operador_10`, `tipservice10`, `planservice10`, `infoservice10`, `service10`, `fecha_venta_10`, `obs_10`, `back_fec1`, `back1`, `back_obs1`, `back_fec2`, `back2`, `back_obs2`, `back_fec3`, `back3`, `back_obs3`, `id_serv`) VALUES
	(7, 1, 3, 0, 'A', 1, '2018-06-13 00:19:45', '8', '6787', '6', '2019-07-05', '2018-06-12', '876', '87', 'CARRERA ', '687', 'CALLE ', '876', 'URBANIZACION', '687', 'MANZANA ', '876', '2', '128', '876', '876', '87', 'LINEA NUEVA', '6', '876', '876', 'CLARO', 'CORPORATIVO', '10', '150 MIN ; 500 SMS ; 2,5 GB EN 4G', 'VOZ Y DATOS', '2018-06-12', '87687', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO `crmpa_modulo_1` (`id_modulo`, `paso_now`, `id_cl`, `id_calif`, `scoreG`, `nline`, `fecha_in`, `doc_sus`, `name_sus`, `apel_sus`, `fec_nac_sus`, `fec_exp_sus`, `barrio_sus`, `email_sus`, `dir1_sus`, `dir2_sus`, `dir3_sus`, `dir4_sus`, `dir5_sus`, `dir6_sus`, `dir7_sus`, `dir8_sus`, `dept_sus`, `ciud_sus`, `doc_sus1`, `name_sus1`, `apel_sus1`, `tipo_1`, `linea_1`, `otro_1`, `nip_1`, `operador_1`, `tipservice1`, `planservice1`, `infoservice1`, `service1`, `fecha_venta_1`, `obs_1`, `doc_sus2`, `name_sus2`, `apel_sus2`, `tipo_2`, `linea_2`, `otro_2`, `nip_2`, `operador_2`, `tipservice2`, `planservice2`, `infoservice2`, `service2`, `fecha_venta_2`, `obs_2`, `doc_sus3`, `name_sus3`, `apel_sus3`, `tipo_3`, `linea_3`, `otro_3`, `nip_3`, `operador_3`, `tipservice3`, `planservice3`, `infoservice3`, `service3`, `fecha_venta_3`, `obs_3`, `doc_sus4`, `name_sus4`, `apel_sus4`, `tipo_4`, `linea_4`, `otro_4`, `nip_4`, `operador_4`, `tipservice4`, `planservice4`, `infoservice4`, `service4`, `fecha_venta_4`, `obs_4`, `doc_sus5`, `name_sus5`, `apel_sus5`, `tipo_5`, `linea_5`, `otro_5`, `nip_5`, `operador_5`, `tipservice5`, `planservice5`, `infoservice5`, `service5`, `fecha_venta_5`, `obs_5`, `doc_sus6`, `name_sus6`, `apel_sus6`, `tipo_6`, `linea_6`, `otro_6`, `nip_6`, `operador_6`, `tipservice6`, `planservice6`, `infoservice6`, `service6`, `fecha_venta_6`, `obs_6`, `doc_sus7`, `name_sus7`, `apel_sus7`, `tipo_7`, `linea_7`, `otro_7`, `nip_7`, `operador_7`, `tipservice7`, `planservice7`, `infoservice7`, `service7`, `fecha_venta_7`, `obs_7`, `doc_sus8`, `name_sus8`, `apel_sus8`, `tipo_8`, `linea_8`, `otro_8`, `nip_8`, `operador_8`, `tipservice8`, `planservice8`, `infoservice8`, `service8`, `fecha_venta_8`, `obs_8`, `doc_sus9`, `name_sus9`, `apel_sus9`, `tipo_9`, `linea_9`, `otro_9`, `nip_9`, `operador_9`, `tipservice9`, `planservice9`, `infoservice9`, `service9`, `fecha_venta_9`, `obs_9`, `doc_sus10`, `name_sus10`, `apel_sus10`, `tipo_10`, `linea_10`, `otro_10`, `nip_10`, `operador_10`, `tipservice10`, `planservice10`, `infoservice10`, `service10`, `fecha_venta_10`, `obs_10`, `back_fec1`, `back1`, `back_obs1`, `back_fec2`, `back2`, `back_obs2`, `back_fec3`, `back3`, `back_obs3`, `id_serv`) VALUES
	(8, 1, 3, 0, 'A', 1, '2018-06-13 00:20:47', '8', '6787', '6', '2019-07-05', '2018-06-12', '876', '87', 'CARRERA ', '687', 'CALLE ', '876', 'URBANIZACION', '687', 'MANZANA ', '876', '2', '128', '876', '876', '87', 'LINEA NUEVA', '6', '876', '876', 'CLARO', 'CORPORATIVO', '10', '150 MIN ; 500 SMS ; 2,5 GB EN 4G', 'VOZ Y DATOS', '2018-06-12', '87687', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO `crmpa_modulo_1` (`id_modulo`, `paso_now`, `id_cl`, `id_calif`, `scoreG`, `nline`, `fecha_in`, `doc_sus`, `name_sus`, `apel_sus`, `fec_nac_sus`, `fec_exp_sus`, `barrio_sus`, `email_sus`, `dir1_sus`, `dir2_sus`, `dir3_sus`, `dir4_sus`, `dir5_sus`, `dir6_sus`, `dir7_sus`, `dir8_sus`, `dept_sus`, `ciud_sus`, `doc_sus1`, `name_sus1`, `apel_sus1`, `tipo_1`, `linea_1`, `otro_1`, `nip_1`, `operador_1`, `tipservice1`, `planservice1`, `infoservice1`, `service1`, `fecha_venta_1`, `obs_1`, `doc_sus2`, `name_sus2`, `apel_sus2`, `tipo_2`, `linea_2`, `otro_2`, `nip_2`, `operador_2`, `tipservice2`, `planservice2`, `infoservice2`, `service2`, `fecha_venta_2`, `obs_2`, `doc_sus3`, `name_sus3`, `apel_sus3`, `tipo_3`, `linea_3`, `otro_3`, `nip_3`, `operador_3`, `tipservice3`, `planservice3`, `infoservice3`, `service3`, `fecha_venta_3`, `obs_3`, `doc_sus4`, `name_sus4`, `apel_sus4`, `tipo_4`, `linea_4`, `otro_4`, `nip_4`, `operador_4`, `tipservice4`, `planservice4`, `infoservice4`, `service4`, `fecha_venta_4`, `obs_4`, `doc_sus5`, `name_sus5`, `apel_sus5`, `tipo_5`, `linea_5`, `otro_5`, `nip_5`, `operador_5`, `tipservice5`, `planservice5`, `infoservice5`, `service5`, `fecha_venta_5`, `obs_5`, `doc_sus6`, `name_sus6`, `apel_sus6`, `tipo_6`, `linea_6`, `otro_6`, `nip_6`, `operador_6`, `tipservice6`, `planservice6`, `infoservice6`, `service6`, `fecha_venta_6`, `obs_6`, `doc_sus7`, `name_sus7`, `apel_sus7`, `tipo_7`, `linea_7`, `otro_7`, `nip_7`, `operador_7`, `tipservice7`, `planservice7`, `infoservice7`, `service7`, `fecha_venta_7`, `obs_7`, `doc_sus8`, `name_sus8`, `apel_sus8`, `tipo_8`, `linea_8`, `otro_8`, `nip_8`, `operador_8`, `tipservice8`, `planservice8`, `infoservice8`, `service8`, `fecha_venta_8`, `obs_8`, `doc_sus9`, `name_sus9`, `apel_sus9`, `tipo_9`, `linea_9`, `otro_9`, `nip_9`, `operador_9`, `tipservice9`, `planservice9`, `infoservice9`, `service9`, `fecha_venta_9`, `obs_9`, `doc_sus10`, `name_sus10`, `apel_sus10`, `tipo_10`, `linea_10`, `otro_10`, `nip_10`, `operador_10`, `tipservice10`, `planservice10`, `infoservice10`, `service10`, `fecha_venta_10`, `obs_10`, `back_fec1`, `back1`, `back_obs1`, `back_fec2`, `back2`, `back_obs2`, `back_fec3`, `back3`, `back_obs3`, `id_serv`) VALUES
	(9, 1, 3, 0, 'A', 1, '2018-06-13 00:20:58', '8', '6787', '6', '2019-07-05', '2018-06-12', '876', '87', 'CARRERA ', '687', 'CALLE ', '876', 'URBANIZACION', '687', 'MANZANA ', '876', '2', '128', '876', '876', '87', 'LINEA NUEVA', '6', '876', '876', 'CLARO', 'CORPORATIVO', '10', '150 MIN ; 500 SMS ; 2,5 GB EN 4G', 'VOZ Y DATOS', '2018-06-12', '87687', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO `crmpa_modulo_1` (`id_modulo`, `paso_now`, `id_cl`, `id_calif`, `scoreG`, `nline`, `fecha_in`, `doc_sus`, `name_sus`, `apel_sus`, `fec_nac_sus`, `fec_exp_sus`, `barrio_sus`, `email_sus`, `dir1_sus`, `dir2_sus`, `dir3_sus`, `dir4_sus`, `dir5_sus`, `dir6_sus`, `dir7_sus`, `dir8_sus`, `dept_sus`, `ciud_sus`, `doc_sus1`, `name_sus1`, `apel_sus1`, `tipo_1`, `linea_1`, `otro_1`, `nip_1`, `operador_1`, `tipservice1`, `planservice1`, `infoservice1`, `service1`, `fecha_venta_1`, `obs_1`, `doc_sus2`, `name_sus2`, `apel_sus2`, `tipo_2`, `linea_2`, `otro_2`, `nip_2`, `operador_2`, `tipservice2`, `planservice2`, `infoservice2`, `service2`, `fecha_venta_2`, `obs_2`, `doc_sus3`, `name_sus3`, `apel_sus3`, `tipo_3`, `linea_3`, `otro_3`, `nip_3`, `operador_3`, `tipservice3`, `planservice3`, `infoservice3`, `service3`, `fecha_venta_3`, `obs_3`, `doc_sus4`, `name_sus4`, `apel_sus4`, `tipo_4`, `linea_4`, `otro_4`, `nip_4`, `operador_4`, `tipservice4`, `planservice4`, `infoservice4`, `service4`, `fecha_venta_4`, `obs_4`, `doc_sus5`, `name_sus5`, `apel_sus5`, `tipo_5`, `linea_5`, `otro_5`, `nip_5`, `operador_5`, `tipservice5`, `planservice5`, `infoservice5`, `service5`, `fecha_venta_5`, `obs_5`, `doc_sus6`, `name_sus6`, `apel_sus6`, `tipo_6`, `linea_6`, `otro_6`, `nip_6`, `operador_6`, `tipservice6`, `planservice6`, `infoservice6`, `service6`, `fecha_venta_6`, `obs_6`, `doc_sus7`, `name_sus7`, `apel_sus7`, `tipo_7`, `linea_7`, `otro_7`, `nip_7`, `operador_7`, `tipservice7`, `planservice7`, `infoservice7`, `service7`, `fecha_venta_7`, `obs_7`, `doc_sus8`, `name_sus8`, `apel_sus8`, `tipo_8`, `linea_8`, `otro_8`, `nip_8`, `operador_8`, `tipservice8`, `planservice8`, `infoservice8`, `service8`, `fecha_venta_8`, `obs_8`, `doc_sus9`, `name_sus9`, `apel_sus9`, `tipo_9`, `linea_9`, `otro_9`, `nip_9`, `operador_9`, `tipservice9`, `planservice9`, `infoservice9`, `service9`, `fecha_venta_9`, `obs_9`, `doc_sus10`, `name_sus10`, `apel_sus10`, `tipo_10`, `linea_10`, `otro_10`, `nip_10`, `operador_10`, `tipservice10`, `planservice10`, `infoservice10`, `service10`, `fecha_venta_10`, `obs_10`, `back_fec1`, `back1`, `back_obs1`, `back_fec2`, `back2`, `back_obs2`, `back_fec3`, `back3`, `back_obs3`, `id_serv`) VALUES
	(10, 1, 3, 0, 'A', 1, '2018-06-13 00:21:38', '8', '6787', '6', '2019-07-05', '2018-06-12', '876', '87', 'CARRERA ', '687', 'CALLE ', '876', 'URBANIZACION', '687', 'MANZANA ', '876', '2', '128', '876', '876', '87', 'LINEA NUEVA', '6', '876', '876', 'CLARO', 'CORPORATIVO', '10', '150 MIN ; 500 SMS ; 2,5 GB EN 4G', 'VOZ Y DATOS', '2018-06-12', '87687', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '2018-06-12', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7);
/*!40000 ALTER TABLE `crmpa_modulo_1` ENABLE KEYS */;

-- Volcando estructura para tabla crm_bpo.crmpa_perfiles
CREATE TABLE IF NOT EXISTS `crmpa_perfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `perfil` varchar(100) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmpa_perfiles: ~3 rows (aproximadamente)
DELETE FROM `crmpa_perfiles`;
/*!40000 ALTER TABLE `crmpa_perfiles` DISABLE KEYS */;
INSERT INTO `crmpa_perfiles` (`id`, `perfil`, `estado`) VALUES
	(1, 'Administrador', 1);
INSERT INTO `crmpa_perfiles` (`id`, `perfil`, `estado`) VALUES
	(2, 'Asesor', 1);
INSERT INTO `crmpa_perfiles` (`id`, `perfil`, `estado`) VALUES
	(3, 'Backoffices', 1);
/*!40000 ALTER TABLE `crmpa_perfiles` ENABLE KEYS */;

-- Volcando estructura para tabla crm_bpo.crmpa_permisos
CREATE TABLE IF NOT EXISTS `crmpa_permisos` (
  `id_usuario` int(11) NOT NULL,
  `id_perfil` int(11) NOT NULL,
  `id_empresa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmpa_permisos: ~12 rows (aproximadamente)
DELETE FROM `crmpa_permisos`;
/*!40000 ALTER TABLE `crmpa_permisos` DISABLE KEYS */;
INSERT INTO `crmpa_permisos` (`id_usuario`, `id_perfil`, `id_empresa`) VALUES
	(1, 1, '1,14');
INSERT INTO `crmpa_permisos` (`id_usuario`, `id_perfil`, `id_empresa`) VALUES
	(2, 2, '1');
INSERT INTO `crmpa_permisos` (`id_usuario`, `id_perfil`, `id_empresa`) VALUES
	(3, 3, '1');
INSERT INTO `crmpa_permisos` (`id_usuario`, `id_perfil`, `id_empresa`) VALUES
	(10, 1, '14');
INSERT INTO `crmpa_permisos` (`id_usuario`, `id_perfil`, `id_empresa`) VALUES
	(11, 1, '14');
INSERT INTO `crmpa_permisos` (`id_usuario`, `id_perfil`, `id_empresa`) VALUES
	(12, 2, '14,1');
INSERT INTO `crmpa_permisos` (`id_usuario`, `id_perfil`, `id_empresa`) VALUES
	(13, 2, '14');
INSERT INTO `crmpa_permisos` (`id_usuario`, `id_perfil`, `id_empresa`) VALUES
	(14, 2, '14');
INSERT INTO `crmpa_permisos` (`id_usuario`, `id_perfil`, `id_empresa`) VALUES
	(15, 2, '14');
INSERT INTO `crmpa_permisos` (`id_usuario`, `id_perfil`, `id_empresa`) VALUES
	(16, 2, '14');
INSERT INTO `crmpa_permisos` (`id_usuario`, `id_perfil`, `id_empresa`) VALUES
	(17, 2, '14');
INSERT INTO `crmpa_permisos` (`id_usuario`, `id_perfil`, `id_empresa`) VALUES
	(18, 2, '14');
/*!40000 ALTER TABLE `crmpa_permisos` ENABLE KEYS */;

-- Volcando estructura para tabla crm_bpo.crmpa_servicio
CREATE TABLE IF NOT EXISTS `crmpa_servicio` (
  `id_serv` int(11) NOT NULL AUTO_INCREMENT,
  `servicio` varchar(150) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `descripcion` varchar(254) DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_serv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmpa_servicio: ~2 rows (aproximadamente)
DELETE FROM `crmpa_servicio`;
/*!40000 ALTER TABLE `crmpa_servicio` DISABLE KEYS */;
INSERT INTO `crmpa_servicio` (`id_serv`, `servicio`, `estado`, `emp_id`, `descripcion`, `fecha_creacion`) VALUES
	(7, 'OUT1', 1, 14, 'camp 1', '2018-05-28 22:51:38');
INSERT INTO `crmpa_servicio` (`id_serv`, `servicio`, `estado`, `emp_id`, `descripcion`, `fecha_creacion`) VALUES
	(8, 'OUT2', 1, 15, 'd', '2018-06-12 23:51:58');
/*!40000 ALTER TABLE `crmpa_servicio` ENABLE KEYS */;

-- Volcando estructura para tabla crm_bpo.crmpa_usuarios
CREATE TABLE IF NOT EXISTS `crmpa_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `apellido` varchar(250) NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha_creacion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla crm_bpo.crmpa_usuarios: ~12 rows (aproximadamente)
DELETE FROM `crmpa_usuarios`;
/*!40000 ALTER TABLE `crmpa_usuarios` DISABLE KEYS */;
INSERT INTO `crmpa_usuarios` (`id`, `user`, `password`, `nombre`, `apellido`, `estado`, `fecha_creacion`, `email`) VALUES
	(1, 'pruebas1', 'ee2ec3cc66427bb422894495068222a8', 'Usuario', 'Administrador', 1, '2018-06-06 14:14:16', 'x@s.co');
INSERT INTO `crmpa_usuarios` (`id`, `user`, `password`, `nombre`, `apellido`, `estado`, `fecha_creacion`, `email`) VALUES
	(2, 'pruebas2', 'ee2ec3cc66427bb422894495068222a8', 'Usuario', 'Asesor', 1, '2018-06-06 14:42:30', 'x@s.co');
INSERT INTO `crmpa_usuarios` (`id`, `user`, `password`, `nombre`, `apellido`, `estado`, `fecha_creacion`, `email`) VALUES
	(3, 'pruebas3', 'ee2ec3cc66427bb422894495068222a8', 'Usuario', 'Backoffices', 1, '2018-06-06 14:14:17', 'x@s.co');
INSERT INTO `crmpa_usuarios` (`id`, `user`, `password`, `nombre`, `apellido`, `estado`, `fecha_creacion`, `email`) VALUES
	(10, '8', 'c9f0f895fb98ab9159f51fd0297e236d', '8', '8', 1, '2018-06-06 15:30:37', '8');
INSERT INTO `crmpa_usuarios` (`id`, `user`, `password`, `nombre`, `apellido`, `estado`, `fecha_creacion`, `email`) VALUES
	(11, '9', '45c48cce2e2d7fbdea1afc51c7c6ad26', '9', '9', 1, '2018-06-06 15:30:49', '9');
INSERT INTO `crmpa_usuarios` (`id`, `user`, `password`, `nombre`, `apellido`, `estado`, `fecha_creacion`, `email`) VALUES
	(12, 'agente', 'f77538d26d37221483971c3323d5f050', 'agente', 'agente', 1, '2018-06-06 15:38:29', 'agente');
INSERT INTO `crmpa_usuarios` (`id`, `user`, `password`, `nombre`, `apellido`, `estado`, `fecha_creacion`, `email`) VALUES
	(13, 'jvargas', 'c9cc595cdb7482ecf033c72f1ed4bcd2', 'jeimmy', 'vargas', 1, '2018-06-07 15:15:59', 'notiene@nitiene.com');
INSERT INTO `crmpa_usuarios` (`id`, `user`, `password`, `nombre`, `apellido`, `estado`, `fecha_creacion`, `email`) VALUES
	(14, '1022418359', '05da782c5c0fa58d84455429384720b7', 'ANGGY CAROLINA', 'SANCHEZ MELO', 1, '2018-06-07 21:48:59', 'notiene@notiene.com');
INSERT INTO `crmpa_usuarios` (`id`, `user`, `password`, `nombre`, `apellido`, `estado`, `fecha_creacion`, `email`) VALUES
	(15, '1000330692', 'ed16a060662cbd6d0736d597df64fcc0', 'DANIELA ANDREA', 'MARTINEZ DIAZ', 1, '2018-06-07 21:50:27', 'notiene@notiene.com');
INSERT INTO `crmpa_usuarios` (`id`, `user`, `password`, `nombre`, `apellido`, `estado`, `fecha_creacion`, `email`) VALUES
	(16, '1192771189', '46cd7823ab4bec001eefaf654403a712', 'SANTIAGO', 'BONILLA BECERRA', 1, '2018-06-07 21:53:24', 'notiene@notiene.com');
INSERT INTO `crmpa_usuarios` (`id`, `user`, `password`, `nombre`, `apellido`, `estado`, `fecha_creacion`, `email`) VALUES
	(17, '1030581562', 'c229a6df28c2da939769a828e63317d6', 'JHON FREDY', 'GONZALEZ SALINAS', 1, '2018-06-07 21:53:49', 'notiene@notiene.com');
INSERT INTO `crmpa_usuarios` (`id`, `user`, `password`, `nombre`, `apellido`, `estado`, `fecha_creacion`, `email`) VALUES
	(18, '52506112', '55b22caad02049d0ddaa24676f7c89e4', 'NUVIA ADRIANA ', 'PACHON LARA', 1, '2018-06-07 21:54:18', 'notiene@notiene.com');
/*!40000 ALTER TABLE `crmpa_usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
