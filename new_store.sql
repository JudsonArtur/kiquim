-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 31/07/2020 às 09:21
-- Versão do servidor: 10.1.38-MariaDB
-- Versão do PHP: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `new_store`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_parent` int(11) DEFAULT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `category_title` varchar(255) DEFAULT NULL,
  `category_content` text,
  `category_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `city_district` varchar(255) DEFAULT NULL,
  `city_price` decimal(20,2) DEFAULT NULL,
  `city_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `city_district`, `city_price`, `city_status`) VALUES
(1, 'luanda', 'Luanda', '12.00', 1),
(2, 'uige', 'Uíge', '0.00', 1),
(3, 'benguela', 'Benguela', NULL, 1),
(4, 'huambo', 'Huambo', NULL, 1),
(5, 'cabinda', 'Cabinda', NULL, 1),
(6, 'bie', 'Bié', NULL, 1),
(7, 'cuanza-sul', 'Cuanza Sul', NULL, 1),
(8, 'cunene', 'Cunene', NULL, 1),
(9, 'malanje', 'Malanje', NULL, 1),
(10, 'lunda-norte', 'Lunda Norte', NULL, 1),
(11, 'moxico', 'Moxico', NULL, 1),
(12, 'zaire', 'Zaire', NULL, 1),
(13, 'lunda-sul', 'Lunda Sul', NULL, 1),
(14, 'Cuando-cubango', 'Cuando Cubango', NULL, 1),
(15, 'namibe', 'Namibe', NULL, 1),
(16, 'cuanza-norte', 'Cuanza Norte', NULL, 1),
(17, 'bengo', 'Bengo', NULL, 1),
(18, 'huila', 'Huila', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `clients`
--

CREATE TABLE `clients` (
  `clients_id` int(11) NOT NULL,
  `clients_number` text COLLATE latin1_general_ci,
  `clients_name` text COLLATE latin1_general_ci,
  `clients_email` text COLLATE latin1_general_ci,
  `clients_registration` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Despejando dados para a tabela `clients`
--

INSERT INTO `clients` (`clients_id`, `clients_number`, `clients_name`, `clients_email`, `clients_registration`) VALUES
(6, '932123192', 'wew32', 'arturdossantos1@gmail.com', NULL),
(7, '23221234', 'dddeee', 'arturdossantos1@gmail.com', NULL),
(8, '94240803', 'Judson Artur', 'arturdossantos1@gmail.com', NULL),
(9, '944323512', 'Judson Artur', 'arturdossantos1@gmail.com', NULL),
(10, '942080625', 'Judson Artur', 'judsoncapepa22@gmail.com', NULL),
(11, '93221122', 'Mateus da Curva', 'arturdossantos1@gmail.com', NULL),
(12, '223321', 'Judson Artur', 'arturdossantos1@gmail.com', NULL),
(13, '943123102', 'fffdew', 'arturdossantos1@gmail.com', NULL),
(14, '1233443', '123de', 'arturdossantos1@gmail.com', NULL),
(15, '12334433', '222kkk', '', NULL),
(16, '22334', 'wewew', '', NULL),
(17, '23456782', '12fff', 'arturdossantos1@gmail.com', NULL),
(18, '934123120', 'Mateus', '', NULL),
(19, '923121212', 'Mateus Ricardo', '', NULL),
(20, '934034213', 'Maria do Ceu', '', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `conf_id` int(11) UNSIGNED NOT NULL,
  `conf_key` varchar(255) DEFAULT '',
  `conf_value` varchar(255) DEFAULT '',
  `conf_type` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `config`
--

INSERT INTO `config` (`conf_id`, `conf_key`, `conf_value`, `conf_type`) VALUES
(29395, 'BASE', 'http://localhost/Kiquim-doing/nova_loja', 'ADMIN'),
(29396, 'THEME', 'loja', 'ADMIN'),
(29399, 'ADMIN_NAME', 'KIQUIM PAINEL', 'ADMIN'),
(29400, 'ADMIN_DESC', 'Bem vindo ao nosso painel Fullstack', 'ADMIN'),
(29401, 'ADMIN_MODE', '2', 'ADMIN'),
(29402, 'ADMIN_WC_CUSTOM', '1', 'ADMIN'),
(29403, 'ADMIN_MAINTENANCE', '0', 'ADMIN'),
(29404, 'ADMIN_VERSION', '3.1.1', 'ADMIN'),
(29405, 'MAIL_HOST', 'mail.embote.com', 'MAIL'),
(29406, 'MAIL_PORT', '587', 'MAIL'),
(29407, 'MAIL_USER', 'vendas@embote.com', 'MAIL'),
(29408, 'MAIL_PASS', 'LI8T.?wk-k,s', 'MAIL'),
(29409, 'MAIL_SENDER', 'Kiquim Immanent', 'MAIL'),
(29410, 'MAIL_TESTER', 'judsoncapepa22@gmail.com', 'MAIL'),
(29411, 'IMAGE_W', '1600', 'IMAGE'),
(29412, 'IMAGE_H', '800', 'IMAGE'),
(29413, 'THUMB_W', '800', 'THUMB'),
(29414, 'THUMB_H', '1000', 'THUMB'),
(29415, 'AVATAR_W', '500', 'AVATAR'),
(29416, 'AVATAR_H', '500', 'AVATAR'),
(29417, 'SLIDE_W', '1920', 'SLIDE'),
(29418, 'SLIDE_H', '1000', 'SLIDE'),
(29419, 'SLIDE_M_W', '630', 'SLIDE'),
(29420, 'SLIDE_M_H', '645', 'SLIDE'),
(29421, 'BRAND_W', '200', 'BRAND'),
(29422, 'BRAND_H', '200', 'BRAND'),
(29423, 'APP_POSTS', '0', 'APP'),
(29424, 'APP_POSTS_AMP', '0', 'APP'),
(29425, 'APP_POSTS_INSTANT_ARTICLE', '0', 'APP'),
(29426, 'APP_EAD', '0', 'APP'),
(29427, 'APP_SEARCH', '1', 'APP'),
(29428, 'APP_PAGES', '0', 'APP'),
(29429, 'APP_EMPRESA', '1', 'APP'),
(29430, 'APP_PRODUCTS', '1', 'APP'),
(29431, 'APP_PUB', '1', 'APP'),
(29432, 'APP_CITY', '1', 'APP'),
(29433, 'APP_ORDERS', '1', 'APP'),
(29434, 'APP_IMOBI', '0', 'APP'),
(29435, 'APP_SLIDE', '1', 'APP'),
(29436, 'APP_USERS', '1', 'APP'),
(29437, 'LEVEL_WC_POSTS', '6', 'LEVEL'),
(29438, 'LEVEL_WC_PAGES', '6', 'LEVEL'),
(29439, 'LEVEL_WC_CITY', '6', 'LEVEL'),
(29440, 'LEVEL_WC_SLIDES', '6', 'LEVEL'),
(29441, 'LEVEL_WC_IMOBI', '6', 'LEVEL'),
(29442, 'LEVEL_WC_PRODUCTS', '6', 'LEVEL'),
(29443, 'LEVEL_WC_PRODUCTS_ORDERS', '6', 'LEVEL'),
(29444, 'LEVEL_WC_EAD_COURSES', '6', 'LEVEL'),
(29445, 'LEVEL_WC_EAD_STUDENTS', '6', 'LEVEL'),
(29446, 'LEVEL_WC_EAD_SUPPORT', '6', 'LEVEL'),
(29447, 'LEVEL_WC_EAD_ORDERS', '6', 'LEVEL'),
(29448, 'LEVEL_WC_REPORTS', '6', 'LEVEL'),
(29449, 'LEVEL_WC_USERS', '6', 'LEVEL'),
(29450, 'LEVEL_WC_CONFIG_MASTER', '10', 'LEVEL'),
(29451, 'LEVEL_WC_CONFIG_API', '10', 'LEVEL'),
(29452, 'LEVEL_WC_CONFIG_CODES', '10', 'LEVEL'),
(29453, 'SEGMENT_FB_PIXEL_ID', '0', 'SEGMENT'),
(29454, 'SEGMENT_WC_USER', '1', 'SEGMENT'),
(29455, 'SEGMENT_WC_BLOG', '1', 'SEGMENT'),
(29456, 'SEGMENT_WC_ECOMMERCE', '1', 'SEGMENT'),
(29457, 'SEGMENT_WC_IMOBI', '0', 'SEGMENT'),
(29458, 'SEGMENT_WC_EAD', '0', 'SEGMENT'),
(29459, 'SEGMENT_GL_ANALYTICS_UA', '', 'SEGMENT'),
(29460, 'SEGMENT_FB_PAGE_ID', '', 'SEGMENT'),
(29461, 'SEGMENT_GL_ADWORDS_ID', '', 'SEGMENT'),
(29462, 'SEGMENT_GL_ADWORDS_LABEL', '', 'SEGMENT'),
(29463, 'APP_LINK_POSTS', '1', 'APP'),
(29464, 'APP_LINK_PAGES', '1', 'APP'),
(29465, 'APP_LINK_PRODUCTS', '1', 'APP'),
(29466, 'APP_LINK_PROPERTIES', '1', 'APP'),
(29467, 'ACC_MANAGER', '1', 'ACC'),
(29468, 'ACC_TAG', 'Minha Conta!', 'ACC'),
(29469, 'COMMENT_MODERATE', '0', 'COMMENT'),
(29470, 'COMMENT_ON_POSTS', '1', 'COMMENT'),
(29471, 'COMMENT_ON_PAGES', '0', 'COMMENT'),
(29472, 'COMMENT_ON_PRODUCTS', '1', 'COMMENT'),
(29473, 'COMMENT_SEND_EMAIL', '1', 'COMMENT'),
(29474, 'COMMENT_ORDER', 'DESC', 'COMMENT'),
(29475, 'COMMENT_RESPONSE_ORDER', 'ASC', 'COMMENT'),
(29476, 'E_PDT_LIMIT', '0', 'ECOMMERCE'),
(29477, 'E_PDT_SIZE', 'default', 'ECOMMERCE'),
(29478, 'E_ORDER_DAYS', '3', 'ECOMMERCE'),
(29479, 'ECOMMERCE_TAG', 'Minhas Compras', 'ECOMMERCE'),
(29480, 'ECOMMERCE_STOCK', '1', 'ECOMMERCE'),
(29481, 'ECOMMERCE_BUTTON_TAG', 'ADICIONAR AO CARRINHO', 'ECOMMERCE'),
(29482, 'ECOMMERCE_SHIPMENT_FREE', '30', 'ECOMMERCE'),
(29483, 'ECOMMERCE_SHIPMENT_FREE_DAYS', '14', 'ECOMMERCE'),
(29484, 'ECOMMERCE_SHIPMENT_LOCAL_PRICE', '900', 'ECOMMERCE'),
(29485, 'AGENCY_CONTACT', 'Malungo S. Kiala', 'AGENCY'),
(29486, 'AGENCY_EMAIL', 'malungokiala@gmail.com', 'AGENCY'),
(29487, 'AGENCY_PHONE', '(+244) 991 801 429', 'AGENCY'),
(29488, 'AGENCY_URL', 'https://www.kiquim.co.ao', 'AGENCY'),
(29489, 'AGENCY_NAME', 'KIQUIM IMMANENT', 'AGENCY'),
(29490, 'AGENCY_ADDR', 'Rua Unidade e Luta, Nº 19, Cassenda', 'AGENCY'),
(29491, 'AGENCY_CITY', 'Luanda', 'AGENCY'),
(29492, 'AGENCY_UF', 'LD', 'AGENCY'),
(29493, 'AGENCY_ZIP', '', 'AGENCY'),
(29494, 'AGENCY_COUNTRY', 'Angola', 'AGENCY'),
(29495, 'SITE_NAME', 'Kiquim Immanent', 'SITE'),
(29496, 'SITE_SUBNAME', 'Loja & Serviços', 'SITE'),
(29497, 'SITE_DESC', 'A maior loja da Internet de Angola com os menores preços. Lampadas, Candieros, Papel de Parede, Acesse e compre online e recebe em Luanda', 'SITE'),
(29498, 'SITE_ADDR_NAME', 'Embote', 'SITE'),
(29499, 'SITE_ADDR_RS', 'Kiquim Immanent, LDA', 'SITE'),
(29500, 'SITE_ADDR_EMAIL', 'geral@embote.com', 'SITE'),
(29501, 'SITE_ADDR_SITE', 'https://www.loja.kiquim.com', 'SITE'),
(29502, 'SITE_ADDR_CNPJ', '00.000.000/0000-00', 'SITE'),
(29503, 'SITE_ADDR_IE', '5417397571', 'SITE'),
(29504, 'SITE_ADDR_PHONE_A', '(+244) 935 424 243', 'SITE'),
(29505, 'SITE_ADDR_PHONE_B', '(+244) 992 424 243', 'SITE'),
(29506, 'SITE_ADDR_ADDR', 'Rua Unidade e Luta Nº 19, Bairro Cassenda, Distrito Urbano da Maianga', 'SITE'),
(29507, 'SITE_ADDR_CITY', 'Luanda', 'SITE'),
(29508, 'SITE_ADDR_DISTRICT', 'Cassenda', 'SITE'),
(29509, 'SITE_ADDR_UF', 'LD', 'SITE'),
(29510, 'SITE_ADDR_ZIP', '000', 'SITE'),
(29511, 'SITE_ADDR_COUNTRY', 'Angola', 'SITE'),
(29512, 'SITE_SOCIAL_NAME', 'Malungo Kiala', 'SITE'),
(29513, 'SITE_SOCIAL_GOOGLE', '1', 'SITE'),
(29514, 'SITE_SOCIAL_GOOGLE_AUTHOR', '114968629817704186655', 'SITE'),
(29515, 'SITE_SOCIAL_GOOGLE_PAGE', '107468638035278077611', 'SITE'),
(29516, 'SITE_SOCIAL_FB', '1', 'SITE'),
(29517, 'SITE_SOCIAL_FB_APP', '0', 'SITE'),
(29518, 'SITE_SOCIAL_FB_AUTHOR', 'malungoSkiala', 'SITE'),
(29519, 'SITE_SOCIAL_FB_PAGE', 'https://www.facebook.com/judson.artur', 'SITE'),
(29520, 'SITE_SOCIAL_TWITTER', 'https://twitter.com/JudsonArtur', 'SITE'),
(29521, 'SITE_SOCIAL_YOUTUBE', '', 'SITE'),
(29522, 'SITE_SOCIAL_INSTAGRAM', '', 'SITE'),
(29523, 'SITE_SOCIAL_SNAPCHAT', '', 'SITE');

-- --------------------------------------------------------

--
-- Estrutura para tabela `orders_items`
--

CREATE TABLE `orders_items` (
  `order_id` int(11) UNSIGNED NOT NULL,
  `pdt_id` int(11) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `item_id` int(11) UNSIGNED NOT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_price` decimal(11,2) DEFAULT NULL,
  `item_amount` decimal(11,0) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `orders_items`
--

