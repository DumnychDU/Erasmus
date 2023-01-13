-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2021 at 07:49 PM
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
-- Database: `erasmus_test`
--

-- --------------------------------------------------------

--
-- Structure for view `view_zoznam_prihlasok_domacich_studentov`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_zoznam_prihlasok_domacich_studentov`  AS select student_id AS cislo_studenta,
concat(meno_studenta, ' ', priezvisko_studenta) AS meno,
'' AS katedra,
stupen_studia AS stupen_studia,
roky_studia AS rocnik,
studijny_odbor AS studijny_program,
'' AS studijny_priemer_vazeny,
'' AS body_za_A,
'' AS body_za_B,
'' AS body_za_C,
'' AS body_za_D,
'' AS spolu,
'' AS uspel,
'' AS neuspel,
'' AS nahradnik,
krajina_univerzity_1 AS stat,
univerzita_1 AS univerzita,
dlzka_studia_v_mesiacoch_1 AS dlzka_studia,
'' AS jazyk,
'' AS pozn,
'' AS konecne_poradie,
'' AS poradie,
'' AS body_spolu
from `erasmus_test`.`students` WHERE meno_studenta != '' AND univerzita_1 != '' 
UNION
select 
student_id AS cislo_studenta,
concat(meno_studenta, ' ', priezvisko_studenta) AS meno,
'' AS katedra,
stupen_studia AS stupen_studia,
roky_studia AS rocnik,
studijny_odbor AS studijny_program,
'' AS studijny_priemer_vazeny,
'' AS body_za_A,
'' AS body_za_B,
'' AS body_za_C,
'' AS body_za_D,
'' AS spolu,
'' AS uspel,
'' AS neuspel,
'' AS nahradnik,
krajina_univerzity_2 AS stat,
univerzita_2 AS univerzita,
dlzka_studia_v_mesiacoch_2 AS dlzka_studia,
'' AS jazyk,
'' AS pozn,
'' AS konecne_poradie,
'' AS poradie,
'' AS body_spolu
from `erasmus_test`.`students` WHERE meno_studenta != '' AND univerzita_2 != '' 
UNION
select 
student_id AS cislo_studenta,
concat(meno_studenta, ' ', priezvisko_studenta) AS meno,
'' AS katedra,
stupen_studia AS stupen_studia,
roky_studia AS rocnik,
studijny_odbor AS studijny_program,
'' AS studijny_priemer_vazeny,
'' AS body_za_A,
'' AS body_za_B,
'' AS body_za_C,
'' AS body_za_D,
'' AS spolu,
'' AS uspel,
'' AS neuspel,
'' AS nahradnik,
krajina_univerzity_3 AS stat,
univerzita_3 AS univerzita,
dlzka_studia_v_mesiacoch_3 AS dlzka_studia,
'' AS jazyk,
'' AS pozn,
'' AS konecne_poradie,
'' AS poradie,
'' AS body_spolu
from `erasmus_test`.`students` WHERE meno_studenta != '' AND univerzita_3 != '' 
ORDER BY 1;

--
-- VIEW `view_zoznam_prihlasok_domacich_studentov`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
