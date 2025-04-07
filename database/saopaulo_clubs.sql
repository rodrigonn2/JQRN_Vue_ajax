-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 07, 2025 at 12:35 AM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: saopaulo_clubs
--

-- --------------------------------------------------------

--
-- Table structure for table club
--

CREATE TABLE club (
  id int NOT NULL,
  name varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  foundation_date varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  img_simbolo varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  stadium_name varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  stadium_image varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  rival varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table club
--

INSERT INTO club (id, name, foundation_date, img_simbolo, stadium_name, stadium_image, rival) VALUES
(1, 'São Paulo Futebol Clube', ' January 25 - 1930', 'images/saopaulofc', 'Cícero Pompeu de Toledo (Morumbis)', 'images/morumbi', 'Corinthians, Palmeiras'),
(2, 'Sport Club Corinthians Paulista', 'September 1 - 1910', 'images/curintia.jpg', 'Neo Quimica Arena (Itaquerão)', 'images/itaquerao.jpg', 'Palmeiras, São Paulo'),
(3, 'Sociedade Esportiva Palmeiras', 'August 26 - 1914', 'images/parmera.jpg', 'Allianz Parque (Parque Antártica)', 'images/porcoarena.jpg', 'Corinthians, São Paulo'),
(4, 'Santos Futebol Clube', 'April 12 - 1912', 'images/peixe.jpg', 'Vila Belmiro (Urbano Caldeira)', 'images/vila.jpg', 'Corinthians, São Paulo');

-- --------------------------------------------------------

--
-- Table structure for table players
--

CREATE TABLE players (
  id int NOT NULL,
  club_id int NOT NULL,
  Name varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  img_player varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  age int NOT NULL,
  Position varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table players
--

INSERT INTO players (id, club_id, Name, img_player, age, Position) VALUES
(1, 1, 'Jonathan Calleri', 'images/players/calleri.jpg', 28, 'Forward'),
(2, 1, 'Lucas Moura', 'images/players/lucas.jpg', 30, 'Midfielder'),
(3, 1, 'Oscar', 'images/players/oscar.jpg', 30, 'Midfielder'),
(4, 1, 'Rafael', 'images/players/Rafael.jpg', 34, 'Goalkeeper'),
(5, 1, 'Ferreirinha', 'images/players/ferreirinha.jpg', 25, 'Forward'),
(6, 1, 'Wendell', 'images/players/wendell.jpg', 25, 'Left back'),
(7, 1, 'Igor Vinicius', 'images/players/igor.jpg', 28, 'Right back'),
(8, 1, 'Luciano', 'images/players/luciano.jpg', 28, 'Forward'),
(9, 1, 'Robert Arboleda', 'images/players/arboleda.jpg', 28, 'Defender'),
(10, 1, 'Alan Franco', 'images/players/franco.jpg', 32, 'Defender'),
(11, 1, 'Alisson', 'images/players/alisson.jpg', 32, 'Midfielder'),
(12, 2, 'Hugo Souza', 'images/players/hugo_s.jpg', 23, 'Goalkeeper'),
(13, 2, 'Gustavo Henrique', 'images/players/g_henrique.jpg', 25, 'Defender'),
(14, 2, 'Andre Ramalho', 'images/players/a_ramalho.jpg', 30, 'Defender'),
(15, 2, 'Jose Martinez', 'images/players/martinez.jpg', 30, 'Midfielder'),
(16, 2, 'Andre Carrillo', 'images/players/carrillo.jpg', 28, 'Midfielder'),
(17, 2, 'Ranielle', 'images/players/ranielle.jpg', 28, 'Midfielder'),
(18, 2, 'Rodrigo Garro', 'images/players/garro.jpg', 26, 'Midfielder'),
(19, 2, 'Matheuzinho', 'images/players/matheuzinho.jpg', 25, 'Right Back'),
(20, 2, 'Fabrizio Angileri', 'images/players/angileri.jpg', 33, 'Left Back'),
(21, 2, 'Yuri Alberto', 'images/players/alberto.jpg', 25, 'Forward'),
(22, 2, 'Memphis Depay', 'images/players/memphis.jpg', 31, 'Forward'),
(23, 3, 'Weverton', 'images/players/weverton.jpg', 36, 'Goalkeeper'),
(24, 3, 'Marcos Rocha', 'images/players/rocha.jpg', 33, 'Right Back'),
(25, 3, 'Micael', 'images/players/micael.jpg', 23, 'Defender'),
(26, 3, 'Murilo', 'images/players/murilo.jpg', 27, 'Defender'),
(27, 3, 'Piquerez', 'images/players/piquerez.jpg', 25, 'Left Back'),
(28, 3, 'Emiliano Martínez', 'images/players/emiliano_martinez.jpg', 29, 'Midfielder'),
(29, 3, 'Richard Ríos', 'images/players/rios.jpg', 25, 'Midfielder'),
(30, 3, 'Raphael Veiga', 'images/players/veiga.jpg', 28, 'Midfielder'),
(31, 3, 'Estêvão', 'images/players/estevao.jpg', 18, 'Forward'),
(32, 3, 'Facundo Torres', 'images/players/facundo.jpg', 23, 'Forward'),
(33, 3, 'Vitor Roque', 'images/players/roque.jpg', 22, 'Forward'),
(34, 4, 'Gabriel Brazão', 'images/players/brazao.jpg', 21, 'Goalkeeper'),
(35, 4, 'Léo Godoy', 'images/players/godoy.jpg', 25, 'right back'),
(36, 4, 'João Basso', 'images/players/basso.jpg', 23, 'Defender'),
(37, 4, 'Luan Peres', 'images/players/luan_peres.jpg', 25, 'Defender'),
(38, 4, 'Escobar', 'images/players/escobar.jpg', 28, 'Left back'),
(39, 4, 'Tomás Rincón', 'images/players/trincon.jpg', 28, 'Midfielder'),
(40, 4, 'Diego Pituca', 'images/players/pituca.jpg', 23, 'Midfielder'),
(41, 4, 'Neymar Jr.', 'images/players/meninoney.jpg', 32, 'Midfielder'),
(42, 4, 'Soteldo', 'images/players/solteldo.jpg', 25, 'Forward'),
(43, 4, 'Tiquinho Soares', 'images/players/soares.jpg', 29, 'Forward'),
(44, 4, 'Guilherme', 'images/players/guilherme.jpg', 22, 'Forward');

--
-- Indexes for dumped tables
--

--
-- Indexes for table club
--
ALTER TABLE club
  ADD PRIMARY KEY (id);

--
-- Indexes for table players
--
ALTER TABLE players
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table club
--
ALTER TABLE club
  MODIFY id int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table players
--
ALTER TABLE players
  MODIFY id int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
