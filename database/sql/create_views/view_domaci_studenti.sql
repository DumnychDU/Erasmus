-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2021 at 12:39 AM
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
-- Structure for view `view_domaci_studenti`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_domaci_studenti`  AS SELECT `s`.`student_id` AS `student_id`, `s`.`typ_programu` AS `typ_programu`, `s`.`akademicky_rok` AS `akademicky_rok`, `s`.`studijny_odbor` AS `studijny_odbor`, `s`.`roky_studia` AS `roky_studia`, `s`.`domaca_univerzita` AS `domaca_univerzita`, `s`.`domaca_fakulta` AS `domaca_fakulta`, `s`.`koordinator` AS `koordinator`, `s`.`meno_studenta` AS `meno_studenta`, `s`.`priezvisko_studenta` AS `priezvisko_studenta`, `s`.`datum_narodenia` AS `datum_narodenia`, `s`.`pohlavie` AS `pohlavie`, `s`.`narodnost` AS `narodnost`, `s`.`miesto_narodenia` AS `miesto_narodenia`, `s`.`aktualna_adresa` AS `aktualna_adresa`, `s`.`trvala_adresa` AS `trvala_adresa`, `s`.`telefon` AS `telefon`, `s`.`email` AS `email`, `s`.`stupen_studia` AS `stupen_studia`, `s`.`krajina_univerzity_1` AS `krajina_univerzity`, `s`.`univerzita_1` AS `univerzita`, `s`.`datum_zaciatku_programu_1` AS `datum_zaciatku_programu`, `s`.`datum_konca_programu_1` AS `datum_konca_programu`, `s`.`dlzka_studia_v_mesiacoch_1` AS `dlzka_studia_v_mesiacoch`, `s`.`pocet_kreditov_1` AS `pocet_kreditov`, `s`.`materinsky_jazyk` AS `materinsky_jazyk`, `s`.`jazyk_domacej_univerzity` AS `jazyk_domacej_univerzity`, `s`.`cudzi_jazyk_1` AS `cudzi_jazyk_1`, `s`.`uroven_jazyka_1` AS `uroven_jazyka_1`, `s`.`cudzi_jazyk_2` AS `cudzi_jazyk_2`, `s`.`uroven_jazyka_2` AS `uroven_jazyka_2`, `s`.`cudzi_jazyk_3` AS `cudzi_jazyk_3`, `s`.`uroven_jazyka_3` AS `uroven_jazyka_3`, `s`.`predosle_studium_na_programe` AS `predosle_studium_na_programe`, `s`.`predosle_studium_od` AS `predosle_studium_od`, `s`.`predosle_studium_do` AS `predosle_studium_do`, `s`.`predosla_staz_na_programe` AS `predosla_staz_na_programe`, `s`.`predosla_staz_od` AS `predosla_staz_od`, `s`.`predosla_staz_do` AS `predosla_staz_do`, `s`.`potvrdenie` AS `potvrdenie` FROM `students` AS `s` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
