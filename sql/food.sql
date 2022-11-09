-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Nov-2022 às 20:15
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `food`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairros`
--

CREATE TABLE `bairros` (
  `id` int(5) UNSIGNED NOT NULL,
  `nome` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `cidade` varchar(20) NOT NULL DEFAULT 'Curitiba',
  `valor_entrega` decimal(10,2) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `criado_em` datetime DEFAULT NULL,
  `atualizado_em` datetime DEFAULT NULL,
  `deletado_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `bairros`
--

INSERT INTO `bairros` (`id`, `nome`, `slug`, `cidade`, `valor_entrega`, `ativo`, `criado_em`, `atualizado_em`, `deletado_em`) VALUES
(1, 'Água Verde', 'agua-verde', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-11-06 10:03:09', NULL),
(2, 'Ahú', 'ahu', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(3, 'Centro', 'centro', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(4, 'Alto da Glória', 'alto-da-gloria', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(5, 'Alto da Rua XV', 'alto-da-rua-xv', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(6, 'Bacacheri', 'bacacheri', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(7, 'Portão', 'portao', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(8, 'Cristo Rei', 'cristo-rei', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(9, 'Bairro Alto', 'bairro-alto', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(10, 'Batel', 'batel', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(11, 'Bigorrilho', 'bigorrilho', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(12, 'Boa Vista', 'boa-vista', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(13, 'Bom Retiro', 'bom-retiro', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(14, 'Cabral', 'cabral', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(15, 'Cajuru', 'cajuru', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(16, 'Capão da Imbuia', 'capao-da-embuia', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(17, 'Centro Cívico', 'centro-civico', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(18, 'Guabirotuba', 'guabirotuba', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(19, 'Hugo Lange', 'hugo-langue', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(20, 'Jardim Botânico', 'jardim-botanico', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(21, 'Jardim das Américas', 'jardim-das-americas', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(22, 'Jardim Social', 'jardim-social', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(23, 'Juvevê', 'juveve', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(24, 'Mercês', 'merces', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(25, 'Parolin', 'parolim', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(26, 'Prado Velho', '', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(27, 'Rebouças', '', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(28, 'São Francisco', 'sao-francisco', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(29, 'São Lourenço', '', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(30, 'Tarumã', '', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(31, 'Uberaba', '', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(32, 'Vila Izabel', '', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL),
(34, 'Cascatinha', '', 'Curitiba', '15.00', 1, '2022-10-27 02:30:50', '2022-10-27 02:30:50', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(5) UNSIGNED NOT NULL,
  `nome` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `criado_em` datetime DEFAULT NULL,
  `atualizado_em` datetime DEFAULT NULL,
  `deletado_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `slug`, `ativo`, `criado_em`, `atualizado_em`, `deletado_em`) VALUES
(11, 'Cafés', 'cafes', 1, '2022-10-28 12:15:40', '2022-10-28 12:15:40', NULL),
(12, 'Refrigerantes', 'refrigerantes', 1, '2022-10-28 12:16:54', '2022-10-28 12:17:11', NULL),
(13, 'Pães', 'paes', 1, '2022-10-28 12:19:32', '2022-10-28 12:19:32', NULL),
(14, 'Bolos', 'bolos', 1, '2022-10-28 12:19:45', '2022-10-28 12:19:45', NULL),
(15, 'Sobremesas', 'sobremesas', 1, '2022-10-28 12:20:25', '2022-10-28 12:21:20', NULL),
(16, 'Salgados', 'salgados', 1, '2022-10-28 12:21:00', '2022-10-28 12:21:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `entregadores`
--

CREATE TABLE `entregadores` (
  `id` int(5) UNSIGNED NOT NULL,
  `nome` varchar(128) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `cnh` varchar(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(240) NOT NULL,
  `imagem` varchar(240) DEFAULT NULL,
  `veiculo` varchar(240) NOT NULL,
  `placa` varchar(20) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `criado_em` datetime DEFAULT NULL,
  `atualizado_em` datetime DEFAULT NULL,
  `deletado_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `entregadores`
--

INSERT INTO `entregadores` (`id`, `nome`, `cpf`, `cnh`, `email`, `telefone`, `endereco`, `imagem`, `veiculo`, `placa`, `ativo`, `criado_em`, `atualizado_em`, `deletado_em`) VALUES
(6, 'Maiick', '681.010.712-61', '12345678901', 'maiick@gmail.com', '(45) 99999-9999', 'Rua 1, Cidade Industrial', '1667739526_f962063697f261caeff0.webp', 'Bros 160', 'OCG-2196', 1, '2022-10-28 12:27:35', '2022-11-06 09:58:46', NULL),
(7, 'Mylena', '855.114.110-43', '08765432117', 'my@gmail.com', '(45) 19999-9999', 'Rua 2, Cidade Industrial', '1667254030_caf4e99d2003b9931fa1.jpg', 'Moto Titan', 'ITU-8975', 1, '2022-10-28 12:30:28', '2022-10-31 19:07:10', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `expediente`
--

CREATE TABLE `expediente` (
  `id` int(5) UNSIGNED NOT NULL,
  `dia` int(5) NOT NULL,
  `dia_descricao` varchar(50) NOT NULL,
  `abertura` time DEFAULT NULL,
  `fechamento` time DEFAULT NULL,
  `situacao` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `expediente`
--

INSERT INTO `expediente` (`id`, `dia`, `dia_descricao`, `abertura`, `fechamento`, `situacao`) VALUES
(1, 0, 'Domingo', '06:00:00', '12:00:00', 1),
(2, 1, 'Segunda', '06:00:00', '19:00:00', 1),
(3, 2, 'Terça', '06:00:00', '19:00:00', 1),
(4, 3, 'Quarta', '06:00:00', '19:00:00', 1),
(5, 4, 'Quinta', '06:00:00', '19:00:00', 1),
(6, 5, 'Sexta', '06:00:00', '19:00:00', 1),
(7, 6, 'Sábado', '06:00:00', '14:00:00', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `extras`
--

CREATE TABLE `extras` (
  `id` int(5) UNSIGNED NOT NULL,
  `nome` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `descricao` text NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `criado_em` datetime DEFAULT NULL,
  `atualizado_em` datetime DEFAULT NULL,
  `deletado_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `extras`
--

INSERT INTO `extras` (`id`, `nome`, `slug`, `preco`, `descricao`, `ativo`, `criado_em`, `atualizado_em`, `deletado_em`) VALUES
(13, '10g Açúcar ', '10g-acucar', '0.00', '10g de Açúcar Refinado', 1, '2022-10-30 10:55:33', '2022-10-31 19:20:13', NULL),
(14, 'Morangos', 'morangos', '5.00', '150g de Morangos no recheio', 1, '2022-10-31 19:30:10', '2022-10-31 19:30:10', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `formas_pagamento`
--

CREATE TABLE `formas_pagamento` (
  `id` int(5) UNSIGNED NOT NULL,
  `nome` varchar(128) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `criado_em` datetime DEFAULT NULL,
  `atualizado_em` datetime DEFAULT NULL,
  `deletado_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `formas_pagamento`
--

INSERT INTO `formas_pagamento` (`id`, `nome`, `ativo`, `criado_em`, `atualizado_em`, `deletado_em`) VALUES
(1, 'Dinheiro', 1, '2022-10-27 00:53:29', '2022-10-27 00:53:29', NULL),
(2, 'Cartão de crédito', 1, '2022-10-27 00:53:29', '2022-10-27 00:53:29', NULL),
(3, 'Cartão de débito', 1, '2022-10-27 00:55:29', '2022-10-27 00:55:29', NULL),
(4, 'Cheque', 1, '2022-11-06 09:55:38', '2022-11-06 09:55:38', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `medidas`
--

CREATE TABLE `medidas` (
  `id` int(5) UNSIGNED NOT NULL,
  `nome` varchar(128) NOT NULL,
  `descricao` text NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `criado_em` datetime DEFAULT NULL,
  `atualizado_em` datetime DEFAULT NULL,
  `deletado_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `medidas`
--

INSERT INTO `medidas` (`id`, `nome`, `descricao`, `ativo`, `criado_em`, `atualizado_em`, `deletado_em`) VALUES
(28, 'Grande (10 Pedaços)', 'Grande (10 Pedaços)', 1, '2022-10-30 10:09:47', '2022-10-30 10:09:47', NULL),
(29, 'Pequeno (6 Pedaços)', 'Pequeno (6 Pedaços)', 1, '2022-10-30 10:10:41', '2022-10-30 10:10:41', NULL),
(30, 'Família (12 Pedaços)', 'Família (12 Pedaços)', 1, '2022-10-30 10:11:09', '2022-10-30 10:11:09', NULL),
(31, '1,0 kg ( 10 unidades)', '1,0 kg ( 10 unidades)', 1, '2022-10-30 10:11:51', '2022-10-30 10:12:40', NULL),
(32, '0,5 kg ( 5 unidades)', '0,5 kg ( 5 unidades)', 1, '2022-10-30 10:12:17', '2022-10-30 10:12:29', NULL),
(33, '1,5 kg ( 15 unidades)', '1,5 kg ( 15 unidades)', 1, '2022-10-30 10:12:59', '2022-10-30 10:12:59', NULL),
(34, 'Pet de 2 Litros', 'Pet de 2 Litros', 1, '2022-10-30 10:13:33', '2022-10-30 10:13:33', NULL),
(35, 'Lata 350 ml', 'Lata 350 ml', 1, '2022-10-30 10:13:48', '2022-10-30 10:13:48', NULL),
(36, '1 Xicara 250 ml', '1 Xicara 250 ml', 1, '2022-10-30 10:18:05', '2022-10-30 10:18:05', NULL),
(37, 'Xicara 300 ml', 'Xicara 300 ml', 1, '2022-10-30 10:57:48', '2022-10-30 10:57:48', NULL),
(38, '10 Unidades', '10 Unidades', 1, '2022-10-30 11:04:31', '2022-10-30 11:04:31', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(4, '2021-03-03-065421', 'App\\Database\\Migrations\\CriaTabelaUsuarios', 'default', 'App', 1614920587, 1),
(6, '2021-03-13-045312', 'App\\Database\\Migrations\\CriaTabelaCategorias', 'default', 'App', 1615611469, 2),
(7, '2021-03-16-044348', 'App\\Database\\Migrations\\CriaTabelaExtras', 'default', 'App', 1615870030, 3),
(8, '2021-03-16-055529', 'App\\Database\\Migrations\\CriaTabelaMedidas', 'default', 'App', 1615874203, 4),
(9, '2021-03-17-045620', 'App\\Database\\Migrations\\CriaTabelaProdutos', 'default', 'App', 1615957597, 5),
(11, '2021-03-21-213535', 'App\\Database\\Migrations\\CriaTabelaProdutosExtras', 'default', 'App', 1616362767, 6),
(12, '2021-03-22-002515', 'App\\Database\\Migrations\\CriaTabelaProdutosEspecificacoes', 'default', 'App', 1616372902, 7),
(13, '2021-03-22-034102', 'App\\Database\\Migrations\\CriaTabelaFormasPagamento', 'default', 'App', 1616384637, 8),
(14, '2021-03-25-051027', 'App\\Database\\Migrations\\CriaTabelaEntregadores', 'default', 'App', 1616649362, 9),
(15, '2021-03-28-172355', 'App\\Database\\Migrations\\CriaTabelaBairros', 'default', 'App', 1616952440, 10),
(17, '2021-03-28-230446', 'App\\Database\\Migrations\\CriaTabelaExpediente', 'default', 'App', 1616973726, 11),
(18, '2021-04-18-224816', 'App\\Database\\Migrations\\CriaTabelaPedidos', 'default', 'App', 1618786606, 12),
(19, '2021-04-22-013359', 'App\\Database\\Migrations\\CriaTabelaPedidosProdutos', 'default', 'App', 1619055371, 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(5) UNSIGNED NOT NULL,
  `usuario_id` int(5) UNSIGNED NOT NULL,
  `entregador_id` int(5) UNSIGNED DEFAULT NULL,
  `codigo` varchar(10) NOT NULL,
  `forma_pagamento` varchar(50) NOT NULL,
  `situacao` tinyint(1) NOT NULL DEFAULT 0,
  `produtos` text NOT NULL,
  `valor_produtos` decimal(10,2) NOT NULL,
  `valor_entrega` decimal(10,2) NOT NULL,
  `valor_pedido` decimal(10,2) NOT NULL,
  `endereco_entrega` varchar(255) NOT NULL,
  `observacoes` varchar(255) NOT NULL,
  `criado_em` datetime DEFAULT NULL,
  `atualizado_em` datetime DEFAULT NULL,
  `deletado_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `usuario_id`, `entregador_id`, `codigo`, `forma_pagamento`, `situacao`, `produtos`, `valor_produtos`, `valor_entrega`, `valor_pedido`, `endereco_entrega`, `observacoes`, `criado_em`, `atualizado_em`, `deletado_em`) VALUES
(1, 15, 7, '29853601', 'Dinheiro', 2, 'a:2:{i:0;a:6:{s:2:\"id\";s:1:\"3\";s:4:\"nome\";s:28:\"Café Puro 1 copo de 250 ml \";s:4:\"slug\";s:26:\"cafe-puro-1-copo-de-250-ml\";s:5:\"preco\";s:4:\"2.00\";s:10:\"quantidade\";i:5;s:7:\"tamanho\";s:16:\"1 copo de 250 ml\";}i:1;a:6:{s:2:\"id\";s:1:\"2\";s:4:\"nome\";s:83:\"Pizza de quatro queijos Pizza Família (40cm – 12 fatias) Com extra Borda vulcão\";s:4:\"slug\";s:75:\"pizza-de-quatro-queijos-pizza-familia-40cm-12-fatias-com-extra-borda-vulcao\";s:5:\"preco\";s:5:\"63.00\";s:10:\"quantidade\";i:3;s:7:\"tamanho\";s:35:\"Pizza Família (40cm – 12 fatias)\";}}', '199.00', '15.00', '214.00', 'Bom Retiro - Curitiba - Rua Deputado Olívio Belich - CEP 80520-500 - PR - Número 155', 'Ponto de referência: ao lado do laboratorio - Número: 155. Você informou que precisa de troco para: R$ 200.00', '2022-10-28 14:02:20', '2022-10-28 17:43:22', NULL),
(2, 14, 7, '98316402', 'Dinheiro', 2, 'a:1:{i:0;a:5:{s:4:\"slug\";s:112:\"pizza-familia-40cm-12-fatias-metade-pizza-de-calabresa-metade-pizza-de-quatro-queijos-com-extra-borda-de-cheddar\";s:4:\"nome\";s:120:\"Pizza Família (40cm – 12 fatias) metade Pízza de Calabresa metade pizza-de-quatro-queijos Com extra Borda de cheddar\";s:5:\"preco\";s:5:\"62.00\";s:10:\"quantidade\";i:1;s:7:\"tamanho\";s:35:\"Pizza Família (40cm – 12 fatias)\";}}', '62.00', '15.00', '77.00', 'Bom Retiro - Curitiba - Rua Deputado Olívio Belich - CEP 80520-500 - PR - Número 155', 'Ponto de referência: a - Número: 155. Você informou que precisa de troco para: R$ 100.00', '2022-10-29 09:50:02', '2022-10-29 09:52:22', NULL),
(24, 15, 6, '97826301', 'Dinheiro', 1, 'a:1:{i:0;a:6:{s:2:\"id\";s:1:\"9\";s:4:\"nome\";s:39:\"Bolo de Chocolate Grande (10 Pedaços) \";s:4:\"slug\";s:35:\"bolo-de-chocolate-grande-10-pedacos\";s:5:\"preco\";s:5:\"15.00\";s:10:\"quantidade\";i:1;s:7:\"tamanho\";s:20:\"Grande (10 Pedaços)\";}}', '15.00', '15.00', '30.00', 'Bom Retiro - Curitiba - Rua Deputado Olívio Belich - CEP 80520-500 - PR - Número 155', 'Ponto de referência: ao lado do laboratorio - Número: 155. Você informou que precisa de troco para: R$ 50.00', '2022-10-30 11:49:34', '2022-10-30 11:51:02', NULL),
(25, 15, NULL, '50913786', 'Dinheiro', 3, 'a:1:{i:0;a:6:{s:2:\"id\";s:1:\"9\";s:4:\"nome\";s:39:\"Bolo de Chocolate Pequeno (6 Pedaços) \";s:4:\"slug\";s:35:\"bolo-de-chocolate-pequeno-6-pedacos\";s:5:\"preco\";s:5:\"10.00\";s:10:\"quantidade\";i:1;s:7:\"tamanho\";s:20:\"Pequeno (6 Pedaços)\";}}', '10.00', '15.00', '25.00', 'Bom Retiro - Curitiba - Rua Deputado Olívio Belich - CEP 80520-500 - PR - Número 155', 'Ponto de referência: ao lado do laboratorio - Número: 155. Você informou que precisa de troco para: R$ 50.00', '2022-10-31 18:59:17', '2022-10-31 19:14:01', '2022-10-31 19:14:01'),
(27, 15, NULL, '64509137', 'Cartão de débito', 0, 'a:1:{i:0;a:6:{s:2:\"id\";s:1:\"9\";s:4:\"nome\";s:39:\"Bolo de Chocolate Pequeno (6 Pedaços) \";s:4:\"slug\";s:35:\"bolo-de-chocolate-pequeno-6-pedacos\";s:5:\"preco\";s:5:\"10.00\";s:10:\"quantidade\";i:1;s:7:\"tamanho\";s:20:\"Pequeno (6 Pedaços)\";}}', '10.00', '15.00', '25.00', 'Bom Retiro - Curitiba - Rua Deputado Olívio Belich - CEP 80520-500 - PR - Número 155', 'Ponto de referência: ao lado do laboratorio - Número: 155', '2022-11-03 14:15:01', '2022-11-03 14:15:01', NULL),
(30, 36, 7, '16943520', 'Dinheiro', 1, 'a:1:{i:0;a:6:{s:2:\"id\";s:1:\"3\";s:4:\"nome\";s:50:\"Café Puro 1 Xicara 250 ml Com extra 10g Açúcar \";s:4:\"slug\";s:46:\"cafe-puro-1-xicara-250-ml-com-extra-10g-acucar\";s:5:\"preco\";s:4:\"1.50\";s:10:\"quantidade\";i:2;s:7:\"tamanho\";s:15:\"1 Xicara 250 ml\";}}', '3.00', '15.00', '18.00', 'Bom Retiro - Curitiba - Avenida Desembargador Hugo Simas - CEP 80520-250 - PR - Número 155', 'Ponto de referência: ao lado do laboratorio - Número: 155. Você informou que precisa de troco para: R$ 50.00', '2022-11-06 09:37:22', '2022-11-06 09:39:49', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos_produtos`
--

CREATE TABLE `pedidos_produtos` (
  `id` int(5) UNSIGNED NOT NULL,
  `pedido_id` int(5) UNSIGNED NOT NULL,
  `produto` varchar(128) NOT NULL,
  `quantidade` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedidos_produtos`
--

INSERT INTO `pedidos_produtos` (`id`, `pedido_id`, `produto`, `quantidade`) VALUES
(21, 1, 'Café Puro 1 copo de 250 ml ', 5),
(22, 1, 'Pizza de quatro queijos Pizza Família (40cm – 12 fatias) Com extra Borda vulcão', 3),
(23, 2, 'Pizza Família (40cm – 12 fatias) metade Pízza de Calabresa metade pizza-de-quatro-queijos Com extra Borda de cheddar', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(5) UNSIGNED NOT NULL,
  `categoria_id` int(5) UNSIGNED NOT NULL,
  `nome` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `ingredientes` text NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `imagem` varchar(200) DEFAULT NULL,
  `criado_em` datetime DEFAULT NULL,
  `atualizado_em` datetime DEFAULT NULL,
  `deletado_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `categoria_id`, `nome`, `slug`, `ingredientes`, `ativo`, `imagem`, `criado_em`, `atualizado_em`, `deletado_em`) VALUES
(1, 16, 'Pízza de Calabresa', 'pizza-de-calabresa', 'Pizza de calabresa deliciosa', 1, '1616989264_8a2eff5355c86d7f7afd.jpg', '2022-10-27 00:39:23', '2022-10-29 15:23:11', NULL),
(2, 16, 'Pizza de quatro queijos', 'pizza-de-quatro-queijos', 'Pizza deliciosa de quatros queijos.', 1, '1616990322_46ed011d2a2b1a40aa35.jpg', '2022-10-27 00:39:23', '2022-10-27 00:39:23', NULL),
(3, 11, 'Café Puro', 'cafe-puro', 'Café Puro 250ml', 1, '1666977485_55febaa7ae64aa1c0bf9.jpg', '2022-10-27 00:39:23', '2022-10-28 14:18:05', NULL),
(4, 12, 'Sprite', 'sprite', 'Sprite Limonada', 1, '1666989637_62da49c089ef8f1214e9.jpg', '2022-10-27 00:39:23', '2022-10-28 17:40:37', NULL),
(5, 11, 'Capuccino', 'capuccino', 'Um cappuccino corresponde aproximadamente a 150 ml de bebida, composta por um expresso (30 ml) + partes iguais de leite e creme de leite.', 1, '1666983836_e3a9367dd914be9e10b3.jpg', '2022-10-27 00:39:23', '2022-10-28 16:03:56', NULL),
(6, 11, 'Café Espresso Italiano', 'cafe-espresso-italiano', ' Esse é o café que os italianos entendem como o verdadeiro café. Eles chamam de espresso, por isso peça café espresso para não haver confusão. Ele é bem forte e vem numa xícara pequena de café.', 1, '1666984230_d27aa21eae7703497600.webp', '2022-10-27 00:39:23', '2022-10-28 16:10:30', NULL),
(7, 12, 'Coca-Cola', 'coca-cola', 'Coca-Cola sabor original contém água gaseificada, açúcar, extrato de noz de cola, cafeína, corante caramelo IV, acidulante ácido fosfórico e aroma natural. Cada 200ml contém 85kcal e 10mg de sódio.', 1, '1666984621_943be2029c5a7b1068de.webp', '2022-10-27 00:39:23', '2022-10-28 16:17:01', NULL),
(8, 13, 'Pão de Sal', 'pao-de-sal', '1/2 kg de farinha de trigo\r\n10 g de fermento para pão\r\n15 g de sal\r\n20 g de açúcar\r\n1 colher (sopa) de margarina\r\n', 1, '1666989684_83d5626b301679e71ee1.webp', '2022-10-27 00:39:23', '2022-10-28 17:41:24', NULL),
(9, 14, 'Bolo de Chocolate', 'bolo-de-chocolate', '1 xícara (chá) de leite\r\n2 xícara (chá) de farinha de trigo\r\n1 xícara (chá) de chocolate ou achocolatado\r\n1 xícara (chá) de açúcar\r\n2 ovos\r\n1 colher (sopa) de fermento em pó\r\nCOBERTURA\r\n1 colher (sopa) de margarina\r\n3 colheres (sopa) de chocolate ou achocolatado\r\n1 xícara (chá) de açúcar refinado.', 1, NULL, '2022-10-27 00:39:23', '2022-11-06 09:51:00', '2022-11-06 09:51:00'),
(10, 15, 'Docinho Brigadeiro', 'docinho-brigadeiro', 'chocolate com brigadeiro', 1, '1666989535_bc92ac47dff0963751bf.jpg', '2022-10-27 00:39:23', '2022-10-28 17:38:55', NULL),
(11, 16, 'Coxinha de Frango', 'coxinha-de-frango', 'Coxinha de Frango de Catupiry ', 1, '1666989483_50bfee2d1a12adcf343f.jpg', '2022-10-27 00:39:23', '2022-10-28 17:38:03', NULL),
(12, 12, 'Sucos saborizados', 'sucos-saborizados', 'Temos varias opções de sucos ( Laranja, Uva, Limão)', 1, '1667044400_e5008d53a019b6ab5aaa.jpg', '2022-10-27 00:39:23', '2022-10-29 08:53:20', NULL),
(13, 12, 'Água 500 ml', 'agua-500-ml', 'Água Mineral', 1, '1667044700_1cf2e192d82281da8482.jpg', '2022-10-27 00:39:23', '2022-10-29 08:58:44', NULL),
(14, 13, 'Pão de Queijo', 'pao-de-queijo', '800 g de polvilho azedo\r\n1 xícara de água\r\n1 xícara de leite\r\n1/2 xícara de óleo\r\n2 ovos\r\n100 g de queijo parmesão ralado\r\nsal a gosto', 1, '1667044995_23d5d014928613f02a9e.webp', '2022-10-27 00:39:23', '2022-10-29 09:03:52', NULL),
(15, 13, 'Pão Australiano', 'pao-australiano', '3 xícaras de água morna\r\n4 colheres (sopa) de margarina ou manteiga\r\n1/2 xícara de mel\r\n4 xícaras de farinha de trigo\r\n2 xícara de farinha de trigo integral\r\n2 xícara de farinha de centeio\r\n4 colheres (sopa) de chocolate em pó (ou cacau em pó)\r\n8 colheres (sopa) de açúcar mascavo\r\n1 colher (chá) de sal\r\n2 sachês de fermento biológico seco - 10g cada\r\nFubá fina para polvilhar', 1, '1667045201_ecc8d75f883b8d9552ca.jpg', '2022-10-27 00:39:23', '2022-10-29 09:07:16', NULL),
(16, 13, 'Pão Doce', 'pao-doce', 'Fermento biológico fresco 1 tablete\r\nAçúcar 6 colheres (sopa)\r\nLeite 1/2 xícara (chá)\r\nOvo 1 unidade\r\nFarinha de trigo 5 1/2 xícaras (chá)', 1, '1667045439_1ba21de46feb0efb9a04.jpg', '2022-10-27 00:39:23', '2022-10-29 09:10:57', NULL),
(17, 14, 'Bolo de Morango', 'bolo-de-morango', '5 ovos\r\n2 xícaras (chá) de açúcar\r\n2 xícaras (chá) de farinha de trigo\r\n1 xícara (cha) de leite quente\r\n1 colher (sopa) de fermento em pó\r\nRECHEIO:\r\n1/2 litro de leite\r\n1 lata de leite condensado\r\n1 lata de creme de leite\r\n3 gemas\r\n3 colheres de amido de milho\r\n2 caixinhas de morango\r\nCOBERTURA:\r\n2 caixinhas de chantilly Amélia\r\n1 caixinha de morango', 1, '1667045563_1a9c606b19d015522b92.jpg', '2022-10-27 00:39:23', '2022-10-29 09:13:23', NULL),
(18, 14, 'Bolo de Cenoura', 'bolo-de-cenoura', '2 xícara (chá) de óleo\r\n3 cenouras médias raladas\r\n4 ovos\r\n2 xícaras (chá) de açúcar\r\n2 e 1/2 xícaras (chá) de farinha de trigo\r\n1 colher (sopa) de fermento em pó\r\nCOBERTURA\r\n1 colher (sopa) de manteiga\r\n3 colheres (sopa) de chocolate em pó\r\n1 xícara (chá) de açúcar\r\n1 xícara (chá) de leite', 1, '1667045740_bf34c1f461faad5f4356.webp', '2022-10-27 00:39:23', '2022-10-29 09:19:11', NULL),
(19, 14, 'Torta de Salgada', 'torta-de-salgada', '04 ovos\r\n02 xícaras (chá) de leite aproximadamente 400 ml\r\n¾ xícara ( chá) de óleo aproximadamente 150 ml\r\n03 xícaras (chá ) de Mistura de Pão Integral Familia Venturelli\r\n01 colher ( sopa rasa ) de fermento químico em pó', 1, '1667045808_449f8365321d4a39315a.jpeg', '2022-10-27 00:39:23', '2022-10-29 09:17:06', NULL),
(20, 15, 'Bombom de Brigadeiro Branco com Morango', 'bombom-de-brigadeiro-branco-com-morango', '1 lata de leite condensado\r\n1 colher (sopa) de manteiga\r\n250 gr de morango\r\n250 gr de chocolate meio amargo fracionado', 1, '1667046062_449283a6972946adb6e6.jpeg', '2022-10-27 00:39:23', '2022-10-29 09:27:25', NULL),
(21, 15, 'Creme de nata com ganache de chocolate', 'creme-de-nata-com-ganache-de-chocolate', '300 gramas de nata\r\n100 ml de creme de leite\r\n3 colheres de sopa de adoçante\r\n1 colher de café de essência de baunilha⁣\r\ningredientes da ganache\r\n100 gramas de chocolate 70%\r\n100 ml de creme de leite\r\n2 colheres de café de adoçante\r\n', 1, '1667046561_45d95144a9284fa724ac.jpg', '2022-10-27 00:39:23', '2022-10-29 09:30:10', NULL),
(22, 15, 'Churros ', 'churros', '250 ml de água\r\n2 colheres (sopa) de açúcar\r\n2 colheres (sopa) de margarina ou manteiga sem sal\r\n1 pitada de sal (se a margarina tiver sal, dispensar a pitada)\r\n300 g de farinha de trigo', 1, '1667046715_5684a12786c2acb5b56c.webp', '2022-10-27 00:39:23', '2022-10-29 09:32:09', NULL),
(23, 16, 'Cigarrete', 'cigarrete', '4 xícaras (chá) de farinha de trigo peneirada\r\n2 colheres (sopa) de fermento biológico ou 30 g em tablete ou pacotinho seco\r\n1 xícara (chá) de leite morno\r\n4 colheres (sopa) de óleo\r\n1 colher (café) de sal\r\nRECHEIO\r\n350 g de queijo prato ou mussarela\r\n250 g de presunto\r\n2 ovos\r\n100 g de queijo parmesão\r\n100 g de farinha de rosca\r\nÓleo para fritar', 1, '1667046864_ebe4ed1eed520968e560.jpg', '2022-10-27 00:39:23', '2022-10-29 09:34:55', NULL),
(24, 16, 'Empadinha de Frango', 'empadinha-de-frango', '2 xícaras de farinha de trigo\r\n150 gramas de manteiga picada\r\n3 colheres de sopa de água\r\n1 ovo\r\n½ colher de chá de sal', 1, '1667047048_f1200d6dd793bc78422e.jpg', '2022-10-27 00:39:23', '2022-10-29 09:37:45', NULL),
(26, 16, 'Sanduiche de Carne e Queijo', 'sanduiche-de-carne-e-queijo', '1/2 kg de alcatra ou contrafilé cortado em lascas finas\r\n1 cebola fatiada\r\n2 dentes de alho picados\r\n1 colher de chá de páprica doce\r\nPimenta-do-reino a gosto', 1, '1667047131_8f2281d65b39db29c2e4.webp', '2022-10-27 00:39:23', '2022-10-29 09:39:13', NULL),
(27, 12, 'Sprite27', 'sprite14', 'Sprite Limonada', 1, '1666975847_6c4a90dfe4e7a3dcdb4b.jpg', '2022-10-27 00:39:23', '2022-10-28 13:51:57', NULL),
(28, 12, 'Sprite28', 'sprite14', 'Sprite Limonada', 1, '1666975847_6c4a90dfe4e7a3dcdb4b.jpg', '2022-10-27 00:39:23', '2022-10-28 13:51:57', NULL),
(29, 12, 'Sprite29', 'sprite5', 'Sprite Limonada', 1, '1666975847_6c4a90dfe4e7a3dcdb4b.jpg', '2022-10-27 00:39:23', '2022-10-28 13:51:57', NULL),
(30, 12, 'Sprite30', 'sprite5', 'Sprite Limonada', 1, '1666975847_6c4a90dfe4e7a3dcdb4b.jpg', '2022-10-27 00:39:23', '2022-10-28 13:51:57', NULL),
(31, 12, 'Sprite31', 'sprite5', 'Sprite Limonada', 1, '1666975847_6c4a90dfe4e7a3dcdb4b.jpg', '2022-10-27 00:39:23', '2022-10-28 13:51:57', NULL),
(32, 12, 'Sprite32', 'sprite', 'Sprite Limonada', 1, '1666975847_6c4a90dfe4e7a3dcdb4b.jpg', '2022-10-27 00:39:23', '2022-10-28 13:51:57', NULL),
(33, 12, 'Sprite33', 'sprite', 'Sprite Limonada', 1, '1666975847_6c4a90dfe4e7a3dcdb4b.jpg', '2022-10-27 00:39:23', '2022-10-28 13:51:57', NULL),
(34, 12, 'Sprite34', 'sprite5', 'Sprite Limonada', 1, '1666975847_6c4a90dfe4e7a3dcdb4b.jpg', '2022-10-27 00:39:23', '2022-10-28 13:51:57', NULL),
(35, 12, 'Sprite35', 'sprite5', 'Sprite Limonada', 1, '1666975847_6c4a90dfe4e7a3dcdb4b.jpg', '2022-10-27 00:39:23', '2022-10-28 13:51:57', NULL),
(36, 12, 'Sprite36', 'sprite', 'Sprite Limonada', 1, '1666975847_6c4a90dfe4e7a3dcdb4b.jpg', '2022-10-27 00:39:23', '2022-10-28 13:51:57', NULL),
(37, 12, 'Sprite37', 'sprite', 'Sprite Limonada', 1, '1666975847_6c4a90dfe4e7a3dcdb4b.jpg', '2022-10-27 00:39:23', '2022-10-28 13:51:57', NULL),
(38, 12, 'Sprite38', 'sprite', 'Sprite Limonada', 1, '1666975847_6c4a90dfe4e7a3dcdb4b.jpg', '2022-10-27 00:39:23', '2022-10-28 13:51:57', NULL),
(39, 11, 'Café com Leite', 'cafe-com-leite', 'Café Puro 250ml\r\nLeite Desnatado', 1, '1666977280_544da0b820264f2cca9f.jpg', '2022-10-27 00:39:23', '2022-10-28 14:15:10', NULL),
(40, 12, 'Sprite40', 'sprite', 'Sprite Limonada', 1, '1666975847_6c4a90dfe4e7a3dcdb4b.jpg', '2022-10-27 00:39:23', '2022-10-28 13:51:57', NULL),
(57, 14, 'Bolo Festa', 'bolo-festa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1, NULL, '2022-10-30 12:20:41', '2022-10-30 12:20:41', NULL),
(58, 14, 'Bolo de Chocolate com Chantilly', 'bolo-de-chocolate-com-chantilly', '4 ovos\r\n4 colheres (sopa) de chocolate em pó\r\n2 colheres (sopa) de manteiga\r\n3 xícaras (chá) de farinha de trigo\r\n2 xícaras (chá) de açúcar\r\n2 colheres (sopa) de fermento\r\n1 xícara (chá) de leite\r\nCALDA\r\n2 colheres (sopa) de manteiga\r\n7 colheres (sopa) de chocolate em pó\r\n2 latas de creme de leite com soro\r\n3 colheres (sopa) de açúcar', 1, '1667739233_5c299d1869fe155dbb01.jpg', '2022-11-06 09:53:34', '2022-11-06 09:53:53', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_especificacoes`
--

CREATE TABLE `produtos_especificacoes` (
  `id` int(5) UNSIGNED NOT NULL,
  `produto_id` int(5) UNSIGNED NOT NULL,
  `medida_id` int(5) UNSIGNED NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `customizavel` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos_especificacoes`
--

INSERT INTO `produtos_especificacoes` (`id`, `produto_id`, `medida_id`, `preco`, `customizavel`) VALUES
(75, 9, 29, '10.00', 0),
(78, 9, 28, '15.00', 0),
(80, 17, 29, '12.00', 0),
(83, 18, 29, '11.00', 0),
(84, 18, 28, '16.00', 0),
(85, 18, 30, '22.00', 0),
(86, 17, 28, '17.00', 0),
(87, 17, 30, '23.00', 0),
(88, 19, 29, '10.00', 0),
(89, 19, 28, '12.00', 0),
(90, 19, 30, '18.00', 0),
(91, 3, 36, '1.50', 0),
(92, 5, 37, '4.50', 0),
(93, 6, 37, '4.50', 0),
(94, 39, 37, '4.30', 0),
(95, 8, 32, '3.00', 0),
(96, 8, 31, '5.00', 0),
(97, 8, 33, '6.50', 0),
(98, 14, 32, '15.00', 0),
(99, 14, 31, '25.00', 0),
(100, 14, 33, '30.00', 0),
(101, 58, 29, '15.00', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_extras`
--

CREATE TABLE `produtos_extras` (
  `id` int(5) UNSIGNED NOT NULL,
  `produto_id` int(5) UNSIGNED NOT NULL,
  `extra_id` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos_extras`
--

INSERT INTO `produtos_extras` (`id`, `produto_id`, `extra_id`) VALUES
(19, 3, 13),
(20, 5, 13),
(21, 6, 13),
(22, 39, 13),
(25, 58, 14);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(5) UNSIGNED NOT NULL,
  `nome` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cpf` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `ativo` tinyint(1) NOT NULL DEFAULT 0,
  `password_hash` varchar(255) NOT NULL,
  `ativacao_hash` varchar(64) DEFAULT NULL,
  `reset_hash` varchar(64) DEFAULT NULL,
  `reset_expira_em` datetime DEFAULT NULL,
  `criado_em` datetime DEFAULT NULL,
  `atualizado_em` datetime DEFAULT NULL,
  `deletado_em` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `cpf`, `telefone`, `is_admin`, `ativo`, `password_hash`, `ativacao_hash`, `reset_hash`, `reset_expira_em`, `criado_em`, `atualizado_em`, `deletado_em`) VALUES
(14, 'Admin', 'admin@admin.com', '388.012.100-19', '(45) 99999-9999', 1, 1, '$2y$10$JsOWdtCv3sAC9NM85ETrqOKHqibIYJjjRTOOqSt0Bsu.NDqSoRnp6', NULL, NULL, NULL, '2022-10-27 20:26:31', '2022-10-27 20:26:31', NULL),
(15, 'Cliente', 'clie@clie.com', '796.622.710-31', '(37) 99999-9999', 0, 1, '$2y$10$mJCKsOqdtj9Ubir7MSuCruaY4p1vk52qw2zuigMtwtovhCuXaicfu', NULL, NULL, NULL, '2022-10-27 20:27:13', '2022-10-31 19:49:52', NULL),
(36, 'Julio Cesar Duque', 'juliocesarduque98@hotmail.com', '138.760.426-07', '(37) 99962-6511', 1, 1, '$2y$10$E9iLhwiXu.gnaBWVtVJKAuGUYfEebQBLawO0So.dFQttACOBq.R32', NULL, NULL, NULL, '2022-11-06 09:35:25', '2022-11-06 10:08:28', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `entregadores`
--
ALTER TABLE `entregadores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `cnh` (`cnh`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `telefone` (`telefone`);

--
-- Índices para tabela `expediente`
--
ALTER TABLE `expediente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `formas_pagamento`
--
ALTER TABLE `formas_pagamento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `medidas`
--
ALTER TABLE `medidas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_usuario_id_foreign` (`usuario_id`),
  ADD KEY `pedidos_entregador_id_foreign` (`entregador_id`);

--
-- Índices para tabela `pedidos_produtos`
--
ALTER TABLE `pedidos_produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_produtos_pedido_id_foreign` (`pedido_id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD KEY `produtos_categoria_id_foreign` (`categoria_id`);

--
-- Índices para tabela `produtos_especificacoes`
--
ALTER TABLE `produtos_especificacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produtos_especificacoes_produto_id_foreign` (`produto_id`),
  ADD KEY `produtos_especificacoes_medida_id_foreign` (`medida_id`);

--
-- Índices para tabela `produtos_extras`
--
ALTER TABLE `produtos_extras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produtos_extras_produto_id_foreign` (`produto_id`),
  ADD KEY `produtos_extras_extra_id_foreign` (`extra_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `ativacao_hash` (`ativacao_hash`),
  ADD UNIQUE KEY `reset_hash` (`reset_hash`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bairros`
--
ALTER TABLE `bairros`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `entregadores`
--
ALTER TABLE `entregadores`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `expediente`
--
ALTER TABLE `expediente`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `extras`
--
ALTER TABLE `extras`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `formas_pagamento`
--
ALTER TABLE `formas_pagamento`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `medidas`
--
ALTER TABLE `medidas`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `pedidos_produtos`
--
ALTER TABLE `pedidos_produtos`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `produtos_especificacoes`
--
ALTER TABLE `produtos_especificacoes`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de tabela `produtos_extras`
--
ALTER TABLE `produtos_extras`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_entregador_id_foreign` FOREIGN KEY (`entregador_id`) REFERENCES `entregadores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedidos_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `pedidos_produtos`
--
ALTER TABLE `pedidos_produtos`
  ADD CONSTRAINT `pedidos_produtos_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

--
-- Limitadores para a tabela `produtos_especificacoes`
--
ALTER TABLE `produtos_especificacoes`
  ADD CONSTRAINT `produtos_especificacoes_medida_id_foreign` FOREIGN KEY (`medida_id`) REFERENCES `medidas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produtos_especificacoes_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `produtos_extras`
--
ALTER TABLE `produtos_extras`
  ADD CONSTRAINT `produtos_extras_extra_id_foreign` FOREIGN KEY (`extra_id`) REFERENCES `extras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `produtos_extras_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produtos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
