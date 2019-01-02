-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Gegenereerd op: 02 jan 2019 om 13:03
-- Serverversie: 5.5.56-MariaDB
-- PHP-versie: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bob`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ajail_logs`
--

CREATE TABLE IF NOT EXISTS `ajail_logs` (
  `id` int(11) NOT NULL,
  `JailedDBID` int(11) NOT NULL,
  `JailedName` varchar(32) NOT NULL,
  `Reason` varchar(128) NOT NULL,
  `Date` varchar(90) NOT NULL,
  `JailedBy` varchar(32) NOT NULL,
  `Time` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bannedlist`
--

CREATE TABLE IF NOT EXISTS `bannedlist` (
  `id` int(11) NOT NULL,
  `CharacterDBID` int(11) NOT NULL,
  `MasterDBID` int(11) NOT NULL,
  `CharacterName` varchar(32) NOT NULL,
  `Reason` varchar(128) NOT NULL,
  `Date` varchar(90) NOT NULL,
  `BannedBy` varchar(32) NOT NULL,
  `IpAddress` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ban_logs`
--

CREATE TABLE IF NOT EXISTS `ban_logs` (
  `id` int(11) NOT NULL,
  `CharacterDBID` int(11) NOT NULL,
  `MasterDBID` int(11) NOT NULL,
  `CharacterName` varchar(32) NOT NULL,
  `Reason` varchar(128) NOT NULL,
  `BannedBy` varchar(32) NOT NULL,
  `Date` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `businesses`
--

CREATE TABLE IF NOT EXISTS `businesses` (
  `BusinessDBID` int(11) NOT NULL,
  `BusinessOwnerDBID` int(11) NOT NULL DEFAULT '0',
  `BusinessInteriorX` float DEFAULT '0',
  `BusinessInteriorY` float NOT NULL DEFAULT '0',
  `BusinessInteriorZ` float NOT NULL DEFAULT '0',
  `BusinessInteriorWorld` int(11) NOT NULL DEFAULT '0',
  `BusinessInteriorIntID` int(11) NOT NULL DEFAULT '0',
  `BusinessInteriorExtID` int(11) NOT NULL DEFAULT '0',
  `BusinessInteriorExtWorld` int(11) NOT NULL DEFAULT '0',
  `BusinessEntranceX` float NOT NULL DEFAULT '0',
  `BusinessEntranceY` float NOT NULL DEFAULT '0',
  `BusinessEntranceZ` float NOT NULL DEFAULT '0',
  `BusinessName` varchar(90) NOT NULL DEFAULT 'Nameless',
  `BusinessType` int(11) NOT NULL DEFAULT '0',
  `BusinessLocked` tinyint(1) NOT NULL DEFAULT '0',
  `BusinessEntranceFee` int(11) NOT NULL DEFAULT '1',
  `BusinessLevel` int(11) NOT NULL DEFAULT '0',
  `BusinessMarketPrice` int(11) NOT NULL DEFAULT '5000',
  `BusinessCashbox` int(11) NOT NULL DEFAULT '0',
  `BusinessProducts` int(11) NOT NULL DEFAULT '0',
  `BusinessBankPickupLocX` float NOT NULL DEFAULT '0',
  `BusinessBankPickupLocY` float NOT NULL DEFAULT '0',
  `BusinessBankPickupLocZ` float NOT NULL DEFAULT '0',
  `BusinessBankPickupWorld` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `businesses`
--

INSERT INTO `businesses` (`BusinessDBID`, `BusinessOwnerDBID`, `BusinessInteriorX`, `BusinessInteriorY`, `BusinessInteriorZ`, `BusinessInteriorWorld`, `BusinessInteriorIntID`, `BusinessInteriorExtID`, `BusinessInteriorExtWorld`, `BusinessEntranceX`, `BusinessEntranceY`, `BusinessEntranceZ`, `BusinessName`, `BusinessType`, `BusinessLocked`, `BusinessEntranceFee`, `BusinessLevel`, `BusinessMarketPrice`, `BusinessCashbox`, `BusinessProducts`, `BusinessBankPickupLocX`, `BusinessBankPickupLocY`, `BusinessBankPickupLocZ`, `BusinessBankPickupWorld`) VALUES
(1, 0, 6.123, -31.461, 1003.55, 16378, 10, 0, 0, -2479.22, 2318.04, 4.984, 'Bayside General', 5, 0, 0, 999, 99999999, 0, 0, 0, 0, 0, 0),
(2, 0, 364.846, -11.415, 1001.85, 5433, 9, 0, 0, -2518.66, 2318.7, 4.984, 'Bayside Cluck''n', 0, 0, 0, 999, 99999999, 0, 0, 0, 0, 0, 0),
(3, 0, -2240.43, 137.335, 1035.41, 14152, 6, 0, 0, -2537.55, 2318.69, 4.984, 'Bayside electrics', 0, 0, 0, 999, 99999999, 0, 0, 0, 0, 0, 0),
(4, 0, 207.583, -110.885, 1005.13, 19497, 15, 0, 0, -2510.54, 2277.8, 4.984, 'Bayside Binco', 0, 0, 0, 999, 99999999, 0, 0, 0, 0, 0, 0),
(5, 0, 285.262, -41.378, 1001.52, 13879, 1, 0, 0, -2456.46, 2310.96, 5.095, 'Bayside Ammunition', 2, 0, 0, 999, 99999999, 0, 0, 0, 0, 0, 0),
(6, 0, -2252.09, 2291.05, 4.813, 5468, 0, 0, 0, -2244.32, 2292.98, 4.968, '', 6, 0, 0, 999, 99999999, 0, 0, 0, 0, 0, 0),
(7, 0, -2482.85, 3483.24, 2004.63, 9583, 0, 0, 0, -2501.25, 2318.69, 4.984, 'Bayside bank', 4, 0, 0, 999, 99999999, 0, 0, -2487.42, 3466.1, 2001.82, 9583),
(8, 0, 311.079, 313.753, 1003.3, 16144, 4, 0, 0, -795.892, 2259.57, 59.469, 'Jim''s shack', 8, 0, 0, 999, 0, 0, 180, 0, 0, 0, 0),
(9, 0, -942.135, 1846.6, 5, 7515, 17, 0, 0, -831.006, 1985.08, 9.401, '', 9, 0, 0, 999, 0, 0, 0, 0, 0, 0, 0),
(10, 0, -959.607, 1956.29, 9, 7515, 17, 0, 0, -594.898, 2018.12, 60.539, '', 9, 0, 0, 999, 0, 0, 0, 0, 0, 0, 0),
(11, 0, -228.985, 1400.97, 27.766, 13705, 18, 0, 0, -1271.68, 2713.09, 50.266, 'El Foodos', 1, 0, 0, 999, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `characters`
--

CREATE TABLE IF NOT EXISTS `characters` (
  `master_dbid` int(11) NOT NULL,
  `pHealth` float NOT NULL DEFAULT '100',
  `pArmour` float NOT NULL DEFAULT '0',
  `char_dbid` int(11) NOT NULL,
  `char_name` varchar(100) NOT NULL,
  `pCharPass` varchar(1000) NOT NULL DEFAULT 'Null',
  `create_date` varchar(60) NOT NULL,
  `create_ip` varchar(60) NOT NULL,
  `pAdmin` int(4) NOT NULL DEFAULT '0',
  `pLastSkin` int(11) NOT NULL DEFAULT '20003',
  `pLastPosX` float NOT NULL DEFAULT '-2329.05',
  `pLastPosY` float NOT NULL DEFAULT '2299.73',
  `pLastPosZ` float NOT NULL DEFAULT '3.5',
  `pLastInterior` int(11) NOT NULL DEFAULT '0',
  `pLastWorld` int(11) NOT NULL DEFAULT '0',
  `pLevel` int(11) NOT NULL DEFAULT '1',
  `pEXP` int(11) NOT NULL DEFAULT '0',
  `pAge` varchar(20) NOT NULL DEFAULT 'Invalid',
  `ucp_pass` varchar(60) NOT NULL DEFAULT 'invalid',
  `pOrigin` varchar(60) NOT NULL DEFAULT 'Invalid',
  `pStory` varchar(90) NOT NULL DEFAULT 'Nothing',
  `pStoryTwo` varchar(90) NOT NULL DEFAULT 'Nothing',
  `pMoney` int(11) NOT NULL DEFAULT '5000',
  `pBank` int(11) NOT NULL DEFAULT '15000',
  `pPaycheck` int(11) NOT NULL DEFAULT '5000',
  `pPhone` int(11) NOT NULL,
  `pLastOnline` varchar(90) DEFAULT NULL,
  `pLastOnlineTime` int(11) DEFAULT NULL,
  `pAdminjailed` tinyint(1) NOT NULL DEFAULT '0',
  `pAdminjailTime` int(11) DEFAULT NULL,
  `pOfflinejailed` tinyint(1) NOT NULL DEFAULT '0',
  `pOfflinejailedReason` varchar(128) DEFAULT NULL,
  `pFaction` int(11) NOT NULL DEFAULT '0',
  `pFactionRank` int(11) NOT NULL DEFAULT '0',
  `pOwnedVehicles1` int(11) NOT NULL DEFAULT '0',
  `pOwnedVehicles2` int(11) NOT NULL DEFAULT '0',
  `pOwnedVehicles3` int(11) NOT NULL DEFAULT '0',
  `pOwnedVehicles4` int(11) NOT NULL DEFAULT '0',
  `pOwnedVehicles5` int(11) NOT NULL DEFAULT '0',
  `pWeapons0` tinyint(4) NOT NULL DEFAULT '0',
  `pWeapons1` tinyint(4) NOT NULL DEFAULT '0',
  `pWeapons2` tinyint(4) NOT NULL DEFAULT '0',
  `pWeapons3` tinyint(4) NOT NULL DEFAULT '0',
  `pWeapons4` tinyint(4) NOT NULL DEFAULT '0',
  `pWeapons5` tinyint(4) NOT NULL DEFAULT '0',
  `pWeapons6` tinyint(4) NOT NULL DEFAULT '0',
  `pWeapons7` tinyint(4) NOT NULL DEFAULT '0',
  `pWeapons8` tinyint(4) NOT NULL DEFAULT '0',
  `pWeapons9` tinyint(4) NOT NULL DEFAULT '0',
  `pWeapons10` tinyint(4) NOT NULL DEFAULT '0',
  `pWeapons11` tinyint(4) NOT NULL DEFAULT '0',
  `pWeaponsAmmo0` smallint(6) NOT NULL DEFAULT '0',
  `pWeaponsAmmo1` smallint(6) NOT NULL DEFAULT '0',
  `pWeaponsAmmo2` smallint(6) NOT NULL DEFAULT '0',
  `pWeaponsAmmo3` smallint(6) NOT NULL DEFAULT '0',
  `pWeaponsAmmo4` smallint(6) NOT NULL DEFAULT '0',
  `pWeaponsAmmo5` smallint(6) NOT NULL DEFAULT '0',
  `pWeaponsAmmo6` smallint(6) NOT NULL DEFAULT '0',
  `pWeaponsAmmo7` smallint(6) NOT NULL DEFAULT '0',
  `pWeaponsAmmo8` smallint(6) NOT NULL DEFAULT '0',
  `pWeaponsAmmo9` smallint(6) NOT NULL DEFAULT '0',
  `pWeaponsAmmo10` smallint(6) NOT NULL DEFAULT '0',
  `pWeaponsAmmo11` smallint(6) NOT NULL DEFAULT '0',
  `pTimeplayed` int(11) NOT NULL DEFAULT '0',
  `pMaskID` int(11) DEFAULT NULL,
  `pMaskIDEx` int(11) DEFAULT NULL,
  `pInProperty` int(11) NOT NULL DEFAULT '0',
  `pInBusiness` int(11) NOT NULL DEFAULT '0',
  `pHasRadio` tinyint(1) NOT NULL DEFAULT '0',
  `pRadio1` int(11) NOT NULL DEFAULT '0',
  `pRadio2` int(11) NOT NULL DEFAULT '0',
  `pMainSlot` int(11) NOT NULL DEFAULT '1',
  `pGascan` int(11) NOT NULL DEFAULT '0',
  `pSpawnPoint` int(11) NOT NULL DEFAULT '0',
  `pSpawnPointHouse` int(11) NOT NULL DEFAULT '0',
  `pWeaponsLicense` int(11) NOT NULL DEFAULT '0',
  `pDriversLicense` int(11) NOT NULL DEFAULT '0',
  `pActiveListings` int(11) NOT NULL DEFAULT '0',
  `pPrisonTimes` int(11) NOT NULL DEFAULT '0',
  `pJailTimes` int(11) NOT NULL DEFAULT '0',
  `pIsAlive` int(11) NOT NULL DEFAULT '1',
  `pJailTime` int(11) DEFAULT NULL,
  `pInJail` int(11) NOT NULL DEFAULT '0',
  `pFishingRod` int(11) NOT NULL DEFAULT '0',
  `pWorms` int(11) NOT NULL DEFAULT '0',
  `pFishes` int(11) NOT NULL DEFAULT '0',
  `pJob` int(11) DEFAULT NULL,
  `pExplosives` int(11) NOT NULL DEFAULT '0',
  `pTimeRobbed` varchar(90) DEFAULT NULL,
  `pRobbedCash` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `criminal_record`
--

CREATE TABLE IF NOT EXISTS `criminal_record` (
  `idx` int(11) NOT NULL,
  `player_name` varchar(32) NOT NULL,
  `charge_reason` varchar(128) NOT NULL,
  `add_date` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `factions`
--

CREATE TABLE IF NOT EXISTS `factions` (
  `DBID` int(11) NOT NULL,
  `FactionName` varchar(90) NOT NULL DEFAULT 'Not Set',
  `FactionAbbrev` varchar(30) NOT NULL DEFAULT 'Not Set',
  `FactionSpawnX` float NOT NULL DEFAULT '0',
  `FactionSpawnY` float NOT NULL DEFAULT '0',
  `FactionSpawnZ` float NOT NULL DEFAULT '0',
  `FactionInterior` int(11) NOT NULL DEFAULT '0',
  `FactionWorld` int(11) NOT NULL DEFAULT '0',
  `FactionJoinRank` int(11) NOT NULL DEFAULT '0',
  `FactionAlterRank` int(11) NOT NULL DEFAULT '0',
  `FactionChatRank` int(11) NOT NULL DEFAULT '0',
  `FactionTowRank` int(11) NOT NULL DEFAULT '0',
  `FactionChatColor` int(11) NOT NULL DEFAULT '0',
  `FactionType` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `factions`
--

INSERT INTO `factions` (`DBID`, `FactionName`, `FactionAbbrev`, `FactionSpawnX`, `FactionSpawnY`, `FactionSpawnZ`, `FactionInterior`, `FactionWorld`, `FactionJoinRank`, `FactionAlterRank`, `FactionChatRank`, `FactionTowRank`, `FactionChatColor`, `FactionType`) VALUES
(1, 'Tierra Robada State Patrol', 'TR-SP', -2608.08, 2273.34, 8.359, 0, 0, 6, 2, 6, 0, 2108620799, 2),
(2, 'Bayside Fire Department', 'BS-FD', -2541.72, 2344.35, 4.993, 0, 0, 5, 1, 5, 0, -132901633, 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `faction_ranks`
--

CREATE TABLE IF NOT EXISTS `faction_ranks` (
  `factionid` int(11) NOT NULL,
  `FactionRank1` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank2` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank3` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank4` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank5` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank6` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank7` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank8` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank9` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank10` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank11` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank12` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank13` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank14` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank15` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank16` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank17` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank18` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank19` varchar(60) NOT NULL DEFAULT 'NotSet',
  `FactionRank20` varchar(60) NOT NULL DEFAULT 'NotSet'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `faction_ranks`
--

INSERT INTO `faction_ranks` (`factionid`, `FactionRank1`, `FactionRank2`, `FactionRank3`, `FactionRank4`, `FactionRank5`, `FactionRank6`, `FactionRank7`, `FactionRank8`, `FactionRank9`, `FactionRank10`, `FactionRank11`, `FactionRank12`, `FactionRank13`, `FactionRank14`, `FactionRank15`, `FactionRank16`, `FactionRank17`, `FactionRank18`, `FactionRank19`, `FactionRank20`) VALUES
(1, 'Colonel', 'Major', 'Captain', 'Sergeant', 'Corporal', 'Trooper', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet'),
(2, 'Chief', 'Deputy Chief', 'Captain', 'Lieutenant', 'Engineer', 'FireFighter', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet', 'NotSet');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `kick_logs`
--

CREATE TABLE IF NOT EXISTS `kick_logs` (
  `id` int(11) NOT NULL,
  `KickedDBID` int(11) NOT NULL,
  `KickedName` varchar(32) NOT NULL,
  `Reason` varchar(128) NOT NULL,
  `KickedBy` varchar(32) NOT NULL,
  `Date` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `masters`
--

CREATE TABLE IF NOT EXISTS `masters` (
  `acc_dbid` int(11) NOT NULL,
  `acc_name` varchar(32) NOT NULL,
  `pAdminLevel` int(4) NOT NULL DEFAULT '0',
  `acc_pass` varchar(128) NOT NULL,
  `secret_word` varchar(128) DEFAULT NULL,
  `forum_name` varchar(60) NOT NULL DEFAULT 'Null',
  `register_date` varchar(90) NOT NULL,
  `register_ip` varchar(60) NOT NULL,
  `active_ip` varchar(60) DEFAULT NULL,
  `mwhitelist` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migrations` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `properties`
--

CREATE TABLE IF NOT EXISTS `properties` (
  `PropertyDBID` int(11) NOT NULL,
  `PropertyOwnerDBID` int(11) NOT NULL DEFAULT '0',
  `PropertyType` int(11) NOT NULL DEFAULT '0',
  `PropertyFaction` int(11) NOT NULL DEFAULT '0',
  `PropertyEntranceX` float NOT NULL DEFAULT '0',
  `PropertyEntranceY` float NOT NULL DEFAULT '0',
  `PropertyEntranceZ` float NOT NULL DEFAULT '0',
  `PropertyEntranceInterior` int(11) NOT NULL DEFAULT '0',
  `PropertyEntranceWorld` int(11) NOT NULL DEFAULT '0',
  `PropertyInteriorX` int(11) NOT NULL DEFAULT '0',
  `PropertyInteriorY` int(11) NOT NULL DEFAULT '0',
  `PropertyInteriorZ` int(11) NOT NULL DEFAULT '0',
  `PropertyInteriorIntID` int(11) NOT NULL DEFAULT '0',
  `PropertyInteriorWorld` int(11) NOT NULL DEFAULT '0',
  `PropertyMarketPrice` int(11) NOT NULL DEFAULT '1000',
  `PropertyLevel` int(11) NOT NULL DEFAULT '1',
  `PropertyLocked` tinyint(1) NOT NULL DEFAULT '0',
  `PropertyCashbox` int(11) NOT NULL DEFAULT '0',
  `PropertyPlacePosX` float NOT NULL DEFAULT '0',
  `PropertyPlacePosY` float NOT NULL DEFAULT '0',
  `PropertyPlacePosZ` float NOT NULL DEFAULT '0',
  `PropertyWeapon1` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon2` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon3` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon4` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon5` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon6` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon7` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon8` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon9` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon10` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon11` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon12` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon13` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon14` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon15` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon16` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon17` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon18` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon19` int(11) NOT NULL DEFAULT '0',
  `PropertyWeapon20` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo1` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo2` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo3` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo4` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo5` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo6` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo7` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo8` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo9` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo10` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo11` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo12` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo13` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo14` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo15` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo16` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo17` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo18` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo19` int(11) NOT NULL DEFAULT '0',
  `PropertyWeaponAmmo20` int(11) NOT NULL DEFAULT '0',
  `PropertyHasBoombox` tinyint(1) NOT NULL DEFAULT '0',
  `PropertyBoomboxPosX` float NOT NULL DEFAULT '0',
  `PropertyBoomboxPosY` float NOT NULL DEFAULT '0',
  `PropertyBoomboxPosZ` float NOT NULL DEFAULT '0',
  `PropertyBoomboxRotX` float NOT NULL DEFAULT '0',
  `PropertyBoomboxRotY` float NOT NULL DEFAULT '0',
  `PropertyBoomboxRotZ` float NOT NULL DEFAULT '0',
  `PropertyAdress` varchar(90) NOT NULL DEFAULT 'Nameless'
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `properties`
--

INSERT INTO `properties` (`PropertyDBID`, `PropertyOwnerDBID`, `PropertyType`, `PropertyFaction`, `PropertyEntranceX`, `PropertyEntranceY`, `PropertyEntranceZ`, `PropertyEntranceInterior`, `PropertyEntranceWorld`, `PropertyInteriorX`, `PropertyInteriorY`, `PropertyInteriorZ`, `PropertyInteriorIntID`, `PropertyInteriorWorld`, `PropertyMarketPrice`, `PropertyLevel`, `PropertyLocked`, `PropertyCashbox`, `PropertyPlacePosX`, `PropertyPlacePosY`, `PropertyPlacePosZ`, `PropertyWeapon1`, `PropertyWeapon2`, `PropertyWeapon3`, `PropertyWeapon4`, `PropertyWeapon5`, `PropertyWeapon6`, `PropertyWeapon7`, `PropertyWeapon8`, `PropertyWeapon9`, `PropertyWeapon10`, `PropertyWeapon11`, `PropertyWeapon12`, `PropertyWeapon13`, `PropertyWeapon14`, `PropertyWeapon15`, `PropertyWeapon16`, `PropertyWeapon17`, `PropertyWeapon18`, `PropertyWeapon19`, `PropertyWeapon20`, `PropertyWeaponAmmo1`, `PropertyWeaponAmmo2`, `PropertyWeaponAmmo3`, `PropertyWeaponAmmo4`, `PropertyWeaponAmmo5`, `PropertyWeaponAmmo6`, `PropertyWeaponAmmo7`, `PropertyWeaponAmmo8`, `PropertyWeaponAmmo9`, `PropertyWeaponAmmo10`, `PropertyWeaponAmmo11`, `PropertyWeaponAmmo12`, `PropertyWeaponAmmo13`, `PropertyWeaponAmmo14`, `PropertyWeaponAmmo15`, `PropertyWeaponAmmo16`, `PropertyWeaponAmmo17`, `PropertyWeaponAmmo18`, `PropertyWeaponAmmo19`, `PropertyWeaponAmmo20`, `PropertyHasBoombox`, `PropertyBoomboxPosX`, `PropertyBoomboxPosY`, `PropertyBoomboxPosZ`, `PropertyBoomboxRotX`, `PropertyBoomboxRotY`, `PropertyBoomboxRotZ`, `PropertyAdress`) VALUES
(1, 0, 1, 1, 1569.92, -1666.07, 28.396, 0, 0, 1000000, 1000000, 1000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(2, 0, 1, 0, -2552.29, 2266.55, 5.476, 0, 0, 2365, -1135, 1051, 8, 39302, 250000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay St. #2103'),
(3, 0, 1, 0, -2583.14, 2300.4, 7.003, 0, 0, 2496, -1692, 1015, 3, 19728, 150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay St. #2104'),
(4, 0, 1, 0, -2583.75, 2307.95, 7.003, 0, 0, 2318, -1026, 1050, 9, 1618, 150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay St. #2105'),
(5, 0, 1, 0, -2627.64, 2283.52, 8.315, 0, 0, 2324, -1149, 1051, 12, 10730, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Griffin Rd. #1001'),
(6, 0, 1, 0, -2627.64, 2292.05, 8.315, 0, 0, 2234, -1115, 1051, 5, 31124, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Griffin Rd. #1002'),
(7, 0, 1, 0, -2627.58, 2310.08, 8.314, 0, 0, 235, 1187, 1080, 3, 9745, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Griffin Rd. #1003'),
(8, 0, 1, 0, -2627.58, 2318.65, 8.314, 0, 0, -69, 1352, 1080, 6, 9797, 100000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Griffin Rd. #1004'),
(9, 0, 1, 0, -2636.35, 2351.01, 8.489, 0, 0, 140, 1366, 1084, 5, 37593, 175000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Griffin Rd. #1005'),
(10, 0, 1, 0, -2632.55, 2374.88, 9.04, 0, 0, 24, 1340, 1084, 10, 4565, 175000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Griffin Rd. #1006'),
(11, 0, 1, 0, -2634.88, 2401.69, 11.219, 0, 0, 227, 1114, 1081, 5, 17970, 175000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Griffin Rd. #1007'),
(12, 0, 1, 0, -2597.31, 2364.55, 9.883, 0, 0, 226, 1240, 1082, 2, 24903, 175000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Griffin Rd. #2002'),
(13, 0, 1, 0, -2597.31, 2356.89, 9.883, 0, 0, 234, 1064, 1084, 6, 39119, 150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Griffin Rd. #2001'),
(14, 0, 1, 0, -2479.72, 2449.99, 17.323, 0, 0, -2170, 639, 1052, 1, 30630, 150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay St. #2106'),
(15, 0, 1, 0, -2472.3, 2451.36, 17.323, 0, 0, 2238, -1081, 1049, 2, 16038, 150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay St. #2107'),
(16, 0, 1, 0, -2478.29, 2488.9, 18.23, 0, 0, 2260, -1136, 1051, 10, 1834, 80000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay Park. #1001'),
(17, 0, 1, 0, -2479, 2510.07, 17.975, 0, 0, 422, 2537, 10, 10, 28454, 80000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay Park. #1005'),
(18, 0, 1, 0, -2446.89, 2512.3, 15.7, 0, 0, 244, 305, 999, 1, 24870, 80000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay Park. #1006'),
(19, 0, 1, 0, -2463.71, 2490.57, 17.002, 0, 0, 2260, -1136, 1051, 10, 8119, 80000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay Park. #1002'),
(20, 0, 1, 0, -2446.27, 2490.7, 15.543, 0, 0, 444, 510, 1001, 12, 18700, 80000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay Park. #1003'),
(21, 0, 1, 0, -2422.38, 2490.7, 13.203, 0, 0, -69, 1351, 1080, 6, 35614, 80000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay Park. #1004'),
(22, 0, 1, 0, -2424.64, 2449.06, 13.139, 0, 0, 2324, -1149, 1051, 12, 11956, 175000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay St. #2108'),
(23, 0, 1, 0, -2386.21, 2447.49, 10.169, 0, 0, 2365, -1136, 1051, 8, 941, 150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay St. #2109'),
(24, 0, 1, 0, -2379.22, 2444.64, 10.169, 0, 0, -2380, 2444, 10, 0, 201, 150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay St. #2110'),
(25, 0, 1, 0, -2348.34, 2423.58, 7.329, 0, 0, 140, 1366, 1084, 5, 4322, 150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay St. #2111'),
(26, 0, 1, 0, -2398.19, 2408.75, 8.911, 0, 0, 2318, -1027, 1050, 9, 1360, 150000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay St. #3202'),
(27, 0, 1, 0, -2421.72, 2406.68, 13.025, 0, 0, 2496, -1693, 1015, 3, 19768, 175000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay St. #3201'),
(28, 0, 1, 0, -2437.46, 2354.94, 5.443, 0, 0, 226, 1240, 1082, 2, 38370, 200000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'St Phillip St. #1001'),
(29, 0, 1, 0, -2523.86, 2238.81, 5.398, 0, 0, 2238, -1081, 1049, 2, 12005, 250000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bay St. #2102');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `VehicleDBID` int(11) NOT NULL,
  `VehicleOwnerDBID` int(11) DEFAULT '0',
  `VehicleFaction` int(11) NOT NULL DEFAULT '0',
  `VehicleModel` int(11) DEFAULT '0',
  `VehicleColor1` int(11) NOT NULL DEFAULT '0',
  `VehicleColor2` int(11) NOT NULL DEFAULT '0',
  `VehiclePaintjob` int(11) NOT NULL DEFAULT '-1',
  `VehicleParkPosX` float NOT NULL DEFAULT '-2272.55',
  `VehicleParkPosY` float NOT NULL DEFAULT '2312.34',
  `VehicleParkPosZ` float NOT NULL DEFAULT '4.4903',
  `VehicleParkPosA` float NOT NULL DEFAULT '-90',
  `VehicleParkInterior` int(11) NOT NULL DEFAULT '0',
  `VehicleParkWorld` int(11) NOT NULL DEFAULT '0',
  `VehiclePlates` varchar(32) DEFAULT 'Un-Registred',
  `VehicleLocked` int(11) NOT NULL DEFAULT '1',
  `VehicleImpounded` tinyint(1) NOT NULL DEFAULT '0',
  `VehicleImpoundPosX` float DEFAULT '0',
  `VehicleImpoundPosY` float DEFAULT '0',
  `VehicleImpoundPosZ` float DEFAULT '0',
  `VehicleImpoundPosA` float DEFAULT '0',
  `VehicleSirens` int(11) NOT NULL DEFAULT '0',
  `VehicleFuel` float NOT NULL DEFAULT '100',
  `VehicleWeapons1` int(11) NOT NULL DEFAULT '0',
  `VehicleWeapons2` int(11) NOT NULL DEFAULT '0',
  `VehicleWeapons3` int(11) NOT NULL DEFAULT '0',
  `VehicleWeapons4` int(11) NOT NULL DEFAULT '0',
  `VehicleWeapons5` int(11) NOT NULL DEFAULT '0',
  `VehicleWeaponsAmmo1` int(11) NOT NULL DEFAULT '0',
  `VehicleWeaponsAmmo2` int(11) NOT NULL DEFAULT '0',
  `VehicleWeaponsAmmo3` int(11) NOT NULL DEFAULT '0',
  `VehicleWeaponsAmmo4` int(11) NOT NULL DEFAULT '0',
  `VehicleWeaponsAmmo5` int(11) NOT NULL DEFAULT '0',
  `VehicleLastDrivers1` int(11) NOT NULL DEFAULT '0',
  `VehicleLastDrivers2` int(11) NOT NULL DEFAULT '0',
  `VehicleLastDrivers3` int(11) NOT NULL DEFAULT '0',
  `VehicleLastDrivers4` int(11) NOT NULL DEFAULT '0',
  `VehicleLastPassengers1` int(11) NOT NULL DEFAULT '0',
  `VehicleLastPassengers2` int(11) NOT NULL DEFAULT '0',
  `VehicleLastPassengers3` int(11) NOT NULL DEFAULT '0',
  `VehicleLastPassengers4` int(11) NOT NULL DEFAULT '0',
  `VehicleBattery` float NOT NULL DEFAULT '100',
  `VehicleEngine` float NOT NULL DEFAULT '100',
  `VehicleTimesDestroyed` int(11) NOT NULL DEFAULT '0',
  `VehicleXMR` tinyint(1) NOT NULL DEFAULT '0',
  `VehicleAlarmLevel` int(11) NOT NULL DEFAULT '0',
  `VehicleLockLevel` int(11) NOT NULL DEFAULT '0',
  `VehicleImmobLevel` int(11) NOT NULL DEFAULT '1',
  `VehicleID` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `xmr_categories`
--

CREATE TABLE IF NOT EXISTS `xmr_categories` (
  `XMRDBID` int(11) NOT NULL,
  `XMRCategoryName` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `xmr_stations`
--

CREATE TABLE IF NOT EXISTS `xmr_stations` (
  `XMRStationDBID` int(11) NOT NULL,
  `XMRCategory` int(11) NOT NULL,
  `XMRStationName` varchar(90) NOT NULL,
  `XMRStationURL` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `ajail_logs`
--
ALTER TABLE `ajail_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `bannedlist`
--
ALTER TABLE `bannedlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `ban_logs`
--
ALTER TABLE `ban_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`BusinessDBID`);

--
-- Indexen voor tabel `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`char_dbid`);

--
-- Indexen voor tabel `criminal_record`
--
ALTER TABLE `criminal_record`
  ADD PRIMARY KEY (`idx`);

--
-- Indexen voor tabel `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`DBID`);

--
-- Indexen voor tabel `faction_ranks`
--
ALTER TABLE `faction_ranks`
  ADD PRIMARY KEY (`factionid`),
  ADD UNIQUE KEY `factionid` (`factionid`);

--
-- Indexen voor tabel `kick_logs`
--
ALTER TABLE `kick_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`acc_dbid`);

--
-- Indexen voor tabel `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`PropertyDBID`);

--
-- Indexen voor tabel `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`VehicleDBID`);

--
-- Indexen voor tabel `xmr_categories`
--
ALTER TABLE `xmr_categories`
  ADD PRIMARY KEY (`XMRDBID`);

--
-- Indexen voor tabel `xmr_stations`
--
ALTER TABLE `xmr_stations`
  ADD PRIMARY KEY (`XMRStationDBID`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `ajail_logs`
--
ALTER TABLE `ajail_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `bannedlist`
--
ALTER TABLE `bannedlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `ban_logs`
--
ALTER TABLE `ban_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `businesses`
--
ALTER TABLE `businesses`
  MODIFY `BusinessDBID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT voor een tabel `characters`
--
ALTER TABLE `characters`
  MODIFY `char_dbid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `criminal_record`
--
ALTER TABLE `criminal_record`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `factions`
--
ALTER TABLE `factions`
  MODIFY `DBID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `faction_ranks`
--
ALTER TABLE `faction_ranks`
  MODIFY `factionid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT voor een tabel `kick_logs`
--
ALTER TABLE `kick_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `masters`
--
ALTER TABLE `masters`
  MODIFY `acc_dbid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `properties`
--
ALTER TABLE `properties`
  MODIFY `PropertyDBID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT voor een tabel `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `VehicleDBID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `xmr_categories`
--
ALTER TABLE `xmr_categories`
  MODIFY `XMRDBID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT voor een tabel `xmr_stations`
--
ALTER TABLE `xmr_stations`
  MODIFY `XMRStationDBID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
