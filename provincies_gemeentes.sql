-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 25 mrt 2022 om 10:36
-- Serverversie: 8.0.27
-- PHP-versie: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `postcode_nl`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `gemeente`
--

CREATE TABLE `gemeente` (
  `id` int NOT NULL,
  `Naam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ID_provincie` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Gegevens worden geëxporteerd voor tabel `gemeente`
--

INSERT INTO `gemeente` (`id`, `Naam`, `ID_provincie`) VALUES
(1, 'Druten', 1),
(2, 'Amstelveen', 2),
(3, 'Amsterdam', 2),
(4, 'Weststellingwerf', 10),
(5, 'Zutphen', 1),
(6, 'Arnhem', 1),
(7, 'Velsen', 2),
(8, 'Zaanstad', 2),
(9, 'Smallingerland', 3),
(10, 'Roosendaal', 4),
(11, 'Schagen', 2),
(12, 'Aalsmeer', 2),
(13, 'Eindhoven', 4),
(14, 'Geldermalsen', 1),
(15, 'Apeldoorn', 1),
(16, 'Horst aan de Maas', 11),
(17, '\'s-Gravenhage', 6),
(18, 'Lingewaard', 1),
(19, 'Almere', 7),
(20, 'Hengelo', 8),
(21, 'Laarbeek', 4),
(22, 'Nieuwegein', 9),
(23, 'Haarlem', 2),
(24, 'Steenwijkerland', 10),
(25, 'Wijk bij Duurstede', 9),
(26, 'Eijsden-Margraten', 5),
(27, 'Hoogeveen', 10),
(28, 'Breda', 4),
(29, 'Doetinchem', 1),
(30, 'Hendrik-Ido-Ambacht', 6),
(31, 'Cuijk', 4),
(32, 'Best', 4),
(33, 'Haarlemmermeer', 6),
(34, 'Voorschoten', 11),
(35, 'Steenbergen', 4),
(36, 'Uden', 4),
(37, 'Utrecht', 9),
(38, 'Valkenburg aan de Geul', 5),
(39, 'Zoetermeer', 6),
(40, 'Rheden', 1),
(41, 'Rotterdam', 6),
(42, 'Slochteren', 11),
(43, 'Woensdrecht', 4),
(44, 'De Marne', 11),
(45, 'Huizen', 2),
(46, 'Schiedam', 6),
(47, 'Leiden', 6),
(48, 'Leidschendam-Voorburg', 6),
(49, 'Renkum', 1),
(50, 'Lelystad', 7),
(51, 'Utrechtse Heuvelrug', 9),
(52, 'Bodegraven-Reeuwijk', 6),
(53, 'Loppersum', 11),
(54, 'Medemblik', 2),
(55, 'Albrandswaard', 6),
(56, 'Westland', 6),
(57, 'Winsum', 11),
(58, 'Berkelland', 1),
(59, 'Stichtse Vecht', 9),
(60, 'Pekela', 11),
(61, 'Sittard-Geleen', 5),
(62, 'Zwolle', 11),
(63, 'Hollands Kroon', 2),
(64, 'Maasdriel', 5),
(65, 'Sluis', 12),
(66, 'Overbetuwe', 9),
(67, 'Langedijk', 2),
(68, 'Hellevoetsluis', 6),
(69, 'Moerdijk', 4),
(70, 'Kampen', 8),
(71, 'Deventer', 8),
(72, 'Den Helder', 2),
(73, 'Halderberge', 4),
(74, 'Middelburg', 12),
(75, 'Tilburg', 4),
(76, 'Enschede', 8),
(77, 'Soest', 9),
(78, 'Groningen', 11),
(79, 'IJsselstein', 9),
(80, 'Oude IJsselstreek', 1),
(81, 'Veenendaal', 9),
(82, 'Waterland', 2),
(83, 'Terneuzen', 12),
(84, 'Vlaardingen', 6),
(85, 'Hoorn', 3),
(86, 'Hardenberg', 8),
(87, 'Nijmegen', 1),
(88, 'Zuidplas', 11),
(89, 'Bladel', 4),
(90, 'Dongen', 4),
(91, 'Houten', 9),
(92, 'Ede', 1),
(93, 'Beuningen', 1),
(94, 'Beverwijk', 2),
(95, 'Hellendoorn', 8),
(96, 'Maassluis', 6),
(97, 'Landerd', 4),
(98, 'Raalte', 8),
(99, 'Montferland', 1),
(100, 'Goeree-Overflakkee', 9),
(101, 'Heusden', 4),
(102, 'Heerenveen', 3),
(103, 'Tubbergen', 8),
(104, 'Ridderkerk', 6),
(105, 'Giessenlanden', 6),
(106, 'Aa en Hunze', 10),
(107, 'Ommen', 8),
(108, 'Dronten', 7),
(109, 'Zuidhorn', 11),
(110, 'Oegstgeest', 6),
(111, 'Oud-Beijerland', 6),
(112, 'Zeist', 9),
(113, 'Gorinchem', 6),
(114, 'Hilversum', 2),
(115, 'Venray', 5),
(116, 'Tynaarlo', 10),
(117, 'Winterswijk', 1),
(118, 'Veghel', 4),
(119, 'Assen', 10),
(120, 'Tiel', 1),
(121, 'Rijssen-Holten', 8),
(122, 'Werkendam', 4),
(123, 'Bloemendaal', 2),
(124, 'Beek', 5),
(125, 'Heemstede', 2),
(126, 'Twenterand', 8),
(127, 'Goes', 12),
(128, 'Dordrecht', 6),
(129, 'Bergen op Zoom', 4),
(130, 'Katwijk', 6),
(131, 'Maastricht', 5),
(132, 'Montfoort', 9),
(133, 'Etten-Leur', 4),
(134, 'Nijkerk', 1),
(135, 'Emmen', 10),
(136, 'Dalfsen', 8),
(137, 'Zwijndrecht', 6),
(138, 'Waddinxveen', 6),
(139, 'Wormerland', 2),
(140, 'Alphen aan den Rijn', 6),
(141, 'Wageningen', 1),
(142, 'Rucphen', 4),
(143, 'Sliedrecht', 6),
(144, 'Heiloo', 2),
(145, 'Uithoorn', 2),
(146, 'Reusel-De Mierden', 4),
(147, 'Hulst', 12),
(148, 'Nuenen. Gerwen en Nederwetten', 4),
(149, '\'s-Hertogenbosch', 4),
(150, 'Helmond', 4),
(151, 'Hillegom', 6),
(152, 'Boxmeer', 4),
(153, 'Baarle-Nassau', 4),
(154, 'Purmerend', 2),
(155, 'Alkmaar', 2),
(156, 'Reimerswaal', 12),
(157, 'Weert', 5),
(158, 'Barneveld', 9),
(159, 'Amersfoort', 9),
(160, 'Nieuwkoop', 6),
(161, 'Lisse', 6),
(162, 'Brunssum', 5),
(163, 'Zwartewaterland', 8),
(164, 'Roermond', 11),
(165, 'Coevorden', 10),
(166, 'Leudal', 5),
(167, 'Oss', 11),
(168, 'Ermelo', 1),
(169, 'Neder-Betuwe', 1),
(170, 'Lansingerland', 6),
(171, 'De Ronde Venen', 9),
(172, 'Bronckhorst', 1),
(173, 'Brielle', 6),
(174, 'Leeuwarden', 3),
(175, 'Bergeijk', 4),
(176, 'Waalre', 4),
(177, 'Nederweert', 5),
(178, 'Sint-Michielsgestel', 4),
(179, 'Marum', 11),
(180, 'Rijswijk', 6),
(181, 'Haaksbergen', 8),
(182, 'West Maas en Waal', 1),
(183, 'Almelo', 8),
(184, 'Hoogezand-Sappemeer', 11),
(185, 'Goirle', 4),
(186, 'Edam-Volendam', 2),
(187, 'Delft', 6),
(188, 'Oldambt', 11),
(189, 'Lochem', 2),
(190, 'Deurne', 4),
(191, 'Kerkrade', 5),
(192, 'Urk', 7),
(193, 'Epe', 3),
(194, 'Woerden', 9),
(195, 'Noordwijk', 6),
(196, 'Vianen', 9),
(197, 'Gemert-Bakel', 4),
(198, 'Grootegast', 11),
(199, 'Castricum', 2),
(200, 'Baarn', 9),
(201, 'Bernheze', 4),
(202, 'Hof van Twente', 8),
(203, 'Eemnes', 9),
(204, 'Noordenveld', 11),
(205, 'Geldrop-Mierlo', 4),
(206, 'Venlo', 11),
(207, 'Oosterhout', 4),
(208, 'Noord-Beveland', 12),
(209, 'Dongeradeel', 3),
(210, 'Ubbergen', 1),
(211, 'Waalwijk', 4),
(212, 'Westerveld', 10),
(213, 'Meppel', 10),
(214, 'Ameland', 3),
(215, 'Opsterland', 3),
(216, 'Onderbanken', 5),
(217, 'Terschelling', 3),
(218, 'Enkhuizen', 2),
(219, 'Putten', 1),
(220, 'Ooststellingwerf', 10),
(221, 'Stadskanaal', 11),
(222, 'Haren', 11),
(223, 'Gilze en Rijen', 4),
(224, 'Veere', 12),
(225, 'Pijnacker-Nootdorp', 6),
(226, 'Buren', 1),
(227, 'Laren', 9),
(228, 'Harderwijk', 1),
(229, 'Gouda', 6),
(230, 'Kaag en Braassem', 6),
(231, 'Leek', 11),
(232, 'Wijchen', 1),
(233, 'Schouwen-Duiveland', 12),
(234, 'Tholen', 12),
(235, 'Brummen', 1),
(236, 'Zandvoort', 2),
(237, 'Loon op Zand', 4),
(238, 'Vught', 4),
(239, 'Leiderdorp', 6),
(240, 'Franekeradeel', 3),
(241, 'Eemsmond', 11),
(242, 'De Friese Meren', 3),
(243, 'Voorst', 1),
(244, 'De Bilt', 9),
(245, 'Bergen (L.)', 7),
(246, 'Oost Gelre', 1),
(247, 'Papendrecht', 6),
(248, 'Cromstrijen', 6),
(249, 'Maasgouw', 5),
(250, 'Koggenland', 2),
(251, 'Beesel', 5),
(252, 'Teylingen', 6),
(253, 'Renswoude', 9),
(254, 'S+', 3),
(255, 'Peel en Maas', 5),
(256, 'Grave', 4),
(257, 'Capelle aan den IJssel', 6),
(258, 'Heerlen', 5),
(259, 'Geertruidenberg', 4),
(260, 'Wassenaar', 6),
(261, 'Binnenmaas', 6),
(262, 'Nunspeet', 1),
(263, 'Achtkarspelen', 3),
(264, 'Lopik', 9),
(265, 'Voerendaal', 5),
(266, 'Borger-Odoorn', 10),
(267, 'Sint-Oedenrode', 4),
(268, 'De Wolden', 10),
(269, 'Boekel', 4),
(270, 'Boxtel', 4),
(271, 'Rhenen', 9),
(272, 'Delfzijl', 11),
(273, 'Molenwaard', 6),
(274, 'Spijkenisse', 6),
(275, 'Bernisse', 6),
(276, 'Nuth', 5),
(277, 'Vlissingen', 12),
(278, 'Zeewolde', 9),
(279, 'Oisterwijk', 4),
(280, 'Midden-Drenthe', 10),
(281, 'Tytsjerksteradiel', 3),
(282, 'Noordoostpolder', 7),
(283, 'Bussum', 2),
(284, 'Weesp', 2),
(285, 'Bellingwedde', 11),
(286, 'Vlagtwedde', 11),
(287, 'Hilvarenbeek', 4),
(288, 'Bunnik', 9),
(289, 'Barendrecht', 6),
(290, 'Landgraaf', 5),
(291, 'Veldhoven', 4),
(292, 'Oirschot', 4),
(293, 'Zaltbommel', 1),
(294, 'Bunschoten', 9),
(295, 'Lingewaal', 1),
(296, 'Diemen', 2),
(297, 'Leusden', 9),
(298, 'Heeze-Leende', 4),
(299, 'Dantumadiel', 3),
(300, 'Zoeterwoude', 6),
(301, 'Heemskerk', 2),
(302, 'Littenseradiel', 11),
(303, 'Texel', 2),
(304, 'Echt-Susteren', 5),
(305, 'Roerdalen', 5),
(306, 'Harlingen', 3),
(307, 'Zevenaar', 1),
(308, 'Someren', 4),
(309, 'Stein', 5),
(310, 'Alblasserdam', 6),
(311, 'Kollumerland en Nieuwkruisland', 3),
(312, 'Groesbeek', 1),
(313, 'Gennep', 5),
(314, 'Dinkelland', 8),
(315, 'Woudrichem', 4),
(316, 'Veendam', 11),
(317, 'Bergen (NH.)', 2),
(318, 'Aalburg', 12),
(319, 'Heerhugowaard', 2),
(320, 'Krimpen aan den IJssel', 6),
(321, 'Maasdonk', 4),
(322, 'Ouder-Amstel', 2),
(323, 'Oldebroek', 1),
(324, 'Meerssen', 6),
(325, 'Culemborg', 1),
(326, 'Drechterland', 2),
(327, 'Aalten', 1),
(328, 'Korendijk', 6),
(329, 'Bedum', 11),
(330, 'Simpelveld', 5),
(331, 'Mook en Middelaar', 5),
(332, 'Heumen', 1),
(333, 'Leeuwarderadeel', 3),
(334, 'Scherpenzeel', 6),
(335, 'Wijdemeren', 9),
(336, 'Haarlemmerliede en Spaarnwoude', 2),
(337, 'Duiven', 1),
(338, 'Schoonhoven', 6),
(339, 'Losser', 8),
(340, 'Bergambacht', 6),
(341, 'Elburg', 1),
(342, 'Borsele', 12),
(343, 'Nederlek', 6),
(344, 'Westervoort', 1),
(345, 'Strijen', 6),
(346, 'Oldenzaal', 8),
(347, 'Cranendonck', 4),
(348, 'Valkenswaard', 4),
(349, 'Ferwerderadiel', 3),
(350, 'Olst-Wijhe', 8),
(351, 'Haaren', 4),
(352, 'Zundert', 4),
(353, 'Landsmeer', 2),
(354, 'Ouderkerk', 6),
(355, 'Rijnwaarden', 1),
(356, 'Wierden', 8),
(357, 'Hattem', 1),
(358, 'Noordwijkerhout', 6),
(359, 'Beemster', 2),
(360, 'Ten Boer', 11),
(361, 'Blaricum', 2),
(362, 'Son en Breugel', 4),
(363, 'Neerijnen', 1),
(364, 'Oudewater', 9),
(365, 'Graft-De Rijp', 2),
(366, 'Woudenberg', 9),
(367, 'Eersel', 4),
(368, 'Staphorst', 11),
(369, 'Westvoorne', 6),
(370, 'Zeevang', 2),
(371, 'Mill en Sint Hubert', 4),
(372, 'Doesburg', 1),
(373, 'Millingen aan de Rijn', 1),
(374, 'Schinnen', 5),
(375, 'Drimmelen', 4),
(376, 'het Bildt', 3),
(377, 'Vlist', 6),
(378, 'Borne', 8),
(379, 'Zederik', 6),
(380, 'Naarden', 2),
(381, 'Leerdam', 6),
(382, 'Uitgeest', 2),
(383, 'Kapelle', 12),
(384, 'Stede Broec', 2),
(385, 'Menameradiel', 3),
(386, 'Heerde', 1),
(387, 'Schijndel', 4),
(388, 'Vaals', 5),
(389, 'Gulpen-Wittem', 5),
(390, 'Appingedam', 11),
(391, 'Asten', 4),
(392, 'Midden-Delfland', 6),
(393, 'Menterwolde', 11),
(394, 'Hardinxveld-Giessendam', 6),
(395, 'Sint Anthonis', 4),
(396, 'Schermer', 2),
(397, 'Opmeer', 2),
(398, 'Oostzaan', 2),
(399, 'Alphen-Chaam', 4),
(400, 'Muiden', 2),
(401, 'Vlieland', 3),
(402, 'Schiermonnikoog', 3),
(403, 'Rozendaal', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `provincie`
--

CREATE TABLE `provincie` (
  `id` int NOT NULL,
  `Naam` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Gegevens worden geëxporteerd voor tabel `provincie`
--

INSERT INTO `provincie` (`id`, `Naam`) VALUES
(1, 'Gelderland'),
(2, 'Noord-Holland'),
(3, 'Friesland'),
(4, 'Noord-Brabant'),
(5, 'Limburg'),
(6, 'Zuid-Holland'),
(7, 'Flevoland'),
(8, 'Overijssel'),
(9, 'Utrecht'),
(10, 'Drenthe'),
(11, 'Groningen'),
(12, 'Zeeland');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `gemeente`
--
ALTER TABLE `gemeente`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `provincie`
--
ALTER TABLE `provincie`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `gemeente`
--
ALTER TABLE `gemeente`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT voor een tabel `provincie`
--
ALTER TABLE `provincie`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
