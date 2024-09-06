-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07/09/2024 às 01:21
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
-- Banco de dados: `universidade`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `departamento`
--

CREATE TABLE `departamento` (
  `nome` varchar(50) NOT NULL,
  `sigla` varchar(3) NOT NULL,
  `codigo` int(11) NOT NULL,
  `coordenador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `departamento`
--

INSERT INTO `departamento` (`nome`, `sigla`, `codigo`, `coordenador`) VALUES
('Tec. Telemática', 'DTT', 121, 121031),
('Tec. Consturção de Edificios', 'DCE', 122, 122047),
('Eng. Computação', 'DEC', 125, 125331);

-- --------------------------------------------------------

--
-- Estrutura para tabela `dependente`
--

CREATE TABLE `dependente` (
  `nome` varchar(50) NOT NULL,
  `datanasc` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `RG` int(11) NOT NULL,
  `matricProf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dependente`
--

INSERT INTO `dependente` (`nome`, `datanasc`, `sexo`, `RG`, `matricProf`) VALUES
('Maria Elena', '2002-03-25', 'F', 9632145, 121003),
('Julia', '1998-04-10', 'F', 8475963, 121031),
('Ana', '2000-11-27', 'F', 7856491, 122045),
('Luiz', '1994-08-16', 'M', 3145786, 125131),
('Marcos', '2010-06-12', 'M', 5123478, 125331),
('Marta', '1996-07-22', 'F', 4258786, 125335);

-- --------------------------------------------------------

--
-- Estrutura para tabela `email`
--

CREATE TABLE `email` (
  `matricProf` int(11) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `email`
--

INSERT INTO `email` (`matricProf`, `email`) VALUES
(121003, 'pedro.perreia@ifpb.edu.br'),
(121031, 'jose.maria@ifpb.edu.br'),
(122045, 'bento.diniz@ifpb.edu.br'),
(122047, 'ana.araujo@ifpb.edu.br'),
(125131, 'maria.machado@ifpb.edu.br'),
(125331, 'joana.campos@ifpb.edu.br'),
(125335, 'joao.campos@ifpb.edu.br');

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `nome` varchar(50) NOT NULL,
  `sNome` varchar(50) NOT NULL,
  `matricula` int(11) NOT NULL,
  `datanasc` date NOT NULL,
  `sexo` char(1) NOT NULL,
  `salario` int(11) NOT NULL,
  `matric_represent_area` int(11) DEFAULT NULL,
  `depto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professor`
--

INSERT INTO `professor` (`nome`, `sNome`, `matricula`, `datanasc`, `sexo`, `salario`, `matric_represent_area`, `depto`) VALUES
('Pedro', 'Pereira da Silva', 121003, '1982-02-25', 'M', 4000, NULL, 121),
('José Maria', 'Campos', 121031, '1978-04-10', 'M', 7000, 121003, 121),
('Bento', 'Diniz Costa', 122045, '1980-11-27', 'M', 4000, NULL, 122),
('Ana Clara', 'Araújo Santos', 122047, '1994-12-30', 'F', 7200, 122045, 122),
('Henrique', 'Cunha', 123001, '1982-08-20', 'M', 9800, 125332, 125),
('Maria Luiza', 'Machado', 125131, '1974-08-16', 'F', 6800, 125332, 125),
('Joana Maria', 'Campos Pereira', 125331, '1990-06-12', 'F', 4500, NULL, 125),
('João Carlos', 'Matos Cavalcanti', 125335, '1976-07-22', 'M', 3700, 125332, 125);

-- --------------------------------------------------------

--
-- Estrutura para tabela `projeto`
--

CREATE TABLE `projeto` (
  `nome` varchar(50) NOT NULL,
  `codigo` int(11) NOT NULL,
  `depto` int(11) DEFAULT NULL,
  `duracao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `projeto`
--

INSERT INTO `projeto` (`nome`, `codigo`, `depto`, `duracao`) VALUES
('Sistema de Comunicação', 1234, 121, 100),
('Automação Industrial', 2345, 125, 120),
('Desenvolvimento de Software', 3456, 125, 120),
('Gerenciamento de Projetos', 4321, 125, 120),
('Projeto de Casa', 4789, 122, 80),
('Arquitetura Sustentável', 5432, 122, 80),
('Controle de Qualidade', 5678, 125, 120),
('Manutenção Predial', 6543, 122, 80),
('Redes de Computadores', 6789, 121, 100),
('Construção Civil', 7890, 122, 80),
('Aplicações de Big Data', 7894, 125, 120),
('Sistemas Distribuídos', 8765, 121, 100),
('Reforma Predial', 9876, 122, 80);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `professor_matricula_fk` (`coordenador`);

--
-- Índices de tabela `dependente`
--
ALTER TABLE `dependente`
  ADD PRIMARY KEY (`matricProf`,`RG`);

--
-- Índices de tabela `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`matricProf`,`email`);

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`matricula`);

--
-- Índices de tabela `projeto`
--
ALTER TABLE `projeto`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `departamento_codigo_fk` (`depto`);

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `professor_matricula_fk` FOREIGN KEY (`coordenador`) REFERENCES `professor` (`matricula`);

--
-- Restrições para tabelas `projeto`
--
ALTER TABLE `projeto`
  ADD CONSTRAINT `departamento_codigo_fk` FOREIGN KEY (`depto`) REFERENCES `departamento` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
