-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 13 Eki 2023, 18:01:13
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `testci`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `aidatlar`
--

DROP TABLE IF EXISTS `aidatlar`;
CREATE TABLE IF NOT EXISTS `aidatlar` (
  `aidat_id` int NOT NULL AUTO_INCREMENT,
  `aciklama` varchar(255) DEFAULT NULL,
  `odeme_tarihi` date DEFAULT NULL,
  `tutar` decimal(10,2) DEFAULT NULL,
  `odendi_mi` tinyint(1) NOT NULL,
  `daire_id` int NOT NULL,
  PRIMARY KEY (`aidat_id`),
  KEY `daire_id` (`daire_id`)
) ENGINE=MyISAM AUTO_INCREMENT=203 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `aidatlar`
--

INSERT INTO `aidatlar` (`aidat_id`, `aciklama`, `odeme_tarihi`, `tutar`, `odendi_mi`, `daire_id`) VALUES
(39, 'asdfasd', '0000-00-00', '0.00', 0, 29),
(38, 'asdfasd', '0000-00-00', '0.00', 0, 28),
(37, 'asdfasd', '0000-00-00', '0.00', 0, 27),
(36, 'asdfasd', '0000-00-00', '0.00', 0, 26),
(35, 'asdfasd', '0000-00-00', '0.00', 0, 25),
(34, 'asdfasd', '0000-00-00', '0.00', 0, 24),
(33, 'asdfasd', '0000-00-00', '0.00', 0, 23),
(32, 'asdfasd', '0000-00-00', '0.00', 0, 22),
(31, 'asdfasd', '0000-00-00', '0.00', 0, 21),
(30, 'asdfasd', '0000-00-00', '0.00', 0, 20),
(29, 'asdfasd', '0000-00-00', '0.00', 0, 19),
(28, 'asdfasd', '0000-00-00', '0.00', 0, 18),
(27, 'asdfasd', '0000-00-00', '0.00', 0, 17),
(26, 'asdfasd', '0000-00-00', '0.00', 0, 16),
(25, 'asdfasd', '0000-00-00', '0.00', 0, 15),
(24, 'asdfasd', '0000-00-00', '0.00', 0, 14),
(23, 'asdfasd23112312', '0000-00-00', '0.00', 0, 0),
(40, 'asdfasd', '0000-00-00', '0.00', 0, 30),
(41, 'asdfasd', '0000-00-00', '0.00', 0, 31),
(42, 'asdfasd', '0000-00-00', '0.00', 0, 32),
(43, 'asdfasd', '0000-00-00', '0.00', 0, 33),
(44, 'asdfasd', '0000-00-00', '0.00', 0, 34),
(45, 'asdfasd', '0000-00-00', '0.00', 0, 35),
(46, 'asdfasd', '0000-00-00', '0.00', 0, 36),
(47, 'asdfasd', '0000-00-00', '0.00', 0, 37),
(48, 'asdfasd', '0000-00-00', '0.00', 0, 38),
(49, 'asdfasd', '0000-00-00', '0.00', 0, 39),
(50, 'asdfasd', '0000-00-00', '0.00', 0, 40),
(51, 'asdfasd', '0000-00-00', '0.00', 0, 41),
(52, 'asdfasd', '0000-00-00', '0.00', 0, 42),
(53, 'asdfasd', '0000-00-00', '0.00', 0, 43),
(54, 'asdfasd', '0000-00-00', '0.00', 0, 44),
(55, 'asdfasd', '0000-00-00', '0.00', 0, 45),
(56, 'asdfasd', '0000-00-00', '0.00', 0, 46),
(57, 'asdfasd', '0000-00-00', '0.00', 0, 47),
(58, 'asdfasd', '0000-00-00', '0.00', 0, 48),
(59, 'asdfasd', '0000-00-00', '0.00', 0, 49),
(60, 'asdfasd', '0000-00-00', '0.00', 0, 50),
(61, 'asdfasd', '0000-00-00', '0.00', 0, 51),
(62, 'asdfasd', '0000-00-00', '0.00', 0, 52),
(63, 'asdfasd', '0000-00-00', '0.00', 0, 53),
(64, 'asdfasd', '0000-00-00', '0.00', 0, 54),
(65, 'asdfasd', '0000-00-00', '0.00', 0, 55),
(66, 'asdfasd', '0000-00-00', '0.00', 0, 56),
(67, 'asdfasd', '0000-00-00', '0.00', 0, 57),
(68, 'asdfasd', '0000-00-00', '0.00', 0, 58),
(69, 'asdfasd', '0000-00-00', '0.00', 0, 59),
(70, 'asdfasd', '0000-00-00', '0.00', 0, 60),
(71, 'asdfasd', '0000-00-00', '0.00', 0, 61),
(72, 'asdfasd', '0000-00-00', '0.00', 0, 62),
(73, 'asdfasd', '0000-00-00', '0.00', 0, 63),
(74, 'asdfasd', '0000-00-00', '0.00', 0, 64),
(75, 'asdfasd', '0000-00-00', '0.00', 0, 65),
(76, 'asdfasd', '0000-00-00', '0.00', 0, 66),
(77, 'asdfasd', '0000-00-00', '0.00', 0, 67),
(78, 'asdfasd', '0000-00-00', '0.00', 0, 68),
(79, 'asdfasd', '0000-00-00', '0.00', 0, 69),
(80, 'asdfasd', '0000-00-00', '0.00', 0, 70),
(81, 'asdfasd', '0000-00-00', '0.00', 0, 71),
(82, 'asdfasd', '0000-00-00', '0.00', 0, 72),
(83, 'asdfasd', '0000-00-00', '0.00', 0, 73),
(84, 'asdfasd', '0000-00-00', '0.00', 0, 74),
(85, 'asdfasd', '0000-00-00', '0.00', 0, 75),
(86, 'asdfasd', '0000-00-00', '0.00', 0, 76),
(87, 'asdfasd', '0000-00-00', '0.00', 0, 77),
(88, 'asdfasd', '0000-00-00', '0.00', 0, 78),
(89, 'asdfasd', '0000-00-00', '0.00', 0, 79),
(90, 'asdfasd', '0000-00-00', '0.00', 0, 80),
(91, 'asdfasd', '0000-00-00', '0.00', 0, 81),
(92, 'asdfasd', '0000-00-00', '0.00', 0, 82),
(93, 'asdfasd', '0000-00-00', '0.00', 0, 83),
(94, 'asdfasd', '0000-00-00', '0.00', 0, 84),
(95, 'asdfasd', '0000-00-00', '0.00', 0, 85),
(96, 'asdfasd', '0000-00-00', '0.00', 0, 86),
(97, 'asdfasd', '0000-00-00', '0.00', 0, 87),
(98, 'asdfasd', '0000-00-00', '0.00', 0, 88),
(99, 'asdfasd', '0000-00-00', '0.00', 0, 89),
(100, 'asdfasd', '0000-00-00', '0.00', 0, 90),
(101, 'asdfasd', '0000-00-00', '0.00', 0, 91),
(102, 'asdfasd', '0000-00-00', '0.00', 0, 92),
(103, 'asdfasd', '0000-00-00', '0.00', 0, 93),
(104, 'asdfasd', '0000-00-00', '0.00', 0, 94),
(105, 'asdfasd', '0000-00-00', '0.00', 0, 95),
(106, 'asdfasd', '0000-00-00', '0.00', 0, 96),
(107, 'asdfasd', '0000-00-00', '0.00', 0, 97),
(108, 'asdfasd', '0000-00-00', '0.00', 0, 98),
(109, 'asdfasd', '0000-00-00', '0.00', 0, 99),
(110, 'asdfasd', '0000-00-00', '0.00', 0, 100),
(111, 'asdfasd', '0000-00-00', '0.00', 0, 101),
(112, 'asdfasd', '0000-00-00', '0.00', 0, 102),
(113, 'asda', '0000-00-00', '177.00', 0, 0),
(114, 'asda', '0000-00-00', '177.00', 0, 14),
(115, 'asda', '0000-00-00', '177.00', 0, 15),
(116, 'asda', '0000-00-00', '177.00', 0, 16),
(117, 'asda', '0000-00-00', '177.00', 0, 17),
(118, 'asda', '0000-00-00', '177.00', 0, 18),
(119, 'asda', '0000-00-00', '177.00', 0, 19),
(120, 'asda', '0000-00-00', '177.00', 0, 20),
(121, 'asda', '0000-00-00', '177.00', 0, 21),
(122, 'asda', '0000-00-00', '177.00', 0, 22),
(123, 'asda', '0000-00-00', '177.00', 0, 23),
(124, 'asda', '0000-00-00', '177.00', 0, 24),
(125, 'asda', '0000-00-00', '177.00', 0, 25),
(126, 'asda', '0000-00-00', '177.00', 0, 26),
(127, 'asda', '0000-00-00', '177.00', 0, 27),
(128, 'asda', '0000-00-00', '177.00', 0, 28),
(129, 'asda', '0000-00-00', '177.00', 0, 29),
(130, 'asda', '0000-00-00', '177.00', 0, 30),
(131, 'asda', '0000-00-00', '177.00', 0, 31),
(132, 'asda', '0000-00-00', '177.00', 0, 32),
(133, 'asda', '0000-00-00', '177.00', 0, 33),
(134, 'asda', '0000-00-00', '177.00', 0, 34),
(135, 'asda', '0000-00-00', '177.00', 0, 35),
(136, 'asda', '0000-00-00', '177.00', 0, 36),
(137, 'asda', '0000-00-00', '177.00', 0, 37),
(138, 'asda', '0000-00-00', '177.00', 0, 38),
(139, 'asda', '0000-00-00', '177.00', 0, 39),
(140, 'asda', '0000-00-00', '177.00', 0, 40),
(141, 'asda', '0000-00-00', '177.00', 0, 41),
(142, 'asda', '0000-00-00', '177.00', 0, 42),
(143, 'asda', '0000-00-00', '177.00', 0, 43),
(144, 'asda', '0000-00-00', '177.00', 0, 44),
(145, 'asda', '0000-00-00', '177.00', 0, 45),
(146, 'asda', '0000-00-00', '177.00', 0, 46),
(147, 'asda', '0000-00-00', '177.00', 0, 47),
(148, 'asda', '0000-00-00', '177.00', 0, 48),
(149, 'asda', '0000-00-00', '177.00', 0, 49),
(150, 'asda', '0000-00-00', '177.00', 0, 50),
(151, 'asda', '0000-00-00', '177.00', 0, 51),
(152, 'asda', '0000-00-00', '177.00', 0, 52),
(153, 'asda', '0000-00-00', '177.00', 0, 53),
(154, 'asda', '0000-00-00', '177.00', 0, 54),
(155, 'asda', '0000-00-00', '177.00', 0, 55),
(156, 'asda', '0000-00-00', '177.00', 0, 56),
(157, 'asda', '0000-00-00', '177.00', 0, 57),
(158, 'asda', '0000-00-00', '177.00', 0, 58),
(159, 'asda', '0000-00-00', '177.00', 0, 59),
(160, 'asda', '0000-00-00', '177.00', 0, 60),
(161, 'asda', '0000-00-00', '177.00', 0, 61),
(162, 'asda', '0000-00-00', '177.00', 0, 62),
(163, 'asda', '0000-00-00', '177.00', 0, 63),
(164, 'asda', '0000-00-00', '177.00', 0, 64),
(165, 'asda', '0000-00-00', '177.00', 0, 65),
(166, 'asda', '0000-00-00', '177.00', 0, 66),
(167, 'asda', '0000-00-00', '177.00', 0, 67),
(168, 'asda', '0000-00-00', '177.00', 0, 68),
(169, 'asda', '0000-00-00', '177.00', 0, 69),
(170, 'asda', '0000-00-00', '177.00', 0, 70),
(171, 'asda', '0000-00-00', '177.00', 0, 71),
(172, 'asda', '0000-00-00', '177.00', 0, 72),
(173, 'asda', '0000-00-00', '177.00', 0, 73),
(174, 'asda', '0000-00-00', '177.00', 0, 74),
(175, 'asda', '0000-00-00', '177.00', 0, 75),
(176, 'asda', '0000-00-00', '177.00', 0, 76),
(177, 'asda', '0000-00-00', '177.00', 0, 77),
(178, 'asda', '0000-00-00', '177.00', 0, 78),
(179, 'asda', '0000-00-00', '177.00', 0, 79),
(180, 'asda', '0000-00-00', '177.00', 0, 80),
(181, 'asda', '0000-00-00', '177.00', 0, 81),
(182, 'asda', '0000-00-00', '177.00', 0, 82),
(183, 'asda', '0000-00-00', '177.00', 0, 83),
(184, 'asda', '0000-00-00', '177.00', 0, 84),
(185, 'asda', '0000-00-00', '177.00', 0, 85),
(186, 'asda', '0000-00-00', '177.00', 0, 86),
(187, 'asda', '0000-00-00', '177.00', 0, 87),
(188, 'asda', '0000-00-00', '177.00', 0, 88),
(189, 'asda', '0000-00-00', '177.00', 0, 89),
(190, 'asda', '0000-00-00', '177.00', 0, 90),
(191, 'asda', '0000-00-00', '177.00', 0, 91),
(192, 'asda', '0000-00-00', '177.00', 0, 92),
(193, 'asda', '0000-00-00', '177.00', 0, 93),
(194, 'asda', '0000-00-00', '177.00', 0, 94),
(195, 'asda', '0000-00-00', '177.00', 0, 95),
(196, 'asda', '0000-00-00', '177.00', 0, 96),
(197, 'asda', '0000-00-00', '177.00', 0, 97),
(198, 'asda', '0000-00-00', '177.00', 0, 98),
(199, 'asda', '0000-00-00', '177.00', 0, 99),
(200, 'asda', '0000-00-00', '177.00', 0, 100),
(201, 'asda', '0000-00-00', '177.00', 0, 101),
(202, 'asda', '0000-00-00', '177.00', 0, 102);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `daireler`
--

