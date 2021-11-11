-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 02:04 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `idarticle` int(11) NOT NULL,
  `libelle` varchar(100) DEFAULT NULL,
  `desc` varchar(500) DEFAULT NULL,
  `prix` double DEFAULT 0,
  `img` varchar(200) DEFAULT 'images/OXO---Homepage_39.jpg',
  `qte` int(11) DEFAULT 0,
  `dateajout` datetime DEFAULT current_timestamp(),
  `idCat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`idarticle`, `libelle`, `desc`, `prix`, `img`, `qte`, `dateajout`, `idCat`) VALUES
(20, 'Chunky Heeled Sandal Mules', '                         Style:	Elegant\r\nColor:	Black\r\nPattern Type:	Plain\r\nType:	Mules\r\nHeels:	Chunky\r\nHeel Height:	Mid Heel\r\nSize Fit:	True To Size\r\nLining Material:	Polyester\r\nInsole Material:	Microfiber Leather\r\nOutsole Material:	Rubber\r\nUpper Material:	Fabric\r\n                    ', 19, 'https://img.ltwebstatic.com/images3_pi/2021/04/27/161951178160da0b0587fb948ab4116069c264ec68_thumbnail_600x.webp', 120, '2021-06-28 19:01:30', 2),
(21, 'Men Minimalist Lace-Up Front Sneakers', ' Color:	White\r\nPattern Type:	Plain\r\nSize Fit:	True To Size\r\nType:	Other\r\nStrap Type:	Lace Up\r\nInsole Material:	Mesh\r\nUpper Material:	Fabric\r\nOutsole Material:	Rubber', 19.5, 'https://img.ltwebstatic.com/images3_pi/2021/04/16/1618544261eefecc75d007e321efd16ecc31fba9a8_thumbnail_600x.webp', 100, '2021-06-28 19:03:27', 2),
(22, 'Men Letter Graphic Lace-up Decor Sneakers', ' Color:	Black\r\nPattern Type:	Letter\r\nDetails:	Lace Up\r\nSize Fit:	True To Size\r\nInsole Material:	Mesh\r\nUpper Material:	Fabric\r\nOutsole Material:	Rubber', 17.5, 'https://img.ltwebstatic.com/images3_pi/2021/04/08/1617863239246eb674d5838d7ae18bde31f91abf22_thumbnail_600x.webp', 100, '2021-06-28 19:05:18', 2),
(23, 'Men Sun Print Short Sleeve Tee', ' Style:	Vacation\r\nColor:	Multicolor\r\nPattern Type:	Graphic\r\nLength:	Regular\r\nFit Type:	Regular Fit\r\nNeckline:	Round Neck\r\nSleeve Length:	Short Sleeve\r\nSleeve Type:	Regular Sleeve\r\nSheer:	Semi-Sheer\r\nPlacket Type:	Pullovers\r\nMaterial:	Cotton\r\nComposition:	65% Cotton, 35% Polyester\r\nFabric:	Medium Stretch', 5.99, 'https://img.ltwebstatic.com/images3_pi/2021/06/01/1622511242ff6f9157bfa0a66efb082fd9f6558371_thumbnail_600x.webp', 100, '2021-06-28 19:06:56', 1),
(25, '14pcs Bead Detail Ring', ' Color:	Multicolor\r\nDetails:	Flowers\r\nMaterial:	Plastic', 3.22, 'https://img.ltwebstatic.com/images3_pi/2021/05/18/1621307950eeaed4c1893d69388229a21b7dd16e54_thumbnail_600x.webp', 10, '2021-06-28 21:02:12', 3),
(27, ' Tie Neck Ruched Bust Tiered Dress', ' Style:	Boho\r\nColor:	White\r\nPattern Type:	Plain\r\nLength:	Short\r\nType:	A Line\r\nDetails:	Ruffle, Ruched, Ruffle Hem, Tie Front, Ruched Bust\r\nFit Type:	Regular Fit\r\nNeckline:	Square Neck\r\nSleeve Length:	Short Sleeve\r\nSleeve Type:	Puff Sleeve\r\nWaist Line:	High Waist\r\nSheer:	No\r\nHem Shaped:	Flounce\r\nBody:	Lined\r\nMaterial:	Cotton\r\nComposition:	100% Cotton\r\nFabric:	Non-Stretch', 16.99, 'https://img.ltwebstatic.com/images3_pi/2020/04/29/15881254244d99af757258f3d9ec9bed4ccbac1a1d_thumbnail_600x.webp', 100, '2021-06-28 21:10:57', 1),
(28, 'Fedora � boucle', ' Couleur:	Noir\r\nStyle:	Boh�me\r\nType:	Chapeau � bord large\r\nComposition:	100% Polyester', 12, 'https://img.ltwebstatic.com/images2_pi/2019/08/15/15658554151407294143_thumbnail_600x799.webp', 100, '2021-06-28 21:24:13', 3),
(29, 'Piercing au nez en acier inoxydable', ' ', 5, 'https://img.ltwebstatic.com/images3_pi/2021/06/10/1623289538101e324df2f8deb57fb3a0409c9f997e_thumbnail_600x.webp', 100, '2021-06-28 21:28:46', 3),
(30, 'T-shirt with diamond print', ' test', 10, 'https://img.ltwebstatic.com/images3_pi/2021/03/03/16147466359d3d53d6c7b4d4eed09bca591658cda5_thumbnail_600x.webp', 100, '2021-06-28 23:12:48', 1),
(31, 'losange', ' test', 10, 'https://img.ltwebstatic.com/images3_pi/2020/12/21/1608517313308533abfe99d2db1dd56327908b0717_thumbnail_600x.webp', 100, '2021-06-28 23:23:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `idCat` int(11) NOT NULL,
  `categorie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`idCat`, `categorie`) VALUES