INSERT INTO `orders_items` (`order_id`, `pdt_id`, `stock_id`, `item_id`, `item_name`, `item_price`, `item_amount`) VALUES
(3, 62, 419, 8, 'INTELIGÊNCIA MULTIFOCAL', '3000.00', '1'),
(3, 69, 57, 9, 'PALAVRAS EM PORTUGUÊS', '1400.00', '1'),
(3, 68, 56, 10, 'O MEU ATLAS', '1150.00', '1'),
(3, 71, 59, 11, 'COMO PREPARAR TESTES E EXAMES', '2550.00', '1'),
(3, 82, 70, 12, 'O ABC DA SEDUÇÃO', '2100.00', '1'),
(3, 70, 58, 13, 'MINIGRAMÁTICA DA BEATRIZ E DO MATEUS', '1900.00', '1'),
(3, 61, 49, 14, 'PLANO GERAL DE CONTABILIDADE EXPLICADO ANGOLA', '4850.00', '1'),
(23, 81, 69, 59, 'O JARDIM FANTÁSTICO HISTÓRIA HELLO KITTY', '1125.00', '1'),
(24, 75, 63, 60, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', '2250.00', '2'),
(24, 68, 56, 61, 'O MEU ATLAS', '1150.00', '5'),
(24, 78, 66, 62, 'UMA NOITE DESCANSADA HISTÓRIAS HELLO KITTY', '1125.00', '2'),
(24, 65, 53, 63, 'PAIS BRILHANTES, PROFESSORES FASCINANTES', '4600.00', '1'),
(25, 75, 63, 64, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', '2250.00', '2'),
(26, 64, 52, 65, 'REVOLUCIONE A SUA QUALIDADE DE VIDA', '5900.00', '2'),
(26, 60, 48, 66, 'A NOSSA GRAMÁTICA DE LÍNGUA PORTUGUESA', '4900.00', '2'),
(27, 71, 59, 67, 'COMO PREPARAR TESTES E EXAMES', '2550.00', '1'),
(28, 73, 61, 68, 'Guia das Profissões Auxiliar de Acção Médica', '2250.00', '2'),
(29, 63, 420, 69, 'NUNCA DESISTA DOS SEUS SONHOS', '3100.00', '1'),
(30, 62, 419, 70, 'INTELIGÊNCIA MULTIFOCAL', '7300.00', '1'),
(31, 67, 55, 71, 'O MEU ALFABETO', '825.00', '2'),
(32, 76, 343, 72, 'A SAGA DE UM PENSADOR', '7050.00', '1'),
(33, 66, 54, 73, 'REGRAS DE TRÂNSITO', '1350.00', '1'),
(34, 70, 58, 74, 'MINIGRAMÁTICA DA BEATRIZ E DO MATEUS', '1900.00', '2'),
(35, 75, 63, 75, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', '2250.00', '1'),
(36, 68, 56, 76, 'O MEU ATLAS', '1150.00', '1'),
(36, 61, 49, 77, 'PLANO GERAL DE CONTABILIDADE EXPLICADO ANGOLA', '4850.00', '1'),
(36, 64, 52, 78, 'REVOLUCIONE A SUA QUALIDADE DE VIDA', '5900.00', '1'),
(37, 73, 61, 79, 'Guia das Profissões Auxiliar de Acção Médica', '2250.00', '1'),
(37, 72, 60, 80, 'HIGIENE', '700.00', '2'),
(38, 69, 57, 81, 'PALAVRAS EM PORTUGUÊS', '1400.00', '1'),
(39, 69, 57, 82, 'PALAVRAS EM PORTUGUÊS', '1400.00', '1'),
(40, 65, 53, 83, 'PAIS BRILHANTES, PROFESSORES FASCINANTES', '4600.00', '1'),
(41, 77, 65, 84, 'FÉRIAS DE VERÃO HISTÓRIAS DA HELLO KITTY', '1100.00', '1'),
(42, 78, 66, 85, 'UMA NOITE DESCANSADA HISTÓRIAS HELLO KITTY', '1125.00', '2'),
(43, 66, 54, 86, 'REGRAS DE TRÂNSITO', '1350.00', '1'),
(44, 63, 420, 87, 'NUNCA DESISTA DOS SEUS SONHOS', '3100.00', '1'),
(45, 64, 52, 88, 'REVOLUCIONE A SUA QUALIDADE DE VIDA', '5900.00', '1'),
(46, 73, 61, 89, 'Guia das Profissões Auxiliar de Acção Médica', '2250.00', '1'),
(46, 75, 63, 90, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', '2250.00', '1'),
(47, 73, 61, 91, 'Guia das Profissões Auxiliar de Acção Médica', '2250.00', '1'),
(47, 75, 63, 92, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', '2250.00', '1'),
(48, 75, 63, 93, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', '2250.00', '1'),
(48, 56, 422, 94, 'CADERNOS CALIGRÁFICOS 1', '950.00', '1'),
(49, 75, 63, 95, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', '2250.00', '1'),
(49, 56, 422, 96, 'CADERNOS CALIGRÁFICOS 1', '950.00', '1'),
(50, 67, 55, 97, 'O MEU ALFABETO', '825.00', '1'),
(51, 60, 48, 98, 'A NOSSA GRAMÁTICA DE LÍNGUA PORTUGUESA', '4900.00', '1'),
(52, 65, 53, 99, 'PAIS BRILHANTES, PROFESSORES FASCINANTES', '4600.00', '1'),
(53, 69, 57, 100, 'PALAVRAS EM PORTUGUÊS', '1400.00', '1'),
(54, 79, 67, 101, 'O SONHO MÁGICO HISTÓRIAS DA HELLO KITTY', '1100.00', '1'),
(55, 81, 69, 102, 'O JARDIM FANTÁSTICO HISTÓRIA HELLO KITTY', '1125.00', '1'),
(55, 73, 61, 103, 'Guia das Profissões Auxiliar de Acção Médica', '2250.00', '1'),
(55, 62, 419, 104, 'INTELIGÊNCIA MULTIFOCAL', '7300.00', '1'),
(55, 63, 420, 105, 'NUNCA DESISTA DOS SEUS SONHOS', '3100.00', '1'),
(55, 69, 57, 106, 'PALAVRAS EM PORTUGUÊS', '1400.00', '1'),
(56, 82, 70, 107, 'O ABC DA SEDUÇÃO', '2100.00', '1'),
(56, 71, 59, 108, 'COMO PREPARAR TESTES E EXAMES', '2550.00', '2'),
(57, 60, 48, 109, 'A NOSSA GRAMÁTICA DE LÍNGUA PORTUGUESA', '4900.00', '1'),
(58, 78, 66, 110, 'UMA NOITE DESCANSADA HISTÓRIAS HELLO KITTY', '1125.00', '1'),
(58, 63, 420, 111, 'NUNCA DESISTA DOS SEUS SONHOS', '3100.00', '1'),
(59, 76, 343, 112, 'A SAGA DE UM PENSADOR', '7050.00', '1'),
(60, 64, 52, 113, 'REVOLUCIONE A SUA QUALIDADE DE VIDA', '5900.00', '1'),
(61, 72, 60, 114, 'HIGIENE', '700.00', '1'),
(62, 65, 53, 115, 'PAIS BRILHANTES, PROFESSORES FASCINANTES', '4600.00', '1'),
(63, 60, 48, 116, 'A NOSSA GRAMÁTICA DE LÍNGUA PORTUGUESA', '4900.00', '1'),
(64, 75, 63, 117, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', '2250.00', '1'),
(64, 81, 69, 118, 'O JARDIM FANTÁSTICO HISTÓRIA HELLO KITTY', '1125.00', '1'),
(70, 75, 63, 129, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', '2250.00', '1'),
(70, 81, 69, 130, 'O JARDIM FANTÁSTICO HISTÓRIA HELLO KITTY', '1125.00', '1'),
(71, 75, 63, 131, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', '2250.00', '2'),
(71, 81, 69, 132, 'O JARDIM FANTÁSTICO HISTÓRIA HELLO KITTY', '1125.00', '1'),
(72, 82, 70, 133, 'O ABC DA SEDUÇÃO', '2160.00', '2'),
(73, 85, 424, 134, 'Papel de Parede NPP393101', '4000.00', '1'),
(74, 85, 424, 135, 'Papel de Parede NPP393101', '4000.00', '1'),
(75, 75, 63, 136, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', '2250.00', '1'),
(76, 78, 66, 137, 'UMA NOITE DESCANSADA HISTÓRIAS HELLO KITTY', '1125.00', '1'),
(80, 82, 70, 138, 'O ABC DA SEDUÇÃO', '2160.00', '1'),
(0, 82, 70, 139, 'O ABC DA SEDUÇÃO', '2160.00', '1'),
(0, 81, 69, 140, 'O JARDIM FANTÁSTICO HISTÓRIA HELLO KITTY', '1125.00', '1'),
(0, 74, 62, 141, 'GUIA DAS PROFISSÕES ELECTRICISTA', '2250.00', '1'),
(1, 81, 69, 142, 'O JARDIM FANTÁSTICO HISTÓRIA HELLO KITTY', '1125.00', '1'),
(3, 74, 62, 146, 'GUIA DAS PROFISSÕES ELECTRICISTA', '2250.00', '1'),
(4, 75, 63, 147, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', '2250.00', '1'),
(4, 74, 62, 148, 'GUIA DAS PROFISSÕES ELECTRICISTA', '2250.00', '1'),
(5, 74, 62, 149, 'GUIA DAS PROFISSÕES ELECTRICISTA', '2250.00', '1'),
(5, 76, 343, 150, 'A SAGA DE UM PENSADOR', '7050.00', '1'),
(6, 81, 69, 151, 'O JARDIM FANTÁSTICO HISTÓRIA HELLO KITTY', '1000.00', '1'),
(10, 59, 421, 157, 'A CONTABILIDADE E A GESTÃO DIÁRIA ANGOLA', '3650.00', '1'),
(11, 78, 66, 158, 'UMA NOITE DESCANSADA HISTÓRIAS HELLO KITTY', '1125.00', '1'),
(12, 75, 63, 159, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', '2250.00', '1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) UNSIGNED NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `page_subtitle` varchar(255) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `page_content` text,
  `page_date` timestamp NULL DEFAULT NULL,
  `page_revision` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `page_order` int(11) DEFAULT NULL,
  `page_status` int(11) NOT NULL DEFAULT '0',
  `page_cover` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pages_images`
--

CREATE TABLE `pages_images` (
  `page_id` int(11) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
--

CREATE TABLE `products` (
  `pdt_id` int(11) UNSIGNED NOT NULL,
  `pdt_code` varchar(255) NOT NULL DEFAULT '',
  `pdt_parent` int(11) UNSIGNED DEFAULT NULL,
  `pdt_title` varchar(255) DEFAULT NULL,
  `pdt_subtitle` varchar(270) DEFAULT NULL,
  `pdt_name` varchar(255) DEFAULT NULL,
  `pdt_hotlink` varchar(255) DEFAULT NULL,
  `pdt_cover` varchar(255) DEFAULT NULL,
  `pdt_content` text,
  `pdt_price` decimal(11,2) DEFAULT NULL,
  `pdt_news_status` int(11) DEFAULT NULL,
  `pdt_highlight` int(11) DEFAULT NULL,
  `reference` text,
  `pdt_inventory` decimal(10,0) NOT NULL DEFAULT '0',
  `pdt_delivered` decimal(10,0) NOT NULL DEFAULT '0',
  `pdt_brand` int(11) UNSIGNED DEFAULT NULL,
  `pdt_category` int(11) UNSIGNED DEFAULT NULL,
  `pdt_subcategory` int(11) UNSIGNED DEFAULT NULL,
  `pdt_offer_price` decimal(11,2) DEFAULT NULL,
  `pdt_offer_start` timestamp NULL DEFAULT NULL,
  `pdt_offer_end` timestamp NULL DEFAULT NULL,
  `pdt_created` timestamp NULL DEFAULT NULL,
  `pdt_views` decimal(10,0) DEFAULT '0',
  `pdt_lastview` timestamp NULL DEFAULT NULL,
  `pdt_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `products`
--

INSERT INTO `products` (`pdt_id`, `pdt_code`, `pdt_parent`, `pdt_title`, `pdt_subtitle`, `pdt_name`, `pdt_hotlink`, `pdt_cover`, `pdt_content`, `pdt_price`, `pdt_news_status`, `pdt_highlight`, `reference`, `pdt_inventory`, `pdt_delivered`, `pdt_brand`, `pdt_category`, `pdt_subcategory`, `pdt_offer_price`, `pdt_offer_start`, `pdt_offer_end`, `pdt_created`, `pdt_views`, `pdt_lastview`, `pdt_status`) VALUES
(56, '0056', NULL, 'CADERNOS CALIGRÁFICOS 1', 'Cadernos caligráficos 1 permitem, através dos exercícios de caligrafia, reforçar a aquisição do traço, adquirir um maior domínio dos seus movimentos e aprender a escrever de forma clara e inteligível.', 'cadernos-caligraficos-1', NULL, 'images/2017/07/56-cadernos-caligraficos-1-1499698893.png', NULL, '950.00', 1, 1, NULL, '1', '0', 88, 1, 2, '850.00', '2020-07-12 10:11:00', '2020-08-30 23:00:00', '2017-07-10 18:57:42', '198', '2019-12-05 11:32:31', 1),
(59, '0059', NULL, 'A CONTABILIDADE E A GESTÃO DIÁRIA ANGOLA', 'A contabilidade e a gestão diária é uma obra teórico-prática que dará resposta aos inúmeros desafios que se colocam aos profissionais da área de contabilidade e de gestão. ', 'a-contabilidade-e-a-gestao-diaria-angola', NULL, 'images/2017/07/59-a-contabilidade-e-a-gestao-diaria-angola-1499699406.png', NULL, '3650.00', NULL, 0, NULL, '1', '-1', 88, 55, 64, '0.00', NULL, NULL, '2017-07-10 19:05:19', '76', '2019-09-11 14:31:49', 1),
(60, '0060', NULL, 'A NOSSA GRAMÁTICA DE LÍNGUA PORTUGUESA', 'A nossa gramática de língua portuguesa-Ensino secundário é um auxiliar didáctico indispensável para professores e alunos do ensino secundário. ', 'a-nossa-gramatica-de-lingua-portuguesa', NULL, 'images/2017/07/60-a-nossa-gramatica-de-lingua-portuguesa-1499699698.png', NULL, '4900.00', NULL, 0, NULL, '2', '0', 88, 55, 64, '0.00', '2019-07-17 23:00:00', '2019-07-29 23:00:00', '2017-07-10 19:11:47', '12', '2019-08-26 13:57:36', 1),
(61, '0061', NULL, 'PLANO GERAL DE CONTABILIDADE EXPLICADO ANGOLA', 'Contém explicações pormenorizadas sobre a movimentação das contas, exemplo práticos e esquemas de contabilização que permitem compreender de modo aprofundado o plano geral de contabilidade,', 'plano-geral-de-contabilidade-explicado-angola', NULL, 'images/2017/07/61-plano-geral-de-contabilidade-explicado-angola-1499700702.png', NULL, '4850.00', NULL, 0, NULL, '1', '2', 88, 55, 64, '0.00', NULL, NULL, '2017-07-10 19:30:38', '37', '2019-08-06 14:28:11', 1),
(62, '0062', NULL, 'INTELIGÊNCIA MULTIFOCAL', 'Há um mundo a ser descoberto nos bastidores da mente humana, um mundo rico, sofisticado e interessante, um mundo que existe para além da massificação da cultura do consumismo, da cotação do dólar, da tecnologia, da moda, do estereótipo da estética. ', 'inteligencia-multifocal', NULL, 'images/2017/07/62-inteligencia-multifocal-1499701108.png', NULL, '7300.00', NULL, 0, NULL, '1', '0', 94, 55, 76, '3000.00', '2019-07-17 23:00:00', '2019-07-29 23:00:00', '2017-07-10 19:36:17', '55', '2019-09-11 14:32:19', 1),
(63, '0063', NULL, 'NUNCA DESISTA DOS SEUS SONHOS', 'Os sonhos são como uma bússola que nos indica quais os caminhos a seguir e as metas a alcançar. São eles que nos impulsionam, nos fortalecem e nos permitem crescer. Se tivermos sonhos pequenos, a nossa capacidade de sucesso também será limitada.', 'nunca-desista-dos-seus-sonhos', NULL, 'images/2017/07/63-nunca-desista-dos-seus-sonhos-1499701779.png', NULL, '3100.00', NULL, 0, NULL, '1', '0', 94, 65, 76, '0.00', '2020-09-09 16:18:34', '2020-09-09 23:00:00', '2017-07-10 19:42:34', '19', '2019-09-06 15:21:55', 1),
(64, '0064', NULL, 'REVOLUCIONE A SUA QUALIDADE DE VIDA', 'Qualidade de vida  todos sonhamos com ela, mas normalmente associamo-lo á estabilidade e a vida financeira. Pensamos que ter qualidade de vida significa ter uma boa casa, um carro vistoso, um salário chorudo...mas pararmos para reflectir, percebemos que não é isso.', 'revolucione-a-sua-qualidade-de-vida', NULL, 'images/2017/07/64-revolucione-a-sua-qualidade-de-vida-1499702060.png', NULL, '5900.00', NULL, 0, NULL, '1', '1', 94, 21, 76, '0.00', '2019-07-12 16:17:42', '2019-07-22 23:00:00', '2017-07-10 19:52:48', '15', '2019-09-06 13:49:17', 1),
(65, '0065', NULL, 'PAIS BRILHANTES, PROFESSORES FASCINANTES', 'Este livro vai mudar para sempre a sua visão sobre como produzir uma educação excelente. Formar crianças e adolescentes sociáveis, felizes, livres e empreendedores é um grande desafio nos dias de hoje. A solidão nunca foi tão intensa.', 'pais-brilhantes-professores-fascinantes', NULL, 'images/2017/07/65-pais-brilhantes-professores-fascinantes-1499702609.png', NULL, '4600.00', NULL, 0, NULL, '1', '0', 94, 55, 76, '0.00', NULL, NULL, '2017-07-10 20:01:47', '31', '2019-08-26 13:57:42', 1),
(66, '0066', NULL, 'REGRAS DE TRÂNSITO', 'Pequenos guias para a aprendizagem e orientação sobre a língua portuguesa, vocabulário básico da língua inglesa, casos especiais de leitura e escrita, regras de trânsito. Ilustração agradável, uma imagem gráfica colorida e bem estruturada para uma abordagem lúdica. ', 'regras-de-transito', NULL, 'images/2017/07/66-regras-de-transito-1499779998.png', NULL, '1350.00', NULL, 0, NULL, '2', '0', 88, 55, 59, '0.00', NULL, NULL, '2017-07-11 17:27:10', '11', '2019-08-26 13:57:47', 1),
(67, '0067', NULL, 'O MEU ALFABETO', 'O meu alfabeto com este livro ilustrado e colorido, aprender as letras do alfabeto e fácil e divertido.', 'o-meu-alfabeto', NULL, 'images/2017/07/67-o-meu-alfabeto-1499781306.png', NULL, '825.00', NULL, 0, NULL, '2', '0', 88, 55, 59, '0.00', NULL, NULL, '2017-07-11 17:52:18', '23', '2019-07-30 14:59:23', 1),
(68, '0068', NULL, 'O MEU ATLAS', 'O meu atlas, concebido com o auxílio e a supervisão de especialistas angolanos, foi elaborado para te acompanhar ao logo da tua vida escolar. Nele encontras mapas políticos e hipsométricos ( mapas de relevo) de todos os continentes de Angola com e suas províncias.  ', 'o-meu-atlas', NULL, 'images/2017/07/68-o-meu-atlas-1499781999.png', NULL, '1150.00', NULL, 0, NULL, '10', '1', 88, 55, 59, '0.00', NULL, NULL, '2017-07-11 17:56:50', '18', '2019-08-23 04:20:26', 1),
(69, '0069', NULL, 'PALAVRAS EM PORTUGUÊS', 'Pequenos guias para a aprendizagem e orientação sobre a língua portuguesa, vocabulário básico da língua inglesa, casos especiais de leitura e escrita de transito. ', 'palavras-em-portugues', NULL, 'images/2017/07/69-palavras-em-portugues-1499782699.png', NULL, '1400.00', NULL, 0, NULL, '1', '0', 88, 55, 59, '950.00', '2019-07-12 16:18:54', '2019-07-23 23:00:00', '2017-07-11 18:07:48', '8', '2019-08-21 14:24:40', 1),
(70, '0070', NULL, 'MINIGRAMÁTICA DA BEATRIZ E DO MATEUS', 'Mini gramática da Beatriz e do Mateus você encontra tipos de linguagem, e muito mais acerca da língua portuguesa.', 'minigramatica-da-beatriz-e-do-mateus', NULL, 'images/2017/07/70-minigramatica-da-beatriz-e-do-mateus-1499782667.png', NULL, '1900.00', NULL, 0, NULL, '2', '0', 88, 55, 59, '0.00', NULL, NULL, '2017-07-11 18:12:45', '4', '2019-07-19 09:49:48', 1),
(71, '0071', NULL, 'COMO PREPARAR TESTES E EXAMES', 'É comum ouvir os alunos lamentarem-se porque estudam e não obtêm os resultados esperados. a falta de rendimento escolar deve-se, frequentemente, as dificuldades que grande parte dos estudantes tem em organizar o seu trabalho.', 'como-preparar-testes-e-exames', NULL, 'images/2017/07/71-como-preparar-testes-e-exames-1499782985.png', NULL, '2550.00', NULL, 0, NULL, '2', '0', 90, 55, 59, '0.00', NULL, NULL, '2017-07-11 18:18:27', '16', '2019-08-22 03:46:34', 1),
(72, '0072', NULL, 'HIGIENE', 'Higiene prática de métodos de limpeza do corpo que nos rodeiam com o objectivo de conservar e fortificar a saúde.', 'higiene', NULL, 'images/2017/07/72-higiene-1499783292.png', NULL, '700.00', NULL, 0, NULL, '2', '0', 88, 55, 59, '0.00', NULL, NULL, '2017-07-11 18:24:39', '12', '2019-08-26 13:27:49', 1),
(73, '0073', NULL, 'Guia das Profissões Auxiliar de Acção Médica', 'Esta colecção proporciona uma perspectiva integral dos saberes práticos profissionais e tecnológicos, indispensáveis ao exercício de cada profissão. Permite ao leitor compreender e adquirir, para cada profissão, as noções elementares que o tornam capaz de analisar.', 'guia-das-profissoes-auxiliar-de-accao-medica', NULL, 'images/2017/07/73-guia-das-profissoes-auxiliar-de-accao-medica-1499784046.png', NULL, '2250.00', NULL, 0, NULL, '2', '0', 88, 55, 63, '0.00', NULL, NULL, '2017-07-11 18:31:14', '62', '2020-07-29 05:04:54', 1),
(74, '0074', NULL, 'GUIA DAS PROFISSÕES ELECTRICISTA', 'Esta colecção proporciona uma perspectiva integral dos saberes práticos profissionais e tecnológicos, indispensáveis ao exercício de cada profissão. Permite ao leitor compreender e adquirir, para cada profissão, as noções elementares que o tornam capaz de analisar.', 'guia-das-profissoes-electricista', NULL, 'images/2017/07/74-guia-das-profissoes-electricista-1499784144.png', NULL, '2250.00', NULL, 0, NULL, '1', '0', 88, 55, 64, '0.00', NULL, NULL, '2017-07-11 18:41:07', '26', '2020-07-29 05:03:04', 1),
(75, '0075', NULL, 'GUIA DAS PROFISSÕES CLIMATIZAÇÃO', 'Esta colecção proporciona uma perspectiva integral dos saberes práticos profissionais e tecnológicos, indispensáveis ao exercício de cada profissão. Permite ao leitor compreender e adquirir, para cada profissão, as noções elementares que o tornam capaz de analisar.', 'guia-das-profissoes-climatizacao', NULL, 'images/2017/07/75-guia-das-profissoes-climatizacao-1499784295.png', NULL, '2250.00', NULL, 0, NULL, '2', '0', 88, 55, 64, '0.00', NULL, NULL, '2017-07-11 18:43:24', '136', '2019-09-12 10:11:43', 1),
(76, '0076', NULL, 'A SAGA DE UM PENSADOR', 'Marco Polo é um estudante de medicina, um espírito livre cheio de sonhos e expectativas. Ao entrar para a faculdade, é confrontado com uma dura realidade, a da insensibilidade e frieza dos seus professores, que não percebem que cada paciente é...', 'a-saga-de-um-pensador', NULL, 'images/2017/07/76-a-saga-de-um-pensador-1499849751.png', NULL, '7050.00', 0, 0, NULL, '1', '0', 94, 55, 76, '5000.00', '2020-07-12 10:11:00', '2020-08-20 10:11:00', '2017-07-12 12:35:13', '15', '2020-07-30 11:30:57', 1),
(77, '0077', NULL, 'F?RIAS DE VER?O HIST?RIAS DA HELLO KITTY', 'As f?rias de ver?o ...Hello Kitty, com a ajuda da sua mam?, faz uma lista das coisas divertidas que quer fazer com os seus amiguinhos. A colec??o livros de hist?ria da Hello Kitty vai levar-te a viajar pelo seu maravilhoso mundo.', 'ferias-de-verao-historias-da-hello-kitty', NULL, 'images/2017/07/77-ferias-de-verao-historias-da-hello-kitty-1499858266.png', NULL, '1100.00', 0, 1, NULL, '2', '0', 90, 55, 59, '0.00', NULL, NULL, '2017-07-12 13:14:46', '19', '2020-07-30 07:57:59', 1),
(78, '0078', NULL, 'UMA NOITE DESCANSADA HISTÓRIAS HELLO KITTY', 'Nesta bonita história, a Hello Kitty faz algumas descobertas que a ajudam a enfrentar medos e receios na hora de dormir. A colecção livros de história da Hello Kitty vai levar-te a viajar pelo seu maravilhoso mundo.', 'uma-noite-descansada-historias-hello-kitty', NULL, 'images/2017/07/78-uma-noite-descansada-historias-hello-kitty-1499858876.png', NULL, '1125.00', NULL, 0, NULL, '2', '0', 90, 55, 59, '0.00', NULL, NULL, '2017-07-12 15:23:10', '15', '2020-07-30 11:26:34', 1),
(79, '0079', NULL, 'O SONHO MÁGICO HISTÓRIAS DA HELLO KITTY', ' Nesta história, a Hello Kitty entra no mundo mágico dos sonhos e faz uma amiga especial. A colecção livros de história da Hello Kitty vai levar-te a viajar pelo seu maravilhoso mundo.', 'o-sonho-magico-historias-da-hello-kitty', NULL, 'images/2017/07/79-o-sonho-magico-historias-da-hello-kitty-1499859057.png', NULL, '1100.00', 1, 1, NULL, '2', '0', 90, 55, 61, '1000.00', '2020-07-11 10:11:00', '2020-12-22 10:11:00', '2017-07-12 15:28:48', '29', '2020-07-29 11:20:14', 1),
(81, '0081', NULL, 'O JARDIM FANTÁSTICO HISTÓRIA HELLO KITTY', ' Chegou a primavera e a Hello Kitty conhece os seres vivos que habitamno seu jardim. E tu, gostas de brincar no jardim? A colecção livros de história da Hello Kitty vai levar-te a viajar pelo seu maravilhoso mundo.', 'o-jardim-fantastico-historia-hello-kitty', NULL, 'images/2017/07/81-o-jardim-fantastico-historia-hello-kitty-1499860173.png', NULL, '1125.00', 1, 1, NULL, '2', '0', 90, 55, 59, '1000.00', '2020-07-12 10:11:00', '2020-10-20 10:11:00', '2017-07-12 15:46:26', '53', '2020-07-29 11:18:04', 1),
(82, '0082', NULL, 'O ABC DA SEDUÇÃO', 'Os dois jogadores óbvios que participam em qualquer sedução são o sedutor e o seduzido. A palavra pinga amor deve ser evitada, uma vez que é apenas utilizada num contexto ligeiramente insultuoso para referir alguém que tenta esforçadamente mas sem grande sucesso.', 'o-abc-da-seducao', NULL, 'images/2017/07/82-o-abc-da-seducao-1499860591.png', NULL, '2160.00', 2, 0, NULL, '2', '0', 90, 90, 91, '0.00', NULL, NULL, '2017-07-12 15:51:51', '208', '2020-07-29 06:08:09', 1),
(85, '0085', NULL, 'Papel de Parede NPP393101', '2vcvl cldfgl dfdfdfl sdfdfdfl fdfdfl fdfdfl', 'papel-de-parede-npp393101', NULL, 'images/2020/07/85-papel-de-parede-npp393101-1595588616.png', '<p>skdfkdfkf : sssssss ddkfdk fdf</p>\r\n<p>skdfkdfkf2 : sssssss ddkfdk fdf2</p>', '12000.00', 1, 1, '33eerrr', '3', '0', 79, 71, 73, '4000.00', '2020-07-24 19:12:00', '2020-07-30 23:00:00', '2020-07-24 11:03:09', '61', '2020-07-29 06:07:46', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `products_brands`
--

CREATE TABLE `products_brands` (
  `brand_id` int(11) UNSIGNED NOT NULL,
  `brand_title` varchar(255) DEFAULT NULL,
  `brand_image` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `brand_created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `products_brands`
--

INSERT INTO `products_brands` (`brand_id`, `brand_title`, `brand_image`, `brand_name`, `brand_created`) VALUES
(23, 'MAXELL', 'images/2017/07/maxell-1500377241.png', 'maxell', '2017-05-08 11:50:58'),
(24, 'TRANSCEND', 'images/2017/07/transcend-1500377545.png', 'transcend', '2017-05-08 11:51:13'),
(25, 'VERBATIM', 'images/2017/05/verbatim-1494250009.jpg', 'verbatim', '2017-05-08 11:51:24'),
(26, 'SONY', NULL, 'sony', '2017-05-08 11:51:37'),
(27, 'HEWLET- PACKARD', 'images/2017/07/hewlet-packard-1500376857.png', 'hewlet-packard', '2017-05-08 11:52:10'),
(28, 'MANHATTAN', 'images/2017/07/manhattan-1500377216.png', 'manhattan', '2017-05-08 11:52:23'),
(29, 'WESTERN DIGITAL', NULL, 'western-digital', '2017-05-08 11:52:30'),
(30, 'DIAMEC', NULL, 'diamec', '2017-05-08 11:52:50'),
(31, 'RICOH', NULL, 'ricoh', '2017-05-08 11:53:31'),
(32, 'TOSHIBA', 'images/2017/07/toshiba-1500377608.png', 'toshiba', '2017-05-08 11:53:42'),
(33, 'CANON', 'images/2017/07/canon-1500376328.png', 'canon', '2017-05-08 11:53:56'),
(34, 'ELTRON', NULL, 'eltron', '2017-05-08 11:54:10'),
(35, 'KONICA MINOLTA', 'images/2017/05/konica-minolta-1494249686.jpg', 'konica-minolta', '2017-05-08 11:54:16'),
(36, 'SAMSUNG', 'images/2017/05/samsung-1494249903.jpg', 'samsung', '2017-05-08 11:54:31'),
(38, 'EPSON', 'images/2017/07/epson-1500377003.png', 'epson', '2017-05-08 11:55:39'),
(39, 'NAVIGATOR', 'images/2017/07/navigator-1500377304.png', 'navigator', '2017-05-08 11:56:37'),
(40, 'LEXMARK', NULL, 'lexmark', '2017-05-08 11:57:14'),
(41, 'RISOGRAPH', NULL, 'risograph', '2017-05-08 11:57:30'),
(42, 'OKI', NULL, 'oki', '2017-05-08 11:58:14'),
(43, 'FELLOWES', 'images/2017/05/fellowes-1494249539.jpg', 'fellowes', '2017-05-08 11:58:21'),
(44, 'AMBAR', 'images/2017/07/ambar-1500376112.png', 'ambar', '2017-05-08 11:58:48'),
(46, 'TARGUS', 'images/2017/07/targus-1500377645.png', 'targus', '2017-05-08 11:59:44'),
(47, 'WINTECH', 'images/2017/07/wintech-1500377424.png', 'wintech', '2017-05-08 11:59:58'),
(48, 'HITACHI', NULL, 'hitachi', '2017-05-08 12:00:15'),
(49, 'CASE LOGIC', 'images/2017/07/case-logic-1500376355.png', 'case-logic', '2017-05-08 12:00:42'),
(50, 'MONRAY', NULL, 'monray', '2017-05-08 12:00:57'),
(51, 'SENTRY', NULL, 'sentry', '2017-05-08 12:01:12'),
(52, 'SENTRY SAFE', NULL, 'sentry-safe', '2017-05-08 12:01:25'),
(53, 'KOA', NULL, 'koa', '2017-05-08 12:01:45'),
(54, 'BROTHER', 'images/2017/07/brother-1500376304.png', 'brother', '2017-05-08 12:01:59'),
(55, 'Q-CONNECT', 'images/2017/05/q-connect-1494249871.jpg', 'q-connect', '2017-05-08 12:02:20'),
(56, 'CASIO', 'images/2017/07/casio-1500377577.png', 'casio', '2017-05-08 12:02:46'),
(57, 'PENTAX', NULL, 'pentax', '2017-05-08 12:02:59'),
(58, 'TOMTOM', 'images/2017/05/tomtom-1494249962.png', 'tomtom', '2017-05-08 12:03:11'),
(59, 'PHILIPS', 'images/2018/01/philips-1516190930.png', 'philips', '2017-05-08 12:03:52'),
(60, 'NAPOFIX', NULL, 'napofix', '2017-05-08 12:04:20'),
(61, 'JVC', NULL, 'jvc', '2017-05-08 12:04:56'),
(62, 'SKYWORTH', NULL, 'skyworth', '2017-05-08 12:05:09'),
(63, 'AVERY', 'images/2018/01/avery-1516190468.png', 'avery', '2017-05-08 12:05:45'),
(64, 'STAR', NULL, 'star', '2017-05-08 12:07:09'),
(65, 'ZEBRA', NULL, 'zebra', '2017-05-08 12:07:20'),
(66, 'XEROX', 'images/2017/05/xerox-1494250070.jpg', 'xerox', '2017-05-08 12:07:53'),
(67, 'APC -SCHNEIDER', 'images/2018/01/apc-schneider-1516190308.png', 'apc-schneider', '2017-05-08 12:08:21'),
(68, 'DELL', 'images/2017/07/dell-1500376429.png', 'dell', '2017-05-08 12:08:36'),
(69, 'EXCEL', NULL, 'excel', '2017-05-08 12:08:52'),
(70, 'INTELLINET', NULL, 'intellinet', '2017-05-08 12:09:06'),
(71, 'BRAND-REX', 'images/2017/07/brand-rex-1500376280.png', 'brand-rex', '2017-05-08 12:09:19'),
(72, 'DLINK', 'images/2017/05/dlink-1494249460.jpg', 'dlink', '2017-05-08 12:10:35'),
(73, 'LENOVO', NULL, 'lenovo', '2017-05-08 12:11:35'),
(74, 'EVERKI', 'images/2018/01/everki-1516190638.png', 'everki', '2017-05-08 12:12:20'),
(75, 'SENA', NULL, 'sena', '2017-05-08 12:13:24'),
(76, 'LOGITECH', 'images/2017/07/logitech-1500377188.png', 'logitech', '2017-05-08 12:14:41'),
(77, 'KASPERSKY', 'images/2017/07/kaspersky-1500377120.png', 'kaspersky', '2017-05-08 12:15:59'),
(78, 'LINKSYS', NULL, 'linksys', '2017-05-08 12:17:09'),
(79, 'CREATIVE', 'images/2017/07/creative-1500376409.png', 'creative', '2017-05-08 12:17:20'),
(80, 'GENIUS', 'images/2017/07/genius-1500376706.png', 'genius', '2017-05-08 12:17:50'),
(81, 'GOLDTOUCH', NULL, 'goldtouch', '2017-05-08 12:18:24'),
(82, 'NGS', NULL, 'ngs', '2017-05-08 12:19:03'),
(83, 'PANDA', NULL, 'panda', '2017-05-08 12:19:55'),
(84, 'MICROSOFT', 'images/2017/07/microsoft-1500377271.png', 'microsoft', '2017-05-08 12:20:05'),
(85, 'QSONIC', NULL, 'qsonic', '2017-05-08 12:21:03'),
(86, 'SWAN', NULL, 'swan', '2017-05-08 12:21:36'),
(88, 'PLURAL EDITORES', 'images/2017/07/plural-editores-1500377338.png', 'plural-editores', '2017-07-08 16:54:06'),
(89, 'GESTÃO PLUS', 'images/2017/07/gestao-plus-1500376751.png', 'gestao-plus', '2017-07-08 17:30:28'),
(90, 'PORTO EDITORA', 'images/2017/07/porto-editora-1500377383.png', 'porto-editora', '2017-07-08 17:55:49'),
(91, 'ARTEPLURAL EDIÇÕES ', 'images/2017/07/arteplural-edicoes-1500376140.png', 'arteplural-edicoes', '2017-07-08 18:12:14'),
(92, 'BERTRAND EDITORA', 'images/2017/07/bertrand-editora-1500376254.png', 'bertrand-editora', '2017-07-08 19:36:35'),
(93, 'SEXTANTE EDITORA', 'images/2017/07/sextante-editora-1500377744.png', 'sextante-editora', '2017-07-08 19:45:54'),
(94, 'EDITORA PERGAMINBO', 'images/2017/07/editora-pergaminbo-1500376482.png', 'editora-pergaminbo', '2017-07-10 17:54:06'),
(95, 'PAPCERO', 'images/2018/01/papcero-1516190893.png', 'papcero', '2017-07-20 15:30:29'),
(96, 'STYLO', 'images/2018/01/stylo-1516191098.png', 'stylo', '2017-07-24 18:03:00'),
(97, 'BARROT', 'images/2018/01/barrot-1516190188.png', 'barrot', '2017-07-28 15:32:10'),
(98, 'STAEDTLER', 'images/2018/01/staedtler-1516191013.png', 'staedtler', '2017-07-28 15:54:56'),
(99, 'MAPED', 'images/2018/01/maped-1516190794.png', 'maped', '2017-07-28 16:02:16'),
(100, 'OUTROS FABRICANTES', 'images/2018/01/outros-fabricantes-1516190854.png', 'outros-fabricantes', '2017-08-09 16:06:32'),
(101, 'STAPLES', 'images/2018/01/staples-1516191048.png', 'staples', '2017-08-09 17:19:37'),
(103, 'SCHOOLMAX', 'images/2018/01/schoolmax-1516190968.png', 'schoolmax', '2017-08-09 18:34:27'),
(105, 'DISNEY', 'images/2018/01/disney-1516190587.png', 'disney', '2017-08-09 18:37:41'),
(110, 'BRAVO', 'images/2018/01/bravo-1516190558.png', 'bravo', '2017-09-27 19:50:33'),
(111, 'UHU', 'images/2018/01/uhu-1516191144.png', 'uhu', '2017-10-02 15:34:58'),
(112, 'FIRMO', 'images/2018/01/firmo-1516190748.png', 'firmo', '2017-12-18 17:30:46');

-- --------------------------------------------------------

--
-- Estrutura para tabela `products_categories`
--

CREATE TABLE `products_categories` (
  `cat_id` int(11) UNSIGNED NOT NULL,
  `cat_parent` int(11) UNSIGNED DEFAULT NULL,
  `cat_title` varchar(255) DEFAULT NULL,
  `cat_name` varchar(255) DEFAULT NULL,
  `cat_sizes` varchar(255) DEFAULT NULL,
  `cat_icon` text,
  `cat_created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `products_categories`
--

INSERT INTO `products_categories` (`cat_id`, `cat_parent`, `cat_title`, `cat_name`, `cat_sizes`, `cat_icon`, `cat_created`) VALUES
(1, NULL, 'Informática', 'informatica', NULL, '                                        ', '2017-05-08 11:07:18'),
(2, 1, 'Computadores', 'computadores', NULL, '', '2017-05-08 11:07:44'),
(3, 1, 'Mouse e Teclados', 'mouse-e-teclados', NULL, '', '2017-05-08 11:08:42'),
(4, 1, 'Auriculares', 'auriculares', NULL, '', '2017-05-08 11:09:50'),
(5, 1, 'Colunas', 'colunas', NULL, '', '2017-05-08 11:10:11'),
(6, 1, 'Pen Drive\'s', 'pen-drive-s', NULL, '', '2017-05-08 11:10:25'),
(7, 1, 'HD\'s Interno e Externo', 'hd-s-interno-e-externo', NULL, '', '2017-05-08 11:10:56'),
(8, 1, 'UPS', 'ups', NULL, '', '2017-05-08 11:11:28'),
(9, 1, 'CD, DVD, Cassetes e Outros', 'cd-dvd-cassetes-e-outros', NULL, '', '2017-05-08 11:11:41'),
(10, 1, 'Monitor', 'monitor', NULL, '', '2017-05-08 11:12:15'),
(11, 1, 'Web Câmera', 'web-camera', NULL, '', '2017-05-08 11:12:29'),
(12, 1, 'Cartões de Memória', 'cartoes-de-memoria', NULL, '', '2017-05-08 11:12:57'),
(13, 1, 'Moden/Router', 'moden-router', NULL, '', '2017-05-08 11:13:25'),
(14, 1, 'Hub/Switch', 'hub-switch', NULL, '', '2017-05-08 11:13:55'),
(15, 1, 'Cabos de Rede', 'cabos-de-rede', NULL, '', '2017-05-08 11:14:22'),
(16, 1, 'Patch Pannel', 'patch-pannel', NULL, '', '2017-05-08 11:14:45'),
(17, 1, 'Cabos e Adaptadores', 'cabos-e-adaptadores', NULL, '', '2017-05-08 11:15:16'),
(18, 1, 'Carregadores/Baterias', 'carregadores-baterias', NULL, '', '2017-05-08 11:16:03'),
(19, 1, 'Caixas Externas', 'caixas-externas', NULL, '', '2017-05-08 11:16:50'),
(20, 1, 'Impressoras', 'impressoras', NULL, '', '2017-05-08 11:17:21'),
(21, NULL, 'Material de Escritório', 'material-de-escritorio', NULL, '', '2017-05-08 11:17:43'),
(22, 21, 'Pastas de Arquivo', 'pastas-de-arquivo', NULL, '', '2017-05-08 11:18:15'),
(23, 21, 'Máquina Plastificar', 'maquina-plastificar', NULL, '', '2017-05-08 11:18:46'),
(24, 21, 'Máquina Encardenar', 'maquina-encardenar', NULL, '', '2017-05-08 11:19:14'),
(25, 21, 'Guilhotinas', 'guilhotinas', NULL, '', '2017-05-08 11:19:48'),
(26, 21, 'Perfuradores', 'perfuradores', NULL, '', '2017-05-08 11:20:13'),
(27, 21, 'Clips', 'clips', NULL, '', '2017-05-08 11:20:40'),
(28, 21, 'Fitas/Colas', 'fitas-colas', NULL, '', '2017-05-08 11:21:10'),
(29, 21, 'Calculadoras', 'calculadoras', NULL, '', '2017-05-08 11:21:28'),
(30, 21, 'Argolas Plásticas', 'argolas-plasticas', NULL, '', '2017-05-08 11:22:32'),
(31, 21, 'Separadores e Suporte de Documentos', 'separadores-e-suporte-de-documentos', NULL, '', '2017-05-08 11:23:04'),
(32, 21, 'Notas Adesivas', 'notas-adesivas', NULL, '', '2017-05-08 11:24:01'),
(33, 21, 'Capas de Encardenar', 'capas-de-encardenar', NULL, '', '2017-05-08 11:24:25'),
(34, 21, 'Agrafadores/Agrafos', 'agrafadores-agrafos', NULL, '', '2017-05-08 11:24:53'),
(35, 21, 'Envelopes', 'envelopes', NULL, '', '2017-05-08 11:25:30'),
(36, 21, 'Material de Corte', 'material-de-corte', NULL, '', '2017-05-08 11:25:49'),
(37, 21, 'Agendas', 'agendas', NULL, '', '2017-05-08 11:26:38'),
(38, 21, 'Quadros/Apagadores', 'quadros-apagadores', NULL, '', '2017-05-08 11:27:23'),
(39, 21, 'Bolsas/Micas', 'bolsas-micas', NULL, '', '2017-05-08 11:28:07'),
(40, 21, 'Bloco Tomadas', 'bloco-tomadas', NULL, '', '2017-05-08 11:28:31'),
(41, NULL, 'Material Escolar', 'material-escolar', NULL, '', '2017-05-08 11:29:11'),
(42, 41, 'Estojos', 'estojos', NULL, '', '2017-05-08 11:29:47'),
(43, 41, 'Cadernos', 'cadernos', NULL, '', '2017-05-08 11:30:03'),
(44, 41, 'Pinturas e Cores', 'pinturas-e-cores', NULL, '', '2017-05-08 11:30:19'),
(45, 41, 'Lápis e Afiadores', 'lapis-e-afiadores', NULL, '', '2017-05-08 11:30:49'),
(46, 41, 'Esferográficas e Canetas', 'esferograficas-e-canetas', NULL, '', '2017-05-08 11:31:15'),
(47, 41, 'Pepel Crepe e Crepon', 'pepel-crepe-e-crepon', NULL, '', '2017-05-08 11:31:56'),
(48, 41, 'Borrachas', 'borrachas', NULL, '', '2017-05-08 11:32:57'),
(49, 41, 'Plasticinas', 'plasticinas', NULL, '', '2017-05-08 11:33:20'),
(50, 41, 'Porta Minas', 'porta-minas', NULL, '', '2017-05-08 11:33:46'),
(51, 41, 'Cartolinas', 'cartolinas', NULL, '', '2017-05-08 11:34:07'),
(52, 41, 'Marcadores/Corretores/Giz', 'marcadores-corretores-giz', NULL, '', '2017-05-08 11:34:29'),
(53, 41, 'Capas', 'capas', NULL, '', '2017-05-08 11:36:41'),
(54, 41, 'Réguas', 'reguas', NULL, '', '2017-05-08 11:37:06'),
(55, NULL, 'Livros', 'livros', NULL, '', '2017-05-08 11:37:46'),
(56, 55, 'Dicionários', 'dicionarios', NULL, '', '2017-05-08 11:38:13'),
(57, 55, 'Mapas', 'mapas', NULL, '', '2017-05-08 11:38:33'),
(58, 55, 'Legislação', 'legislacao', NULL, '', '2017-05-08 11:38:59'),
(59, 55, 'Infantil/Juvenil', 'infantil-juvenil', NULL, '', '2017-05-08 11:39:20'),
(60, 55, 'Romance', 'romance', NULL, '', '2017-05-08 11:39:52'),
(61, 55, 'Literatura Nacional', 'literatura-nacional', NULL, '', '2017-05-08 11:40:09'),
(62, 55, 'Administração e Negócios', 'administracao-e-negocios', NULL, '', '2017-05-08 11:40:39'),
(63, 55, 'Medicina e Saúde', 'medicina-e-saude', NULL, '', '2017-05-08 11:41:24'),
(64, 55, 'Livros Didáticos', 'livros-didaticos', NULL, '', '2017-05-08 11:41:50'),
(65, NULL, 'Consumíveis', 'consumiveis', NULL, '', '2017-05-08 11:42:44'),
(66, 65, 'Tinteiros', 'tinteiros', NULL, '', '2017-05-08 11:43:15'),
(67, 65, 'Toners', 'toners', NULL, '', '2017-05-08 11:43:31'),
(68, 65, 'Papel ', 'papel', NULL, '', '2017-05-08 11:43:45'),
(69, 65, 'Kit Limpeza', 'kit-limpeza', NULL, '', '2017-05-08 11:44:15'),
(70, 65, 'Outros Consumíveis', 'outros-consumiveis', NULL, '', '2017-05-08 11:44:34'),
(71, NULL, 'Bolsas e Mochilas', 'bolsas-e-mochilas', NULL, '                                                                                                ', '2017-05-08 11:45:18'),
(72, 71, 'Bolsas', 'bolsas', NULL, 'eeee', '2017-05-08 11:45:46'),
(73, 71, 'Mochilas', 'mochilas', NULL, '', '2017-05-08 11:46:01'),
(74, 71, 'Malas Infantil', 'malas-infantil', NULL, '', '2017-05-08 11:46:15'),
(75, 71, 'Mochilas Infantil', 'mochilas-infantil', NULL, '', '2017-05-08 11:46:42'),
(76, 55, 'Literatura Estrangeira', 'literatura-estrangeira', NULL, '', '2017-07-08 16:57:29'),
(82, 41, 'Giz', 'giz', NULL, '', '2017-07-28 13:48:45'),
(83, 1, 'POS/Gavetas', 'pos-gavetas', NULL, '', '2017-07-28 20:02:51'),
(84, NULL, 'Telemóvel e Electrodoméstico', 'telemovel-e-electrodomestico', NULL, '', '2017-11-06 13:15:39'),
(85, 84, 'Telemóvel/Smrtphone', 'telemovel-smrtphone', NULL, '', '2017-11-06 13:17:36'),
(86, 41, 'Compasso', 'compasso', NULL, '', '2017-11-06 14:38:16'),
(87, 21, 'Bloco de Apontamento', 'bloco-de-apontamento', NULL, '', '2017-12-18 17:31:12'),
(88, 21, 'Cofres', 'cofres', NULL, '', '2018-06-11 16:00:30'),
(89, 41, 'Cola', 'cola', NULL, '', '2018-06-11 16:52:09'),
(90, NULL, 'Papel de Parede', 'papel-de-parede', NULL, '', '2019-07-22 23:00:00'),
(91, 90, 'Papel de Parede', 'papel-de-parede-91', NULL, '', '2019-09-06 14:11:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `products_coupons`
--

CREATE TABLE `products_coupons` (
  `cp_id` int(11) UNSIGNED NOT NULL,
  `cp_title` varchar(255) DEFAULT NULL,
  `cp_coupon` varchar(255) DEFAULT NULL,
  `cp_discount` decimal(11,0) DEFAULT NULL,
  `cp_start` timestamp NULL DEFAULT NULL,
  `cp_end` timestamp NULL DEFAULT NULL,
  `cp_hits` decimal(11,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `products_coupons`
--

INSERT INTO `products_coupons` (`cp_id`, `cp_title`, `cp_coupon`, `cp_discount`, `cp_start`, `cp_end`, `cp_hits`) VALUES
(1, 'Inauguração do site', 'is09', '10', '2017-09-14 12:46:00', '2017-10-15 11:46:00', '1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `products_gallery`
--

CREATE TABLE `products_gallery` (
  `product_id` int(11) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `products_gallery`
--

INSERT INTO `products_gallery` (`product_id`, `id`, `image`) VALUES
(62, 2, 'images/2019/08/62-1-1566448745mtu2njq0odc0nq.jpg'),
(62, 3, 'images/2019/08/62-1-1566448754mtu2njq0odc1na.jpg'),
(62, 4, 'images/2019/08/62-1-1566448759mtu2njq0odc1oq.jpg'),
(85, 5, 'images/2020/07/85-1-1596001619mtu5njawmtyxoq.png'),
(85, 6, 'images/2020/07/85-1-1596001629mtu5njawmtyyoq.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `products_images`
--

CREATE TABLE `products_images` (
  `product_id` int(11) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `products_stock`
--

CREATE TABLE `products_stock` (
  `stock_id` int(11) UNSIGNED NOT NULL,
  `pdt_id` int(11) UNSIGNED NOT NULL,
  `stock_code` varchar(255) NOT NULL DEFAULT '',
  `stock_inventory` decimal(10,0) NOT NULL DEFAULT '0',
  `stock_sold` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `products_stock`
--

INSERT INTO `products_stock` (`stock_id`, `pdt_id`, `stock_code`, `stock_inventory`, `stock_sold`) VALUES
(48, 60, 'default', '2', '0'),
(49, 61, 'default', '1', '0'),
(52, 64, 'default', '2', '0'),
(53, 65, 'default', '1', '0'),
(54, 66, 'default', '2', '0'),
(55, 67, 'default', '2', '0'),
(56, 68, 'default', '11', '0'),
(57, 69, 'default', '1', '0'),
(58, 70, 'default', '2', '0'),
(59, 71, 'default', '2', '0'),
(60, 72, 'default', '2', '0'),
(61, 73, 'default', '2', '0'),
(62, 74, 'default', '1', '0'),
(63, 75, 'default', '2', '0'),
(65, 77, 'default', '2', '0'),
(66, 78, 'default', '2', '0'),
(67, 79, 'default', '2', '0'),
(69, 81, 'default', '2', '0'),
(70, 82, 'default', '2', '0'),
(343, 76, 'default', '1', '0'),
(419, 62, 'default', '1', '0'),
(420, 63, 'default', '1', '0'),
(421, 59, 'default', '0', '0'),
(422, 56, 'default', '0', '0'),
(424, 85, 'default', '3', '0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `product_type`
--

CREATE TABLE `product_type` (
  `product_type_id` int(50) NOT NULL,
  `product_type_name` text COLLATE latin1_general_ci NOT NULL,
  `product_type_title` text COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Despejando dados para a tabela `product_type`
--

INSERT INTO `product_type` (`product_type_id`, `product_type_name`, `product_type_title`) VALUES
(1, 'quarto', 'QUARTO'),
(2, 'sala', 'SALA'),
(3, 'cozinha', 'COZINHA'),
(4, 'casa-de-banho-22', 'CASA DE BANHO 22'),
(5, 'quarto-infantil', 'QUARTO INFANTIL'),
(6, 'quarto-femino', 'QUARTO FEMININO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `publicity`
--

CREATE TABLE `publicity` (
  `publicity_id` int(11) NOT NULL,
  `publicity_name` text COLLATE latin1_general_ci,
  `publicity_title` text COLLATE latin1_general_ci,
  `publicity_cover` text COLLATE latin1_general_ci,
  `publicity_position` int(11) DEFAULT NULL,
  `publicity_start` timestamp NULL DEFAULT NULL,
  `publicity_end` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `publicity_link` text COLLATE latin1_general_ci NOT NULL,
  `publicity_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Despejando dados para a tabela `publicity`
--

INSERT INTO `publicity` (`publicity_id`, `publicity_name`, `publicity_title`, `publicity_cover`, `publicity_position`, `publicity_start`, `publicity_end`, `publicity_link`, `publicity_status`) VALUES
(1, 'dasdsd', 'Publicidade 1', 'images/2020/07/dasdsd-1595907019.jpg', 2, '2030-10-31 23:00:00', '2030-10-31 23:00:00', '', 1),
(4, 'publicidade-2', 'Publicidade 2', 'images/2020/07/publicidade-2-1595908110.jpg', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `search`
--

CREATE TABLE `search` (
  `search_id` int(11) UNSIGNED NOT NULL,
  `search_key` varchar(255) DEFAULT NULL,
  `search_count` decimal(11,0) DEFAULT NULL,
  `search_date` timestamp NULL DEFAULT NULL,
  `search_commit` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `search`
--

INSERT INTO `search` (`search_id`, `search_key`, `search_count`, `search_date`, `search_commit`) VALUES
(1, 'regua', '2', '2017-10-04 14:30:17', '2018-01-26 16:07:02'),
(2, 'wifi', '1', '2017-10-04 15:21:42', '2017-10-04 15:21:42'),
(3, 'regras', '1', '2017-10-04 18:58:08', '2017-10-04 18:58:08'),
(4, 'teclado', '2', '2017-10-06 21:50:08', '2017-10-09 08:18:09'),
(5, 'rato', '1', '2017-10-06 21:50:15', '2017-10-06 21:50:15'),
(6, 'mochila', '3', '2017-10-06 21:50:25', '2017-12-19 09:37:33'),
(7, 'mouse', '1', '2017-10-09 12:17:22', '2017-10-09 12:17:22'),
(8, 'th 934', '1', '2017-10-09 14:44:45', '2017-10-09 14:44:45'),
(9, 'tinteiro 934', '1', '2017-10-09 14:45:35', '2017-10-09 14:45:35'),
(10, 'fe baguetes', '1', '2017-10-11 16:14:35', '2017-10-11 16:14:35'),
(11, 'GUACHI PANDA', '1', '2017-10-11 19:07:39', '2017-10-11 19:07:39'),
(12, 'LAPISEIRA BRAVO', '1', '2017-10-12 13:41:05', '2017-10-12 13:41:05'),
(13, 'as regras de ouvo dos casais saudáveis', '2', '2017-10-13 13:07:09', '2017-10-13 09:17:36'),
(14, 'Pais', '1', '2017-10-13 14:59:55', '2017-10-13 14:59:55'),
(15, 'As regras', '1', '2017-10-13 15:00:44', '2017-10-13 15:00:44'),
(16, 'Regras dos casais', '1', '2017-10-13 15:01:12', '2017-10-13 15:01:12'),
(17, 'IMPRESSORA', '5', '2017-10-13 19:26:11', '2018-03-13 09:16:33'),
(18, 'as regras de ouro', '1', '2017-10-16 11:28:48', '2017-10-16 11:28:48'),
(19, 'as', '1', '2017-10-16 12:27:23', '2017-10-16 12:27:23'),
(20, 'laterna', '1', '2017-10-16 12:54:31', '2017-10-16 12:54:31'),
(21, 'mata mosquito', '1', '2017-10-16 12:54:48', '2017-10-16 12:54:48'),
(22, 'CARREGADOR', '15', '2017-10-16 12:55:15', '2018-06-11 11:40:45'),
(23, 'lanterna', '1', '2017-10-16 12:55:46', '2017-10-16 12:55:46'),
(24, 'cabo', '2', '2017-10-18 17:31:01', '2018-06-11 11:31:00'),
(25, 'capa', '1', '2017-10-18 17:31:26', '2017-10-18 17:31:26'),
(26, 'bolsa', '1', '2017-10-18 17:31:47', '2017-10-18 17:31:47'),
(27, 'pilha', '1', '2017-10-23 13:37:05', '2017-10-23 13:37:05'),
(28, 'impressoras', '5', '2017-10-28 16:02:57', '2017-11-25 21:52:16'),
(29, 'MARCADOR', '3', '2017-11-06 15:25:02', '2018-03-02 08:40:56'),
(30, 'TESOURA', '1', '2017-11-06 17:45:12', '2017-11-06 17:45:12'),
(31, 'Coluna', '3', '2017-11-09 00:34:30', '2017-12-20 13:28:17'),
(32, 'impressoras tonel', '1', '2017-11-26 00:47:19', '2017-11-26 00:47:19'),
(33, 'impressoras A3 e A4', '1', '2017-11-26 00:51:28', '2017-11-26 00:51:28'),
(34, 'Rolo etiqueta 55x64', '1', '2017-11-26 16:37:58', '2017-11-26 16:37:58'),
(35, 'fotocopiadoras A3', '1', '2017-11-27 23:22:07', '2017-11-27 23:22:07'),
(36, 'Estabilizador eintech', '1', '2017-12-07 22:49:01', '2017-12-07 22:49:01'),
(37, 'CADERNO', '2', '2017-12-14 16:43:18', '2018-01-26 16:03:22'),
(38, 'Estabilizador energia', '1', '2017-12-18 00:13:05', '2017-12-18 00:13:05'),
(39, 'BORRACHA', '2', '2017-12-18 17:39:57', '2018-01-26 16:42:38'),
(40, 'MOCHILAS', '2', '2017-12-19 12:36:52', '2018-01-18 14:51:51'),
(41, 'desenho', '1', '2017-12-20 14:22:32', '2017-12-20 14:22:32'),
(42, 'tinteiro 933', '1', '2017-12-20 14:28:15', '2017-12-20 14:28:15'),
(43, '932', '1', '2017-12-20 14:28:31', '2017-12-20 14:28:31'),
(44, 'tinteiro 932', '1', '2017-12-20 14:28:51', '2017-12-20 14:28:51'),
(45, 'establizador', '2', '2018-01-12 11:21:13', '2018-01-17 08:44:49'),
(46, 'Pa', '1', '2018-01-18 18:27:48', '2018-01-18 18:27:48'),
(47, 'path', '1', '2018-01-23 17:14:40', '2018-01-23 17:14:40'),
(48, 'clip', '1', '2018-01-26 18:52:19', '2018-01-26 18:52:19'),
(49, 'cola', '2', '2018-01-26 18:53:13', '2018-06-11 12:48:13'),
(50, 'agrafador', '3', '2018-01-26 18:55:32', '2018-03-05 07:21:04'),
(51, 'agrafos', '2', '2018-01-26 18:56:03', '2018-03-07 17:33:12'),
(52, 'anel', '1', '2018-01-26 18:57:36', '2018-01-26 18:57:36'),
(53, 'apagador', '1', '2018-01-26 19:02:03', '2018-01-26 19:02:03'),
(54, 'pasta', '1', '2018-01-26 19:02:46', '2018-01-26 19:02:46'),
(55, 'carderno', '1', '2018-01-26 19:03:17', '2018-01-26 19:03:17'),
(56, 'calculador', '1', '2018-01-26 19:04:30', '2018-01-26 19:04:30'),
(57, 'calcular', '1', '2018-01-26 19:04:39', '2018-01-26 19:04:39'),
(58, 'máquina', '6', '2018-01-26 19:04:48', '2019-08-26 15:01:57'),
(59, 'pino', '1', '2018-01-26 19:05:30', '2018-01-26 19:05:30'),
(60, 'papel', '2', '2018-01-26 19:05:56', '2018-03-13 09:13:08'),
(61, 'plastificar', '1', '2018-01-26 19:15:49', '2018-01-26 19:15:49'),
(62, 'folha', '1', '2018-01-26 19:15:58', '2018-01-26 19:15:58'),
(63, 'cola branca', '1', '2018-01-26 19:16:50', '2018-01-26 19:16:50'),
(64, 'mina', '1', '2018-01-26 19:17:07', '2018-01-26 19:17:07'),
(65, 'arquivo', '1', '2018-01-26 19:26:35', '2018-01-26 19:26:35'),
(66, 'fita cola', '2', '2018-01-26 19:27:20', '2018-04-06 17:32:19'),
(67, 'corretor', '1', '2018-01-26 19:46:46', '2018-01-26 19:46:46'),
(68, 'grampos', '1', '2018-01-26 19:47:36', '2018-01-26 19:47:36'),
(69, 'papel a3', '1', '2018-01-26 19:51:26', '2018-01-26 19:51:26'),
(70, 'Caneta de giz', '1', '2018-02-06 16:49:32', '2018-02-06 16:49:32'),
(71, 'caneta giz', '1', '2018-02-06 16:49:50', '2018-02-06 16:49:50'),
(72, 'Caneta gis', '1', '2018-02-06 16:51:23', '2018-02-06 16:51:23'),
(73, 'Gramática da abelhinha', '1', '2018-02-14 15:25:31', '2018-02-14 15:25:31'),
(74, 'Clips', '1', '2018-02-19 19:29:09', '2018-02-19 19:29:09'),
(75, 'Material da terceira classe', '1', '2018-02-28 14:55:37', '2018-02-28 14:55:37'),
(76, 'Livros da terceira classe', '1', '2018-02-28 14:56:47', '2018-02-28 14:56:47'),
(77, 'factura', '1', '2018-03-02 00:21:50', '2018-03-02 00:21:50'),
(78, 'livro de ponto', '1', '2018-03-02 12:48:32', '2018-03-02 12:48:32'),
(79, 'pequenos kambas', '1', '2018-03-04 05:22:26', '2018-03-04 05:22:26'),
(80, 'saber ler e escrever bem', '1', '2018-03-06 19:03:32', '2018-03-06 19:03:32'),
(81, 'maquina fotografica', '1', '2018-03-13 13:14:55', '2018-03-13 13:14:55'),
(82, 'fotocopiadora', '1', '2018-03-13 13:16:19', '2018-03-13 13:16:19'),
(83, '940', '1', '2018-03-13 13:17:33', '2018-03-13 13:17:33'),
(84, '933', '2', '2018-03-13 13:17:51', '2018-03-14 07:18:52'),
(85, 'Contabilidade Geral', '1', '2018-03-21 00:02:30', '2018-03-21 00:02:30'),
(86, 'cf210', '1', '2018-03-22 15:28:03', '2018-03-22 15:28:03'),
(87, 'pa navigator', '1', '2018-03-22 17:36:16', '2018-03-22 17:36:16'),
(88, '652', '1', '2018-03-28 17:51:09', '2018-03-28 17:51:09'),
(89, '1115', '1', '2018-03-29 20:19:23', '2018-03-29 20:19:23'),
(90, 'deskejet 1115', '1', '2018-03-29 20:20:08', '2018-03-29 20:20:08'),
(91, 'A cabra da minha mãe', '2', '2018-04-06 09:24:10', '2018-04-13 06:56:23'),
(92, 'Ups 800w', '1', '2018-04-06 19:36:12', '2018-04-06 19:36:12'),
(93, 'Ups', '2', '2018-04-06 19:36:50', '2018-05-08 17:19:39'),
(94, 'TV,S', '1', '2018-04-12 18:21:16', '2018-04-12 18:21:16'),
(95, 'PLAY STATION', '1', '2018-04-12 18:26:31', '2018-04-12 18:26:31'),
(96, 'Tinteiro 122', '1', '2018-04-13 13:11:57', '2018-04-13 13:11:57'),
(97, 'Tinteiro', '4', '2018-04-13 13:13:09', '2018-04-15 06:31:37'),
(98, 'prestacao de servico codigo da conta', '1', '2018-04-19 12:00:04', '2018-04-19 12:00:04'),
(99, 'Cabra da minha mãe', '1', '2018-04-20 02:03:56', '2018-04-20 02:03:56'),
(100, 'Cabra da minha mãe pdf', '1', '2018-04-20 02:04:46', '2018-04-20 02:04:46'),
(101, 'computador', '1', '2018-04-26 17:05:11', '2018-04-26 17:05:11'),
(102, 'alert (document.cookie)', '1', '2018-04-26 17:18:17', '2018-04-26 17:18:17'),
(103, 'XSS', '1', '2018-04-26 17:19:42', '2018-04-26 17:19:42'),
(104, 'cofre', '2', '2018-04-30 17:26:27', '2018-06-11 11:54:44'),
(105, 'tinteiro hp 650', '1', '2018-04-30 21:54:24', '2018-04-30 21:54:24'),
(106, 'A corrida dos ratos', '1', '2018-04-30 22:23:30', '2018-04-30 22:23:30'),
(107, 'Pai rico pai pobre', '1', '2018-04-30 22:23:46', '2018-04-30 22:23:46'),
(108, 'o homem é aquilo q ele pensa', '1', '2018-04-30 22:25:43', '2018-04-30 22:25:43'),
(109, 'estabilizador', '2', '2018-05-02 18:48:11', '2018-06-05 19:43:36'),
(110, 'DI', '1', '2018-05-07 14:15:06', '2018-05-07 14:15:06'),
(111, 'Cartao de memoria', '1', '2018-05-08 09:34:10', '2018-05-08 09:34:10'),
(112, 'wintech', '2', '2018-05-08 21:19:01', '2018-05-30 10:12:40'),
(113, 'separadores', '1', '2018-05-09 18:44:32', '2018-05-09 18:44:32'),
(114, 'pais brilhantes', '2', '2018-05-10 12:57:38', '2018-05-10 09:32:52'),
(115, 'a bola', '1', '2018-05-10 13:32:53', '2018-05-10 13:32:53'),
(116, '10 leis', '1', '2018-05-10 13:42:11', '2018-05-10 13:42:11'),
(117, 'dez leis', '1', '2018-05-10 13:42:20', '2018-05-10 13:42:20'),
(118, 'Pratica de Contabilidade', '1', '2018-05-10 16:31:26', '2018-05-10 16:31:26'),
(119, 'constituição', '1', '2018-05-10 18:00:22', '2018-05-10 18:00:22'),
(120, 'computador hp', '1', '2018-05-21 13:10:02', '2018-05-21 13:10:02'),
(121, 'Máquinas copiadoras', '1', '2018-05-22 01:39:02', '2018-05-22 01:39:02'),
(122, 'refletor', '1', '2018-05-22 19:42:17', '2018-05-22 19:42:17'),
(123, 'reflector', '1', '2018-05-22 19:42:31', '2018-05-22 19:42:31'),
(124, 'AGENDA', '2', '2018-06-04 15:26:59', '2018-06-11 10:47:44'),
(125, 'caixa de lapis', '1', '2018-06-06 18:34:14', '2018-06-06 18:34:14'),
(126, 'agen', '1', '2018-06-11 14:47:17', '2018-06-11 14:47:17'),
(127, 'a', '2', '2018-06-11 14:47:35', '2019-08-26 15:26:51'),
(128, 'BLOCO', '1', '2018-06-11 15:11:18', '2018-06-11 15:11:18'),
(129, 'FONES', '1', '2018-06-11 18:36:08', '2018-06-11 18:36:08'),
(130, 'HS', '1', '2018-06-11 18:36:15', '2018-06-11 18:36:15'),
(131, 'GAVETA', '1', '2018-06-11 19:09:42', '2018-06-11 19:09:42'),
(132, '', '2', '2019-07-31 06:08:23', '2020-07-31 04:38:09'),
(133, 'Judson Artur', '1', '2019-07-31 16:03:11', '2019-07-31 16:03:11'),
(134, 'Hello', '1', '2019-07-31 16:08:33', '2019-07-31 16:08:33'),
(135, 'Luanda', '1', '2019-07-31 16:11:08', '2019-07-31 16:11:08'),
(136, 'abc', '1', '2019-09-06 14:13:33', '2019-09-06 14:13:33'),
(137, '2', '1', '2020-07-31 04:56:44', '2020-07-31 04:56:44'),
(138, 'img', '1', '2020-07-31 04:56:44', '2020-07-31 04:56:44'),
(139, 'deg', '1', '2020-07-31 04:58:37', '2020-07-31 04:58:37'),
(140, 'fo', '1', '2020-07-31 05:01:10', '2020-07-31 05:01:10'),
(141, 'p', '1', '2020-07-31 05:01:27', '2020-07-31 05:01:27'),
(142, 'de', '1', '2020-07-31 05:08:51', '2020-07-31 05:08:51'),
(143, 'bg', '1', '2020-07-31 05:09:10', '2020-07-31 05:09:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sell`
--

CREATE TABLE `sell` (
  `order_id` int(11) UNSIGNED NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT '0',
  `order_payment` int(11) NOT NULL DEFAULT '1',
  `order_price` decimal(11,2) NOT NULL DEFAULT '0.00',
  `order_installments` decimal(10,0) DEFAULT NULL,
  `order_installment` decimal(11,2) DEFAULT NULL,
  `order_coupon` decimal(11,0) DEFAULT NULL,
  `order_free` decimal(11,2) DEFAULT NULL,
  `order_billet` varchar(255) DEFAULT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `order_addr` int(11) DEFAULT NULL,
  `order_shipcode` int(11) DEFAULT NULL,
  `order_shipprice` decimal(11,2) DEFAULT NULL,
  `order_shipment` date DEFAULT NULL,
  `order_tracking` varchar(255) DEFAULT NULL,
  `order_nfepdf` varchar(255) DEFAULT NULL,
  `order_nfexml` varchar(255) DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT NULL,
  `order_update` timestamp NULL DEFAULT NULL,
  `order_mail_processing` int(11) DEFAULT NULL,
  `order_mail_completed` int(11) DEFAULT NULL,
  `order_mode` int(11) DEFAULT NULL,
  `order_mont` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `sell`
--

INSERT INTO `sell` (`order_id`, `order_status`, `order_payment`, `order_price`, `order_installments`, `order_installment`, `order_coupon`, `order_free`, `order_billet`, `order_code`, `order_addr`, `order_shipcode`, `order_shipprice`, `order_shipment`, `order_tracking`, `order_nfepdf`, `order_nfexml`, `order_date`, `order_update`, `order_mail_processing`, `order_mail_completed`, `order_mode`, `order_mont`, `client_id`) VALUES
(1, 3, 1, '1125.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-28 09:44:48', NULL, NULL, NULL, NULL, NULL, 10),
(3, 3, 1, '2250.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-29 03:37:06', NULL, NULL, NULL, NULL, NULL, 10),
(4, 3, 1, '4500.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-29 03:38:12', NULL, NULL, NULL, NULL, NULL, 10),
(5, 3, 1, '9300.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-29 03:39:36', NULL, NULL, NULL, NULL, NULL, 19),
(6, 3, 1, '1000.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-29 18:27:01', NULL, NULL, NULL, NULL, NULL, 10),
(10, 3, 1, '3650.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-30 12:59:36', NULL, NULL, NULL, NULL, NULL, 20),
(11, 3, 1, '1125.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-30 13:07:58', NULL, NULL, NULL, NULL, NULL, 10),
(12, 3, 1, '2250.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-30 13:09:43', NULL, NULL, NULL, NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `siteviews_online`
--

CREATE TABLE `siteviews_online` (
  `online_id` int(11) NOT NULL,
  `online_user` int(11) DEFAULT NULL,
  `online_name` varchar(255) DEFAULT NULL,
  `online_startview` timestamp NULL DEFAULT NULL,
  `online_endview` timestamp NULL DEFAULT NULL,
  `online_ip` varchar(255) DEFAULT NULL,
  `online_url` varchar(255) DEFAULT NULL,
  `online_agent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `siteviews_online`
--

INSERT INTO `siteviews_online` (`online_id`, `online_user`, `online_name`, `online_startview`, `online_endview`, `online_ip`, `online_url`, `online_agent`) VALUES
(1356, NULL, NULL, '2020-07-31 07:27:52', '2020-07-31 07:46:10', '127.0.0.1', '_cdn/slick.min.js', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:72.0) Gecko/20100101 Firefox/72.0');

-- --------------------------------------------------------

--
-- Estrutura para tabela `siteviews_views`
--

CREATE TABLE `siteviews_views` (
  `views_id` int(11) NOT NULL,
  `views_date` date DEFAULT NULL,
  `views_users` decimal(10,0) DEFAULT NULL,
  `views_views` decimal(10,0) DEFAULT NULL,
  `views_pages` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `siteviews_views`
--

INSERT INTO `siteviews_views` (`views_id`, `views_date`, `views_users`, `views_views`, `views_pages`) VALUES
(46, '2017-07-06', '4', '5', '51'),
(47, '2017-07-07', '3', '3', '7'),
(48, '2017-07-08', '6', '6', '110'),
(49, '2017-07-09', '2', '2', '2'),
(50, '2017-07-10', '5', '3', '172'),
(51, '2017-07-11', '3', '2', '19'),
(52, '2017-07-12', '3', '6', '171'),
(53, '2017-07-13', '3', '3', '65'),
(54, '2017-07-14', '2', '2', '37'),
(55, '2017-07-16', '2', '2', '2'),
(56, '2017-07-18', '3', '3', '27'),
(57, '2017-07-19', '2', '1', '4'),
(58, '2017-07-20', '4', '3', '38'),
(59, '2017-07-22', '2', '2', '2'),
(60, '2017-07-24', '4', '5', '92'),
(61, '2017-07-25', '2', '2', '38'),
(62, '2017-07-26', '2', '2', '42'),
(63, '2017-07-27', '2', '2', '5'),
(64, '2017-07-28', '4', '3', '322'),
(65, '2017-07-30', '3', '3', '17'),
(66, '2017-08-01', '3', '3', '7'),
(67, '2017-08-03', '3', '3', '4'),
(68, '2017-08-05', '2', '2', '2'),
(69, '2017-08-07', '3', '3', '4'),
(70, '2017-08-08', '2', '2', '41'),
(71, '2017-08-09', '3', '2', '68'),
(72, '2017-08-11', '2', '2', '2'),
(73, '2017-08-12', '2', '2', '2'),
(74, '2017-08-14', '2', '2', '2'),
(75, '2017-08-16', '2', '2', '2'),
(76, '2017-08-18', '2', '2', '2'),
(77, '2017-08-20', '2', '2', '2'),
(78, '2017-08-22', '1', '1', '1'),
(79, '2017-08-29', '1', '1', '1'),
(80, '2017-08-30', '3', '1', '49'),
(81, '2017-09-01', '2', '1', '4'),
(82, '2017-09-04', '1', '1', '1'),
(83, '2017-09-05', '2', '2', '2'),
(84, '2017-09-06', '1', '1', '1'),
(85, '2017-09-09', '1', '1', '1'),
(86, '2017-09-13', '36', '35', '257'),
(87, '2017-09-14', '38', '46', '573'),
(88, '2017-09-15', '8', '11', '106'),
(89, '2017-09-16', '6', '6', '6'),
(90, '2017-09-17', '8', '8', '32'),
(91, '2017-09-18', '6', '5', '10'),
(92, '2017-09-19', '7', '6', '51'),
(93, '2017-09-20', '4', '7', '56'),
(94, '2017-09-21', '3', '3', '10'),
(95, '2017-09-22', '4', '4', '18'),
(96, '2017-09-23', '3', '3', '11'),
(97, '2017-09-24', '1', '1', '2'),
(98, '2017-09-25', '2', '2', '3'),
(99, '2017-09-27', '6', '6', '28'),
(100, '2017-09-28', '3', '2', '4'),
(101, '2017-09-29', '4', '5', '24'),
(102, '2017-10-01', '2', '1', '2'),
(103, '2017-10-02', '6', '4', '116'),
(104, '2017-10-03', '3', '2', '10'),
(105, '2017-10-04', '4', '3', '53'),
(106, '2017-10-05', '4', '3', '16'),
(107, '2017-10-06', '4', '5', '43'),
(108, '2017-10-07', '6', '5', '9'),
(109, '2017-10-09', '4', '3', '24'),
(110, '2017-10-10', '6', '4', '14'),
(111, '2017-10-11', '4', '5', '95'),
(112, '2017-10-12', '14', '17', '65'),
(113, '2017-10-13', '7', '11', '113'),
(114, '2017-10-14', '1', '2', '5'),
(115, '2017-10-15', '1', '1', '1'),
(116, '2017-10-16', '10', '10', '61'),
(117, '2017-10-17', '7', '8', '12'),
(118, '2017-10-18', '7', '9', '48'),
(119, '2017-10-19', '18', '18', '72'),
(120, '2017-10-20', '4', '5', '6'),
(121, '2017-10-21', '2', '2', '2'),
(122, '2017-10-22', '3', '2', '5'),
(123, '2017-10-23', '7', '6', '34'),
(124, '2017-10-24', '4', '4', '9'),
(125, '2017-10-25', '3', '4', '11'),
(126, '2017-10-26', '5', '6', '89'),
(127, '2017-10-27', '2', '2', '11'),
(128, '2017-10-28', '13', '14', '41'),
(129, '2017-10-29', '3', '2', '14'),
(130, '2017-10-30', '6', '5', '21'),
(131, '2017-10-31', '5', '6', '27'),
(132, '2017-11-01', '4', '4', '21'),
(133, '2017-11-02', '4', '3', '6'),
(134, '2017-11-03', '4', '3', '10'),
(135, '2017-11-05', '4', '4', '4'),
(136, '2017-11-06', '9', '9', '86'),
(137, '2017-11-07', '5', '4', '17'),
(138, '2017-11-08', '8', '8', '33'),
(139, '2017-11-09', '7', '9', '36'),
(140, '2017-11-10', '2', '3', '10'),
(141, '2017-11-11', '4', '3', '5'),
(142, '2017-11-12', '2', '2', '2'),
(143, '2017-11-13', '9', '8', '23'),
(144, '2017-11-14', '6', '6', '9'),
(145, '2017-11-15', '12', '12', '85'),
(146, '2017-11-16', '12', '14', '71'),
(147, '2017-11-17', '9', '9', '30'),
(148, '2017-11-18', '3', '3', '3'),
(149, '2017-11-20', '5', '5', '7'),
(150, '2017-11-21', '3', '3', '3'),
(151, '2017-11-22', '3', '2', '7'),
(152, '2017-11-23', '4', '5', '22'),
(153, '2017-11-24', '5', '5', '11'),
(154, '2017-11-25', '4', '3', '20'),
(155, '2017-11-26', '7', '7', '14'),
(156, '2017-11-27', '3', '2', '7'),
(157, '2017-11-28', '5', '5', '14'),
(158, '2017-11-29', '10', '9', '33'),
(159, '2017-11-30', '9', '2', '9'),
(160, '2017-12-01', '6', '6', '8'),
(161, '2017-12-02', '3', '3', '4'),
(162, '2017-12-04', '5', '6', '11'),
(163, '2017-12-05', '3', '3', '14'),
(164, '2017-12-06', '50', '6', '55'),
(165, '2017-12-07', '6', '7', '21'),
(166, '2017-12-08', '3', '3', '3'),
(167, '2017-12-09', '3', '3', '3'),
(168, '2017-12-10', '3', '3', '3'),
(169, '2017-12-11', '3', '2', '4'),
(170, '2017-12-12', '4', '6', '11'),
(171, '2017-12-13', '2', '2', '2'),
(172, '2017-12-14', '5', '5', '12'),
(173, '2017-12-15', '7', '6', '32'),
(174, '2017-12-16', '3', '2', '3'),
(175, '2017-12-17', '3', '3', '9'),
(176, '2017-12-18', '11', '7', '110'),
(177, '2017-12-19', '7', '7', '25'),
(178, '2017-12-20', '3', '3', '48'),
(179, '2017-12-21', '4', '5', '14'),
(180, '2017-12-22', '4', '4', '8'),
(181, '2017-12-23', '7', '5', '8'),
(182, '2017-12-24', '4', '3', '6'),
(183, '2017-12-25', '3', '2', '3'),
(184, '2017-12-26', '5', '5', '12'),
(185, '2017-12-27', '7', '7', '45'),
(186, '2017-12-28', '6', '5', '21'),
(187, '2017-12-29', '5', '6', '19'),
(188, '2017-12-30', '2', '2', '2'),
(189, '2018-01-01', '5', '5', '6'),
(190, '2018-01-02', '3', '3', '3'),
(191, '2018-01-03', '5', '5', '9'),
(192, '2018-01-04', '6', '6', '10'),
(193, '2018-01-05', '2', '2', '2'),
(194, '2018-01-06', '3', '3', '3'),
(195, '2018-01-07', '3', '2', '5'),
(196, '2018-01-08', '17', '17', '40'),
(197, '2018-01-09', '10', '10', '23'),
(198, '2018-01-10', '5', '4', '15'),
(199, '2018-01-11', '4', '4', '9'),
(200, '2018-01-12', '8', '6', '12'),
(201, '2018-01-13', '3', '3', '3'),
(202, '2018-01-14', '6', '6', '54'),
(203, '2018-01-15', '4', '3', '123'),
(204, '2018-01-16', '8', '7', '15'),
(205, '2018-01-17', '6', '5', '40'),
(206, '2018-01-18', '9', '15', '57'),
(207, '2018-01-19', '7', '7', '27'),
(208, '2018-01-20', '4', '4', '8'),
(209, '2018-01-21', '3', '2', '3'),
(210, '2018-01-22', '9', '8', '23'),
(211, '2018-01-23', '6', '5', '13'),
(212, '2018-01-24', '14', '9', '74'),
(213, '2018-01-25', '8', '11', '21'),
(214, '2018-01-26', '7', '6', '94'),
(215, '2018-01-27', '4', '4', '6'),
(216, '2018-01-28', '4', '4', '4'),
(217, '2018-01-29', '8', '8', '12'),
(218, '2018-01-30', '4', '5', '8'),
(219, '2018-01-31', '7', '7', '9'),
(220, '2018-02-01', '8', '8', '18'),
(221, '2018-02-02', '8', '7', '13'),
(222, '2018-02-03', '10', '10', '10'),
(223, '2018-02-04', '5', '4', '5'),
(224, '2018-02-05', '1', '1', '1'),
(225, '2018-02-06', '7', '7', '28'),
(226, '2018-02-07', '6', '5', '49'),
(227, '2018-02-08', '13', '13', '15'),
(228, '2018-02-09', '3', '3', '3'),
(229, '2018-02-11', '1', '1', '1'),
(230, '2018-02-12', '5', '5', '9'),
(231, '2018-02-13', '2', '2', '3'),
(232, '2018-02-14', '6', '6', '12'),
(233, '2018-02-15', '12', '12', '26'),
(234, '2018-02-16', '9', '10', '10'),
(235, '2018-02-17', '6', '6', '13'),
(236, '2018-02-18', '3', '3', '5'),
(237, '2018-02-19', '10', '11', '34'),
(238, '2018-02-20', '10', '10', '46'),
(239, '2018-02-21', '7', '8', '10'),
(240, '2018-02-22', '41', '7', '73'),
(241, '2018-02-23', '5', '5', '6'),
(242, '2018-02-24', '3', '4', '4'),
(243, '2018-02-25', '2', '3', '3'),
(244, '2018-02-26', '7', '6', '8'),
(245, '2018-02-27', '5', '4', '30'),
(246, '2018-02-28', '8', '7', '26'),
(247, '2018-03-01', '10', '10', '27'),
(248, '2018-03-02', '7', '7', '29'),
(249, '2018-03-03', '5', '5', '26'),
(250, '2018-03-04', '4', '4', '4'),
(251, '2018-03-05', '7', '7', '15'),
(252, '2018-03-06', '11', '12', '55'),
(253, '2018-03-07', '6', '9', '15'),
(254, '2018-03-08', '6', '6', '11'),
(255, '2018-03-09', '6', '6', '6'),
(256, '2018-03-10', '5', '5', '5'),
(257, '2018-03-11', '12', '12', '18'),
(258, '2018-03-12', '16', '17', '21'),
(259, '2018-03-13', '7', '7', '30'),
(260, '2018-03-14', '8', '9', '18'),
(261, '2018-03-15', '12', '12', '35'),
(262, '2018-03-16', '3', '3', '4'),
(263, '2018-03-17', '7', '8', '26'),
(264, '2018-03-19', '6', '6', '13'),
(265, '2018-03-20', '10', '10', '95'),
(266, '2018-03-21', '6', '6', '8'),
(267, '2018-03-22', '7', '9', '39'),
(268, '2018-03-23', '4', '4', '7'),
(269, '2018-03-24', '2', '2', '2'),
(270, '2018-03-26', '14', '15', '31'),
(271, '2018-03-27', '5', '5', '5'),
(272, '2018-03-28', '14', '8', '41'),
(273, '2018-03-29', '7', '8', '57'),
(274, '2018-03-30', '7', '7', '13'),
(275, '2018-03-31', '7', '7', '17'),
(276, '2018-04-01', '6', '6', '11'),
(277, '2018-04-02', '7', '6', '7'),
(278, '2018-04-03', '11', '9', '12'),
(279, '2018-04-04', '4', '4', '16'),
(280, '2018-04-05', '9', '9', '10'),
(281, '2018-04-06', '11', '13', '106'),
(282, '2018-04-07', '3', '4', '6'),
(283, '2018-04-08', '6', '7', '10'),
(284, '2018-04-09', '32', '31', '57'),
(285, '2018-04-10', '13', '13', '18'),
(286, '2018-04-11', '11', '11', '16'),
(287, '2018-04-12', '20', '20', '51'),
(288, '2018-04-13', '19', '23', '74'),
(289, '2018-04-14', '8', '8', '20'),
(290, '2018-04-15', '7', '8', '13'),
(291, '2018-04-16', '44', '31', '85'),
(292, '2018-04-17', '14', '19', '43'),
(293, '2018-04-18', '43', '7', '44'),
(294, '2018-04-19', '20', '18', '50'),
(295, '2018-04-20', '14', '15', '17'),
(296, '2018-04-21', '5', '5', '5'),
(297, '2018-04-22', '10', '10', '42'),
(298, '2018-04-23', '13', '13', '46'),
(299, '2018-04-24', '15', '16', '32'),
(300, '2018-04-25', '20', '20', '50'),
(301, '2018-04-26', '14', '16', '79'),
(302, '2018-04-27', '6', '6', '7'),
(303, '2018-04-28', '25', '25', '25'),
(304, '2018-04-29', '6', '6', '6'),
(305, '2018-04-30', '17', '16', '86'),
(306, '2018-05-01', '3', '4', '6'),
(307, '2018-05-02', '10', '11', '20'),
(308, '2018-05-03', '4', '3', '18'),
(309, '2018-05-04', '13', '13', '26'),
(310, '2018-05-05', '8', '9', '10'),
(311, '2018-05-06', '27', '28', '33'),
(312, '2018-05-07', '9', '9', '29'),
(313, '2018-05-08', '16', '17', '75'),
(314, '2018-05-09', '10', '11', '24'),
(315, '2018-05-10', '19', '25', '70'),
(316, '2018-05-11', '10', '10', '24'),
(317, '2018-05-12', '6', '6', '8'),
(318, '2018-05-13', '5', '5', '7'),
(319, '2018-05-14', '9', '9', '20'),
(320, '2018-05-15', '15', '15', '25'),
(321, '2018-05-16', '8', '9', '12'),
(322, '2018-05-17', '15', '15', '63'),
(323, '2018-05-18', '11', '14', '31'),
(324, '2018-05-19', '8', '8', '8'),
(325, '2018-05-20', '7', '7', '9'),
(326, '2018-05-21', '18', '18', '62'),
(327, '2018-05-22', '10', '10', '29'),
(328, '2018-05-23', '8', '10', '28'),
(329, '2018-05-24', '9', '9', '11'),
(330, '2018-05-25', '9', '8', '12'),
(331, '2018-05-26', '11', '11', '16'),
(332, '2018-05-27', '7', '7', '7'),
(333, '2018-05-28', '8', '9', '12'),
(334, '2018-05-29', '12', '12', '17'),
(335, '2018-05-30', '15', '18', '30'),
(336, '2018-05-31', '13', '15', '39'),
(337, '2018-06-01', '18', '19', '35'),
(338, '2018-06-02', '6', '5', '6'),
(339, '2018-06-03', '11', '10', '14'),
(340, '2018-06-04', '11', '8', '18'),
(341, '2018-06-05', '11', '11', '29'),
(342, '2018-06-06', '18', '20', '36'),
(343, '2018-06-07', '13', '15', '18'),
(344, '2018-06-08', '11', '12', '13'),
(345, '2018-06-09', '7', '7', '11'),
(346, '2018-06-10', '8', '10', '14'),
(347, '2018-06-11', '6', '6', '88'),
(348, '2018-09-23', '1', '1', '1'),
(349, '2019-07-11', '2', '1', '7'),
(350, '2019-07-12', '1', '2', '180'),
(351, '2019-07-16', '2', '2', '289'),
(352, '2019-07-17', '1', '2', '262'),
(353, '2019-07-18', '1', '2', '439'),
(354, '2019-07-19', '1', '2', '372'),
(355, '2019-07-20', '1', '2', '57'),
(356, '2019-07-21', '1', '2', '319'),
(357, '2019-07-22', '1', '3', '509'),
(358, '2019-07-23', '1', '3', '167'),
(359, '2019-07-24', '1', '3', '264'),
(360, '2019-07-25', '1', '3', '304'),
(361, '2019-07-26', '1', '2', '272'),
(362, '2019-07-27', '1', '6', '82'),
(363, '2019-07-28', '1', '2', '224'),
(364, '2019-07-29', '1', '4', '756'),
(365, '2019-07-30', '1', '3', '669'),
(366, '2019-07-31', '1', '2', '282'),
(367, '2019-08-01', '1', '3', '152'),
(368, '2019-08-02', '1', '4', '79'),
(369, '2019-08-05', '2', '1', '17'),
(370, '2019-08-06', '1', '1', '39'),
(371, '2019-08-08', '3', '2', '37'),
(372, '2019-08-09', '1', '1', '14'),
(373, '2019-08-10', '1', '1', '9'),
(374, '2019-08-11', '2', '1', '2'),
(375, '2019-08-12', '1', '3', '239'),
(376, '2019-08-19', '3', '5', '71'),
(377, '2019-08-20', '1', '2', '323'),
(378, '2019-08-21', '1', '1', '287'),
(379, '2019-08-22', '1', '2', '323'),
(380, '2019-08-23', '1', '2', '441'),
(381, '2019-08-26', '2', '2', '196'),
(382, '2019-08-27', '1', '1', '20'),
(383, '2019-08-28', '1', '1', '43'),
(384, '2019-09-05', '2', '1', '6'),
(385, '2019-09-06', '1', '1', '68'),
(386, '2019-09-09', '2', '2', '16'),
(387, '2019-09-10', '1', '1', '9'),
(388, '2019-09-11', '1', '1', '60'),
(389, '2019-09-12', '2', '2', '98'),
(390, '2019-09-13', '1', '1', '2'),
(391, '2019-10-09', '1', '1', '3'),
(392, '2019-12-05', '2', '1', '90'),
(393, '2019-12-06', '1', '2', '22'),
(394, '2020-02-26', '1', '1', '3'),
(395, '2020-04-20', '2', '1', '2'),
(396, '2020-05-08', '2', '1', '2'),
(397, '2020-06-08', '2', '2', '94'),
(398, '2020-06-10', '1', '1', '2'),
(399, '2020-06-11', '1', '1', '1'),
(400, '2020-07-23', '3', '2', '228'),
(401, '2020-07-24', '1', '2', '311'),
(402, '2020-07-25', '1', '2', '294'),
(403, '2020-07-27', '3', '3', '382'),
(404, '2020-07-28', '1', '4', '305'),
(405, '2020-07-29', '1', '6', '496'),
(406, '2020-07-30', '4', '5', '321'),
(407, '2020-07-31', '1', '2', '159');

-- --------------------------------------------------------

--
-- Estrutura para tabela `slides`
--

CREATE TABLE `slides` (
  `slide_id` int(11) UNSIGNED NOT NULL,
  `slide_status` int(11) NOT NULL DEFAULT '0',
  `slide_image` varchar(255) DEFAULT NULL,
  `slide_thumb` varchar(255) DEFAULT NULL,
  `slide_price` decimal(11,2) DEFAULT NULL,
  `slide_title` varchar(255) DEFAULT NULL,
  `slide_subtitle` varchar(255) DEFAULT NULL,
  `slide_desc` text,
  `slide_link` varchar(255) DEFAULT NULL,
  `slide_date` timestamp NULL DEFAULT NULL,
  `slide_start` timestamp NULL DEFAULT NULL,
  `slide_end` timestamp NULL DEFAULT NULL,
  `slide_pdt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_status`, `slide_image`, `slide_thumb`, `slide_price`, `slide_title`, `slide_subtitle`, `slide_desc`, `slide_link`, `slide_date`, `slide_start`, `slide_end`, `slide_pdt_id`) VALUES
(12, 1, 'slides/2017/08/bolsa-targus.png', 'slides/2017/09/bolsa-targus.png', '7500.00', 'BOLSA TARGUS', 'TARGUS', 'Bolsa Targus 14\'\' militar vertical cor preto, para transportar, proteger documento de forma eficaz.', 'https://www.loja.kiquim.co.ao/produto/bolsa-targus-14-militar-vertical-black', '2017-09-13 20:04:33', '2017-08-07 15:38:00', '2018-09-08 15:38:00', 57),
(13, 1, 'slides/2017/08/mochila-huxton-black.png', 'slides/2017/09/mochila-huxton-black.png', '21870.00', 'MOCHILA HUXTON BLACK', 'CASE LOGIC', 'Compartimento separado e espessamente acolchoado para portatil de 15\'\'. Compartimento principal espaçoso Bolso dedicado para tablet de 10,1\'\'. Painel frontal com zíper com bolsos de organização mais armazenamento adicional Os bolsos frontais sobrepostos.', 'https://www.loja.kiquim.co.ao/produto/mochila-case-logic-15-huxton-black', '2017-09-13 19:59:48', '2017-08-07 16:07:00', '2018-09-08 16:07:00', 66),
(14, 1, 'slides/2017/08/mochila-berkeley-azul.jpeg', 'slides/2017/09/mochila-berkeley-azul.png', '18300.00', 'MOCHILA BERKELEY AZUL', 'CASE LOGIC', 'Compartimento dedicado para seu portátil de 15,6\'\' e pasta dedicada para seu tablet o bolso no painel traseiro possibilita o armazenamento oculto de dinheiro e documento de identidade painel de organização assimétrica de dispositivo electrónico armazena perfeitamente.', 'https://www.loja.kiquim.co.ao/produto/mochila-case-logic-15-6-berkeley-azul-fw', '2020-07-28 12:45:23', '2020-07-12 10:11:00', '2020-12-22 10:11:00', 64),
(15, 1, 'slides/2017/08/port-dell-3340-13-i34030-4g-500g-wp7.png', 'slides/2017/09/port-dell-3340-13-i34030-4g-500g-wp7.png', '132450.00', 'PORT DELL 3340 13\'\' I34030 4G 500G WP7', 'DELL', 'O notebook Dell 3340 traz processador Intel Core i3 de 7ª geração, que é uma das mais recentes da marca. Além disso, ele conta com 4GB de RAM, e tem um conjunto de especificações que o coloca como um dos melhores notebooks custo/benefício.', 'https://www.loja.kiquim.co.ao/produto/port-dell-3340-13-i34030-4g-500g-wp7', '2020-07-28 11:33:45', '2020-07-20 11:12:00', '2029-08-20 16:30:00', 56),
(17, 1, 'slides/2020/07/impressora-voadora-com-inc.jpg', 'slides/2020/07/impressora-voadora-com-inc.png', '123000.00', 'Impressora Voadora com Inc', 'Impressora Voadora com Inc ddf ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'http://localhost/Kiquim-doing/nova_loja/produto/o-abc-da-seducao', '2020-07-28 13:22:24', '2020-07-28 13:18:00', '2020-08-28 13:18:00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_thumb` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_lastname` varchar(255) DEFAULT NULL,
  `user_document` varchar(255) DEFAULT NULL,
  `user_genre` int(11) DEFAULT NULL,
  `user_datebirth` date DEFAULT NULL,
  `user_telephone` varchar(255) DEFAULT NULL,
  `user_cell` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_password` varchar(255) NOT NULL DEFAULT '',
  `user_channel` varchar(255) DEFAULT NULL,
  `user_registration` timestamp NULL DEFAULT NULL,
  `user_lastupdate` timestamp NULL DEFAULT NULL,
  `user_lastaccess` timestamp NULL DEFAULT NULL,
  `user_login` varchar(255) DEFAULT NULL,
  `user_login_cookie` varchar(255) DEFAULT NULL,
  `user_level` int(11) NOT NULL DEFAULT '1',
  `user_facebook` varchar(255) DEFAULT NULL,
  `user_twitter` varchar(255) DEFAULT NULL,
  `user_youtube` varchar(255) DEFAULT NULL,
  `user_google` varchar(255) DEFAULT NULL,
  `user_blocking_reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`user_id`, `user_thumb`, `user_name`, `user_lastname`, `user_document`, `user_genre`, `user_datebirth`, `user_telephone`, `user_cell`, `user_email`, `user_password`, `user_channel`, `user_registration`, `user_lastupdate`, `user_lastaccess`, `user_login`, `user_login_cookie`, `user_level`, `user_facebook`, `user_twitter`, `user_youtube`, `user_google`, `user_blocking_reason`) VALUES
(1, 'images/2019/12/1-judsonartur.png', 'Judson', 'Artur', '185.842.995-13', 1, NULL, '(+244) 991-801 429', '(+224) 923-801 428', 'judsoncapepa@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', NULL, '2017-04-29 10:09:44', '2019-12-05 10:39:48', '2019-09-12 09:58:07', '1568282287', NULL, 10, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'Papi Desire', 'Artur', NULL, NULL, NULL, NULL, NULL, 'mateus_da_curva@hotmail.com', 'd9e6762dd1c8eaf6d61b3c6192fc408d4d6d5f1176d0c29169bc24e71c3f274ad27fcd5811b313d681f7e55ec02d73d499c95455b6b5bb503acf574fba8ffe85', 'Cadastro', '2019-07-31 15:22:54', '2019-07-31 15:22:54', '2019-07-31 15:22:54', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 'Linux', 'Mandriva', NULL, 1, NULL, NULL, NULL, 'judsoncapepa22@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 'Cadastro', '2019-08-19 14:00:04', '2019-08-19 14:00:04', '2019-12-06 09:18:15', '1575623895', NULL, 9, NULL, NULL, NULL, NULL, NULL),
(9, NULL, 'Linux', 'Mint', NULL, NULL, NULL, NULL, NULL, 'linux-mint@mint.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 'Cadastro', '2019-08-19 14:57:48', '2019-08-19 14:57:48', '2019-08-19 14:57:48', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, '2019-12-05 10:42:25', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 'Papi Desire', 'Mandriva', NULL, NULL, NULL, NULL, NULL, 'judsoncapepao1@hotmail.com', '9495a8446bbd144364f6f9fcc86a9852508891420f151260035cc986110d33642939e1977ca26dfad8e45aeefe455f494550a59ebc9ed8ab27cbd763cea1ab6f', 'Cadastro', '2019-12-05 16:36:34', '2019-12-05 16:36:34', '2019-12-05 16:36:34', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(12, NULL, 'Mendigo', 'Mandriva', NULL, NULL, NULL, NULL, NULL, 'judsoncapepa99@gmail.com', '7ff7f6bdea41a8231583847a7faf2957be78785ef33248dac7752cce517996b43fe799ec3db589c05f16ca04f8a2487cd0e85adf13511aa4bf9b1fd17fe663f3', 'Cadastro', '2019-12-05 16:40:03', '2019-12-05 16:40:03', '2019-12-05 16:40:03', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(13, NULL, 'PePe', 'Abou', NULL, NULL, NULL, NULL, NULL, 'judsoncapepaabou@gmail.com', 'ba3253876aed6bc22d4a6ff53d8406c6ad864195ed144ab5c87621b6c233b548baeae6956df346ec8c17f5ea10f35ee3cbc514797ed7ddd3145464e2a0bab413', 'Cadastro', '2019-12-05 16:44:10', '2019-12-05 16:44:10', '2019-12-05 16:44:10', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users_address`
--

CREATE TABLE `users_address` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `addr_id` int(11) NOT NULL,
  `addr_key` int(11) DEFAULT NULL,
  `addr_name` varchar(255) DEFAULT NULL,
  `addr_zipcode` varchar(255) DEFAULT NULL,
  `addr_street` varchar(255) DEFAULT NULL,
  `addr_number` varchar(255) DEFAULT NULL,
  `addr_complement` varchar(255) DEFAULT NULL,
  `addr_municipe` varchar(255) DEFAULT NULL,
  `addr_district` varchar(255) DEFAULT NULL,
  `addr_city` varchar(255) DEFAULT NULL,
  `addr_state` varchar(2) DEFAULT NULL,
  `addr_country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `users_address`
--

INSERT INTO `users_address` (`user_id`, `addr_id`, `addr_key`, `addr_name`, `addr_zipcode`, `addr_street`, `addr_number`, `addr_complement`, `addr_municipe`, `addr_district`, `addr_city`, `addr_state`, `addr_country`) VALUES
(1, 1, 1, 'Rua Unidade e Luta, Nº 19,  Bairro Cassenda, Distrito Urbano da Maianga', NULL, 'Rua Unidade e Luta, Nº 19', NULL, NULL, 'Luanda', 'Cassenda', 'Luanda', NULL, 'Angola'),
(1, 2, NULL, 'Cabinda Fashion International', NULL, 'Rua das Mangueiras', NULL, NULL, 'Buco Zau', '4 de Fevereiro', 'Bié', NULL, 'Angola'),
(8, 3, 1, 'Cabinda Fashion International', NULL, 'Rua das Mangueiras', NULL, NULL, 'Buco Zau', '4 de Fevereiro', 'Bié', NULL, 'Angola'),
(11, 4, 1, 'Cabinda Fashion International', NULL, 'Rua das Mangueiras', NULL, NULL, 'Buco Zau', 'Kuimba', 'Cabinda', NULL, 'Angola'),
(11, 5, 1, 'Cabinda Fashion International', NULL, 'Rua das Mangueiras', NULL, NULL, 'Buco Zau', 'Kuimba', 'Cabinda', NULL, 'Angola'),
(11, 6, 1, 'Cabinda Fashion International', NULL, 'Rua das Mangueiras', NULL, NULL, 'Matala', '4 de Fevereiro', 'Cabinda', NULL, 'Angola'),
(12, 7, 1, 'Cabinda Fashion International', NULL, 'Rua das Mangueiras', NULL, NULL, 'Matala', 'Kuimba', 'Cuando Cubango', NULL, 'Angola'),
(13, 8, 1, 'Cabinda Fashion International', NULL, 'Rua das Mangueiras', NULL, NULL, 'Matala', '4 de Fevereiro', 'Benguela', NULL, 'Angola');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users_notes`
--

CREATE TABLE `users_notes` (
  `note_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `admin_id` int(11) UNSIGNED DEFAULT NULL,
  `note_text` varchar(255) DEFAULT NULL,
  `note_datetime` timestamp NULL DEFAULT NULL,
  `note_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `workcontrol_api`
--

CREATE TABLE `workcontrol_api` (
  `api_id` int(11) UNSIGNED NOT NULL,
  `api_key` varchar(255) DEFAULT '',
  `api_token` varchar(255) DEFAULT '',
  `api_date` timestamp NULL DEFAULT NULL,
  `api_status` int(11) DEFAULT '0',
  `api_loads` int(11) DEFAULT '0',
  `api_lastload` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `workcontrol_code`
--

CREATE TABLE `workcontrol_code` (
  `code_id` int(11) UNSIGNED NOT NULL,
  `code_name` varchar(255) DEFAULT '',
  `code_condition` varchar(255) DEFAULT '',
  `code_script` text,
  `code_created` timestamp NULL DEFAULT NULL,
  `code_views` decimal(11,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Índices de tabela `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Índices de tabela `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`clients_id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`conf_id`);

--
-- Índices de tabela `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `wc_order` (`order_id`);

--
-- Índices de tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Índices de tabela `pages_images`
--
ALTER TABLE `pages_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wc_pages` (`page_id`);

--
-- Índices de tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pdt_id`),
  ADD KEY `wc_products_brands` (`pdt_brand`),
  ADD KEY `wc_products_categories` (`pdt_category`),
  ADD KEY `wc_products_subcategory` (`pdt_subcategory`),
  ADD KEY `wc_product_parent` (`pdt_parent`);

--
-- Índices de tabela `products_brands`
--
ALTER TABLE `products_brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Índices de tabela `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Índices de tabela `products_coupons`
--
ALTER TABLE `products_coupons`
  ADD PRIMARY KEY (`cp_id`);

--
-- Índices de tabela `products_gallery`
--
ALTER TABLE `products_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wc_produtcts_gallery` (`product_id`);

--
-- Índices de tabela `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wc_products_images` (`product_id`);

--
-- Índices de tabela `products_stock`
--
ALTER TABLE `products_stock`
  ADD PRIMARY KEY (`stock_id`),
  ADD KEY `wc_products_stock` (`pdt_id`);

--
-- Índices de tabela `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Índices de tabela `publicity`
--
ALTER TABLE `publicity`
  ADD PRIMARY KEY (`publicity_id`);

--
-- Índices de tabela `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`search_id`);

--
-- Índices de tabela `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`order_id`);

--
-- Índices de tabela `siteviews_online`
--
ALTER TABLE `siteviews_online`
  ADD PRIMARY KEY (`online_id`);

--
-- Índices de tabela `siteviews_views`
--
ALTER TABLE `siteviews_views`
  ADD PRIMARY KEY (`views_id`),
  ADD KEY `idx_1` (`views_date`);

--
-- Índices de tabela `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices de tabela `users_address`
--
ALTER TABLE `users_address`
  ADD PRIMARY KEY (`addr_id`),
  ADD KEY `wc_users_address` (`user_id`);

--
-- Índices de tabela `users_notes`
--
ALTER TABLE `users_notes`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `note_user_id` (`user_id`),
  ADD KEY `note_admin_id` (`admin_id`);

--
-- Índices de tabela `workcontrol_api`
--
ALTER TABLE `workcontrol_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Índices de tabela `workcontrol_code`
--
ALTER TABLE `workcontrol_code`
  ADD PRIMARY KEY (`code_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `clients`
--
ALTER TABLE `clients`
  MODIFY `clients_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `config`
--
ALTER TABLE `config`
  MODIFY `conf_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29524;

--
-- AUTO_INCREMENT de tabela `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `item_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pages_images`
--
ALTER TABLE `pages_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `pdt_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de tabela `products_brands`
--
ALTER TABLE `products_brands`
  MODIFY `brand_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de tabela `products_categories`
--
ALTER TABLE `products_categories`
  MODIFY `cat_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de tabela `products_coupons`
--
ALTER TABLE `products_coupons`
  MODIFY `cp_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `products_gallery`
--
ALTER TABLE `products_gallery`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `products_stock`
--
ALTER TABLE `products_stock`
  MODIFY `stock_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT de tabela `product_type`
--
ALTER TABLE `product_type`
  MODIFY `product_type_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `publicity`
--
ALTER TABLE `publicity`
  MODIFY `publicity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `search`
--
ALTER TABLE `search`
  MODIFY `search_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT de tabela `sell`
--
ALTER TABLE `sell`
  MODIFY `order_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `siteviews_online`
--
ALTER TABLE `siteviews_online`
  MODIFY `online_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1357;

--
-- AUTO_INCREMENT de tabela `siteviews_views`
--
ALTER TABLE `siteviews_views`
  MODIFY `views_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- AUTO_INCREMENT de tabela `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `users_address`
--
ALTER TABLE `users_address`
  MODIFY `addr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `users_notes`
--
ALTER TABLE `users_notes`
  MODIFY `note_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `workcontrol_api`
--
ALTER TABLE `workcontrol_api`
  MODIFY `api_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `workcontrol_code`
--
ALTER TABLE `workcontrol_code`
  MODIFY `code_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `pages_images`
--
ALTER TABLE `pages_images`
  ADD CONSTRAINT `wc_pages` FOREIGN KEY (`page_id`) REFERENCES `pages` (`page_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
