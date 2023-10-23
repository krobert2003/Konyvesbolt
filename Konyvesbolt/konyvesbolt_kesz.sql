-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Okt 23. 23:12
-- Kiszolgáló verziója: 10.4.25-MariaDB
-- PHP verzió: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `konyvesbolt_kesz`
--
CREATE DATABASE IF NOT EXISTS `konyvesbolt_kesz` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `konyvesbolt_kesz`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `konyv`
--

CREATE TABLE `konyv` (
  `konyvid` int(10) UNSIGNED NOT NULL,
  `szerzo` varchar(25) DEFAULT NULL,
  `cim` varchar(70) NOT NULL,
  `megjelenesi_ev` int(4) DEFAULT NULL,
  `megjelenes_helye` varchar(13) DEFAULT NULL,
  `kiado` varchar(36) DEFAULT NULL,
  `kategoria` varchar(20) DEFAULT NULL,
  `nyelv` varchar(6) DEFAULT NULL,
  `sorozatcim` varchar(34) DEFAULT NULL,
  `isbn` varchar(18) DEFAULT NULL,
  `ar` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `konyv`
--

INSERT INTO `konyv` (`konyvid`, `szerzo`, `cim`, `megjelenesi_ev`, `megjelenes_helye`, `kiado`, `kategoria`, `nyelv`, `sorozatcim`, `isbn`, `ar`) VALUES
(1, 'Doyle Arthur Conan', 'Sherlock Holmes kalandjai', 1987, 'Budapest', 'Ifjúsági Lap- És Könyvkiadó Vállalat', 'Krimi', 'magyar', NULL, '9630183625', 2520),
(3, 'Wilson A. N.', 'Wise Virgin', 1984, 'Harmondsworth', 'Penguin Books Ltd.', NULL, 'angol', 'Penguin Books', '01400.66616', 2030),
(4, 'Obermannová Irena', 'Egy őrült feleség naplója', 2001, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', NULL, '9630769301', 10450),
(6, 'Altman John', 'A szigorúan őrzött ház', 2000, 'Budapest', 'General Press Kiadó', 'Krimi', 'magyar', 'Világsikerek', '9639282022', 3570),
(8, 'Garber Joseph R.', 'Függőleges rohanás', 1997, 'Budapest', 'General Press Kiadó', 'Krimi', 'magyar', 'Világsikerek', '9637548998', 8470),
(9, 'Alten Steve', 'Harc az Életért', 2001, 'Budapest', 'General Press Kiadó', 'Krimi', 'magyar', 'Világsikerek', '9639282669', 7830),
(10, 'Freedman J. F.', 'Bukott bálványok', 2003, 'Budapest', 'General Press Kiadó', NULL, 'magyar', 'Világsikerek', '9639459712', 7150),
(11, 'Macomber Debbie', 'Lonesome cowboy', 1998, 'Richmond', 'Mills & Boon', 'Szerelmes regény', 'angol', 'Sons of promise', '263814424', 8710),
(13, 'James Henry', 'What Maisie Knew', 2002, 'London', 'Wordsworth Edition Limited', NULL, 'angol', 'Wordsworth Classics', '9781840224122', 4180),
(14, 'Hawthorne Nathaniel', 'The Scarlet Letter', 1999, 'London', 'Wordsworth Edition Limited', NULL, 'angol', 'Wordsworth Classics', '9781853260292', 2430),
(15, 'Maupassant Guy de', 'Egy asszony élete', 1997, 'Budapest', 'Inter M. D.', NULL, 'magyar', NULL, '9638570733', 1350),
(17, 'Altman John', 'Kémek játéka', 2002, 'Budapest', 'General Press Kiadó', 'Krimi', 'magyar', 'Világsikerek', '9639459127', 3950),
(19, 'Maugham W. Somerset', 'Szerelmek végórái', 1994, 'Budapest', 'FABULA Könyvkiadó', NULL, 'magyar', NULL, '9638169427', 7480),
(20, 'Orange Evelyn', 'Dance of danger', 2013, 'London', 'D.C. Thompson & Co. Ltd.', NULL, 'angol', 'My Weekly Pocket Novels', '9771758165044', 4260),
(21, 'Simeon Georges', 'Maigret védekezik', 2005, 'Budapest', 'Park Könyvkiadó', 'Krimi', 'magyar', 'Maigret', '9635303254', 10330),
(22, 'le Carré John', 'Ébresztő a halottnak', 1990, 'Budapest', 'Láng Kiadó - Kolonel Kft.', 'Krimi', 'magyar', NULL, '9637910166', 3490),
(23, 'Simeon Georges', 'Maigret pipája - Maigret az esküdtszéken - Maigret megharagszik', 1985, 'Budapest', 'Európa Könyvkiadó', 'Krimi', 'magyar', 'Fekete Könyvek', '9630734524', 10770),
(24, 'Bromfield Louis', 'Akinek minden sikerült', 1989, 'Budapest', 'Victoria Kft.', NULL, 'magyar', NULL, '9630267373', 1850),
(27, 'Mérimée Prosper', 'Szent Bertalan éjszakája', 1956, 'Budapest', 'Szépirodalmi Könyvkiadó', 'Szépirodalom', 'magyar', 'Olcsó Könyvtár', 'nincs', 8210),
(28, 'Smith Karen Rose', 'Falling for the Texas Tycoon', 2008, 'Barcelona', 'Harlequin Mills & Boon Ltd.', 'Szerelmes regény', 'angol', '100 years of pure reading pleasure', '9780263860276', 8900),
(29, 'Whittington Kate', 'Take two', 1990, 'Manchester', 'World International Publishing', NULL, 'angol', 'Tender Hearts', '723543135', 10270),
(30, 'MacDonald Laura', 'The Surgeon\'s Pregnancy Surprise', 2006, 'Barcelona', 'Harlequin Mills & Boon Ltd.', 'Szerelmes regény', 'angol', 'Medical Romance', '263847195', 5640),
(31, 'Dunmore Helen', 'Love of fat men', 1998, 'Glasgow', 'Penguin Books Ltd.', NULL, 'angol', 'Penguin Books', '9780140248821', 1930),
(32, 'Größing Sigrid-Maria', 'Erős asszonyok - gyönge férfiak', 1998, 'Budapest', 'Magyar Könyvklub', NULL, 'magyar', NULL, '9635485018', 9060),
(33, 'Crane Stephen', 'The Red Badge of Courage & Other Stories', 2003, 'London', 'Wordsworth Edition Limited', NULL, 'angol', 'Wordsworth Classics', '9781853260841', 11280),
(34, 'Harvey John', 'Veszélyes magány', 2003, 'Budapest', 'Ventus Libro Kiadó', NULL, 'magyar', NULL, '9638633344', 2100),
(35, 'Blond Georges', 'Pauline Bonaparte: A hűséges nimfomániás', 1990, 'Debrecen', 'Rege Kft.', NULL, 'magyar', NULL, '9637865012', 4550),
(36, 'Hill Reginald', 'Deadheads', 2000, 'Oxford', 'Oxford University Press', 'Könnyített olvasmány', 'angol', 'Oxford Bookworms Library - Stage 6', '194230821', 9180),
(37, 'Collins Wilkie', 'The Woman in White', 2002, 'Oxford', 'Oxford University Press', 'Könnyített olvasmány', 'angol', 'Oxford Bookworms Library - Stage 6', '194230961', 11120),
(38, 'Prawer Jhabvala Ruth', 'Heat and Dust', 2000, 'Oxford', 'Oxford University Press', 'Könnyített olvasmány', 'angol', 'Oxford Bookworms Library - Stage 5', '9780194230681', 9810),
(39, 'Hardy Thomas', 'Tess of the d\'Urbervilles', 2003, 'Genoa', 'Black Cat Publishing', 'Könnyített olvasmány', 'angol', 'Reading and training', '9788877549327', 5100),
(40, 'Konwicki Tadeusz', 'Szerelmi krónika', 1977, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', NULL, '9630713780', 2060),
(41, 'Garden Sarah', 'Egyetlenem', 1999, 'Pécs', 'Pécsi Direkt Kft', 'Szerelmes regény', 'magyar', NULL, '963367641X', 5580),
(42, 'Iles Greg', 'A spandau Főnix', 1997, 'Budapest', 'General Press Kiadó', 'Krimi', 'magyar', 'Világsikerek', '9639076082', 11130),
(43, 'Lichtman Charles', 'Életre-halálra', 1999, 'Budapest', 'General Press Kiadó', 'Krimi', 'magyar', 'Világsikerek', '9639076570', 11270),
(44, 'Moore Margaret', 'A múlt árnyai', 2008, 'Kistarcsa', 'STB Könyvek Kiadó Kft.', 'Szerelmes regény', 'magyar', 'Margaret Moore romantikus regényei', '9789639720831', 2390),
(47, 'Hoch Edward D. (szerk.)', 'Az elmúlt év legjobb misztikus és bűnügyi meséi', 1991, 'Budapest', 'Textura Kiadó Bt.', 'Krimi', 'magyar', NULL, '9638501871', 7220),
(48, 'Rosenfelt David', 'Az eltűnt bizonyíték', 2008, 'Budapest', 'Kelly Kft.', 'Krimi', 'magyar', NULL, '9789639667761', 9460),
(49, 'Ridpath Michael', 'Ragadozók között', 2001, 'Budapest', 'General Press Kiadó', 'Krimi', 'magyar', 'Világsikerek', '9639282685', 9410),
(50, 'Frey Stephen', 'Az elnök esélye', 2001, 'Budapest', 'General Press Kiadó', 'Krimi', 'magyar', 'Világsikerek', '9639282723', 6160),
(51, 'Stone Katherine', 'Gyöngyhold', 2000, 'Budapest', 'General Press Kiadó', NULL, 'magyar', NULL, '9639076805', 2050),
(53, 'Feuchtwanger Lion', 'Balgák bölcsessége avagy Jean-Jacques Rousseau halála és megdicsőülése', 1976, 'Budapest', 'Gondolat Kiadó', NULL, 'magyar', NULL, '9632804007', 4130),
(54, 'Hoyt Nicole', 'Danielle Steel', 1994, 'Budapest', 'Alexandra Kiadó', NULL, 'magyar', NULL, '9638086726', 3930),
(55, 'Coelho Paulo', 'Eleven minutes', 2004, 'London', 'HarperCollins Publishers', NULL, 'angol', NULL, '7166052', 2640),
(57, 'Barry Jill', 'The Silver Locket', 2014, 'London', 'D.C. Thompson & Co. Ltd.', NULL, 'angol', 'The People\'s Friend', '9771758163040', 11810),
(58, 'Shelley Mary', 'Frankenstein', 1999, 'Budapest', 'Alinea Kft.', 'Könnyített olvasmány', 'angol', 'Easy Readers', '9788723902092', 2430),
(59, 'Austen Jane', 'Persuasion', 2008, 'Oxford', 'Oxford University Press', 'Könnyített olvasmány', 'angol', 'Oxford Bookworms Library', '9780194791816', 11540),
(60, 'Leather Sue', 'Desert, Mountain, Sea', 2000, 'Oxford', 'Oxford University Press', 'Könnyített olvasmány', 'angol', 'Oxford Bookworms Library', '194230317', 10610),
(64, 'Doyle Arthur Conan', 'The Hound of the Baskervilles', 2008, 'Oxford', 'Oxford University Press', 'Könnyített olvasmány', 'angol', 'Oxford Bookworms Library', '9780194791748', 4780),
(65, 'Cox Josephine', 'Girl on the Platform', 2008, 'London', 'HarperCollins Publishers', 'Könnyített olvasmány', 'angol', 'Quick Reads', '9780007270088', 2180),
(66, 'Nabb Magdalen', 'Death of an Englishman', 1996, 'Oxford', 'Oxford University Press', 'Könnyített olvasmány', 'angol', 'Oxford Bookworms', '9780194216692', 3160),
(68, 'Border Rosemary', 'Ghost Stories', 1998, 'Oxford', 'Oxford University Press', 'Könnyített olvasmány', 'angol', 'Oxford Bookworms', '9780194216449', 3300),
(69, 'Blackmore R. D.', 'Lorna Doone', 2000, 'Oxford', 'Oxford University Press', 'Könnyített olvasmány', 'angol', 'Oxford Bookworms Library', '9780194230384', 7860),
(71, 'McCourt Frank', 'Teacher Man', 2007, 'Harlow', 'Pearson Education Limited', 'Könnyített olvasmány', 'angol', 'Penguin Readers', '9780997806526', 12110),
(72, 'Wodehouse P.G.', 'Jeeves and Friends - Short stories', 2008, 'Oxford', 'Oxford University Press', 'Könnyített olvasmány', 'angol', 'Oxford Bookworms Library', '9780194792295', 9620),
(75, 'Lengyel Olga', 'Five Chimney', 1995, 'Chicago', 'Academy Chicago Publishers', NULL, 'angol', NULL, '9780897333764', 11690),
(78, 'Carmichael Emily', 'A Szőke Indián', 2003, 'Budapest', 'Aquila Könyvkiadó', NULL, 'magyar', NULL, '9636792100', 5940),
(81, 'Brontë Charlotte', 'Vilette', 1973, 'Budapest', 'Európa Könyvkiadó', 'Szerelmes regény', 'magyar', NULL, 'nincs', 3270),
(82, 'Heller Joseph', 'Gold a mennybe megy', 1984, 'Budapest', 'Árkádia', 'Krimi', 'magyar', NULL, '9633070287', 11050),
(86, 'Szamarakisz Antonisz', 'A hiba', 1977, 'Budapest', 'Szépirodalmi Könyvkiadó', 'Szépirodalom', 'magyar', 'Olcsó Könyvtár', '963150851X', 3280),
(89, 'Merle Robert', 'Állati elmék', 1979, 'Budapest', 'Európa Könyvkiadó', 'Szépirodalom', 'magyar', NULL, '9630717263', 1500),
(90, 'Knight Eric', 'Légy hű magadhoz', 1971, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', '5 Világrész Könyvei', 'nincs', 11860),
(93, 'García Márquez Gabriel', 'Száz év magány', 1975, 'Budapest', 'Magvető Könyvkiadó', 'Szépirodalom', 'magyar', 'Világkönyvtár', '9632069', 11690),
(95, 'Cook Robin', 'Agymosás', 1988, 'Budapest', 'Árkádia', 'Krimi', 'magyar', NULL, '963071089', 3150),
(96, 'Segal Erich', 'Szerelmi történet - Love story', 1982, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', NULL, '9630723573', 5600),
(99, 'Gordimer Nadine', 'Kései polgárvilág', 1978, 'Budapest', 'Magvető Könyvkiadó', NULL, 'magyar', 'Rakéta Regénytár', '963270830X', 9910),
(102, 'Krämer Walter', 'A világ csodái', 1977, 'Budapest', 'Kossuth Könyvkiadó', NULL, 'magyar', 'Univerzum Könyvtár', '9630908522', 2360),
(109, 'Hawthorne Nathaniel', 'A skarlát betű / A hétormú ház', 1983, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', 'A Világrirodalom klasszikusai', '9630730510', 2390),
(110, 'Kazantzakisz Nikosz', 'Akinek meg kell halnia', 1973, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', 'A Világirodalom Remekei', 'nincs', 8640),
(111, 'Segal Erich', 'Az elfelejtett kaland', 1977, 'Budapest', 'JLX Kiadó', NULL, 'magyar', NULL, '9633050529', 8910),
(115, 'Bates Herbert Ernest', 'Bíbor sivatag', 1992, 'Budapest', 'FABULA Könyvkiadó', NULL, 'magyar', NULL, '9637885676', 7210),
(116, 'Knight Eric', 'Légy hű magadhoz', 1983, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', NULL, '9630731681', 11820),
(119, 'Zola Émile', 'Nana', 1977, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', NULL, '9630706393', 5050),
(120, 'Zola Émile', 'Párizs gyomra', 1984, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', NULL, '9630733463', 1140),
(121, 'Dosztojevszkij Fjodor', 'Feljegyzések a holtak házából', 1979, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', NULL, '9630714396', 2480),
(125, 'Corman Avery', 'Kramer kontra Kramer', 1983, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', '5 Világrész Könyvei', '9630725975', 4200),
(126, 'Merle Robert', 'A sziget', 1981, 'Budapest', 'Európa Könyvkiadó', 'Szépirodalom', 'magyar', '5 Világrész Könyvei', '963072183X', 1620),
(127, 'Merle Robert', 'Madrapur', 1982, 'Budapest', 'Európa Könyvkiadó', 'Szépirodalom', 'magyar', NULL, '9630727188', 1590),
(128, 'Merle Robert', 'Francia história', 1983, 'Budapest', 'Európa Könyvkiadó', 'Szépirodalom', 'magyar', NULL, '9630727102', 11640),
(129, 'Merle Robert', 'Védett férfiak', 1984, 'Budapest', 'Európa Könyvkiadó', 'Szépirodalom', 'magyar', '5 Világrész Könyvei', '9630731452', 4340),
(130, 'Merle Robert', 'Íme a király', 1990, 'Budapest', 'Európa Könyvkiadó', 'Szépirodalom', 'magyar', NULL, '9630750767', 9200),
(131, 'Cronin Archibald Joseph', 'Réztábla a kapu alatt', 1987, 'Budapest', 'Árkádia', NULL, 'magyar', NULL, '9633070740', 5920),
(132, 'Cronin Archibald Joseph', 'A menyország kulcsa', 1986, 'Budapest', 'Apostoli Szentszék Könyvkiadója', NULL, 'magyar', NULL, '9633604028', 1670),
(133, 'Feuchtwanger Lion', 'Goya', 1978, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', NULL, '9630710226', 6820),
(134, 'Feuchtwanger Lion', 'A csúnya hercegnő', 1981, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', NULL, '9630724480', 3940),
(135, 'McCullough Colleen', 'Tövismadarak', 1990, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', NULL, '9630751283', 9970),
(138, 'Arnaud Georges', 'A félelem bére', 1979, 'Budapest', 'Kossuth Könyvkiadó', NULL, 'magyar', NULL, '9630913526', 9580),
(139, 'Eca de Queiros José Maria', 'Amaro atya bűne', 1977, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', NULL, '9630713527', 10610),
(140, 'Freyer Paul Herbert', 'Halál a tengereken', 1975, 'Budapest', 'Zrínyi Könyvkiadó', NULL, 'magyar', NULL, '9633262178', 1860),
(142, 'Porter Katherine Anne', 'Bolondok hajója', 1977, 'Budapest', 'Európa Könyvkiadó', NULL, 'magyar', NULL, '9630713713', 8090),
(143, 'Eco Umberto', 'A rózsa neve', 1988, 'Budapest', 'Árkádia', NULL, 'magyar', NULL, '9633071097', 1850),
(144, 'Ludlum Robert', 'Csak tanú ne maradjon', 1988, 'Budapest', 'Zrínyi Könyvkiadó', NULL, 'magyar', NULL, '9633269245', 2050),
(146, 'Cook Robin', 'Kóma', 1988, 'Budapest', 'Interpress', NULL, 'magyar', 'IPM Könyvtár', '9637222588', 7570),
(147, 'Cook Robin', 'Járvány', 1989, 'Budapest', 'IPV és I.P. Coop Kft.', NULL, 'magyar', 'I.P.C. könyvek', '9637222839', 2030),
(148, 'Cook Robin', 'Szfinx / Agy', 2000, 'Budapest', 'I.P.C. Könyvek Kft', NULL, 'magyar', 'I.P.C. könyvek', '9636351295', 7160),
(149, 'Cook Robin', 'Agymosás', 1988, 'Budapest', 'Árkádia', NULL, 'magyar', NULL, '963071089', 2010),
(150, 'Zweig Stefan', 'Nyugtalan szív', 1984, 'Budapest', 'Árkádia', NULL, 'magyar', NULL, '9633070252', 3630),
(155, 'Hailey Arthur', 'Hotel', 1988, 'Budapest', 'Magvető Könyvkiadó', NULL, 'magyar', NULL, '9631411672', 8700),
(158, 'McGrail Anna', 'Einstein lánya', 1998, 'Pécs', 'Alexandra Kiadó', NULL, 'magyar', NULL, '9633674425', 9410),
(161, 'Kusche Lawrence David', 'A Bermuda háromszög rejtélye', 4000, 'Budapest', 'Zrínyi Könyvkiadó', NULL, 'magyar', NULL, '9633267609', 1330);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vasarlas`
--

CREATE TABLE `vasarlas` (
  `datum` datetime NOT NULL DEFAULT current_timestamp(),
  `vasarloID` int(10) UNSIGNED NOT NULL COMMENT 'A vásárló azonosítója a vásárló táblából',
  `konyvID` int(10) UNSIGNED NOT NULL COMMENT 'A könyv azonosítója a könyv táblából',
  `darab` int(3) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `vasarlas`
--

INSERT INTO `vasarlas` (`datum`, `vasarloID`, `konyvID`, `darab`) VALUES
('2023-04-26 00:00:00', 45, 8, 1),
('2023-03-29 00:00:00', 41, 60, 3),
('2023-02-22 00:00:00', 21, 14, 1),
('2023-02-14 00:00:00', 37, 34, 2),
('2023-02-22 00:00:00', 9, 38, 2),
('2023-04-20 00:00:00', 15, 57, 2),
('2023-05-06 00:00:00', 19, 48, 3),
('2023-03-16 00:00:00', 6, 54, 3),
('2023-05-01 00:00:00', 12, 47, 2),
('2023-04-09 00:00:00', 21, 71, 1),
('2023-03-24 00:00:00', 6, 99, 2),
('2023-02-14 00:00:00', 42, 10, 3),
('2023-04-26 00:00:00', 3, 68, 3),
('2023-03-16 00:00:00', 36, 72, 1),
('2023-04-23 00:00:00', 16, 41, 3),
('2023-05-13 00:00:00', 40, 59, 1),
('2023-03-01 00:00:00', 46, 42, 1),
('2023-04-27 00:00:00', 44, 8, 3),
('2023-03-27 00:00:00', 11, 4, 1),
('2023-04-03 00:00:00', 29, 4, 1),
('2023-04-14 00:00:00', 48, 53, 3),
('2023-04-08 00:00:00', 44, 95, 2),
('2023-04-04 00:00:00', 42, 21, 3),
('2023-03-20 00:00:00', 40, 66, 3),
('2023-03-06 00:00:00', 14, 20, 3),
('2023-04-04 00:00:00', 25, 43, 3),
('2023-03-29 00:00:00', 15, 89, 3),
('2023-02-24 00:00:00', 44, 37, 3),
('2023-05-13 00:00:00', 45, 71, 1),
('2023-03-13 00:00:00', 23, 9, 3),
('2023-03-19 00:00:00', 2, 10, 1),
('2023-04-29 00:00:00', 47, 50, 2),
('2023-05-14 00:00:00', 44, 71, 3),
('2023-02-17 00:00:00', 50, 47, 3),
('2023-03-26 00:00:00', 8, 14, 2),
('2023-05-07 00:00:00', 24, 89, 1),
('2023-02-18 00:00:00', 50, 4, 1),
('2023-03-03 00:00:00', 43, 28, 3),
('2023-04-30 00:00:00', 41, 11, 2),
('2023-04-09 00:00:00', 44, 60, 2),
('2023-03-01 00:00:00', 31, 43, 1),
('2023-04-15 00:00:00', 11, 35, 1),
('2023-04-02 00:00:00', 9, 24, 3),
('2023-04-28 00:00:00', 23, 60, 2),
('2023-02-18 00:00:00', 22, 1, 1),
('2023-03-31 00:00:00', 21, 10, 3),
('2023-05-12 00:00:00', 30, 4, 1),
('2023-03-09 00:00:00', 46, 22, 3),
('2023-03-18 00:00:00', 25, 20, 3),
('2023-03-30 00:00:00', 18, 17, 2),
('2023-02-15 00:00:00', 26, 66, 3),
('2023-02-19 00:00:00', 46, 37, 2),
('2023-03-09 00:00:00', 36, 51, 1),
('2023-03-07 00:00:00', 10, 102, 2),
('2023-03-05 00:00:00', 39, 57, 3),
('2023-04-14 00:00:00', 3, 89, 2),
('2023-03-22 00:00:00', 34, 22, 2),
('2023-03-15 00:00:00', 18, 93, 2),
('2023-03-13 00:00:00', 25, 90, 2),
('2023-02-22 00:00:00', 41, 44, 1),
('2023-04-12 00:00:00', 4, 86, 1),
('2023-03-16 00:00:00', 35, 6, 1),
('2023-03-20 00:00:00', 6, 23, 1),
('2023-05-08 00:00:00', 24, 36, 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vasarlo`
--

CREATE TABLE `vasarlo` (
  `vasarloid` int(10) UNSIGNED NOT NULL,
  `nev` varchar(19) NOT NULL,
  `szuletesi_datum` date NOT NULL,
  `email_cim` varchar(31) DEFAULT NULL,
  `felhasznalonev` varchar(20) DEFAULT NULL,
  `jelszo` varbinary(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `vasarlo`
--

INSERT INTO `vasarlo` (`vasarloid`, `nev`, `szuletesi_datum`, `email_cim`, `felhasznalonev`, `jelszo`) VALUES
(1, 'Florida Craiker', '1961-10-19', 'dwhisker2r@topsy.com', 'moonhateful', 0x6d6f6f6e6861746566756c000000000000000000),
(2, 'Maryanna Thorold', '1971-07-26', 'ameadowcroft1u@wisc.edu', 'irritablekitten', 0x697272697461626c656b697474656e0000000000),
(3, 'Sullivan Strettell', '1981-09-28', 'groddie12@icio.us', 'blocklanky', 0x626c6f636b6c616e6b7900000000000000000000),
(4, 'Nicholas Cornels', '1963-02-19', 'apyne3o@sourceforge.net', 'parallelsoda', 0x706172616c6c656c736f64610000000000000000),
(5, 'Kenyon Lenton', '1996-11-30', 'nolfert4o@pbs.org', 'croquetcouplekiss', 0x63726f71756574636f75706c656b697373000000),
(6, 'Rodd Banger', '1982-05-15', 'mbonass5p@slideshare.net', 'netbent', 0x6e657462656e7400000000000000000000000000),
(7, 'Dag Linne', '2003-09-02', 'gcullrfordm@myspace.com', 'professionturtleneck', 0x70726f66657373696f6e747572746c656e65636b),
(8, 'Charlotte Clutten', '1956-07-23', 'cfendt3j@narod.ru', 'comerid', 0x636f6d6572696400000000000000000000000000),
(9, 'Noelle Hollyland', '1977-10-08', 'gmalinson4i@dion.ne.jp', 'emperorjump', 0x656d7065726f726a756d70000000000000000000),
(10, 'Renato Radleigh', '1959-07-15', 'kclutten5s@vk.com', 'loosenintrusion', 0x6c6f6f73656e696e74727573696f6e0000000000),
(11, 'Phylis Meadowcroft', '1983-08-16', 'gdavidi5f@chron.com', 'athletelasagne', 0x6174686c6574656c617361676e65000000000000),
(12, 'Lydie Eich', '1987-07-09', 'ceilles29@google.ru', 'orderlyking', 0x6f726465726c796b696e67000000000000000000),
(13, 'Grazia De Robertis', '1987-09-13', 'gfraschetti54@independent.co.uk', 'poodleboy', 0x706f6f646c65626f790000000000000000000000),
(14, 'Elvera Archer', '1973-08-28', 'afissenden1j@weibo.com', 'lectureinflate', 0x6c656374757265696e666c617465000000000000),
(15, 'Karalee Kerridge', '1995-03-24', 'nmorlingb@canalblog.com', 'gagglegreens', 0x676167676c65677265656e730000000000000000),
(16, 'Gilda Rawlingson', '1971-08-06', 'sference67@telegraph.co.uk', 'boastrhumba', 0x626f6173747268756d6261000000000000000000),
(17, 'Erhard Brabham', '1984-08-16', 'ldoyle6k@sourceforge.net', 'damagesession', 0x64616d61676573657373696f6e00000000000000),
(18, 'Halie Wilber', '1966-12-15', 'fgodmarr@ameblo.jp', 'outlandishmolecule', 0x6f75746c616e646973686d6f6c6563756c650000),
(19, 'Gwen Gwillim', '1952-12-15', 'ahemerijk3a@wikimedia.org', 'historianmuse', 0x686973746f7269616e6d75736500000000000000),
(20, 'Tory Kersey', '1989-08-16', 'kturton37@github.com', 'hillsolympic', 0x68696c6c736f6c796d7069630000000000000000),
(21, 'Geno Gecks', '2001-03-19', 'greasce39@people.com.cn', 'othersordid', 0x6f74686572736f72646964000000000000000000),
(22, 'Booth Kubach', '1961-12-26', 'bstachini2z@nasa.gov', 'kimonohormones', 0x6b696d6f6e6f686f726d6f6e6573000000000000),
(23, 'Bailie Veare', '1951-06-05', 'nmcdiarmid6n@prweb.com', 'qualityguarantee', 0x7175616c69747967756172616e74656500000000),
(24, 'Neron Moakes', '1974-09-13', 'dleavy2i@qq.com', 'lecterngenerosity', 0x6c65637465726e67656e65726f73697479000000),
(25, 'Rickey Schafer', '1963-11-30', 'prawlingson5m@imgur.com', 'crushgrowing', 0x637275736867726f77696e670000000000000000),
(26, 'Luke Roddie', '1965-07-04', 'iloache38@photobucket.com', 'wastefuldisaster', 0x776173746566756c646973617374657200000000),
(27, 'Ruperto Zannolli', '1970-07-13', 'mbonass5p@slideshare.net', 'banepoloshirt', 0x62616e65706f6c6f736869727400000000000000),
(28, 'Richy Duquesnay', '1967-03-25', 'kledger1g@hhs.gov', 'extraelbow', 0x6578747261656c626f7700000000000000000000),
(29, 'Vachel Cassell', '1962-01-17', 'lzannolli1m@hostgator.com', 'minecartcrime', 0x6d696e65636172746372696d6500000000000000),
(30, 'Gwen Zannolli', '1966-09-20', 'lraffels43@blogger.com', 'authorscourge', 0x617574686f7273636f7572676500000000000000),
(31, 'Sherm Menzies', '1997-06-14', 'nbransomh@chicagotribune.com', 'survivaloxeye', 0x737572766976616c6f7865796500000000000000),
(32, 'Itch Pikett', '1964-03-30', 'pleverage1z@salon.com', 'frankfascinated', 0x6672616e6b66617363696e617465640000000000),
(33, 'Neda Sorey', '1996-05-28', 'slinne2e@nhs.uk', 'jacketsuit', 0x6a61636b65747375697400000000000000000000),
(34, 'Desdemona Boshers', '1963-07-24', 'cfendt3j@narod.ru', 'motivationminute', 0x6d6f7469766174696f6e6d696e75746500000000),
(35, 'Yank Balcon', '1955-11-17', 'nolfert4o@pbs.org', 'minecraftfreeboard', 0x6d696e65637261667466726565626f6172640000),
(36, 'Krishna Lauks', '1993-04-27', 'dbonick18@shareasale.com', 'facecatholic', 0x66616365636174686f6c69630000000000000000),
(37, 'Binni McCardle', '1978-08-20', 'hcunliffe4v@wikia.com', 'milkclang', 0x6d696c6b636c616e670000000000000000000000),
(38, 'Errol Boddam', '1947-01-10', 'ekaygill6q@dropbox.com', 'interestedprofess', 0x696e746572657374656470726f66657373000000),
(39, 'Caesar Hefforde', '1978-07-29', 'chyam5u@usatoday.com', 'girlguideriband', 0x6769726c6775696465726962616e640000000000),
(40, 'Hershel Leavy', '1972-05-02', 'ekaygill6q@dropbox.com', 'translatesurfing', 0x7472616e736c61746573757266696e6700000000),
(41, 'Lexy Veare', '1994-01-27', 'hhammerson3g@imageshack.us', 'itselfbeacon', 0x697473656c66626561636f6e0000000000000000),
(42, 'Garik Fifield', '1974-07-05', 'jspellissy3l@taobao.com', 'mightdisgusting', 0x6d6967687464697367757374696e670000000000),
(43, 'Konstanze Lenton', '1983-02-17', 'bboyle4a@ocn.ne.jp', 'dentistthorn', 0x64656e7469737474686f726e0000000000000000),
(44, 'Ulrika Feldheim', '1966-03-30', 'fgodmarr@ameblo.jp', 'lostlet', 0x6c6f73746c657400000000000000000000000000),
(45, 'Andre Nind', '1964-04-23', 'vmenier4n@parallels.com', 'cookiesprada', 0x636f6f6b69657370726164610000000000000000),
(46, 'Eustace Haddow', '2005-02-02', 'nbransomh@chicagotribune.com', 'betrayedrabble', 0x6265747261796564726162626c65000000000000),
(47, 'Lyndsey De Robertis', '1968-07-19', 'ssambiedgen@europa.eu', 'centuryastronomer', 0x63656e74757279617374726f6e6f6d6572000000),
(48, 'Ellwood Estick', '1999-07-12', 'emacgoun1x@japanpost.jp', 'lumberingactivator', 0x6c756d626572696e67616374697661746f720000),
(49, 'Carter Menier', '1958-09-23', 'sloache34@wisc.edu', 'teelady', 0x7465656c61647900000000000000000000000000),
(50, 'Dalenna Ovens', '1948-09-02', 'mtomkin5g@4shared.com', 'exaggeratemalicious', 0x657861676765726174656d616c6963696f757300);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `konyv`
--
ALTER TABLE `konyv`
  ADD PRIMARY KEY (`konyvid`);

--
-- A tábla indexei `vasarlas`
--
ALTER TABLE `vasarlas`
  ADD KEY `fk_vasarlas_vasarlo` (`vasarloID`),
  ADD KEY `fk_vasarlas_kony` (`konyvID`);

--
-- A tábla indexei `vasarlo`
--
ALTER TABLE `vasarlo`
  ADD PRIMARY KEY (`vasarloid`),
  ADD UNIQUE KEY `nev` (`nev`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `konyv`
--
ALTER TABLE `konyv`
  MODIFY `konyvid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT a táblához `vasarlo`
--
ALTER TABLE `vasarlo`
  MODIFY `vasarloid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `vasarlas`
--
ALTER TABLE `vasarlas`
  ADD CONSTRAINT `fk_vasarlas_kony` FOREIGN KEY (`konyvID`) REFERENCES `konyv` (`konyvid`),
  ADD CONSTRAINT `fk_vasarlas_vasarlo` FOREIGN KEY (`vasarloID`) REFERENCES `vasarlo` (`vasarloid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
