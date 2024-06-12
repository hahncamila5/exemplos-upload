-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para aula_upload
DROP DATABASE IF EXISTS `aula_upload`;
CREATE DATABASE IF NOT EXISTS `aula_upload` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `aula_upload`;

-- Copiando estrutura para tabela aula_upload.lancamento
DROP TABLE IF EXISTS `lancamento`;
CREATE TABLE IF NOT EXISTS `lancamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `lancamento` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela aula_upload.lancamento: ~0 rows (aproximadamente)
DELETE FROM `lancamento`;
INSERT INTO `lancamento` (`id`, `data`, `lancamento`) VALUES
	(1, '2024-05-13', 'teste'),
	(2, '2024-05-14', 'teste'),
	(3, '2024-05-06', 'teste');

-- Copiando estrutura para tabela aula_upload.lancamento_arquivo
DROP TABLE IF EXISTS `lancamento_arquivo`;
CREATE TABLE IF NOT EXISTS `lancamento_arquivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_lancamento` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela aula_upload.lancamento_arquivo: ~2 rows (aproximadamente)
DELETE FROM `lancamento_arquivo`;
INSERT INTO `lancamento_arquivo` (`id`, `id_lancamento`, `nome`) VALUES
	(1, 2, 'programacao_web_ii1.pdf'),
	(2, 3, '6643fd642b3d5_PHP.pdf');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
