-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2021 at 09:49 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `typ_programu` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `akademicky_rok` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `studijny_odbor` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `roky_studia` int(20) DEFAULT NULL,
  `domaca_univerzita` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `domaca_fakulta` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `koordinator` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meno_studenta` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `priezvisko_studenta` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum_narodenia` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `pohlavie` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `narodnost` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `miesto_narodenia` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `aktualna_adresa` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `trvala_adresa` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefon` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `stupen_studia` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `krajina_univerzity_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `univerzita_1` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum_zaciatku_programu_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum_konca_programu_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dlzka_studia_v_mesiacoch_1` int(30) DEFAULT NULL,
  `pocet_kreditov_1` int(30) DEFAULT NULL,
  `krajina_univerzity_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `univerzita_2` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum_zaciatku_programu_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum_konca_programu_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dlzka_studia_v_mesiacoch_2` int(30) DEFAULT NULL,
  `pocet_kreditov_2` int(30) DEFAULT NULL,
  `krajina_univerzity_3` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `univerzita_3` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum_zaciatku_programu_3` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum_konca_programu_3` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dlzka_studia_v_mesiacoch_3` int(30) DEFAULT NULL,
  `pocet_kreditov_3` int(30) DEFAULT NULL,
  `materinsky_jazyk` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `jazyk_domacej_univerzity` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cudzi_jazyk_1` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uroven_jazyka_1` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cudzi_jazyk_2` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uroven_jazyka_2` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cudzi_jazyk_3` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uroven_jazyka_3` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `predosle_studium_na_programe` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `predosle_studium_od` date DEFAULT NULL,
  `predosle_studium_do` date DEFAULT NULL,
  `predosla_staz_na_programe` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `predosla_staz_od` date DEFAULT NULL,
  `predosla_staz_do` date DEFAULT NULL,
  `potvrdenie` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_id` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `typ_programu`, `akademicky_rok`, `studijny_odbor`, `roky_studia`, `domaca_univerzita`, `domaca_fakulta`, `koordinator`, `meno_studenta`, `priezvisko_studenta`, `datum_narodenia`, `pohlavie`, `narodnost`, `miesto_narodenia`, `aktualna_adresa`, `trvala_adresa`, `telefon`, `email`, `stupen_studia`, `krajina_univerzity_1`, `univerzita_1`, `datum_zaciatku_programu_1`, `datum_konca_programu_1`, `dlzka_studia_v_mesiacoch_1`, `pocet_kreditov_1`, `krajina_univerzity_2`, `univerzita_2`, `datum_zaciatku_programu_2`, `datum_konca_programu_2`, `dlzka_studia_v_mesiacoch_2`, `pocet_kreditov_2`, `krajina_univerzity_3`, `univerzita_3`, `datum_zaciatku_programu_3`, `datum_konca_programu_3`, `dlzka_studia_v_mesiacoch_3`, `pocet_kreditov_3`, `materinsky_jazyk`, `jazyk_domacej_univerzity`, `cudzi_jazyk_1`, `uroven_jazyka_1`, `cudzi_jazyk_2`, `uroven_jazyka_2`, `cudzi_jazyk_3`, `uroven_jazyka_3`, `predosle_studium_na_programe`, `predosle_studium_od`, `predosle_studium_do`, `predosla_staz_na_programe`, `predosla_staz_od`, `predosla_staz_do`, `potvrdenie`, `time_id`) VALUES
(56, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 14:27:06.865180'),
(57, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 15:54:02.192320'),
(58, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 16:08:21.731290'),
(59, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 16:09:24.965921'),
(60, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 16:11:57.335861'),
(61, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 16:13:00.093808'),
(62, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 16:16:40.686461'),
(63, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 17:01:27.823035'),
(64, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 17:07:49.708629'),
(65, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 17:08:53.969535'),
(66, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 17:12:52.143324'),
(67, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 17:16:10.475347'),
(68, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 17:16:54.479574'),
(69, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 17:18:24.477055'),
(70, 'Studium', '0000', 'informatika', 1, 'Hlavná 347', 'ioupu', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', 'Jakub', 'Čirip', '2021-08-06', 'male', 'slovakia', 'kosice', 'Hlavná 347', '', '+421948688505', 'jakub.cirip@gmail.com', 'First (bachelor)', 'Greece', 'Piraeus University of Applied Sciences, Aigaleo, Greece', '2021-02', '2021-10', 9, 15, '', '', '', '', 0, 0, '', '', '', '', 0, 0, 'Slovakia', '', 'ANJ', 'B1', 'hkfgkghf', 'A2', '', '', 'YES', '2021-08-03', '2021-08-25', 'YES', '2021-08-03', '2021-08-31', 'Yes', '2021-08-25 17:20:33.447072'),
(71, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 17:37:32.519952'),
(72, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 17:38:09.780856'),
(73, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 17:41:42.717007'),
(74, '', '0000', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 17:44:30.706717'),
(75, '', '4043', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 18:39:14.225780'),
(76, 'Studium', '4043', 'informatika', 1, 'Tuke Košice 40', 'FEI', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', 'Daniel', 'Suchý', '0000-00-00', 'male', 'slovakia', 'Košice', 'Jesenná 28, Košice', '', '+421944256789', 'daniel.suchy@gmail.com', 'Second (master)', 'France', 'Ecole díngénieurs – ECE Paris, France', '2021-09', '2021-12', 4, 18, 'Greece', 'Aristoteleto Panepistimio Thessalonikis, Greece', '2021-09', '2021-12', 4, 18, 'Spain', 'Universitat Politécnica de Catalunya, Spain', '2021-09', '2021-12', 4, 18, 'Slovakia', '', 'ANJ', 'B2', 'RJZ', 'A2', '', '', 'NO', '0000-00-00', '0000-00-00', 'NO', '0000-00-00', '0000-00-00', 'Yes', '2021-08-25 20:53:52.078889'),
(77, '', '4043', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 21:03:07.985644'),
(78, '', '4043', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 21:04:05.270778'),
(79, '', '4043', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 21:04:19.059849'),
(80, '', '4043', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 21:06:03.797169'),
(81, '', '4043', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 21:06:24.357899'),
(82, '', '4043', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '2021-09-01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 21:10:56.361660'),
(83, '', '2021/2022', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '2021-08-05', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 21:15:37.058551'),
(84, '', '2021/2022', '', 0, '', '', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', '', '', '2021-08-05', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '2021-08-25 21:17:01.090539'),
(85, 'Studium', '2021/2022', 'informatika', 1, 'Hlavná 347', 'dfsdf', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', 'Jakub', 'Čirip', '2021-08-05', 'male', 'slovakia', 'shdfcvh', 'Hlavná 347', '', '+421948688505', 'jakub.cirip@gmail.com', 'First (bachelor)', 'Poland', 'University of Hradec Králové', '2021-03', '2021-11', 9, 15, '', '', '', '', 0, 0, '', '', '', '', 0, 0, 'Slovakia', '', 'rzkzukeu', 'A2', '', '', '', '', 'NO', '0000-00-00', '0000-00-00', 'NO', '0000-00-00', '0000-00-00', '', '2021-08-26 18:30:22.180346'),
(86, 'Studium', '2021/2022', 'informatika', 1, 'Hlavná 347', 'sdfsd', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', 'Jakub', 'Čirip', '2021-08-04', 'male', 'gbsfg', 'Košice', 'Hlavná 347', '', '+421948688505', 'jakub.cirip@gmail.com', 'First (bachelor)', 'Croatia', 'Josip Juraj Strossmayer University of Osijek – UNIOS, Croatia', '2021-03', '2021-11', 9, 15, '', '', '', '', 0, 0, '', '', '', '', 0, 0, 'Slovakia', '', 'ANJ', 'B1', '', '', '', '', 'NO', '0000-00-00', '0000-00-00', 'NO', '0000-00-00', '0000-00-00', '', '2021-08-26 18:49:57.999610'),
(87, 'Studium', '2021/2022', 'informatika', 1, 'Hlavná 347', 'yuiyut', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', 'Jakub', 'Čirip', '2021-08-28', 'male', 'rhnmty jm', 'kosice', 'Hlavná 347', '', '+421948688505', 'jakub.cirip@gmail.com', 'First (bachelor)', 'Poland', 'Politechnika Czestochowska, Poland', '2021-03', '2021-11', 9, 15, '', '', '', '', 0, 0, '', '', '', '', 0, 0, 'Slovakia', '', 'ANJ', 'B1', 'RJZ', 'B2', '', '', 'NO', '0000-00-00', '0000-00-00', 'NO', '0000-00-00', '0000-00-00', '', '2021-08-26 18:56:24.796981'),
(88, 'Studium', '2021/2022', 'informatika', 1, 'Hlavná 347', 'trheh', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', 'Jakub', 'Čirip', '2021-08-04', 'male', 'gbsfg', 'vbcbz', 'Hlavná 347', '', '+421948688505', 'jakub.cirip@gmail.com', 'First (bachelor)', 'Spain', 'Universidad de Málaga, Spain', '2021-06', '2021-12', 7, 15, '', '', '', '', 0, 0, '', '', '', '', 0, 0, 'Slovakia', '', 'rzkzukeu', 'A2', '', '', '', '', 'NO', '0000-00-00', '0000-00-00', 'NO', '0000-00-00', '0000-00-00', '', '2021-08-26 19:02:42.858060'),
(89, 'Studium', '2021/2022', 'informatika', 1, 'Hlavná 347', 'ghjdfy', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', 'Jakub', 'Čirip', '2021-08-24', 'male', 'gbsfg', 'shdfcvh', 'Hlavná 347', '', '+421948688505', 'jakub.cirip@gmail.com', 'Second (master)', 'Greece', 'Technological Education Institute of Sterea Ellada, Lamia-Athens, Greece', '2021-03', '2021-06', 4, 15, '', '', '', '', 0, 0, '', '', '', '', 0, 0, 'Slovakia', '', 'ANJ', 'B2', '', '', '', '', 'NO', '0000-00-00', '0000-00-00', 'NO', '0000-00-00', '0000-00-00', '', '2021-08-26 19:05:16.279784'),
(90, 'Studium', '2021/2022', 'informatika', 2, 'Hlavná 347', 'opuii', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', 'Jakub', 'Čirip', '2021-08-06', 'male', 'slovakia', 'Košice', 'Hlavná 347', '', '+421948688505', 'jakub.cirip@gmail.com', 'Third (doctoral)', 'Croatia', 'University of Zagreb, Faculty of Electrical Engineering and Computing', '2021-03', '2021-10', 8, 15, '', '', '', '', 0, 0, '', '', '', '', 0, 0, 'Slovakia', '', 'ANJ', 'B1', 'RJZ', 'A2', '', '', 'NO', '0000-00-00', '0000-00-00', 'NO', '0000-00-00', '0000-00-00', '', '2021-08-26 19:09:25.239075'),
(91, 'Studium', '2021/2022', 'informatika', 1, 'Hlavná 347', 'ergerwg', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', 'Jakub', 'Čirip', '2021-08-06', 'male', 'slovakia', 'shdfcvh', 'Hlavná 347', '', '+421948688505', 'jakub.cirip@gmail.com', 'Second (master)', 'Latvia', 'Riga Technical University, Latvia', '2021-02', '2021-11', 10, 15, '', '', '', '', 0, 0, '', '', '', '', 0, 0, 'Slovakia', '', 'ANJ', 'A2', '', '', '', '', 'NO', '0000-00-00', '0000-00-00', 'NO', '0000-00-00', '0000-00-00', '', '2021-08-26 19:22:36.327442'),
(92, 'Studium', '2021/2022', 'informatika', 1, 'Hlavná 347', 'rtyuteu', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', 'Jakub', 'Čirip', '2021-09-10', 'male', 'rhnmty jm', 'shdfcvh', 'Hlavná 347', '', '+421948688505', 'jakub.cirip@gmail.com', 'First (bachelor)', 'Lithuania', 'Kaunas University of Technology Faculty of Electrical and Electronics Engineering, Kaunas, Lithuania', '2021-02', '2021-12', 11, 15, '', '', '', '', 0, 0, '', '', '', '', 0, 0, 'Slovakia', '', 'ANJ', 'C1', '', '', '', '', 'NO', '0000-00-00', '0000-00-00', 'NO', '0000-00-00', '0000-00-00', '', '2021-08-26 19:30:25.737385'),
(93, 'Studium', '2021/2022', 'informatika', 1, 'Hlavná 347', 'gdfg', 'Assoc. Prof. Mária Gamcová, PhD., tel.: +421602 2828, 4180; e-mail: maria.gamcova@tuke.sk', 'Jakub', 'Čirip', '2021-08-05', 'male', 'gbsfg', 'vbcbz', 'Hlavná 347', '', '+421948688505', 'jakub.cirip@gmail.com', 'Second (master)', 'Croatia', 'Josip Juraj Strossmayer University of Osijek – UNIOS, Croatia', '2021-02', '2021-12', 11, 15, '', '', '', '', 0, 0, '', '', '', '', 0, 0, 'Slovakia', '', 'ANJ', 'B1', '', '', '', '', 'NO', '0000-00-00', '0000-00-00', 'NO', '0000-00-00', '0000-00-00', '', '2021-08-26 19:32:57.010338');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD UNIQUE KEY `students_idx_1` (`time_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
