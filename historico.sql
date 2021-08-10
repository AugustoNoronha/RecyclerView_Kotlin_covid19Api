-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 10-Ago-2021 às 17:01
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `historico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `casos`
--

DROP TABLE IF EXISTS `casos`;
CREATE TABLE IF NOT EXISTS `casos` (
  `id` char(36) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `CountryCode` varchar(255) NOT NULL,
  `Province` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `CityCode` varchar(255) NOT NULL,
  `Lat` varchar(255) NOT NULL,
  `Lon` varchar(255) NOT NULL,
  `Confirmed` int(11) NOT NULL,
  `Deaths` int(11) NOT NULL,
  `Recovered` int(11) NOT NULL,
  `Active` int(11) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `userIdId` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_4ba255cefa3462a1c6c9a1c5b5c` (`userIdId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` char(36) NOT NULL,
  `Lat` varchar(255) NOT NULL,
  `Lon` varchar(255) NOT NULL,
  `DateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `casos`
--
ALTER TABLE `casos`
  ADD CONSTRAINT `FK_4ba255cefa3462a1c6c9a1c5b5c` FOREIGN KEY (`userIdId`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
