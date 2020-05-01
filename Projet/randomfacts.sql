-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 01 mai 2020 à 19:03
-- Version du serveur :  5.7.23
-- Version de PHP :  7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `randomfacts`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `libelle`) VALUES
(1, 'cine_tele'),
(2, 'science'),
(3, 'food'),
(4, 'geographie'),
(5, 'animaux');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` mediumtext NOT NULL,
  `dateCreation` date NOT NULL,
  `idFact` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idFact` (`idFact`),
  KEY `idUser` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `facts`
--

DROP TABLE IF EXISTS `facts`;
CREATE TABLE IF NOT EXISTS `facts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(50) NOT NULL,
  `fait` mediumtext NOT NULL,
  `details` mediumtext NOT NULL,
  `source` varchar(200) NOT NULL,
  `idCategorie` int(11) DEFAULT NULL,
  `dateCreation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idCategorie` (`idCategorie`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `facts`
--

INSERT INTO `facts` (`id`, `img`, `fait`, `details`, `source`, `idCategorie`, `dateCreation`) VALUES
(1, 'img/defaut.jpg', 'Il faudrait 6 mois en voiture pour se rendre sur la luneen voiture à 95 km/h.', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.sciencefocus.com/space/if-you-could-drive-a-car-upwards-at-60mph-how-long-would-it-take-to-get-to-the-moon/', 2, '2019-01-08 15:19:18'),
(2, 'img/defaut.jpg', 'Les humains et les chiens sont les deux seules espèces connues à rechercher des indices visuels dans les yeux d\'une autre personne. Et les chiens ne le font qu\'avec les humains.\r\n', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://fr.wikipedia.org/wiki/Comportement_du_chien', 5, '2019-01-08 15:19:18'),
(3, 'img/defaut.jpg', 'Selon les astronautes qui reviennent de missions spatiales, l’espace sent comme un mélange de métal chaud, de fumées de soudage et de steak poêlé.', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 2, '2019-01-08 15:19:18'),
(4, 'img/defaut.jpg', ' Il y a un phénomène que les scientifiques appellent “bizarrerie lentille gravitationnelle” qui arrive quand la gravité courbe la lumière au point que les objets apparaissent dans un endroit différent de l’endroit où ils existent réellement.', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 2, '2019-01-08 15:19:18'),
(5, 'img/defaut.jpg', 'Les astronautes peuvent gagner jusqu\'à cinq centimètres de hauteur pendant qu’ils sont dans l’espace.', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 2, '2019-01-08 15:19:18'),
(6, 'img/defaut.jpg', 'Quand deux morceaux d\'un même type de métal se touchent dans l\'espace, ils restent collés pour toujours. ', 'Ce phénomène, appelé soudure à froid, se produit parce que les atomes des pièces de métal de même nature ne « savent » pas qu\'ils appartiennent à des pièces différentes, alors ils se regroupent. ', 'https://www.google.com/', 2, '2019-01-08 15:19:18'),
(7, 'img/defaut.jpg', 'Le Soleil représente presque 99,8% de notre système solaire. En comparaison, il pourrait contenir un million de planètes Terre.', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 2, '2019-01-08 15:19:18'),
(8, 'img/defaut.jpg', 'Si vous êtes un alien se trouvant à 65 millions d\'années d\'ici et que vous regardez la planète Terre à travers un super télescope, vous y verriez des dinosaures', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 2, '2019-01-08 15:19:18'),
(9, 'img/defaut.jpg', 'Les chiens ne peuvent distinguer le rouge du vert.', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 5, '2019-01-08 15:19:18'),
(10, 'img/defaut.jpg', 'Les muscles les plus actifs du corps se trouvent dans les yeux.', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 2, '2019-01-08 15:19:18'),
(11, 'img/defaut.jpg', 'On passe znvirons 6 ans de notre vie à rêver.', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 2, '2019-01-08 15:19:18'),
(12, 'img/defaut.jpg', 'Notre esprit n’invente pas les visages de ceux qui peuplent nos rêves, on ne voit que des visage que l\'on a déjà vue au cours de notre vie', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 2, '2019-01-08 15:19:18'),
(13, 'img/defaut.jpg', 'Les lecteurs de codes-barres lisent uniquement les parties blanches des codes', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 2, '2019-01-08 15:19:18'),
(14, 'img/defaut.jpg', 'Les humains partagent 50% de leur ADN avec les bananes.', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 2, '2019-01-08 15:19:18'),
(15, 'img/defaut.jpg', 'Dans l\'épisode \'Le prisonnier de Benda\' de la série Futurama, le scénariste Ken Keeler (qui possède un doctorat en mathematqies appliqués) à créer un théorème de math exprès pour lé\'épisode. ', 'Ce théorème explique comment après plusieurs échanges de conscience entre plusieurs corps, la conscience peut retrouver son corps d\'origine en utilisant le corps de deux personnes qui n\'ont jamais échanger de conscience.', 'https://www.google.com/', 1, '2019-01-08 15:19:18'),
(16, 'img/defaut.jpg', 'L\'émission de télévision la plus regardé au monde est Le gala de la fête du printemps diffusé à l\'occasion du nouvel an chinois.', 'Elle dure 5h et regardé par environ 750 millions de personnes.', 'https://www.google.com/', 1, '2019-01-08 15:19:18'),
(17, 'img/remoteControl.jpg', 'Selon une étude en 2013, la France serait le pays Européen où il y a le plus de chaines pour adultes (-18). (2eme: allemagne puis royaumes unis)', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 1, '2019-01-08 15:19:18'),
(18, 'img/defaut.jpg', 'En 1997 un épisode des telletubbies a été bannit de plussieurs payx parce qu\'il faisait peur aux enfants.', 'Il y aurais eu un ours et lion trop creepy.', 'https://www.google.com/', 1, '2019-01-08 15:19:18'),
(19, 'img/tv.jpg', 'La toute 1ere diffusion en couleur à la télévision a eu lieu aux Etats Unis en 1954.', 'Cependant la plupart des gens continuent de regarder la télé en noir et blancs, et ce n\'est qu\'en 1972 que la vente des télés couleurs dépasse celles en noir et blancs', 'https://www.google.com/', 1, '2019-01-08 15:19:18'),
(20, 'img/volcano.jpg', 'Le plus grand volcan sur Terre est le volcan bouclier Mauna Loa situé sur l\'île de Big Island à Hawaii. ', 'Quand on mesure depuis le plancher océanique, sa hauteur est supérieure à 9 000 mètres.', 'https://www.google.com/', 4, '2019-01-08 15:19:18'),
(21, 'img/phone.jpg', 'Pour appeler en Russie depuis l\'étranger il faut faire +007', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 4, '2019-01-08 15:19:18'),
(22, 'img/RussianDolls.jpg', 'Les poupées russes sont en fait originaires du Japon', ' Sergueï Malioutine s\'est inspiré d\'une série de poupées de bois japonaises représentant \'Les Sept Divinités du Bonheur\', qu\'il a ramener du Japon pour les redessiner en version russe. ', 'https://www.google.com/', 4, '2019-01-08 15:19:18'),
(23, 'img/defaut.jpg', 'Le jeu tetris vient de Russie', 'Tetris est classé 2e sur 50 au classement des jeux vidéo sur console du Livre Guinness des records, derrière la série Mario Kart', 'https://www.google.com/', 4, '2019-01-08 15:19:18'),
(24, 'img/church.jpg', 'Le dimanche, il y plus de plus de personnes qui se rendent à l\'église en Chine que dans toute l\'Europe', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 4, '2019-01-08 15:19:18'),
(25, 'img/stamps.jpg', 'Les personnes qui collectionnent les timbres s\'appellent des philatélistes', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 2, '2019-01-08 15:19:18'),
(26, 'img/defaut.jpg', 'Les Pringles ne sont pas vraiment des chips.', 'Elles seraient cuisinées à partir d’une bouillie de riz, de blé, de maïs et de flocons de pommes de terre.', 'https://www.google.com/', 3, '2019-01-10 14:37:55'),
(27, 'img/bigfoot.jpg', 'La version du Big foot et du Yeti est le Yenen', 'Il se situerais dans l\'ouest du Hubei. Il serait soit entièrement carnivore soit entièrement végétarien', 'https://www.google.com/', 4, '2019-01-08 15:19:18'),
(28, 'img/panda.jpg', 'L\'intégralité des pandas que l\'on trouve dans les zoo du monde viennent de Chine', 'Ils sont prêtés aux autres pays par le gouvernement et dès qu\'un panda nait , il est réapatrié en Chine pour diversifier les gênes', 'https://www.google.com/', 5, '2019-01-08 15:19:18'),
(29, 'img/defaut.jpg', 'L\'Ascenceur des cent dragons en Chine est la plus grand ascenseur exterieur du mond.', 'Transparent', 'https://www.google.com/', 4, '2019-01-08 15:19:18'),
(30, 'img/money.jpg', 'Apple a plus de trésorerie que le Trésor américain.', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 2, '2019-01-08 15:19:18'),
(31, 'img/otters.jpg', 'Les loutres se tiennent la main quand elles dorment afin de ne pas s\'éloigner les unes des autres.', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 5, '2019-01-08 15:20:37'),
(93, 'img/sugar.jpg', 'Une cuillère à café de sucre guérit le hoquet.', 'Prenez une cuillère et remplissez-la de sucre, gardez la cuillère dans votre bouche pendant 5 secondes. Avalez puis prenez une gorgée d’eau.', 'https://www.google.com/', 3, '2019-01-10 16:14:52'),
(94, 'img/coconut.jpg', 'L’eau de coco est équivalente au plasma sanguin.', 'Elle peut être utilisée comme « donneur universel » ! Elle a même servi en intraveineuse pendant la Seconde Guerre mondiale.', 'https://www.google.com/', 3, '2019-01-10 16:18:47'),
(95, 'img/hamberger.jpg', 'Il y a 75 hamburgers McDonald’s qui sont vendus à chaque seconde de chaque jour.', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 3, '2019-01-10 16:20:52'),
(96, 'img/defaut.jpg', 'Prise en grande quantité, la noix de muscade est hallucinogène.', 'Les effets psychotropes se caractérisent par une intoxication du système nerveux central.', 'https://www.google.com/', 3, '2019-01-10 16:29:34'),
(97, 'img/apple.jpg', 'Les pommes flottent car elles sont composées d’un quart d’air\r\n\r\n', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 3, '2019-01-10 16:30:25'),
(98, 'img/strawberries.jpg', 'Lorsque les canneberges sont mûres elles peuvent rebondir aussi bien que des balles en caoutchouc.', 'Cassium ducibus adliciat numquam imperio duobus Maelium eius est Pyrrho diligamus qui quippe duobus Sp.', 'https://www.google.com/', 3, '2019-01-10 16:52:23'),
(99, 'img/pasta.jpg', 'Il y a 600 variétés différentes de pâtes produites dans le monde.\r\n', 'Les pâtes alimentaires se distinguent par leur forme et par leur composition. Elles peuvent être composées exclusivement de farine de blé, mais aussi d’œufs selon les traditions et les régions.', 'https://www.google.com/', 3, '2019-01-10 16:54:15'),
(100, 'img/peanuts.jpg', 'Les cacahuètes écrasées peuvent être utilisées comme ingrédient pour fabriquer de la dynamite maison.', 'La nitroglycérine est une substance obtenue à partir du glycérol, lui-même obtenu à partir d’huile de cacahuète.', 'https://www.google.com/', 3, '2019-01-10 16:54:55');

-- --------------------------------------------------------

--
-- Structure de la table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
CREATE TABLE IF NOT EXISTS `favorite` (
  `idFact` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  KEY `idFact` (`idFact`),
  KEY `idUser` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `favorite`
--

INSERT INTO `favorite` (`idFact`, `idUser`) VALUES
(5, 11),
(1, 11),
(10, 11),
(12, 11),
(26, 11),
(30, 1),
(97, 1),
(99, 1),
(97, 1),
(100, 1),
(3, 1),
(4, 1),
(16, 1),
(15, 1),
(93, 1),
(96, 1),
(1, 1),
(23, 1),
(21, 1),
(18, 1),
(29, 1),
(24, 1),
(14, 1),
(9, 1),
(28, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(30) NOT NULL,
  `password` varchar(72) NOT NULL,
  `pseudo` varchar(25) NOT NULL,
  `name` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `dateInscription` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `mail`, `password`, `pseudo`, `name`, `lastName`, `dateInscription`) VALUES
(1, 'Melissaguy@outlook.fr', 'Malinelpb69', 'mel', 'Melissa', 'Guy', '2019-03-18 15:36:04'),
(11, 'Hgukij@outlook.fr', 'guiozcjiolz', 'deeddddd', 'Melissa', 'Guy', '2019-03-18 16:24:10'),
(50, 'guymelissa99@gmail.com', 'Carbonara555', 'JP', 'JP', 'P', '2020-04-30 19:31:25');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_fact` FOREIGN KEY (`idFact`) REFERENCES `facts` (`id`),
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `facts`
--
ALTER TABLE `facts`
  ADD CONSTRAINT `FK_categorie` FOREIGN KEY (`idCategorie`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `favorite`
--
ALTER TABLE `favorite`
  ADD CONSTRAINT `FK_fact1` FOREIGN KEY (`idFact`) REFERENCES `facts` (`id`),
  ADD CONSTRAINT `FK_user1` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
