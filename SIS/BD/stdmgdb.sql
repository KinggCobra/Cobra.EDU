-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 11 mars 2021 à 22:08
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `stdmgdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `ue` varchar(50) NOT NULL,
  `hours_number` int(11) NOT NULL,
  `ECTS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `course`
--

INSERT INTO `course` (`id`, `ue`, `hours_number`, `ECTS`) VALUES
(10, 'mysql', 10, 0),
(11, 'jquery', 32, 0),
(12, 'sql', 17, 0),
(14, 'C++', 26, 0),
(15, 'BD', 4, 0),
(16, 'a', 4, 4),
(17, 'Projet ', 11, 19),
(18, 'PROG C', 4, 9),
(19, 'bonjour', 6, 4),
(20, 'course', 4, 4),
(21, 'cours', 7, 4);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `idF` int(11) NOT NULL,
  `nomF` varchar(255) NOT NULL,
  `parcours` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `score`
--

CREATE TABLE `score` (
  `student_id` int(11) NOT NULL,
  `ue_id` int(11) NOT NULL,
  `student_score` float NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `score`
--

INSERT INTO `score` (`student_id`, `ue_id`, `student_score`, `description`) VALUES
(22, 12, 10, 'ok'),
(20, 11, 14, 'bien');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `birthdate` date NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`id`, `prenom`, `nom`, `sex`, `birthdate`, `phone`, `address`) VALUES
(16, 'u2', 'u2', 'Female', '2017-06-09', '1234567890', 'aaaaa'),
(19, 'test', 'lnTest', 'Female', '2010-10-31', '122222', 'earth'),
(20, 'newwww', 'stddddd', 'Female', '2012-04-01', '987654345678', 'planet'),
(21, 'fn', 'ln', 'Male', '2004-06-17', '56765434', 'ttt'),
(22, 'fn2', 'ln2', 'Male', '2017-06-04', '98765678', 'new Test'),
(23, 'std1', 'trundle', 'Male', '2011-11-22', '111222457', 'earth'),
(26, 'messi', 'leo', 'Female', '2021-03-07', '0767106862', 'aaa'),
(27, 'mehdi', 'founounou', 'Male', '2012-03-04', '18', 'prout caca'),
(28, 'a', 'a', 'Male', '2021-03-06', '07', 'a');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nom`, `prenom`, `utype`) VALUES
(1, 'potato', 'ps123', '', '', '0'),
(2, 'robot', '112233', '', '', '0'),
(3, 'bek.noureddine', 'aaa', 'noureddine', 'bek', 'Etudiant'),
(4, 'no.ano', 'az', 'ano', 'no', 'Secretariat Pedagogique'),
(5, 'a.a', 'a', 'a', 'a', 'Etudiant'),
(6, 'gaetan.scopel', 'caca', 'scopel', 'gaetan', 'Secretariat Pedagogique');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`idF`);

--
-- Index pour la table `score`
--
ALTER TABLE `score`
  ADD KEY `fk_score_student` (`student_id`),
  ADD KEY `fk_score_course` (`ue_id`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `idF` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `fk_score_course` FOREIGN KEY (`ue_id`) REFERENCES `course` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_score_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
