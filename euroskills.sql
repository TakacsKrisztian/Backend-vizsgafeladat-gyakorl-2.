-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 07. 08:36
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `euroskills`
--
CREATE DATABASE IF NOT EXISTS `euroskills` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `euroskills`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orszag`
--
-- Létrehozva: 2024. Feb 29. 09:16
-- Utolsó frissítés: 2024. Feb 29. 09:21
--

DROP TABLE IF EXISTS `orszag`;
CREATE TABLE `orszag` (
  `id` varchar(2) NOT NULL,
  `orszagNev` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- TÁBLA KAPCSOLATAI `orszag`:
--

--
-- A tábla adatainak kiíratása `orszag`
--

INSERT INTO `orszag` (`id`, `orszagNev`) VALUES
('AT', 'Ausztria'),
('BA', 'Bosznia-Hercegovina'),
('BE', 'Belgium'),
('BG', 'Bulgária'),
('BY', 'Fehéroroszország'),
('CH', 'Svájc'),
('CY', 'Ciprus'),
('CZ', 'Csehország'),
('DE', 'Németország'),
('DK', 'Dánia'),
('EE', 'Észtország'),
('ES', 'Spanyolország'),
('FI', 'Finnország'),
('FR', 'Franciaország'),
('GB', 'Egyesült Királyság'),
('GR', 'Görögország'),
('HR', 'Horvátország'),
('HU', 'Magyarország'),
('IE', 'Írország'),
('IS', 'Izland'),
('IT', 'Olaszország'),
('KZ', 'Kazahsztán'),
('LI', 'Liechtenstein'),
('LT', 'Litvánia'),
('LU', 'Luxemburg'),
('LV', 'Lettország'),
('MC', 'Monaco'),
('ME', 'Montenegró'),
('MT', 'Málta'),
('NL', 'Hollandia'),
('NO', 'Norvégia'),
('NR', 'Németország'),
('PH', 'Fülöp-szigetek'),
('PL', 'Lengyelország'),
('PT', 'Portugália'),
('RO', 'Románia'),
('RS', 'Szerbia'),
('RU', 'Oroszország'),
('SE', 'Svédország'),
('SI', 'Szlovénia'),
('SK', 'Szlovákia'),
('TR', 'Törökország'),
('UA', 'Ukrajna');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szakma`
--
-- Létrehozva: 2024. Feb 29. 09:14
-- Utolsó frissítés: 2024. Feb 29. 09:21
--