(1, 'Vêtements'),
(2, 'Chaussures'),
(3, 'Accessoires');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `login` varchar(100) NOT NULL,
  `mdp` varchar(100) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`login`, `mdp`, `nom`, `prenom`) VALUES
('atiqa55', 'atiqa', 'atiqa', 'kacem'),
('mahdi', 'mahdi', 'atmani', 'mahdi'),
('oulma47', 'oumla', 'OULMA', 'MOHAMED'),
('oumaima32', 'oumaima', 'tijja', 'oumaima');

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

CREATE TABLE `commande` (
  `idcommande` int(11) NOT NULL,
  `login` varchar(100) DEFAULT NULL,
  `datecmd` datetime DEFAULT current_timestamp(),
  `prixtotale` double DEFAULT NULL,
  `etat` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `commande`
--

INSERT INTO `commande` (`idcommande`, `login`, `datecmd`, `prixtotale`, `etat`) VALUES
(1015, 'mahdi', '2021-06-28 23:19:29', 38.5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ligne_commande`
--

CREATE TABLE `ligne_commande` (
  `idcmd` int(11) NOT NULL,
  `idart` int(11) NOT NULL,
  `nbr` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ligne_commande`
--

INSERT INTO `ligne_commande` (`idcmd`, `idart`, `nbr`) VALUES
(1015, 20, 1),
(1015, 21, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`idarticle`),
  ADD KEY `FK_categorie` (`idCat`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idCat`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`login`);

--
-- Indexes for table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`idcommande`),
  ADD KEY `Login_idx` (`login`);

--
-- Indexes for table `ligne_commande`
--
ALTER TABLE `ligne_commande`
  ADD PRIMARY KEY (`idcmd`,`idart`),
  ADD KEY `idArt_idx` (`idart`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `idarticle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idCat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `commande`
--
ALTER TABLE `commande`
  MODIFY `idcommande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_categorie` FOREIGN KEY (`idCat`) REFERENCES `categorie` (`idCat`);

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `Login` FOREIGN KEY (`login`) REFERENCES `client` (`login`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `ligne_commande`
--
ALTER TABLE `ligne_commande`
  ADD CONSTRAINT `idArt` FOREIGN KEY (`idart`) REFERENCES `article` (`idarticle`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `idCmd` FOREIGN KEY (`idcmd`) REFERENCES `commande` (`idcommande`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