DROP TABLE IF EXISTS `daireler`;
CREATE TABLE IF NOT EXISTS `daireler` (
  `daire_id` int NOT NULL AUTO_INCREMENT,
  `blok_adi` varchar(10) DEFAULT NULL,
  `daire_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`daire_id`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `daireler`
--

INSERT INTO `daireler` (`daire_id`, `blok_adi`, `daire_no`) VALUES
(14, 'A', '1'),
(15, 'A', '1'),
(16, 'A', '2'),
(17, 'A', '3'),
(18, 'A', '4'),
(19, 'A', '5'),
(20, 'A', '6'),
(21, 'A', '7'),
(22, 'A', '8'),
(23, 'A', '9'),
(24, 'A', '10'),
(25, 'A', '11'),
(26, 'A', '12'),
(27, 'A', '13'),
(28, 'A', '14'),
(29, 'A', '15'),
(30, 'A', '16'),
(31, 'A', '17'),
(32, 'A', '18'),
(33, 'A', '19'),
(34, 'A', '20'),
(35, 'B', '1'),
(36, 'B', '2'),
(37, 'B', '3'),
(38, 'B', '4'),
(39, 'B', '5'),
(40, 'B', '6'),
(41, 'B', '7'),
(42, 'B', '8'),
(43, 'B', '9'),
(44, 'B', '10'),
(45, 'B', '11'),
(46, 'B', '12'),
(47, 'B', '13'),
(48, 'B', '14'),
(49, 'B', '15'),
(50, 'B', '16'),
(51, 'B', '17'),
(52, 'B', '18'),
(53, 'B', '19'),
(54, 'B', '20'),
(55, 'C', '1'),
(56, 'C', '2'),
(57, 'C', '3'),
(58, 'C', '4'),
(59, 'C', '5'),
(60, 'C', '6'),
(61, 'C', '7'),
(62, 'C', '8'),
(63, 'C', '9'),
(64, 'C', '10'),
(65, 'C', '11'),
(66, 'C', '12'),
(67, 'C', '13'),
(68, 'C', '14'),
(69, 'C', '15'),
(70, 'C', '16'),
(71, 'C', '17'),
(72, 'C', '18'),
(73, 'C', '19'),
(74, 'C', '20'),
(75, 'D', '1'),
(76, 'D', '2'),
(77, 'D', '3'),
(78, 'D', '4'),
(79, 'D', '5'),
(80, 'D', '6'),
(81, 'D', '7'),
(82, 'D', '8'),
(83, 'D', '9'),
(84, 'D', '10'),
(85, 'D', '11'),
(86, 'D', '12'),
(87, 'D', '13'),
(88, 'D', '14'),
(89, 'D', '15'),
(90, 'D', '16'),
(91, 'D', '17'),
(92, 'D', '18'),
(93, 'D', '19'),
(94, 'D', '20'),
(95, 'A', '20'),
(96, 'A', '20'),
(97, 'A', '20'),
(98, 'A', '20'),
(99, 'A', '20'),
(100, 'A', '20'),
(101, 'A', '20'),
(102, 'A', '202');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `daire_sakinleri`
--

DROP TABLE IF EXISTS `daire_sakinleri`;
CREATE TABLE IF NOT EXISTS `daire_sakinleri` (
  `sakin_id` int NOT NULL AUTO_INCREMENT,
  `ad_soyad` varchar(255) DEFAULT NULL,
  `tc_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `daire_id` int DEFAULT NULL,
  `sakin_turu` enum('Daire Sahibi','Kiracı') NOT NULL,
  PRIMARY KEY (`sakin_id`),
  KEY `daire_id` (`daire_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `daire_sakinleri`
--

INSERT INTO `daire_sakinleri` (`sakin_id`, `ad_soyad`, `tc_no`, `telefon`, `daire_id`, `sakin_turu`) VALUES
(9, 'aytuğ talha uzun', '1122334455667780', '949392029', 9, 'Daire Sahibi'),
(10, 'kasım tekdemir', '1231231212312', '12312312312', 11, 'Daire Sahibi'),
(12, '123', 'asdasdasdasd', 'sdasdasd', 102, ''),
(13, '123', 'asdasdasdasd', 'sdasdasd', 102, ''),
(14, '123', 'asdasdasdasd', 'sdasdasd', 102, ''),
(15, '123', 'asdasdasdasd', 'sdasdasd', 102, ''),
(16, '123', 'asdasdasdasd', 'sdasdasd', 102, ''),
(17, '123', 'asdasdasdasd', 'sdasdasd', 102, ''),
(18, '123', 'asdasdasdasd', 'sdasdasd', 102, ''),
(19, 'aytuğ', '227342342342', '5522313180', 101, ''),
(20, 'aytuğ', '227342342342', '5522313180', 101, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `destek_talepleri`
--

DROP TABLE IF EXISTS `destek_talepleri`;
CREATE TABLE IF NOT EXISTS `destek_talepleri` (
  `talep_id` int NOT NULL AUTO_INCREMENT,
  `talep_basligi` varchar(255) DEFAULT NULL,
  `talep_metni` text,
  `talep_tarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gonderen` varchar(59) NOT NULL,
  PRIMARY KEY (`talep_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `destek_talepleri`
--

INSERT INTO `destek_talepleri` (`talep_id`, `talep_basligi`, `talep_metni`, `talep_tarihi`, `gonderen`) VALUES
(6, 'asdasd', 'asdasdasdasdasd', '2023-10-13 15:33:44', 'asdasdasd'),
(9, 'asdasdasdasdasd', '123123123123', '0000-00-00 00:00:00', ''),
(10, 'asdasdasdasd', 'asdasdasdasdasd', '0000-00-00 00:00:00', ''),
(11, 'asdasd', 'asdasdasd', '0000-00-00 00:00:00', ''),
(12, 'asdasdasd', 'asdasdasdasd', '0000-00-00 00:00:00', 'aytuguzun4@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `duyurular`
--

DROP TABLE IF EXISTS `duyurular`;
CREATE TABLE IF NOT EXISTS `duyurular` (
  `duyuru_id` int NOT NULL AUTO_INCREMENT,
  `duyuru_basligi` varchar(255) DEFAULT NULL,
  `duyuru_metni` text,
  `duyuru_tarihi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`duyuru_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `duyurular`
--

INSERT INTO `duyurular` (`duyuru_id`, `duyuru_basligi`, `duyuru_metni`, `duyuru_tarihi`) VALUES
(11, 'beryda', 'asdasdasdasdasd', '2023-10-13 14:04:16'),
(13, 'asd', 'asdasdasd', '2023-10-13 16:46:30'),
(14, 'e23423er', '123123123123123', '2023-10-13 16:46:40');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlikler`
--

DROP TABLE IF EXISTS `etkinlikler`;
CREATE TABLE IF NOT EXISTS `etkinlikler` (
  `id` int NOT NULL AUTO_INCREMENT,
  `etkinlik_tarihi` date DEFAULT NULL,
  `etkinlik_adi` varchar(255) DEFAULT NULL,
  `aciklama` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `etkinlikler`
--

INSERT INTO `etkinlikler` (`id`, `etkinlik_tarihi`, `etkinlik_adi`, `aciklama`) VALUES
(6, '2023-10-10', 'asdfasd', 'asdasdasdasd'),
(4, '2023-10-02', 'çeto', 'çeto'),
(5, '2023-10-02', 'asdasd', 'asdasdasd'),
(7, '2023-10-13', 'asdfasd', 'asdasdasdasd'),
(8, '2023-10-12', 'asdfasd', 'asdasdasdasd');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `end`) VALUES
(22, 'erfdas', '2023-10-06', '2023-10-07');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelirler`
--

DROP TABLE IF EXISTS `gelirler`;
CREATE TABLE IF NOT EXISTS `gelirler` (
  `gelir_id` int NOT NULL AUTO_INCREMENT,
  `aciklama` varchar(255) DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  `tutar` decimal(10,2) DEFAULT NULL,
  `kategori_id` int DEFAULT NULL,
  PRIMARY KEY (`gelir_id`),
  KEY `fk_gelir_kategorisi` (`kategori_id`)
) ENGINE=MyISAM AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `gelirler`
--

INSERT INTO `gelirler` (`gelir_id`, `aciklama`, `tarih`, `tutar`, `kategori_id`) VALUES
(258, 'Daireye ait aidat ödemesi', '2023-09-14', '500.00', NULL),
(257, 'Daireye ait aidat ödemesi', '2023-09-14', '40.00', NULL),
(256, 'Daireye ait aidat ödemesi', '2023-09-12', '500.00', NULL),
(255, 'Daireye ait aidat ödemesi', '2023-09-12', '40.00', NULL),
(254, 'Daireye ait aidat ödemesi', '2023-09-11', '500.00', NULL),
(253, 'Daireye ait aidat ödemesi', '2023-09-11', '40.00', NULL),
(252, 'Daireye ait aidat ödemesi', '2023-09-08', '500.00', NULL),
(251, 'Daireye ait aidat ödemesi', '2023-09-08', '40.00', NULL),
(259, 'Daireye ait aidat ödemesi', '2023-10-05', '200.00', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelir_kategorileri`
--

DROP TABLE IF EXISTS `gelir_kategorileri`;
CREATE TABLE IF NOT EXISTS `gelir_kategorileri` (
  `kategori_id` int NOT NULL AUTO_INCREMENT,
  `kategori_adi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `giderler`
--

DROP TABLE IF EXISTS `giderler`;
CREATE TABLE IF NOT EXISTS `giderler` (
  `gider_id` int NOT NULL AUTO_INCREMENT,
  `aciklama` varchar(255) DEFAULT NULL,
  `son_odeme_tarihi` date DEFAULT NULL,
  `odenen_tutar` decimal(10,2) DEFAULT NULL,
  `odeme_durumu` tinyint(1) DEFAULT NULL,
  `kategori_id` int DEFAULT NULL,
  `fatura_foto` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`gider_id`),
  KEY `kategori_id` (`kategori_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `giderler`
--

INSERT INTO `giderler` (`gider_id`, `aciklama`, `son_odeme_tarihi`, `odenen_tutar`, `odeme_durumu`, `kategori_id`, `fatura_foto`) VALUES
(6, 'Toplam Personel Maaşı', '2023-10-13', '4547901.00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gider_kategorileri`
--

DROP TABLE IF EXISTS `gider_kategorileri`;
CREATE TABLE IF NOT EXISTS `gider_kategorileri` (
  `kategori_id` int NOT NULL AUTO_INCREMENT,
  `kategori_adi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `gider_kategorileri`
--

INSERT INTO `gider_kategorileri` (`kategori_id`, `kategori_adi`) VALUES
(4, NULL),
(5, 'maaş');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hesaplar`
--

DROP TABLE IF EXISTS `hesaplar`;
CREATE TABLE IF NOT EXISTS `hesaplar` (
  `hesap_id` int NOT NULL AUTO_INCREMENT,
  `daire_id` int NOT NULL,
  `hesap_turu` varchar(255) DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sifre` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `aktivasyon_kodu` int DEFAULT NULL,
  `hesap_onay` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reset_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hesap_id`),
  KEY `daire_id` (`daire_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `hesaplar`
--

INSERT INTO `hesaplar` (`hesap_id`, `daire_id`, `hesap_turu`, `email`, `sifre`, `aktivasyon_kodu`, `hesap_onay`, `created_at`, `reset_token`) VALUES
(9, 9, '1', 'aytuguzun4@gmail.com', '123123', 307954, 1, '2023-09-21 12:19:59', NULL),
(10, 11, '0', 'asdsdasd@mail.com', '123123', NULL, 1, '2023-09-22 09:44:00', NULL),
(12, 102, NULL, 'asdasdasd', 'asdasdasdasd', NULL, NULL, '2023-10-11 13:24:52', NULL),
(13, 102, NULL, 'asdasdasd', 'asdasdasdasd', NULL, NULL, '2023-10-11 13:24:52', NULL),
(14, 102, NULL, 'asdasdasd', 'asdasdasdasd', NULL, NULL, '2023-10-11 13:47:27', NULL),
(15, 102, NULL, 'asdasdasd', 'asdasdasdasd', NULL, NULL, '2023-10-11 13:47:27', NULL),
(16, 102, NULL, 'asdasdasd', 'asdasdasdasd', NULL, NULL, '2023-10-11 13:47:37', NULL),
(17, 102, NULL, 'asdasdasd', 'asdasdasdasd', NULL, NULL, '2023-10-11 13:47:37', NULL),
(18, 102, NULL, 'asdasdasd', 'asdasdasdasd', NULL, NULL, '2023-10-11 13:47:39', NULL),
(19, 101, NULL, 'byddbck@mail.com', '123123', NULL, NULL, '2023-10-11 13:51:38', NULL),
(20, 101, NULL, 'byddbck@mail.com', '123123', NULL, NULL, '2023-10-11 13:51:39', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kasalar`
--

DROP TABLE IF EXISTS `kasalar`;
CREATE TABLE IF NOT EXISTS `kasalar` (
  `kasa_id` int NOT NULL AUTO_INCREMENT,
  `kasa_adi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  `bakiye` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`kasa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `kasalar`
--

INSERT INTO `kasalar` (`kasa_id`, `kasa_adi`, `tarih`, `bakiye`) VALUES
(1, 'main', '2023-09-14', '2360.00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `personel`
--

DROP TABLE IF EXISTS `personel`;
CREATE TABLE IF NOT EXISTS `personel` (
  `personel_id` int NOT NULL AUTO_INCREMENT,
  `ad_soyad` varchar(255) DEFAULT NULL,
  `pozisyon` varchar(100) DEFAULT NULL,
  `kimlik_no` varchar(20) DEFAULT NULL,
  `telefon` varchar(20) DEFAULT NULL,
  `eposta` varchar(100) DEFAULT NULL,
  `maas` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`personel_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `personel`
--

INSERT INTO `personel` (`personel_id`, `ad_soyad`, `pozisyon`, `kimlik_no`, `telefon`, `eposta`, `maas`) VALUES
(3, '123123a', '123', '123123', '123123123', NULL, '100.00'),
(4, 'asd', '323', '323', '2323', 'asdasdasdasdasd', '12.00'),
(6, 'aytuğ uzun', 'amele', '123123', 'asdasdasd', NULL, '222.00'),
(7, 'aytuğ uzun', 'amele', '321312asd', '2313', NULL, '2222.00'),
(9, 'aytuğ uzun', 'asdasdasdasd', 'asdasdasdasdasd', 'asdasdasdasd', '123123.00', '4545345.00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `profiller`
--

DROP TABLE IF EXISTS `profiller`;
CREATE TABLE IF NOT EXISTS `profiller` (
  `profil_id` int NOT NULL AUTO_INCREMENT,
  `ad_soyad` varchar(255) NOT NULL,
  `telefon` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tc_no` varchar(11) DEFAULT NULL,
  `daire_id` int DEFAULT NULL,
  PRIMARY KEY (`profil_id`),
  KEY `daire_id` (`daire_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `website_ayarlari`
--

DROP TABLE IF EXISTS `website_ayarlari`;
CREATE TABLE IF NOT EXISTS `website_ayarlari` (
  `ayar_id` int NOT NULL AUTO_INCREMENT,
  `site_basligi` varchar(255) DEFAULT NULL,
  `site_logosu` varchar(30) NOT NULL,
  `site_aciklamasi` text,
  `email_adresi` varchar(100) DEFAULT NULL,
  `telefon_numarasi` varchar(20) DEFAULT NULL,
  `ana_sayfa_mesaji` text,
  `sosyal_medya_linkleri` text,
  PRIMARY KEY (`ayar_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Tablo döküm verisi `website_ayarlari`
--

INSERT INTO `website_ayarlari` (`ayar_id`, `site_basligi`, `site_logosu`, `site_aciklamasi`, `email_adresi`, `telefon_numarasi`, `ana_sayfa_mesaji`, `sosyal_medya_linkleri`) VALUES
(1, 'Site Yönetimi', 'uploads/site_logo.png', 'Site Yönetimi', 'siteyonetimi@email.com', '546454654654', 'Site Yönetimi', 'instagram facebook linkedin');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `website_yetkileri`
--

DROP TABLE IF EXISTS `website_yetkileri`;
CREATE TABLE IF NOT EXISTS `website_yetkileri` (
  `yetki_id` int NOT NULL AUTO_INCREMENT,
  `yetki_adi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`yetki_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yetkilendirme`
--

DROP TABLE IF EXISTS `yetkilendirme`;
CREATE TABLE IF NOT EXISTS `yetkilendirme` (
  `yetki_id` int NOT NULL AUTO_INCREMENT,
  `kullanici_id` int DEFAULT NULL,
  `yetki_adi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`yetki_id`),
  KEY `kullanici_id` (`kullanici_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
