-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 01/07/2025 às 01:13
-- Versão do servidor: 9.1.0
-- Versão do PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro`
--
CREATE DATABASE IF NOT EXISTS `cadastro` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `cadastro`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `assiste`
--

DROP TABLE IF EXISTS `assiste`;
CREATE TABLE IF NOT EXISTS `assiste` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `idgaf` int DEFAULT NULL,
  `idc` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idgaf` (`idgaf`),
  KEY `idc` (`idc`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `assiste`
--

INSERT INTO `assiste` (`id`, `data`, `idgaf`, `idc`) VALUES
(1, '2025-02-13', 1, 3),
(2, '2018-09-05', 2, 5),
(3, '2017-02-17', 3, 4),
(4, '2025-01-13', 4, 1),
(5, '2018-04-04', 5, 3),
(6, '2017-05-12', 6, 5),
(7, '2017-05-12', 1, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `idcurso` int NOT NULL,
  `nome` varchar(30) NOT NULL,
  `descricao` text,
  `carga` int UNSIGNED DEFAULT NULL,
  `totalaulas` int UNSIGNED DEFAULT NULL,
  `ano` year DEFAULT '2025',
  PRIMARY KEY (`idcurso`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`idcurso`, `nome`, `descricao`, `carga`, `totalaulas`, `ano`) VALUES
(1, 'HTML5', 'Curso de HTML5', 40, 37, '2014'),
(2, 'Algoritmos', 'Logica de Programação', 20, 15, '2014'),
(3, 'Photoshop', 'Dicas de Photoshop CC', 10, 8, '2014'),
(4, 'PHP', 'PHP Avançado', 80, 40, '2019'),
(5, 'Excel', 'Excel Básico', 60, 30, '2017'),
(6, 'Powe BI', 'Noções Básicas', 80, 45, '2018'),
(7, 'Word', 'Curso Completo de WORD', 40, 30, '2016');

-- --------------------------------------------------------

--
-- Estrutura para tabela `gafanhotos`
--

DROP TABLE IF EXISTS `gafanhotos`;
CREATE TABLE IF NOT EXISTS `gafanhotos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `prof` varchar(20) NOT NULL DEFAULT '',
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `nacionalidade` varchar(20) DEFAULT 'Brasil',
  `curso_pref` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `curso_pref` (`curso_pref`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `gafanhotos`
--

INSERT INTO `gafanhotos` (`id`, `nome`, `prof`, `nascimento`, `sexo`, `peso`, `altura`, `nacionalidade`, `curso_pref`) VALUES
(1, 'Karen', 'Programadora', '2001-01-19', 'F', 50.00, 1.50, 'Brasil', 4),
(2, 'Kethelen', 'Designer', '2006-07-14', 'F', 42.00, 1.48, 'Brasil', 5),
(3, 'Micaela', 'Ginasta', '2002-10-02', 'F', 60.00, 1.65, 'Portugal', 4),
(4, 'Joselina', 'Empresaria', '1979-03-02', 'F', 50.00, 1.49, 'Brasil', 7),
(5, 'Joel Silva', 'Engenheiro', '1970-12-09', 'M', 80.00, 1.76, 'Suécia', 2),
(6, 'Helio', 'Programador', '1988-04-04', 'M', 70.30, 1.80, 'Cazaquistão', 1),
(7, 'Felicia', 'Arquiteta', '1999-09-15', 'F', 45.00, 1.60, 'França', 6),
(8, 'George Silva', 'Programador', '2000-05-08', 'M', 75.50, 1.72, 'EUA', 3),
(9, 'Joelma', 'Fisioterapeuta', '1999-03-12', 'F', 53.00, 1.60, 'Brasil', 2),
(10, 'Jessica', 'Fisioculturista', '1997-05-09', 'F', 50.00, 1.65, 'Brasil', 5),
(11, 'Maicon', 'Dermatologista', '1980-07-11', 'M', 85.00, 1.70, 'Brasil', 4),
(12, 'João', 'Contador', '1996-12-02', 'M', 68.00, 1.71, 'Brasil', 7),
(13, 'Fabian', 'Programador', '1999-01-23', 'M', 73.50, 1.85, 'Brasil', 0),
(14, 'Maria', 'Policial', '1980-07-11', 'F', 70.00, 1.90, 'Brasil', 6),
(15, 'Marta', 'Agente de Transito', '1996-11-02', 'F', 88.00, 1.91, 'Brasil', 0),
(16, 'Taina', 'Gerente', '1998-08-25', 'F', 90.80, 1.95, 'Brasil', 2),
(17, 'Jose', 'Farmaceutico', '1990-08-11', 'M', 90.00, 1.80, 'Portugal', 3),
(18, 'Meli', 'Policial', '1998-09-02', 'F', 88.00, 1.91, 'EUA', 4),
(19, 'Gabriel', 'Bombeiro', '1989-08-25', 'M', 78.80, 1.95, 'França', 5),
(20, 'Tadeu', 'Eletricista', '1990-08-09', 'M', 78.00, 1.60, 'Portugal', 6),
(21, 'Catia', 'Diretora', '1998-09-02', 'F', 88.00, 1.91, 'EUA', 1),
(22, 'Bruno', 'TI', '1989-08-25', 'M', 78.80, 1.95, 'França', 2),
(23, 'Melqui', 'Auditor', '1998-09-02', 'M', 88.00, 1.91, 'EUA', 3),
(24, 'Felipe Amadi', 'Gestor de Finanças', '1990-08-09', 'M', 78.00, 1.60, 'Portugal', 4),
(25, 'Isabela', 'PF', '1998-09-02', 'F', 88.00, 1.91, 'EUA', 5),
(26, 'Ana Julia', 'Dentista', '1989-08-25', 'F', 78.80, 1.65, 'França', 3),
(27, 'Fernando', 'Medico', '1998-09-02', 'M', 88.00, 1.91, 'EUA', 7);

-- --------------------------------------------------------

--
-- Estrutura para tabela `item_pedido`
--

DROP TABLE IF EXISTS `item_pedido`;
CREATE TABLE IF NOT EXISTS `item_pedido` (
  `id_item` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int DEFAULT NULL,
  `id_produto` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `preco_unitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_item`),
  KEY `id_pedido` (`id_pedido`),
  KEY `id_produto` (`id_produto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
--
-- Banco de dados: `ecopuro`
--
CREATE DATABASE IF NOT EXISTS `ecopuro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `ecopuro`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `email`, `telefone`, `endereco`) VALUES
(1, 'Carla Menezes', 'carla.menezes@gmail.com', '(11) 99999-1234', 'Rua das Flores, 120, São Paulo - SP'),
(2, 'Eduardo Ramos', 'edu.ramos@hotmail.com', '(21) 98888-5678', 'Av. Verde Esperança, 55, Rio de Janeiro - RJ'),
(3, 'Larissa Gomes', 'larissa.g@gmail.com', '(41) 97777-4321', 'Rua do Sol, 200, Curitiba - PR'),
(4, 'Karen Souza', 'karensouza19012001@gmail.com', '31999625605', 'Rua Sebastião Antunes Da Silva, Casa'),
(5, 'Ursula Maria', 'UrMaria.m@M.com.br', '31998776655', 'Rua Santo Andre 69 Palmeiras BH'),
(6, 'Sheila Carvalho', 'Sheila90@hotmail.com', '21988778899', 'Rua Tomas 89, Jardim Louis MG'),
(18, 'Emma', 'emma.s@hotmail.com', '21988770099', 'Av São Gonçalo 23, RJ'),
(17, 'Isis Sophia', 'isis.sophi@sophi.com', '31999999999', 'Rua Sebastião Antunes da Silva, 779, casa Ponto de referência: Bater no portão ou ligar nos números para contato'),
(19, 'Joel Alaide', 'joel.alaide@hotmail.com', '(31) 99934-6565', 'Av alamedas, 65 Ipiranga'),
(20, 'Michele Bianca De Souza Pinheiro', 'michelecaique03@gmail.com', '31988641950', 'Rua Sebastião Antunes da Silva, 779'),
(21, 'elza', 'elza@maria.com', '31988778899', 'av dina 98, mg'),
(22, 'bianca ', 'bianca.b@outlook.com', '2135333344', 'rua julio marcedo 65, alvorada RJ'),
(23, 'Leticia', 'Le76@leticia.com.br', '11988773322', 'Rua Paulista 56, SP ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
CREATE TABLE IF NOT EXISTS `fornecedor` (
  `id_fornecedor` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `contato` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id_fornecedor`, `nome`, `contato`, `email`) VALUES
(1, 'Verde Limpo LTDA', 'Maria Silva', 'contato@verdelimpo.com'),
(2, 'EcoSoluções BR', 'João Oliveira', 'joao@ecosolucoes.com'),
(3, 'Natureza Pura Produtos', 'Ana Costa', 'ana@naturezapura.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela `item_pedido`
--

DROP TABLE IF EXISTS `item_pedido`;
CREATE TABLE IF NOT EXISTS `item_pedido` (
  `id_item` int NOT NULL AUTO_INCREMENT,
  `id_pedido` int DEFAULT NULL,
  `id_produto` int DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `preco_unitario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_item`),
  KEY `id_pedido` (`id_pedido`),
  KEY `id_produto` (`id_produto`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `item_pedido`
--

INSERT INTO `item_pedido` (`id_item`, `id_pedido`, `id_produto`, `quantidade`, `preco_unitario`) VALUES
(1, 1, 1, 3, 4.50),
(2, 1, 2, 1, 15.00),
(3, 2, 3, 2, 9.90),
(4, 3, 1, 2, 4.50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `data_pedido` date DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `id_cliente` (`id_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `id_cliente`, `data_pedido`, `valor_total`) VALUES
(1, 1, '2025-06-10', 28.50),
(2, 2, '2025-06-11', 19.80),
(3, 1, '2025-07-01', 20.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `id_produto` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `composicao` text,
  `quantidade_estoque` int DEFAULT NULL,
  `biodegradavel` tinyint(1) DEFAULT NULL,
  `id_fornecedor` int DEFAULT NULL,
  PRIMARY KEY (`id_produto`),
  KEY `id_fornecedor` (`id_fornecedor`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `produto`
--

INSERT INTO `produto` (`id_produto`, `nome`, `categoria`, `preco`, `composicao`, `quantidade_estoque`, `biodegradavel`, `id_fornecedor`) VALUES
(1, 'Pedra Efervescente', 'Limpeza Geral', 4.50, 'Ácido cítrico, bicarbonato, óleos essenciais', 100, 1, 1),
(2, 'Aromatizador de Ambiente Frutal', 'Ambiente', 15.00, 'Óleo essencial frutal, álcool de cereais', 60, 1, 2),
(3, 'Aromatizador de Ambiente Lavanda', 'Ambiente', 15.00, 'Óleo essencial de lavanda, álcool de cereais', 60, 1, 3),
(4, 'Desengordurante em Pó Natural', 'Cozinha', 9.90, 'Carbonato de sódio, bicarbonato, óleo essencial de limão', 80, 1, 4);
--
-- Banco de dados: `exemplo`
--
CREATE DATABASE IF NOT EXISTS `exemplo` DEFAULT CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci;
USE `exemplo`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `amigos`
--

DROP TABLE IF EXISTS `amigos`;
CREATE TABLE IF NOT EXISTS `amigos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) NOT NULL,
  `sexo` enum('M','F') NOT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Despejando dados para a tabela `amigos`
--

INSERT INTO `amigos` (`id`, `nome`, `sexo`, `telefone`) VALUES
(1, 'Maria', 'F', '2222-3333'),
(2, 'João', 'M', '2323-3434'),
(3, 'Jose', 'M', '2323-3424');
--
-- Banco de dados: `uniasselvi`
--
CREATE DATABASE IF NOT EXISTS `uniasselvi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `uniasselvi`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

DROP TABLE IF EXISTS `alunos`;
CREATE TABLE IF NOT EXISTS `alunos` (
  `id_aluno` int NOT NULL AUTO_INCREMENT,
  `nome_aluno` varchar(100) NOT NULL,
  `email_aluno` varchar(100) DEFAULT NULL,
  `id_curso` int DEFAULT NULL,
  PRIMARY KEY (`id_aluno`),
  KEY `id_curso` (`id_curso`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id_aluno`, `nome_aluno`, `email_aluno`, `id_curso`) VALUES
(1, 'Maria Oliveira', 'maria@uniasselvi.edu.br', 1),
(2, 'Lucas Martins', 'lucas@uniasselvi.edu.br', 2),
(3, 'Juliana Costa', 'juliana@uniasselvi.edu.br', 3),
(4, 'Pedro Henrique', 'pedro@uniasselvi.edu.br', 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(100) NOT NULL,
  `id_turno` int DEFAULT NULL,
  PRIMARY KEY (`id_curso`),
  KEY `id_turno` (`id_turno`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nome_curso`, `id_turno`) VALUES
(1, 'Engenharia de Software', 1),
(2, 'Administração', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplinas`
--

DROP TABLE IF EXISTS `disciplinas`;
CREATE TABLE IF NOT EXISTS `disciplinas` (
  `id_disciplina` int NOT NULL AUTO_INCREMENT,
  `nome_disciplina` varchar(100) NOT NULL,
  `id_curso` int DEFAULT NULL,
  `id_professor` int DEFAULT NULL,
  PRIMARY KEY (`id_disciplina`),
  KEY `id_curso` (`id_curso`),
  KEY `id_professor` (`id_professor`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id_disciplina`, `nome_disciplina`, `id_curso`, `id_professor`) VALUES
(1, 'Banco de Dados I', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

DROP TABLE IF EXISTS `professores`;
CREATE TABLE IF NOT EXISTS `professores` (
  `id_professor` int NOT NULL AUTO_INCREMENT,
  `nome_professor` varchar(100) NOT NULL,
  `email_professor` varchar(100) DEFAULT NULL,
  `especialidade` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_professor`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`id_professor`, `nome_professor`, `email_professor`, `especialidade`) VALUES
(1, 'João Silva', 'joao@uniasselvi.edu.br', 'Banco de Dados');

-- --------------------------------------------------------

--
-- Estrutura para tabela `turno`
--

DROP TABLE IF EXISTS `turno`;
CREATE TABLE IF NOT EXISTS `turno` (
  `id_turno` int NOT NULL AUTO_INCREMENT,
  `nome_turno` varchar(50) NOT NULL,
  PRIMARY KEY (`id_turno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw_alunos_curso_turno`
-- (Veja abaixo para a visão atual)
--
DROP VIEW IF EXISTS `vw_alunos_curso_turno`;
CREATE TABLE IF NOT EXISTS `vw_alunos_curso_turno` (
`nome_aluno` varchar(100)
,`nome_curso` varchar(100)
,`nome_turno` varchar(50)
);

-- --------------------------------------------------------

--
-- Estrutura para view `vw_alunos_curso_turno`
--
DROP TABLE IF EXISTS `vw_alunos_curso_turno`;

DROP VIEW IF EXISTS `vw_alunos_curso_turno`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_alunos_curso_turno`  AS SELECT `a`.`nome_aluno` AS `nome_aluno`, `c`.`nome_curso` AS `nome_curso`, `t`.`nome_turno` AS `nome_turno` FROM ((`alunos` `a` join `cursos` `c` on((`a`.`id_curso` = `c`.`id_curso`))) join `turno` `t` on((`c`.`id_turno` = `t`.`id_turno`))) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
