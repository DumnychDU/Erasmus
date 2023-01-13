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
-- Structure for view `view_prichadzajuci_studenti`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_prichadzajuci_studenti`  AS SELECT `incoming_students`.`id` AS `id`, `incoming_students`.`meno` AS `meno`, `incoming_students`.`priezvisko` AS `priezvisko`, `incoming_students`.`rodne_cislo` AS `rodne_cislo`, `incoming_students`.`datum_a_miesto_narodenia` AS `datum_a_miesto_narodenia`, `incoming_students`.`narodnost` AS `narodnost`, `incoming_students`.`zdravotny_stav` AS `zdravotny_stav`, `incoming_students`.`rodinny_stav` AS `rodinny_stav`, `incoming_students`.`statna_prislusnost` AS `statna_prislusnost`, `incoming_students`.`pohlavie` AS `pohlavie`, `incoming_students`.`cislo_pasu` AS `cislo_pasu`, `incoming_students`.`sucasna_ulica` AS `sucasna_ulica`, `incoming_students`.`sucasne_mesto` AS `sucasne_mesto`, `incoming_students`.`sucasny_stat` AS `sucasny_stat`, `incoming_students`.`trvala_ulica` AS `trvala_ulica`, `incoming_students`.`trvale_mesto` AS `trvale_mesto`, `incoming_students`.`trvaly_stat` AS `trvaly_stat`, `incoming_students`.`email` AS `email`, `incoming_students`.`telefon` AS `telefon`, `incoming_students`.`domaca_univerzita` AS `domaca_univerzita`, `incoming_students`.`studijny_odbor` AS `studijny_odbor`, `incoming_students`.`specializacia` AS `specializacia`, `incoming_students`.`rok_studia` AS `rok_studia`, `incoming_students`.`stupen_studia` AS `stupen_studia`, `incoming_students`.`trvanie_studia_od` AS `trvanie_studia_od`, `incoming_students`.`trvanie_studia_do` AS `trvanie_studia_do` FROM `incoming_students` ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
