-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mar. 12 sep. 2023 à 22:41
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
-- Base de données : `ECOMMERCE`
--

-- --------------------------------------------------------

--
-- table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- données de la table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `city`, `street`, `email`, `phone_number`, `postal_code`, `country`) VALUES
(1, 'John', 'Doe', 'New York', '123 Main St', 'john.doe@example.com', '123-456-7890', '10001', 'USA'),
(2, 'Jane', 'Smith', 'Los Angeles', '456 Elm St', 'jane.smith@example.com', '987-654-3210', '90001', 'USA'),
(3, 'Alice', 'Johnson', 'Chicago', '789 Oak St', 'alice.johnson@example.com', '555-555-5555', '60601', 'USA'),
(4, 'Bob', 'Williams', 'Houston', '567 Pine St', 'bob.williams@example.com', '111-222-3333', '77001', 'USA'),
(5, 'Eva', 'Martin', 'Miami', '234 Beach Rd', 'eva.martin@example.com', '777-888-9999', '33101', 'USA'),
(6, 'Kwesi', 'Amissah-Arthur', 'Cape Coast', 'Pedu Rd', 'kwesi.arthur@example.com', '233-244-567890', '00233', 'Ghana'),
(7, 'Isabel', 'Dos Santos', 'Luanda', 'Miramar', 'isabel.dos.santos@example.com', '244-926-123456', '1000', 'Angola'),
(8, 'Idriss', 'Déby', 'N\''Djamena', 'Presidential Palace', 'idriss.deby@example.com', '235-662-111222', '01 BP 109', 'Chad'),
(9, 'Marc', 'Ravalomanana', 'Antananarivo', 'Iavoloha', 'marc.ravalomanana@example.com', '261-20-1234567', '101', 'Madagascar'),
(10, 'Ntsay', 'Christian', 'Antananarivo', 'Ambohitsorohitra', 'christian.ntsay@example.com', '261-20-9876543', '101', 'Madagascar'),
(11, 'Jean', 'Rajaonarimampianina', 'Antananarivo', 'Iavoloha', 'jean.rajaonarimampianina@example.com', '261-20-5555555', '101', 'Madagascar'),
(12, 'Andry', 'Rajoelina', 'Antananarivo', 'Ambohitsorohitra', 'andry.rajoelina@example.com', '261-20-7777777', '101', 'Madagascar'),
(13, 'Hery', 'Rajaonarimampianina', 'Antananarivo', 'Iavoloha', 'hery.rajaonarimampianina@example.com', '261-20-8888888', '101', 'Madagascar'),
(14, 'Didier', 'Ratsiraka', 'Toamasina', 'Toamasina I', 'didier.ratsiraka@example.com', '261-53-1234567', '501', 'Madagascar'),
(15, 'Kwame', 'Nkrumah', 'Accra', '1 Independence Ave', 'kwame.nkrumah@example.com', '233-244-123456', 'GA1', 'Ghana'),
(16, 'Nelson', 'Mandela', 'Johannesburg', '46664 Vilakazi St', 'nelson.mandela@example.com', '27-123-456789', '2000', 'South Africa'),
(17, 'Haile', 'Selassie', 'Addis Ababa', 'Imperial Palace', 'haile.selassie@example.com', '251-911-987654', '1000', 'Ethiopia'),
(18, 'Wangari', 'Maathai', 'Nairobi', 'Karura Forest', 'wangari.maathai@example.com', '254-722-555555', '00100', 'Kenya'),
(19, 'Léopold', 'Sédar Senghor', 'Dakar', 'Avenue Léopold Sédar Senghor', 'leopold.senghor@example.com', '221-777-111222', 'BP 98', 'Senegal'),
(100, 'Kwame', 'Nkrumah', 'Accra', '1 Independence Ave', 'kwames.nkrumah@example.com', '233-244-123456', 'GA1', 'Ghana'),
(101, 'Nelson', 'Mandela', 'Johannesburg', '46664 Vilakazi St', 'nelsons.mandela@example.com', '27-123-456789', '2000', 'South Africa'),
(102, 'Haile', 'Selassie', 'Addis Ababa', 'Imperial Palace', 'hailes.selassie@example.com', '251-911-987654', '1000', 'Ethiopia'),
(103, 'Wangari', 'Maathai', 'Nairobi', 'Karura Forest', 'wangaris.maathai@example.com', '254-722-555555', '00100', 'Kenya'),
(104, 'Léopold', 'Sédar Senghor', 'Dakar', 'Avenue Léopold Sédar Senghor', 'leopolds.senghor@example.com', '221-777-111222', 'BP 98', 'Senegal'),
(105, 'Chinua', 'Achebe', 'Enugu', '5 Ogidi Rd', 'chinua.achebe@example.com', '234-802-234567', '400001', 'Nigeria'),
(106, 'Ellen', 'Johnson Sirleaf', 'Monrovia', 'Executive Mansion', 'ellen.sirleaf@example.com', '231-886-987654', '1000', 'Liberia'),
(107, 'Kofi', 'Annan', 'Kumasi', '14 July 1993 Rd', 'kofi.annan@example.com', '233-277-765432', '00233', 'Ghana'),
(108, 'Desmond', 'Tutu', 'Cape Town', 'Anglican Archbishops Residence', 'desmond.tutu@example.com', '27-828-111111', '8001', 'South Africa'),
(109, 'Mansa', 'Musa', 'Timbuktu', 'Golden Palace', 'mansa.musa@example.com', '223-999-888777', '32000', 'Mali'),
(110, 'Yaa', 'Asantewaa', 'Kumasi', 'Golden Stool Palace', 'yaa.asantewaa@example.com', '233-544-777888', '00233', 'Ghana'),
(111, 'Jomo', 'Kenyatta', 'Nairobi', 'State House Rd', 'jomo.kenyatta@example.com', '254-722-987654', '00100', 'Kenya'),
(112, 'Amílcar', 'Cabral', 'Bissau', 'Avenida Amílcar Cabral', 'amilcar.cabral@example.com', '245-955-123456', '1004', 'Guinea-Bissau'),
(113, 'Amina', 'of Zazzau', 'Zaria', 'Zazzau Royal Palace', 'amina.zazzau@example.com', '234-906-876543', '810211', 'Nigeria'),
(114, 'Paul', 'Kagame', 'Kigali', 'Village Urugwiro', 'paul.kagame@example.com', '250-788-987654', '250', 'Rwanda'),
(115, 'Hassan', 'II', 'Rabat', 'Royal Palace of Rabat', 'hassan.ii@example.com', '212-661-555555', '10000', 'Morocco');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `ordered_at` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
--  table `orders`
--

INSERT INTO `orders` (`id`, `ordered_at`, `delivered_at`, `amount`, `customer_id`) VALUES
(141, '2023-08-01 10:00:00', '2023-08-02 15:00:00', 1450, 1),
(142, '2023-08-02 11:30:00', '2023-08-03 14:45:00', 200, 2),
(143, '2023-08-03 09:15:00', '2023-08-04 12:30:00', 50, 3),
(144, '2023-08-04 13:00:00', '2023-08-05 16:15:00', 30320, 4),
(145, '2023-08-05 14:30:00', '2023-08-06 18:30:00', 100, 5),
(146, '2023-08-06 10:45:00', '2023-08-07 13:45:00', 725, 6),
(147, '2023-08-07 12:00:00', '2023-08-08 15:15:00', 2240, 7),
(148, '2023-08-08 08:15:00', '2023-08-09 11:30:00', 180, 8),
(149, '2023-08-09 14:00:00', '2023-08-10 17:30:00', 9054, 9),
(150, '2023-08-10 09:30:00', '2023-08-11 12:45:00', 120, 10),
(151, '2023-08-11 11:45:00', '2023-08-12 14:30:00', 2350, 11),
(152, '2023-08-12 13:30:00', '2023-08-13 16:15:00', 7450, 12),
(153, '2023-08-13 15:00:00', '2023-08-14 18:30:00', 180, 13),
(154, '2023-08-14 10:15:00', '2023-08-15 13:45:00', 160, 14),
(155, '2023-08-15 12:30:00', '2023-08-16 15:15:00', 9540, 15),
(156, '2023-08-16 08:45:00', '2023-08-17 11:30:00', 200, 16),
(157, '2023-08-17 14:15:00', '2023-08-18 17:30:00', 1310, 17),
(158, '2023-08-18 09:00:00', '2023-08-19 12:45:00', 130, 18),
(159, '2023-08-19 10:45:00', '2023-08-20 13:30:00', 750, 19),
(160, '2023-08-20 13:30:00', '2023-08-21 16:15:00', 2050, 10),
(171, '2023-08-21 10:00:00', '2023-08-22 15:00:00', 130, 1),
(172, '2023-08-22 11:30:00', '2023-08-23 14:45:00', 180, 12),
(173, '2023-08-23 09:15:00', '2023-08-24 12:30:00', 90, 10),
(174, '2023-08-24 13:00:00', '2023-08-25 16:15:00', 300, 4),
(175, '2023-08-25 14:30:00', '2023-08-26 18:30:00', 120, 5),
(176, '2023-08-26 10:45:00', '2023-08-27 13:45:00', 100, 8),
(177, '2023-08-27 12:00:00', '2023-08-28 15:15:00', 220, 6),
(178, '2023-08-28 08:15:00', '2023-08-29 11:30:00', 140, 6),
(179, '2023-08-29 14:00:00', '2023-08-30 17:30:00', 160, 2),
(180, '2023-08-30 09:30:00', '2023-08-31 12:45:00', 110, 18);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;