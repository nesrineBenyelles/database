-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 30 mai 2023 à 20:03
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `miniprojet`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `nom_admin` varchar(45) NOT NULL,
  `prenom_admin` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`idAdmin`, `nom_admin`, `prenom_admin`) VALUES
(1, 'Nour El Houda', 'Benyelles'),
(2, 'Nesrine', 'Benyelles'),
(3, 'Abir', 'Bensenouci');

-- --------------------------------------------------------

--
-- Structure de la table `affaire`
--

CREATE TABLE `affaire` (
  `id_aff` int(11) NOT NULL,
  `domaine` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `affaire`
--

INSERT INTO `affaire` (`id_aff`, `domaine`) VALUES
(1, 'Famille'),
(2, 'Administratif'),
(3, 'Pénal'),
(4, 'Sociale'),
(5, 'Propeiété intelectuelle'),
(6, 'Immobilier'),
(7, 'Famille'),
(8, 'Affaire'),
(9, 'Pénal'),
(10, 'Pénal'),
(11, 'Immobilier'),
(12, 'Sociale'),
(13, 'Propeiété intelectuelle'),
(14, 'Famille'),
(15, 'Administratif');

-- --------------------------------------------------------

--
-- Structure de la table `avocat`
--

CREATE TABLE `avocat` (
  `code_barrau` int(11) NOT NULL,
  `nom_av` varchar(45) NOT NULL,
  `prenom_av` varchar(45) NOT NULL,
  `num_tel_av` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `spécialité` varchar(45) DEFAULT NULL,
  `code_postale` int(10) DEFAULT NULL,
  `wilaya` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `siteweb` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `chemin_image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `avocat`
--

INSERT INTO `avocat` (`code_barrau`, `nom_av`, `prenom_av`, `num_tel_av`, `type`, `spécialité`, `code_postale`, `wilaya`, `email`, `password`, `siteweb`, `description`, `chemin_image`) VALUES
(11111111, 'y', 'y', '', '', NULL, NULL, NULL, 'nes-11-11@outlook.fr', 'yyyyyy', NULL, NULL, NULL),
(20104892, 'Hamza', 'Malti', '0721970349', 'Natioanal', 'Administratif', 1234567890, 'Tlemcen', 'maltihamza@gmail.com', 'hamza1268', NULL, NULL, NULL),
(20110523, 'Amina', 'Merabet', '0607952189', 'International', 'Affaire', 1230498745, 'Oran', 'aminamerabet@gmail.com', 'amina122', NULL, NULL, NULL),
(20150150, 'Touria', 'Ferouani', '0679200478', 'National', 'Famille', 1379512067, 'TLEMCEN', 'touriaferouani@gmail.com', 'touria78', NULL, NULL, NULL),
(20180005, 'Khadidja', 'Merad', '0512345278', 'International', 'Sociale', 1876543210, 'Oran', 'khadidjamerad@gmail.com', 'khadimerad', NULL, NULL, NULL),
(20181278, 'Fewzia', 'Benchouk', '0719703478', 'National', 'Pénal', 1278965430, 'Tizi Ouzou', 'fewziabenchouk@gmail.com', 'nesrine1111', NULL, NULL, NULL),
(20192078, 'Mohamed', 'Sahel', '0510047988', 'International', 'Propriété intelectuelle', 2103697458, 'Mostaganem', 'ohamedsahel@gmail.com', 'mohsahel', NULL, NULL, NULL),
(20200001, 'Fayssel', 'charif', '0512345278', 'National', 'Immobilier', 2103647895, 'Ouargla', 'faysselcharif@gmail.com', 'fatimasami', NULL, NULL, NULL),
(20200002, 'Houssem', 'Bendjaefer', '0509431878', 'International', 'Administratif', 1023479652, 'Tlemcen', 'houssembendjaefer@gmail.com', 'houssem14', NULL, NULL, NULL),
(20201279, 'Arslane', 'Belabdelli', '0602379001', 'National', 'Famille', 1023489652, 'Alger', 'arslanebelabdelli@gmail.com', 'arslane0712', NULL, NULL, NULL),
(20201325, 'Imad', 'Benikhlef', '0700116792', 'International', 'Sociale', 2079413065, 'Sidi Bel Abbés', 'imadbenikhlef@gmail.com', 'imad102', NULL, NULL, NULL),
(20213596, 'Feriel', 'Medjdoub', '0703946221', 'National', 'Pénal', 2014569327, 'Annaba', 'ferielmedjdoub@gmail.com', 'feriel1211', NULL, NULL, NULL),
(20230496, 'Adnane', 'Benzerdjeb', '0513790052', 'International', 'Propriété intelectuelle', 1023785312, 'Sidi Bel Abbès', 'adnanebenzerdjeb@gmail.com', 'adnane521', NULL, NULL, NULL),
(32165478, 'x', 'x', '', '', NULL, NULL, NULL, 'benyellesnesrine0@gmail.com', 'xxxxxx', NULL, NULL, NULL),
(33333333, 'a', 'a', '123', 'international', NULL, 11, 'Adrar', 'nes-11-11@outlook.fr', 'cccccc', 'aaa', 'aaaa', NULL),
(44444444, 'Tchouar', 'Djilali', '0552321265', 'national', 'droit de famille', NULL, 'Tlemcen', 'gregcarriedart@bigpond.com', 'gggggg', 'www.bureau.com', 'avocat compétant', 'images\\1685455758365-.png'),
(65847932, 'w', 'w', '', '', NULL, NULL, NULL, 'nes-11-11@outlook.fr', 'wwwwww', NULL, NULL, NULL),
(77777777, 't', 't', '', '', NULL, NULL, NULL, 'nicole_tibbs@yahoo.com', 'tttttt', NULL, NULL, NULL),
(78945612, 'h', 'h', '', '', NULL, NULL, NULL, 'jakedale2@hotmail.com', 'hhhhhh', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom_cl` varchar(45) NOT NULL,
  `prenom_cl` varchar(45) NOT NULL,
  `num_tel_cl` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_cl`, `prenom_cl`, `num_tel_cl`, `email`, `password`) VALUES
(1, 'Yasmine', 'Bougherara', '0512345278', 'yasminebougherara@gmail.com', 'yasmine07'),
(2, 'Amel', 'Boumediene', '0601973279', 'amelboumediene@gmail.com', 'amel2805'),
(3, 'Ali', 'Meziane', '0510779634', 'alimeziane@gmail.com', 'ali2079'),
(4, 'Chakib', 'Seladji', '0720934795', 'chakibseladji@gmail.com', 'seladji196'),
(5, 'Alaa', 'Bouchenak', '0721009637', 'alaabouchenak@gmail.com', 'alaabouch45'),
(6, 'Azza', 'Bensenouci', '0702397863', 'azzabensenouci@gmail.com', 'azzaben0309'),
(7, 'Youness', 'Saim', '0579248631', 'younesssaim@gmail.com', 'youness0318'),
(8, 'Imene', 'Benyelles', '0512345278', 'imanebenyelles@gmail.com', 'imanebeny20'),
(9, 'Yasser', 'Boubekeur', '05079625432', 'yasserboubekeur@gmail.com', 'yassser495'),
(10, 'Djawed', 'Bensaid', '0512345278', 'djawedbensaid@gmail.com', 'djawed1128'),
(11, 'Ahmed', 'Benabadji', '0720397864', 'ahmedbenabadji@gmail.com', 'ahmed1589'),
(12, 'Lylia', 'Benmansour', '0732569874', 'lyliabenmansour@gmail.com', 'benmansour8459'),
(13, 'Abderezzak', 'Sekkal', '0515795543', 'abderezzaksekkal@gmail.com', 'sekkal185'),
(14, 'Khaled', 'Kara', '0512344568', 'khaledkara@gmail.com', 'khaledkara597'),
(25727, 'x', 'xx', '', 'jakedale2@hotmail.com', 'xxxxxx'),
(25728, 'b', 'b', '', 'nicole_tibbs@yahoo.com', 'qqqqqq'),
(25729, 'h', 'h', '', 'gregcarriedart@bigpond.com', 'hhhhhh'),
(25730, 'e', 'e', '', 'gregcarriedart@bigpond.com', 'eeeeee');

-- --------------------------------------------------------

--
-- Structure de la table `dossier`
--

CREATE TABLE `dossier` (
  `id_dossier` int(11) NOT NULL,
  `nom_dos` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `rendez_vous`
--

CREATE TABLE `rendez_vous` (
  `id_ren` int(11) NOT NULL,
  `date_re` date NOT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_avocat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `rendez_vous`
--

INSERT INTO `rendez_vous` (`id_ren`, `date_re`, `id_client`, `id_avocat`) VALUES
(1, '2023-03-16', 3, 20110523),
(2, '2022-09-16', 2, 20230496),
(3, '2023-03-28', 12, 20201325),
(4, '2023-01-14', 11, 20201279),
(5, '2023-03-09', 12, 20200002),
(6, '2023-07-20', 13, 20192078),
(7, '2022-12-22', 9, 20104892),
(9, '2022-11-21', 6, 20150150),
(10, '2023-01-10', 1, 20180005),
(11, '2023-09-15', 4, 20181278),
(12, '2022-11-13', 3, 20192078),
(13, '2022-11-11', 13, 20213596);

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) NOT NULL,
  `expires` int(11) NOT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(41) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(0, 'abir', 'abirabouraben3@gmail.com', 'lm665;l;');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Index pour la table `affaire`
--
ALTER TABLE `affaire`
  ADD PRIMARY KEY (`id_aff`);

--
-- Index pour la table `avocat`
--
ALTER TABLE `avocat`
  ADD PRIMARY KEY (`code_barrau`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `dossier`
--
ALTER TABLE `dossier`
  ADD PRIMARY KEY (`id_dossier`);

--
-- Index pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  ADD PRIMARY KEY (`id_ren`),
  ADD KEY `fk_cl_ren` (`id_client`),
  ADD KEY `fk_av_ren` (`id_avocat`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `affaire`
--
ALTER TABLE `affaire`
  MODIFY `id_aff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `avocat`
--
ALTER TABLE `avocat`
  MODIFY `code_barrau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78945613;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25731;

--
-- AUTO_INCREMENT pour la table `dossier`
--
ALTER TABLE `dossier`
  MODIFY `id_dossier` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  MODIFY `id_ren` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `rendez_vous`
--
ALTER TABLE `rendez_vous`
  ADD CONSTRAINT `fk_cl_ren` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
