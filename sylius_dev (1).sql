-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 27 nov. 2019 à 14:38
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sylius_dev`
--

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20170912085504', '2019-11-13 09:14:45'),
('20170913125128', '2019-11-13 09:14:45'),
('20171003103916', '2019-11-13 09:14:45'),
('20180102140039', '2019-11-13 09:14:45'),
('20190109095211', '2019-11-13 09:14:45'),
('20190109160409', '2019-11-13 09:14:46'),
('20190508083953', '2019-11-13 09:14:46'),
('20190621035710', '2019-11-13 09:14:46');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_address`
--

DROP TABLE IF EXISTS `sylius_address`;
CREATE TABLE IF NOT EXISTS `sylius_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `province_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B97FF0589395C3F3` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_address`
--

INSERT INTO `sylius_address` (`id`, `customer_id`, `first_name`, `last_name`, `phone_number`, `street`, `company`, `city`, `postcode`, `created_at`, `updated_at`, `country_code`, `province_code`, `province_name`) VALUES
(3, 13, 'Kendra', 'Greenfelder', NULL, '76270 Dee Wells Suite 607', NULL, 'North Sadie', '63064-3753', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 'US', NULL, NULL),
(4, NULL, 'Kendra', 'Greenfelder', NULL, '76270 Dee Wells Suite 607', NULL, 'North Sadie', '63064-3753', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 'US', NULL, NULL),
(5, NULL, 'Kendra', 'Greenfelder', NULL, '76270 Dee Wells Suite 607', NULL, 'North Sadie', '63064-3753', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 'US', NULL, NULL),
(6, 15, 'Kariane', 'Gutmann', NULL, '977 Marlen Route Apt. 486', NULL, 'Estherchester', '26867', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 'US', NULL, NULL),
(7, NULL, 'Kariane', 'Gutmann', NULL, '977 Marlen Route Apt. 486', NULL, 'Estherchester', '26867', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 'US', NULL, NULL),
(8, NULL, 'Kariane', 'Gutmann', NULL, '977 Marlen Route Apt. 486', NULL, 'Estherchester', '26867', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 'US', NULL, NULL),
(9, 2, 'Shaylee', 'Dickens', NULL, '10503 Wunsch Path Suite 440', NULL, 'Rowechester', '80378', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 'US', NULL, NULL),
(10, NULL, 'Shaylee', 'Dickens', NULL, '10503 Wunsch Path Suite 440', NULL, 'Rowechester', '80378', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 'US', NULL, NULL),
(11, NULL, 'Shaylee', 'Dickens', NULL, '10503 Wunsch Path Suite 440', NULL, 'Rowechester', '80378', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 'US', NULL, NULL),
(12, 8, 'Alva', 'Hansen', NULL, '3653 Kertzmann Well', NULL, 'Kearabury', '63374-8105', '2019-11-13 11:44:17', '2019-11-13 11:44:18', 'US', NULL, NULL),
(13, NULL, 'Alva', 'Hansen', NULL, '3653 Kertzmann Well', NULL, 'Kearabury', '63374-8105', '2019-11-13 11:44:17', '2019-11-13 11:44:18', 'US', NULL, NULL),
(14, NULL, 'Alva', 'Hansen', NULL, '3653 Kertzmann Well', NULL, 'Kearabury', '63374-8105', '2019-11-13 11:44:17', '2019-11-13 11:44:18', 'US', NULL, NULL),
(15, 2, 'Georgette', 'Larson', NULL, '60833 Yost Club Apt. 989', NULL, 'Larkinstad', '19930', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(16, NULL, 'Georgette', 'Larson', NULL, '60833 Yost Club Apt. 989', NULL, 'Larkinstad', '19930', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(17, NULL, 'Georgette', 'Larson', NULL, '60833 Yost Club Apt. 989', NULL, 'Larkinstad', '19930', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(18, 4, 'Orion', 'Trantow', NULL, '93369 Rosalee Vista', NULL, 'South Rudy', '00570-9111', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(19, NULL, 'Orion', 'Trantow', NULL, '93369 Rosalee Vista', NULL, 'South Rudy', '00570-9111', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(20, NULL, 'Orion', 'Trantow', NULL, '93369 Rosalee Vista', NULL, 'South Rudy', '00570-9111', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(21, 5, 'Cary', 'Simonis', NULL, '40661 Jenkins Mission Suite 656', NULL, 'Tobybury', '62461-4686', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(22, NULL, 'Cary', 'Simonis', NULL, '40661 Jenkins Mission Suite 656', NULL, 'Tobybury', '62461-4686', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(23, NULL, 'Cary', 'Simonis', NULL, '40661 Jenkins Mission Suite 656', NULL, 'Tobybury', '62461-4686', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(24, 18, 'Dahlia', 'Crist', NULL, '438 Nayeli Squares', NULL, 'Miketown', '91687-6556', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(25, NULL, 'Dahlia', 'Crist', NULL, '438 Nayeli Squares', NULL, 'Miketown', '91687-6556', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(26, NULL, 'Dahlia', 'Crist', NULL, '438 Nayeli Squares', NULL, 'Miketown', '91687-6556', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(27, 16, 'Kameron', 'Boehm', NULL, '2117 Sedrick Forks', NULL, 'Hyattville', '77933-2618', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(28, NULL, 'Kameron', 'Boehm', NULL, '2117 Sedrick Forks', NULL, 'Hyattville', '77933-2618', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(29, NULL, 'Kameron', 'Boehm', NULL, '2117 Sedrick Forks', NULL, 'Hyattville', '77933-2618', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(30, 7, 'Else', 'Daniel', NULL, '363 Conn Lane', NULL, 'Port Leathaview', '49465-6465', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(31, NULL, 'Else', 'Daniel', NULL, '363 Conn Lane', NULL, 'Port Leathaview', '49465-6465', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(32, NULL, 'Else', 'Daniel', NULL, '363 Conn Lane', NULL, 'Port Leathaview', '49465-6465', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(33, 3, 'Bertrand', 'Bernier', NULL, '6171 Block Mission Suite 886', NULL, 'East Marinabury', '85204-3619', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(34, NULL, 'Bertrand', 'Bernier', NULL, '6171 Block Mission Suite 886', NULL, 'East Marinabury', '85204-3619', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(35, NULL, 'Bertrand', 'Bernier', NULL, '6171 Block Mission Suite 886', NULL, 'East Marinabury', '85204-3619', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(36, 7, 'Nayeli', 'Rippin', NULL, '103 Jenkins Ridge', NULL, 'South Bonita', '34113', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(37, NULL, 'Nayeli', 'Rippin', NULL, '103 Jenkins Ridge', NULL, 'South Bonita', '34113', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(38, NULL, 'Nayeli', 'Rippin', NULL, '103 Jenkins Ridge', NULL, 'South Bonita', '34113', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(39, 8, 'Graciela', 'Lesch', NULL, '202 Landen Forest Suite 590', NULL, 'West Arelyside', '17912-3591', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(40, NULL, 'Graciela', 'Lesch', NULL, '202 Landen Forest Suite 590', NULL, 'West Arelyside', '17912-3591', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(41, NULL, 'Graciela', 'Lesch', NULL, '202 Landen Forest Suite 590', NULL, 'West Arelyside', '17912-3591', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(42, 8, 'Valentina', 'Abshire', NULL, '438 Parisian Circle Apt. 810', NULL, 'West Cleveland', '98635', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(43, NULL, 'Valentina', 'Abshire', NULL, '438 Parisian Circle Apt. 810', NULL, 'West Cleveland', '98635', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(44, NULL, 'Valentina', 'Abshire', NULL, '438 Parisian Circle Apt. 810', NULL, 'West Cleveland', '98635', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(45, 15, 'Dejuan', 'Pagac', NULL, '6888 Thea Cape', NULL, 'Leontown', '97572', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(46, NULL, 'Dejuan', 'Pagac', NULL, '6888 Thea Cape', NULL, 'Leontown', '97572', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(47, NULL, 'Dejuan', 'Pagac', NULL, '6888 Thea Cape', NULL, 'Leontown', '97572', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(48, 6, 'Kristin', 'McDermott', NULL, '31527 Alta Cliffs Apt. 108', NULL, 'Farrellstad', '64844', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(49, NULL, 'Kristin', 'McDermott', NULL, '31527 Alta Cliffs Apt. 108', NULL, 'Farrellstad', '64844', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(50, NULL, 'Kristin', 'McDermott', NULL, '31527 Alta Cliffs Apt. 108', NULL, 'Farrellstad', '64844', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(51, 18, 'Arden', 'Bartell', NULL, '7493 Bogisich Dale Apt. 705', NULL, 'North Tremainemouth', '06610', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(52, NULL, 'Arden', 'Bartell', NULL, '7493 Bogisich Dale Apt. 705', NULL, 'North Tremainemouth', '06610', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(53, NULL, 'Arden', 'Bartell', NULL, '7493 Bogisich Dale Apt. 705', NULL, 'North Tremainemouth', '06610', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(54, 5, 'Shanna', 'Lemke', NULL, '71013 Denesik Keys', NULL, 'Gerlachton', '23255-8570', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(55, NULL, 'Shanna', 'Lemke', NULL, '71013 Denesik Keys', NULL, 'Gerlachton', '23255-8570', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(56, NULL, 'Shanna', 'Lemke', NULL, '71013 Denesik Keys', NULL, 'Gerlachton', '23255-8570', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(57, 8, 'Eunice', 'Green', NULL, '48032 Salma Mission', NULL, 'New Marina', '78580', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(58, NULL, 'Eunice', 'Green', NULL, '48032 Salma Mission', NULL, 'New Marina', '78580', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(59, NULL, 'Eunice', 'Green', NULL, '48032 Salma Mission', NULL, 'New Marina', '78580', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(60, 3, 'Belle', 'Berge', NULL, '7667 Alexander Walks Apt. 361', NULL, 'West Fredberg', '70739', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(61, NULL, 'Belle', 'Berge', NULL, '7667 Alexander Walks Apt. 361', NULL, 'West Fredberg', '70739', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(62, NULL, 'Belle', 'Berge', NULL, '7667 Alexander Walks Apt. 361', NULL, 'West Fredberg', '70739', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(63, 13, 'Hermina', 'Wiza', NULL, '232 Schoen Village Apt. 219', NULL, 'Jaylinhaven', '81352', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(64, 17, 'Kyla', 'O\'Reilly', NULL, '6970 Theresa Green', 'Schultz, Buckridge and Kozey', 'Bradenfort', '59289', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(65, 20, 'Mossie', 'Macejkovic', '875.681.5782 x667', '75777 Adeline Spurs', NULL, 'Port Melyssa', '56174-5363', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(66, 10, 'Celia', 'Olson', NULL, '368 Doyle Plain', 'Shanahan-Hudson', 'Dudleyton', '61870-4221', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(67, 21, 'Berta', 'Bogisich', NULL, '22424 Strosin Glen Suite 224', 'Hermann Inc', 'New Hughtown', '50480-2578', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(68, 17, 'Keyshawn', 'Welch', NULL, '23270 Troy Trafficway', NULL, 'Travonfurt', '39073', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(69, 7, 'Felipa', 'DuBuque', '+1-950-347-6385', '91855 Muller Highway Apt. 397', 'Toy, Cole and Cremin', 'Ginaburgh', '31401', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(70, 10, 'Roberto', 'Stark', '(489) 775-2120 x73012', '36121 Rene Ferry', 'White-Gulgowski', 'Port Simeon', '03088-4906', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(71, 17, 'Macy', 'Kutch', '1-595-342-9222 x623', '27914 Brekke Summit', NULL, 'Douglashaven', '60416-7817', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(72, 22, 'Lora', 'Klocko', NULL, '94466 Tianna Skyway Suite 022', 'Grady, Rempel and Glover', 'Ratketon', '12515', '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'US', NULL, NULL),
(73, NULL, 'Van', 'Van Pen', '0698175630', '20 BIS JARDIN BOIELDIEU', NULL, 'NANTERRE', '92071', '2019-11-18 08:07:16', '2019-11-18 08:07:17', 'US', NULL, NULL),
(74, NULL, 'Van', 'Van Pen', '0698175630', '20 BIS JARDIN BOIELDIEU', NULL, 'NANTERRE', '92071', '2019-11-18 08:07:16', '2019-11-18 08:07:17', 'US', NULL, NULL),
(75, NULL, 'Van', 'Van Pen', '0698175630', '20 BIS JARDIN BOIELDIEU', NULL, 'NANTERRE', '92071', '2019-11-18 14:39:37', '2019-11-18 14:40:04', 'US', 'FR-PR', NULL),
(76, NULL, 'Van', 'Van Pen', '0698175630', '20 BIS JARDIN BOIELDIEU', NULL, 'NANTERRE', '92071', '2019-11-18 14:39:37', '2019-11-18 14:40:04', 'US', 'FR-PR', NULL),
(77, 23, 'Van', 'Van Pen', '0698175630', '20 BIS JARDIN BOIELDIEU', NULL, 'NANTERRE', '92071', '2019-11-18 14:39:37', '2019-11-18 14:40:04', 'US', 'FR-PR', NULL),
(78, NULL, 'Van', 'Van Pen', '0698175630', '20 BIS JARDIN BOIELDIEU', NULL, 'NANTERRE', '92071', '2019-11-19 11:19:16', '2019-11-19 11:19:17', 'US', NULL, NULL),
(79, NULL, 'Van', 'Van Pen', '0698175630', '20 BIS JARDIN BOIELDIEU', NULL, 'NANTERRE', '92071', '2019-11-19 11:19:16', '2019-11-19 11:19:17', 'US', NULL, NULL),
(80, 23, 'Van', 'Van Pen', '0698175630', '20 BIS JARDIN BOIELDIEU', NULL, 'NANTERRE', '92071', '2019-11-19 11:19:16', '2019-11-19 11:19:17', 'US', NULL, NULL),
(81, NULL, 'Van', 'Van Pen', '0698175630', '20 BIS JARDIN BOIELDIEU', NULL, 'NANTERRE', '92071', '2019-11-19 13:48:33', '2019-11-19 13:48:35', 'US', NULL, NULL),
(82, NULL, 'Van', 'Van Pen', '0698175630', '20 BIS JARDIN BOIELDIEU', NULL, 'NANTERRE', '92071', '2019-11-19 13:48:33', '2019-11-19 13:48:35', 'US', NULL, NULL),
(83, NULL, 'Van', 'Van Pen', '0698175630', '20 BIS JARDIN BOIELDIEU', NULL, 'NANTERRE', '92071', '2019-11-19 21:13:19', '2019-11-19 21:13:22', 'US', NULL, NULL),
(84, NULL, 'Van', 'Van Pen', '0698175630', '20 BIS JARDIN BOIELDIEU', NULL, 'NANTERRE', '92071', '2019-11-19 21:13:19', '2019-11-19 21:13:22', 'US', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_address_log_entries`
--

DROP TABLE IF EXISTS `sylius_address_log_entries`;
CREATE TABLE IF NOT EXISTS `sylius_address_log_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logged_at` datetime NOT NULL,
  `object_id` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `data` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_address_log_entries`
--

INSERT INTO `sylius_address_log_entries` (`id`, `action`, `logged_at`, `object_id`, `object_class`, `version`, `data`, `username`) VALUES
(3, 'create', '2019-11-13 11:44:17', '3', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Kendra\";s:8:\"lastName\";s:11:\"Greenfelder\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"76270 Dee Wells Suite 607\";s:7:\"company\";N;s:4:\"city\";s:11:\"North Sadie\";s:8:\"postcode\";s:10:\"63064-3753\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(4, 'create', '2019-11-13 11:44:17', '4', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Kendra\";s:8:\"lastName\";s:11:\"Greenfelder\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"76270 Dee Wells Suite 607\";s:7:\"company\";N;s:4:\"city\";s:11:\"North Sadie\";s:8:\"postcode\";s:10:\"63064-3753\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(5, 'create', '2019-11-13 11:44:17', '5', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Kendra\";s:8:\"lastName\";s:11:\"Greenfelder\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"76270 Dee Wells Suite 607\";s:7:\"company\";N;s:4:\"city\";s:11:\"North Sadie\";s:8:\"postcode\";s:10:\"63064-3753\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(6, 'create', '2019-11-13 11:44:18', '6', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Kariane\";s:8:\"lastName\";s:7:\"Gutmann\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"977 Marlen Route Apt. 486\";s:7:\"company\";N;s:4:\"city\";s:13:\"Estherchester\";s:8:\"postcode\";s:5:\"26867\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(7, 'create', '2019-11-13 11:44:18', '7', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Kariane\";s:8:\"lastName\";s:7:\"Gutmann\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"977 Marlen Route Apt. 486\";s:7:\"company\";N;s:4:\"city\";s:13:\"Estherchester\";s:8:\"postcode\";s:5:\"26867\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(8, 'create', '2019-11-13 11:44:18', '8', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Kariane\";s:8:\"lastName\";s:7:\"Gutmann\";s:11:\"phoneNumber\";N;s:6:\"street\";s:25:\"977 Marlen Route Apt. 486\";s:7:\"company\";N;s:4:\"city\";s:13:\"Estherchester\";s:8:\"postcode\";s:5:\"26867\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(9, 'create', '2019-11-13 11:44:18', '9', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Shaylee\";s:8:\"lastName\";s:7:\"Dickens\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"10503 Wunsch Path Suite 440\";s:7:\"company\";N;s:4:\"city\";s:11:\"Rowechester\";s:8:\"postcode\";s:5:\"80378\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(10, 'create', '2019-11-13 11:44:18', '10', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Shaylee\";s:8:\"lastName\";s:7:\"Dickens\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"10503 Wunsch Path Suite 440\";s:7:\"company\";N;s:4:\"city\";s:11:\"Rowechester\";s:8:\"postcode\";s:5:\"80378\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(11, 'create', '2019-11-13 11:44:18', '11', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Shaylee\";s:8:\"lastName\";s:7:\"Dickens\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"10503 Wunsch Path Suite 440\";s:7:\"company\";N;s:4:\"city\";s:11:\"Rowechester\";s:8:\"postcode\";s:5:\"80378\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(12, 'create', '2019-11-13 11:44:18', '12', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Alva\";s:8:\"lastName\";s:6:\"Hansen\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"3653 Kertzmann Well\";s:7:\"company\";N;s:4:\"city\";s:9:\"Kearabury\";s:8:\"postcode\";s:10:\"63374-8105\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(13, 'create', '2019-11-13 11:44:18', '13', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Alva\";s:8:\"lastName\";s:6:\"Hansen\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"3653 Kertzmann Well\";s:7:\"company\";N;s:4:\"city\";s:9:\"Kearabury\";s:8:\"postcode\";s:10:\"63374-8105\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(14, 'create', '2019-11-13 11:44:18', '14', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Alva\";s:8:\"lastName\";s:6:\"Hansen\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"3653 Kertzmann Well\";s:7:\"company\";N;s:4:\"city\";s:9:\"Kearabury\";s:8:\"postcode\";s:10:\"63374-8105\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(15, 'create', '2019-11-13 11:44:18', '15', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Georgette\";s:8:\"lastName\";s:6:\"Larson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:24:\"60833 Yost Club Apt. 989\";s:7:\"company\";N;s:4:\"city\";s:10:\"Larkinstad\";s:8:\"postcode\";s:5:\"19930\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(16, 'create', '2019-11-13 11:44:18', '16', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Georgette\";s:8:\"lastName\";s:6:\"Larson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:24:\"60833 Yost Club Apt. 989\";s:7:\"company\";N;s:4:\"city\";s:10:\"Larkinstad\";s:8:\"postcode\";s:5:\"19930\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(17, 'create', '2019-11-13 11:44:18', '17', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Georgette\";s:8:\"lastName\";s:6:\"Larson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:24:\"60833 Yost Club Apt. 989\";s:7:\"company\";N;s:4:\"city\";s:10:\"Larkinstad\";s:8:\"postcode\";s:5:\"19930\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(18, 'create', '2019-11-13 11:44:18', '18', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Orion\";s:8:\"lastName\";s:7:\"Trantow\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"93369 Rosalee Vista\";s:7:\"company\";N;s:4:\"city\";s:10:\"South Rudy\";s:8:\"postcode\";s:10:\"00570-9111\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(19, 'create', '2019-11-13 11:44:18', '19', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Orion\";s:8:\"lastName\";s:7:\"Trantow\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"93369 Rosalee Vista\";s:7:\"company\";N;s:4:\"city\";s:10:\"South Rudy\";s:8:\"postcode\";s:10:\"00570-9111\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(20, 'create', '2019-11-13 11:44:18', '20', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Orion\";s:8:\"lastName\";s:7:\"Trantow\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"93369 Rosalee Vista\";s:7:\"company\";N;s:4:\"city\";s:10:\"South Rudy\";s:8:\"postcode\";s:10:\"00570-9111\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(21, 'create', '2019-11-13 11:44:18', '21', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Cary\";s:8:\"lastName\";s:7:\"Simonis\";s:11:\"phoneNumber\";N;s:6:\"street\";s:31:\"40661 Jenkins Mission Suite 656\";s:7:\"company\";N;s:4:\"city\";s:8:\"Tobybury\";s:8:\"postcode\";s:10:\"62461-4686\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(22, 'create', '2019-11-13 11:44:18', '22', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Cary\";s:8:\"lastName\";s:7:\"Simonis\";s:11:\"phoneNumber\";N;s:6:\"street\";s:31:\"40661 Jenkins Mission Suite 656\";s:7:\"company\";N;s:4:\"city\";s:8:\"Tobybury\";s:8:\"postcode\";s:10:\"62461-4686\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(23, 'create', '2019-11-13 11:44:18', '23', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Cary\";s:8:\"lastName\";s:7:\"Simonis\";s:11:\"phoneNumber\";N;s:6:\"street\";s:31:\"40661 Jenkins Mission Suite 656\";s:7:\"company\";N;s:4:\"city\";s:8:\"Tobybury\";s:8:\"postcode\";s:10:\"62461-4686\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(24, 'create', '2019-11-13 11:44:18', '24', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Dahlia\";s:8:\"lastName\";s:5:\"Crist\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"438 Nayeli Squares\";s:7:\"company\";N;s:4:\"city\";s:8:\"Miketown\";s:8:\"postcode\";s:10:\"91687-6556\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(25, 'create', '2019-11-13 11:44:18', '25', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Dahlia\";s:8:\"lastName\";s:5:\"Crist\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"438 Nayeli Squares\";s:7:\"company\";N;s:4:\"city\";s:8:\"Miketown\";s:8:\"postcode\";s:10:\"91687-6556\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(26, 'create', '2019-11-13 11:44:18', '26', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Dahlia\";s:8:\"lastName\";s:5:\"Crist\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"438 Nayeli Squares\";s:7:\"company\";N;s:4:\"city\";s:8:\"Miketown\";s:8:\"postcode\";s:10:\"91687-6556\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(27, 'create', '2019-11-13 11:44:18', '27', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Kameron\";s:8:\"lastName\";s:5:\"Boehm\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"2117 Sedrick Forks\";s:7:\"company\";N;s:4:\"city\";s:10:\"Hyattville\";s:8:\"postcode\";s:10:\"77933-2618\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(28, 'create', '2019-11-13 11:44:18', '28', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Kameron\";s:8:\"lastName\";s:5:\"Boehm\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"2117 Sedrick Forks\";s:7:\"company\";N;s:4:\"city\";s:10:\"Hyattville\";s:8:\"postcode\";s:10:\"77933-2618\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(29, 'create', '2019-11-13 11:44:18', '29', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Kameron\";s:8:\"lastName\";s:5:\"Boehm\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"2117 Sedrick Forks\";s:7:\"company\";N;s:4:\"city\";s:10:\"Hyattville\";s:8:\"postcode\";s:10:\"77933-2618\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(30, 'create', '2019-11-13 11:44:18', '30', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Else\";s:8:\"lastName\";s:6:\"Daniel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"363 Conn Lane\";s:7:\"company\";N;s:4:\"city\";s:15:\"Port Leathaview\";s:8:\"postcode\";s:10:\"49465-6465\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(31, 'create', '2019-11-13 11:44:18', '31', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Else\";s:8:\"lastName\";s:6:\"Daniel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"363 Conn Lane\";s:7:\"company\";N;s:4:\"city\";s:15:\"Port Leathaview\";s:8:\"postcode\";s:10:\"49465-6465\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(32, 'create', '2019-11-13 11:44:18', '32', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Else\";s:8:\"lastName\";s:6:\"Daniel\";s:11:\"phoneNumber\";N;s:6:\"street\";s:13:\"363 Conn Lane\";s:7:\"company\";N;s:4:\"city\";s:15:\"Port Leathaview\";s:8:\"postcode\";s:10:\"49465-6465\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(33, 'create', '2019-11-13 11:44:18', '33', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Bertrand\";s:8:\"lastName\";s:7:\"Bernier\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"6171 Block Mission Suite 886\";s:7:\"company\";N;s:4:\"city\";s:15:\"East Marinabury\";s:8:\"postcode\";s:10:\"85204-3619\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(34, 'create', '2019-11-13 11:44:18', '34', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Bertrand\";s:8:\"lastName\";s:7:\"Bernier\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"6171 Block Mission Suite 886\";s:7:\"company\";N;s:4:\"city\";s:15:\"East Marinabury\";s:8:\"postcode\";s:10:\"85204-3619\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(35, 'create', '2019-11-13 11:44:18', '35', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Bertrand\";s:8:\"lastName\";s:7:\"Bernier\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"6171 Block Mission Suite 886\";s:7:\"company\";N;s:4:\"city\";s:15:\"East Marinabury\";s:8:\"postcode\";s:10:\"85204-3619\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(36, 'create', '2019-11-13 11:44:18', '36', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Nayeli\";s:8:\"lastName\";s:6:\"Rippin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"103 Jenkins Ridge\";s:7:\"company\";N;s:4:\"city\";s:12:\"South Bonita\";s:8:\"postcode\";s:5:\"34113\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(37, 'create', '2019-11-13 11:44:18', '37', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Nayeli\";s:8:\"lastName\";s:6:\"Rippin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"103 Jenkins Ridge\";s:7:\"company\";N;s:4:\"city\";s:12:\"South Bonita\";s:8:\"postcode\";s:5:\"34113\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(38, 'create', '2019-11-13 11:44:18', '38', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Nayeli\";s:8:\"lastName\";s:6:\"Rippin\";s:11:\"phoneNumber\";N;s:6:\"street\";s:17:\"103 Jenkins Ridge\";s:7:\"company\";N;s:4:\"city\";s:12:\"South Bonita\";s:8:\"postcode\";s:5:\"34113\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(39, 'create', '2019-11-13 11:44:18', '39', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Graciela\";s:8:\"lastName\";s:5:\"Lesch\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"202 Landen Forest Suite 590\";s:7:\"company\";N;s:4:\"city\";s:14:\"West Arelyside\";s:8:\"postcode\";s:10:\"17912-3591\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(40, 'create', '2019-11-13 11:44:18', '40', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Graciela\";s:8:\"lastName\";s:5:\"Lesch\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"202 Landen Forest Suite 590\";s:7:\"company\";N;s:4:\"city\";s:14:\"West Arelyside\";s:8:\"postcode\";s:10:\"17912-3591\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(41, 'create', '2019-11-13 11:44:18', '41', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Graciela\";s:8:\"lastName\";s:5:\"Lesch\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"202 Landen Forest Suite 590\";s:7:\"company\";N;s:4:\"city\";s:14:\"West Arelyside\";s:8:\"postcode\";s:10:\"17912-3591\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(42, 'create', '2019-11-13 11:44:18', '42', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Valentina\";s:8:\"lastName\";s:7:\"Abshire\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"438 Parisian Circle Apt. 810\";s:7:\"company\";N;s:4:\"city\";s:14:\"West Cleveland\";s:8:\"postcode\";s:5:\"98635\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(43, 'create', '2019-11-13 11:44:18', '43', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Valentina\";s:8:\"lastName\";s:7:\"Abshire\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"438 Parisian Circle Apt. 810\";s:7:\"company\";N;s:4:\"city\";s:14:\"West Cleveland\";s:8:\"postcode\";s:5:\"98635\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(44, 'create', '2019-11-13 11:44:18', '44', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:9:\"Valentina\";s:8:\"lastName\";s:7:\"Abshire\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"438 Parisian Circle Apt. 810\";s:7:\"company\";N;s:4:\"city\";s:14:\"West Cleveland\";s:8:\"postcode\";s:5:\"98635\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(45, 'create', '2019-11-13 11:44:18', '45', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Dejuan\";s:8:\"lastName\";s:5:\"Pagac\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"6888 Thea Cape\";s:7:\"company\";N;s:4:\"city\";s:8:\"Leontown\";s:8:\"postcode\";s:5:\"97572\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(46, 'create', '2019-11-13 11:44:18', '46', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Dejuan\";s:8:\"lastName\";s:5:\"Pagac\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"6888 Thea Cape\";s:7:\"company\";N;s:4:\"city\";s:8:\"Leontown\";s:8:\"postcode\";s:5:\"97572\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(47, 'create', '2019-11-13 11:44:18', '47', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Dejuan\";s:8:\"lastName\";s:5:\"Pagac\";s:11:\"phoneNumber\";N;s:6:\"street\";s:14:\"6888 Thea Cape\";s:7:\"company\";N;s:4:\"city\";s:8:\"Leontown\";s:8:\"postcode\";s:5:\"97572\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(48, 'create', '2019-11-13 11:44:18', '48', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Kristin\";s:8:\"lastName\";s:9:\"McDermott\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"31527 Alta Cliffs Apt. 108\";s:7:\"company\";N;s:4:\"city\";s:11:\"Farrellstad\";s:8:\"postcode\";s:5:\"64844\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(49, 'create', '2019-11-13 11:44:18', '49', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Kristin\";s:8:\"lastName\";s:9:\"McDermott\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"31527 Alta Cliffs Apt. 108\";s:7:\"company\";N;s:4:\"city\";s:11:\"Farrellstad\";s:8:\"postcode\";s:5:\"64844\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(50, 'create', '2019-11-13 11:44:18', '50', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Kristin\";s:8:\"lastName\";s:9:\"McDermott\";s:11:\"phoneNumber\";N;s:6:\"street\";s:26:\"31527 Alta Cliffs Apt. 108\";s:7:\"company\";N;s:4:\"city\";s:11:\"Farrellstad\";s:8:\"postcode\";s:5:\"64844\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(51, 'create', '2019-11-13 11:44:18', '51', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Arden\";s:8:\"lastName\";s:7:\"Bartell\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"7493 Bogisich Dale Apt. 705\";s:7:\"company\";N;s:4:\"city\";s:19:\"North Tremainemouth\";s:8:\"postcode\";s:5:\"06610\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(52, 'create', '2019-11-13 11:44:18', '52', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Arden\";s:8:\"lastName\";s:7:\"Bartell\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"7493 Bogisich Dale Apt. 705\";s:7:\"company\";N;s:4:\"city\";s:19:\"North Tremainemouth\";s:8:\"postcode\";s:5:\"06610\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(53, 'create', '2019-11-13 11:44:18', '53', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Arden\";s:8:\"lastName\";s:7:\"Bartell\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"7493 Bogisich Dale Apt. 705\";s:7:\"company\";N;s:4:\"city\";s:19:\"North Tremainemouth\";s:8:\"postcode\";s:5:\"06610\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(54, 'create', '2019-11-13 11:44:18', '54', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Shanna\";s:8:\"lastName\";s:5:\"Lemke\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"71013 Denesik Keys\";s:7:\"company\";N;s:4:\"city\";s:10:\"Gerlachton\";s:8:\"postcode\";s:10:\"23255-8570\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(55, 'create', '2019-11-13 11:44:18', '55', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Shanna\";s:8:\"lastName\";s:5:\"Lemke\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"71013 Denesik Keys\";s:7:\"company\";N;s:4:\"city\";s:10:\"Gerlachton\";s:8:\"postcode\";s:10:\"23255-8570\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(56, 'create', '2019-11-13 11:44:18', '56', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Shanna\";s:8:\"lastName\";s:5:\"Lemke\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"71013 Denesik Keys\";s:7:\"company\";N;s:4:\"city\";s:10:\"Gerlachton\";s:8:\"postcode\";s:10:\"23255-8570\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(57, 'create', '2019-11-13 11:44:18', '57', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Eunice\";s:8:\"lastName\";s:5:\"Green\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"48032 Salma Mission\";s:7:\"company\";N;s:4:\"city\";s:10:\"New Marina\";s:8:\"postcode\";s:5:\"78580\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(58, 'create', '2019-11-13 11:44:18', '58', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Eunice\";s:8:\"lastName\";s:5:\"Green\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"48032 Salma Mission\";s:7:\"company\";N;s:4:\"city\";s:10:\"New Marina\";s:8:\"postcode\";s:5:\"78580\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(59, 'create', '2019-11-13 11:44:18', '59', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Eunice\";s:8:\"lastName\";s:5:\"Green\";s:11:\"phoneNumber\";N;s:6:\"street\";s:19:\"48032 Salma Mission\";s:7:\"company\";N;s:4:\"city\";s:10:\"New Marina\";s:8:\"postcode\";s:5:\"78580\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(60, 'create', '2019-11-13 11:44:18', '60', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Belle\";s:8:\"lastName\";s:5:\"Berge\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"7667 Alexander Walks Apt. 361\";s:7:\"company\";N;s:4:\"city\";s:13:\"West Fredberg\";s:8:\"postcode\";s:5:\"70739\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(61, 'create', '2019-11-13 11:44:18', '61', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Belle\";s:8:\"lastName\";s:5:\"Berge\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"7667 Alexander Walks Apt. 361\";s:7:\"company\";N;s:4:\"city\";s:13:\"West Fredberg\";s:8:\"postcode\";s:5:\"70739\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(62, 'create', '2019-11-13 11:44:18', '62', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Belle\";s:8:\"lastName\";s:5:\"Berge\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"7667 Alexander Walks Apt. 361\";s:7:\"company\";N;s:4:\"city\";s:13:\"West Fredberg\";s:8:\"postcode\";s:5:\"70739\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(63, 'create', '2019-11-13 11:44:18', '63', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Hermina\";s:8:\"lastName\";s:4:\"Wiza\";s:11:\"phoneNumber\";N;s:6:\"street\";s:27:\"232 Schoen Village Apt. 219\";s:7:\"company\";N;s:4:\"city\";s:11:\"Jaylinhaven\";s:8:\"postcode\";s:5:\"81352\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(64, 'create', '2019-11-13 11:44:18', '64', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Kyla\";s:8:\"lastName\";s:8:\"O\'Reilly\";s:11:\"phoneNumber\";N;s:6:\"street\";s:18:\"6970 Theresa Green\";s:7:\"company\";s:28:\"Schultz, Buckridge and Kozey\";s:4:\"city\";s:10:\"Bradenfort\";s:8:\"postcode\";s:5:\"59289\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(65, 'create', '2019-11-13 11:44:18', '65', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Mossie\";s:8:\"lastName\";s:10:\"Macejkovic\";s:11:\"phoneNumber\";s:17:\"875.681.5782 x667\";s:6:\"street\";s:19:\"75777 Adeline Spurs\";s:7:\"company\";N;s:4:\"city\";s:12:\"Port Melyssa\";s:8:\"postcode\";s:10:\"56174-5363\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(66, 'create', '2019-11-13 11:44:18', '66', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Celia\";s:8:\"lastName\";s:5:\"Olson\";s:11:\"phoneNumber\";N;s:6:\"street\";s:15:\"368 Doyle Plain\";s:7:\"company\";s:15:\"Shanahan-Hudson\";s:4:\"city\";s:9:\"Dudleyton\";s:8:\"postcode\";s:10:\"61870-4221\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(67, 'create', '2019-11-13 11:44:18', '67', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:5:\"Berta\";s:8:\"lastName\";s:8:\"Bogisich\";s:11:\"phoneNumber\";N;s:6:\"street\";s:28:\"22424 Strosin Glen Suite 224\";s:7:\"company\";s:11:\"Hermann Inc\";s:4:\"city\";s:12:\"New Hughtown\";s:8:\"postcode\";s:10:\"50480-2578\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(68, 'create', '2019-11-13 11:44:18', '68', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:8:\"Keyshawn\";s:8:\"lastName\";s:5:\"Welch\";s:11:\"phoneNumber\";N;s:6:\"street\";s:21:\"23270 Troy Trafficway\";s:7:\"company\";N;s:4:\"city\";s:10:\"Travonfurt\";s:8:\"postcode\";s:5:\"39073\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(69, 'create', '2019-11-13 11:44:18', '69', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:6:\"Felipa\";s:8:\"lastName\";s:7:\"DuBuque\";s:11:\"phoneNumber\";s:15:\"+1-950-347-6385\";s:6:\"street\";s:29:\"91855 Muller Highway Apt. 397\";s:7:\"company\";s:20:\"Toy, Cole and Cremin\";s:4:\"city\";s:9:\"Ginaburgh\";s:8:\"postcode\";s:5:\"31401\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(70, 'create', '2019-11-13 11:44:18', '70', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:7:\"Roberto\";s:8:\"lastName\";s:5:\"Stark\";s:11:\"phoneNumber\";s:21:\"(489) 775-2120 x73012\";s:6:\"street\";s:16:\"36121 Rene Ferry\";s:7:\"company\";s:15:\"White-Gulgowski\";s:4:\"city\";s:11:\"Port Simeon\";s:8:\"postcode\";s:10:\"03088-4906\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(71, 'create', '2019-11-13 11:44:18', '71', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Macy\";s:8:\"lastName\";s:5:\"Kutch\";s:11:\"phoneNumber\";s:19:\"1-595-342-9222 x623\";s:6:\"street\";s:19:\"27914 Brekke Summit\";s:7:\"company\";N;s:4:\"city\";s:12:\"Douglashaven\";s:8:\"postcode\";s:10:\"60416-7817\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(72, 'create', '2019-11-13 11:44:18', '72', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:4:\"Lora\";s:8:\"lastName\";s:6:\"Klocko\";s:11:\"phoneNumber\";N;s:6:\"street\";s:29:\"94466 Tianna Skyway Suite 022\";s:7:\"company\";s:24:\"Grady, Rempel and Glover\";s:4:\"city\";s:8:\"Ratketon\";s:8:\"postcode\";s:5:\"12515\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(73, 'create', '2019-11-18 08:07:17', '73', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Van\";s:8:\"lastName\";s:7:\"Van Pen\";s:11:\"phoneNumber\";s:10:\"0698175630\";s:6:\"street\";s:23:\"20 BIS JARDIN BOIELDIEU\";s:7:\"company\";N;s:4:\"city\";s:8:\"NANTERRE\";s:8:\"postcode\";s:5:\"92071\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(74, 'create', '2019-11-18 08:07:17', '74', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Van\";s:8:\"lastName\";s:7:\"Van Pen\";s:11:\"phoneNumber\";s:10:\"0698175630\";s:6:\"street\";s:23:\"20 BIS JARDIN BOIELDIEU\";s:7:\"company\";N;s:4:\"city\";s:8:\"NANTERRE\";s:8:\"postcode\";s:5:\"92071\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', NULL),
(75, 'create', '2019-11-18 14:39:39', '75', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Van\";s:8:\"lastName\";s:7:\"Van Pen\";s:11:\"phoneNumber\";s:10:\"0698175630\";s:6:\"street\";s:23:\"20 BIS JARDIN BOIELDIEU\";s:7:\"company\";N;s:4:\"city\";s:8:\"NANTERRE\";s:8:\"postcode\";s:5:\"92071\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";s:5:\"FR-PR\";s:12:\"provinceName\";N;}', NULL),
(76, 'create', '2019-11-18 14:39:39', '76', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Van\";s:8:\"lastName\";s:7:\"Van Pen\";s:11:\"phoneNumber\";s:10:\"0698175630\";s:6:\"street\";s:23:\"20 BIS JARDIN BOIELDIEU\";s:7:\"company\";N;s:4:\"city\";s:8:\"NANTERRE\";s:8:\"postcode\";s:5:\"92071\";s:11:\"countryCode\";s:2:\"FR\";s:12:\"provinceCode\";s:5:\"FR-PR\";s:12:\"provinceName\";N;}', NULL),
(77, 'update', '2019-11-18 14:40:04', '75', 'App\\Entity\\Addressing\\Address', 2, 'a:1:{s:11:\"countryCode\";s:2:\"US\";}', NULL),
(78, 'update', '2019-11-18 14:40:04', '76', 'App\\Entity\\Addressing\\Address', 2, 'a:1:{s:11:\"countryCode\";s:2:\"US\";}', NULL),
(79, 'create', '2019-11-18 14:40:42', '77', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Van\";s:8:\"lastName\";s:7:\"Van Pen\";s:11:\"phoneNumber\";s:10:\"0698175630\";s:6:\"street\";s:23:\"20 BIS JARDIN BOIELDIEU\";s:7:\"company\";N;s:4:\"city\";s:8:\"NANTERRE\";s:8:\"postcode\";s:5:\"92071\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";s:5:\"FR-PR\";s:12:\"provinceName\";N;}', NULL),
(80, 'create', '2019-11-19 11:19:17', '78', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Van\";s:8:\"lastName\";s:7:\"Van Pen\";s:11:\"phoneNumber\";s:10:\"0698175630\";s:6:\"street\";s:23:\"20 BIS JARDIN BOIELDIEU\";s:7:\"company\";N;s:4:\"city\";s:8:\"NANTERRE\";s:8:\"postcode\";s:5:\"92071\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', 'van.t.pen@gmail.com'),
(81, 'create', '2019-11-19 11:19:17', '79', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Van\";s:8:\"lastName\";s:7:\"Van Pen\";s:11:\"phoneNumber\";s:10:\"0698175630\";s:6:\"street\";s:23:\"20 BIS JARDIN BOIELDIEU\";s:7:\"company\";N;s:4:\"city\";s:8:\"NANTERRE\";s:8:\"postcode\";s:5:\"92071\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', 'van.t.pen@gmail.com'),
(82, 'create', '2019-11-19 11:20:07', '80', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Van\";s:8:\"lastName\";s:7:\"Van Pen\";s:11:\"phoneNumber\";s:10:\"0698175630\";s:6:\"street\";s:23:\"20 BIS JARDIN BOIELDIEU\";s:7:\"company\";N;s:4:\"city\";s:8:\"NANTERRE\";s:8:\"postcode\";s:5:\"92071\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', 'van.t.pen@gmail.com'),
(83, 'create', '2019-11-19 13:48:35', '81', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Van\";s:8:\"lastName\";s:7:\"Van Pen\";s:11:\"phoneNumber\";s:10:\"0698175630\";s:6:\"street\";s:23:\"20 BIS JARDIN BOIELDIEU\";s:7:\"company\";N;s:4:\"city\";s:8:\"NANTERRE\";s:8:\"postcode\";s:5:\"92071\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', 'van.t.pen@gmail.com'),
(84, 'create', '2019-11-19 13:48:35', '82', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Van\";s:8:\"lastName\";s:7:\"Van Pen\";s:11:\"phoneNumber\";s:10:\"0698175630\";s:6:\"street\";s:23:\"20 BIS JARDIN BOIELDIEU\";s:7:\"company\";N;s:4:\"city\";s:8:\"NANTERRE\";s:8:\"postcode\";s:5:\"92071\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', 'van.t.pen@gmail.com'),
(85, 'create', '2019-11-19 21:13:22', '83', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Van\";s:8:\"lastName\";s:7:\"Van Pen\";s:11:\"phoneNumber\";s:10:\"0698175630\";s:6:\"street\";s:23:\"20 BIS JARDIN BOIELDIEU\";s:7:\"company\";N;s:4:\"city\";s:8:\"NANTERRE\";s:8:\"postcode\";s:5:\"92071\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', 'van.t.pen@gmail.com'),
(86, 'create', '2019-11-19 21:13:22', '84', 'App\\Entity\\Addressing\\Address', 1, 'a:10:{s:9:\"firstName\";s:3:\"Van\";s:8:\"lastName\";s:7:\"Van Pen\";s:11:\"phoneNumber\";s:10:\"0698175630\";s:6:\"street\";s:23:\"20 BIS JARDIN BOIELDIEU\";s:7:\"company\";N;s:4:\"city\";s:8:\"NANTERRE\";s:8:\"postcode\";s:5:\"92071\";s:11:\"countryCode\";s:2:\"US\";s:12:\"provinceCode\";N;s:12:\"provinceName\";N;}', 'van.t.pen@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_adjustment`
--

DROP TABLE IF EXISTS `sylius_adjustment`;
CREATE TABLE IF NOT EXISTS `sylius_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `order_item_id` int(11) DEFAULT NULL,
  `order_item_unit_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `is_neutral` tinyint(1) NOT NULL,
  `is_locked` tinyint(1) NOT NULL,
  `origin_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_ACA6E0F28D9F6D38` (`order_id`),
  KEY `IDX_ACA6E0F2E415FB15` (`order_item_id`),
  KEY `IDX_ACA6E0F2F720C233` (`order_item_unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=632 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_adjustment`
--

INSERT INTO `sylius_adjustment` (`id`, `order_id`, `order_item_id`, `order_item_unit_id`, `type`, `label`, `amount`, `is_neutral`, `is_locked`, `origin_code`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 2, 'order_promotion', 'New Year', -108, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(2, NULL, NULL, 2, 'order_promotion', 'Christmas', -1668, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(3, NULL, NULL, 2, 'tax', 'Clothing Sales Tax 7% (7%)', 186, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(4, NULL, NULL, 3, 'order_promotion', 'New Year', -107, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(5, NULL, NULL, 3, 'order_promotion', 'Christmas', -1668, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(6, NULL, NULL, 3, 'tax', 'Clothing Sales Tax 7% (7%)', 186, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(7, NULL, NULL, 4, 'order_promotion', 'New Year', -107, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(8, NULL, NULL, 4, 'order_promotion', 'Christmas', -1668, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(9, NULL, NULL, 4, 'tax', 'Clothing Sales Tax 7% (7%)', 186, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(10, NULL, NULL, 5, 'order_promotion', 'New Year', -107, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(11, NULL, NULL, 5, 'order_promotion', 'Christmas', -1668, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(12, NULL, NULL, 5, 'tax', 'Clothing Sales Tax 7% (7%)', 185, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(13, NULL, NULL, 6, 'order_promotion', 'New Year', -146, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(14, NULL, NULL, 6, 'order_promotion', 'Christmas', -2266, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(15, NULL, NULL, 6, 'tax', 'Clothing Sales Tax 7% (7%)', 253, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(16, NULL, NULL, 7, 'order_promotion', 'New Year', -145, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(17, NULL, NULL, 7, 'order_promotion', 'Christmas', -2265, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(18, NULL, NULL, 7, 'tax', 'Clothing Sales Tax 7% (7%)', 252, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(19, NULL, NULL, 8, 'order_promotion', 'New Year', -140, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(20, NULL, NULL, 8, 'order_promotion', 'Christmas', -2180, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(21, NULL, NULL, 8, 'tax', 'Clothing Sales Tax 7% (7%)', 243, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(22, NULL, NULL, 9, 'order_promotion', 'New Year', -140, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(23, NULL, NULL, 9, 'order_promotion', 'Christmas', -2179, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(24, NULL, NULL, 9, 'tax', 'Clothing Sales Tax 7% (7%)', 243, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(25, 2, NULL, NULL, 'shipping', 'UPS', 776, 0, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(26, NULL, NULL, 10, 'order_promotion', 'Christmas', -1036, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(27, NULL, NULL, 10, 'tax', 'Clothing Sales Tax 7% (7%)', 116, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(28, NULL, NULL, 11, 'order_promotion', 'Christmas', -1035, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(29, NULL, NULL, 11, 'tax', 'Clothing Sales Tax 7% (7%)', 115, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(30, NULL, NULL, 12, 'order_promotion', 'Christmas', -1035, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(31, NULL, NULL, 12, 'tax', 'Clothing Sales Tax 7% (7%)', 115, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(32, 3, NULL, NULL, 'shipping', 'UPS', 776, 0, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(33, NULL, NULL, 13, 'order_promotion', 'New Year', -180, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(34, NULL, NULL, 13, 'order_promotion', 'Christmas', -2165, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(35, NULL, NULL, 13, 'tax', 'Clothing Sales Tax 7% (7%)', 241, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(36, NULL, NULL, 14, 'order_promotion', 'New Year', -69, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(37, NULL, NULL, 14, 'order_promotion', 'Christmas', -818, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(38, NULL, NULL, 14, 'tax', 'Clothing Sales Tax 7% (7%)', 91, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(39, NULL, NULL, 15, 'order_promotion', 'New Year', -68, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(40, NULL, NULL, 15, 'order_promotion', 'Christmas', -818, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(41, NULL, NULL, 15, 'tax', 'Clothing Sales Tax 7% (7%)', 91, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(42, NULL, NULL, 16, 'order_promotion', 'New Year', -68, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(43, NULL, NULL, 16, 'order_promotion', 'Christmas', -817, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(44, NULL, NULL, 16, 'tax', 'Clothing Sales Tax 7% (7%)', 91, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(45, NULL, NULL, 17, 'order_promotion', 'New Year', -68, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(46, NULL, NULL, 17, 'order_promotion', 'Christmas', -817, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(47, NULL, NULL, 17, 'tax', 'Clothing Sales Tax 7% (7%)', 91, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(48, NULL, NULL, 18, 'order_promotion', 'New Year', -110, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(49, NULL, NULL, 18, 'order_promotion', 'Christmas', -1312, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(50, NULL, NULL, 18, 'tax', 'Clothing Sales Tax 7% (7%)', 146, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(51, NULL, NULL, 19, 'order_promotion', 'New Year', -110, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(52, NULL, NULL, 19, 'order_promotion', 'Christmas', -1312, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(53, NULL, NULL, 19, 'tax', 'Clothing Sales Tax 7% (7%)', 146, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(54, NULL, NULL, 20, 'order_promotion', 'New Year', -109, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(55, NULL, NULL, 20, 'order_promotion', 'Christmas', -1312, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(56, NULL, NULL, 20, 'tax', 'Clothing Sales Tax 7% (7%)', 146, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(57, NULL, NULL, 21, 'order_promotion', 'New Year', -109, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(58, NULL, NULL, 21, 'order_promotion', 'Christmas', -1311, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(59, NULL, NULL, 21, 'tax', 'Clothing Sales Tax 7% (7%)', 146, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(60, NULL, NULL, 22, 'order_promotion', 'New Year', -109, 0, 0, 'new_year', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(61, NULL, NULL, 22, 'order_promotion', 'Christmas', -1311, 0, 0, 'christmas', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(62, NULL, NULL, 22, 'tax', 'Clothing Sales Tax 7% (7%)', 146, 1, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(63, 4, NULL, NULL, 'shipping', 'UPS', 776, 0, 0, NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(64, NULL, NULL, 23, 'order_promotion', 'New Year', -110, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(65, NULL, NULL, 23, 'order_promotion', 'Christmas', -2527, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(66, NULL, NULL, 23, 'tax', 'Clothing Sales Tax 7% (7%)', 282, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(67, NULL, NULL, 24, 'order_promotion', 'New Year', -110, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(68, NULL, NULL, 24, 'order_promotion', 'Christmas', -2527, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(69, NULL, NULL, 24, 'tax', 'Clothing Sales Tax 7% (7%)', 282, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(70, NULL, NULL, 25, 'order_promotion', 'New Year', -110, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(71, NULL, NULL, 25, 'order_promotion', 'Christmas', -2527, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(72, NULL, NULL, 25, 'tax', 'Clothing Sales Tax 7% (7%)', 282, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(73, NULL, NULL, 26, 'order_promotion', 'New Year', -110, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(74, NULL, NULL, 26, 'order_promotion', 'Christmas', -2527, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(75, NULL, NULL, 26, 'tax', 'Clothing Sales Tax 7% (7%)', 281, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(76, NULL, NULL, 27, 'order_promotion', 'New Year', -110, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(77, NULL, NULL, 27, 'order_promotion', 'Christmas', -2527, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(78, NULL, NULL, 27, 'tax', 'Clothing Sales Tax 7% (7%)', 281, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(79, NULL, NULL, 28, 'order_promotion', 'New Year', -144, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(80, NULL, NULL, 28, 'order_promotion', 'Christmas', -3318, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(81, NULL, NULL, 28, 'tax', 'Clothing Sales Tax 7% (7%)', 370, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(82, NULL, NULL, 29, 'order_promotion', 'New Year', -77, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(83, NULL, NULL, 29, 'order_promotion', 'Christmas', -1759, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(84, NULL, NULL, 29, 'tax', 'Clothing Sales Tax 7% (7%)', 196, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(85, NULL, NULL, 30, 'order_promotion', 'New Year', -77, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(86, NULL, NULL, 30, 'order_promotion', 'Christmas', -1759, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(87, NULL, NULL, 30, 'tax', 'Clothing Sales Tax 7% (7%)', 196, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(88, NULL, NULL, 31, 'order_promotion', 'New Year', -76, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(89, NULL, NULL, 31, 'order_promotion', 'Christmas', -1759, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(90, NULL, NULL, 31, 'tax', 'Clothing Sales Tax 7% (7%)', 196, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(91, NULL, NULL, 32, 'order_promotion', 'New Year', -76, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(92, NULL, NULL, 32, 'order_promotion', 'Christmas', -1758, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(93, NULL, NULL, 32, 'tax', 'Clothing Sales Tax 7% (7%)', 196, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(94, 5, NULL, NULL, 'shipping', 'DHL Express', 296, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(95, NULL, NULL, 33, 'order_promotion', 'New Year', -62, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(96, NULL, NULL, 33, 'order_promotion', 'Christmas', -1467, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(97, NULL, NULL, 33, 'tax', 'Clothing Sales Tax 7% (7%)', 164, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(98, NULL, NULL, 34, 'order_promotion', 'New Year', -61, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(99, NULL, NULL, 34, 'order_promotion', 'Christmas', -1466, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(100, NULL, NULL, 34, 'tax', 'Clothing Sales Tax 7% (7%)', 163, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(101, NULL, NULL, 35, 'order_promotion', 'New Year', -74, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(102, NULL, NULL, 35, 'order_promotion', 'Christmas', -1740, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(103, NULL, NULL, 35, 'tax', 'Sales Tax 20% (20%)', 593, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(104, NULL, NULL, 36, 'order_promotion', 'New Year', -73, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(105, NULL, NULL, 36, 'order_promotion', 'Christmas', -1740, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(106, NULL, NULL, 36, 'tax', 'Sales Tax 20% (20%)', 593, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(107, NULL, NULL, 37, 'order_promotion', 'New Year', -73, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(108, NULL, NULL, 37, 'order_promotion', 'Christmas', -1740, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(109, NULL, NULL, 37, 'tax', 'Sales Tax 20% (20%)', 592, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(110, NULL, NULL, 38, 'order_promotion', 'New Year', -79, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(111, NULL, NULL, 38, 'order_promotion', 'Christmas', -1874, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(112, NULL, NULL, 38, 'tax', 'Clothing Sales Tax 7% (7%)', 209, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(113, NULL, NULL, 39, 'order_promotion', 'New Year', -79, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(114, NULL, NULL, 39, 'order_promotion', 'Christmas', -1874, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(115, NULL, NULL, 39, 'tax', 'Clothing Sales Tax 7% (7%)', 209, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(116, NULL, NULL, 40, 'order_promotion', 'New Year', -79, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(117, NULL, NULL, 40, 'order_promotion', 'Christmas', -1874, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(118, NULL, NULL, 40, 'tax', 'Clothing Sales Tax 7% (7%)', 208, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(119, NULL, NULL, 41, 'order_promotion', 'New Year', -129, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(120, NULL, NULL, 41, 'order_promotion', 'Christmas', -3055, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(121, NULL, NULL, 41, 'tax', 'Clothing Sales Tax 7% (7%)', 341, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(122, NULL, NULL, 42, 'order_promotion', 'New Year', -128, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(123, NULL, NULL, 42, 'order_promotion', 'Christmas', -3055, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(124, NULL, NULL, 42, 'tax', 'Clothing Sales Tax 7% (7%)', 340, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(125, NULL, NULL, 43, 'order_promotion', 'New Year', -128, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(126, NULL, NULL, 43, 'order_promotion', 'Christmas', -3054, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(127, NULL, NULL, 43, 'tax', 'Clothing Sales Tax 7% (7%)', 340, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(128, NULL, NULL, 44, 'order_promotion', 'New Year', -35, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(129, NULL, NULL, 44, 'order_promotion', 'Christmas', -832, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(130, NULL, NULL, 44, 'tax', 'Clothing Sales Tax 7% (7%)', 93, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(131, 6, NULL, NULL, 'shipping', 'FedEx', 487, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(132, NULL, NULL, 45, 'order_promotion', 'New Year', -58, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(133, NULL, NULL, 45, 'order_promotion', 'Christmas', -1746, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(134, NULL, NULL, 45, 'tax', 'Sales Tax 20% (20%)', 595, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(135, NULL, NULL, 46, 'order_promotion', 'New Year', -57, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(136, NULL, NULL, 46, 'order_promotion', 'Christmas', -1746, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(137, NULL, NULL, 46, 'tax', 'Sales Tax 20% (20%)', 594, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(138, NULL, NULL, 47, 'order_promotion', 'New Year', -54, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(139, NULL, NULL, 47, 'order_promotion', 'Christmas', -1623, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(140, NULL, NULL, 47, 'tax', 'Sales Tax 20% (20%)', 553, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(141, NULL, NULL, 48, 'order_promotion', 'New Year', -53, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(142, NULL, NULL, 48, 'order_promotion', 'Christmas', -1622, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(143, NULL, NULL, 48, 'tax', 'Sales Tax 20% (20%)', 553, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(144, NULL, NULL, 49, 'order_promotion', 'New Year', -53, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(145, NULL, NULL, 49, 'order_promotion', 'Christmas', -1622, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(146, NULL, NULL, 49, 'tax', 'Sales Tax 20% (20%)', 552, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(147, NULL, NULL, 50, 'order_promotion', 'New Year', -53, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(148, NULL, NULL, 50, 'order_promotion', 'Christmas', -1622, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(149, NULL, NULL, 50, 'tax', 'Sales Tax 20% (20%)', 552, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(150, NULL, NULL, 51, 'order_promotion', 'New Year', -62, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(151, NULL, NULL, 51, 'order_promotion', 'Christmas', -1876, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(152, NULL, NULL, 51, 'tax', 'Clothing Sales Tax 7% (7%)', 209, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(153, NULL, NULL, 52, 'order_promotion', 'New Year', -62, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(154, NULL, NULL, 52, 'order_promotion', 'Christmas', -1876, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(155, NULL, NULL, 52, 'tax', 'Clothing Sales Tax 7% (7%)', 209, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(156, NULL, NULL, 53, 'order_promotion', 'New Year', -62, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(157, NULL, NULL, 53, 'order_promotion', 'Christmas', -1876, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(158, NULL, NULL, 53, 'tax', 'Clothing Sales Tax 7% (7%)', 209, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(159, NULL, NULL, 54, 'order_promotion', 'New Year', -61, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(160, NULL, NULL, 54, 'order_promotion', 'Christmas', -1875, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(161, NULL, NULL, 54, 'tax', 'Clothing Sales Tax 7% (7%)', 209, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(162, NULL, NULL, 55, 'order_promotion', 'New Year', -61, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(163, NULL, NULL, 55, 'order_promotion', 'Christmas', -1875, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(164, NULL, NULL, 55, 'tax', 'Clothing Sales Tax 7% (7%)', 209, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(165, NULL, NULL, 56, 'order_promotion', 'New Year', -67, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(166, NULL, NULL, 56, 'order_promotion', 'Christmas', -2045, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(167, NULL, NULL, 56, 'tax', 'Clothing Sales Tax 7% (7%)', 228, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(168, NULL, NULL, 57, 'order_promotion', 'New Year', -67, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(169, NULL, NULL, 57, 'order_promotion', 'Christmas', -2044, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(170, NULL, NULL, 57, 'tax', 'Clothing Sales Tax 7% (7%)', 228, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(171, NULL, NULL, 58, 'order_promotion', 'New Year', -67, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(172, NULL, NULL, 58, 'order_promotion', 'Christmas', -2044, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(173, NULL, NULL, 58, 'tax', 'Clothing Sales Tax 7% (7%)', 228, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(174, NULL, NULL, 59, 'order_promotion', 'New Year', -67, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(175, NULL, NULL, 59, 'order_promotion', 'Christmas', -2044, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(176, NULL, NULL, 59, 'tax', 'Clothing Sales Tax 7% (7%)', 228, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(177, NULL, NULL, 60, 'order_promotion', 'New Year', -67, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(178, NULL, NULL, 60, 'order_promotion', 'Christmas', -2044, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(179, NULL, NULL, 60, 'tax', 'Clothing Sales Tax 7% (7%)', 227, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(180, NULL, NULL, 61, 'order_promotion', 'New Year', -8, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(181, NULL, NULL, 61, 'order_promotion', 'Christmas', -222, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(182, NULL, NULL, 61, 'tax', 'Clothing Sales Tax 7% (7%)', 25, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(183, NULL, NULL, 62, 'order_promotion', 'New Year', -7, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(184, NULL, NULL, 62, 'order_promotion', 'Christmas', -222, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(185, NULL, NULL, 62, 'tax', 'Clothing Sales Tax 7% (7%)', 25, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(186, NULL, NULL, 63, 'order_promotion', 'New Year', -7, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(187, NULL, NULL, 63, 'order_promotion', 'Christmas', -222, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(188, NULL, NULL, 63, 'tax', 'Clothing Sales Tax 7% (7%)', 25, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(189, NULL, NULL, 64, 'order_promotion', 'New Year', -7, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(190, NULL, NULL, 64, 'order_promotion', 'Christmas', -222, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(191, NULL, NULL, 64, 'tax', 'Clothing Sales Tax 7% (7%)', 24, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(192, 7, NULL, NULL, 'shipping', 'FedEx', 487, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(193, NULL, NULL, 65, 'order_promotion', 'New Year', -60, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(194, NULL, NULL, 65, 'order_promotion', 'Christmas', -2152, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(195, NULL, NULL, 65, 'tax', 'Clothing Sales Tax 7% (7%)', 240, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(196, NULL, NULL, 66, 'order_promotion', 'New Year', -60, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(197, NULL, NULL, 66, 'order_promotion', 'Christmas', -2152, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(198, NULL, NULL, 66, 'tax', 'Clothing Sales Tax 7% (7%)', 240, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(199, NULL, NULL, 67, 'order_promotion', 'New Year', -60, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(200, NULL, NULL, 67, 'order_promotion', 'Christmas', -2151, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(201, NULL, NULL, 67, 'tax', 'Clothing Sales Tax 7% (7%)', 240, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(202, NULL, NULL, 68, 'order_promotion', 'New Year', -59, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(203, NULL, NULL, 68, 'order_promotion', 'Christmas', -2151, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(204, NULL, NULL, 68, 'tax', 'Clothing Sales Tax 7% (7%)', 239, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(205, NULL, NULL, 69, 'order_promotion', 'New Year', -13, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(206, NULL, NULL, 69, 'order_promotion', 'Christmas', -457, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(207, NULL, NULL, 69, 'tax', 'Clothing Sales Tax 7% (7%)', 51, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(208, NULL, NULL, 70, 'order_promotion', 'New Year', -13, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(209, NULL, NULL, 70, 'order_promotion', 'Christmas', -457, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(210, NULL, NULL, 70, 'tax', 'Clothing Sales Tax 7% (7%)', 51, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(211, NULL, NULL, 71, 'order_promotion', 'New Year', -13, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(212, NULL, NULL, 71, 'order_promotion', 'Christmas', -456, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(213, NULL, NULL, 71, 'tax', 'Clothing Sales Tax 7% (7%)', 51, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(214, NULL, NULL, 72, 'order_promotion', 'New Year', -12, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(215, NULL, NULL, 72, 'order_promotion', 'Christmas', -456, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(216, NULL, NULL, 72, 'tax', 'Clothing Sales Tax 7% (7%)', 51, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(217, NULL, NULL, 73, 'order_promotion', 'New Year', -12, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(218, NULL, NULL, 73, 'order_promotion', 'Christmas', -456, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(219, NULL, NULL, 73, 'tax', 'Clothing Sales Tax 7% (7%)', 50, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(220, NULL, NULL, 74, 'order_promotion', 'New Year', -69, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(221, NULL, NULL, 74, 'order_promotion', 'Christmas', -2492, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(222, NULL, NULL, 74, 'tax', 'Clothing Sales Tax 7% (7%)', 278, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(223, NULL, NULL, 75, 'order_promotion', 'New Year', -59, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(224, NULL, NULL, 75, 'order_promotion', 'Christmas', -2104, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(225, NULL, NULL, 75, 'tax', 'Clothing Sales Tax 7% (7%)', 235, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(226, NULL, NULL, 76, 'order_promotion', 'New Year', -58, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(227, NULL, NULL, 76, 'order_promotion', 'Christmas', -2104, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(228, NULL, NULL, 76, 'tax', 'Clothing Sales Tax 7% (7%)', 235, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(229, NULL, NULL, 77, 'order_promotion', 'New Year', -58, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(230, NULL, NULL, 77, 'order_promotion', 'Christmas', -2104, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(231, NULL, NULL, 77, 'tax', 'Clothing Sales Tax 7% (7%)', 234, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(232, NULL, NULL, 78, 'order_promotion', 'New Year', -58, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(233, NULL, NULL, 78, 'order_promotion', 'Christmas', -2104, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(234, NULL, NULL, 78, 'tax', 'Clothing Sales Tax 7% (7%)', 234, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(235, NULL, NULL, 79, 'order_promotion', 'New Year', -99, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(236, NULL, NULL, 79, 'order_promotion', 'Christmas', -3570, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(237, NULL, NULL, 79, 'tax', 'Clothing Sales Tax 7% (7%)', 398, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(238, NULL, NULL, 80, 'order_promotion', 'New Year', -99, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(239, NULL, NULL, 80, 'order_promotion', 'Christmas', -3570, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(240, NULL, NULL, 80, 'tax', 'Clothing Sales Tax 7% (7%)', 398, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(241, NULL, NULL, 81, 'order_promotion', 'New Year', -99, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(242, NULL, NULL, 81, 'order_promotion', 'Christmas', -3569, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(243, NULL, NULL, 81, 'tax', 'Clothing Sales Tax 7% (7%)', 397, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(244, NULL, NULL, 82, 'order_promotion', 'New Year', -99, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(245, NULL, NULL, 82, 'order_promotion', 'Christmas', -3569, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(246, NULL, NULL, 82, 'tax', 'Clothing Sales Tax 7% (7%)', 397, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(247, 8, NULL, NULL, 'shipping', 'DHL Express', 296, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(248, NULL, NULL, 83, 'order_promotion', 'New Year', -168, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(249, NULL, NULL, 83, 'order_promotion', 'Christmas', -1580, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(250, NULL, NULL, 83, 'tax', 'Sales Tax 20% (20%)', 538, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(251, NULL, NULL, 84, 'order_promotion', 'New Year', -167, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(252, NULL, NULL, 84, 'order_promotion', 'Christmas', -1580, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(253, NULL, NULL, 84, 'tax', 'Sales Tax 20% (20%)', 538, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(254, NULL, NULL, 85, 'order_promotion', 'New Year', -167, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(255, NULL, NULL, 85, 'order_promotion', 'Christmas', -1580, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(256, NULL, NULL, 85, 'tax', 'Sales Tax 20% (20%)', 538, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(257, NULL, NULL, 86, 'order_promotion', 'New Year', -42, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(258, NULL, NULL, 86, 'order_promotion', 'Christmas', -394, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(259, NULL, NULL, 86, 'tax', 'Clothing Sales Tax 7% (7%)', 44, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(260, NULL, NULL, 87, 'order_promotion', 'New Year', -42, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(261, NULL, NULL, 87, 'order_promotion', 'Christmas', -394, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(262, NULL, NULL, 87, 'tax', 'Clothing Sales Tax 7% (7%)', 44, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(263, NULL, NULL, 88, 'order_promotion', 'New Year', -138, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(264, NULL, NULL, 88, 'order_promotion', 'Christmas', -1301, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(265, NULL, NULL, 88, 'tax', 'Clothing Sales Tax 7% (7%)', 145, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(266, NULL, NULL, 89, 'order_promotion', 'New Year', -138, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(267, NULL, NULL, 89, 'order_promotion', 'Christmas', -1301, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(268, NULL, NULL, 89, 'tax', 'Clothing Sales Tax 7% (7%)', 145, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(269, NULL, NULL, 90, 'order_promotion', 'New Year', -138, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(270, NULL, NULL, 90, 'order_promotion', 'Christmas', -1301, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(271, NULL, NULL, 90, 'tax', 'Clothing Sales Tax 7% (7%)', 145, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(272, 9, NULL, NULL, 'shipping', 'UPS', 776, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(273, NULL, NULL, 91, 'order_promotion', 'New Year', -292, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(274, NULL, NULL, 91, 'order_promotion', 'Christmas', -1507, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(275, NULL, NULL, 91, 'tax', 'Clothing Sales Tax 7% (7%)', 168, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(276, NULL, NULL, 92, 'order_promotion', 'New Year', -292, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(277, NULL, NULL, 92, 'order_promotion', 'Christmas', -1506, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(278, NULL, NULL, 92, 'tax', 'Clothing Sales Tax 7% (7%)', 168, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(279, NULL, NULL, 93, 'order_promotion', 'New Year', -416, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(280, NULL, NULL, 93, 'order_promotion', 'Christmas', -2146, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(281, NULL, NULL, 93, 'tax', 'Clothing Sales Tax 7% (7%)', 239, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(282, 10, NULL, NULL, 'shipping', 'UPS', 776, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(283, NULL, NULL, 94, 'order_promotion', 'New Year', -250, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(284, NULL, NULL, 94, 'order_promotion', 'Christmas', -1274, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(285, NULL, NULL, 94, 'tax', 'Clothing Sales Tax 7% (7%)', 142, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(286, NULL, NULL, 95, 'order_promotion', 'New Year', -250, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(287, NULL, NULL, 95, 'order_promotion', 'Christmas', -1274, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(288, NULL, NULL, 95, 'tax', 'Clothing Sales Tax 7% (7%)', 142, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(289, NULL, NULL, 96, 'order_promotion', 'New Year', -250, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(290, NULL, NULL, 96, 'order_promotion', 'Christmas', -1274, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(291, NULL, NULL, 96, 'tax', 'Clothing Sales Tax 7% (7%)', 142, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(292, NULL, NULL, 97, 'order_promotion', 'New Year', -250, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(293, NULL, NULL, 97, 'order_promotion', 'Christmas', -1274, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(294, NULL, NULL, 97, 'tax', 'Clothing Sales Tax 7% (7%)', 142, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(295, 11, NULL, NULL, 'shipping', 'DHL Express', 296, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(296, NULL, NULL, 98, 'order_promotion', 'New Year', -118, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(297, NULL, NULL, 98, 'order_promotion', 'Christmas', -3111, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(298, NULL, NULL, 98, 'tax', 'Clothing Sales Tax 7% (7%)', 347, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(299, NULL, NULL, 99, 'order_promotion', 'New Year', -66, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(300, NULL, NULL, 99, 'order_promotion', 'Christmas', -1743, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(301, NULL, NULL, 99, 'tax', 'Sales Tax 20% (20%)', 594, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(302, NULL, NULL, 100, 'order_promotion', 'New Year', -66, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(303, NULL, NULL, 100, 'order_promotion', 'Christmas', -1742, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(304, NULL, NULL, 100, 'tax', 'Sales Tax 20% (20%)', 593, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(305, NULL, NULL, 101, 'order_promotion', 'New Year', -88, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(306, NULL, NULL, 101, 'order_promotion', 'Christmas', -2302, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(307, NULL, NULL, 101, 'tax', 'Clothing Sales Tax 7% (7%)', 257, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(308, NULL, NULL, 102, 'order_promotion', 'New Year', -87, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(309, NULL, NULL, 102, 'order_promotion', 'Christmas', -2302, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(310, NULL, NULL, 102, 'tax', 'Clothing Sales Tax 7% (7%)', 257, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(311, NULL, NULL, 103, 'order_promotion', 'New Year', -87, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(312, NULL, NULL, 103, 'order_promotion', 'Christmas', -2302, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(313, NULL, NULL, 103, 'tax', 'Clothing Sales Tax 7% (7%)', 256, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(314, NULL, NULL, 104, 'order_promotion', 'New Year', -87, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(315, NULL, NULL, 104, 'order_promotion', 'Christmas', -2302, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(316, NULL, NULL, 104, 'tax', 'Clothing Sales Tax 7% (7%)', 256, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(317, NULL, NULL, 105, 'order_promotion', 'New Year', -101, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(318, NULL, NULL, 105, 'order_promotion', 'Christmas', -2650, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(319, NULL, NULL, 105, 'tax', 'Clothing Sales Tax 7% (7%)', 296, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(320, NULL, NULL, 106, 'order_promotion', 'New Year', -100, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(321, NULL, NULL, 106, 'order_promotion', 'Christmas', -2650, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(322, NULL, NULL, 106, 'tax', 'Clothing Sales Tax 7% (7%)', 295, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(323, NULL, NULL, 107, 'order_promotion', 'New Year', -100, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(324, NULL, NULL, 107, 'order_promotion', 'Christmas', -2649, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(325, NULL, NULL, 107, 'tax', 'Clothing Sales Tax 7% (7%)', 295, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(326, NULL, NULL, 108, 'order_promotion', 'New Year', -100, 0, 0, 'new_year', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(327, NULL, NULL, 108, 'order_promotion', 'Christmas', -2649, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(328, NULL, NULL, 108, 'tax', 'Clothing Sales Tax 7% (7%)', 295, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(329, 12, NULL, NULL, 'shipping', 'UPS', 776, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(330, NULL, NULL, 109, 'order_promotion', 'Christmas', -1410, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(331, NULL, NULL, 109, 'tax', 'Clothing Sales Tax 7% (7%)', 157, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(332, NULL, NULL, 110, 'order_promotion', 'Christmas', -1409, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(333, NULL, NULL, 110, 'tax', 'Clothing Sales Tax 7% (7%)', 157, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(334, NULL, NULL, 111, 'order_promotion', 'Christmas', -1642, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(335, NULL, NULL, 111, 'tax', 'Sales Tax 20% (20%)', 559, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(336, NULL, NULL, 112, 'order_promotion', 'Christmas', -1987, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(337, NULL, NULL, 112, 'tax', 'Clothing Sales Tax 7% (7%)', 222, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(338, NULL, NULL, 113, 'order_promotion', 'Christmas', -1987, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(339, NULL, NULL, 113, 'tax', 'Clothing Sales Tax 7% (7%)', 221, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(340, NULL, NULL, 114, 'order_promotion', 'Christmas', -1986, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(341, NULL, NULL, 114, 'tax', 'Clothing Sales Tax 7% (7%)', 221, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(342, 13, NULL, NULL, 'shipping', 'UPS', 776, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(343, NULL, NULL, 115, 'order_promotion', 'Christmas', -3673, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(344, NULL, NULL, 115, 'tax', 'Clothing Sales Tax 7% (7%)', 409, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(345, NULL, NULL, 116, 'order_promotion', 'Christmas', -3673, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(346, NULL, NULL, 116, 'tax', 'Clothing Sales Tax 7% (7%)', 409, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(347, NULL, NULL, 117, 'order_promotion', 'Christmas', -3672, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(348, NULL, NULL, 117, 'tax', 'Clothing Sales Tax 7% (7%)', 409, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(349, NULL, NULL, 118, 'order_promotion', 'Christmas', -3672, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(350, NULL, NULL, 118, 'tax', 'Clothing Sales Tax 7% (7%)', 409, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(351, NULL, NULL, 119, 'order_promotion', 'Christmas', -2174, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(352, NULL, NULL, 119, 'tax', 'Clothing Sales Tax 7% (7%)', 242, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(353, NULL, NULL, 120, 'order_promotion', 'Christmas', -2174, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(354, NULL, NULL, 120, 'tax', 'Clothing Sales Tax 7% (7%)', 242, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(355, NULL, NULL, 121, 'order_promotion', 'Christmas', -2173, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(356, NULL, NULL, 121, 'tax', 'Clothing Sales Tax 7% (7%)', 242, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(357, NULL, NULL, 122, 'order_promotion', 'Christmas', -3634, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(358, NULL, NULL, 122, 'tax', 'Clothing Sales Tax 7% (7%)', 405, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(359, NULL, NULL, 123, 'order_promotion', 'Christmas', -3634, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(360, NULL, NULL, 123, 'tax', 'Clothing Sales Tax 7% (7%)', 405, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(361, NULL, NULL, 124, 'order_promotion', 'Christmas', -3633, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(362, NULL, NULL, 124, 'tax', 'Clothing Sales Tax 7% (7%)', 404, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(363, 14, NULL, NULL, 'shipping', 'UPS', 776, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(364, NULL, NULL, 125, 'order_promotion', 'Christmas', -1102, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(365, NULL, NULL, 125, 'tax', 'Sales Tax 20% (20%)', 376, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(366, NULL, NULL, 126, 'order_promotion', 'Christmas', -1102, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(367, NULL, NULL, 126, 'tax', 'Sales Tax 20% (20%)', 375, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(368, NULL, NULL, 127, 'order_promotion', 'Christmas', -1101, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(369, NULL, NULL, 127, 'tax', 'Sales Tax 20% (20%)', 375, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(370, NULL, NULL, 128, 'order_promotion', 'Christmas', -1101, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(371, NULL, NULL, 128, 'tax', 'Sales Tax 20% (20%)', 375, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(372, NULL, NULL, 129, 'order_promotion', 'Christmas', -1101, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(373, NULL, NULL, 129, 'tax', 'Sales Tax 20% (20%)', 375, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(374, 15, NULL, NULL, 'shipping', 'DHL Express', 296, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(375, NULL, NULL, 130, 'order_promotion', 'Christmas', -1046, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(376, NULL, NULL, 130, 'tax', 'Clothing Sales Tax 7% (7%)', 117, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(377, NULL, NULL, 131, 'order_promotion', 'Christmas', -1045, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(378, NULL, NULL, 131, 'tax', 'Clothing Sales Tax 7% (7%)', 116, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(379, NULL, NULL, 132, 'order_promotion', 'Christmas', -1045, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(380, NULL, NULL, 132, 'tax', 'Clothing Sales Tax 7% (7%)', 116, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(381, NULL, NULL, 133, 'order_promotion', 'Christmas', -1329, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(382, NULL, NULL, 133, 'tax', 'Clothing Sales Tax 7% (7%)', 148, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(383, NULL, NULL, 134, 'order_promotion', 'Christmas', -1329, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(384, NULL, NULL, 134, 'tax', 'Clothing Sales Tax 7% (7%)', 148, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(385, NULL, NULL, 135, 'order_promotion', 'Christmas', -243, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(386, NULL, NULL, 135, 'tax', 'Clothing Sales Tax 7% (7%)', 27, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(387, 16, NULL, NULL, 'shipping', 'FedEx', 487, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(388, NULL, NULL, 136, 'order_promotion', 'Christmas', -1205, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(389, NULL, NULL, 136, 'tax', 'Clothing Sales Tax 7% (7%)', 135, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(390, NULL, NULL, 137, 'order_promotion', 'Christmas', -1205, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(391, NULL, NULL, 137, 'tax', 'Clothing Sales Tax 7% (7%)', 134, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(392, NULL, NULL, 138, 'order_promotion', 'Christmas', -1205, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(393, NULL, NULL, 138, 'tax', 'Clothing Sales Tax 7% (7%)', 134, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(394, NULL, NULL, 139, 'order_promotion', 'Christmas', -1204, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(395, NULL, NULL, 139, 'tax', 'Clothing Sales Tax 7% (7%)', 134, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(396, 17, NULL, NULL, 'shipping', 'DHL Express', 296, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(397, NULL, NULL, 140, 'order_promotion', 'Christmas', -1767, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(398, NULL, NULL, 140, 'tax', 'Sales Tax 20% (20%)', 602, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(399, NULL, NULL, 141, 'order_promotion', 'Christmas', -1767, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(400, NULL, NULL, 141, 'tax', 'Sales Tax 20% (20%)', 602, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(401, NULL, NULL, 142, 'order_promotion', 'Christmas', -1767, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(402, NULL, NULL, 142, 'tax', 'Sales Tax 20% (20%)', 602, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(403, NULL, NULL, 143, 'order_promotion', 'Christmas', -1767, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(404, NULL, NULL, 143, 'tax', 'Sales Tax 20% (20%)', 602, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(405, NULL, NULL, 144, 'order_promotion', 'Christmas', -1767, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(406, NULL, NULL, 144, 'tax', 'Sales Tax 20% (20%)', 601, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(407, NULL, NULL, 145, 'order_promotion', 'Christmas', -2163, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(408, NULL, NULL, 145, 'tax', 'Clothing Sales Tax 7% (7%)', 241, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(409, NULL, NULL, 146, 'order_promotion', 'Christmas', -2163, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(410, NULL, NULL, 146, 'tax', 'Clothing Sales Tax 7% (7%)', 241, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18');
INSERT INTO `sylius_adjustment` (`id`, `order_id`, `order_item_id`, `order_item_unit_id`, `type`, `label`, `amount`, `is_neutral`, `is_locked`, `origin_code`, `created_at`, `updated_at`) VALUES
(411, NULL, NULL, 147, 'order_promotion', 'Christmas', -2163, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(412, NULL, NULL, 147, 'tax', 'Clothing Sales Tax 7% (7%)', 241, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(413, NULL, NULL, 148, 'order_promotion', 'Christmas', -2163, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(414, NULL, NULL, 148, 'tax', 'Clothing Sales Tax 7% (7%)', 241, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(415, NULL, NULL, 149, 'order_promotion', 'Christmas', -1980, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(416, NULL, NULL, 149, 'tax', 'Sales Tax 20% (20%)', 675, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(417, NULL, NULL, 150, 'order_promotion', 'Christmas', -1980, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(418, NULL, NULL, 150, 'tax', 'Sales Tax 20% (20%)', 674, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(419, NULL, NULL, 151, 'order_promotion', 'Christmas', -1980, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(420, NULL, NULL, 151, 'tax', 'Sales Tax 20% (20%)', 674, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(421, NULL, NULL, 152, 'order_promotion', 'Christmas', -243, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(422, NULL, NULL, 152, 'tax', 'Clothing Sales Tax 7% (7%)', 27, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(423, NULL, NULL, 153, 'order_promotion', 'Christmas', -1642, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(424, NULL, NULL, 153, 'tax', 'Sales Tax 20% (20%)', 559, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(425, 18, NULL, NULL, 'shipping', 'UPS', 776, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(426, NULL, NULL, 154, 'order_promotion', 'Christmas', -3327, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(427, NULL, NULL, 154, 'tax', 'Clothing Sales Tax 7% (7%)', 371, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(428, NULL, NULL, 155, 'order_promotion', 'Christmas', -3327, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(429, NULL, NULL, 155, 'tax', 'Clothing Sales Tax 7% (7%)', 371, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(430, NULL, NULL, 156, 'order_promotion', 'Christmas', -3327, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(431, NULL, NULL, 156, 'tax', 'Clothing Sales Tax 7% (7%)', 371, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(432, NULL, NULL, 157, 'order_promotion', 'Christmas', -3326, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(433, NULL, NULL, 157, 'tax', 'Clothing Sales Tax 7% (7%)', 370, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(434, NULL, NULL, 158, 'order_promotion', 'Christmas', -3326, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(435, NULL, NULL, 158, 'tax', 'Clothing Sales Tax 7% (7%)', 370, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(436, NULL, NULL, 159, 'order_promotion', 'Christmas', -1352, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(437, NULL, NULL, 159, 'tax', 'Clothing Sales Tax 7% (7%)', 151, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(438, NULL, NULL, 160, 'order_promotion', 'Christmas', -2725, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(439, NULL, NULL, 160, 'tax', 'Clothing Sales Tax 7% (7%)', 304, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(440, NULL, NULL, 161, 'order_promotion', 'Christmas', -2725, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(441, NULL, NULL, 161, 'tax', 'Clothing Sales Tax 7% (7%)', 304, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(442, NULL, NULL, 162, 'order_promotion', 'Christmas', -2724, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(443, NULL, NULL, 162, 'tax', 'Clothing Sales Tax 7% (7%)', 303, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(444, NULL, NULL, 163, 'order_promotion', 'Christmas', -2300, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(445, NULL, NULL, 163, 'tax', 'Clothing Sales Tax 7% (7%)', 256, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(446, 19, NULL, NULL, 'shipping', 'FedEx', 487, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(447, NULL, NULL, 164, 'order_promotion', 'Christmas', -676, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(448, NULL, NULL, 164, 'tax', 'Clothing Sales Tax 7% (7%)', 75, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(449, NULL, NULL, 165, 'order_promotion', 'Christmas', -2187, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(450, NULL, NULL, 165, 'tax', 'Clothing Sales Tax 7% (7%)', 244, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(451, NULL, NULL, 166, 'order_promotion', 'Christmas', -2725, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(452, NULL, NULL, 166, 'tax', 'Clothing Sales Tax 7% (7%)', 304, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(453, NULL, NULL, 167, 'order_promotion', 'Christmas', -2725, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(454, NULL, NULL, 167, 'tax', 'Clothing Sales Tax 7% (7%)', 304, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(455, NULL, NULL, 168, 'order_promotion', 'Christmas', -2725, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(456, NULL, NULL, 168, 'tax', 'Clothing Sales Tax 7% (7%)', 304, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(457, NULL, NULL, 169, 'order_promotion', 'Christmas', -2724, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(458, NULL, NULL, 169, 'tax', 'Clothing Sales Tax 7% (7%)', 303, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(459, NULL, NULL, 170, 'order_promotion', 'Christmas', -2724, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(460, NULL, NULL, 170, 'tax', 'Clothing Sales Tax 7% (7%)', 303, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(461, 20, NULL, NULL, 'shipping', 'DHL Express', 296, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(462, NULL, NULL, 171, 'order_promotion', 'Christmas', -1035, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(463, NULL, NULL, 171, 'tax', 'Clothing Sales Tax 7% (7%)', 115, 1, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(464, NULL, NULL, 172, 'order_promotion', 'Christmas', -1980, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(465, NULL, NULL, 172, 'tax', 'Sales Tax 20% (20%)', 675, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(466, NULL, NULL, 173, 'order_promotion', 'Christmas', -1980, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(467, NULL, NULL, 173, 'tax', 'Sales Tax 20% (20%)', 674, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(468, NULL, NULL, 174, 'order_promotion', 'Christmas', -1980, 0, 0, 'christmas', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(469, NULL, NULL, 174, 'tax', 'Sales Tax 20% (20%)', 674, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(470, 21, NULL, NULL, 'shipping', 'DHL Express', 296, 0, 0, NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(487, 22, NULL, NULL, 'shipping', 'DHL Express', 296, 0, 0, NULL, '2019-11-18 08:31:34', '2019-11-18 08:31:35'),
(488, NULL, NULL, 175, 'tax', 'Clothing Sales Tax 7% (7%)', 213, 1, 0, NULL, '2019-11-18 08:31:34', '2019-11-18 08:31:35'),
(550, 23, NULL, NULL, 'shipping', 'UPS', 776, 0, 0, NULL, '2019-11-18 14:40:42', '2019-11-18 14:40:42'),
(551, NULL, NULL, 177, 'order_promotion', 'Christmas', -1707, 0, 0, 'christmas', '2019-11-18 14:40:42', '2019-11-18 14:40:42'),
(552, NULL, NULL, 177, 'tax', 'Clothing Sales Tax 7% (7%)', 190, 1, 0, NULL, '2019-11-18 14:40:42', '2019-11-18 14:40:42'),
(553, NULL, NULL, 178, 'order_promotion', 'Christmas', -1707, 0, 0, 'christmas', '2019-11-18 14:40:42', '2019-11-18 14:40:42'),
(554, NULL, NULL, 178, 'tax', 'Clothing Sales Tax 7% (7%)', 190, 1, 0, NULL, '2019-11-18 14:40:42', '2019-11-18 14:40:42'),
(555, NULL, NULL, 179, 'order_promotion', 'Christmas', -1706, 0, 0, 'christmas', '2019-11-18 14:40:42', '2019-11-18 14:40:42'),
(556, NULL, NULL, 179, 'tax', 'Clothing Sales Tax 7% (7%)', 190, 1, 0, NULL, '2019-11-18 14:40:42', '2019-11-18 14:40:42'),
(557, NULL, NULL, 180, 'order_promotion', 'Christmas', -1706, 0, 0, 'christmas', '2019-11-18 14:40:42', '2019-11-18 14:40:42'),
(558, NULL, NULL, 180, 'tax', 'Clothing Sales Tax 7% (7%)', 190, 1, 0, NULL, '2019-11-18 14:40:42', '2019-11-18 14:40:42'),
(559, NULL, NULL, 181, 'order_promotion', 'Christmas', -1706, 0, 0, 'christmas', '2019-11-18 14:40:42', '2019-11-18 14:40:42'),
(560, NULL, NULL, 181, 'tax', 'Clothing Sales Tax 7% (7%)', 190, 1, 0, NULL, '2019-11-18 14:40:42', '2019-11-18 14:40:42'),
(610, 24, NULL, NULL, 'shipping', 'UPS', 776, 0, 0, NULL, '2019-11-19 11:20:06', '2019-11-19 11:20:07'),
(611, NULL, NULL, 200, 'tax', 'Clothing Sales Tax 7% (7%)', 336, 1, 0, NULL, '2019-11-19 11:20:07', '2019-11-19 11:20:07'),
(620, 25, NULL, NULL, 'shipping', 'UPS', 776, 0, 0, NULL, '2019-11-19 13:49:10', '2019-11-19 13:49:11'),
(621, NULL, NULL, 201, 'tax', 'Clothing Sales Tax 7% (7%)', 642, 1, 0, NULL, '2019-11-19 13:49:11', '2019-11-19 13:49:11'),
(630, 26, NULL, NULL, 'shipping', 'UPS', 776, 0, 0, NULL, '2019-11-19 21:17:15', '2019-11-19 21:17:15'),
(631, NULL, NULL, 202, 'tax', 'Clothing Sales Tax 7% (7%)', 558, 1, 0, NULL, '2019-11-19 21:17:15', '2019-11-19 21:17:15');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_api_access_token`
--

DROP TABLE IF EXISTS `sylius_admin_api_access_token`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_access_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2AA4915D5F37A13B` (`token`),
  KEY `IDX_2AA4915D19EB6921` (`client_id`),
  KEY `IDX_2AA4915DA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_admin_api_access_token`
--

INSERT INTO `sylius_admin_api_access_token` (`id`, `client_id`, `user_id`, `token`, `expires_at`, `scope`) VALUES
(1, 1, 3, 'SampleToken', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_api_auth_code`
--

DROP TABLE IF EXISTS `sylius_admin_api_auth_code`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E366D8485F37A13B` (`token`),
  KEY `IDX_E366D84819EB6921` (`client_id`),
  KEY `IDX_E366D848A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_api_client`
--

DROP TABLE IF EXISTS `sylius_admin_api_client`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `random_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uris` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `allowed_grant_types` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_admin_api_client`
--

INSERT INTO `sylius_admin_api_client` (`id`, `random_id`, `redirect_uris`, `secret`, `allowed_grant_types`) VALUES
(1, 'demo_client', 'a:0:{}', 'secret_demo_client', 'a:1:{i:0;s:8:\"password\";}'),
(2, '184ig7ggxnc0cs84444ogc4sgs48gcw4sg8kwwgsokskco08sw', 'a:0:{}', '5xivnafjg6osk404w0gk8ks488wwsk0w40cwk8ocs0kcgcco44', 'a:3:{i:0;s:8:\"password\";i:1;s:13:\"refresh_token\";i:2;s:5:\"token\";}');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_api_refresh_token`
--

DROP TABLE IF EXISTS `sylius_admin_api_refresh_token`;
CREATE TABLE IF NOT EXISTS `sylius_admin_api_refresh_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` int(11) DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_9160E3FA5F37A13B` (`token`),
  KEY `IDX_9160E3FA19EB6921` (`client_id`),
  KEY `IDX_9160E3FAA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_admin_user`
--

DROP TABLE IF EXISTS `sylius_admin_user`;
CREATE TABLE IF NOT EXISTS `sylius_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale_code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_admin_user`
--

INSERT INTO `sylius_admin_user` (`id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `first_name`, `last_name`, `locale_code`, `encoder_name`) VALUES
(2, 'sylius', 'sylius', 1, 'a7avqvptfg8wk800og0gkcskk40gckw', '$argon2i$v=19$m=1024,t=2,p=2$TnRKdTlUcTh5ZWFhb01kaA$KUa/ovUmW2mFjSGU1/FGsHsXFKNf1esJMs9OFbLP56o', '2019-11-27 07:23:20', NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";}', 'sylius@example.com', 'sylius@example.com', '2019-11-13 11:44:15', '2019-11-27 07:23:20', 'John', 'Doe', 'fr', 'argon2i'),
(3, 'api', 'api', 1, 'lv9p6dlvffkk0s8okc8w0kok4og0008', '$argon2i$v=19$m=1024,t=2,p=2$OW5ycU1BTGZld25HbXJLLg$0vUucrjhbremdBGp1gEusUFjOwTJWxN3IZ4si0PAsH0', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:2:{i:0;s:26:\"ROLE_ADMINISTRATION_ACCESS\";i:1;s:15:\"ROLE_API_ACCESS\";}', 'api@example.com', 'api@example.com', '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'Luke', 'Brushwood', 'en_US', 'argon2i');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_avatar_image`
--

DROP TABLE IF EXISTS `sylius_avatar_image`;
CREATE TABLE IF NOT EXISTS `sylius_avatar_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_1068A3A97E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_channel`
--

DROP TABLE IF EXISTS `sylius_channel`;
CREATE TABLE IF NOT EXISTS `sylius_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_locale_id` int(11) NOT NULL,
  `base_currency_id` int(11) NOT NULL,
  `default_tax_zone_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) NOT NULL,
  `hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `theme_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_calculation_strategy` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skipping_shipping_step_allowed` tinyint(1) NOT NULL,
  `skipping_payment_step_allowed` tinyint(1) NOT NULL,
  `account_verification_required` tinyint(1) NOT NULL,
  `shop_billing_data_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_16C8119E77153098` (`code`),
  UNIQUE KEY `UNIQ_16C8119EB5282EDF` (`shop_billing_data_id`),
  KEY `IDX_16C8119E743BF776` (`default_locale_id`),
  KEY `IDX_16C8119E3101778E` (`base_currency_id`),
  KEY `IDX_16C8119EA978C17` (`default_tax_zone_id`),
  KEY `IDX_16C8119EE551C011` (`hostname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel`
--

INSERT INTO `sylius_channel` (`id`, `default_locale_id`, `base_currency_id`, `default_tax_zone_id`, `code`, `name`, `color`, `description`, `enabled`, `hostname`, `created_at`, `updated_at`, `theme_name`, `tax_calculation_strategy`, `contact_email`, `skipping_shipping_step_allowed`, `skipping_payment_step_allowed`, `account_verification_required`, `shop_billing_data_id`) VALUES
(2, 2, 2, 2, 'FASHION_WEB', 'Renault Store', '#000000', NULL, 1, 'localhost', '2019-11-13 11:44:15', '2019-11-27 11:05:08', NULL, 'order_items_based', NULL, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_channel_currencies`
--

DROP TABLE IF EXISTS `sylius_channel_currencies`;
CREATE TABLE IF NOT EXISTS `sylius_channel_currencies` (
  `channel_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`currency_id`),
  KEY `IDX_AE491F9372F5A1AA` (`channel_id`),
  KEY `IDX_AE491F9338248176` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel_currencies`
--

INSERT INTO `sylius_channel_currencies` (`channel_id`, `currency_id`) VALUES
(2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_channel_locales`
--

DROP TABLE IF EXISTS `sylius_channel_locales`;
CREATE TABLE IF NOT EXISTS `sylius_channel_locales` (
  `channel_id` int(11) NOT NULL,
  `locale_id` int(11) NOT NULL,
  PRIMARY KEY (`channel_id`,`locale_id`),
  KEY `IDX_786B7A8472F5A1AA` (`channel_id`),
  KEY `IDX_786B7A84E559DFD1` (`locale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel_locales`
--

INSERT INTO `sylius_channel_locales` (`channel_id`, `locale_id`) VALUES
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_channel_pricing`
--

DROP TABLE IF EXISTS `sylius_channel_pricing`;
CREATE TABLE IF NOT EXISTS `sylius_channel_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_variant_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `original_price` int(11) DEFAULT NULL,
  `channel_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_variant_channel_idx` (`product_variant_id`,`channel_code`),
  KEY `IDX_7801820CA80EF684` (`product_variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_channel_pricing`
--

INSERT INTO `sylius_channel_pricing` (`id`, `product_variant_id`, `price`, `original_price`, `channel_code`) VALUES
(2, 3, 8101, NULL, 'FASHION_WEB'),
(3, 4, 5846, NULL, 'FASHION_WEB'),
(4, 5, 1546, NULL, 'FASHION_WEB'),
(5, 6, 3693, NULL, 'FASHION_WEB'),
(6, 7, 8988, NULL, 'FASHION_WEB'),
(7, 8, 9141, NULL, 'FASHION_WEB'),
(8, 9, 7261, NULL, 'FASHION_WEB'),
(9, 10, 5510, NULL, 'FASHION_WEB'),
(10, 11, 3100, NULL, 'FASHION_WEB'),
(11, 12, 8452, NULL, 'FASHION_WEB'),
(12, 13, 5706, NULL, 'FASHION_WEB'),
(13, 14, 9619, NULL, 'FASHION_WEB'),
(14, 15, 3592, NULL, 'FASHION_WEB'),
(15, 16, 1453, NULL, 'FASHION_WEB'),
(16, 17, 234, NULL, 'FASHION_WEB'),
(17, 18, 9821, NULL, 'FASHION_WEB'),
(18, 19, 5875, NULL, 'FASHION_WEB'),
(19, 20, 1107, NULL, 'FASHION_WEB'),
(20, 21, 7364, NULL, 'FASHION_WEB'),
(21, 22, 5824, NULL, 'FASHION_WEB'),
(22, 23, 9111, NULL, 'FASHION_WEB'),
(23, 24, 5131, NULL, 'FASHION_WEB'),
(24, 25, 6535, NULL, 'FASHION_WEB'),
(25, 26, 2283, NULL, 'FASHION_WEB'),
(26, 27, 2798, NULL, 'FASHION_WEB'),
(27, 28, 2500, NULL, 'FASHION_WEB'),
(28, 29, 2500, NULL, 'FASHION_WEB'),
(29, 30, 2500, NULL, 'FASHION_WEB'),
(30, 31, 2500, NULL, 'FASHION_WEB'),
(31, 32, 2500, NULL, 'FASHION_WEB'),
(32, 33, 2977, NULL, 'FASHION_WEB'),
(33, 34, 5351, NULL, 'FASHION_WEB'),
(34, 35, 4438, NULL, 'FASHION_WEB'),
(35, 36, 4776, NULL, 'FASHION_WEB'),
(36, 37, 3256, NULL, 'FASHION_WEB'),
(37, 38, 9440, NULL, 'FASHION_WEB'),
(38, 39, 9037, NULL, 'FASHION_WEB'),
(39, 40, 5146, NULL, 'FASHION_WEB'),
(40, 41, 5532, NULL, 'FASHION_WEB'),
(41, 42, 8477, NULL, 'FASHION_WEB'),
(42, 43, 6940, NULL, 'FASHION_WEB'),
(43, 44, 1077, NULL, 'FASHION_WEB'),
(44, 45, 799, NULL, 'FASHION_WEB'),
(45, 46, 2632, NULL, 'FASHION_WEB'),
(46, 47, 5706, NULL, 'FASHION_WEB'),
(47, 48, 2057, NULL, 'FASHION_WEB'),
(48, 49, 1508, NULL, 'FASHION_WEB'),
(49, 50, 2678, NULL, 'FASHION_WEB'),
(50, 51, 3365, NULL, 'FASHION_WEB'),
(51, 52, 5547, NULL, 'FASHION_WEB'),
(52, 53, 8384, NULL, 'FASHION_WEB'),
(53, 54, 5430, NULL, 'FASHION_WEB'),
(54, 55, 9925, NULL, 'FASHION_WEB'),
(55, 56, 3983, NULL, 'FASHION_WEB'),
(56, 57, 1661, NULL, 'FASHION_WEB'),
(57, 58, 4055, NULL, 'FASHION_WEB'),
(58, 59, 8095, NULL, 'FASHION_WEB'),
(59, 60, 7243, NULL, 'FASHION_WEB'),
(60, 61, 8731, NULL, 'FASHION_WEB'),
(61, 62, 6663, NULL, 'FASHION_WEB'),
(62, 63, 1642, NULL, 'FASHION_WEB'),
(63, 64, 2830, NULL, 'FASHION_WEB'),
(64, 65, 8154, NULL, 'FASHION_WEB'),
(65, 66, 4364, NULL, 'FASHION_WEB'),
(66, 67, 8991, NULL, 'FASHION_WEB'),
(67, 68, 9746, NULL, 'FASHION_WEB'),
(68, 69, 5832, NULL, 'FASHION_WEB'),
(69, 70, 2278, NULL, 'FASHION_WEB'),
(70, 71, 5745, NULL, 'FASHION_WEB'),
(71, 72, 9130, NULL, 'FASHION_WEB'),
(72, 73, 4399, NULL, 'FASHION_WEB'),
(73, 74, 2278, NULL, 'FASHION_WEB'),
(74, 75, 5910, NULL, 'FASHION_WEB'),
(75, 76, 5347, NULL, 'FASHION_WEB'),
(76, 77, 4830, NULL, 'FASHION_WEB'),
(77, 78, 8616, NULL, 'FASHION_WEB'),
(78, 79, 7329, NULL, 'FASHION_WEB'),
(79, 80, 8702, NULL, 'FASHION_WEB'),
(80, 81, 2097, NULL, 'FASHION_WEB'),
(81, 82, 1233, NULL, 'FASHION_WEB'),
(82, 83, 2013, NULL, 'FASHION_WEB'),
(83, 84, 5144, NULL, 'FASHION_WEB'),
(84, 85, 5592, NULL, 'FASHION_WEB'),
(85, 86, 656, NULL, 'FASHION_WEB'),
(86, 87, 4109, NULL, 'FASHION_WEB'),
(87, 88, 6454, NULL, 'FASHION_WEB'),
(88, 89, 8513, NULL, 'FASHION_WEB'),
(89, 90, 2825, NULL, 'FASHION_WEB'),
(90, 91, 5652, NULL, 'FASHION_WEB'),
(91, 92, 9200, NULL, 'FASHION_WEB'),
(92, 93, 6216, NULL, 'FASHION_WEB'),
(93, 94, 6803, NULL, 'FASHION_WEB'),
(94, 95, 1403, NULL, 'FASHION_WEB'),
(95, 96, 2786, NULL, 'FASHION_WEB'),
(96, 97, 4612, NULL, 'FASHION_WEB'),
(97, 98, 4615, NULL, 'FASHION_WEB'),
(98, 99, 6269, NULL, 'FASHION_WEB'),
(99, 100, 2230, NULL, 'FASHION_WEB'),
(100, 101, 6309, NULL, 'FASHION_WEB'),
(101, 102, 6736, NULL, 'FASHION_WEB'),
(102, 103, 8969, NULL, 'FASHION_WEB'),
(103, 104, 4026, NULL, 'FASHION_WEB'),
(104, 105, 3270, NULL, 'FASHION_WEB'),
(105, 106, 3379, NULL, 'FASHION_WEB'),
(106, 107, 4849, NULL, 'FASHION_WEB'),
(107, 108, 6031, NULL, 'FASHION_WEB'),
(108, 109, 3014, NULL, 'FASHION_WEB'),
(109, 110, 5734, NULL, 'FASHION_WEB'),
(110, 111, 3083, NULL, 'FASHION_WEB'),
(111, 112, 6368, NULL, 'FASHION_WEB'),
(112, 113, 7012, NULL, 'FASHION_WEB'),
(113, 114, 5095, NULL, 'FASHION_WEB'),
(114, 115, 3654, NULL, 'FASHION_WEB'),
(115, 116, 4124, NULL, 'FASHION_WEB'),
(116, 117, 9902, NULL, 'FASHION_WEB'),
(117, 118, 3908, NULL, 'FASHION_WEB'),
(118, 119, 3810, NULL, 'FASHION_WEB'),
(119, 120, 1827, NULL, 'FASHION_WEB'),
(120, 121, 249, NULL, 'FASHION_WEB'),
(121, 122, 2500, 2500, 'FASHION_WEB'),
(122, 122, 2000, 2000, 'renault_web_store'),
(123, 123, 1500, 1500, 'FASHION_WEB'),
(124, 124, 1600, 1600, 'FASHION_WEB'),
(125, 125, 2500, NULL, 'FASHION_WEB'),
(126, 126, 2500, NULL, 'FASHION_WEB'),
(127, 127, 2500, NULL, 'FASHION_WEB'),
(128, 128, 2500, NULL, 'FASHION_WEB'),
(129, 129, 2500, NULL, 'FASHION_WEB'),
(130, 130, 2500, NULL, 'FASHION_WEB'),
(131, 131, 2500, NULL, 'FASHION_WEB'),
(132, 132, 2500, NULL, 'FASHION_WEB'),
(133, 133, 2500, NULL, 'FASHION_WEB'),
(134, 134, 2500, NULL, 'FASHION_WEB'),
(135, 135, 2500, NULL, 'FASHION_WEB'),
(136, 136, 2500, NULL, 'FASHION_WEB'),
(137, 137, 2500, NULL, 'FASHION_WEB'),
(138, 138, 2500, NULL, 'FASHION_WEB'),
(139, 139, 2500, NULL, 'FASHION_WEB'),
(140, 140, 2500, NULL, 'FASHION_WEB'),
(141, 141, 2500, NULL, 'FASHION_WEB'),
(142, 142, 2500, NULL, 'FASHION_WEB'),
(143, 143, 2500, NULL, 'FASHION_WEB'),
(144, 144, 2500, NULL, 'FASHION_WEB'),
(145, 145, 2500, NULL, 'FASHION_WEB'),
(146, 146, 2500, NULL, 'FASHION_WEB'),
(147, 147, 2500, NULL, 'FASHION_WEB'),
(148, 148, 2500, NULL, 'FASHION_WEB'),
(149, 149, 2500, NULL, 'FASHION_WEB'),
(150, 150, 2500, NULL, 'FASHION_WEB'),
(151, 151, 2500, NULL, 'FASHION_WEB'),
(152, 152, 2500, NULL, 'FASHION_WEB'),
(153, 153, 2500, NULL, 'FASHION_WEB'),
(154, 154, 2500, NULL, 'FASHION_WEB'),
(155, 155, 2500, NULL, 'FASHION_WEB'),
(156, 156, 2500, NULL, 'FASHION_WEB'),
(157, 157, 2500, NULL, 'FASHION_WEB'),
(158, 158, 2500, NULL, 'FASHION_WEB'),
(159, 159, 2500, NULL, 'FASHION_WEB'),
(160, 160, 2500, NULL, 'FASHION_WEB'),
(161, 161, 2500, NULL, 'FASHION_WEB'),
(162, 162, 2500, NULL, 'FASHION_WEB'),
(163, 163, 2500, NULL, 'FASHION_WEB'),
(164, 164, 2500, NULL, 'FASHION_WEB'),
(165, 165, 2500, NULL, 'FASHION_WEB'),
(166, 166, 2500, NULL, 'FASHION_WEB'),
(167, 167, 2500, NULL, 'FASHION_WEB'),
(168, 168, 2500, NULL, 'FASHION_WEB'),
(169, 169, 2500, NULL, 'FASHION_WEB');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_country`
--

DROP TABLE IF EXISTS `sylius_country`;
CREATE TABLE IF NOT EXISTS `sylius_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E74256BF77153098` (`code`),
  KEY `IDX_E74256BF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_country`
--

INSERT INTO `sylius_country` (`id`, `code`, `enabled`) VALUES
(2, 'US', 1),
(3, 'FR', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_currency`
--

DROP TABLE IF EXISTS `sylius_currency`;
CREATE TABLE IF NOT EXISTS `sylius_currency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_96EDD3D077153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_currency`
--

INSERT INTO `sylius_currency` (`id`, `code`, `created_at`, `updated_at`) VALUES
(2, 'USD', '2019-11-13 11:44:15', '2019-11-13 11:44:15'),
(3, 'EUR', '2019-11-18 08:28:50', '2019-11-18 08:28:50');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_customer`
--

DROP TABLE IF EXISTS `sylius_customer`;
CREATE TABLE IF NOT EXISTS `sylius_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) DEFAULT NULL,
  `default_address_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'u',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subscribed_to_newsletter` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7E82D5E6E7927C74` (`email`),
  UNIQUE KEY `UNIQ_7E82D5E6A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_7E82D5E6BD94FB16` (`default_address_id`),
  KEY `IDX_7E82D5E6D2919A68` (`customer_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_customer`
--

INSERT INTO `sylius_customer` (`id`, `customer_group_id`, `default_address_id`, `email`, `email_canonical`, `first_name`, `last_name`, `birthday`, `gender`, `created_at`, `updated_at`, `phone_number`, `subscribed_to_newsletter`) VALUES
(2, 2, NULL, 'shop@example.com', 'shop@example.com', 'John', 'Doe', '2009-11-05 09:35:28', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '+1 (328) 601-1086', 0),
(3, 2, NULL, 'oren.swift@pagac.com', 'oren.swift@pagac.com', 'Maximo', 'Pagac', '1920-10-25 10:06:22', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '1-554-546-5580', 0),
(4, 1, NULL, 'dgrimes@larkin.com', 'dgrimes@larkin.com', 'Luz', 'Doyle', '1965-12-25 22:38:14', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '1-770-341-7089 x497', 0),
(5, 1, NULL, 'rswaniawski@gmail.com', 'rswaniawski@gmail.com', 'Mabelle', 'Rutherford', '1928-02-01 14:59:46', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '(297) 638-7063 x3855', 0),
(6, 2, NULL, 'waino40@gmail.com', 'waino40@gmail.com', 'Demond', 'Stehr', '1936-10-24 09:41:38', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '332-685-2117 x7473', 0),
(7, 2, NULL, 'tom00@yahoo.com', 'tom00@yahoo.com', 'Dortha', 'Cummerata', '1964-02-23 07:28:56', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '+1 (693) 618-8433', 0),
(8, 2, NULL, 'effertz.eric@greenholt.info', 'effertz.eric@greenholt.info', 'Horacio', 'Gottlieb', '1987-12-07 03:37:23', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '+1-673-390-8438', 0),
(9, 1, NULL, 'houston.hyatt@yahoo.com', 'houston.hyatt@yahoo.com', 'Jordon', 'Hoeger', '1947-01-26 10:48:54', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '220-453-5014', 0),
(10, 1, NULL, 'jherman@gmail.com', 'jherman@gmail.com', 'Delphia', 'Hackett', '1936-08-19 05:51:16', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '385.571.3689', 0),
(11, 2, NULL, 'medhurst.jeffrey@anderson.info', 'medhurst.jeffrey@anderson.info', 'Immanuel', 'Carter', '1993-10-06 16:57:45', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '1-894-515-4233 x3299', 0),
(12, 1, NULL, 'parker.lura@stoltenberg.com', 'parker.lura@stoltenberg.com', 'Rosie', 'Lindgren', '1927-09-10 12:29:08', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '1-545-809-0184 x064', 0),
(13, 1, NULL, 'dennis30@goyette.net', 'dennis30@goyette.net', 'Silas', 'Sauer', '1982-12-15 21:09:38', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '(796) 627-1100 x4824', 0),
(14, 1, NULL, 'jamarcus.harris@yahoo.com', 'jamarcus.harris@yahoo.com', 'Leora', 'Bogisich', '1982-01-24 15:13:07', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '491.803.9655', 0),
(15, 1, NULL, 'hoppe.lois@hoppe.net', 'hoppe.lois@hoppe.net', 'Braxton', 'Schulist', '1926-08-18 22:27:42', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '1-702-949-0785', 0),
(16, 2, NULL, 'mateo.weissnat@thiel.biz', 'mateo.weissnat@thiel.biz', 'Freida', 'Parker', '1930-11-11 17:07:03', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '1-620-666-8033', 0),
(17, 1, NULL, 'hblick@volkman.com', 'hblick@volkman.com', 'Barton', 'Wisozk', '1974-10-01 11:25:06', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '+18044353005', 0),
(18, 2, NULL, 'predovic.isaiah@yahoo.com', 'predovic.isaiah@yahoo.com', 'Barbara', 'Nader', '2003-04-06 12:01:30', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '442-903-5322 x42207', 0),
(19, 2, NULL, 'ncasper@heller.info', 'ncasper@heller.info', 'Juston', 'Carroll', '1991-05-17 20:32:51', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '1-987-705-6523', 0),
(20, 1, NULL, 'lang.alta@hotmail.com', 'lang.alta@hotmail.com', 'Ruth', 'Conroy', '1966-05-21 21:35:23', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '1-983-393-8807 x6882', 0),
(21, 2, NULL, 'darlene37@bogan.com', 'darlene37@bogan.com', 'Ahmad', 'Zieme', '1994-07-05 15:17:36', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '+1-602-412-2198', 0),
(22, 1, NULL, 'gayle38@yahoo.com', 'gayle38@yahoo.com', 'Titus', 'Wyman', '1952-12-27 17:46:27', 'u', '2019-11-13 11:44:15', '2019-11-13 11:44:15', '635.838.3393 x22037', 0),
(23, NULL, NULL, 'van.t.pen@gmail.com', 'van.t.pen@gmail.com', 'Van', 'Pen', NULL, 'u', '2019-11-18 08:07:16', '2019-11-18 09:56:52', '0698175630', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_customer_group`
--

DROP TABLE IF EXISTS `sylius_customer_group`;
CREATE TABLE IF NOT EXISTS `sylius_customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7FCF9B0577153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_customer_group`
--

INSERT INTO `sylius_customer_group` (`id`, `code`, `name`) VALUES
(1, 'retail', 'Retail'),
(2, 'wholesale', 'Wholesale');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_exchange_rate`
--

DROP TABLE IF EXISTS `sylius_exchange_rate`;
CREATE TABLE IF NOT EXISTS `sylius_exchange_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source_currency` int(11) NOT NULL,
  `target_currency` int(11) NOT NULL,
  `ratio` decimal(10,5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5F52B852A76BEEDB3FD5856` (`source_currency`,`target_currency`),
  KEY `IDX_5F52B852A76BEED` (`source_currency`),
  KEY `IDX_5F52B85B3FD5856` (`target_currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_gateway_config`
--

DROP TABLE IF EXISTS `sylius_gateway_config`;
CREATE TABLE IF NOT EXISTS `sylius_gateway_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `factory_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_gateway_config`
--

INSERT INTO `sylius_gateway_config` (`id`, `gateway_name`, `factory_name`, `config`) VALUES
(2, 'Offline', 'offline', '[]'),
(3, 'Offline', 'offline', '[]'),
(4, 'test', 'stripe_checkout', '{\"publishable_key\":\"pk_test_WewK6kyUwn5MZTKhI44qvRDu\",\"secret_key\":\"sk_test_tdN2VOlekyd2c5fZqn4WHVC7\"}');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_locale`
--

DROP TABLE IF EXISTS `sylius_locale`;
CREATE TABLE IF NOT EXISTS `sylius_locale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BA1286477153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_locale`
--

INSERT INTO `sylius_locale` (`id`, `code`, `created_at`, `updated_at`) VALUES
(2, 'en_US', '2019-11-13 11:44:15', '2019-11-13 11:44:15'),
(3, 'fr', '2019-11-18 08:16:35', '2019-11-18 08:16:36'),
(4, 'fr_FR', '2019-11-18 09:38:32', '2019-11-18 09:38:32');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_order`
--

DROP TABLE IF EXISTS `sylius_order`;
CREATE TABLE IF NOT EXISTS `sylius_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shipping_address_id` int(11) DEFAULT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  `promotion_coupon_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` longtext COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_completed_at` datetime DEFAULT NULL,
  `items_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_6196A1F996901F54` (`number`),
  UNIQUE KEY `UNIQ_6196A1F94D4CFF2B` (`shipping_address_id`),
  UNIQUE KEY `UNIQ_6196A1F979D0C0E4` (`billing_address_id`),
  KEY `IDX_6196A1F972F5A1AA` (`channel_id`),
  KEY `IDX_6196A1F917B24436` (`promotion_coupon_id`),
  KEY `IDX_6196A1F99395C3F3` (`customer_id`),
  KEY `IDX_6196A1F9A393D2FB43625D9F` (`state`,`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order`
--

INSERT INTO `sylius_order` (`id`, `shipping_address_id`, `billing_address_id`, `channel_id`, `promotion_coupon_id`, `customer_id`, `number`, `notes`, `state`, `checkout_completed_at`, `items_total`, `adjustments_total`, `total`, `created_at`, `updated_at`, `currency_code`, `locale_code`, `checkout_state`, `payment_state`, `shipping_state`, `token_value`, `customer_ip`) VALUES
(2, 4, 5, 2, NULL, 13, '000000001', NULL, 'new', '2018-11-27 10:06:04', 26498, 776, 27274, '2019-11-13 11:44:17', '2019-11-13 11:44:17', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'ULis5PWf-e', NULL),
(3, 7, 8, 2, NULL, 15, '000000002', 'Ut beatae doloribus aut iusto vel.', 'new', '2019-01-15 12:54:31', 5288, 776, 6064, '2019-11-13 11:44:17', '2019-11-13 11:44:17', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'ylaLpmZqkm', NULL),
(4, 10, 11, 2, NULL, 2, '000000003', NULL, 'new', '2019-01-30 17:03:04', 20420, 776, 21196, '2019-11-13 11:44:17', '2019-11-13 11:44:17', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'szAoAyWoKe', NULL),
(5, 13, 14, 2, NULL, 8, '000000004', NULL, 'new', '2019-02-04 22:26:30', 39143, 296, 39439, '2019-11-13 11:44:17', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '4v5vAQNOAU', NULL),
(6, 16, 17, 2, NULL, 2, '000000005', NULL, 'new', '2019-02-13 02:41:54', 42254, 487, 42741, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'WXx5epKoEH', NULL),
(7, 19, 20, 2, NULL, 4, '000000006', 'Nihil reiciendis et repellat ad consequatur culpa laudantium molestias.', 'new', '2019-03-03 03:22:04', 55278, 487, 55765, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'qohwNXh2nh', NULL),
(8, 22, 23, 2, NULL, 5, '000000007', NULL, 'new', '2019-05-05 08:22:25', 61423, 296, 61719, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'muCC-Jp-bF', NULL),
(9, 25, 26, 2, NULL, 18, '000000008', NULL, 'new', '2019-06-05 06:39:56', 17673, 776, 18449, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '6MhQ6Ep0eL', NULL),
(10, 28, 29, 2, NULL, 16, '000000009', NULL, 'new', '2019-06-06 17:25:53', 8785, 776, 9561, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'he4JPgi15M', NULL),
(11, 31, 32, 2, NULL, 7, '000000010', NULL, 'new', '2019-06-13 05:55:48', 8676, 296, 8972, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '8ZlekO4Pw3', NULL),
(12, 34, 35, 2, NULL, 3, '000000011', NULL, 'new', '2019-06-23 22:18:13', 46143, 776, 46919, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'Bye-MktsVS', NULL),
(13, 37, 38, 2, NULL, 7, '000000012', NULL, 'new', '2019-07-01 17:03:47', 18303, 776, 19079, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '0TWiweCreR', NULL),
(14, 40, 41, 2, NULL, 8, '000000013', NULL, 'new', '2019-07-01 18:50:42', 54676, 776, 55452, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'DUemsNzYzR', NULL),
(15, 43, 44, 2, NULL, 8, '000000014', 'Optio quis qui in et minima et earum.', 'new', '2019-07-04 01:03:42', 11254, 296, 11550, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'IDpD0-Y_ax', NULL),
(16, 46, 47, 2, NULL, 15, '000000015', 'Officiis quia deleniti quia quidem dicta et eius.', 'new', '2019-07-08 21:50:14', 10278, 487, 10765, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'Qt9bBQkiYv', NULL),
(17, 49, 50, 2, NULL, 6, '000000016', NULL, 'new', '2019-08-08 19:26:28', 8205, 296, 8501, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'CI_0dsO_ku', NULL),
(18, 52, 53, 2, NULL, 18, '000000017', NULL, 'new', '2019-09-26 04:58:44', 48690, 776, 49466, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'jq~XtTI0VG', NULL),
(19, 55, 56, 2, NULL, 5, '000000018', 'Veniam neque quam vel.', 'new', '2019-10-15 11:43:17', 48458, 487, 48945, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'xIkWwLyoC_', NULL),
(20, 58, 59, 2, NULL, 8, '000000019', NULL, 'new', '2019-10-24 21:37:51', 28071, 296, 28367, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '_9Q8ul_38h', NULL),
(21, 61, 62, 2, NULL, 3, '000000020', NULL, 'new', '2019-11-07 01:55:10', 13899, 296, 14195, '2019-11-13 11:44:18', '2019-11-13 11:44:18', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'bBkCSAj62s', NULL),
(22, 73, 74, 2, NULL, 23, '000000021', 'test', 'new', '2019-11-18 08:31:35', 3256, 296, 3552, '2019-11-18 08:06:39', '2019-11-18 08:31:35', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', 'vfSpLam2m6', '127.0.0.1'),
(23, 75, 76, 2, NULL, 23, '000000022', NULL, 'fulfilled', '2019-11-18 14:40:42', 14528, 776, 15304, '2019-11-18 09:19:14', '2019-11-18 14:43:17', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'vBZMCiJ2IM', '127.0.0.1'),
(24, 78, 79, 2, NULL, 23, '000000023', NULL, 'new', '2019-11-19 11:20:07', 5131, 776, 5907, '2019-11-18 14:44:04', '2019-11-19 11:20:07', 'USD', 'en_US', 'completed', 'awaiting_payment', 'ready', '4aF3WoBZs4', '127.0.0.1'),
(25, 81, 82, 2, NULL, 23, '000000024', NULL, 'fulfilled', '2019-11-19 13:49:11', 9821, 776, 10597, '2019-11-19 13:47:51', '2019-11-19 13:52:02', 'USD', 'en_US', 'completed', 'paid', 'shipped', 'm6aE0_SMdJ', '127.0.0.1'),
(26, 83, 84, 2, NULL, 23, '000000025', NULL, 'new', '2019-11-19 21:17:15', 8526, 776, 9302, '2019-11-19 21:02:32', '2019-11-19 21:18:07', 'USD', 'en_US', 'completed', 'paid', 'ready', 'fWNb9FfePp', '127.0.0.1'),
(27, NULL, NULL, 2, NULL, 23, NULL, NULL, 'cart', NULL, 0, 0, 0, '2019-11-22 12:01:17', '2019-11-22 12:01:17', 'USD', 'en_US', 'cart', 'cart', 'cart', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_order_item`
--

DROP TABLE IF EXISTS `sylius_order_item`;
CREATE TABLE IF NOT EXISTS `sylius_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `units_total` int(11) NOT NULL,
  `adjustments_total` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `is_immutable` tinyint(1) NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `variant_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_77B587ED8D9F6D38` (`order_id`),
  KEY `IDX_77B587ED3B69A9AF` (`variant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order_item`
--

INSERT INTO `sylius_order_item` (`id`, `order_id`, `variant_id`, `quantity`, `unit_price`, `units_total`, `adjustments_total`, `total`, `is_immutable`, `product_name`, `variant_name`) VALUES
(2, 2, 98, 4, 4615, 11359, 0, 11359, 0, 'Slim fit elegant', 'M'),
(3, 2, 99, 2, 6269, 7716, 0, 7716, 0, 'Slim fit elegant', 'L'),
(4, 2, 108, 2, 6031, 7423, 0, 7423, 0, 'Slim fit', 'M'),
(5, 3, 27, 3, 2798, 5288, 0, 5288, 0, 'Regular fit men', 'XXL'),
(6, 4, 108, 1, 6031, 3686, 0, 3686, 0, 'Slim fit', 'M'),
(7, 4, 74, 4, 2278, 5569, 0, 5569, 0, 'Summer tunic', 'L Regular'),
(8, 4, 115, 5, 3654, 11165, 0, 11165, 0, 'New age regular', 'XL'),
(9, 5, 43, 5, 6940, 21515, 0, 21515, 0, 'Circle-skirt Dress', 'L Petite'),
(10, 5, 23, 1, 9111, 5649, 0, 5649, 0, 'Regular fit men', 'S'),
(11, 5, 77, 4, 4830, 11979, 0, 11979, 0, 'Summer tunic', 'XL Regular'),
(12, 6, 104, 2, 4026, 4996, 0, 4996, 0, 'Ultra slim', 'L'),
(13, 6, 36, 3, 4776, 10666, 0, 10666, 0, 'Simple cap', ''),
(14, 6, 84, 3, 5144, 9573, 0, 9573, 0, 'Basic regular', 'L'),
(15, 6, 53, 3, 8384, 15603, 0, 15603, 0, 'Sleeveless Dress', 'S Regular'),
(16, 6, 26, 1, 2283, 1416, 0, 1416, 0, 'Regular fit men', 'XL'),
(17, 7, 36, 2, 4776, 7134, 0, 7134, 0, 'Simple cap', ''),
(18, 7, 35, 4, 4438, 13260, 0, 13260, 0, 'Regular cap with big pompon', ''),
(19, 7, 24, 5, 5131, 15969, 0, 15969, 0, 'Regular fit men', 'M'),
(20, 7, 85, 5, 5592, 17404, 0, 17404, 0, 'Basic regular', 'XL'),
(21, 7, 30, 4, 607, 1511, 0, 1511, 0, 'Slim fit V-neck men', 'L'),
(22, 8, 19, 4, 5875, 14655, 0, 14655, 0, 'Slim fit men', 'M'),
(23, 8, 29, 5, 1246, 3885, 0, 3885, 0, 'Slim fit V-neck men', 'M'),
(24, 8, 94, 1, 6803, 4242, 0, 4242, 0, 'Regular Fit casual', 'L'),
(25, 8, 71, 4, 5745, 14331, 0, 14331, 0, 'Summer tunic', 'M Regular'),
(26, 8, 68, 4, 9746, 24310, 0, 24310, 0, 'Summer tunic', 'S Regular'),
(27, 9, 35, 3, 4438, 9686, 0, 9686, 0, 'Regular cap with big pompon', ''),
(28, 9, 20, 2, 1107, 1342, 0, 1342, 0, 'Slim fit men', 'L'),
(29, 9, 115, 3, 3654, 6645, 0, 6645, 0, 'New age regular', 'XL'),
(30, 10, 66, 2, 4364, 5131, 0, 5131, 0, 'Sleeveless Dress', 'XXL Tall'),
(31, 10, 93, 1, 6216, 3654, 0, 3654, 0, 'Regular Fit casual', 'M'),
(32, 11, 6, 4, 3693, 8676, 0, 8676, 0, 'Basic regular woman', 'XL'),
(33, 12, 28, 1, 8526, 5297, 0, 5297, 0, 'Slim fit V-neck men', 'S'),
(34, 12, 36, 2, 4776, 7122, 0, 7122, 0, 'Simple cap', ''),
(35, 12, 101, 4, 6309, 15679, 0, 15679, 0, 'Slim fit elegant', 'XXL'),
(36, 12, 9, 4, 7261, 18045, 0, 18045, 0, 'Slim fit woman', 'M'),
(37, 13, 119, 2, 3810, 4801, 0, 4801, 0, 'Whole holes classic', 'L'),
(38, 13, 35, 1, 4438, 3355, 0, 3355, 0, 'Regular cap with big pompon', ''),
(39, 13, 32, 3, 5369, 10147, 0, 10147, 0, 'Slim fit V-neck men', 'XXL'),
(40, 14, 55, 4, 9925, 25010, 0, 25010, 0, 'Sleeveless Dress', 'M Petite'),
(41, 14, 19, 3, 5875, 11104, 0, 11104, 0, 'Slim fit men', 'M'),
(42, 14, 18, 3, 9821, 18562, 0, 18562, 0, 'Slim fit men', 'S'),
(43, 15, 33, 5, 2977, 11254, 0, 11254, 0, 'Basic winter hot cap', ''),
(44, 16, 90, 3, 2825, 5339, 0, 5339, 0, 'Slim fit classic', 'XL'),
(45, 16, 15, 2, 3592, 4526, 0, 4526, 0, 'Regular Fit V-neck woman', 'L'),
(46, 16, 86, 1, 656, 413, 0, 413, 0, 'Basic regular', 'XXL'),
(47, 17, 37, 4, 3256, 8205, 0, 8205, 0, 'Circle-skirt Dress', 'S Petite'),
(48, 18, 36, 5, 4776, 18054, 0, 18054, 0, 'Simple cap', ''),
(49, 18, 4, 4, 5846, 14732, 0, 14732, 0, 'Basic regular woman', 'M'),
(50, 18, 34, 3, 5351, 12136, 0, 12136, 0, 'Beautiful cap for woman', ''),
(51, 18, 86, 1, 656, 413, 0, 413, 0, 'Basic regular', 'XXL'),
(52, 18, 35, 1, 4438, 3355, 0, 3355, 0, 'Regular cap with big pompon', ''),
(53, 19, 67, 5, 8991, 28322, 0, 28322, 0, 'Summer tunic', 'S Petite'),
(54, 19, 115, 1, 3654, 2302, 0, 2302, 0, 'New age regular', 'XL'),
(55, 19, 21, 3, 7364, 13918, 0, 13918, 0, 'Slim fit men', 'XL'),
(56, 19, 93, 1, 6216, 3916, 0, 3916, 0, 'Regular Fit casual', 'M'),
(57, 20, 120, 1, 1827, 1151, 0, 1151, 0, 'Whole holes classic', 'XL'),
(58, 20, 75, 1, 5910, 3723, 0, 3723, 0, 'Summer tunic', 'L Tall'),
(59, 20, 21, 5, 7364, 23197, 0, 23197, 0, 'Slim fit men', 'XL'),
(60, 21, 27, 1, 2798, 1763, 0, 1763, 0, 'Regular fit men', 'XXL'),
(61, 21, 34, 3, 5351, 12136, 0, 12136, 0, 'Beautiful cap for woman', ''),
(62, 22, 37, 1, 3256, 3256, 0, 3256, 0, 'Circle-skirt Dress', 'S Petite'),
(64, 23, 97, 5, 4612, 14528, 0, 14528, 0, 'Slim fit elegant', 'S'),
(66, 24, 24, 1, 5131, 5131, 0, 5131, 0, 'Tee-shirt Noir', 'M'),
(67, 25, 18, 1, 9821, 9821, 0, 9821, 0, 'Tee-shirt Blanc', 'S'),
(68, 26, 28, 1, 8526, 8526, 0, 8526, 0, 'Tee-shirt jaune', 'S');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_order_item_unit`
--

DROP TABLE IF EXISTS `sylius_order_item_unit`;
CREATE TABLE IF NOT EXISTS `sylius_order_item_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_item_id` int(11) NOT NULL,
  `shipment_id` int(11) DEFAULT NULL,
  `adjustments_total` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_82BF226EE415FB15` (`order_item_id`),
  KEY `IDX_82BF226E7BE036FC` (`shipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order_item_unit`
--

INSERT INTO `sylius_order_item_unit` (`id`, `order_item_id`, `shipment_id`, `adjustments_total`, `created_at`, `updated_at`) VALUES
(2, 2, 1, -1776, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(3, 2, 1, -1775, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(4, 2, 1, -1775, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(5, 2, 1, -1775, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(6, 3, 1, -2412, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(7, 3, 1, -2410, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(8, 4, 1, -2320, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(9, 4, 1, -2319, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(10, 5, 2, -1036, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(11, 5, 2, -1035, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(12, 5, 2, -1035, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(13, 6, 3, -2345, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(14, 7, 3, -887, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(15, 7, 3, -886, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(16, 7, 3, -885, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(17, 7, 3, -885, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(18, 8, 3, -1422, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(19, 8, 3, -1422, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(20, 8, 3, -1421, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(21, 8, 3, -1420, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(22, 8, 3, -1420, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(23, 9, 4, -2637, '2019-11-13 11:44:17', '2019-11-13 11:44:18'),
(24, 9, 4, -2637, '2019-11-13 11:44:17', '2019-11-13 11:44:18'),
(25, 9, 4, -2637, '2019-11-13 11:44:17', '2019-11-13 11:44:18'),
(26, 9, 4, -2637, '2019-11-13 11:44:17', '2019-11-13 11:44:18'),
(27, 9, 4, -2637, '2019-11-13 11:44:17', '2019-11-13 11:44:18'),
(28, 10, 4, -3462, '2019-11-13 11:44:17', '2019-11-13 11:44:18'),
(29, 11, 4, -1836, '2019-11-13 11:44:17', '2019-11-13 11:44:18'),
(30, 11, 4, -1836, '2019-11-13 11:44:17', '2019-11-13 11:44:18'),
(31, 11, 4, -1835, '2019-11-13 11:44:17', '2019-11-13 11:44:18'),
(32, 11, 4, -1834, '2019-11-13 11:44:17', '2019-11-13 11:44:18'),
(33, 12, 5, -1529, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(34, 12, 5, -1527, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(35, 13, 5, -1221, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(36, 13, 5, -1220, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(37, 13, 5, -1221, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(38, 14, 5, -1953, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(39, 14, 5, -1953, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(40, 14, 5, -1953, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(41, 15, 5, -3184, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(42, 15, 5, -3183, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(43, 15, 5, -3182, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(44, 16, 5, -867, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(45, 17, 6, -1209, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(46, 17, 6, -1209, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(47, 18, 6, -1124, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(48, 18, 6, -1122, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(49, 18, 6, -1123, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(50, 18, 6, -1123, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(51, 19, 6, -1938, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(52, 19, 6, -1938, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(53, 19, 6, -1938, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(54, 19, 6, -1936, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(55, 19, 6, -1936, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(56, 20, 6, -2112, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(57, 20, 6, -2111, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(58, 20, 6, -2111, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(59, 20, 6, -2111, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(60, 20, 6, -2111, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(61, 21, 6, -230, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(62, 21, 6, -229, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(63, 21, 6, -229, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(64, 21, 6, -229, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(65, 22, 7, -2212, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(66, 22, 7, -2212, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(67, 22, 7, -2211, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(68, 22, 7, -2210, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(69, 23, 7, -470, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(70, 23, 7, -470, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(71, 23, 7, -469, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(72, 23, 7, -468, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(73, 23, 7, -468, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(74, 24, 7, -2561, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(75, 25, 7, -2163, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(76, 25, 7, -2162, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(77, 25, 7, -2162, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(78, 25, 7, -2162, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(79, 26, 7, -3669, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(80, 26, 7, -3669, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(81, 26, 7, -3668, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(82, 26, 7, -3668, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(83, 27, 8, -1210, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(84, 27, 8, -1209, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(85, 27, 8, -1209, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(86, 28, 8, -436, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(87, 28, 8, -436, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(88, 29, 8, -1439, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(89, 29, 8, -1439, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(90, 29, 8, -1439, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(91, 30, 9, -1799, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(92, 30, 9, -1798, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(93, 31, 9, -2562, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(94, 32, 10, -1524, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(95, 32, 10, -1524, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(96, 32, 10, -1524, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(97, 32, 10, -1524, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(98, 33, 11, -3229, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(99, 34, 11, -1215, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(100, 34, 11, -1215, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(101, 35, 11, -2390, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(102, 35, 11, -2389, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(103, 35, 11, -2389, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(104, 35, 11, -2389, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(105, 36, 11, -2751, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(106, 36, 11, -2750, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(107, 36, 11, -2749, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(108, 36, 11, -2749, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(109, 37, 12, -1410, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(110, 37, 12, -1409, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(111, 38, 12, -1083, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(112, 39, 12, -1987, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(113, 39, 12, -1987, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(114, 39, 12, -1986, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(115, 40, 13, -3673, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(116, 40, 13, -3673, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(117, 40, 13, -3672, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(118, 40, 13, -3672, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(119, 41, 13, -2174, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(120, 41, 13, -2174, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(121, 41, 13, -2173, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(122, 42, 13, -3634, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(123, 42, 13, -3634, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(124, 42, 13, -3633, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(125, 43, 14, -726, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(126, 43, 14, -727, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(127, 43, 14, -726, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(128, 43, 14, -726, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(129, 43, 14, -726, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(130, 44, 15, -1046, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(131, 44, 15, -1045, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(132, 44, 15, -1045, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(133, 45, 15, -1329, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(134, 45, 15, -1329, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(135, 46, 15, -243, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(136, 47, 16, -1205, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(137, 47, 16, -1205, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(138, 47, 16, -1205, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(139, 47, 16, -1204, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(140, 48, 17, -1165, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(141, 48, 17, -1165, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(142, 48, 17, -1165, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(143, 48, 17, -1165, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(144, 48, 17, -1166, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(145, 49, 17, -2163, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(146, 49, 17, -2163, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(147, 49, 17, -2163, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(148, 49, 17, -2163, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(149, 50, 17, -1305, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(150, 50, 17, -1306, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(151, 50, 17, -1306, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(152, 51, 17, -243, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(153, 52, 17, -1083, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(154, 53, 18, -3327, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(155, 53, 18, -3327, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(156, 53, 18, -3327, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(157, 53, 18, -3326, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(158, 53, 18, -3326, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(159, 54, 18, -1352, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(160, 55, 18, -2725, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(161, 55, 18, -2725, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(162, 55, 18, -2724, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(163, 56, 18, -2300, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(164, 57, 19, -676, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(165, 58, 19, -2187, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(166, 59, 19, -2725, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(167, 59, 19, -2725, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(168, 59, 19, -2725, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(169, 59, 19, -2724, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(170, 59, 19, -2724, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(171, 60, 20, -1035, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(172, 61, 20, -1305, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(173, 61, 20, -1306, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(174, 61, 20, -1306, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(175, 62, 21, 0, '2019-11-18 08:06:40', '2019-11-18 08:06:41'),
(177, 64, 22, -1707, '2019-11-18 14:37:41', '2019-11-18 14:38:22'),
(178, 64, 22, -1707, '2019-11-18 14:38:17', '2019-11-18 14:38:22'),
(179, 64, 22, -1706, '2019-11-18 14:38:17', '2019-11-18 14:38:22'),
(180, 64, 22, -1706, '2019-11-18 14:38:17', '2019-11-18 14:38:22'),
(181, 64, 22, -1706, '2019-11-18 14:38:17', '2019-11-18 14:38:22'),
(200, 66, 24, 0, '2019-11-19 11:16:58', '2019-11-19 11:16:59'),
(201, 67, 25, 0, '2019-11-19 13:47:52', '2019-11-19 13:47:53'),
(202, 68, 26, 0, '2019-11-19 21:09:15', '2019-11-19 21:09:17');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_order_sequence`
--

DROP TABLE IF EXISTS `sylius_order_sequence`;
CREATE TABLE IF NOT EXISTS `sylius_order_sequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idx` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_order_sequence`
--

INSERT INTO `sylius_order_sequence` (`id`, `idx`, `version`) VALUES
(1, 25, 7);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment`
--

DROP TABLE IF EXISTS `sylius_payment`;
CREATE TABLE IF NOT EXISTS `sylius_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D9191BD419883967` (`method_id`),
  KEY `IDX_D9191BD48D9F6D38` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_payment`
--

INSERT INTO `sylius_payment` (`id`, `method_id`, `order_id`, `currency_code`, `amount`, `state`, `details`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'USD', 27274, 'new', '[]', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(2, 2, 3, 'USD', 6064, 'new', '[]', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(3, 2, 4, 'USD', 21196, 'new', '[]', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(4, 2, 5, 'USD', 39439, 'new', '[]', '2019-11-13 11:44:17', '2019-11-13 11:44:18'),
(5, 2, 6, 'USD', 42741, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(6, 3, 7, 'USD', 55765, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(7, 2, 8, 'USD', 61719, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(8, 3, 9, 'USD', 18449, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(9, 2, 10, 'USD', 9561, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(10, 3, 11, 'USD', 8972, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(11, 2, 12, 'USD', 46919, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(12, 3, 13, 'USD', 19079, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(13, 2, 14, 'USD', 55452, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(14, 2, 15, 'USD', 11550, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(15, 3, 16, 'USD', 10765, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(16, 2, 17, 'USD', 8501, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(17, 3, 18, 'USD', 49466, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(18, 2, 19, 'USD', 48945, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(19, 3, 20, 'USD', 28367, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(20, 3, 21, 'USD', 14195, 'new', '[]', '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(21, 4, 22, 'USD', 3552, 'new', '{\"amount\":3552,\"currency\":\"USD\",\"description\":\"Payment contains 1 item for a total of 35.52\"}', '2019-11-18 08:06:41', '2019-11-18 08:31:40'),
(22, 2, 23, 'USD', 15304, 'completed', '{\"status\":\"pending\"}', '2019-11-18 09:19:16', '2019-11-18 14:42:08'),
(24, 4, 24, 'USD', 5907, 'failed', '{\"amount\":5907,\"currency\":\"USD\",\"description\":\"Payment contains 1 item for a total of 59.07\",\"card\":\"tok_1FgUrAAxaaU678N2o9ugsZcD\",\"error\":{\"code\":\"resource_missing\",\"doc_url\":\"https:\\/\\/stripe.com\\/docs\\/error-codes\\/resource-missing\",\"message\":\"No such token: tok_1FgUrAAxaaU678N2o9ugsZcD; a similar object exists in test mode, but a live mode key was used to make this request.\",\"param\":\"card\",\"type\":\"invalid_request_error\"}}', '2019-11-19 11:16:59', '2019-11-19 11:26:59'),
(25, 4, 24, 'USD', 5907, 'failed', '{\"amount\":5907,\"currency\":\"USD\",\"description\":\"Payment contains 1 item for a total of 59.07\",\"card\":\"tok_1FgUsAAxaaU678N2J3U3FMQy\",\"error\":{\"code\":\"resource_missing\",\"doc_url\":\"https:\\/\\/stripe.com\\/docs\\/error-codes\\/resource-missing\",\"message\":\"No such token: tok_1FgUsAAxaaU678N2J3U3FMQy; a similar object exists in test mode, but a live mode key was used to make this request.\",\"param\":\"card\",\"type\":\"invalid_request_error\"}}', '2019-11-19 11:26:59', '2019-11-19 11:28:00'),
(26, 4, 24, 'USD', 5907, 'new', '[]', '2019-11-19 11:28:00', '2019-11-19 11:28:00'),
(27, 4, 25, 'USD', 10597, 'completed', '{\"amount\":10597,\"currency\":\"usd\",\"description\":\"Payment contains 1 item for a total of 105.97\",\"card\":\"tok_1FgX5UAxaaU678N2CeWZTC8U\",\"id\":\"ch_1FgX5aAxaaU678N2YQhXvkkn\",\"object\":\"charge\",\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1FgX5aAxaaU678N2mtmO81w9\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":\"test@test.fr\",\"phone\":null},\"captured\":true,\"created\":1574171394,\"customer\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":58,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1FgX5UAxaaU678N27yQzp08s\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":1,\"exp_year\":2021,\"fingerprint\":\"Uj9sOvrpQ3QSwqMN\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"4242\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1B1Vh4AxaaU678N2\\/ch_1FgX5aAxaaU678N2YQhXvkkn\\/rcpt_GCwzKh1r0OeA3ZjJSWA5ZOjMCBrYbx0\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1FgX5aAxaaU678N2YQhXvkkn\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1FgX5UAxaaU678N27yQzp08s\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":1,\"exp_year\":2021,\"fingerprint\":\"Uj9sOvrpQ3QSwqMN\",\"funding\":\"credit\",\"last4\":\"4242\",\"metadata\":[],\"name\":\"test@test.fr\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '2019-11-19 13:47:53', '2019-11-19 13:49:55'),
(28, 4, 26, 'USD', 9302, 'completed', '{\"amount\":9302,\"currency\":\"usd\",\"description\":\"Payment contains 1 item for a total of 93.02\",\"card\":\"tok_1Fge5BAxaaU678N2ZSE10MJf\",\"id\":\"ch_1Fge5IAxaaU678N2LOAngZuV\",\"object\":\"charge\",\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1Fge5JAxaaU678N2xyFvlbBf\",\"billing_details\":{\"address\":{\"city\":null,\"country\":null,\"line1\":null,\"line2\":null,\"postal_code\":null,\"state\":null},\"email\":null,\"name\":\"test@test.fr\",\"phone\":null},\"captured\":true,\"created\":1574198284,\"customer\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":[],\"on_behalf_of\":null,\"order\":null,\"outcome\":{\"network_status\":\"approved_by_network\",\"reason\":null,\"risk_level\":\"normal\",\"risk_score\":36,\"seller_message\":\"Payment complete.\",\"type\":\"authorized\"},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1Fge5BAxaaU678N2YHQnFttO\",\"payment_method_details\":{\"card\":{\"brand\":\"visa\",\"checks\":{\"address_line1_check\":null,\"address_postal_code_check\":null,\"cvc_check\":\"pass\"},\"country\":\"US\",\"exp_month\":1,\"exp_year\":2021,\"fingerprint\":\"Uj9sOvrpQ3QSwqMN\",\"funding\":\"credit\",\"installments\":null,\"last4\":\"4242\",\"network\":\"visa\",\"three_d_secure\":null,\"wallet\":null},\"type\":\"card\"},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_1B1Vh4AxaaU678N2\\/ch_1Fge5IAxaaU678N2LOAngZuV\\/rcpt_GD4DY00hwGsexlGSO18xWVJGJiASXFp\",\"refunded\":false,\"refunds\":{\"object\":\"list\",\"data\":[],\"has_more\":false,\"total_count\":0,\"url\":\"\\/v1\\/charges\\/ch_1Fge5IAxaaU678N2LOAngZuV\\/refunds\"},\"review\":null,\"shipping\":null,\"source\":{\"id\":\"card_1Fge5BAxaaU678N2YHQnFttO\",\"object\":\"card\",\"address_city\":null,\"address_country\":null,\"address_line1\":null,\"address_line1_check\":null,\"address_line2\":null,\"address_state\":null,\"address_zip\":null,\"address_zip_check\":null,\"brand\":\"Visa\",\"country\":\"US\",\"customer\":null,\"cvc_check\":\"pass\",\"dynamic_last4\":null,\"exp_month\":1,\"exp_year\":2021,\"fingerprint\":\"Uj9sOvrpQ3QSwqMN\",\"funding\":\"credit\",\"last4\":\"4242\",\"metadata\":[],\"name\":\"test@test.fr\",\"tokenization_method\":null},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null}', '2019-11-19 21:09:16', '2019-11-19 21:18:07');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment_method`
--

DROP TABLE IF EXISTS `sylius_payment_method`;
CREATE TABLE IF NOT EXISTS `sylius_payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_config_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `environment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A75B0B0D77153098` (`code`),
  KEY `IDX_A75B0B0DF23D6140` (`gateway_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_payment_method`
--

INSERT INTO `sylius_payment_method` (`id`, `gateway_config_id`, `code`, `environment`, `is_enabled`, `position`, `created_at`, `updated_at`) VALUES
(2, 2, 'cash_on_delivery', NULL, 1, 0, '2019-11-13 11:44:15', '2019-11-13 11:44:15'),
(3, 3, 'bank_transfer', NULL, 1, 2, '2019-11-13 11:44:15', '2019-11-13 11:44:15'),
(4, 4, 'Test', NULL, 1, 1, '2019-11-18 08:27:28', '2019-11-18 08:35:44');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment_method_channels`
--

DROP TABLE IF EXISTS `sylius_payment_method_channels`;
CREATE TABLE IF NOT EXISTS `sylius_payment_method_channels` (
  `payment_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`payment_method_id`,`channel_id`),
  KEY `IDX_543AC0CC5AA1164F` (`payment_method_id`),
  KEY `IDX_543AC0CC72F5A1AA` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_payment_method_channels`
--

INSERT INTO `sylius_payment_method_channels` (`payment_method_id`, `channel_id`) VALUES
(2, 2),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment_method_translation`
--

DROP TABLE IF EXISTS `sylius_payment_method_translation`;
CREATE TABLE IF NOT EXISTS `sylius_payment_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `instructions` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_payment_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_966BE3A12C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_payment_method_translation`
--

INSERT INTO `sylius_payment_method_translation` (`id`, `translatable_id`, `name`, `description`, `instructions`, `locale`) VALUES
(1, 2, 'Cash on delivery', 'Qui natus sint nihil quo quidem explicabo consequatur.', NULL, 'en_US'),
(2, 3, 'Bank transfer', 'Ut quasi incidunt perferendis iste ut sit rem omnis.', NULL, 'en_US'),
(3, 4, 'Stripe', NULL, NULL, 'en_US'),
(4, 4, 'Test', NULL, NULL, 'fr');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_payment_security_token`
--

DROP TABLE IF EXISTS `sylius_payment_security_token`;
CREATE TABLE IF NOT EXISTS `sylius_payment_security_token` (
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:object)',
  `after_url` longtext COLLATE utf8_unicode_ci,
  `target_url` longtext COLLATE utf8_unicode_ci NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_payment_security_token`
--

INSERT INTO `sylius_payment_security_token` (`hash`, `details`, `after_url`, `target_url`, `gateway_name`) VALUES
('D8mzyJkv3pvctj00H2VJQXYreps-Sr0xN6u_bcHlr6o', 'C:25:\"Payum\\Core\\Model\\Identity\":53:{a:2:{i:0;i:21;i:1;s:26:\"App\\Entity\\Payment\\Payment\";}}', NULL, 'http://127.0.0.1:8000/en_US/order/after-pay?payum_token=D8mzyJkv3pvctj00H2VJQXYreps-Sr0xN6u_bcHlr6o', 'test'),
('WD5fWDMMQnSCF5p8nByyahN4W9_u4i8T9aV6CveAuTU', 'C:25:\"Payum\\Core\\Model\\Identity\":53:{a:2:{i:0;i:21;i:1;s:26:\"App\\Entity\\Payment\\Payment\";}}', 'http://127.0.0.1:8000/en_US/order/after-pay?payum_token=D8mzyJkv3pvctj00H2VJQXYreps-Sr0xN6u_bcHlr6o', 'http://127.0.0.1:8000/payment/capture/WD5fWDMMQnSCF5p8nByyahN4W9_u4i8T9aV6CveAuTU', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product`
--

DROP TABLE IF EXISTS `sylius_product`;
CREATE TABLE IF NOT EXISTS `sylius_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_taxon_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `variant_selection_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `average_rating` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_677B9B7477153098` (`code`),
  KEY `IDX_677B9B74731E505` (`main_taxon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product`
--

INSERT INTO `sylius_product` (`id`, `main_taxon_id`, `code`, `created_at`, `updated_at`, `enabled`, `variant_selection_method`, `average_rating`) VALUES
(3, 4, 'Basic_regular_woman', '2019-11-08 15:08:14', '2019-11-13 11:44:17', 0, 'match', 4),
(4, 4, 'Slim_fit_woman', '2019-11-09 23:24:55', '2019-11-13 11:44:16', 0, 'match', 0),
(5, 4, 'Regular_Fit_V_neck_woman', '2019-11-06 13:55:53', '2019-11-13 11:44:17', 0, 'match', 3),
(6, 3, 'Tee_shirt_blanc_homme', '2019-11-11 08:36:10', '2019-11-27 13:29:49', 0, 'match', 0),
(7, 3, 'Regular_fit_men', '2019-11-08 01:16:05', '2019-11-27 13:33:32', 0, 'match', 0),
(8, 3, 'Tee_shirt_jaune_homme', '2019-11-13 07:11:23', '2019-11-27 13:30:08', 0, 'match', 0),
(9, 7, 'Basic_winter_hot_cap', '2019-11-12 15:30:22', '2019-11-19 07:50:09', 0, 'match', 0),
(10, 6, 'Beautiful_cap_for_woman', '2019-11-11 12:52:38', '2019-11-19 07:50:14', 0, 'match', 4),
(11, 7, 'Regular_cap_with_big_pompon', '2019-11-12 13:32:16', '2019-11-19 07:50:22', 0, 'match', 3),
(12, 6, 'Simple_cap', '2019-11-13 06:16:55', '2019-11-19 07:50:29', 0, 'match', 0),
(13, 8, 'Circle_skirt_Dress', '2019-11-06 22:12:23', '2019-11-19 07:52:34', 0, 'match', 0),
(14, 8, 'Sleeveless_Dress', '2019-11-07 15:00:12', '2019-11-19 07:52:39', 0, 'match', 0),
(15, 8, 'Summer_tunic', '2019-11-10 04:13:35', '2019-11-19 07:52:45', 0, 'match', 5),
(16, 10, 'Basic_regular', '2019-11-12 06:32:13', '2019-11-19 07:53:57', 0, 'match', 0),
(17, 10, 'Slim_fit_classic', '2019-11-10 22:51:29', '2019-11-19 07:54:02', 0, 'match', 4),
(18, 10, 'Regular_Fit_casual', '2019-11-06 20:56:00', '2019-11-19 07:49:18', 0, 'match', 5),
(19, 10, 'Slim_fit_elegant', '2019-11-12 18:36:58', '2019-11-19 07:54:07', 0, 'match', 2),
(20, 11, 'Ultra_slim', '2019-11-08 15:06:11', '2019-11-19 07:54:11', 0, 'match', 3),
(21, 11, 'Slim_fit', '2019-11-08 17:16:35', '2019-11-19 07:54:16', 0, 'match', 0),
(22, 11, 'New_age_regular', '2019-11-08 19:14:59', '2019-11-19 07:54:21', 0, 'match', 0),
(23, 11, 'Whole_holes_classic', '2019-11-07 00:09:26', '2019-11-19 07:54:52', 0, 'match', 0),
(24, 6, 'polo_homme_noir', '2019-11-19 08:36:09', '2019-11-27 13:33:27', 0, 'choice', 0),
(25, 3, 'vaillant_05_jaune', '2019-11-19 14:29:48', '2019-11-27 13:31:28', 0, 'match', 0),
(26, NULL, 'tee-shirt-vaillant-05-bleu', '2019-11-19 15:07:06', '2019-11-27 13:30:22', 0, 'choice', 0),
(27, NULL, 'Renault_tee-shirt-blanc_01', '2019-11-27 10:46:25', '2019-11-27 11:03:00', 1, 'match', 0),
(28, NULL, 'Renault_tee_shirt_blanc_logo_jaune', '2019-11-27 11:07:59', '2019-11-27 11:08:01', 1, 'match', 0),
(29, NULL, 'Renault_tee-shirt_gris_logo_blanc', '2019-11-27 11:34:24', '2019-11-27 11:34:26', 1, 'match', 0),
(30, NULL, 'Renault_tee-shirt_gris_logo_jaune', '2019-11-27 11:43:18', '2019-11-27 11:45:28', 1, 'match', 0),
(31, NULL, 'renault_tee-shirt_imprime_noir', '2019-11-27 12:23:14', '2019-11-27 12:23:49', 1, 'match', 0),
(32, NULL, 'renault_tee-shirt_imprime_orange', '2019-11-27 13:11:34', '2019-11-27 13:11:36', 1, 'match', 0),
(33, NULL, 'vaillant_jaune', '2019-11-27 13:36:17', '2019-11-27 13:36:20', 1, 'match', 0),
(34, NULL, 'vaillant_bleu', '2019-11-27 13:45:13', '2019-11-27 13:45:15', 1, 'match', 0),
(35, NULL, 'vaillant_gris', '2019-11-27 13:50:33', '2019-11-27 13:50:36', 1, 'choice', 0);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_association`
--

DROP TABLE IF EXISTS `sylius_product_association`;
CREATE TABLE IF NOT EXISTS `sylius_product_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `association_type_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_association_idx` (`product_id`,`association_type_id`),
  KEY `IDX_48E9CDABB1E1C39` (`association_type_id`),
  KEY `IDX_48E9CDAB4584665A` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_association`
--

INSERT INTO `sylius_product_association` (`id`, `association_type_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 13, '2019-11-13 11:44:17', '2019-11-19 07:52:34'),
(2, 1, 10, '2019-11-13 11:44:17', '2019-11-19 07:50:14'),
(3, 1, 14, '2019-11-13 11:44:17', '2019-11-19 07:52:39'),
(4, 1, 8, '2019-11-19 14:59:09', '2019-11-27 13:30:08'),
(5, 1, 28, '2019-11-27 11:08:01', '2019-11-27 13:19:04'),
(7, 1, 27, '2019-11-27 11:18:20', '2019-11-27 13:55:11'),
(8, 1, 29, '2019-11-27 11:34:26', '2019-11-27 13:20:35'),
(9, 1, 30, '2019-11-27 11:43:20', '2019-11-27 13:54:56'),
(10, 1, 32, '2019-11-27 13:11:36', '2019-11-27 14:00:25'),
(11, 1, 31, '2019-11-27 13:21:42', '2019-11-27 13:55:01'),
(12, 1, 34, '2019-11-27 13:45:15', '2019-11-27 13:57:43'),
(13, 1, 35, '2019-11-27 13:50:35', '2019-11-27 13:58:41'),
(14, 1, 33, '2019-11-27 13:59:19', '2019-11-27 13:59:19');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_association_product`
--

DROP TABLE IF EXISTS `sylius_product_association_product`;
CREATE TABLE IF NOT EXISTS `sylius_product_association_product` (
  `association_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`association_id`,`product_id`),
  KEY `IDX_A427B983EFB9C8A5` (`association_id`),
  KEY `IDX_A427B9834584665A` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_association_product`
--

INSERT INTO `sylius_product_association_product` (`association_id`, `product_id`) VALUES
(1, 13),
(1, 15),
(2, 10),
(2, 12),
(3, 13),
(3, 15),
(4, 6),
(4, 8),
(5, 27),
(5, 29),
(5, 30),
(7, 28),
(8, 27),
(8, 28),
(8, 30),
(9, 27),
(9, 28),
(9, 29),
(10, 31),
(10, 32),
(11, 32),
(12, 33),
(12, 34),
(12, 35),
(13, 33),
(13, 34),
(13, 35),
(14, 33),
(14, 34),
(14, 35);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_association_type`
--

DROP TABLE IF EXISTS `sylius_product_association_type`;
CREATE TABLE IF NOT EXISTS `sylius_product_association_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CCB8914C77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_association_type`
--

INSERT INTO `sylius_product_association_type` (`id`, `code`, `created_at`, `updated_at`) VALUES
(1, 'similar_products', '2019-11-13 11:44:17', '2019-11-13 11:44:17');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_association_type_translation`
--

DROP TABLE IF EXISTS `sylius_product_association_type_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_association_type_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_association_type_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_4F618E52C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_association_type_translation`
--

INSERT INTO `sylius_product_association_type_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'Similar products', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_attribute`
--

DROP TABLE IF EXISTS `sylius_product_attribute`;
CREATE TABLE IF NOT EXISTS `sylius_product_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storage_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BFAF484A77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_attribute`
--

INSERT INTO `sylius_product_attribute` (`id`, `code`, `type`, `storage_type`, `configuration`, `created_at`, `updated_at`, `position`) VALUES
(1, 't_shirt_brand', 'text', 'text', 'a:0:{}', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 0),
(2, 't_shirt_collection', 'text', 'text', 'a:0:{}', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 1),
(3, 't_shirt_material', 'text', 'text', 'a:0:{}', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 2),
(4, 'cap_brand', 'text', 'text', 'a:0:{}', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 3),
(5, 'cap_collection', 'text', 'text', 'a:0:{}', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 4),
(6, 'cap_material', 'text', 'text', 'a:0:{}', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 5),
(7, 'dress_brand', 'text', 'text', 'a:0:{}', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 6),
(8, 'dress_collection', 'text', 'text', 'a:0:{}', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 7),
(9, 'dress_material', 'text', 'text', 'a:0:{}', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 8),
(10, 'jeans_brand', 'text', 'text', 'a:0:{}', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 9),
(11, 'jeans_collection', 'text', 'text', 'a:0:{}', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 10),
(12, 'jeans_material', 'text', 'text', 'a:0:{}', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 11);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_attribute_translation`
--

DROP TABLE IF EXISTS `sylius_product_attribute_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_attribute_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_attribute_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_93850EBA2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_attribute_translation`
--

INSERT INTO `sylius_product_attribute_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'T-shirt brand', 'en_US'),
(2, 2, 'T-shirt collection', 'en_US'),
(3, 3, 'T-shirt material', 'en_US'),
(4, 4, 'Cap brand', 'en_US'),
(5, 5, 'Cap collection', 'en_US'),
(6, 6, 'Cap material', 'en_US'),
(7, 7, 'Dress brand', 'en_US'),
(8, 8, 'Dress collection', 'en_US'),
(9, 9, 'Dress material', 'en_US'),
(10, 10, 'Jeans brand', 'en_US'),
(11, 11, 'Jeans collection', 'en_US'),
(12, 12, 'Jeans material', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_attribute_value`
--

DROP TABLE IF EXISTS `sylius_product_attribute_value`;
CREATE TABLE IF NOT EXISTS `sylius_product_attribute_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `locale_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `text_value` longtext COLLATE utf8_unicode_ci,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` double DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:json_array)',
  PRIMARY KEY (`id`),
  KEY `IDX_8A053E544584665A` (`product_id`),
  KEY `IDX_8A053E54B6E62EFA` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_attribute_value`
--

INSERT INTO `sylius_product_attribute_value` (`id`, `product_id`, `attribute_id`, `locale_code`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`) VALUES
(1, 3, 1, 'en_US', 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 3, 2, 'en_US', 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 3, 'en_US', '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, 'en_US', 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 4, 2, 'en_US', 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 4, 3, 'en_US', '100% cotton', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 5, 1, 'en_US', 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 5, 2, 'en_US', 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 5, 3, 'en_US', '100% viscose', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 6, 1, 'en_US', 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 6, 2, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 6, 3, 'en_US', '100% nylon', NULL, NULL, NULL, NULL, NULL, NULL),
(13, 7, 1, 'en_US', 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL),
(14, 7, 2, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 7, 3, 'en_US', '100% linen', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 8, 1, 'en_US', 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(17, 8, 2, 'en_US', 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(18, 8, 3, 'en_US', '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 9, 4, 'en_US', 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL),
(20, 9, 5, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 9, 6, 'en_US', '100% wool', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 10, 4, 'en_US', 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 10, 5, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 10, 6, 'en_US', '100% wool', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 11, 4, 'en_US', 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 11, 5, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 11, 6, 'en_US', '100% wool', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 12, 4, 'en_US', 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 12, 5, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 12, 6, 'en_US', '100% wool', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 13, 7, 'en_US', 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 13, 8, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(33, 13, 9, 'en_US', '100% polyester', NULL, NULL, NULL, NULL, NULL, NULL),
(34, 14, 7, 'en_US', 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 14, 8, 'en_US', 'Sylius Summer 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 14, 9, 'en_US', '100% wool', NULL, NULL, NULL, NULL, NULL, NULL),
(37, 15, 7, 'en_US', 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 15, 8, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(39, 15, 9, 'en_US', '100%', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 16, 10, 'en_US', 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 16, 11, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 16, 12, 'en_US', '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 17, 10, 'en_US', 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 17, 11, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 17, 12, 'en_US', '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 18, 10, 'en_US', 'Celsius Small', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 18, 11, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 18, 12, 'en_US', '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 19, 10, 'en_US', 'Date & Banana', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 19, 11, 'en_US', 'Sylius summer 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 19, 12, 'en_US', '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 20, 10, 'en_US', 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 20, 11, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 20, 12, 'en_US', '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 21, 10, 'en_US', 'You are breathtaking', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 21, 11, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 21, 12, 'en_US', '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 22, 10, 'en_US', 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 22, 11, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 22, 12, 'en_US', '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 23, 10, 'en_US', 'Modern Wear', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 23, 11, 'en_US', 'Sylius Winter 2019', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 23, 12, 'en_US', '100% jeans', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_channels`
--

DROP TABLE IF EXISTS `sylius_product_channels`;
CREATE TABLE IF NOT EXISTS `sylius_product_channels` (
  `product_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`channel_id`),
  KEY `IDX_F9EF269B4584665A` (`product_id`),
  KEY `IDX_F9EF269B72F5A1AA` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_channels`
--

INSERT INTO `sylius_product_channels` (`product_id`, `channel_id`) VALUES
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_image`
--

DROP TABLE IF EXISTS `sylius_product_image`;
CREATE TABLE IF NOT EXISTS `sylius_product_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_88C64B2D7E3C61F9` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_image`
--

INSERT INTO `sylius_product_image` (`id`, `owner_id`, `type`, `path`) VALUES
(3, 3, 'main', '18/2a/2cdcd3036bc3d9d7dff8bfeb876d.jpeg'),
(4, 4, 'main', '9d/bb/484683cd8ab2d87e9641621b8829.jpeg'),
(5, 5, 'main', '32/74/ed675d3d312d0b719484a1de07f2.jpeg'),
(6, 6, 'main', 'fa/c5/76d82ea4e0e1cd23e2856a03b573.png'),
(7, 7, 'main', '63/a7/e85eb210547601562bbd5b1aff31.jpeg'),
(8, 8, 'main', 'fb/15/e903fcbfcea296d170e5d6ee0a04.jpeg'),
(9, 9, 'main', '2a/74/de4b5642bca945cb4c7b9c0042e5.jpeg'),
(10, 10, 'main', '00/e5/39053f727d22a7c19a60a8b7fe45.jpeg'),
(11, 11, 'main', '9c/29/1662f90eea5b344b2230d4ea2c3b.jpeg'),
(12, 12, 'main', 'fa/de/6c4d6829449911f7db55019cc7bb.jpeg'),
(13, 13, 'main', '11/51/73bf075271687525a1025506b837.jpeg'),
(14, 14, 'main', 'd9/d5/195bd3bceaae33cc641d5e9c8a7e.jpeg'),
(15, 15, 'main', '9a/6e/d42fc990c79f1c419d0f00905a8e.jpeg'),
(16, 16, 'main', 'fb/7f/a00e4e28e28dce966d4d04429c68.png'),
(17, 17, 'main', '84/ca/ef694ccac08a8b11e1d3e3a4127d.jpeg'),
(18, 18, 'main', '04/8c/9c143b044027530854f72fe02dba.jpeg'),
(19, 19, 'main', 'c1/93/6829d29bf6a6c14249a08a8f4f57.jpeg'),
(20, 20, 'main', '5e/f0/b4ac4840a8b2bb85fd73074fdd47.jpeg'),
(21, 21, 'main', 'f4/7d/7cbecde56490a6130d6095a36d4a.jpeg'),
(22, 22, 'main', 'a0/ef/37ce6d240ea1b2cca582a99ac673.jpeg'),
(23, 23, 'main', 'c5/0e/9c870954578e0e3f79c7518481e3.jpeg'),
(24, 24, NULL, 'c3/78/a19c0f3b8c5fa36275f057a4c4fa.jpeg'),
(25, 25, NULL, 'c7/21/8948469f70168d2e56a71b175729.jpeg'),
(26, 26, NULL, 'b5/2c/10b29047db1ff38dabe2b77b35cc.jpeg'),
(27, 27, NULL, 'f5/69/63d67a18efba32c773ae9894b31b.jpeg'),
(28, 28, NULL, '61/c2/555b5208efd1b48d39302ec68af7.jpeg'),
(29, 29, NULL, 'd3/c6/e95faf1f04f8e2cdd83419055edb.jpeg'),
(30, 30, NULL, 'ba/ff/64a4f93539b42277c1fac6449e8b.jpeg'),
(31, 31, NULL, '8a/e7/960be1fab671777e1700288a5dfd.jpeg'),
(32, 32, NULL, '23/2b/5a765f8f832edc3b506d3d96fd4f.jpeg'),
(33, 33, NULL, '5f/7f/432d95acff29241b75c0b5e61306.jpeg'),
(34, 34, NULL, 'bd/9d/21f32a973dd5673f5903c76ffef7.jpeg'),
(35, 35, NULL, '57/8f/b6350e44673d8a0a289463c5b613.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_image_product_variants`
--

DROP TABLE IF EXISTS `sylius_product_image_product_variants`;
CREATE TABLE IF NOT EXISTS `sylius_product_image_product_variants` (
  `image_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  PRIMARY KEY (`image_id`,`variant_id`),
  KEY `IDX_8FFDAE8D3DA5256D` (`image_id`),
  KEY `IDX_8FFDAE8D3B69A9AF` (`variant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_option`
--

DROP TABLE IF EXISTS `sylius_product_option`;
CREATE TABLE IF NOT EXISTS `sylius_product_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E4C0EBEF77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_option`
--

INSERT INTO `sylius_product_option` (`id`, `code`, `position`, `created_at`, `updated_at`) VALUES
(1, 't_shirt_size', 0, '2019-11-13 11:44:16', '2019-11-13 11:44:16'),
(2, 'dress_size', 1, '2019-11-13 11:44:16', '2019-11-13 11:44:16'),
(3, 'dress_height', 2, '2019-11-13 11:44:16', '2019-11-13 11:44:16'),
(4, 'jeans_size', 3, '2019-11-13 11:44:16', '2019-11-13 11:44:16');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_options`
--

DROP TABLE IF EXISTS `sylius_product_options`;
CREATE TABLE IF NOT EXISTS `sylius_product_options` (
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`option_id`),
  KEY `IDX_2B5FF0094584665A` (`product_id`),
  KEY `IDX_2B5FF009A7C41D6F` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_options`
--

INSERT INTO `sylius_product_options` (`product_id`, `option_id`) VALUES
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(13, 2),
(13, 3),
(14, 2),
(14, 3),
(15, 2),
(15, 3),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 4),
(21, 4),
(22, 4),
(23, 4),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_option_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_option_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_CBA491AD2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_option_translation`
--

INSERT INTO `sylius_product_option_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 1, 'T-shirt size', 'en_US'),
(2, 2, 'Dress size', 'en_US'),
(3, 3, 'Dress height', 'en_US'),
(4, 4, 'Jeans size', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_option_value`
--

DROP TABLE IF EXISTS `sylius_product_option_value`;
CREATE TABLE IF NOT EXISTS `sylius_product_option_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F7FF7D4B77153098` (`code`),
  KEY `IDX_F7FF7D4BA7C41D6F` (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_option_value`
--

INSERT INTO `sylius_product_option_value` (`id`, `option_id`, `code`) VALUES
(1, 1, 't_shirt_size_s'),
(2, 1, 't_shirt_size_m'),
(3, 1, 't_shirt_size_l'),
(4, 1, 't_shirt_size_xl'),
(5, 1, 't_shirt_size_xxl'),
(6, 2, 'dress_s'),
(7, 2, 'dress_m'),
(8, 2, 'dress_l'),
(9, 2, 'dress_xl'),
(10, 2, 'dress_xxl'),
(11, 3, 'dress_height_petite'),
(12, 3, 'dress_height_regular'),
(13, 3, 'dress_height_tall'),
(14, 4, 'jeans_size_s'),
(15, 4, 'jeans_size_m'),
(16, 4, 'jeans_size_l'),
(17, 4, 'jeans_size_xl'),
(18, 4, 'jeans_size_xxl');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_option_value_translation`
--

DROP TABLE IF EXISTS `sylius_product_option_value_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_option_value_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_option_value_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8D4382DC2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_option_value_translation`
--

INSERT INTO `sylius_product_option_value_translation` (`id`, `translatable_id`, `value`, `locale`) VALUES
(1, 1, 'S', 'en_US'),
(2, 2, 'M', 'en_US'),
(3, 3, 'L', 'en_US'),
(4, 4, 'XL', 'en_US'),
(5, 5, 'XXL', 'en_US'),
(6, 6, 'S', 'en_US'),
(7, 7, 'M', 'en_US'),
(8, 8, 'L', 'en_US'),
(9, 9, 'XL', 'en_US'),
(10, 10, 'XXL', 'en_US'),
(11, 11, 'Petite', 'en_US'),
(12, 12, 'Regular', 'en_US'),
(13, 13, 'Tall', 'en_US'),
(14, 14, 'S', 'en_US'),
(15, 15, 'M', 'en_US'),
(16, 16, 'L', 'en_US'),
(17, 17, 'XL', 'en_US'),
(18, 18, 'XXL', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_review`
--

DROP TABLE IF EXISTS `sylius_product_review`;
CREATE TABLE IF NOT EXISTS `sylius_product_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C7056A994584665A` (`product_id`),
  KEY `IDX_C7056A99F675F31B` (`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_review`
--

INSERT INTO `sylius_product_review` (`id`, `product_id`, `author_id`, `title`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, 5, 'numquam et deleniti', 3, 'Corporis molestias reiciendis temporibus magni nobis. Illo sed voluptatum ducimus aut iste totam. Culpa fugit quis molestias quam est totam et.', 'new', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(2, 19, 16, 'nihil quae hic', 2, 'Dolor vel dolorum neque aut eius cum repellendus sed. Reprehenderit ratione accusantium porro officiis ut. Occaecati nihil quos est tenetur inventore velit quasi.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(3, 17, 4, 'debitis dolorem maxime', 5, 'Ad quis laborum in ut fugiat. Atque nobis consequatur amet. Voluptate labore illo quos aperiam molestiae.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(4, 18, 7, 'qui quibusdam qui', 5, 'Odio quis sed consequatur veritatis. Sit nesciunt id sed natus. Molestias facilis sit et repellendus et odio.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(5, 3, 2, 'facilis beatae dolor', 4, 'Ut ut veniam voluptate. Pariatur quia aperiam est voluptatibus enim. Nemo aut quod voluptatum consequatur eaque dolores.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(6, 18, 13, 'aut exercitationem molestiae', 5, 'Eaque autem rem sapiente ipsa. Quis eum nihil modi velit numquam voluptatem totam. Accusamus omnis et tempora voluptate ipsa.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(7, 13, 2, 'maxime aut eaque', 3, 'Dolor modi cupiditate nihil beatae sit voluptatem deserunt. Sapiente ut et et aut. Facere a et enim eius quibusdam vel.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(8, 3, 21, 'rerum molestiae non', 5, 'Voluptatem debitis cumque quibusdam est. Quia iusto consequatur non placeat. Voluptatem cumque qui rerum sit expedita cumque.', 'new', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(9, 13, 22, 'provident voluptates odio', 1, 'Optio quis ut optio nulla. Dolorum blanditiis recusandae rem. Rerum maxime est iure.', 'new', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(10, 14, 14, 'officia adipisci doloremque', 4, 'Doloribus quos nihil vel eos vel totam. Sunt iste aliquid est corporis. Nesciunt porro illum et magni.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(11, 5, 4, 'aut voluptatem fugiat', 1, 'Et aut quos nulla aut beatae. Recusandae aliquid voluptas quaerat ullam. Velit sunt odit doloremque qui.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(12, 23, 19, 'dignissimos nisi labore', 2, 'Doloremque id rerum repellat incidunt dolorum perferendis est. Veniam sed voluptatum repudiandae totam soluta. Aut nam illum tempora voluptatibus tenetur est veritatis quo.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(13, 7, 18, 'quasi repellendus fugiat', 3, 'Sint nihil explicabo explicabo optio illum maiores. Corporis dolor distinctio quisquam minus ab. Culpa autem doloribus ipsum sunt nesciunt quam.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(14, 13, 8, 'delectus ut est', 1, 'Modi eligendi assumenda error repudiandae alias vel. Rem et dolorum qui vel facilis libero. Modi vel beatae aut qui.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(15, 11, 18, 'dolorum dolorem blanditiis', 3, 'Ipsum est est harum voluptate. Dicta et aut ipsum ut modi sint. Praesentium rerum dolorum rerum.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(16, 4, 3, 'excepturi suscipit officia', 5, 'Vel nulla sit fuga est. Fuga beatae omnis non. Est neque numquam et quo rerum repellendus nam.', 'new', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(17, 17, 8, 'aliquid amet sit', 4, 'Dolore vitae minus vitae atque numquam optio quibusdam. Blanditiis et non alias id repellendus provident et. Suscipit commodi et enim quidem accusantium necessitatibus quasi.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(18, 11, 4, 'voluptatem ab nulla', 1, 'Cupiditate quidem et voluptatum magni dolor. Possimus magni sint vel nobis nostrum laborum. Aliquam ut vitae laboriosam quia.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(19, 4, 16, 'quo voluptatem voluptatum', 5, 'Sunt aut nobis et eligendi sit distinctio qui. Delectus ad ad eum. Libero impedit impedit quis voluptatem odit dolorem.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(20, 5, 5, 'minus molestiae provident', 4, 'Vero distinctio aut quod quidem provident quia. Nemo qui accusantium laboriosam quisquam hic doloribus. Id soluta modi commodi non omnis.', 'new', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(21, 12, 14, 'soluta nam architecto', 5, 'Reprehenderit unde at similique eaque officiis. Error eum sint dolorem reiciendis ad debitis voluptas. Veniam dicta suscipit ut.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(22, 7, 14, 'facere quaerat enim', 1, 'Consequatur unde veritatis accusantium eveniet aut et. Unde in libero quia unde. Laboriosam veritatis qui aliquid.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(23, 5, 10, 'consequatur voluptates unde', 4, 'Laboriosam quis sapiente voluptatum ut velit earum eligendi. Iure sequi necessitatibus eaque. Nobis nemo soluta repudiandae voluptates.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(24, 15, 22, 'rerum architecto tenetur', 4, 'Repellendus sit et aut maxime suscipit. Est modi dolores sed quod necessitatibus nihil non. Soluta ipsa ipsa modi quo dolorum.', 'new', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(25, 20, 12, 'voluptas harum accusamus', 3, 'Nemo enim cupiditate omnis quaerat consequatur ut. Porro velit qui molestiae omnis voluptatibus voluptas. Ipsa ut ea tenetur voluptatem.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(26, 12, 2, 'officia ut asperiores', 2, 'Molestiae sed atque omnis voluptatum modi. Est tempore et delectus dignissimos omnis qui expedita. Minus illo voluptas soluta.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(27, 20, 17, 'et saepe blanditiis', 5, 'Voluptatem debitis sed voluptas neque. Velit et ut voluptas culpa aliquid inventore sapiente. Autem quia nobis facilis molestias est officiis.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(28, 9, 10, 'et vitae quas', 3, 'Culpa qui asperiores sed corporis eum dolor. Provident ad rem rerum. Quo magnam quis tempora enim hic quaerat cumque.', 'new', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(29, 17, 21, 'inventore nostrum cumque', 2, 'Aut reiciendis doloribus est. Maxime voluptatibus consectetur necessitatibus rerum vitae ex maxime. Sint perferendis qui qui delectus est dignissimos est.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(30, 10, 9, 'ex placeat quia', 4, 'Omnis facere quidem vel. Corporis iusto aut nobis facilis veniam. Aut qui ea aut vel itaque qui.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(31, 14, 22, 'aut iste expedita', 4, 'Facere incidunt distinctio repellendus molestiae. Cupiditate reiciendis et voluptatum consequuntur reprehenderit est non. Eaque repellat laborum doloremque harum esse enim.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(32, 17, 11, 'beatae cum odit', 5, 'Expedita placeat laboriosam similique optio assumenda pariatur. Alias dolores minus et sit quo minus dolorum est. Enim tempora est quidem sunt quos laboriosam deserunt.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(33, 14, 20, 'vero accusamus dolorem', 2, 'Et nihil aperiam numquam optio dolorem iusto deleniti. Recusandae id libero ex doloribus in sed blanditiis. Assumenda omnis aut explicabo.', 'new', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(34, 5, 14, 'reprehenderit nihil odit', 4, 'Rerum possimus velit modi velit. Suscipit alias beatae aliquam qui et deleniti sed. Quos ad fuga quis sapiente harum.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(35, 9, 4, 'minima et ipsam', 3, 'Praesentium eligendi excepturi et sint sunt minus et. Nihil voluptatem quidem nobis magni non repudiandae. Labore in quia quibusdam ut minima ullam suscipit.', 'rejected', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(36, 7, 11, 'officia alias qui', 5, 'Aut minima possimus ut voluptatem. Qui voluptas adipisci vero a pariatur qui aut. Ut ducimus dolor sed cupiditate ipsam ipsam.', 'new', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(37, 11, 11, 'quis modi optio', 5, 'Ea sit fuga eos aut rerum molestiae. Rerum voluptas inventore eum fugit. Voluptatem eum distinctio animi ut.', 'new', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(38, 17, 17, 'voluptatem quasi deleniti', 1, 'Velit nihil minima ipsa molestiae dolorum dignissimos voluptas. A reprehenderit velit numquam in voluptatibus ut nulla. Doloremque animi ut omnis dolor libero error et molestiae.', 'new', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(39, 15, 19, 'et repellat provident', 5, 'Et maiores sunt harum aut. Soluta at autem nihil ea culpa deleniti. Eum distinctio nemo vel.', 'accepted', '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(40, 17, 13, 'omnis officia voluptatem', 4, 'Ea maxime debitis non provident natus explicabo. Sunt non ut voluptates. Beatae explicabo alias possimus laudantium rerum in pariatur.', 'new', '2019-11-13 11:44:17', '2019-11-13 11:44:17');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_taxon`
--

DROP TABLE IF EXISTS `sylius_product_taxon`;
CREATE TABLE IF NOT EXISTS `sylius_product_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `taxon_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_taxon_idx` (`product_id`,`taxon_id`),
  KEY `IDX_169C6CD94584665A` (`product_id`),
  KEY `IDX_169C6CD9DE13F470` (`taxon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_taxon`
--

INSERT INTO `sylius_product_taxon` (`id`, `product_id`, `taxon_id`, `position`) VALUES
(1, 3, 2, 0),
(2, 3, 4, 0),
(3, 4, 2, 1),
(4, 4, 4, 1),
(5, 5, 2, 2),
(6, 5, 4, 2),
(7, 6, 2, 3),
(8, 6, 3, 0),
(9, 7, 2, 4),
(10, 7, 3, 1),
(11, 8, 2, 5),
(12, 8, 3, 2),
(13, 9, 5, 0),
(14, 9, 7, 0),
(15, 10, 5, 1),
(16, 10, 6, 0),
(17, 11, 5, 2),
(18, 11, 7, 1),
(19, 12, 5, 3),
(20, 12, 6, 1),
(21, 13, 8, 0),
(22, 14, 8, 1),
(23, 15, 8, 2),
(24, 16, 9, 0),
(25, 16, 10, 0),
(26, 17, 9, 1),
(27, 17, 10, 1),
(28, 18, 9, 2),
(29, 18, 10, 2),
(30, 19, 9, 3),
(31, 19, 10, 3),
(32, 20, 9, 4),
(33, 20, 11, 0),
(34, 21, 9, 5),
(35, 21, 11, 1),
(36, 22, 9, 6),
(37, 22, 11, 2),
(38, 23, 9, 7),
(39, 23, 11, 3),
(40, 24, 5, 4),
(41, 24, 1, 0),
(42, 25, 2, 6),
(43, 25, 3, 3),
(44, 26, 3, 4),
(45, 27, 1, 1),
(46, 27, 2, 7),
(47, 27, 3, 5),
(48, 28, 1, 2),
(49, 28, 2, 8),
(50, 28, 3, 6),
(51, 29, 1, 3),
(52, 29, 2, 9),
(53, 29, 3, 7),
(54, 30, 1, 4),
(55, 30, 2, 10),
(56, 30, 3, 8),
(57, 31, 1, 5),
(58, 31, 2, 11),
(59, 31, 3, 9),
(60, 32, 1, 6),
(61, 32, 2, 12),
(62, 32, 3, 10),
(63, 33, 1, 7),
(64, 33, 2, 13),
(65, 33, 3, 11),
(66, 34, 1, 8),
(67, 34, 2, 14),
(68, 34, 3, 12),
(69, 35, 1, 9),
(70, 35, 2, 15),
(71, 35, 3, 13);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_translation`
--

DROP TABLE IF EXISTS `sylius_product_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_105A9084180C698989D9B62` (`locale`,`slug`),
  UNIQUE KEY `sylius_product_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_105A9082C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_translation`
--

INSERT INTO `sylius_product_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `meta_keywords`, `meta_description`, `short_description`, `locale`) VALUES
(3, 3, 'Basic regular woman', 'basic-regular-woman', 'Sapiente et modi magni non ullam magnam et. Nihil laboriosam expedita consectetur vero totam minus. Perspiciatis totam similique et alias dolores. Nulla quia mollitia ut doloribus dicta et cumque.\n\nNatus maxime et repellendus eligendi sed facilis odit. Officia asperiores minus necessitatibus maiores. Temporibus facilis quia minus rem cumque.\n\nNon atque sed pariatur. Qui quod ea voluptatem repellendus fuga rerum. Eveniet a sint et quas. Ea libero necessitatibus provident nisi odit enim.', NULL, NULL, 'Ab error sed atque porro nam in et. Pariatur perspiciatis adipisci nostrum voluptas asperiores sit sed qui. Perferendis esse assumenda ab alias quis sint eligendi. Natus quia deserunt facilis voluptas ratione culpa aspernatur quisquam.', 'en_US'),
(4, 4, 'Slim fit woman', 'slim-fit-woman', 'Repellendus quasi ea molestiae culpa at quo. Molestias quia at illum dolor quis aut. Voluptatum sed in culpa. Facilis enim qui et est dolore.\n\nTotam et aliquid aut omnis rem. Sed non consequatur alias maxime tempora facilis quia. Qui sequi quis vero ipsam dolorem commodi eaque placeat.\n\nVel odit repudiandae error assumenda architecto accusantium in expedita. Id quam sunt ab dolorem non quo. Explicabo id perspiciatis alias hic in. Ut tenetur tenetur aliquam exercitationem aliquid.', NULL, NULL, 'Iste dolores recusandae deleniti id. Et in molestias rem officiis. Et sapiente odio quis praesentium quia et voluptatum.', 'en_US'),
(5, 5, 'Regular Fit V-neck woman', 'regular-fit-v-neck-woman', 'Vel rerum fuga quo quasi omnis. Quos eveniet odit similique ducimus doloremque cupiditate. Laudantium unde ipsa aut et enim qui. Ea eveniet quia fugit consequuntur voluptatem accusantium minima.\n\nQui tempore id atque qui et. Optio sed labore voluptate fugiat dolor velit. Aut cupiditate vero excepturi saepe inventore suscipit. Modi quae porro vitae molestiae quidem itaque.\n\nTotam soluta ut ipsum optio asperiores optio. Vero et quia porro asperiores commodi hic. Velit quod tempora voluptatem ipsam recusandae et quo.', NULL, NULL, 'Atque sit odio ut assumenda consequatur cumque. Excepturi modi itaque qui ipsam maxime ex sunt. Voluptatum fuga tenetur quibusdam non et sed in. Vero id qui et illo sit.', 'en_US'),
(6, 6, 'Tee-shirt Blanc', 'slim-fit-men', 'Tee-shirt Homme blanc', NULL, NULL, 'Tee-shirt Homme blanc', 'en_US'),
(7, 7, 'Tee-shirt Noir', 'regular-fit-men', 'Tee-shirt Noir', NULL, NULL, 'Tee-shirt Noir', 'en_US'),
(8, 8, 'Tee-shirt jaune', 'slim-fit-v-neck-men', '100% coton jersey (Oxford grey : 90% coton / 10% viscose).\r\nCol en bord-côte 1x1 avec élasthanne. Coupe ajustée mode.\r\nBande de propreté ton sur ton à l\'encolure. Pas d\'étiquette\r\nde marque au col, uniquement une puce de taille pour faciliter\r\n`la personnalisation.', NULL, NULL, 'Tee-shirt jaune', 'en_US'),
(9, 9, 'Basic winter hot cap', 'basic-winter-hot-cap', 'Reiciendis officiis iusto sit nemo reiciendis nostrum et. Quae facere qui hic quod. Quibusdam aliquid nostrum dicta accusantium.\r\n\r\nBeatae iste sed non soluta. Et eaque voluptas molestias iusto esse. Cumque sunt et incidunt voluptas. Ut incidunt amet ipsam rerum id modi.\r\n\r\nMaiores error quos ullam qui velit aperiam enim. Aut commodi ut aspernatur aut. Autem repudiandae numquam illo numquam facere inventore.', NULL, NULL, 'Laborum laborum cum et velit sit perspiciatis. Quisquam ex autem rerum praesentium. Eos praesentium repudiandae esse explicabo facilis non.', 'en_US'),
(10, 10, 'Beautiful cap for woman', 'beautiful-cap-for-woman', 'Blanditiis voluptatem ullam ut aut et laudantium ducimus ab. Modi eaque veniam recusandae quisquam. Non cumque aut praesentium ea veritatis repudiandae ea neque. Velit fugiat optio quia sit iure.\r\n\r\nRatione tempora aut consequuntur repudiandae inventore. Eum aut doloribus accusantium. Quaerat totam vel non tenetur modi laboriosam dolorem. Quia enim ut in ut.\r\n\r\nId quia quos quidem aut aspernatur. Quia et blanditiis voluptatibus accusamus. Quisquam voluptatem excepturi sed in magni sint suscipit beatae.', NULL, NULL, 'Tempore est odio est tempora consequatur qui. Nihil delectus quisquam sit. Ut modi et quibusdam nihil.', 'en_US'),
(11, 11, 'Regular cap with big pompon', 'regular-cap-with-big-pompon', 'Et sint ullam qui dolor magni. Modi veritatis ut saepe consectetur ullam quis voluptatem. Aut expedita et debitis. Tenetur et sapiente tenetur. Ut autem saepe impedit eos.\r\n\r\nArchitecto pariatur omnis voluptas. Voluptatem excepturi repellat suscipit ab repellat. Reiciendis sunt sunt dignissimos quis recusandae ullam expedita.\r\n\r\nSed est facilis quae. Voluptas dicta est at quo reiciendis. Quia nostrum nostrum fugit porro ullam. Necessitatibus voluptates omnis sunt delectus dolorem sunt corrupti.', NULL, NULL, 'Vel beatae quidem facilis id. Architecto harum voluptatem quam sit molestias corporis odio exercitationem. Doloremque aut omnis molestias qui. Voluptatem dolorem veniam occaecati quam.', 'en_US'),
(12, 12, 'Simple cap', 'simple-cap', 'Est atque et aut officiis dolore voluptas beatae. Unde et esse non est ipsam aut. Quis qui et est eius cumque. Quas voluptas rerum repellat culpa qui.\r\n\r\nAccusamus ipsa similique enim illum aut. Vel debitis qui consequatur laboriosam sit. Quidem in ipsum voluptatem consequatur vero sit qui.\r\n\r\nEst nisi accusamus optio neque aut ex provident. Velit distinctio quasi tenetur dolores unde. Aut cupiditate ea labore.', NULL, NULL, 'Cupiditate sit molestiae quos excepturi eaque magnam. Sit sed accusamus rerum iusto aut et. Omnis rerum maxime et incidunt eveniet. Non dolores molestiae et repudiandae. Ea repellat sequi quaerat voluptas aut ipsam sed.', 'en_US'),
(13, 13, 'Circle-skirt Dress', 'circle-skirt-dress', 'Nisi libero id natus sunt in fuga quasi aut. Odio totam architecto et placeat. Mollitia unde tempore incidunt ut quaerat cupiditate illum. Nihil qui repellat vel amet odit.\r\n\r\nRerum voluptatem voluptatum nihil quas et odio cumque. Qui aut quia ducimus non. Cum voluptates aut repellendus officiis illo. Ut rerum quas dolor culpa corporis id.\r\n\r\nMinima enim asperiores beatae sed dolor. Et numquam ut eligendi consectetur velit perferendis exercitationem rem. Fuga exercitationem nihil debitis et ea.', NULL, NULL, 'Et sapiente optio repudiandae minus maxime. Molestiae ea sed quis dolor voluptatem. Commodi qui quis debitis modi ad. Enim quasi laudantium recusandae est. Mollitia nemo delectus ex inventore.', 'en_US'),
(14, 14, 'Sleeveless Dress', 'sleeveless-dress', 'Sit aliquid inventore aut assumenda ea et corrupti. Libero nesciunt molestias voluptas tempore. Suscipit dignissimos exercitationem eius dolores.\r\n\r\nMolestiae voluptatem commodi corporis alias aut. Reiciendis rerum eum dolore velit eius enim fuga cupiditate. Id voluptatem est vitae quas sunt fuga. Tempore ea est qui ut vel rerum.\r\n\r\nEa sit illum qui voluptas vel neque ipsa cupiditate. Qui qui voluptatem modi quia amet deleniti non. Hic nihil et exercitationem et maiores nostrum. Esse mollitia maiores quis corporis.', NULL, NULL, 'A doloribus deleniti saepe qui aspernatur. Et adipisci est non eum. Officiis delectus quisquam magni alias aut doloribus.', 'en_US'),
(15, 15, 'Summer tunic', 'summer-tunic', 'Laudantium dolorem qui sapiente facere repellat. Aut ratione voluptatum inventore in sint voluptas molestiae.\r\n\r\nVeritatis doloribus error in ut est impedit animi. Sunt quasi eveniet blanditiis quo fugiat quia. Eum provident dicta temporibus qui ut qui voluptates. Non voluptas ut quo adipisci quis.\r\n\r\nQuo sed voluptatibus atque et laudantium saepe. Qui animi est dicta ex iusto animi quo quidem. Qui voluptatem rerum voluptatem praesentium autem qui.', NULL, NULL, 'Tenetur quia amet blanditiis veritatis nemo quaerat. Facere sit modi eligendi mollitia dolores.', 'en_US'),
(16, 16, 'Tee-shirt Blanc', 'basic-regular', 'Enim praesentium nisi ab et ex. Nostrum veniam vitae deserunt sit nihil dolorem molestiae. Nisi amet et voluptatum eum repellendus eum inventore qui. Assumenda temporibus maxime quia vel.\r\n\r\nVoluptatum voluptate soluta dolore ea maiores. Rem et qui voluptas autem ut quia sed. Inventore quia eum qui consequatur.\r\n\r\nEaque aut mollitia est voluptatem consequatur beatae est. Nihil quo deleniti reprehenderit harum et blanditiis excepturi dolorem. Unde voluptas repellendus libero. Debitis nam voluptatem voluptas qui.', NULL, NULL, 'Consequatur porro sequi temporibus fuga expedita accusantium consectetur. Aut est nulla aut maiores quia deleniti. Quis amet et suscipit reprehenderit eaque.', 'en_US'),
(17, 17, 'Slim fit classic', 'slim-fit-classic', 'Et ullam architecto deleniti nobis enim labore odit in. Dicta autem quibusdam corrupti est adipisci. Non omnis deleniti consequuntur unde numquam. Non et ducimus sit et sit.\r\n\r\nFuga non voluptas occaecati aut sint. Veritatis expedita quia molestiae accusantium. Expedita eum occaecati perferendis nihil.\r\n\r\nAccusamus unde aperiam autem. Architecto qui quo ut quaerat officiis odio.', NULL, NULL, 'Suscipit facere iure ut et error quod corporis rerum. A praesentium corrupti dicta et quo quo. Et fugiat quia officia enim.', 'en_US'),
(18, 18, 'Regular Fit casual', 'regular-fit-casual', 'Quo aliquam illum nostrum aut quia et. Debitis temporibus ad expedita porro nihil autem similique. Blanditiis ut ipsum omnis et tempora. Aut et enim et minima.\r\n\r\nRepudiandae voluptas explicabo in ullam nemo ipsam vitae. Autem architecto alias natus nisi delectus quaerat. Ea consequatur adipisci eum.\r\n\r\nQuia praesentium et dolorem magnam. Aut id porro ab et. Possimus magni natus ut facere facilis aut.', NULL, NULL, 'In et non hic voluptatem tenetur repellendus in. Sint asperiores consequatur sint deleniti delectus. Iusto animi vero nihil ea. Expedita ea dolor enim aut voluptatibus quam repudiandae.', 'en_US'),
(19, 19, 'Slim fit elegant', 'slim-fit-elegant', 'Iste eveniet perferendis commodi at modi. Totam earum laborum est est. Et numquam in aspernatur perspiciatis ullam. Voluptatem necessitatibus illum qui dolorem molestiae.\r\n\r\nUt aut quas autem sint maiores. Perspiciatis voluptatem voluptas sed et non deleniti nam quia. Rerum totam dicta esse a architecto.\r\n\r\nTempora est alias doloribus iusto quos nulla accusamus. Perferendis quod libero sint ut tenetur fuga.', NULL, NULL, 'Qui quia eius at rerum esse doloremque ut. Unde et magnam aspernatur quibusdam iusto nostrum.', 'en_US'),
(20, 20, 'Ultra slim', 'ultra-slim', 'Sapiente exercitationem ad accusantium error. Ut et dicta reprehenderit error magni. Laboriosam suscipit impedit saepe aut. Quia magni quaerat cumque dolore.\r\n\r\nEos nihil eaque eos odit debitis consequatur temporibus. Quos eum ducimus neque magnam. Sint ut qui voluptas tempore non amet. Et tempore et numquam porro.\r\n\r\nPerspiciatis optio enim commodi est nobis sed occaecati. Aspernatur aperiam quis vitae id. Repellendus sequi odio tempora ullam praesentium.', NULL, NULL, 'Culpa quia voluptate officiis corrupti ut a excepturi. Dolor et placeat est doloribus. Ut voluptas voluptas quis id quis neque. Culpa corrupti est reprehenderit minima reiciendis repudiandae nihil.', 'en_US'),
(21, 21, 'Slim fit', 'slim-fit', 'Dolore dolore quia at voluptas voluptas. Occaecati consequatur laudantium at possimus dolores possimus. Ratione ut animi sapiente consequatur mollitia. Assumenda quisquam totam optio aut quibusdam assumenda nostrum.\r\n\r\nAdipisci sint quam non et ut corrupti quas. Tempore sit autem nesciunt culpa quo inventore. Minima minus ipsam dolore laboriosam quia quis velit.\r\n\r\nAliquid ad alias quo et. Non amet dolore saepe ratione distinctio quae architecto. Est accusantium error et ducimus facilis cumque.', NULL, NULL, 'Est architecto eius aut magni. Dolor enim ad eum quibusdam aut ut quisquam. Quia qui necessitatibus magnam iste voluptatum consectetur. Dicta corrupti voluptate cum error incidunt aliquid fugit. Exercitationem qui autem recusandae molestiae rerum.', 'en_US'),
(22, 22, 'New age regular', 'new-age-regular', 'Nostrum ducimus nemo modi ducimus unde quam non. Ex maiores laboriosam quas iure id. Aliquam cupiditate sit cumque dicta a similique delectus.\r\n\r\nPorro voluptas occaecati est illum eaque accusamus dolorem. Molestiae ut aut aut nihil. Quibusdam qui recusandae quis sint magnam. Non nostrum consequatur voluptate tempore voluptas doloremque et.\r\n\r\nNam ut veritatis blanditiis animi sint non quos. Cupiditate voluptatem quo molestias dolores quod. Facere dolorum nobis est.', NULL, NULL, 'Rem eos reiciendis dolorem dolorem. Sapiente laborum nulla culpa asperiores exercitationem architecto. Optio pariatur modi magnam voluptatibus nulla minus ipsa.', 'en_US'),
(23, 23, 'Whole holes classic', 'whole-holes-classic', 'Eaque maxime ea assumenda est autem repudiandae necessitatibus harum. Ut ut nisi veritatis eos unde in. Libero a rerum illum quasi.\r\n\r\nEius totam debitis itaque. Quod cum voluptatem magnam sint pariatur. Et voluptatibus saepe eos ut distinctio occaecati. Beatae nihil delectus minus quaerat occaecati ipsum et aspernatur.\r\n\r\nOdit velit blanditiis distinctio nemo illum dolore. Omnis dicta dolorum et qui itaque quod qui nemo. Neque sint est consequatur quaerat. Beatae quis dolores illo exercitationem.', NULL, NULL, 'Non laborum reprehenderit iste consequatur possimus enim voluptatem. Ipsam error tenetur ratione voluptatem saepe omnis nobis. Tenetur magnam et officia quo eligendi. Eum iusto dolorum quia. Voluptatibus veniam deleniti quo voluptatibus.', 'en_US'),
(24, 24, 'Polo homme Noir', 'polo-homme-noir', NULL, NULL, NULL, NULL, 'en_US'),
(25, 25, 'Tee-shirt vaillant 05', 'tee-shirt-vaillant-05', 'Tee-shirt vaillant 05', NULL, NULL, 'Tee-shirt vaillant 05', 'en_US'),
(26, 26, 'Tee-shirt vaillant 05 Bleu', 'tee-shirt-vaillant-05-bleu', NULL, NULL, NULL, NULL, 'en_US'),
(27, 27, 'Tee-shirt Blanc Renault', 'tee-shirt-blanc-renault', '100% coton jersey (Oxford grey : 90% coton / 10% viscose).\r\n Col en bord-côte 1x1 avec élasthanne. \r\nCoupe ajustée mode. Bande de propreté ton sur ton à l\'encolure. \r\nPas d\'étiquette de marque au col, uniquement une puce de taille pour faciliter `la personnalisation.', NULL, NULL, NULL, 'en_US'),
(28, 28, 'Renault tee shirt blanc logo jaune', 'renault-tee-shirt-blanc-logo-jaune', '100% coton jersey (Oxford grey : 90% coton / 10% viscose).\r\n Col en bord-côte 1x1 avec élasthanne. \r\nCoupe ajustée mode. Bande de propreté ton sur ton à l\'encolure. \r\nPas d\'étiquette de marque au col, uniquement une puce de taille pour faciliter `la personnalisation.', NULL, NULL, NULL, 'en_US'),
(29, 29, 'Renault tee-shirt gris logo blanc', 'renault-tee-shirt-gris-logo-blanc', '100% coton jersey (Oxford grey : 90% coton / 10% viscose).\r\n Col en bord-côte 1x1 avec élasthanne. \r\nCoupe ajustée mode. Bande de propreté ton sur ton à l\'encolure. \r\nPas d\'étiquette de marque au col, uniquement une puce de taille pour faciliter `la personnalisation.', NULL, NULL, NULL, 'en_US'),
(30, 30, 'Renault tee-shirt gris logo jaune', 'renault-tee-shirt-gris-logo-jaune', '100% coton jersey (Oxford grey : 90% coton / 10% viscose).\r\n Col en bord-côte 1x1 avec élasthanne. \r\nCoupe ajustée mode. Bande de propreté ton sur ton à l\'encolure. \r\nPas d\'étiquette de marque au col, uniquement une puce de taille pour faciliter `la personnalisation.', NULL, NULL, NULL, 'en_US'),
(31, 31, 'renault tee-shirt imprimé noir', 'renault-tee-shirt-imprime-noir', '100% coton jersey (Oxford grey : 90% coton / 10% viscose).\r\n Col en bord-côte 1x1 avec élasthanne. \r\nCoupe ajustée mode. Bande de propreté ton sur ton à l\'encolure. \r\nPas d\'étiquette de marque au col, uniquement une puce de taille pour faciliter `la personnalisation.', NULL, NULL, NULL, 'en_US'),
(32, 32, 'renault tee-shirt imprime orange', 'renault-tee-shirt-imprime-orange', '100% coton jersey (Oxford grey : 90% coton / 10% viscose).\r\n Col en bord-côte 1x1 avec élasthanne. \r\nCoupe ajustée mode. Bande de propreté ton sur ton à l\'encolure. \r\nPas d\'étiquette de marque au col, uniquement une puce de taille pour faciliter `la personnalisation.', NULL, NULL, NULL, 'en_US'),
(33, 33, 'vaillant jaune', 'vaillant-jaune', NULL, NULL, NULL, NULL, 'en_US'),
(34, 34, 'vaillant_bleu', 'vaillant-bleu', '100% coton jersey (Oxford grey : 90% coton / 10% viscose).\r\n Col en bord-côte 1x1 avec élasthanne. \r\nCoupe ajustée mode. Bande de propreté ton sur ton à l\'encolure. \r\nPas d\'étiquette de marque au col, uniquement une puce de taille pour faciliter `la personnalisation.', NULL, NULL, NULL, 'en_US'),
(35, 35, 'vaillant gris', 'vaillant-gris', '100% coton jersey (Oxford grey : 90% coton / 10% viscose).\r\nCol en bord-côte 1x1 avec élasthanne. \r\nCoupe ajustée mode. Bande de propreté ton sur ton à l\'encolure. \r\nPas d\'étiquette de marque au col, uniquement une puce de taille pour faciliter `la personnalisation.', NULL, NULL, NULL, 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_variant`
--

DROP TABLE IF EXISTS `sylius_product_variant`;
CREATE TABLE IF NOT EXISTS `sylius_product_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `shipping_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `position` int(11) NOT NULL,
  `version` int(11) NOT NULL DEFAULT '1',
  `on_hold` int(11) NOT NULL,
  `on_hand` int(11) NOT NULL,
  `tracked` tinyint(1) NOT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `depth` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `shipping_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_A29B52377153098` (`code`),
  KEY `IDX_A29B5234584665A` (`product_id`),
  KEY `IDX_A29B5239DF894ED` (`tax_category_id`),
  KEY `IDX_A29B5239E2D1A41` (`shipping_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_variant`
--

INSERT INTO `sylius_product_variant` (`id`, `product_id`, `tax_category_id`, `shipping_category_id`, `code`, `created_at`, `updated_at`, `position`, `version`, `on_hold`, `on_hand`, `tracked`, `width`, `height`, `depth`, `weight`, `shipping_required`) VALUES
(3, 3, 1, NULL, 'Basic_regular_woman-variant-0', '2019-11-13 11:44:16', '2019-11-18 09:40:45', 0, 2, 0, 50, 1, NULL, NULL, NULL, NULL, 1),
(4, 3, 1, NULL, 'Basic_regular_woman-variant-1', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(5, 3, 1, NULL, 'Basic_regular_woman-variant-2', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(6, 3, 1, NULL, 'Basic_regular_woman-variant-3', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 3, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(7, 3, 1, NULL, 'Basic_regular_woman-variant-4', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 4, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(8, 4, 1, NULL, 'Slim_fit_woman-variant-0', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(9, 4, 1, NULL, 'Slim_fit_woman-variant-1', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(10, 4, 1, NULL, 'Slim_fit_woman-variant-2', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(11, 4, 1, NULL, 'Slim_fit_woman-variant-3', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 3, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(12, 4, 1, NULL, 'Slim_fit_woman-variant-4', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 4, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(13, 5, 1, NULL, 'Regular_Fit_V_neck_woman-variant-0', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(14, 5, 1, NULL, 'Regular_Fit_V_neck_woman-variant-1', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 1, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(15, 5, 1, NULL, 'Regular_Fit_V_neck_woman-variant-2', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(16, 5, 1, NULL, 'Regular_Fit_V_neck_woman-variant-3', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 3, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(17, 5, 1, NULL, 'Regular_Fit_V_neck_woman-variant-4', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 4, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(18, 6, 1, NULL, 'Slim_fit_men-variant-0', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(19, 6, 1, NULL, 'Slim_fit_men-variant-1', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(20, 6, 1, NULL, 'Slim_fit_men-variant-2', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(21, 6, 1, NULL, 'Slim_fit_men-variant-3', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 3, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(22, 6, 1, NULL, 'Slim_fit_men-variant-4', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 4, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(23, 7, 1, NULL, 'Regular_fit_men-variant-0', '2019-11-13 11:44:16', '2019-11-19 10:08:02', 0, 2, 0, 0, 1, NULL, NULL, NULL, NULL, 1),
(24, 7, 1, NULL, 'Regular_fit_men-variant-1', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 1, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(25, 7, 1, NULL, 'Regular_fit_men-variant-2', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 2, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(26, 7, 1, NULL, 'Regular_fit_men-variant-3', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 3, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(27, 7, 1, NULL, 'Regular_fit_men-variant-4', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 4, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(28, 8, 1, NULL, 'Slim_fit_V_neck_men-variant-0', '2019-11-13 11:44:16', '2019-11-19 21:18:07', 0, 4, 0, 59, 1, NULL, NULL, NULL, NULL, 1),
(29, 8, 1, NULL, 'Slim_fit_V_neck_men-variant-1', '2019-11-13 11:44:16', '2019-11-18 14:05:44', 1, 2, 0, 9, 1, NULL, NULL, NULL, NULL, 1),
(30, 8, 1, NULL, 'Slim_fit_V_neck_men-variant-2', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 2, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(31, 8, 1, NULL, 'Slim_fit_V_neck_men-variant-3', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 3, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(32, 8, 1, NULL, 'Slim_fit_V_neck_men-variant-4', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 4, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(33, 9, 2, NULL, 'Basic_winter_hot_cap-variant-0', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(34, 10, 2, NULL, 'Beautiful_cap_for_woman-variant-0', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(35, 11, 2, NULL, 'Regular_cap_with_big_pompon-variant-0', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 0, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(36, 12, 2, NULL, 'Simple_cap-variant-0', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 0, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(37, 13, 1, NULL, 'Circle_skirt_Dress-variant-0', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 0, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(38, 13, 1, NULL, 'Circle_skirt_Dress-variant-1', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 1, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(39, 13, 1, NULL, 'Circle_skirt_Dress-variant-2', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 2, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(40, 13, 1, NULL, 'Circle_skirt_Dress-variant-3', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 3, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(41, 13, 1, NULL, 'Circle_skirt_Dress-variant-4', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 4, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(42, 13, 1, NULL, 'Circle_skirt_Dress-variant-5', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 5, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(43, 13, 1, NULL, 'Circle_skirt_Dress-variant-6', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 6, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(44, 13, 1, NULL, 'Circle_skirt_Dress-variant-7', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 7, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(45, 13, 1, NULL, 'Circle_skirt_Dress-variant-8', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 8, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(46, 13, 1, NULL, 'Circle_skirt_Dress-variant-9', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 9, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(47, 13, 1, NULL, 'Circle_skirt_Dress-variant-10', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 10, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(48, 13, 1, NULL, 'Circle_skirt_Dress-variant-11', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 11, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(49, 13, 1, NULL, 'Circle_skirt_Dress-variant-12', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 12, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(50, 13, 1, NULL, 'Circle_skirt_Dress-variant-13', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 13, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(51, 13, 1, NULL, 'Circle_skirt_Dress-variant-14', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 14, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(52, 14, 1, NULL, 'Sleeveless_Dress-variant-0', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(53, 14, 1, NULL, 'Sleeveless_Dress-variant-1', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 1, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(54, 14, 1, NULL, 'Sleeveless_Dress-variant-2', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(55, 14, 1, NULL, 'Sleeveless_Dress-variant-3', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 3, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(56, 14, 1, NULL, 'Sleeveless_Dress-variant-4', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 4, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(57, 14, 1, NULL, 'Sleeveless_Dress-variant-5', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 5, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(58, 14, 1, NULL, 'Sleeveless_Dress-variant-6', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 6, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(59, 14, 1, NULL, 'Sleeveless_Dress-variant-7', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 7, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(60, 14, 1, NULL, 'Sleeveless_Dress-variant-8', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 8, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(61, 14, 1, NULL, 'Sleeveless_Dress-variant-9', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 9, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(62, 14, 1, NULL, 'Sleeveless_Dress-variant-10', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 10, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(63, 14, 1, NULL, 'Sleeveless_Dress-variant-11', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 11, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(64, 14, 1, NULL, 'Sleeveless_Dress-variant-12', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 12, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(65, 14, 1, NULL, 'Sleeveless_Dress-variant-13', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 13, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(66, 14, 1, NULL, 'Sleeveless_Dress-variant-14', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 14, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(67, 15, 1, NULL, 'Summer_tunic-variant-0', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 0, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(68, 15, 1, NULL, 'Summer_tunic-variant-1', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 1, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(69, 15, 1, NULL, 'Summer_tunic-variant-2', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 2, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(70, 15, 1, NULL, 'Summer_tunic-variant-3', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 3, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(71, 15, 1, NULL, 'Summer_tunic-variant-4', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 4, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(72, 15, 1, NULL, 'Summer_tunic-variant-5', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 5, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(73, 15, 1, NULL, 'Summer_tunic-variant-6', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 6, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(74, 15, 1, NULL, 'Summer_tunic-variant-7', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 7, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(75, 15, 1, NULL, 'Summer_tunic-variant-8', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 8, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(76, 15, 1, NULL, 'Summer_tunic-variant-9', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 9, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(77, 15, 1, NULL, 'Summer_tunic-variant-10', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 10, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(78, 15, 1, NULL, 'Summer_tunic-variant-11', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 11, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(79, 15, 1, NULL, 'Summer_tunic-variant-12', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 12, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(80, 15, 1, NULL, 'Summer_tunic-variant-13', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 13, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(81, 15, 1, NULL, 'Summer_tunic-variant-14', '2019-11-13 11:44:16', '2019-11-13 11:44:16', 14, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(82, 16, 1, NULL, 'Basic_regular-variant-0', '2019-11-13 11:44:16', '2019-11-13 11:44:17', 0, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(83, 16, 1, NULL, 'Basic_regular-variant-1', '2019-11-13 11:44:16', '2019-11-13 11:44:17', 1, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(84, 16, 1, NULL, 'Basic_regular-variant-2', '2019-11-13 11:44:16', '2019-11-13 11:44:17', 2, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(85, 16, 1, NULL, 'Basic_regular-variant-3', '2019-11-13 11:44:16', '2019-11-13 11:44:17', 3, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(86, 16, 1, NULL, 'Basic_regular-variant-4', '2019-11-13 11:44:16', '2019-11-13 11:44:17', 4, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(87, 17, 1, NULL, 'Slim_fit_classic-variant-0', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(88, 17, 1, NULL, 'Slim_fit_classic-variant-1', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 1, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(89, 17, 1, NULL, 'Slim_fit_classic-variant-2', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(90, 17, 1, NULL, 'Slim_fit_classic-variant-3', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 3, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(91, 17, 1, NULL, 'Slim_fit_classic-variant-4', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 4, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(92, 18, 1, NULL, 'Regular_Fit_casual-variant-0', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(93, 18, 1, NULL, 'Regular_Fit_casual-variant-1', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 1, 1, 0, 6, 0, NULL, NULL, NULL, NULL, 1),
(94, 18, 1, NULL, 'Regular_Fit_casual-variant-2', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(95, 18, 1, NULL, 'Regular_Fit_casual-variant-3', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 3, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(96, 18, 1, NULL, 'Regular_Fit_casual-variant-4', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 4, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(97, 19, 1, NULL, 'Slim_fit_elegant-variant-0', '2019-11-13 11:44:17', '2019-11-18 14:49:04', 0, 2, 0, 5, 1, NULL, NULL, NULL, NULL, 1),
(98, 19, 1, NULL, 'Slim_fit_elegant-variant-1', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(99, 19, 1, NULL, 'Slim_fit_elegant-variant-2', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 2, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(100, 19, 1, NULL, 'Slim_fit_elegant-variant-3', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 3, 1, 0, 9, 0, NULL, NULL, NULL, NULL, 1),
(101, 19, 1, NULL, 'Slim_fit_elegant-variant-4', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 4, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(102, 20, 1, NULL, 'Ultra_slim-variant-0', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 0, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(103, 20, 1, NULL, 'Ultra_slim-variant-1', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 1, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(104, 20, 1, NULL, 'Ultra_slim-variant-2', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 2, 1, 0, 8, 0, NULL, NULL, NULL, NULL, 1),
(105, 20, 1, NULL, 'Ultra_slim-variant-3', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 3, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(106, 20, 1, NULL, 'Ultra_slim-variant-4', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 4, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(107, 21, 1, NULL, 'Slim_fit-variant-0', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 0, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(108, 21, 1, NULL, 'Slim_fit-variant-1', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(109, 21, 1, NULL, 'Slim_fit-variant-2', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(110, 21, 1, NULL, 'Slim_fit-variant-3', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 3, 1, 0, 7, 0, NULL, NULL, NULL, NULL, 1),
(111, 21, 1, NULL, 'Slim_fit-variant-4', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 4, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(112, 22, 1, NULL, 'New_age_regular-variant-0', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 0, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(113, 22, 1, NULL, 'New_age_regular-variant-1', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 1, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(114, 22, 1, NULL, 'New_age_regular-variant-2', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 2, 1, 0, 3, 0, NULL, NULL, NULL, NULL, 1),
(115, 22, 1, NULL, 'New_age_regular-variant-3', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 3, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(116, 22, 1, NULL, 'New_age_regular-variant-4', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 4, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(117, 23, 1, NULL, 'Whole_holes_classic-variant-0', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 0, 1, 0, 5, 0, NULL, NULL, NULL, NULL, 1),
(118, 23, 1, NULL, 'Whole_holes_classic-variant-1', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 1, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(119, 23, 1, NULL, 'Whole_holes_classic-variant-2', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 2, 1, 0, 2, 0, NULL, NULL, NULL, NULL, 1),
(120, 23, 1, NULL, 'Whole_holes_classic-variant-3', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 3, 1, 0, 4, 0, NULL, NULL, NULL, NULL, 1),
(121, 23, 1, NULL, 'Whole_holes_classic-variant-4', '2019-11-13 11:44:17', '2019-11-13 11:44:17', 4, 1, 0, 1, 0, NULL, NULL, NULL, NULL, 1),
(122, 24, 1, NULL, 'polo_homme_noir', '2019-11-19 08:36:09', '2019-11-19 08:36:11', 0, 1, 0, 15, 1, NULL, NULL, NULL, NULL, 1),
(123, 25, 1, NULL, 'vaillant_05_jaune', '2019-11-19 14:29:48', '2019-11-19 14:29:54', 0, 1, 0, 15, 1, NULL, NULL, NULL, NULL, 1),
(124, 25, 1, NULL, 'vaillant_05_M', '2019-11-19 14:37:37', '2019-11-19 14:37:38', 1, 1, 0, 30, 1, NULL, NULL, NULL, NULL, 1),
(125, 27, NULL, NULL, 'Renault-tee-shirt-blanc-S', '2019-11-27 10:48:10', '2019-11-27 10:48:37', 0, 2, 0, 50, 1, NULL, NULL, NULL, NULL, 1),
(126, 27, NULL, NULL, 'Renault-tee-shirt-blanc-M', '2019-11-27 10:48:10', '2019-11-27 10:49:36', 1, 2, 0, 50, 1, NULL, NULL, NULL, NULL, 1),
(127, 27, NULL, NULL, 'Renault-tee-shirt-blanc-L', '2019-11-27 10:48:10', '2019-11-27 10:49:49', 2, 2, 0, 50, 1, NULL, NULL, NULL, NULL, 1),
(128, 27, NULL, NULL, 'Renault-tee-shirt-blanc-XL', '2019-11-27 10:48:10', '2019-11-27 10:50:00', 3, 2, 0, 50, 1, NULL, NULL, NULL, NULL, 1),
(129, 27, NULL, NULL, 'Renault-tee-shirt-blanc-XXL', '2019-11-27 10:48:10', '2019-11-27 10:50:14', 4, 2, 0, 50, 1, NULL, NULL, NULL, NULL, 1),
(130, 28, NULL, NULL, 'Renault-tee-shirt-blanc-logo-jaune-S', '2019-11-27 11:09:34', '2019-11-27 11:09:58', 0, 2, 0, 31, 1, NULL, NULL, NULL, NULL, 1),
(131, 28, NULL, NULL, 'Renault-tee-shirt-blanc-logo-jaune-M', '2019-11-27 11:09:34', '2019-11-27 11:10:20', 1, 2, 0, 49, 1, NULL, NULL, NULL, NULL, 1),
(132, 28, NULL, NULL, 'Renault-tee-shirt-blanc-logo-jaune-L', '2019-11-27 11:09:34', '2019-11-27 11:11:03', 2, 2, 0, 19, 1, NULL, NULL, NULL, NULL, 1),
(133, 28, NULL, NULL, 'Renault-tee-shirt-blanc-logo-jaune-XL', '2019-11-27 11:09:34', '2019-11-27 11:11:28', 3, 2, 0, 43, 1, NULL, NULL, NULL, NULL, 1),
(134, 28, NULL, NULL, 'Renault-tee-shirt-blanc-logo-jaune-XXL', '2019-11-27 11:09:34', '2019-11-27 11:11:54', 4, 2, 0, 23, 1, NULL, NULL, NULL, NULL, 1),
(135, 29, NULL, NULL, 'Renault-tee-shirt-gris-logo-jaune-S', '2019-11-27 11:37:32', '2019-11-27 11:38:18', 0, 2, 0, 50, 1, NULL, NULL, NULL, NULL, 1),
(136, 29, NULL, NULL, 'Renault-tee-shirt-gris-logo-jaune-M', '2019-11-27 11:37:32', '2019-11-27 11:38:25', 1, 2, 0, 60, 1, NULL, NULL, NULL, NULL, 1),
(137, 29, NULL, NULL, 'Renault-tee-shirt-gris-logo-jaune-L', '2019-11-27 11:37:32', '2019-11-27 11:38:35', 2, 2, 0, 35, 1, NULL, NULL, NULL, NULL, 1),
(138, 29, NULL, NULL, 'Renault-tee-shirt-gris-logo-jaune-XL', '2019-11-27 11:37:32', '2019-11-27 11:38:40', 3, 2, 0, 25, 1, NULL, NULL, NULL, NULL, 1),
(139, 29, NULL, NULL, 'Renault-tee-shirt-gris-logo-jaune-XXL', '2019-11-27 11:37:32', '2019-11-27 11:39:07', 4, 2, 0, 26, 1, NULL, NULL, NULL, NULL, 1),
(140, 30, NULL, NULL, 'Renault-tee-shirt-gris-logo-blanc-S', '2019-11-27 11:48:06', '2019-11-27 11:48:49', 0, 2, 0, 33, 1, NULL, NULL, NULL, NULL, 1),
(141, 30, NULL, NULL, 'Renault-tee-shirt-gris-logo-blanc-M', '2019-11-27 11:48:06', '2019-11-27 11:48:54', 1, 2, 0, 26, 1, NULL, NULL, NULL, NULL, 1),
(142, 30, NULL, NULL, 'Renault-tee-shirt-gris-logo-blanc-L', '2019-11-27 11:48:06', '2019-11-27 11:49:02', 2, 2, 0, 26, 1, NULL, NULL, NULL, NULL, 1),
(143, 30, NULL, NULL, 'Renault-tee-shirt-gris-logo-blanc-XL', '2019-11-27 11:48:06', '2019-11-27 11:49:11', 3, 2, 0, 36, 1, NULL, NULL, NULL, NULL, 1),
(144, 30, NULL, NULL, 'Renault-tee-shirt-gris-logo-blanc-XXL', '2019-11-27 11:48:06', '2019-11-27 11:49:26', 4, 2, 0, 51, 1, NULL, NULL, NULL, NULL, 1),
(145, 31, NULL, NULL, 'Renault-tee-shirt-gris-imprime-noir-S', '2019-11-27 12:26:32', '2019-11-27 12:27:11', 0, 2, 0, 26, 1, NULL, NULL, NULL, NULL, 1),
(146, 31, NULL, NULL, 'Renault-tee-shirt-gris-imprime-noir-M', '2019-11-27 12:26:32', '2019-11-27 12:27:28', 1, 2, 0, 16, 1, NULL, NULL, NULL, NULL, 1),
(147, 31, NULL, NULL, 'Renault-tee-shirt-gris-imprime-noir-L', '2019-11-27 12:26:32', '2019-11-27 12:27:37', 2, 2, 0, 20, 1, NULL, NULL, NULL, NULL, 1),
(148, 31, NULL, NULL, 'Renault-tee-shirt-gris-imprime-noir-XL', '2019-11-27 12:26:32', '2019-11-27 12:27:46', 3, 2, 0, 18, 1, NULL, NULL, NULL, NULL, 1),
(149, 31, NULL, NULL, 'Renault-tee-shirt-gris-imprime-noir-XXL', '2019-11-27 12:26:32', '2019-11-27 12:28:01', 4, 2, 0, 17, 1, NULL, NULL, NULL, NULL, 1),
(150, 32, NULL, NULL, 'Renault-tee-shirt-gris-imprime-orange-S', '2019-11-27 13:14:02', '2019-11-27 13:14:29', 0, 2, 0, 24, 1, NULL, NULL, NULL, NULL, 1),
(151, 32, NULL, NULL, 'Renault-tee-shirt-gris-imprime-orange-M', '2019-11-27 13:14:03', '2019-11-27 13:14:50', 1, 2, 0, 12, 1, NULL, NULL, NULL, NULL, 1),
(152, 32, NULL, NULL, 'Renault-tee-shirt-gris-imprime-orange-L', '2019-11-27 13:14:03', '2019-11-27 13:15:13', 2, 2, 0, 19, 1, NULL, NULL, NULL, NULL, 1),
(153, 32, NULL, NULL, 'Renault-tee-shirt-gris-imprime-orange-XL', '2019-11-27 13:14:03', '2019-11-27 13:15:40', 3, 2, 0, 18, 1, NULL, NULL, NULL, NULL, 1),
(154, 32, NULL, NULL, 'Renault-tee-shirt-gris-imprime-orange-XXL', '2019-11-27 13:14:03', '2019-11-27 13:16:02', 4, 2, 0, 36, 1, NULL, NULL, NULL, NULL, 1),
(155, 33, NULL, NULL, 'Renault-tee-shirt-vaillant-jaune-S', '2019-11-27 13:39:04', '2019-11-27 13:39:48', 0, 2, 0, 15, 1, NULL, NULL, NULL, NULL, 1),
(156, 33, NULL, NULL, 'Renault-tee-shirt-vaillant-jaune-M', '2019-11-27 13:39:04', '2019-11-27 13:39:58', 1, 2, 0, 17, 1, NULL, NULL, NULL, NULL, 1),
(157, 33, NULL, NULL, 'Renault-tee-shirt-vaillant-jaune-L', '2019-11-27 13:39:04', '2019-11-27 13:40:06', 2, 2, 0, 30, 1, NULL, NULL, NULL, NULL, 1),
(158, 33, NULL, NULL, 'Renault-tee-shirt-vaillant-jaune-XL', '2019-11-27 13:39:04', '2019-11-27 13:40:16', 3, 2, 0, 31, 1, NULL, NULL, NULL, NULL, 1),
(159, 33, NULL, NULL, 'Renault-tee-shirt-vaillant-jaune-XXL', '2019-11-27 13:39:04', '2019-11-27 13:40:28', 4, 2, 0, 34, 1, NULL, NULL, NULL, NULL, 1),
(160, 34, NULL, NULL, 'Renault-tee-shirt-bleu-vaillant-S', '2019-11-27 13:47:09', '2019-11-27 13:47:59', 0, 2, 0, 18, 1, NULL, NULL, NULL, NULL, 1),
(161, 34, NULL, NULL, 'Renault-tee-shirt-bleu-vaillant-M', '2019-11-27 13:47:09', '2019-11-27 13:47:51', 1, 2, 0, 20, 1, NULL, NULL, NULL, NULL, 1),
(162, 34, NULL, NULL, 'Renault-tee-shirt-bleu-vaillant-L', '2019-11-27 13:47:09', '2019-11-27 13:48:03', 2, 2, 0, 19, 1, NULL, NULL, NULL, NULL, 1),
(163, 34, NULL, NULL, 'Renault-tee-shirt-bleu-vaillant-XL', '2019-11-27 13:47:09', '2019-11-27 13:48:10', 3, 2, 0, 31, 1, NULL, NULL, NULL, NULL, 1),
(164, 34, NULL, NULL, 'Renault-tee-shirt-bleu-vaillant-XXL', '2019-11-27 13:47:09', '2019-11-27 13:48:20', 4, 2, 0, 48, 1, NULL, NULL, NULL, NULL, 1),
(165, 35, NULL, NULL, 'Renault-tee-shirt-gris-vaillant-S', '2019-11-27 13:51:55', '2019-11-27 13:52:35', 0, 2, 0, 17, 1, NULL, NULL, NULL, NULL, 1),
(166, 35, NULL, NULL, 'Renault-tee-shirt-gris-vaillant-M', '2019-11-27 13:51:56', '2019-11-27 13:52:43', 1, 2, 0, 26, 1, NULL, NULL, NULL, NULL, 1),
(167, 35, NULL, NULL, 'Renault-tee-shirt-gris-vaillant-L', '2019-11-27 13:51:56', '2019-11-27 13:52:49', 2, 2, 0, 19, 1, NULL, NULL, NULL, NULL, 1),
(168, 35, NULL, NULL, 'Renault-tee-shirt-gris-vaillant-XL', '2019-11-27 13:51:56', '2019-11-27 13:52:57', 3, 2, 0, 29, 1, NULL, NULL, NULL, NULL, 1),
(169, 35, NULL, NULL, 'Renault-tee-shirt-gris-vaillant-XXL', '2019-11-27 13:51:56', '2019-11-27 13:53:01', 4, 2, 0, 38, 1, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_variant_option_value`
--

DROP TABLE IF EXISTS `sylius_product_variant_option_value`;
CREATE TABLE IF NOT EXISTS `sylius_product_variant_option_value` (
  `variant_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  PRIMARY KEY (`variant_id`,`option_value_id`),
  KEY `IDX_76CDAFA13B69A9AF` (`variant_id`),
  KEY `IDX_76CDAFA1D957CA06` (`option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_variant_option_value`
--

INSERT INTO `sylius_product_variant_option_value` (`variant_id`, `option_value_id`) VALUES
(3, 1),
(4, 2),
(5, 3),
(6, 4),
(7, 5),
(8, 1),
(9, 2),
(10, 3),
(11, 4),
(12, 5),
(13, 1),
(14, 2),
(15, 3),
(16, 4),
(17, 5),
(18, 1),
(19, 2),
(20, 3),
(21, 4),
(22, 5),
(23, 1),
(24, 2),
(25, 3),
(26, 4),
(27, 5),
(28, 1),
(29, 2),
(30, 3),
(31, 4),
(32, 5),
(37, 6),
(37, 11),
(38, 6),
(38, 12),
(39, 6),
(39, 13),
(40, 7),
(40, 11),
(41, 7),
(41, 12),
(42, 7),
(42, 13),
(43, 8),
(43, 11),
(44, 8),
(44, 12),
(45, 8),
(45, 13),
(46, 9),
(46, 11),
(47, 9),
(47, 12),
(48, 9),
(48, 13),
(49, 10),
(49, 11),
(50, 10),
(50, 12),
(51, 10),
(51, 13),
(52, 6),
(52, 11),
(53, 6),
(53, 12),
(54, 6),
(54, 13),
(55, 7),
(55, 11),
(56, 7),
(56, 12),
(57, 7),
(57, 13),
(58, 8),
(58, 11),
(59, 8),
(59, 12),
(60, 8),
(60, 13),
(61, 9),
(61, 11),
(62, 9),
(62, 12),
(63, 9),
(63, 13),
(64, 10),
(64, 11),
(65, 10),
(65, 12),
(66, 10),
(66, 13),
(67, 6),
(67, 11),
(68, 6),
(68, 12),
(69, 6),
(69, 13),
(70, 7),
(70, 11),
(71, 7),
(71, 12),
(72, 7),
(72, 13),
(73, 8),
(73, 11),
(74, 8),
(74, 12),
(75, 8),
(75, 13),
(76, 9),
(76, 11),
(77, 9),
(77, 12),
(78, 9),
(78, 13),
(79, 10),
(79, 11),
(80, 10),
(80, 12),
(81, 10),
(81, 13),
(82, 14),
(83, 15),
(84, 16),
(85, 17),
(86, 18),
(87, 14),
(88, 15),
(89, 16),
(90, 17),
(91, 18),
(92, 14),
(93, 15),
(94, 16),
(95, 17),
(96, 18),
(97, 14),
(98, 15),
(99, 16),
(100, 17),
(101, 18),
(102, 14),
(103, 15),
(104, 16),
(105, 17),
(106, 18),
(107, 14),
(108, 15),
(109, 16),
(110, 17),
(111, 18),
(112, 14),
(113, 15),
(114, 16),
(115, 17),
(116, 18),
(117, 14),
(118, 15),
(119, 16),
(120, 17),
(121, 18),
(125, 1),
(126, 2),
(127, 3),
(128, 4),
(129, 5),
(130, 1),
(131, 2),
(132, 3),
(133, 4),
(134, 5),
(135, 1),
(136, 2),
(137, 3),
(138, 4),
(139, 5),
(140, 1),
(141, 2),
(142, 3),
(143, 4),
(144, 5),
(145, 1),
(146, 2),
(147, 3),
(148, 4),
(149, 5),
(150, 1),
(151, 2),
(152, 3),
(153, 4),
(154, 5),
(155, 1),
(156, 2),
(157, 3),
(158, 4),
(159, 5),
(160, 1),
(161, 2),
(162, 3),
(163, 4),
(164, 5),
(165, 1),
(166, 2),
(167, 3),
(168, 4),
(169, 5);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_product_variant_translation`
--

DROP TABLE IF EXISTS `sylius_product_variant_translation`;
CREATE TABLE IF NOT EXISTS `sylius_product_variant_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_product_variant_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_8DC18EDC2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_product_variant_translation`
--

INSERT INTO `sylius_product_variant_translation` (`id`, `translatable_id`, `name`, `locale`) VALUES
(1, 3, 'S', 'en_US'),
(2, 4, 'M', 'en_US'),
(3, 5, 'L', 'en_US'),
(4, 6, 'XL', 'en_US'),
(5, 7, 'XXL', 'en_US'),
(6, 8, 'S', 'en_US'),
(7, 9, 'M', 'en_US'),
(8, 10, 'L', 'en_US'),
(9, 11, 'XL', 'en_US'),
(10, 12, 'XXL', 'en_US'),
(11, 13, 'S', 'en_US'),
(12, 14, 'M', 'en_US'),
(13, 15, 'L', 'en_US'),
(14, 16, 'XL', 'en_US'),
(15, 17, 'XXL', 'en_US'),
(16, 18, 'S', 'en_US'),
(17, 19, 'M', 'en_US'),
(18, 20, 'L', 'en_US'),
(19, 21, 'XL', 'en_US'),
(20, 22, 'XXL', 'en_US'),
(21, 23, 'S', 'en_US'),
(22, 24, 'M', 'en_US'),
(23, 25, 'L', 'en_US'),
(24, 26, 'XL', 'en_US'),
(25, 27, 'XXL', 'en_US'),
(26, 28, 'S', 'en_US'),
(27, 29, 'M', 'en_US'),
(28, 30, 'L', 'en_US'),
(29, 31, 'XL', 'en_US'),
(30, 32, 'XXL', 'en_US'),
(31, 33, NULL, 'en_US'),
(32, 34, NULL, 'en_US'),
(33, 35, NULL, 'en_US'),
(34, 36, NULL, 'en_US'),
(35, 37, 'S Petite', 'en_US'),
(36, 38, 'S Regular', 'en_US'),
(37, 39, 'S Tall', 'en_US'),
(38, 40, 'M Petite', 'en_US'),
(39, 41, 'M Regular', 'en_US'),
(40, 42, 'M Tall', 'en_US'),
(41, 43, 'L Petite', 'en_US'),
(42, 44, 'L Regular', 'en_US'),
(43, 45, 'L Tall', 'en_US'),
(44, 46, 'XL Petite', 'en_US'),
(45, 47, 'XL Regular', 'en_US'),
(46, 48, 'XL Tall', 'en_US'),
(47, 49, 'XXL Petite', 'en_US'),
(48, 50, 'XXL Regular', 'en_US'),
(49, 51, 'XXL Tall', 'en_US'),
(50, 52, 'S Petite', 'en_US'),
(51, 53, 'S Regular', 'en_US'),
(52, 54, 'S Tall', 'en_US'),
(53, 55, 'M Petite', 'en_US'),
(54, 56, 'M Regular', 'en_US'),
(55, 57, 'M Tall', 'en_US'),
(56, 58, 'L Petite', 'en_US'),
(57, 59, 'L Regular', 'en_US'),
(58, 60, 'L Tall', 'en_US'),
(59, 61, 'XL Petite', 'en_US'),
(60, 62, 'XL Regular', 'en_US'),
(61, 63, 'XL Tall', 'en_US'),
(62, 64, 'XXL Petite', 'en_US'),
(63, 65, 'XXL Regular', 'en_US'),
(64, 66, 'XXL Tall', 'en_US'),
(65, 67, 'S Petite', 'en_US'),
(66, 68, 'S Regular', 'en_US'),
(67, 69, 'S Tall', 'en_US'),
(68, 70, 'M Petite', 'en_US'),
(69, 71, 'M Regular', 'en_US'),
(70, 72, 'M Tall', 'en_US'),
(71, 73, 'L Petite', 'en_US'),
(72, 74, 'L Regular', 'en_US'),
(73, 75, 'L Tall', 'en_US'),
(74, 76, 'XL Petite', 'en_US'),
(75, 77, 'XL Regular', 'en_US'),
(76, 78, 'XL Tall', 'en_US'),
(77, 79, 'XXL Petite', 'en_US'),
(78, 80, 'XXL Regular', 'en_US'),
(79, 81, 'XXL Tall', 'en_US'),
(80, 82, 'S', 'en_US'),
(81, 83, 'M', 'en_US'),
(82, 84, 'L', 'en_US'),
(83, 85, 'XL', 'en_US'),
(84, 86, 'XXL', 'en_US'),
(85, 87, 'S', 'en_US'),
(86, 88, 'M', 'en_US'),
(87, 89, 'L', 'en_US'),
(88, 90, 'XL', 'en_US'),
(89, 91, 'XXL', 'en_US'),
(90, 92, 'S', 'en_US'),
(91, 93, 'M', 'en_US'),
(92, 94, 'L', 'en_US'),
(93, 95, 'XL', 'en_US'),
(94, 96, 'XXL', 'en_US'),
(95, 97, 'S', 'en_US'),
(96, 98, 'M', 'en_US'),
(97, 99, 'L', 'en_US'),
(98, 100, 'XL', 'en_US'),
(99, 101, 'XXL', 'en_US'),
(100, 102, 'S', 'en_US'),
(101, 103, 'M', 'en_US'),
(102, 104, 'L', 'en_US'),
(103, 105, 'XL', 'en_US'),
(104, 106, 'XXL', 'en_US'),
(105, 107, 'S', 'en_US'),
(106, 108, 'M', 'en_US'),
(107, 109, 'L', 'en_US'),
(108, 110, 'XL', 'en_US'),
(109, 111, 'XXL', 'en_US'),
(110, 112, 'S', 'en_US'),
(111, 113, 'M', 'en_US'),
(112, 114, 'L', 'en_US'),
(113, 115, 'XL', 'en_US'),
(114, 116, 'XXL', 'en_US'),
(115, 117, 'S', 'en_US'),
(116, 118, 'M', 'en_US'),
(117, 119, 'L', 'en_US'),
(118, 120, 'XL', 'en_US'),
(119, 121, 'XXL', 'en_US'),
(120, 122, NULL, 'en_US'),
(121, 123, 'S', 'en_US'),
(122, 124, 'M', 'en_US'),
(123, 125, NULL, 'en_US'),
(124, 126, NULL, 'en_US'),
(125, 127, NULL, 'en_US'),
(126, 128, NULL, 'en_US'),
(127, 129, NULL, 'en_US'),
(128, 130, NULL, 'en_US'),
(129, 131, NULL, 'en_US'),
(130, 132, NULL, 'en_US'),
(131, 133, NULL, 'en_US'),
(132, 134, NULL, 'en_US'),
(133, 135, NULL, 'en_US'),
(134, 136, NULL, 'en_US'),
(135, 137, NULL, 'en_US'),
(136, 138, NULL, 'en_US'),
(137, 139, NULL, 'en_US'),
(138, 140, NULL, 'en_US'),
(139, 141, NULL, 'en_US'),
(140, 142, NULL, 'en_US'),
(141, 143, NULL, 'en_US'),
(142, 144, NULL, 'en_US'),
(143, 145, NULL, 'en_US'),
(144, 146, NULL, 'en_US'),
(145, 147, NULL, 'en_US'),
(146, 148, NULL, 'en_US'),
(147, 149, NULL, 'en_US'),
(148, 150, NULL, 'en_US'),
(149, 151, NULL, 'en_US'),
(150, 152, NULL, 'en_US'),
(151, 153, NULL, 'en_US'),
(152, 154, NULL, 'en_US'),
(153, 155, NULL, 'en_US'),
(154, 156, NULL, 'en_US'),
(155, 157, NULL, 'en_US'),
(156, 158, NULL, 'en_US'),
(157, 159, NULL, 'en_US'),
(158, 160, NULL, 'en_US'),
(159, 161, NULL, 'en_US'),
(160, 162, NULL, 'en_US'),
(161, 163, NULL, 'en_US'),
(162, 164, NULL, 'en_US'),
(163, 165, NULL, 'en_US'),
(164, 166, NULL, 'en_US'),
(165, 167, NULL, 'en_US'),
(166, 168, NULL, 'en_US'),
(167, 169, NULL, 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion`
--

DROP TABLE IF EXISTS `sylius_promotion`;
CREATE TABLE IF NOT EXISTS `sylius_promotion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `exclusive` tinyint(1) NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `coupon_based` tinyint(1) NOT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F157396377153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion`
--

INSERT INTO `sylius_promotion` (`id`, `code`, `name`, `description`, `priority`, `exclusive`, `usage_limit`, `used`, `coupon_based`, `starts_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(1, 'christmas', 'Christmas', 'Voluptatibus similique ut ab vel qui.', 0, 0, NULL, 21, 0, NULL, NULL, '2019-11-13 11:44:15', '2019-11-18 14:40:42'),
(2, 'new_year', 'New Year', 'Voluptatibus similique ut ab vel qui.', 2, 0, 10, 10, 0, '2019-11-06 11:44:15', '2019-11-20 11:44:15', '2019-11-13 11:44:15', '2019-11-13 11:44:18');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_action`
--

DROP TABLE IF EXISTS `sylius_promotion_action`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_933D0915139DF194` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion_action`
--

INSERT INTO `sylius_promotion_action` (`id`, `promotion_id`, `type`, `configuration`) VALUES
(1, 1, 'order_percentage_discount', 'a:1:{s:10:\"percentage\";d:0.37;}'),
(2, 2, 'order_fixed_discount', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:1000;}}');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_channels`
--

DROP TABLE IF EXISTS `sylius_promotion_channels`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_channels` (
  `promotion_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`promotion_id`,`channel_id`),
  KEY `IDX_1A044F64139DF194` (`promotion_id`),
  KEY `IDX_1A044F6472F5A1AA` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion_channels`
--

INSERT INTO `sylius_promotion_channels` (`promotion_id`, `channel_id`) VALUES
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_coupon`
--

DROP TABLE IF EXISTS `sylius_promotion_coupon`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `used` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `per_customer_usage_limit` int(11) DEFAULT NULL,
  `reusable_from_cancelled_orders` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B04EBA8577153098` (`code`),
  KEY `IDX_B04EBA85139DF194` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_order`
--

DROP TABLE IF EXISTS `sylius_promotion_order`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_order` (
  `order_id` int(11) NOT NULL,
  `promotion_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`promotion_id`),
  KEY `IDX_BF9CF6FB8D9F6D38` (`order_id`),
  KEY `IDX_BF9CF6FB139DF194` (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion_order`
--

INSERT INTO `sylius_promotion_order` (`order_id`, `promotion_id`) VALUES
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(23, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_promotion_rule`
--

DROP TABLE IF EXISTS `sylius_promotion_rule`;
CREATE TABLE IF NOT EXISTS `sylius_promotion_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotion_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_2C188EA8139DF194` (`promotion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_promotion_rule`
--

INSERT INTO `sylius_promotion_rule` (`id`, `promotion_id`, `type`, `configuration`) VALUES
(1, 1, 'cart_quantity', 'a:1:{s:5:\"count\";i:2;}'),
(2, 2, 'item_total', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:10000;}}');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_province`
--

DROP TABLE IF EXISTS `sylius_province`;
CREATE TABLE IF NOT EXISTS `sylius_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B5618FE477153098` (`code`),
  UNIQUE KEY `UNIQ_B5618FE4F92F3E705E237E06` (`country_id`,`name`),
  KEY `IDX_B5618FE4F92F3E70` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_province`
--

INSERT INTO `sylius_province` (`id`, `country_id`, `code`, `name`, `abbreviation`) VALUES
(1, 3, 'FR-PR', 'Paris', 'PRI');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipment`
--

DROP TABLE IF EXISTS `sylius_shipment`;
CREATE TABLE IF NOT EXISTS `sylius_shipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tracking` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FD707B3319883967` (`method_id`),
  KEY `IDX_FD707B338D9F6D38` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shipment`
--

INSERT INTO `sylius_shipment` (`id`, `method_id`, `order_id`, `state`, `tracking`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'ready', NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(2, 2, 3, 'ready', NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(3, 2, 4, 'ready', NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:17'),
(4, 3, 5, 'ready', NULL, '2019-11-13 11:44:17', '2019-11-13 11:44:18'),
(5, 4, 6, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(6, 4, 7, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(7, 3, 8, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(8, 2, 9, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(9, 2, 10, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(10, 3, 11, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(11, 2, 12, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(12, 2, 13, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(13, 2, 14, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(14, 3, 15, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(15, 4, 16, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(16, 3, 17, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(17, 2, 18, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(18, 4, 19, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(19, 3, 20, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(20, 3, 21, 'ready', NULL, '2019-11-13 11:44:18', '2019-11-13 11:44:18'),
(21, 3, 22, 'ready', NULL, '2019-11-18 08:06:41', '2019-11-18 08:31:35'),
(22, 2, 23, 'shipped', NULL, '2019-11-18 09:19:16', '2019-11-18 14:43:17'),
(24, 2, 24, 'ready', NULL, '2019-11-19 11:16:59', '2019-11-19 11:20:07'),
(25, 2, 25, 'shipped', NULL, '2019-11-19 13:47:53', '2019-11-19 13:52:02'),
(26, 2, 26, 'ready', NULL, '2019-11-19 21:09:16', '2019-11-19 21:17:15');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipping_category`
--

DROP TABLE IF EXISTS `sylius_shipping_category`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B1D6465277153098` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipping_method`
--

DROP TABLE IF EXISTS `sylius_shipping_method`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `zone_id` int(11) NOT NULL,
  `tax_category_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `category_requirement` int(11) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `archived_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_5FB0EE1177153098` (`code`),
  KEY `IDX_5FB0EE1112469DE2` (`category_id`),
  KEY `IDX_5FB0EE119F2C3FAB` (`zone_id`),
  KEY `IDX_5FB0EE119DF894ED` (`tax_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shipping_method`
--

INSERT INTO `sylius_shipping_method` (`id`, `category_id`, `zone_id`, `tax_category_id`, `code`, `configuration`, `category_requirement`, `calculator`, `is_enabled`, `position`, `archived_at`, `created_at`, `updated_at`) VALUES
(2, NULL, 2, NULL, 'ups', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:776;}}', 1, 'flat_rate', 1, 0, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15'),
(3, NULL, 2, NULL, 'dhl_express', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:296;}}', 1, 'flat_rate', 1, 1, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15'),
(4, NULL, 2, NULL, 'fedex', 'a:1:{s:11:\"FASHION_WEB\";a:1:{s:6:\"amount\";i:487;}}', 1, 'flat_rate', 1, 2, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipping_method_channels`
--

DROP TABLE IF EXISTS `sylius_shipping_method_channels`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_method_channels` (
  `shipping_method_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`shipping_method_id`,`channel_id`),
  KEY `IDX_2D9833355F7D6850` (`shipping_method_id`),
  KEY `IDX_2D98333572F5A1AA` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shipping_method_channels`
--

INSERT INTO `sylius_shipping_method_channels` (`shipping_method_id`, `channel_id`) VALUES
(2, 2),
(3, 2),
(4, 2);

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shipping_method_translation`
--

DROP TABLE IF EXISTS `sylius_shipping_method_translation`;
CREATE TABLE IF NOT EXISTS `sylius_shipping_method_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sylius_shipping_method_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_2B37DB3D2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shipping_method_translation`
--

INSERT INTO `sylius_shipping_method_translation` (`id`, `translatable_id`, `name`, `description`, `locale`) VALUES
(2, 2, 'UPS', 'Atque hic laborum sequi sed esse.', 'en_US'),
(3, 3, 'DHL Express', 'Officia libero sequi doloribus ea.', 'en_US'),
(4, 4, 'FedEx', 'Molestiae reprehenderit qui neque.', 'en_US');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shop_billing_data`
--

DROP TABLE IF EXISTS `sylius_shop_billing_data`;
CREATE TABLE IF NOT EXISTS `sylius_shop_billing_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shop_billing_data`
--

INSERT INTO `sylius_shop_billing_data` (`id`, `company`, `tax_id`, `country_code`, `street`, `city`, `postcode`) VALUES
(1, 'Sylius', '0001112222', 'US', 'Test St. 15', 'eCommerce Town', '00 33 22');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_shop_user`
--

DROP TABLE IF EXISTS `sylius_shop_user`;
CREATE TABLE IF NOT EXISTS `sylius_shop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `email_verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified_at` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `encoder_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7C2B74809395C3F3` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_shop_user`
--

INSERT INTO `sylius_shop_user` (`id`, `customer_id`, `username`, `username_canonical`, `enabled`, `salt`, `password`, `last_login`, `password_reset_token`, `password_requested_at`, `email_verification_token`, `verified_at`, `locked`, `expires_at`, `credentials_expire_at`, `roles`, `email`, `email_canonical`, `created_at`, `updated_at`, `encoder_name`) VALUES
(2, 2, 'shop@example.com', 'shop@example.com', 1, 'mi0mlh04phc0ks08wkc0c40gkkc48s4', '$argon2i$v=19$m=1024,t=2,p=2$eGo5QlBteDIxWTdHLk1VcA$8npIABCMR1rmTHZChKAabRWwHk+wUVU47N3HuNZbeNA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(3, 3, 'oren.swift@pagac.com', 'oren.swift@pagac.com', 1, 'pmdwknf18sg40gwoo48okoosg0ksk04', '$argon2i$v=19$m=1024,t=2,p=2$b0JudlplaGdQZTVhQjRPUA$mAM/GNx3VD2TmytWDQMwu9lDboZuX5CS+Ss1KZJ0csk', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(4, 4, 'dgrimes@larkin.com', 'dgrimes@larkin.com', 1, 'cgshnsnd6igwsgkg4wsskgkw00sk0gc', '$argon2i$v=19$m=1024,t=2,p=2$OGozOWpNbWIuSzZMMmUxRA$XopBrcbc+hzSDZ3qfa4rOzrVEiFgsNW74uf07JrIY50', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(5, 5, 'rswaniawski@gmail.com', 'rswaniawski@gmail.com', 1, 'mvg9u5593io8w4s0gscg0sgoksscc84', '$argon2i$v=19$m=1024,t=2,p=2$akR1aWJDR0ZTNXVMeEwvWA$C+CKIZcYAUkPwBMlVaJMLpKEUulMK/iLk6nKLtDWv48', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(6, 6, 'waino40@gmail.com', 'waino40@gmail.com', 1, 'tlufr6mtp1c0kk8s08k8g4o0wkwgcck', '$argon2i$v=19$m=1024,t=2,p=2$LllKQVo1ek9HMExDckpOQQ$hNvqTknTpFmO9hD0ZC+dKsfvEGeKVCaSfaHhG0TubPQ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(7, 7, 'tom00@yahoo.com', 'tom00@yahoo.com', 1, 'gi0c7t17glk4scswk4ckococcocw0c0', '$argon2i$v=19$m=1024,t=2,p=2$bkpQU21ad3hFLlk5Q1BueA$bCbJ5PEF7gQRdEF4+82u+9GbUGUXmkucBmw0Vs2MOIU', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(8, 8, 'effertz.eric@greenholt.info', 'effertz.eric@greenholt.info', 1, 'mmktrlw5o2s08gwc48gkkckks0wk0wk', '$argon2i$v=19$m=1024,t=2,p=2$b3FNM0gvL01NV3Y2NEExUg$Z8xbPvkSLSG3Hezg8usskybNzU+gmU8ecEftB03cYW4', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(9, 9, 'houston.hyatt@yahoo.com', 'houston.hyatt@yahoo.com', 1, 'qaqvcuzvxbks84cws8kcw0g4kcowsoo', '$argon2i$v=19$m=1024,t=2,p=2$Ynh4dnUuOFRvekh2ZzNFSg$M9m2sOBFUMHoAUrINwqFBVeW8zpY0YFCCLEGXRyg9aA', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(10, 10, 'jherman@gmail.com', 'jherman@gmail.com', 1, 'f6pechiczhko0ow4o8cwoc0ckg8w8ww', '$argon2i$v=19$m=1024,t=2,p=2$T1RQV3QuNjAvRWZpUlBsbA$ikakaIzS+2eqlGuWCmiei7vxvcrsgtqDrVyrRCeOET4', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(11, 11, 'medhurst.jeffrey@anderson.info', 'medhurst.jeffrey@anderson.info', 1, 'ebusu0xda2gwswwc8gk4wccgcc80wsk', '$argon2i$v=19$m=1024,t=2,p=2$bmszQVQuRkt2NklwY2FpaQ$oHUpaLISaJv5ZbUbh3ISM8psqPdoqisQTguWPPuFeFw', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(12, 12, 'parker.lura@stoltenberg.com', 'parker.lura@stoltenberg.com', 1, '6hemfm4lhq0wg48c44cs4o8gs84gcc4', '$argon2i$v=19$m=1024,t=2,p=2$Z3V1Z1E5amZrLmpQd3JSdQ$1jZ2VzrgpkqvklM1mmJQSdb4n90oP9mggyXLlnhBou4', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(13, 13, 'dennis30@goyette.net', 'dennis30@goyette.net', 1, 'fsssll7e61w0880cww8gwc0ggws4cg0', '$argon2i$v=19$m=1024,t=2,p=2$M1Z3R3J5dWFnM2xWQXRoRw$glsNzv5V8nAmLZe0+Ku7/13EsWk8/6jzYBUbshYFTYI', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(14, 14, 'jamarcus.harris@yahoo.com', 'jamarcus.harris@yahoo.com', 1, '2voflhwu3m4gocsgck88cs8wc4ssw8o', '$argon2i$v=19$m=1024,t=2,p=2$SGc2NUNwQzFaUHVuQ1c2cw$OYI83eh/sKVv+KjhcfXyvQ2TIyIvDZpx0QK7wO4i8no', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(15, 15, 'hoppe.lois@hoppe.net', 'hoppe.lois@hoppe.net', 1, '7hwnrj4pfwo40owowkwkkgsogwg4kc8', '$argon2i$v=19$m=1024,t=2,p=2$dkpud1llYnpUY1A5TTY5OA$ePEPKcN8RYdx+HSEMRZUNC0eqpSzTcCS1QBt6DjsSwY', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(16, 16, 'mateo.weissnat@thiel.biz', 'mateo.weissnat@thiel.biz', 1, '5xpgrio21s4ko4kc4g8oc0k44wok4g8', '$argon2i$v=19$m=1024,t=2,p=2$NjZvbXdEWlZ3czA3MENHSw$U7AgEdjpbM7zc9AFTxQ9OgCSlG5YbyMOY91ZrIXKEjw', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(17, 17, 'hblick@volkman.com', 'hblick@volkman.com', 1, 'c6fed64a2jcc0socogoocowg8c80884', '$argon2i$v=19$m=1024,t=2,p=2$eGhFWjhIVjdnRks1V3hYag$hJ7TAos3aZzIQvphafwSVKW7uy9bc6iVC4bTvWzFBsE', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(18, 18, 'predovic.isaiah@yahoo.com', 'predovic.isaiah@yahoo.com', 1, '1be1ebrq3co0k000kw4kwgwo8kkss80', '$argon2i$v=19$m=1024,t=2,p=2$Qkk5TTVGUkFPTG9IZVMvNA$KS4+aNH38NBwc6XVLOmjZP5z6n/L8FQ8ZiVJfva+HgQ', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(19, 19, 'ncasper@heller.info', 'ncasper@heller.info', 1, 'd4zu77rgnbscg4c8k8088w4444cwc40', '$argon2i$v=19$m=1024,t=2,p=2$aTQzWWd2cEc4ak5EUno0bw$9/ICTgSo7dalbNZYcpa+G4jpnWVHW+Uz1AEw+cbv7Sk', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(20, 20, 'lang.alta@hotmail.com', 'lang.alta@hotmail.com', 1, 'pt02cowmps000o0w0gwkosckc088084', '$argon2i$v=19$m=1024,t=2,p=2$SmZ2cW4xRXlUc2JKTjBTTg$TSOPrqAw0M3ltgA0j+Rl1uFI2NMp4PoK+GHAjlSjJe8', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(21, 21, 'darlene37@bogan.com', 'darlene37@bogan.com', 1, 'pib1ap1cofko8sg044k4o0g80c0w8k0', '$argon2i$v=19$m=1024,t=2,p=2$WlltUnkvcmZuVUx3YVRDWA$5quo9J0awU5qQsMOywkdtNgklVdBxZeIwye9xL4mnF8', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(22, 22, 'gayle38@yahoo.com', 'gayle38@yahoo.com', 1, 'doymfo5ta94owgsc8cs44sowg8oswkc', '$argon2i$v=19$m=1024,t=2,p=2$dVpTM1BiMTNWT3JGbW9ZWA$HhaCkVHIKLoF8pRBIeJr1CTaTi2myoOaRTogAUT01X8', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-13 11:44:15', '2019-11-13 11:44:15', 'argon2i'),
(23, 23, 'van.t.pen@gmail.com', 'van.t.pen@gmail.com', 1, '5pjopque8ckk8cw8oskocwkcg4wgcs4', '$argon2i$v=19$m=1024,t=2,p=2$L2x5eDBkVTBsL0FlS1M0Uw$G0XKPqFZrOY+uraflOTaY1emz20Gy+GlvPVF1fBkHo4', '2019-11-26 14:21:05', NULL, NULL, 'glnJXZy2-MMs9Kkb', NULL, 0, NULL, NULL, 'a:1:{i:0;s:9:\"ROLE_USER\";}', NULL, NULL, '2019-11-18 09:56:51', '2019-11-26 14:21:05', 'argon2i');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_taxon`
--

DROP TABLE IF EXISTS `sylius_taxon`;
CREATE TABLE IF NOT EXISTS `sylius_taxon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tree_root` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tree_left` int(11) NOT NULL,
  `tree_right` int(11) NOT NULL,
  `tree_level` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_CFD811CA77153098` (`code`),
  KEY `IDX_CFD811CAA977936C` (`tree_root`),
  KEY `IDX_CFD811CA727ACA70` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_taxon`
--

INSERT INTO `sylius_taxon` (`id`, `tree_root`, `parent_id`, `code`, `tree_left`, `tree_right`, `tree_level`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'category', 1, 18, 0, 0, '2019-11-13 11:44:15', '2019-11-13 11:44:15'),
(2, 1, 1, 't_shirts', 2, 7, 1, 0, '2019-11-13 11:44:15', '2019-11-13 11:44:15'),
(3, 1, 2, 'mens_t_shirts', 3, 4, 2, 0, '2019-11-13 11:44:15', '2019-11-13 11:44:15'),
(4, 1, 2, 'womens_t_shirts', 5, 6, 2, 1, '2019-11-13 11:44:15', '2019-11-13 11:44:15'),
(5, 1, 1, 'caps', 8, 9, 1, 1, '2019-11-13 11:44:16', '2019-11-13 11:44:16'),
(6, 1, 5, 'simple_caps', 9, 10, 2, 0, '2019-11-13 11:44:16', '2019-11-13 11:44:16'),
(7, 1, 5, 'caps_with_pompons', 9, 10, 2, 1, '2019-11-13 11:44:16', '2019-11-13 11:44:16'),
(8, 1, 1, 'dresses', 10, 11, 1, 2, '2019-11-13 11:44:16', '2019-11-13 11:44:16'),
(9, 1, 1, 'jeans', 12, 17, 1, 3, '2019-11-13 11:44:16', '2019-11-13 11:44:16'),
(10, 1, 9, 'mens_jeans', 13, 14, 2, 0, '2019-11-13 11:44:16', '2019-11-13 11:44:16'),
(11, 1, 9, 'womens_jeans', 15, 16, 2, 1, '2019-11-13 11:44:16', '2019-11-13 11:44:16');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_taxon_image`
--

DROP TABLE IF EXISTS `sylius_taxon_image`;
CREATE TABLE IF NOT EXISTS `sylius_taxon_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DBE52B287E3C61F9` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_taxon_translation`
--

DROP TABLE IF EXISTS `sylius_taxon_translation`;
CREATE TABLE IF NOT EXISTS `sylius_taxon_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translatable_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug_uidx` (`locale`,`slug`),
  UNIQUE KEY `sylius_taxon_translation_uniq_trans` (`translatable_id`,`locale`),
  KEY `IDX_1487DFCF2C2AC5D3` (`translatable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_taxon_translation`
--

INSERT INTO `sylius_taxon_translation` (`id`, `translatable_id`, `name`, `slug`, `description`, `locale`) VALUES
(1, 1, 'Category', 'category', 'Ducimus nesciunt illum porro sunt totam impedit sunt. Dolorum voluptatem est tenetur quo facilis aut nobis. Et voluptas iusto tempore et qui.', 'en_US'),
(2, 1, 'Categorie', 'categorie', 'Minus neque est voluptates omnis. Sed ducimus minus sit. Soluta magnam et quia earum dolor.', 'fr_FR'),
(3, 2, 'T-shirts', 'category/t-shirts', 'Vero omnis veniam enim itaque reiciendis repudiandae doloremque. Et dolore similique nisi eius amet. Amet mollitia sunt tempora beatae molestiae ipsa laboriosam.', 'en_US'),
(4, 2, 'T-shirts', 'categorie/t-shirts', 'Nisi aut quo in commodi nulla voluptates labore et. Exercitationem aspernatur quibusdam non voluptatem minima non. Est commodi numquam harum voluptatum.', 'fr_FR'),
(5, 3, 'Homme', 't-shirts/men', 'Ipsam mollitia exercitationem aliquam eos. Nobis tempora et nihil.', 'en_US'),
(6, 3, 'Hommes', 't-shirts/hommes', 'Quos nobis corporis ipsam dignissimos inventore. Beatae eum cupiditate omnis qui autem. Necessitatibus est quidem voluptatum voluptatem quos consequatur. Non veritatis est velit eligendi ullam a.', 'fr_FR'),
(7, 4, 'Femme', 't-shirts/women', 'Assumenda assumenda modi nobis neque sunt. Qui omnis necessitatibus consectetur totam in. Aliquam qui non libero in libero possimus. Numquam eveniet aut dolor pariatur et voluptas laudantium.', 'en_US'),
(8, 4, 'Femme', 't-shirts/femmes', 'Neque aut rerum cum repellat fuga ut qui. Perferendis voluptatem id consectetur impedit repellat laboriosam rerum. Velit neque enim et maxime.', 'fr_FR'),
(9, 5, 'Polo', 'category/caps', 'Quis sequi quas laborum ratione voluptatem est aperiam. Harum odio asperiores et iure rerum eligendi. Nulla numquam qui possimus nihil voluptatem sequi. Veniam et quia ipsum ullam voluptas dolor.', 'en_US'),
(10, 5, 'Casquestte', 'categorie/casquestte', 'Tenetur in quia ut nostrum non. Eligendi quo blanditiis voluptates corporis. Deserunt repudiandae incidunt corrupti in velit eius.', 'fr_FR'),
(11, 6, 'Homme', 'caps/simple', 'Aspernatur qui nesciunt similique. Sunt asperiores sint iure consequuntur similique ut qui et. Est provident quaerat rerum necessitatibus tenetur qui sit. Facilis ea ullam quod expedita aut ut atque.', 'en_US'),
(12, 6, 'simple', 'casquette/simple', 'Qui perferendis et inventore corrupti voluptate facere. Ratione explicabo a dignissimos sit. Quam praesentium in vitae et ab.', 'fr_FR'),
(13, 7, 'Femme', 'caps/with-pompons', 'Perspiciatis quasi cupiditate est. Earum deleniti enim et sequi ratione. Non debitis voluptate minus est aliquam alias est. Totam assumenda praesentium eius.', 'en_US'),
(14, 7, 'A pompon', 'casquette/a-pompon', 'Est consequatur dolores earum aspernatur. Cupiditate dolor harum ipsa ut aperiam quaerat consequatur. Quia nulla ad enim laboriosam. A porro maiores praesentium quidem doloribus. Ipsum nemo beatae repudiandae qui fuga quod perferendis.', 'fr_FR'),
(15, 8, 'Blouson', 'category/dresses', 'Laborum quod ea hic aut fugit. Alias et et libero cumque pariatur reprehenderit soluta sunt. Voluptate voluptas rerum dolorum placeat exercitationem.', 'en_US'),
(16, 8, 'Robes', 'categorie/robes', 'Qui commodi praesentium occaecati incidunt. Velit distinctio animi dolor repellendus sint molestiae ducimus molestiae. Non enim alias ipsam.', 'fr_FR'),
(17, 9, 'Pantalons', 'category/jeans', 'Quia quo et facilis id quia accusamus illo. Laudantium dolorem voluptas quas. Earum doloremque vitae voluptatem qui repudiandae consequatur et a.', 'en_US'),
(18, 9, 'Jeans', 'categorie/jeans', 'Autem et consequuntur reiciendis animi magni. Sunt voluptatum quod ut optio. Sapiente ex iure voluptates sit facere itaque. Velit a voluptates qui adipisci quisquam.', 'fr_FR'),
(19, 10, 'Homme', 'jeans/men', 'Natus dolorum totam reprehenderit voluptates. Eos nam numquam quia voluptatem facilis eum qui repudiandae. Non accusantium deleniti dolorem quisquam sunt unde.', 'en_US'),
(20, 10, 'Hommes', 'jeans/hommes', 'Consequuntur voluptas quo harum soluta. Rerum velit occaecati tempore possimus.', 'fr_FR'),
(21, 11, 'Femme', 'jeans/women', 'Velit et cupiditate ipsa ipsam. Delectus excepturi neque quaerat facere consequatur mollitia aliquam. Quis deleniti quia iste vitae rerum neque nesciunt. Perspiciatis architecto labore veniam provident mollitia atque.', 'en_US'),
(22, 11, 'Femme', 'jeans/femme', 'Nihil non illo velit blanditiis omnis at. Illo libero eaque consequatur magnam dolor ut vitae. Nisi repellat ut excepturi illo eveniet facilis velit possimus. Voluptatem occaecati et est repudiandae mollitia.', 'fr_FR');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_tax_category`
--

DROP TABLE IF EXISTS `sylius_tax_category`;
CREATE TABLE IF NOT EXISTS `sylius_tax_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_221EB0BE77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_tax_category`
--

INSERT INTO `sylius_tax_category` (`id`, `code`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'clothing', 'Clothing', 'Velit facilis molestiae occaecati. Ratione alias aut fugiat officiis saepe maiores nam.', '2019-11-13 11:44:15', '2019-11-13 11:44:15'),
(2, 'other', 'Other', 'Dolor praesentium quia rem dolorum dolore ipsa voluptatem. Dolorem ea facere vel. Nihil excepturi praesentium ratione itaque eos vitae velit. Hic enim ipsam alias blanditiis.', '2019-11-13 11:44:15', '2019-11-13 11:44:15');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_tax_rate`
--

DROP TABLE IF EXISTS `sylius_tax_rate`;
CREATE TABLE IF NOT EXISTS `sylius_tax_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` decimal(10,5) NOT NULL,
  `included_in_price` tinyint(1) NOT NULL,
  `calculator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3CD86B2E77153098` (`code`),
  KEY `IDX_3CD86B2E12469DE2` (`category_id`),
  KEY `IDX_3CD86B2E9F2C3FAB` (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_tax_rate`
--

INSERT INTO `sylius_tax_rate` (`id`, `category_id`, `zone_id`, `code`, `name`, `amount`, `included_in_price`, `calculator`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'clothing_sales_tax_7', 'Clothing Sales Tax 7%', '0.07000', 1, 'default', '2019-11-13 11:44:15', '2019-11-13 11:44:15'),
(2, 2, 2, 'sales_tax_20', 'Sales Tax 20%', '0.20000', 0, 'default', '2019-11-13 11:44:15', '2019-11-13 11:44:15');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_user_oauth`
--

DROP TABLE IF EXISTS `sylius_user_oauth`;
CREATE TABLE IF NOT EXISTS `sylius_user_oauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `access_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_provider` (`user_id`,`provider`),
  KEY `IDX_C3471B78A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sylius_zone`
--

DROP TABLE IF EXISTS `sylius_zone`;
CREATE TABLE IF NOT EXISTS `sylius_zone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `scope` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7BE2258E77153098` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_zone`
--

INSERT INTO `sylius_zone` (`id`, `code`, `name`, `type`, `scope`) VALUES
(2, 'US', 'United States of America', 'country', 'all'),
(3, 'FR', 'France', 'country', 'all');

-- --------------------------------------------------------

--
-- Structure de la table `sylius_zone_member`
--

DROP TABLE IF EXISTS `sylius_zone_member`;
CREATE TABLE IF NOT EXISTS `sylius_zone_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongs_to` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_E8B5ABF34B0E929B77153098` (`belongs_to`,`code`),
  KEY `IDX_E8B5ABF34B0E929B` (`belongs_to`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sylius_zone_member`
--

INSERT INTO `sylius_zone_member` (`id`, `belongs_to`, `code`) VALUES
(2, 2, 'US'),
(3, 3, 'FR');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `sylius_address`
--
ALTER TABLE `sylius_address`
  ADD CONSTRAINT `FK_B97FF0589395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_adjustment`
--
ALTER TABLE `sylius_adjustment`
  ADD CONSTRAINT `FK_ACA6E0F28D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ACA6E0F2E415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ACA6E0F2F720C233` FOREIGN KEY (`order_item_unit_id`) REFERENCES `sylius_order_item_unit` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_admin_api_access_token`
--
ALTER TABLE `sylius_admin_api_access_token`
  ADD CONSTRAINT `FK_2AA4915D19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  ADD CONSTRAINT `FK_2AA4915DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`);

--
-- Contraintes pour la table `sylius_admin_api_auth_code`
--
ALTER TABLE `sylius_admin_api_auth_code`
  ADD CONSTRAINT `FK_E366D84819EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  ADD CONSTRAINT `FK_E366D848A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`);

--
-- Contraintes pour la table `sylius_admin_api_refresh_token`
--
ALTER TABLE `sylius_admin_api_refresh_token`
  ADD CONSTRAINT `FK_9160E3FA19EB6921` FOREIGN KEY (`client_id`) REFERENCES `sylius_admin_api_client` (`id`),
  ADD CONSTRAINT `FK_9160E3FAA76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_admin_user` (`id`);

--
-- Contraintes pour la table `sylius_avatar_image`
--
ALTER TABLE `sylius_avatar_image`
  ADD CONSTRAINT `FK_1068A3A97E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_admin_user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_channel`
--
ALTER TABLE `sylius_channel`
  ADD CONSTRAINT `FK_16C8119E3101778E` FOREIGN KEY (`base_currency_id`) REFERENCES `sylius_currency` (`id`),
  ADD CONSTRAINT `FK_16C8119E743BF776` FOREIGN KEY (`default_locale_id`) REFERENCES `sylius_locale` (`id`),
  ADD CONSTRAINT `FK_16C8119EA978C17` FOREIGN KEY (`default_tax_zone_id`) REFERENCES `sylius_zone` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_16C8119EB5282EDF` FOREIGN KEY (`shop_billing_data_id`) REFERENCES `sylius_shop_billing_data` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_channel_currencies`
--
ALTER TABLE `sylius_channel_currencies`
  ADD CONSTRAINT `FK_AE491F9338248176` FOREIGN KEY (`currency_id`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AE491F9372F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_channel_locales`
--
ALTER TABLE `sylius_channel_locales`
  ADD CONSTRAINT `FK_786B7A8472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_786B7A84E559DFD1` FOREIGN KEY (`locale_id`) REFERENCES `sylius_locale` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_channel_pricing`
--
ALTER TABLE `sylius_channel_pricing`
  ADD CONSTRAINT `FK_7801820CA80EF684` FOREIGN KEY (`product_variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_customer`
--
ALTER TABLE `sylius_customer`
  ADD CONSTRAINT `FK_7E82D5E6BD94FB16` FOREIGN KEY (`default_address_id`) REFERENCES `sylius_address` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_7E82D5E6D2919A68` FOREIGN KEY (`customer_group_id`) REFERENCES `sylius_customer_group` (`id`);

--
-- Contraintes pour la table `sylius_exchange_rate`
--
ALTER TABLE `sylius_exchange_rate`
  ADD CONSTRAINT `FK_5F52B852A76BEED` FOREIGN KEY (`source_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5F52B85B3FD5856` FOREIGN KEY (`target_currency`) REFERENCES `sylius_currency` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_order`
--
ALTER TABLE `sylius_order`
  ADD CONSTRAINT `FK_6196A1F917B24436` FOREIGN KEY (`promotion_coupon_id`) REFERENCES `sylius_promotion_coupon` (`id`),
  ADD CONSTRAINT `FK_6196A1F94D4CFF2B` FOREIGN KEY (`shipping_address_id`) REFERENCES `sylius_address` (`id`),
  ADD CONSTRAINT `FK_6196A1F972F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`),
  ADD CONSTRAINT `FK_6196A1F979D0C0E4` FOREIGN KEY (`billing_address_id`) REFERENCES `sylius_address` (`id`),
  ADD CONSTRAINT `FK_6196A1F99395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`);

--
-- Contraintes pour la table `sylius_order_item`
--
ALTER TABLE `sylius_order_item`
  ADD CONSTRAINT `FK_77B587ED3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`),
  ADD CONSTRAINT `FK_77B587ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_order_item_unit`
--
ALTER TABLE `sylius_order_item_unit`
  ADD CONSTRAINT `FK_82BF226E7BE036FC` FOREIGN KEY (`shipment_id`) REFERENCES `sylius_shipment` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_82BF226EE415FB15` FOREIGN KEY (`order_item_id`) REFERENCES `sylius_order_item` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_payment`
--
ALTER TABLE `sylius_payment`
  ADD CONSTRAINT `FK_D9191BD419883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_payment_method` (`id`),
  ADD CONSTRAINT `FK_D9191BD48D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_payment_method`
--
ALTER TABLE `sylius_payment_method`
  ADD CONSTRAINT `FK_A75B0B0DF23D6140` FOREIGN KEY (`gateway_config_id`) REFERENCES `sylius_gateway_config` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `sylius_payment_method_channels`
--
ALTER TABLE `sylius_payment_method_channels`
  ADD CONSTRAINT `FK_543AC0CC5AA1164F` FOREIGN KEY (`payment_method_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_543AC0CC72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_payment_method_translation`
--
ALTER TABLE `sylius_payment_method_translation`
  ADD CONSTRAINT `FK_966BE3A12C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_payment_method` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product`
--
ALTER TABLE `sylius_product`
  ADD CONSTRAINT `FK_677B9B74731E505` FOREIGN KEY (`main_taxon_id`) REFERENCES `sylius_taxon` (`id`);

--
-- Contraintes pour la table `sylius_product_association`
--
ALTER TABLE `sylius_product_association`
  ADD CONSTRAINT `FK_48E9CDAB4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_48E9CDABB1E1C39` FOREIGN KEY (`association_type_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_association_product`
--
ALTER TABLE `sylius_product_association_product`
  ADD CONSTRAINT `FK_A427B9834584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A427B983EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `sylius_product_association` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_association_type_translation`
--
ALTER TABLE `sylius_product_association_type_translation`
  ADD CONSTRAINT `FK_4F618E52C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_association_type` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_attribute_translation`
--
ALTER TABLE `sylius_product_attribute_translation`
  ADD CONSTRAINT `FK_93850EBA2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_attribute_value`
--
ALTER TABLE `sylius_product_attribute_value`
  ADD CONSTRAINT `FK_8A053E544584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8A053E54B6E62EFA` FOREIGN KEY (`attribute_id`) REFERENCES `sylius_product_attribute` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_channels`
--
ALTER TABLE `sylius_product_channels`
  ADD CONSTRAINT `FK_F9EF269B4584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F9EF269B72F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_image`
--
ALTER TABLE `sylius_product_image`
  ADD CONSTRAINT `FK_88C64B2D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_image_product_variants`
--
ALTER TABLE `sylius_product_image_product_variants`
  ADD CONSTRAINT `FK_8FFDAE8D3B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8FFDAE8D3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `sylius_product_image` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_options`
--
ALTER TABLE `sylius_product_options`
  ADD CONSTRAINT `FK_2B5FF0094584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2B5FF009A7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_option_translation`
--
ALTER TABLE `sylius_product_option_translation`
  ADD CONSTRAINT `FK_CBA491AD2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_option_value`
--
ALTER TABLE `sylius_product_option_value`
  ADD CONSTRAINT `FK_F7FF7D4BA7C41D6F` FOREIGN KEY (`option_id`) REFERENCES `sylius_product_option` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_option_value_translation`
--
ALTER TABLE `sylius_product_option_value_translation`
  ADD CONSTRAINT `FK_8D4382DC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_review`
--
ALTER TABLE `sylius_product_review`
  ADD CONSTRAINT `FK_C7056A994584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C7056A99F675F31B` FOREIGN KEY (`author_id`) REFERENCES `sylius_customer` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_taxon`
--
ALTER TABLE `sylius_product_taxon`
  ADD CONSTRAINT `FK_169C6CD94584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_169C6CD9DE13F470` FOREIGN KEY (`taxon_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_translation`
--
ALTER TABLE `sylius_product_translation`
  ADD CONSTRAINT `FK_105A9082C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_variant`
--
ALTER TABLE `sylius_product_variant`
  ADD CONSTRAINT `FK_A29B5234584665A` FOREIGN KEY (`product_id`) REFERENCES `sylius_product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A29B5239DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_A29B5239E2D1A41` FOREIGN KEY (`shipping_category_id`) REFERENCES `sylius_shipping_category` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `sylius_product_variant_option_value`
--
ALTER TABLE `sylius_product_variant_option_value`
  ADD CONSTRAINT `FK_76CDAFA13B69A9AF` FOREIGN KEY (`variant_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_76CDAFA1D957CA06` FOREIGN KEY (`option_value_id`) REFERENCES `sylius_product_option_value` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_product_variant_translation`
--
ALTER TABLE `sylius_product_variant_translation`
  ADD CONSTRAINT `FK_8DC18EDC2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_product_variant` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_promotion_action`
--
ALTER TABLE `sylius_promotion_action`
  ADD CONSTRAINT `FK_933D0915139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Contraintes pour la table `sylius_promotion_channels`
--
ALTER TABLE `sylius_promotion_channels`
  ADD CONSTRAINT `FK_1A044F64139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1A044F6472F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_promotion_coupon`
--
ALTER TABLE `sylius_promotion_coupon`
  ADD CONSTRAINT `FK_B04EBA85139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Contraintes pour la table `sylius_promotion_order`
--
ALTER TABLE `sylius_promotion_order`
  ADD CONSTRAINT `FK_BF9CF6FB139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`),
  ADD CONSTRAINT `FK_BF9CF6FB8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_promotion_rule`
--
ALTER TABLE `sylius_promotion_rule`
  ADD CONSTRAINT `FK_2C188EA8139DF194` FOREIGN KEY (`promotion_id`) REFERENCES `sylius_promotion` (`id`);

--
-- Contraintes pour la table `sylius_province`
--
ALTER TABLE `sylius_province`
  ADD CONSTRAINT `FK_B5618FE4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `sylius_country` (`id`);

--
-- Contraintes pour la table `sylius_shipment`
--
ALTER TABLE `sylius_shipment`
  ADD CONSTRAINT `FK_FD707B3319883967` FOREIGN KEY (`method_id`) REFERENCES `sylius_shipping_method` (`id`),
  ADD CONSTRAINT `FK_FD707B338D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `sylius_order` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_shipping_method`
--
ALTER TABLE `sylius_shipping_method`
  ADD CONSTRAINT `FK_5FB0EE1112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_shipping_category` (`id`),
  ADD CONSTRAINT `FK_5FB0EE119DF894ED` FOREIGN KEY (`tax_category_id`) REFERENCES `sylius_tax_category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5FB0EE119F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`);

--
-- Contraintes pour la table `sylius_shipping_method_channels`
--
ALTER TABLE `sylius_shipping_method_channels`
  ADD CONSTRAINT `FK_2D9833355F7D6850` FOREIGN KEY (`shipping_method_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2D98333572F5A1AA` FOREIGN KEY (`channel_id`) REFERENCES `sylius_channel` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_shipping_method_translation`
--
ALTER TABLE `sylius_shipping_method_translation`
  ADD CONSTRAINT `FK_2B37DB3D2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_shipping_method` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_shop_user`
--
ALTER TABLE `sylius_shop_user`
  ADD CONSTRAINT `FK_7C2B74809395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `sylius_customer` (`id`);

--
-- Contraintes pour la table `sylius_taxon`
--
ALTER TABLE `sylius_taxon`
  ADD CONSTRAINT `FK_CFD811CA727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_CFD811CAA977936C` FOREIGN KEY (`tree_root`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_taxon_image`
--
ALTER TABLE `sylius_taxon_image`
  ADD CONSTRAINT `FK_DBE52B287E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_taxon_translation`
--
ALTER TABLE `sylius_taxon_translation`
  ADD CONSTRAINT `FK_1487DFCF2C2AC5D3` FOREIGN KEY (`translatable_id`) REFERENCES `sylius_taxon` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sylius_tax_rate`
--
ALTER TABLE `sylius_tax_rate`
  ADD CONSTRAINT `FK_3CD86B2E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `sylius_tax_category` (`id`),
  ADD CONSTRAINT `FK_3CD86B2E9F2C3FAB` FOREIGN KEY (`zone_id`) REFERENCES `sylius_zone` (`id`);

--
-- Contraintes pour la table `sylius_user_oauth`
--
ALTER TABLE `sylius_user_oauth`
  ADD CONSTRAINT `FK_C3471B78A76ED395` FOREIGN KEY (`user_id`) REFERENCES `sylius_shop_user` (`id`);

--
-- Contraintes pour la table `sylius_zone_member`
--
ALTER TABLE `sylius_zone_member`
  ADD CONSTRAINT `FK_E8B5ABF34B0E929B` FOREIGN KEY (`belongs_to`) REFERENCES `sylius_zone` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
