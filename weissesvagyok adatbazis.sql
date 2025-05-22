-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: sql204.infinityfree.com
-- Létrehozás ideje: 2025. Máj 22. 11:13
-- Kiszolgáló verziója: 10.6.19-MariaDB
-- PHP verzió: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `if0_38415749_wv`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dok`
--

CREATE TABLE `dok` (
  `did` int(11) NOT NULL,
  `dpostid` int(11) NOT NULL,
  `dtextid` int(11) NOT NULL,
  `duid` int(11) NOT NULL,
  `dtext` text NOT NULL,
  `dfile` text DEFAULT NULL,
  `dvote` text NOT NULL,
  `devent` varchar(1) NOT NULL DEFAULT 'N',
  `deventEnd` date DEFAULT NULL,
  `dtime` datetime NOT NULL,
  `dstatus` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `dok`
--

INSERT INTO `dok` (`did`, `dpostid`, `dtextid`, `duid`, `dtext`, `dfile`, `dvote`, `devent`, `deventEnd`, `dtime`, `dstatus`) VALUES
(82, 1, 0, 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum fermentum, quam vel vehicula accumsan, felis arcu lobortis arcu, quis efficitur ligula odio vel lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque aliquam, sapien accumsan porta fringilla, velit est sollicitudin lacus, luctus consequat orci odio in lacus. Phasellus id lobortis urna, sit amet consequat dolor. Vivamus vitae rhoncus purus. Phasellus at massa tristique, ornare augue sed, pellentesque eros. Aenean tincidunt faucibus dolor, eget malesuada tortor rhoncus sit amet. Maecenas semper lectus quis dolor venenatis fringilla. Nullam venenatis efficitur dui vel maximus. Quisque ut tortor id dolor pretium lobortis et in arcu. Etiam vulputate, magna non scelerisque mattis, sapien lorem accumsan mi, eu molestie metus felis nec diam. Maecenas convallis elementum ullamcorper. Aenean risus magna, lobortis non nulla eget, pretium cursus lorem.\r\n\r\nPraesent id vestibulum massa. Donec maximus faucibus libero. Vivamus fermentum euismod mauris quis tempus. Proin ultricies ipsum tortor, ac facilisis orci finibus id. Curabitur ac dolor sapien. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent erat eros, ultricies egestas leo ac, dictum aliquam ligula. Nunc turpis dolor, ullamcorper nec tincidunt eget, consequat non tellus. Vestibulum pharetra sodales diam at finibus. Quisque rhoncus, nibh in interdum posuere, urna ligula convallis ex, quis aliquam diam urna in neque.\r\n\r\nVivamus vehicula ex non turpis finibus ullamcorper. Mauris porta nisl ac odio vulputate tristique. Quisque pharetra gravida neque non ultricies. Nullam nec bibendum leo, a vestibulum nulla. Donec odio orci, lacinia sed est sit amet, semper elementum tellus. Etiam eu luctus ligula. Nulla ultricies enim et enim porta, ac cursus ipsum interdum.', '', 'Lorem;Ipsum;Lorem Ipsum ', 'I', '2025-05-24', '2025-05-21 13:36:34', 'A'),
(83, 2, 0, 13, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', '', ' ', 'I', '2025-05-24', '2025-05-21 13:38:21', 'A');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `foglalasok`
--

CREATE TABLE `foglalasok` (
  `fid` int(11) NOT NULL,
  `findok` text NOT NULL,
  `fdatum` date NOT NULL,
  `fido` varchar(5) NOT NULL,
  `fstatusz` enum('függőben','elfogadva','elutasítva') DEFAULT 'függőben',
  `frogzites_datum` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- A tábla adatainak kiíratása `foglalasok`
--

INSERT INTO `foglalasok` (`fid`, `findok`, `fdatum`, `fido`, `fstatusz`, `frogzites_datum`) VALUES
(1, 'SzÃ¼ksÃ©gem lenne valakire, akinek elmondhatnÃ¡m mi nyomaszt.', '2025-05-22', '08:00', '', '2025-05-21 16:14:46'),
(2, 'SzÃ¼ksÃ©gem lenne valakire, akinek elmondhatnÃ¡m mi nyomaszt.', '2025-05-26', '08:00', '', '2025-05-21 16:15:26'),
(3, 'SzÃ¼ksÃ©gem lenne valakire, akinek elmondhatnÃ¡m mi nyomaszt.', '2025-05-26', '08:00', '', '2025-05-21 16:15:26'),
(4, 'SzÃ¼ksÃ©gem lenne valakire, akinek elmondhatnÃ¡m mi nyomaszt.', '2025-05-23', '08:00', '', '2025-05-21 16:15:33'),
(5, 'SzÃ¼ksÃ©gem lenne valakire, akinek elmondhatnÃ¡m mi nyomaszt.', '2025-05-23', '08:00', '', '2025-05-21 16:15:39'),
(6, 'SzÃ¼ksÃ©gem lenne valakire, akinek elmondhatnÃ¡m mi nyomaszt.', '2025-05-23', '08:55', '', '2025-05-21 16:15:42'),
(7, 'SzÃ¼ksÃ©gem lenne valakire, akinek elmondhatnÃ¡m mi nyomaszt.', '2025-05-23', '08:55', '', '2025-05-21 16:17:04'),
(8, 'SzÃ¼ksÃ©gem lenne valakire, akinek elmondhatnÃ¡m mi nyomaszt.', '2025-05-23', '08:00', '', '2025-05-21 16:20:08'),
(9, 'SzÃ¼ksÃ©gem lenne valakire, akinek elmondhatnÃ¡m mi nyomaszt.', '2025-05-23', '08:55', '', '2025-05-21 16:20:11'),
(10, 'szia', '2025-05-22', '09:50', '', '2025-05-22 03:05:15'),
(11, 'fdgd', '2036-06-25', '08:00', '', '2025-05-22 03:05:58'),
(12, 'asdsddsad', '2025-05-28', '13:30', '', '2025-05-22 03:47:53'),
(13, 'adasdd', '2025-05-22', '14:20', '', '2025-05-22 03:49:02'),
(14, 'wwdwdsdsd', '2025-05-22', '13:30', '', '2025-05-22 06:41:44'),
(15, 'wwdwdsdsd', '2025-05-22', '13:30', '', '2025-05-22 06:41:45'),
(16, 'wwdwdsdsd', '2025-05-22', '13:30', '', '2025-05-22 06:41:45'),
(17, 'wwdwdsdsd', '2025-05-22', '13:30', '', '2025-05-22 06:41:45');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `friendship`
--

CREATE TABLE `friendship` (
  `fid` int(11) NOT NULL,
  `fuid` int(11) NOT NULL,
  `ffid` int(11) NOT NULL,
  `fstatus` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `friendship`
--

INSERT INTO `friendship` (`fid`, `fuid`, `ffid`, `fstatus`) VALUES
(71, 12, 13, 'P'),
(72, 13, 12, 'P'),
(73, 1, 12, 'P'),
(74, 12, 1, 'P'),
(75, 1, 13, 'P'),
(76, 13, 1, 'P'),
(77, 1, 12, 'P'),
(78, 12, 1, 'P'),
(79, 1, 13, 'P'),
(80, 13, 1, 'P'),
(81, 1, 12, 'P'),
(82, 12, 1, 'P'),
(83, 1, 13, 'P'),
(84, 13, 1, 'P');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kedvencek`
--

