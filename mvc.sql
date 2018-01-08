-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Час створення: Вер 29 2017 р., 14:59
-- Версія сервера: 5.5.57-0ubuntu0.14.04.1
-- Версія PHP: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База даних: `mvc`
--

-- --------------------------------------------------------

--
-- Структура таблиці `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Дамп даних таблиці `author`
--

INSERT INTO `author` (`id`, `first_name`, `last_name`) VALUES
(1, 'Toni', 'Bessom'),
(2, 'Russell', 'Ewence'),
(3, 'Virge', 'Husbands'),
(4, 'Briggs', 'Sanja'),
(5, 'Donny', 'Van Saltsberg'),
(6, 'Aurora', 'Beavis'),
(7, 'Ilaire', 'Probets'),
(8, 'Tam', 'Boles'),
(9, 'Farica', 'Dives'),
(10, 'Samara', 'Aldrich'),
(11, 'Davide', 'Crippin'),
(12, 'Skippie', 'Dyke'),
(13, 'Jehanna', 'Escolme'),
(14, 'Belle', 'Loude'),
(15, 'Pat', 'Annand'),
(16, 'Etty', 'Eby'),
(17, 'Konrad', 'Gantzer'),
(18, 'Barth', 'Lightwing'),
(19, 'Dewie', 'Huie'),
(20, 'Mozelle', 'Olivazzi'),
(21, 'Franciskus', 'Stears'),
(22, 'Mabel', 'Bohling'),
(23, 'Debra', 'Philpault'),
(24, 'Noland', 'Cadd'),
(25, 'Emlynn', 'Fontaine'),
(26, 'Guillema', 'Tomei'),
(27, 'Lucilia', 'Tippings'),
(28, 'Lisbeth', 'Schustl'),
(29, 'Merwyn', 'Braden'),
(30, 'Langston', 'Dalzell'),
(31, 'Katuscha', 'Stuckey'),
(32, 'Natty', 'Metzel'),
(33, 'Elana', 'Crutcher'),
(34, 'Sayer', 'Pitcher'),
(35, 'Torrie', 'Kellegher'),
(36, 'Rebe', 'Jellis'),
(37, 'Enrique', 'Grute'),
(38, 'Andrea', 'Cockroft'),
(39, 'Perle', 'Yannikov'),
(40, 'Benoit', 'Reglar'),
(41, 'Wyn', 'Brithman'),
(42, 'Alvina', 'Cornwall'),
(43, 'Arvie', 'Inger'),
(44, 'Gideon', 'Greguoli'),
(45, 'Lynnette', 'Dowtry'),
(46, 'Zsa zsa', 'O''Hare'),
(47, 'Ardyce', 'Torricella'),
(48, 'Gabriel', 'Emmatt'),
(49, 'Durward', 'Kasher'),
(50, 'Corrianne', 'Smeed');

-- --------------------------------------------------------

--
-- Структура таблиці `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` text,
  `price` decimal(10,2) unsigned NOT NULL,
  `category_id` tinyint(3) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `price` (`price`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Дамп даних таблиці `book`
--

INSERT INTO `book` (`id`, `title`, `description`, `price`, `category_id`, `active`, `created`) VALUES
(1, 'New title 2', 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', '123.91', 10, 0, '2009-08-13 19:27:58'),
(2, 'Dyer''s Greenweed', NULL, '136689.44', 2, 0, '2017-02-21 07:34:44'),
(3, 'Pteralyxia', NULL, '933229.86', 2, 0, '2013-11-18 18:19:31'),
(4, 'Hairy Smotherweed', 'proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis', '103886.45', 9, 1, '2008-02-26 10:31:27'),
(5, 'Perennial Caltrop', 'mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', '660475.25', 10, 1, '2016-02-10 23:16:04'),
(6, 'Bluntlobe Cyanea', 'maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel', '574401.64', 6, 0, '2008-08-08 04:29:56'),
(7, 'Hybrid Oak', NULL, '534571.38', 9, 0, '2006-04-07 14:54:03'),
(8, 'Fivepetal Cliffbush', 'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum', '153287.86', 8, 1, '2009-12-28 16:29:27'),
(9, 'Butler''s Sandparsley', NULL, '323259.77', 5, 0, '2012-02-22 23:22:50'),
(10, 'Pygmy Fleabane', 'magna bibendum imperdiet nullam orci pede venenatis non sodales sed', '213612.45', NULL, 1, '2010-08-30 23:10:58'),
(11, 'Hale''s Pentodon', 'nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in', '731138.72', 8, 1, '2002-05-28 01:45:43'),
(12, 'White Henbane', 'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio', '830709.82', 3, 0, '2004-01-19 05:00:04'),
(13, 'Dayflower', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', '145711.35', 5, 0, '2012-08-15 17:32:17'),
(14, 'Inyo Biscuitroot', 'fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', '128246.56', 3, 1, '2014-07-15 19:03:03'),
(15, 'Sugar Pine', 'primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare', '773341.11', 10, 0, '2014-12-13 15:25:29'),
(16, 'Bellybutton Veinfern', 'id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat', '523665.48', 5, 1, '2002-05-19 19:26:19'),
(17, 'Bullatina Lichen', 'consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', '876679.00', 7, 0, '2017-07-24 04:02:26'),
(18, 'Birdwood Grass', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec', '564545.42', 3, 1, '2006-12-15 08:03:23'),
(19, 'Vetivergrass', 'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis', '283518.78', 4, 1, '2016-11-25 04:39:52'),
(20, 'Southern Shagbark Hickory', NULL, '204240.46', 1, 1, '2017-01-03 21:03:13'),
(21, 'California Poppy', 'vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat', '965015.78', 1, 0, '2011-11-21 11:06:09'),
(22, 'Tapertip Onion', NULL, '856143.06', 1, 1, '2013-08-14 19:58:38'),
(23, 'Scotter''s Tortula Moss', 'porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam', '955569.26', 8, 1, '2008-03-31 03:39:30'),
(24, 'Racemed Milkwort', 'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam', '453370.07', 1, 1, '2001-10-20 08:06:50'),
(25, 'Cunninghamia', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc', '889002.00', 6, 0, '2010-02-12 07:35:44'),
(26, 'Elegant Disc Lichen', 'amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy', '673317.88', 9, 1, '2010-10-21 17:54:24'),
(27, 'Suksdorf''s Brome', 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget', '770821.34', 10, 0, '2005-03-27 09:38:16'),
(28, 'Comb-leaf Philodendron', 'vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis', '599243.51', 2, 0, '2016-12-20 18:26:54'),
(29, 'Clovenlip Toadflax', NULL, '27523.94', 6, 0, '2016-08-10 07:54:23'),
(30, 'Threeleaf Indigo', NULL, '337832.00', 9, 0, '2015-05-08 17:30:34'),
(31, 'Thompson''s Sandwort', 'sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate', '628115.33', 6, 1, '2014-04-13 14:45:33'),
(32, 'Roundhead Rush', 'purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum', '958312.00', 1, 1, '2012-01-02 07:13:57'),
(33, 'Nodding Beggartick', 'viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla', '706323.11', 8, 1, '2006-06-15 04:28:08'),
(34, 'Lyreleaf Bladderpod', 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut', '310973.85', 9, 0, '2012-02-27 20:03:38'),
(35, 'Olympic Mountain Ragwort', 'velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis', '50892.99', 5, 0, '2006-04-26 15:13:35'),
(36, 'Marsdenia', NULL, '317703.10', 1, 1, '2012-01-16 12:52:55'),
(37, 'Tall Bluebells', 'felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor', '242232.57', 5, 0, '2003-08-14 12:16:51'),
(38, 'Trans-pecos Beeblossom', NULL, '973336.49', 8, 1, '2000-09-21 03:43:41'),
(39, 'Plumed Jewelflower', 'sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit', '334239.55', 2, 0, '2014-12-01 01:49:46'),
(40, 'Spreading Buckwheat', 'metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo', '314221.66', 4, 1, '2006-09-29 13:49:18'),
(41, 'Mat Saltbush', 'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', '295990.42', 3, 0, '2005-06-30 20:21:36'),
(42, 'Crinkleawn Grass', 'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti', '668448.39', 10, 0, '2013-12-11 10:55:20'),
(43, 'Rosy Camphorweed', 'purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis', '373865.46', 5, 1, '2012-01-01 04:54:02'),
(44, 'Narrowleaf Arnica', 'at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget', '769547.58', 5, 0, '2005-11-22 09:01:20'),
(45, 'Mexican-blue', 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa', '508482.42', 6, 1, '2007-02-04 11:57:11'),
(46, 'Siskiyou Sedge', 'leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus', '458842.93', 3, 1, '2015-11-29 23:51:17'),
(47, 'Baja California Ipomopsis', 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan', '250533.44', 6, 0, '2004-07-30 05:46:05'),
(48, 'Bill Williams Mountain Giant Hyssop', NULL, '220363.03', 6, 1, '2013-07-24 12:29:39'),
(49, 'Lagos Silkrubbertree', 'tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in', '42599.84', 10, 0, '2008-08-01 06:21:16'),
(50, 'Tapertip Desertparsley', 'purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis', '534386.18', 5, 0, '2005-12-06 06:31:06'),
(51, 'Pitted Onion', 'eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero', '100444.27', 7, 1, '2016-09-22 16:15:21'),
(52, 'Trans-pecos Sotol', NULL, '208431.00', 2, 1, '2013-11-26 13:41:08'),
(53, 'Compact Phacelia', NULL, '888086.84', 6, 1, '2014-09-23 03:16:24'),
(54, 'Nippon Bells', 'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla', '613952.18', 3, 1, '2005-03-05 00:10:33'),
(55, 'Cascade Calicoflower', 'aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede', '712824.39', 10, 0, '2015-09-11 21:00:14'),
(56, 'Slender Pride Of Rochester', 'consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien', '809631.72', 7, 0, '2009-09-25 02:15:27'),
(57, 'African Finger Millet', 'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel', '213227.01', 1, 1, '2017-04-09 20:07:10'),
(58, 'Martinique Tonguefern', 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel', '584321.38', 9, 1, '2012-05-23 01:52:30'),
(59, 'Amazon Water-lily', 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur', '143396.37', 5, 0, '2011-07-03 19:06:23'),
(60, 'Craighead''s Noddingcaps', 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', '936872.08', 7, 0, '2017-02-18 14:44:03'),
(61, 'Heal And Draw', 'ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', '962361.67', 8, 1, '2011-04-07 19:02:41'),
(62, 'Cuban Nakedwood', 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy', '135654.18', 8, 0, '2013-10-25 22:39:57'),
(63, 'Pore Lichen', 'ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', '542844.26', 10, 0, '2015-01-04 20:31:34'),
(64, 'Upland Brittle Bladderfern', 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi', '425057.40', 1, 0, '2011-05-28 08:23:46'),
(65, 'Q-tips', NULL, '950680.48', 4, 0, '2013-07-31 11:45:03'),
(66, 'Globe Dodder', 'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris', '238411.49', 2, 0, '2009-09-04 19:03:58'),
(67, 'Parmelia Abrothallus Lichen', 'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui', '176741.63', 4, 1, '2011-01-10 01:16:10'),
(68, 'Speckled Clarkia', 'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at', '438776.35', 7, 1, '2017-06-12 02:14:31'),
(69, 'Water-starwort', 'sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla', '206052.29', 6, 0, '2014-06-07 17:43:08'),
(70, 'Wild Dilly', 'justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', '224519.00', 9, 0, '2004-04-05 13:04:54'),
(71, 'Austin''s Milkvetch', NULL, '35437.22', 8, 0, '2006-10-18 06:31:48'),
(72, 'Cows Clover', 'enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci', '103428.32', 7, 0, '2011-11-07 15:52:59'),
(73, 'Patience Dock', 'adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus', '287633.08', 4, 0, '2013-09-12 15:49:15'),
(74, 'Bread And Cheese', NULL, '745918.00', 1, 0, '2017-02-06 23:06:10'),
(75, 'Goldback Fern', 'elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas', '824533.53', 7, 1, '2003-07-28 05:09:41'),
(76, 'Cape Cheesewood', NULL, '913521.11', 1, 1, '2007-10-30 23:37:47'),
(77, 'Xerophytic Limestone Moss', 'nunc donec quis orci eget orci vehicula condimentum curabitur in', '696514.00', 1, 0, '2004-03-23 13:49:35'),
(78, 'Pineland Golden Trumpet', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris', '781494.86', 9, 0, '2004-10-04 10:16:57'),
(79, 'Barbula Moss', 'blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', '202439.00', 6, 1, '2015-02-25 23:10:47'),
(80, 'Small Yellow Nicker', 'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque', '76928.40', 7, 1, '2001-01-23 06:39:36'),
(81, 'Thicksepal Cryptantha', NULL, '17093.56', 9, 0, '2014-06-01 09:19:53'),
(82, 'Birch', 'in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet', '575944.90', 2, 1, '2016-06-17 01:38:43'),
(83, 'Dwarf Goldenrod', 'sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras', '626523.01', 6, 0, '2007-07-28 03:38:34'),
(84, 'Tomentose Burbark', NULL, '708865.51', 10, 1, '2014-08-24 22:30:26'),
(85, 'Tozer''s Epipterygium Moss', 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et', '287122.95', 7, 1, '2005-07-23 07:05:21'),
(86, 'Kauai Nehe', NULL, '363864.32', 9, 1, '2009-02-20 18:07:37'),
(87, 'Heermann''s Buckwheat', NULL, '193069.61', 9, 0, '2008-01-04 03:28:03'),
(88, 'Rock Harlequin', 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet', '522021.44', 9, 1, '2009-06-20 07:08:04'),
(89, 'Coiled Sedge', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor', '700360.27', 1, 0, '2006-06-27 02:36:48'),
(90, 'Hairy Alumroot', 'cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt', '459366.13', 1, 1, '2016-05-16 16:27:46'),
(91, 'Achar''s Graphina Lichen', 'sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero', '481737.69', 3, 1, '2016-03-18 12:44:09'),
(92, 'Desert Lavender', 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus', '296882.47', 3, 1, '2003-09-24 23:44:42'),
(93, 'Carleton''s Sand Verbena', NULL, '248753.48', 9, 1, '2013-06-19 01:36:18'),
(94, 'Largeflower Fairybells', 'a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac', '874788.93', 8, 1, '2011-08-01 19:30:48'),
(95, 'Narrowleaf Pondweed', NULL, '858002.60', 3, 1, '2009-10-05 21:28:13'),
(96, 'Liverwort Monkeyflower', 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique', '887261.01', 7, 1, '2006-02-05 22:52:23'),
(97, 'Motillo', 'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in', '508375.47', 1, 0, '2002-11-12 20:32:35'),
(98, 'Hairsedge', NULL, '447037.69', 9, 1, '2016-06-09 15:03:09'),
(99, 'Texas Holdback', NULL, '368165.00', 5, 1, '2002-01-14 08:30:27'),
(100, 'Ceratotheca', NULL, '987813.85', 6, 0, '2006-08-12 22:01:39');

-- --------------------------------------------------------

--
-- Структура таблиці `book_author`
--

CREATE TABLE IF NOT EXISTS `book_author` (
  `book_id` int(10) unsigned NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`book_id`,`author_id`),
  KEY `author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `book_author`
