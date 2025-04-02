-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/04/2025 às 02:51
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
-- Banco de dados: `exercbd02`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `departamento`
--

CREATE TABLE `departamento` (
  `CodDepto` int(11) NOT NULL,
  `NomeDepto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `departamento`
--

INSERT INTO `departamento` (`CodDepto`, `NomeDepto`) VALUES
(1, 'Recursos Humanos'),
(2, 'Financeiro'),
(3, 'TI'),
(4, 'Marketing'),
(5, 'Vendas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `CodFunc` int(11) NOT NULL,
  `NomeFunc` varchar(50) DEFAULT NULL,
  `CodDepto` int(11) DEFAULT NULL,
  `Ramal` int(11) DEFAULT NULL,
  `Salario` double DEFAULT NULL,
  `DataAdmissao` datetime DEFAULT NULL,
  `DataCadastro` datetime DEFAULT current_timestamp(),
  `Sexo` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`CodFunc`, `NomeFunc`, `CodDepto`, `Ramal`, `Salario`, `DataAdmissao`, `DataCadastro`, `Sexo`) VALUES
(1, 'Carlos Silva', 1, 101, 3500, '2020-05-10 00:00:00', '2025-04-01 21:50:37', 'M'),
(2, 'Ana Souza', 2, 102, 4200.5, '2019-08-22 00:00:00', '2025-04-01 21:50:37', 'F'),
(3, 'Pedro Lima', 3, 103, 5000, '2018-04-15 00:00:00', '2025-04-01 21:50:37', 'M'),
(4, 'Mariana Costa', 4, 104, 3700, '2021-07-30 00:00:00', '2025-04-01 21:50:37', 'F'),
(5, 'Lucas Mendes', 5, 105, 3900.75, '2022-01-10 00:00:00', '2025-04-01 21:50:37', 'M'),
(6, 'Juliana Alves', 1, 106, 3100, '2020-12-05 00:00:00', '2025-04-01 21:50:37', 'F'),
(7, 'Fernando Rocha', 2, 107, 4500, '2017-09-18 00:00:00', '2025-04-01 21:50:37', 'M'),
(8, 'Beatriz Farias', 3, 108, 5200, '2016-11-20 00:00:00', '2025-04-01 21:50:37', 'F'),
(9, 'Ricardo Santos', 4, 109, 3300, '2019-06-25 00:00:00', '2025-04-01 21:50:37', 'M'),
(10, 'Gabriela Nunes', 5, 110, 4100.5, '2023-03-12 00:00:00', '2025-04-01 21:50:37', 'F');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`CodDepto`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`CodFunc`),
  ADD KEY `CodDepto` (`CodDepto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `departamento`
--
ALTER TABLE `departamento`
  MODIFY `CodDepto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `CodFunc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`CodDepto`) REFERENCES `departamento` (`CodDepto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