CREATE TABLE `kedvencek` (
  `keid` int(11) NOT NULL,
  `keuid` int(11) NOT NULL,
  `ketid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `korabbinev`
--

CREATE TABLE `korabbinev` (
  `kid` int(11) NOT NULL,
  `kuid` int(11) NOT NULL,
  `kunick` varchar(18) NOT NULL,
  `kdatum` datetime NOT NULL,
  `kstatusz` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `korabbinev`
--

INSERT INTO `korabbinev` (`kid`, `kuid`, `kunick`, `kdatum`, `kstatusz`) VALUES
(1, 1, 'Z4tonyy', '2025-03-07 22:44:06', ''),
(48, 12, 'teszt', '2025-05-21 13:26:26', ''),
(49, 13, 'tesztdok', '2025-05-21 13:31:39', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `login`
--

CREATE TABLE `login` (
  `lid` int(11) NOT NULL,
  `luid` int(11) NOT NULL,
  `ldatum` datetime NOT NULL,
  `lip` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `naplo`
--

CREATE TABLE `naplo` (
  `nid` int(11) NOT NULL,
  `nuid` int(11) NOT NULL,
  `ndatum` datetime NOT NULL,
  `nip` varchar(40) NOT NULL,
  `nurl` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

CREATE TABLE `termekek` (
  `tid` int(11) NOT NULL,
  `tuid` int(11) NOT NULL,
  `tnev` varchar(40) NOT NULL,
  `tleiras` text NOT NULL,
  `tar` int(11) NOT NULL,
  `tkategoria` varchar(11) NOT NULL,
  `tallapot` varchar(10) NOT NULL,
  `tkep` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`tid`, `tuid`, `tnev`, `tleiras`, `tar`, `tkategoria`, `tallapot`, `tkep`) VALUES
(18, 12, 'Keveset hasznÃ¡lt gumiabroncs', 'Suzuki Swiften keveset hasznÃ¡ltam, eladÃ³vÃ¡ vÃ¡lt', 10000, '', '', '12_250521223019_Keveset hasznÃ¡lt gumiabroncs.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `ustrid` varchar(10) NOT NULL,
  `unick` varchar(16) NOT NULL,
  `upw` varchar(40) NOT NULL,
  `unev` varchar(30) NOT NULL,
  `uwmail` varchar(100) NOT NULL,
  `uwmailtag` varchar(30) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `uom` varchar(11) NOT NULL,
  `uprofkepnev` varchar(80) NOT NULL,
  `uprofkep_eredetinev` varchar(250) NOT NULL,
  `udatum` datetime NOT NULL,
  `uip` int(40) NOT NULL,
  `ustatusz` varchar(1) NOT NULL,
  `ukomment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`uid`, `ustrid`, `unick`, `upw`, `unev`, `uwmail`, `uwmailtag`, `uemail`, `uom`, `uprofkepnev`, `uprofkep_eredetinev`, `udatum`, `uip`, `ustatusz`, `ukomment`) VALUES
