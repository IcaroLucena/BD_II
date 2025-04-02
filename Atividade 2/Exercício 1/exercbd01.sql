-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/04/2025 às 02:40
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `exercbd01`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `pet`
--

CREATE TABLE `pet` (
  `NumRegistro` int(11) NOT NULL,
  `Nome` varchar(80) DEFAULT NULL,
  `Especie` varchar(25) DEFAULT NULL,
  `Raca` varchar(30) DEFAULT NULL,
  `Cor` varchar(40) DEFAULT NULL,
  `Nascimento` datetime DEFAULT NULL,
  `Sexo` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pet`
--

INSERT INTO `pet` (`NumRegistro`, `Nome`, `Especie`, `Raca`, `Cor`, `Nascimento`, `Sexo`) VALUES
(1, 'Thor', 'Cachorro', 'Labrador', 'Amarelo', '2020-06-15 00:00:00', 'Macho'),
(2, 'Mia', 'Gato', 'Siamês', 'Branco', '2021-02-10 00:00:00', 'Fêmea'),
(3, 'Rex', 'Cachorro', 'Pastor Alemão', 'Preto e Marrom', '2019-11-20 00:00:00', 'Macho'),
(4, 'Nina', 'Gato', 'Persa', 'Cinza', '2022-05-01 00:00:00', 'Fêmea'),
(5, 'Bobby', 'Cachorro', 'Poodle', 'Branco', '2018-09-30 00:00:00', 'Macho'),
(6, 'Luna', 'Gato', 'Angorá', 'Preto', '2020-12-12 00:00:00', 'Fêmea'),
(7, 'Fred', 'Pássaro', 'Calopsita', 'Amarelo e Cinza', '2021-07-07 00:00:00', 'Macho'),
(8, 'Mel', 'Cachorro', 'Shih Tzu', 'Marrom e Branco', '2019-03-25 00:00:00', 'Fêmea'),
(9, 'Pingo', 'Coelho', 'Anão', 'Branco', '2022-08-17 00:00:00', 'Macho'),
(10, 'Sol', 'Gato', 'SRD', 'Laranja', '2023-01-05 00:00:00', 'Fêmea');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`NumRegistro`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pet`
--
ALTER TABLE `pet`
  MODIFY `NumRegistro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