--

INSERT INTO `book_author` (`book_id`, `author_id`) VALUES
(14, 1),
(50, 1),
(82, 1),
(46, 2),
(65, 2),
(84, 2),
(49, 3),
(54, 3),
(40, 4),
(54, 6),
(85, 6),
(9, 7),
(79, 7),
(68, 8),
(81, 8),
(58, 9),
(66, 9),
(78, 9),
(53, 10),
(66, 10),
(40, 11),
(72, 12),
(79, 12),
(84, 12),
(58, 13),
(2, 14),
(30, 14),
(78, 14),
(18, 15),
(20, 15),
(48, 15),
(76, 16),
(99, 16),
(22, 17),
(2, 18),
(28, 18),
(37, 18),
(54, 18),
(71, 18),
(82, 18),
(22, 19),
(40, 19),
(57, 19),
(71, 19),
(79, 19),
(8, 20),
(1, 21),
(17, 21),
(94, 21),
(12, 22),
(13, 22),
(67, 22),
(41, 23),
(83, 23),
(89, 23),
(2, 24),
(8, 24),
(28, 24),
(15, 25),
(28, 25),
(30, 25),
(43, 25),
(20, 26),
(82, 26),
(41, 27),
(31, 29),
(49, 29),
(90, 29),
(69, 30),
(83, 30),
(19, 31),
(26, 31),
(39, 31),
(74, 31),
(86, 31),
(8, 32),
(66, 32),
(19, 33),
(100, 33),
(74, 34),
(11, 35),
(61, 36),
(77, 36),
(37, 37),
(38, 37),
(54, 37),
(6, 38),
(77, 38),
(99, 38),
(100, 38),
(28, 39),
(1, 40),
(24, 40),
(53, 41),
(54, 42),
(60, 42),
(68, 42),
(79, 42),
(41, 43),
(1, 45),
(46, 45),
(52, 45),
(8, 46),
(19, 46),
(24, 47),
(43, 47),
(28, 48),
(87, 48),
(10, 49),
(22, 49),
(44, 49),
(33, 50),
(71, 50),
(97, 50);

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп даних таблиці `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Gorilla gorilla'),
(2, 'Papio ursinus'),
(3, 'Ninox superciliaris'),
(4, 'Tursiops truncatus'),
(5, 'Genetta genetta'),
(6, 'Macropus eugenii'),
(7, 'Larus dominicanus'),
(8, 'Trichoglossus haematodus moluccanus'),
(9, 'Himantopus himantopus'),
(10, 'Alligator mississippiensis'),
(11, 'New category');

-- --------------------------------------------------------

--
-- Структура таблиці `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