(1, 'mmu87dftwx', 'Z4tonyy', 'ed2b1f468c5f915f3f1cf75d7068baae', 'ZÃ¶lderdÅ‘ ZÃ©tÃ©ny', 'zolderdo.zeteny@wm-iskola.hu', 'zolderdo.zeteny', 'zolderdozeteny@gmail.com', '123456789', '1_250522163958.jpg', '1_250520204135.jpg', '2025-03-07 22:44:06', 0, 'D', ''),
(12, 'yvoea7zvpt', 'teszt', '2ed407f4887e4a42e5da79581c60c72d', '', '', '', 'teszt@wm-iskola.hu', '', '12_250522161252.jpg', 'Chrollo Lucifer _ Ð¥Ñ€Ð¾Ð»Ð»Ð¾ Ð›ÑŽÑ†Ð¸Ñ„ÐµÑ€.jpg', '2025-05-21 13:26:26', 0, 'A', ''),
(13, 'wrw2ekxmo8', 'tesztdok', '2ed407f4887e4a42e5da79581c60c72d', '', '', '', 'tesztdok@wm-iskola.hu', '', '', '', '2025-05-21 13:31:39', 0, 'D', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `uzenetek`
--

CREATE TABLE `uzenetek` (
  `uzid` int(11) NOT NULL,
  `uzuid` int(11) NOT NULL,
  `uztouid` int(11) NOT NULL,
  `uztext` mediumtext NOT NULL,
  `uzdatum` datetime NOT NULL,
  `uzstatus` varchar(1) NOT NULL,
  `uzfile` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `votelog`
--

CREATE TABLE `votelog` (
  `vid` int(11) NOT NULL,
  `vdpostid` int(11) NOT NULL,
  `vuid` int(11) NOT NULL,
  `vchoice` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `dok`
--
ALTER TABLE `dok`
  ADD PRIMARY KEY (`did`);

--
-- A tábla indexei `foglalasok`
--
ALTER TABLE `foglalasok`
  ADD PRIMARY KEY (`fid`);

--
-- A tábla indexei `friendship`
--
ALTER TABLE `friendship`
  ADD PRIMARY KEY (`fid`);

--
-- A tábla indexei `kedvencek`
--
ALTER TABLE `kedvencek`
  ADD PRIMARY KEY (`keid`);

--
-- A tábla indexei `korabbinev`
--
ALTER TABLE `korabbinev`
  ADD PRIMARY KEY (`kid`);

--
-- A tábla indexei `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`lid`);

--
-- A tábla indexei `naplo`
--
ALTER TABLE `naplo`
  ADD PRIMARY KEY (`nid`);

--
-- A tábla indexei `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`tid`);

--
-- A tábla indexei `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- A tábla indexei `uzenetek`
--
ALTER TABLE `uzenetek`
  ADD PRIMARY KEY (`uzid`);

--
-- A tábla indexei `votelog`
--
ALTER TABLE `votelog`
  ADD PRIMARY KEY (`vid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `dok`
--
ALTER TABLE `dok`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT a táblához `foglalasok`
--
ALTER TABLE `foglalasok`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT a táblához `friendship`
--
ALTER TABLE `friendship`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT a táblához `kedvencek`
--
ALTER TABLE `kedvencek`
  MODIFY `keid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT a táblához `korabbinev`
--
ALTER TABLE `korabbinev`
  MODIFY `kid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT a táblához `login`
--
ALTER TABLE `login`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `naplo`
--
ALTER TABLE `naplo`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `termekek`
--
ALTER TABLE `termekek`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT a táblához `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT a táblához `uzenetek`
--
ALTER TABLE `uzenetek`
  MODIFY `uzid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT a táblához `votelog`
--
ALTER TABLE `votelog`
  MODIFY `vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
