-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Dez-2023 às 20:53
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_cadastroautopecas`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadpecas`
--

CREATE TABLE `cadpecas` (
  `id` int(11) NOT NULL,
  `Descricao` varchar(255) DEFAULT NULL,
  `CodBarra` varchar(15) DEFAULT NULL,
  `Valor_Unit` decimal(10,4) DEFAULT NULL,
  `Valor_Cust` decimal(10,4) DEFAULT NULL,
  `QT_Estoque` decimal(10,4) DEFAULT NULL,
  `id_Fabricante` int(11) NOT NULL,
  `foto` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadveiculo`
--

CREATE TABLE `cadveiculo` (
  `id` int(11) NOT NULL,
  `Descricao` varchar(60) DEFAULT NULL,
  `Modelo` varchar(60) DEFAULT NULL,
  `Ano` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_fabricante`
--

CREATE TABLE `cad_fabricante` (
  `id` int(11) NOT NULL,
  `Razao_Social` varchar(100) DEFAULT NULL,
  `CNPJ_CPF` char(20) NOT NULL,
  `Desk_Marca` varchar(100) DEFAULT NULL,
  `Tipo_Pessoa` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cad_pecamonte`
--

CREATE TABLE `cad_pecamonte` (
  `id` int(11) NOT NULL,
  `id_Montadora` int(11) DEFAULT NULL,
  `id_Peca` int(11) DEFAULT NULL,
  `id_Empresa` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `Razao_Social` varchar(60) DEFAULT NULL,
  `CNPJ` char(20) DEFAULT NULL,
  `Endereco` varchar(100) DEFAULT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `Bairro` varchar(100) DEFAULT NULL,
  `Cep` varchar(10) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lote_estoque`
--

CREATE TABLE `lote_estoque` (
  `id` int(11) NOT NULL,
  `Lote` varchar(100) NOT NULL,
  `id_Peca` int(11) NOT NULL,
  `Quantidade` decimal(10,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_system`
--

CREATE TABLE `user_system` (
  `id` int(11) NOT NULL,
  `Nome` varchar(100) DEFAULT NULL,
  `Tipo_Pessoa` char(1) NOT NULL,
  `CNPJ_CPF` char(20) DEFAULT NULL,
  `Endereco` varchar(100) DEFAULT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `Bairro` varchar(100) DEFAULT NULL,
  `Cep` varchar(10) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Senha` char(50) DEFAULT NULL,
  `foto` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadpecas`
--
ALTER TABLE `cadpecas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_id` (`id`);

--
-- Índices para tabela `cadveiculo`
--
ALTER TABLE `cadveiculo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_id` (`id`);

--
-- Índices para tabela `cad_fabricante`
--
ALTER TABLE `cad_fabricante`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cad_pecamonte`
--
ALTER TABLE `cad_pecamonte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_id` (`id`);

--
-- Índices para tabela `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_id` (`id`);

--
-- Índices para tabela `lote_estoque`
--
ALTER TABLE `lote_estoque`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_id` (`id`);

--
-- Índices para tabela `user_system`
--
ALTER TABLE `user_system`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_id` (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadpecas`
--
ALTER TABLE `cadpecas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `cadveiculo`
--
ALTER TABLE `cadveiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cad_fabricante`
--
ALTER TABLE `cad_fabricante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cad_pecamonte`
--
ALTER TABLE `cad_pecamonte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `lote_estoque`
--
ALTER TABLE `lote_estoque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user_system`
--
ALTER TABLE `user_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