DROP TABLE IF EXISTS `szakma`;
CREATE TABLE `szakma` (
  `id` varchar(2) NOT NULL,
  `szakmaNev` varchar(31) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- TÁBLA KAPCSOLATAI `szakma`:
--

--
-- A tábla adatainak kiíratása `szakma`
--

INSERT INTO `szakma` (`id`, `szakmaNev`) VALUES
('04', 'Mechatronika '),
('05', 'Gépészeti tervező - CAD'),
('07', 'CNC maró'),
('08', 'Kőfaragó'),
('10', 'Hegesztő'),
('12', 'Hidegburkoló'),
('15', 'Víz-, gáz- és fűtésszerelő '),
('16', 'Elektronikai műszerész'),
('17', 'Webfejlesztő '),
('18', 'Villanyszerelő'),
('19', 'Elektronikai technikus'),
('20', 'Kőműves'),
('21', 'Szárazépítő'),
('22', 'Festő, díszítőfestő'),
('23', 'Mobil robotika'),
('24', 'Bútorasztalos'),
('25', 'Épületasztalos'),
('28', 'Virágkötő'),
('29', 'Fodrász '),
('30', 'Szépségápoló'),
('31', 'Ruhaipari technikus'),
('33', 'Autószerelő'),
('34', 'Szakács'),
('35', 'Pincér'),
('38', 'Hűtő- és légtechnikai szerelő'),
('39', 'Informatikai rendszerüzemeltető'),
('40', 'Grafikus'),
('41', 'Ápolás és gondozás'),
('44', 'Dekoratőr, kirakattervező'),
('49', 'Bádogos'),
('50', 'Melegburkoló'),
('51', 'Kertépítő'),
('53', 'Nehézgépszerelő'),
('54', 'Tehergépjármű szerelő'),
('57', 'Szállodai recepciós'),
('D1', 'Pék'),
('D3', 'Betonszerkezet építő');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `versenyzo`
--
-- Létrehozva: 2024. Feb 29. 09:16
-- Utolsó frissítés: 2024. Már 07. 07:32
--

DROP TABLE IF EXISTS `versenyzo`;
CREATE TABLE `versenyzo` (
  `id` int(11) NOT NULL,
  `nev` varchar(31) NOT NULL,
  `szakmaid` varchar(2) NOT NULL,
  `orszagid` varchar(2) NOT NULL,
  `pont` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- TÁBLA KAPCSOLATAI `versenyzo`:
--   `szakmaid`
--       `szakma` -> `id`
--   `orszagid`
--       `orszag` -> `id`
--

--
-- A tábla adatainak kiíratása `versenyzo`
--

INSERT INTO `versenyzo` (`id`, `nev`, `szakmaid`, `orszagid`, `pont`) VALUES
(0, 'TesztNev', '17', 'HU', 96),
(1, 'Aleksandr Arapov', '04', 'RU', 722),
(2, 'Aleksey Klimkov', '04', 'KZ', 614),
(3, 'Benedikt Gabat', '04', 'AT', 680),
(4, 'Danny Slater', '04', 'GB', 711),
(5, 'Diego Orellana', '04', 'ES', 639),
(6, 'Emanuel Näslund', '04', 'SE', 698),
(7, 'Espen Brandtzæg Godo', '04', 'NO', 708),
(8, 'Jack Dakin', '04', 'GB', 711),
(9, 'Jasper van Kol', '04', 'NL', 707),
(10, 'Jure Kmetic', '04', 'SI', 680),
(11, 'Jure Korbar', '04', 'SI', 680),
(12, 'Kristóf Balázs Sipos', '04', 'HU', 725),
(13, 'Maksim Aksenov', '04', 'RU', 722),
(14, 'Mateusz Dabrowski', '04', 'PL', 632),
(15, 'Maximilian Schindlbauer', '04', 'AT', 680),
(16, 'Miroslav Visnevskij', '04', 'LT', 629),
(17, 'Niklas Ekelöw', '04', 'SE', 698),
(18, 'Pedro Simoes', '04', 'PT', 702),
(19, 'Philipp Seitz', '04', 'NR', 703),
(20, 'Przemyslaw Krasnodebski', '04', 'PL', 632),
(21, 'Rick Jooren', '04', 'NL', 707),
(22, 'Sergio Calvo', '04', 'ES', 639),
(23, 'Sonia Caetano', '04', 'PT', 702),
(24, 'Thomas Kausler', '04', 'NR', 703),
(25, 'Vilgelm Limanskiy', '04', 'KZ', 614),
(26, 'Vinjar Vederhus', '04', 'NO', 708),
(27, 'Vitas Kapustinskis', '04', 'LT', 629),
(28, 'Zoltán Takács', '04', 'HU', 725),
(29, 'Adrien Mary', '05', 'FR', 735),
(30, 'Albert Mineev', '05', 'RU', 738),
(31, 'Francisco Oliveira', '05', 'PT', 713),
(32, 'Ike Vermeulen', '05', 'NL', 695),
(33, 'Iker Borde', '05', 'ES', 673),
(34, 'Lucas Scholzen', '05', 'BE', 700),
(35, 'Ross Megahy', '05', 'GB', 717),
(36, 'Theo Zemack', '05', 'SE', 680),
(37, 'Yerkebulan Sultangaliyev', '05', 'KZ', 648),
(38, 'Alexandre Clarens', '07', 'FR', 714),
(39, 'Andreas Hauser', '07', 'AT', 721),
(40, 'Anton Ala-Englund', '07', 'SE', 701),
(41, 'Elliott Dawson', '07', 'GB', 699),
(42, 'Geoffrey Vandenhove', '07', 'BE', 671),
(43, 'Mikhail Vorontcov', '07', 'RU', 734),
(44, 'Norbert Varga', '07', 'HU', 660),
(45, 'Raúl Fernandez', '07', 'ES', 669),
(46, 'Robert Liebeskind', '07', 'NR', 715),
(47, 'Rui Carvalho', '07', 'PT', 718),
(48, 'Stefan Duric', '07', 'HR', 657),
(49, 'Teun Olthuis', '07', 'NL', 680),
(50, 'Aaron Weisser', '08', 'NR', 587),
(51, 'Dominik Gabelica', '08', 'HR', 642),
(52, 'Ilmari Manner', '08', 'FI', 484),
(53, 'Krisztián Balogh', '08', 'HU', 708),
(54, 'Michael Egli', '08', 'CH', 720),
(55, 'Quentin Wollenschneider', '08', 'FR', 704),
(56, 'Robert Moser', '08', 'AT', 717),
(57, 'Tilen Meglic', '08', 'SI', 700),
(58, 'Timofei Darmograi', '08', 'RU', 610),
(59, 'Andre Pedrosa', '10', 'PT', 696),
(60, 'Axel Gustafsson', '10', 'SE', 697),
(61, 'Brenda Vermeiren', '10', 'BE', 716),
(62, 'Dániel Zaja', '10', 'HU', 720),
(63, 'Demetris Koumparou', '10', 'CY', 649),
(64, 'Dylan Alexandre', '10', 'FR', 707),
(65, 'Fernando Gonzalez', '10', 'ES', 673),
(66, 'Finnur Ingi Harrysson', '10', 'IS', 663),
(67, 'Hugo Rijsman', '10', 'NL', 717),
(68, 'Jon Aarne Hjelmstadbakk', '10', 'NO', 723),
(69, 'Kasparas Martinkenas', '10', 'LT', 640),
(70, 'Madi Omar', '10', 'KZ', 639),
(71, 'Miika Viitala', '10', 'FI', 694),
(72, 'Scott Kerr', '10', 'GB', 703),
(73, 'Thomas Käferböck', '10', 'AT', 716),
(74, 'Vladimir Baboshkin', '10', 'RU', 739),
(75, 'Agnes Grandin', '12', 'SE', 692),
(76, 'Cedrik Knöpfle', '12', 'NR', 724),
(77, 'Daniil Shmydov', '12', 'RU', 720),
(78, 'Danijs Slugovics', '12', 'LV', 655),
(79, 'Joost Podekrat', '12', 'EE', 691),
(80, 'Julien Martinet', '12', 'FR', 735),
(81, 'Marco Erhart', '12', 'AT', 721),
(82, 'Mark Scott', '12', 'GB', 697),
(83, 'Maxime Dengis', '12', 'BE', 703),
(84, 'Sabyrzhan Duisenbekov', '12', 'KZ', 638),
(85, 'Samuel Birk Axelsen', '12', 'DK', 728),
(86, 'Toon Hesius', '12', 'NL', 684),
(87, 'Ádám Miklós', '15', 'HU', 669),
(88, 'Aibek Minuarbek', '15', 'KZ', 515),
(89, 'Florian Schwarzenauer', '15', 'AT', 720),
(90, 'Joe Schreiber', '15', 'LU', 650),
(91, 'Joris Vernadet', '15', 'FR', 710),
(92, 'Julian van Lohuizen', '15', 'NL', 702),
(93, 'Matthew Barton', '15', 'GB', 700),
(94, 'Nikola Mikus', '15', 'HR', 525),
(95, 'Paul-Florian Schärschmidt', '15', 'NR', 716),
(96, 'Samuel Torres', '15', 'ES', 648),
(97, 'Vadim Popov', '15', 'RU', 703),
(98, 'Asbjorn Edvaldsson', '16', 'IS', 710),
(99, 'Christof Hinterleitner', '16', 'AT', 666),
(100, 'Dmitriy Vinokurov', '16', 'KZ', 554),
(101, 'Evgenii Pliusnin', '16', 'RU', 698),
(102, 'Joonatan Kivelä', '16', 'FI', 702),
(103, 'Miroslav Chalko', '16', 'SK', 730),
(104, 'Abusufean Ali', '17', 'AT', 680),
(105, 'Ákos Balogh', '17', 'HU', 723),
(106, 'Alexandr Davydov', '17', 'KZ', 682),
(107, 'David Sohl', '17', 'SE', 698),
(108, 'Edgaras Pangonis', '17', 'LT', 629),
(109, 'Gilles Granger', '17', 'FR', 720),
(110, 'Gustavs Racenajs', '17', 'LV', 717),
(111, 'Ivan Dumancic', '17', 'HR', 679),
(112, 'Joel Koch', '17', 'FI', 716),
(113, 'Konstantin Larin', '17', 'RU', 741),
(114, 'Lewis Newton', '17', 'GB', 669),
(115, 'Martina Pitakova', '17', 'SK', 712),
(116, 'Mike Beskers', '17', 'NL', 703),
(117, 'Noah Nöthling', '17', 'NR', 347),
(118, 'Robert Lara', '17', 'ES', 702),
(119, 'Thomas Claude', '17', 'BE', 650),
(120, 'Aleksejs Tarasovs', '18', 'LV', 695),
(121, 'Alexandr Kondratyev', '18', 'KZ', 656),
(122, 'Daniel Gerber', '18', 'CH', 796),
(123, 'Diana Reuter', '18', 'NR', 768),
(124, 'Egor Svalov', '18', 'RU', 729),
(125, 'Emmy Åberg', '18', 'SE', 658),
(126, 'Florian Evrard', '18', 'BE', 714),
(127, 'Jasper Olthuis', '18', 'NL', 719),
(128, 'Jon Thor Einarsson', '18', 'IS', 700),
(129, 'Péter Leidl', '18', 'HU', 748),
(130, 'Ricardo Silva', '18', 'PT', 680),
(131, 'Sakari Luukkonen', '18', 'FI', 697),
(132, 'Ståle Brå', '18', 'NO', 751),
(133, 'Thomas Lewis', '18', 'GB', 699),
(134, 'Víctor Terrazas', '18', 'ES', 693),
(135, 'Amaury Bertrand', '19', 'FR', 680),
(136, 'Fabienne Chartier', '19', 'BE', 637),
(137, 'Martin Lindelöw', '19', 'SE', 723),
(138, 'Max Meusburger', '19', 'AT', 718),
(139, 'Nahuel Arce-Leal Diaz', '19', 'ES', 580),
(140, 'René Hässelbarth', '19', 'NR', 605),
(141, 'Rui Martins', '19', 'PT', 700),
(142, 'Samu Lahti', '19', 'FI', 705),
(143, 'Vladislav Grachev', '19', 'RU', 701),
(144, 'Adam Kristensson', '20', 'SE', 689),
(145, 'Ádám Zoltán Hédl', '20', 'HU', 702),
(146, 'Bartosz Trocha', '20', 'PL', 653),
(147, 'Christoph Rapp', '20', 'NR', 725),
(148, 'Jordan Van-Akelyen', '20', 'BE', 689),
(149, 'Kenneth Meldgaard Ebbesen', '20', 'DK', 719),
(150, 'Marc Berndorfer', '20', 'AT', 722),
(151, 'Petar Svilic', '20', 'HR', 674),
(152, 'Rakhat Makhan', '20', 'KZ', 662),
(153, 'Sergei Kherkun', '20', 'RU', 709),
(154, 'Stefan Hersche', '20', 'CH', 716),
(155, 'Tim Klessens', '20', 'NL', 713),
(156, 'Vincenzo Ferro', '20', 'IT', 660),
(157, 'Willy Fourrier', '20', 'FR', 698),
(158, 'Alexander Schmidt', '21', 'NR', 724),
(159, 'Araz Emirov', '21', 'RU', 711),
(160, 'Bakdaulet Bekbayev', '21', 'KZ', 656),
(161, 'Cariem Dijk', '21', 'NL', 680),
(162, 'Dawid Grodzki', '21', 'PL', 672),
(163, 'Gábor Lóczi', '21', 'HU', 700),
(164, 'Loic Robert', '21', 'FR', 721),
(165, 'Lukas Hofer', '21', 'AT', 713),
(166, 'Lukas Johansson', '21', 'SE', 683),
(167, 'Omar Lo', '21', 'BE', 685),
(168, 'Philippe Bütschi', '21', 'CH', 718),
(169, 'Aljaz Zvokelj', '22', 'SI', 658),
(170, 'Anna Bobylova', '22', 'KZ', 662),
(171, 'Antje Harz', '22', 'NR', 700),
(172, 'Art Arbsuwan', '22', 'SE', 687),
(173, 'Callum Bonner', '22', 'GB', 659),
(174, 'Felix Quinz', '22', 'IT', 712),
(175, 'Lea Meier', '22', 'CH', 726),
(176, 'Olga Iachmeneva', '22', 'RU', 704),
(177, 'Patrick Reitbauer', '22', 'AT', 752),
(178, 'Reetta Härkönen', '22', 'FI', 717),
(179, 'Riko Lorber', '22', 'EE', 679),
(180, 'Rutger van Antwerpen', '22', 'NL', 690),
(181, 'Sabrina Scheen', '22', 'BE', 689),
(182, 'Szabolcs Cseke', '22', 'HU', 731),
(183, 'Yann Miller', '22', 'FR', 720),
(184, 'Alexander Goldhill', '23', 'FI', 689),
(185, 'Andrei Diubanov', '23', 'RU', 768),
(186, 'Cleiton Lima', '23', 'PT', 700),
(187, 'David Andrawes', '23', 'AT', 730),
(188, 'Dragan Todorovic', '23', 'ME', 629),
(189, 'Eetu Silvennoinen', '23', 'FI', 689),
(190, 'Guillaume Gourmelen', '23', 'FR', 700),
(191, 'Markus Pelzl', '23', 'AT', 730),
(192, 'Pavel Fadeev', '23', 'RU', 768),
(193, 'Pedro Pereira', '23', 'PT', 700),
(194, 'Thomas Godel', '23', 'FR', 700),
(195, 'Veljko Kokic', '23', 'ME', 629),
(196, 'Christian Buchegger', '24', 'AT', 713),
(197, 'Corentin Collet', '24', 'BE', 680),
(198, 'Guus van Velthuijsen', '24', 'NL', 700),
(199, 'Isak Lukkarinen', '24', 'FI', 702),
(200, 'Jaka Kozuh', '24', 'SI', 678),
(201, 'Krisztián Simon', '24', 'HU', 720),
(202, 'Martin Retif', '24', 'FR', 702),
(203, 'Mathias Andersson', '24', 'DK', 665),
(204, 'Nikolai Golikov', '24', 'RU', 705),
(205, 'Ricardo Trivino', '24', 'ES', 668),
(206, 'Thomas Pennicott', '24', 'GB', 680),
(207, 'Ádám János Nagy', '25', 'HU', 728),
(208, 'Alexander Haidinger', '25', 'AT', 695),
(209, 'Alexis Nue', '25', 'FR', 718),
(210, 'Christopher Caine', '25', 'GB', 700),
(211, 'Justian Raahauge', '25', 'DK', 701),
(212, 'Pierre Balancier', '25', 'BE', 700),
(213, 'Tadej Kalajzic', '25', 'SI', 669),
(214, 'Throstur Karason', '25', 'IS', 655),
(215, 'Vitalii Bondarenko', '25', 'RU', 721),
(216, 'Beatriz Sanchez', '28', 'ES', 599),
(217, 'Brigita Klinar', '28', 'SI', 706),
(218, 'Dániel Takács', '28', 'HU', 719),
(219, 'Elizabeth Newcombe', '28', 'GB', 705),
(220, 'Elizaveta Shkimbova', '28', 'RU', 722),
(221, 'Esther Weijenberg', '28', 'NL', 693),
(222, 'Josefiina Kivero', '28', 'FI', 728),
(223, 'Kevin Billard', '28', 'FR', 714),
(224, 'Maris Paas', '28', 'EE', 674),
(225, 'Melanie Krenn', '28', 'AT', 713),
(226, 'Ophélie Depotter', '28', 'BE', 677),
(227, 'Peter Morvay', '28', 'SK', 655),
(228, 'Rabiya Kamidova', '28', 'KZ', 650),
(229, 'Sylwia Leszczynska', '28', 'PL', 695),
(230, 'Alexandra Kovács', '29', 'HU', 714),
(231, 'Alix Darles', '29', 'FR', 741),
(232, 'Anna Krontseva', '29', 'RU', 734),
(233, 'Anna Le', '29', 'SE', 686),
(234, 'Christina Hofer', '29', 'AT', 707),
(235, 'Chrysis Tsiapparis', '29', 'CY', 664),
(236, 'Daniel Moniz', '29', 'PT', 658),
(237, 'Dany Korac', '29', 'LU', 674),
(238, 'Florine Capelle', '29', 'BE', 708),
(239, 'Gavin Jon Kyte', '29', 'GB', 720),
(240, 'Karoliina Tolvi', '29', 'FI', 715),
(241, 'Laima Bielskyte', '29', 'LT', 691),
(242, 'Lea Juren', '29', 'HR', 669),
(243, 'Leif Anders Overland', '29', 'NO', 700),
(244, 'Martin Istok', '29', 'SK', 352),
(245, 'Martina Ruzzene', '29', 'IT', 705),
(246, 'Nazira Abdukhalilova', '29', 'KZ', 703),
(247, 'Robert Stachowski', '29', 'PL', 662),
(248, 'Sanne van Overdijk', '29', 'NL', 674),
(249, 'Tomás Rivera', '29', 'ES', 704),
(250, 'Uros Pajovic', '29', 'ME', 640),
(251, 'Alina Waltl', '30', 'AT', 714),
(252, 'Carina Larsen', '30', 'NO', 677),
(253, 'Carla Ribeiro', '30', 'PT', 698),
(254, 'Danae Kyriakou', '30', 'CY', 675),
(255, 'Holly-Mae Cotterell', '30', 'GB', 730),
(256, 'Irina Bykova', '30', 'RU', 727),
(257, 'Ivana Sneujink', '30', 'NL', 691),
(258, 'Jasmin Vuorio', '30', 'FI', 687),
(259, 'Karen Rey', '30', 'ES', 666),
(260, 'Louise Olsson', '30', 'SE', 702),
(261, 'Mylène Calabre', '30', 'FR', 723),
(262, 'Valeria Tschann', '30', 'CH', 717),
(263, 'Viktória Dóra Papp', '30', 'HU', 703),
(264, 'Viviana Gentile', '30', 'IT', 648),
(265, 'Alice Baré', '31', 'BE', 734),
(266, 'Alicia Martinez', '31', 'ES', 678),
(267, 'Beatriz Soares', '31', 'PT', 703),
(268, 'Bozena Turopoljac', '31', 'AT', 741),
(269, 'Bruno Feliciano', '31', 'PT', 703),
(270, 'Elen Tatrik', '31', 'EE', 738),
(271, 'Elina Skrindzevska', '31', 'LV', 749),
(272, 'Evelina Altunian', '31', 'RU', 746),
(273, 'Florence Lassance', '31', 'BE', 734),
(274, 'Ivana Thies', '31', 'NL', 681),
(275, 'Ivett Bákonyi', '31', 'HU', 686),
(276, 'Krisztina Gagyi', '31', 'HU', 686),
(277, 'Laura Kreivina', '31', 'LV', 749),
(278, 'Lorena Conjar', '31', 'HR', 694),
(279, 'Maria Jöbstl', '31', 'AT', 741),
(280, 'Marta Garcia', '31', 'ES', 678),
(281, 'Melissa Kuisma', '31', 'FI', 697),
(282, 'Minni Meisterson', '31', 'EE', 738),
(283, 'Nazerke Taishibayeva', '31', 'KZ', 683),
(284, 'Olesia Budko', '31', 'RU', 746),
(285, 'Reetta Immonen', '31', 'FI', 697),
(286, 'Tena Sumski', '31', 'HR', 694),
(287, 'Tessa Schönhage', '31', 'NL', 681),
(288, 'Yulduz Murzakhmetova', '31', 'KZ', 683),
(289, 'Aivo Alas', '33', 'EE', 675),
(290, 'Alexander Olofsson', '33', 'SE', 700),
(291, 'Andrea Lucato', '33', 'IT', 678),
(292, 'Artem Semenovich', '33', 'KZ', 643),
(293, 'Arttu Kivenmäki', '33', 'FI', 700),
(294, 'Attila Hasza', '33', 'HU', 697),
(295, 'Daniel Stelmach', '33', 'PT', 722),
(296, 'Jon Sindre Lund Gabrielsen', '33', 'NO', 725),
(297, 'Kestas Mockus', '33', 'LT', 716),
(298, 'Klaus Lehmerhofer', '33', 'AT', 756),
(299, 'Maxime Sproten', '33', 'BE', 696),
(300, 'Miguel Paz', '33', 'ES', 700),
(301, 'Nikolai Donchak', '33', 'RU', 730),
(302, 'Nikolai Rölle', '33', 'NR', 712),
(303, 'Sandro Jericevic', '33', 'HR', 681),
(304, 'Vyronas Panayi', '33', 'CY', 673),
(305, 'Aibat Zhalgasbayev', '34', 'KZ', 654),
(306, 'Ana Coelho', '34', 'PT', 694),
(307, 'Francois Eustace', '34', 'FR', 718),
(308, 'Friderika Spekova', '34', 'HU', 678),
(309, 'Gasper Rjavec', '34', 'SI', 700),
(310, 'Ioannis Papakonstantinou', '34', 'CY', 714),
(311, 'Iskandar Slaev', '34', 'RU', 720),
(312, 'Jordan Boreux', '34', 'BE', 700),
(313, 'Kaisla Heimala', '34', 'FI', 723),
(314, 'Kristinn Gisli Jonsson', '34', 'IS', 700),
(315, 'Maciej Pisarek', '34', 'PL', 713),
(316, 'Markus Pärn', '34', 'EE', 697),
(317, 'Michael Ploner', '34', 'AT', 726),
(318, 'Michal Mico', '34', 'SK', 674),
(319, 'Nicolle Finnie', '34', 'GB', 709),
(320, 'Nils Gevele', '34', 'LV', 674),
(321, 'Roy Scheffers', '34', 'NL', 695),
(322, 'Suad Hadzimuhovic', '34', 'ME', 680),
(323, 'Tomas Tarabycinas', '34', 'LT', 656),
(324, 'Toni Grgic', '34', 'HR', 649),
(325, 'Torkil S Helmersen', '34', 'NO', 719),
(326, 'Víctor Melendez', '34', 'ES', 694),
(327, 'Viktor Thulin', '34', 'SE', 731),
(328, 'Anna Meletc', '35', 'RU', 727),
(329, 'Azzurra Boeris', '35', 'IT', 658),
(330, 'Birk Torp', '35', 'NO', 700),
(331, 'Carlos Carmona', '35', 'ES', 735),
(332, 'Clement Gosselin', '35', 'FR', 721),
(333, 'Clément Jacqmain', '35', 'BE', 724),
(334, 'Collette Gorvett', '35', 'GB', 700),
(335, 'Demi Kivilo', '35', 'EE', 700),
(336, 'Dimitrios Flerianos', '35', 'CY', 641),
(337, 'Emin Tiganj', '35', 'SI', 718),
(338, 'Fabienne Bakker', '35', 'NL', 706),
(339, 'Jolanda Edvardsson', '35', 'SE', 698),
(340, 'Katarina Lopicic', '35', 'ME', 641),
(341, 'Madara Minina', '35', 'LV', 695),
(342, 'Monika Pöllabauer', '35', 'AT', 730),
(343, 'Polina Sidelnikova', '35', 'KZ', 618),
(344, 'Sascha Sappada', '35', 'LU', 647),
(345, 'Sigurdur Borgar Olafsson', '35', 'IS', 681),
(346, 'Suvi Minkkinen', '35', 'FI', 716),
(347, 'Viktória Svajda', '35', 'HU', 719),
(348, 'Aleksandr Leushin', '38', 'RU', 698),
(349, 'Dominik Daferner', '38', 'NR', 721),
(350, 'Emanuel Budeanu', '38', 'ES', 725),
(351, 'Francisco Campos', '38', 'PT', 718),
(352, 'Kevin Guillevic', '38', 'FR', 696),
(353, 'Marios Papaneofytou', '38', 'CY', 581),
(354, 'Michael Kraml', '38', 'AT', 702),
(355, 'Vadim Kuzmenko', '38', 'KZ', 571),
(356, 'Alexandre Michel', '39', 'FR', 733),
(357, 'André Pettersson', '39', 'SE', 679),
(358, 'Benjamin Nicodème', '39', 'BE', 683),
(359, 'Cameron Barr', '39', 'GB', 726),
(360, 'Diana Kasabova', '39', 'RU', 749),
(361, 'Filip Boljat', '39', 'HR', 687),
(362, 'Gen Lee', '39', 'EE', 680),
(363, 'Igors Bumanis', '39', 'LV', 700),
(364, 'Jaume Garcia', '39', 'ES', 682),
(365, 'Jose Franco', '39', 'PT', 712),
(366, 'Josip Stanesic', '39', 'HR', 687),
(367, 'Levente Déri', '39', 'HU', 733),
(368, 'Lukas Vavra', '39', 'AT', 740),
(369, 'Luuk Isbouts', '39', 'NL', 685),
(370, 'Martin Dagarin', '39', 'SI', 737),
(371, 'Oscar Latorre', '39', 'ES', 682),
(372, 'Patrick Taibel', '39', 'AT', 740),
(373, 'Paulo Fereira', '39', 'PT', 712),
(374, 'Reini Tammeorg', '39', 'EE', 680),
(375, 'Ricards Trofimovs', '39', 'LV', 700),
(376, 'Romain Mathieu', '39', 'BE', 683),
(377, 'Shane Carpenter', '39', 'GB', 726),
(378, 'Steffen Weißmann', '39', 'NR', 683),
(379, 'Sten van Harten', '39', 'NL', 685),
(380, 'Tamás Orodán', '39', 'HU', 733),
(381, 'Thomas Jullien', '39', 'FR', 733),
(382, 'Thorsten Reichelt', '39', 'NR', 683),
(383, 'Victor Nyberg', '39', 'SE', 679),
(384, 'Vladislav Tetiushkin', '39', 'RU', 749),
(385, 'Ziga Simoncic', '39', 'SI', 737),
(386, 'Aleksandra Valuikina', '40', 'RU', 769),
(387, 'Alexandra Rádi', '40', 'HU', 620),
(388, 'Bruno Lo Rillo', '40', 'IT', 726),
(389, 'Florian Gattermair', '40', 'AT', 730),
(390, 'Haraldur Orn Arnarson', '40', 'IS', 704),
(391, 'Jaagup Susi', '40', 'EE', 693),
(392, 'Jordan Rubens', '40', 'BE', 706),
(393, 'Katrina Elizabete Sile', '40', 'LV', 685),
(394, 'Kirill Kazaku', '40', 'KZ', 539),
(395, 'Manon Sprenkeler', '40', 'NL', 714),
(396, 'Sanna-Sofia Svensk', '40', 'FI', 696),
(397, 'Tomas Nozina', '40', 'SK', 627),
(398, 'Aigul Garipova', '41', 'RU', 690),
(399, 'Aino Takala', '41', 'FI', 715),
(400, 'Dávid Varholik', '41', 'HU', 718),
(401, 'Elisabeth Hölscher', '41', 'NR', 721),
(402, 'Noreelyn Prudencio', '41', 'IT', 679),
(403, 'Patricia Perez', '41', 'ES', 359),
(404, 'Shirley Westerhout', '41', 'NL', 645),
(405, 'Silje Kjærnli', '41', 'NO', 710),
(406, 'Aaron Preyer', '44', 'NL', 715),
(407, 'Ágnes Sárvári', '44', 'HU', 707),
(408, 'Anastasia Raspopova', '44', 'RU', 771),
(409, 'Darya Dubinina', '44', 'KZ', 596),
(410, 'Luize Mihailova', '44', 'LV', 718),
(411, 'Natasa Bukovic', '44', 'SI', 693),
(412, 'Suvi Syrjänen', '44', 'FI', 639),
(413, 'Vendela Lundin Pikner', '44', 'SE', 678),
(414, 'Alva Seljee', '49', 'SE', 667),
(415, 'Antoine Saint', '49', 'FR', 720),
(416, 'Benno Uhlmann', '49', 'NR', 700),
(417, 'Daniil Kovalev', '49', 'RU', 632),
(418, 'Gabriel Haas', '49', 'IT', 711),
(419, 'István Sándor', '49', 'HU', 675),
(420, 'Mark Krause', '49', 'AT', 708),
(421, 'Pascal Gerber', '49', 'CH', 726),
(422, 'Tom Moucheron', '49', 'BE', 697),
(423, 'Andreas Klammer', '50', 'IT', 759),
(424, 'Benjamin Schindelars', '50', 'AT', 724),
(425, 'Emil Bay', '50', 'DK', 480),
(426, 'Hampus Andersson', '50', 'SE', 684),
(427, 'Sergei Chukhno', '50', 'RU', 695),
(428, 'Tony Ferrandez', '50', 'FR', 705),
(429, 'Daniel Pascual', '51', 'ES', 713),
(430, 'Dylan Lekeux', '51', 'BE', 700),
(431, 'Gleb Plakhotnyuk', '51', 'RU', 720),
(432, 'Ilmar Jürisaar', '51', 'EE', 699),
(433, 'Iurii Malchenko', '51', 'RU', 720),
(434, 'Jesper Frederiksen', '51', 'DK', 734),
(435, 'Jochem Molenaar', '51', 'NL', 731),
(436, 'Jonas Menschaert', '51', 'BE', 700),
(437, 'Kjetil Sigurd Marius Schwoch', '51', 'NO', 759),
(438, 'Levente Pap', '51', 'HU', 634),
(439, 'Markus Vainu', '51', 'EE', 699),
(440, 'Márton Pintér', '51', 'HU', 634),
(441, 'Miranda Jonsson Blom', '51', 'SE', 688),
(442, 'Nils Karjetta', '51', 'NO', 759),
(443, 'Patrik Möller', '51', 'SE', 688),
(444, 'Peter Levin', '51', 'DK', 734),
(445, 'Samuel Taylor', '51', 'GB', 658),
(446, 'Sergio Rubio', '51', 'ES', 713),
(447, 'Shea McFerran', '51', 'GB', 658),
(448, 'Ulla Rautanen', '51', 'FI', 697),
(449, 'Veikko Tahvanainen', '51', 'FI', 697),
(450, 'Willem Stougie', '51', 'NL', 731),
(451, 'Dinand Hekman', '53', 'NL', 717),
(452, 'Janis Ozols', '53', 'LV', 706),
(453, 'Manuel Fahrnecker', '53', 'AT', 720),
(454, 'Máté Szerletics', '53', 'HU', 667),
(455, 'Mathias Röstberg', '53', 'SE', 649),
(456, 'Ronni Larsen', '53', 'DK', 704),
(457, 'Simon Rüedi', '53', 'CH', 730),
(458, 'Toni Eckardt', '53', 'NR', 671),
(459, 'Valentin Kireev', '53', 'RU', 689),
(460, 'Viltaiy Kucherenko', '53', 'KZ', 619),
(461, 'Vincent Schaub', '53', 'FR', 700),
(462, 'Andreas Enzensberger', '54', 'NR', 700),
(463, 'Ante Olofsson', '54', 'SE', 645),
(464, 'Kieran Leyland', '54', 'GB', 667),
(465, 'Nicolas Doron', '54', 'FR', 726),
(466, 'Nikolai Larionov', '54', 'RU', 707),
(467, 'Philipp Lackner', '54', 'AT', 680),
(468, 'Tor Oyvind Venemyr Voreland', '54', 'NO', 704),
(469, 'Alex Laine', '57', 'FI', 652),
(470, 'Andrea Picone', '57', 'IT', 701),
(471, 'Anette Johansen', '57', 'NO', 637),
(472, 'Ante Burum', '57', 'HR', 705),
(473, 'Emil Fäldt', '57', 'SE', 719),
(474, 'Jade Jury', '57', 'NL', 697),
(475, 'Liisa Meidla', '57', 'EE', 666),
(476, 'Maxime Cabo', '57', 'BE', 722),
(477, 'Nicoline Rohmann Håkansson', '57', 'DK', 699),
(478, 'Oliver Klocke', '57', 'AT', 716),
(479, 'Tania Alves', '57', 'PT', 672),
(480, 'Vitaliya Iakovenko', '57', 'RU', 750),
(481, 'Gulbanu Yesmadiyarova', 'D1', 'KZ', 667),
(482, 'Hong Ye', 'D1', 'ES', 681),
(483, 'Julia Rumetshofer', 'D1', 'AT', 721),
(484, 'Kati Mikkonen', 'D1', 'FI', 696),
(485, 'Lasse Norup Bentsen', 'D1', 'DK', 739),
(486, 'Lina Andersson', 'D1', 'SE', 749),
(487, 'Marina Arbuzova', 'D1', 'RU', 704),
(488, 'Þórey Lovísa Sigurmundsdóttir', 'D1', 'IS', 694),
(489, 'Andrey Korpachev', 'D3', 'RU', 691),
(490, 'Emil Östberg', 'D3', 'SE', 614),
(491, 'Florian Hochgruber', 'D3', 'IT', 718),
(492, 'Line Biltoft Jepsen', 'D3', 'DK', 677),
(493, 'Markus Haslinger', 'D3', 'AT', 738),
(494, 'Markus Magnusson', 'D3', 'SE', 614),
(495, 'Mathias Kjærgaard Jorgensen', 'D3', 'DK', 677),
(496, 'Medin Murati', 'D3', 'NR', 709),
(497, 'René Pichler', 'D3', 'IT', 718),
(498, 'Sebastian Frantes', 'D3', 'AT', 738),
(499, 'Timo Schön', 'D3', 'NR', 709),
(500, 'Vladislav Ryzhikov', 'D3', 'RU', 691);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `orszag`
--
ALTER TABLE `orszag`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szakma`
--
ALTER TABLE `szakma`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `versenyzo`
--
ALTER TABLE `versenyzo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `szakmaid` (`szakmaid`),
  ADD KEY `orszagid` (`orszagid`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `versenyzo`
--
ALTER TABLE `versenyzo`
  ADD CONSTRAINT `versenyzo_ibfk_1` FOREIGN KEY (`szakmaid`) REFERENCES `szakma` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `versenyzo_ibfk_2` FOREIGN KEY (`orszagid`) REFERENCES `orszag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;


--
-- Metaadat
--
USE `phpmyadmin`;

--
-- A(z) orszag tábla metaadatai
--

--
-- A(z) szakma tábla metaadatai
--

--
-- A(z) versenyzo tábla metaadatai
--

--
-- A(z) euroskills adatbázis metaadatai
--
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
