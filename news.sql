-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2018 at 03:37 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Политика'),
(3, 'Финансы'),
(4, 'Война'),
(5, 'Экономика'),
(6, 'Спорт'),
(7, 'Украина'),
(8, 'Мир');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL,
  `comment` varchar(200) NOT NULL,
  `quantity_like` smallint(5) UNSIGNED NOT NULL,
  `quantity_unlike` smallint(5) UNSIGNED NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `user_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category_id` tinyint(4) UNSIGNED DEFAULT NULL,
  `description` text,
  `analitic` tinyint(1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `category_id`, `description`, `analitic`, `created`, `active`) VALUES
(1, 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', 1, 'Cras venenatis tortor quis orci placerat mattis. Ut venenatis quis felis sed mollis. Aliquam eu dignissim metus. Aenean fermentum ipsum at leo euismod, ut feugiat sem mollis. Quisque fringilla sollicitudin fermentum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam dictum accumsan justo ac ultrices.\r\n\r\nCurabitur a dui est. Vivamus tristique dui ac mauris placerat euismod in vel leo. Proin eu felis vel mauris vulputate sodales eget at dui. Donec at dolor egestas ante commodo euismod. Fusce ut ante ullamcorper, rutrum metus vel, pharetra enim. Curabitur vulputate vulputate dignissim. Praesent in eros ac tortor tempus vulputate eget ut dolor. Cras tristique, dui sit amet lacinia interdum, erat tortor maximus ligula, nec interdum felis massa nec diam. Suspendisse eu molestie neque. Nulla pulvinar facilisis sapien, in hendrerit sem pretium ut. Pellentesque vehicula felis purus, vel volutpat urna fringilla ut. Duis molestie nec augue ac varius. Maecenas blandit purus tellus, a blandit purus molestie ac.\r\n\r\nMaecenas ut sagittis nunc. Pellentesque quis neque in neque commodo dignissim et sit amet augue. Aenean interdum, quam sit amet vehicula interdum, purus dui hendrerit purus, et pellentesque sapien massa vitae ligula. Vivamus quis ante sed mauris finibus consectetur. Aenean aliquam eros placerat iaculis pharetra. Morbi sed nunc augue. Donec placerat nunc dui, sit amet pretium nisl dapibus ac.', 0, '2018-01-04 19:42:31', 1),
(2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 3, 'Suspendisse finibus, tortor quis accumsan rhoncus, dolor erat tempus lectus, et dignissim enim leo non diam. Duis neque magna, fermentum vel enim quis, mollis accumsan tortor. Aenean in purus efficitur elit imperdiet varius. Curabitur lacus nibh, maximus quis elementum vitae, tristique et elit. Aliquam ultricies mollis tellus at accumsan. Nunc nulla lacus, porttitor vitae interdum vitae, efficitur quis felis. Vivamus pellentesque dictum mi, in pellentesque purus ornare sed.\r\n\r\nPellentesque in pharetra mi, ut sagittis lectus. Proin eget dui ligula. Morbi iaculis odio diam, non elementum ex consequat sit amet. Curabitur placerat vehicula augue tincidunt sollicitudin. Morbi vel ullamcorper eros. In a mauris ut sapien ultrices commodo vitae vitae neque. Nullam facilisis rutrum luctus. Phasellus vestibulum nibh sit amet tincidunt sodales. Maecenas eu nunc et magna aliquam ornare. Donec suscipit lorem et purus sollicitudin, eu volutpat enim ultrices. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque maximus arcu eu maximus condimentum. Fusce aliquet molestie quam eget tempus. Suspendisse fringilla maximus viverra. Maecenas eros nisl, commodo nec commodo quis, tempor a metus. Nunc condimentum eu libero non aliquam.', 0, '2018-01-04 19:46:13', 1),
(3, 'Aenean malesuada odio non justo eleifend, sed tempus metus aliquam', 4, 'Suspendisse pellentesque accumsan enim non lacinia. Vestibulum in ligula in orci elementum faucibus. Sed aliquam ante non augue facilisis placerat. Nulla facilisi. Phasellus porta leo tellus, sit amet facilisis sem tristique eget. Proin quis massa mollis, imperdiet tortor ut, tempus augue. Donec at urna id urna eleifend sodales. Nunc tempus lacus feugiat felis facilisis, at commodo turpis mollis. Donec rutrum, nibh sit amet tempus sollicitudin, lorem lectus ornare urna, quis faucibus lectus odio tempor dui. Integer id augue at erat cursus elementum quis nec enim. Proin dui nulla, pharetra posuere nulla vitae, cursus hendrerit ipsum. Nulla et nibh eu massa convallis malesuada. Suspendisse sed elit scelerisque, interdum metus in, bibendum nibh. Proin laoreet gravida scelerisque.\r\n\r\nNullam vel consequat libero. Proin interdum est sit amet augue cursus, at laoreet ante volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris ac urna id arcu ullamcorper consequat. Nam varius, diam quis accumsan venenatis, lorem dolor condimentum nisi, at tincidunt nisl tellus et nunc. Phasellus maximus porta elit, non accumsan felis porta et. Nam eget diam neque. Nam eu mollis mauris. Vestibulum leo diam, mattis id blandit maximus, tincidunt lacinia odio. Maecenas luctus, magna et dignissim maximus, velit lacus ultrices ligula, vel ultricies sapien urna at turpis. Curabitur a purus sed lacus semper imperdiet. Aliquam erat volutpat. Maecenas sagittis massa id quam interdum elementum et vel eros. Sed nec orci non massa lacinia bibendum et vitae risus.', 0, '2018-01-04 19:46:53', 1),
(4, 'Vestibulum rhoncus ipsum eu urna dictum, vel sollicitudin nibh dapibus', 5, 'Nunc fermentum orci urna, efficitur pulvinar tellus luctus vitae. Vivamus sed massa ut sem accumsan congue non non nibh. Nam eget nisl sed dui tempor congue tempor eu quam. Maecenas tristique neque velit, quis dignissim magna dictum a. Quisque tincidunt augue nibh, id mattis diam vehicula a. Curabitur laoreet tortor id elit auctor, vitae egestas quam tristique. Ut massa lectus, porta finibus pulvinar et, semper in nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi tempus vitae felis sit amet viverra. Phasellus sed risus justo. Morbi metus justo, aliquet in dui vel, porta molestie leo. Curabitur lacinia varius pharetra. Suspendisse ac cursus purus. Maecenas molestie justo a accumsan luctus. Etiam molestie odio tellus, vel convallis purus aliquam nec. Aenean id tempor est.\r\n\r\nInteger et justo suscipit, bibendum mi eu, aliquet turpis. Phasellus congue ultrices diam, vel faucibus diam placerat vitae. Morbi ullamcorper, sapien id laoreet semper, diam sapien vehicula ante, ac lacinia nunc erat ut arcu. Aenean rhoncus dui a lacus ultricies, at auctor arcu mollis. Morbi non ultricies enim, in fermentum sem. Nam blandit, erat a cursus lacinia, ligula arcu tincidunt dui, non malesuada mi ex at libero. Nam a magna id erat vehicula vehicula id iaculis sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer dictum, enim non tempor facilisis, est nulla sagittis ipsum, sit amet placerat mauris mi aliquam lorem. Aliquam at est at magna pharetra fermentum. Vestibulum vitae tincidunt urna. Sed quis auctor mi, at ornare turpis. Vestibulum tempor nibh nec ex porttitor hendrerit. Suspendisse dignissim neque sed quam semper, vitae porta mauris lobortis. Donec tempus lobortis tellus non consectetur.', 0, '2018-01-04 19:47:19', 1),
(5, 'Mauris ac mauris suscipit, luctus erat a, imperdiet tortor', 6, 'Vivamus dapibus nulla leo, eget semper dui feugiat ut. Sed convallis, enim ac egestas blandit, massa arcu vulputate urna, quis ullamcorper lectus odio quis ligula. Donec dapibus, ante at congue iaculis, dolor est tincidunt velit, aliquam tincidunt massa dui nec purus. Sed ultricies, tellus sed maximus rhoncus, est leo porttitor leo, vel dapibus sem nisl et elit. Integer sed leo cursus, dignissim erat eu, tempor enim. Morbi at enim rhoncus, elementum urna lobortis, molestie purus. Morbi ac dapibus elit. Donec fringilla vel lacus eu varius.\r\n\r\nProin pharetra augue nec nisi bibendum, non vehicula ligula tristique. Etiam ac erat at eros rutrum ultrices. Vivamus quis magna in erat consectetur eleifend a non elit. In rhoncus, justo nec suscipit tincidunt, ipsum mauris finibus diam, ut egestas elit nunc sit amet magna. Vivamus et dui odio. Praesent interdum maximus lorem, vel auctor metus dictum non. Vivamus eu dapibus diam, eget tempus ante. Cras purus velit, volutpat a congue viverra, ultrices vitae justo. Donec suscipit eros ac eros fermentum, eu tempus lectus convallis. Proin eget odio at orci finibus molestie. Mauris mollis eu urna varius pharetra. Maecenas porta molestie metus, et porttitor urna egestas nec. Morbi vel vehicula ligula, eu laoreet dui.', 0, '2018-01-04 19:47:44', 1),
(6, 'Suspendisse cursus felis quis mauris convallis, ac placerat dui dapibus', 7, 'Sed scelerisque viverra lectus sit amet varius. Etiam facilisis vitae purus posuere vehicula. In lacinia scelerisque suscipit. Vivamus mollis, massa ut tincidunt tincidunt, sapien elit laoreet est, in finibus ipsum sapien sit amet metus. Curabitur nunc felis, pretium et pretium eu, congue a nisi. Nulla et nisl elit. Mauris metus sapien, molestie ut massa at, porta hendrerit libero. Mauris urna sem, interdum at lorem id, pretium tempus mauris. Etiam elementum sem sit amet ipsum hendrerit, in molestie leo varius. Nulla gravida et diam sed eleifend. Nullam molestie id odio at iaculis.\r\n\r\nDuis nisi nisl, imperdiet vel interdum sodales, rutrum in mauris. Cras ultricies metus enim, a porta nulla imperdiet ut. Curabitur placerat, odio ornare cursus fringilla, ipsum dolor porta velit, at fringilla metus eros semper lorem. Sed molestie congue arcu, sed tempor urna convallis sed. Vivamus finibus lobortis ullamcorper. Pellentesque aliquam, nulla non dapibus sagittis, lacus neque malesuada lorem, et suscipit ligula ipsum at tortor. Nullam lacus libero, ultrices eget nulla sit amet, suscipit egestas ex. Mauris non volutpat ante, ac blandit odio. Praesent sit amet magna erat. Vestibulum id odio dictum neque accumsan imperdiet eu gravida tortor. In hac habitasse platea dictumst. Duis vitae molestie odio, nec eleifend lectus. Aliquam consectetur, nisl sed consectetur sagittis, nunc mi tempor quam, id congue lectus lorem eu metus. Aliquam dui purus, consequat sit amet risus in, luctus feugiat est. Curabitur ultrices auctor ultrices.', 0, '2018-01-04 19:48:13', 1),
(7, 'Fusce tincidunt metus nec tellus finibus euismod', 8, 'Donec non purus vel quam vulputate tempus. Nullam in nulla a nisl rhoncus rutrum quis dapibus quam. Suspendisse potenti. Suspendisse rutrum arcu vitae libero efficitur efficitur. Morbi ultrices vel justo non venenatis. Aliquam ullamcorper fermentum neque vitae ullamcorper. Etiam pharetra justo vel massa venenatis sagittis. Sed vel nibh quam. Aliquam auctor orci eu nisl euismod lobortis. Aenean hendrerit dui in ante ultricies, vel semper orci suscipit. Etiam ut nulla eget velit placerat pellentesque.\r\n\r\nSuspendisse velit turpis, luctus tempus dolor volutpat, rutrum aliquet dolor. Vivamus ac tempor lectus. Pellentesque facilisis lectus tortor, in commodo arcu congue sed. Cras a sagittis quam, quis tincidunt mi. Mauris scelerisque dignissim egestas. Morbi et ligula velit. Suspendisse eu viverra velit.', 0, '2018-01-04 19:48:41', 1),
(8, 'Proin hendrerit sem vel maximus feugiat', 8, 'Duis malesuada libero non tellus feugiat, non varius mauris efficitur. Vestibulum in bibendum justo. Etiam sagittis erat eu ornare auctor. Aliquam non tempus ligula. Nullam molestie felis nec suscipit laoreet. Integer vehicula magna risus, at commodo lectus dignissim vitae. Aliquam consequat mauris sit amet urna efficitur euismod. Sed viverra eros dapibus urna rutrum, nec suscipit ipsum suscipit. Donec feugiat purus at lorem bibendum, a feugiat quam scelerisque.\r\n\r\nSed lobortis purus est. Ut pulvinar tristique libero, a molestie tortor sagittis id. Aliquam posuere metus quis eros bibendum ornare. Nullam metus tortor, rhoncus vel tristique eu, rhoncus a urna. Aliquam erat volutpat. Aliquam leo enim, tempus ut nunc ut, dictum consectetur nisi. Curabitur eu egestas nunc. Sed congue erat quis arcu faucibus sagittis. Morbi nisi tellus, blandit ac pulvinar at, pulvinar mattis nulla. Maecenas erat mi, molestie sed urna quis, consequat pellentesque ante.', 0, '2018-01-04 19:49:07', 1),
(9, 'Ut aliquam elit et lacus consequat ornare', 3, 'Duis sit amet risus eu orci rutrum vestibulum sed quis nisl. Integer id tempor velit, id efficitur nulla. Vivamus elementum urna ut lacinia tincidunt. Duis vel turpis purus. Fusce viverra diam eu venenatis tempor. Vestibulum velit diam, pretium at lacinia non, sollicitudin non tellus. Curabitur aliquet arcu sit amet dignissim vestibulum. Nullam eu aliquam eros, id lacinia est. Donec a scelerisque felis, non pellentesque massa. Nulla facilisi. Nunc lacinia ultricies arcu, vitae iaculis felis pretium sed.\r\n\r\nDuis semper, metus vitae sodales convallis, massa nulla congue ipsum, eu auctor leo neque non est. Nullam quis dignissim ex, vitae faucibus mauris. Nullam pharetra nisl non accumsan malesuada. Suspendisse tristique lacus vitae fringilla luctus. Aliquam porta libero ultrices aliquet suscipit. Nunc pulvinar lorem eget elit fringilla, a pharetra neque vehicula. Integer facilisis lorem in metus elementum commodo. Nam lobortis magna elementum, fringilla nisl ac, cursus urna. Pellentesque sit amet lorem quis libero cursus elementum a sed odio. Pellentesque non sem non neque faucibus feugiat non sed eros. Aenean consequat nunc in est interdum eleifend. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam eu vestibulum velit. In sed aliquet nunc. Ut auctor odio ex, vel lobortis ipsum ultrices vitae.', 0, '2018-01-04 19:49:50', 1),
(10, 'Mauris nec quam eu risus imperdiet tempus ac non nisl', 8, 'Aliquam mauris ipsum, condimentum at rhoncus eget, sollicitudin eu purus. Aliquam ut dapibus ante. Pellentesque id erat sollicitudin, viverra ligula in, pulvinar arcu. Pellentesque malesuada, eros pretium vestibulum sodales, sem tortor accumsan libero, quis ultrices nisi erat ut quam. Nunc sit amet aliquam leo. Nam fringilla dolor lectus, vitae ullamcorper ligula tincidunt non. Morbi luctus et urna ut auctor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent consectetur, erat nec sodales gravida, lorem sapien ultricies risus, non varius dolor ipsum vitae lorem. In malesuada leo eget sodales auctor. Maecenas blandit lectus vitae facilisis gravida.\r\n\r\nPhasellus eu congue sem. Vivamus pulvinar, leo nec feugiat blandit, odio mauris accumsan sem, sit amet convallis felis massa et sem. Suspendisse vel facilisis felis. Proin semper nunc ex, vel ornare arcu pellentesque nec. Ut eget placerat lorem. Fusce at eros quis nisi scelerisque aliquam. Sed tincidunt odio vitae tortor posuere, eget sollicitudin mi tempus. Nam pellentesque venenatis massa sit amet pharetra. Sed pellentesque lacus in placerat varius. Sed dictum mauris in lacinia gravida. Cras dapibus sapien sit amet justo convallis, ac sodales lacus sagittis. Curabitur dolor sapien, posuere id enim eu, bibendum auctor arcu. Maecenas porttitor nunc nec sapien lobortis auctor. Nunc ac placerat dolor. Nulla eu odio enim. Mauris tristique laoreet mi vitae pellentesque.', 0, '2018-01-04 19:50:16', 1),
(11, 'Ut ut libero ornare felis vehicula maximus ornare non ex', 8, 'Aenean in diam in ex consectetur egestas. In tortor arcu, eleifend non justo faucibus, commodo tincidunt lacus. Nunc maximus lacinia lorem, id suscipit felis pulvinar at. Vestibulum at erat et dolor semper mollis eu et est. In sed pellentesque leo. Integer ac enim lorem. Praesent eu lectus eget turpis aliquet ornare.\r\n\r\nSed in suscipit erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tristique nisi fringilla vehicula porta. Mauris id velit lacinia, hendrerit lectus sit amet, scelerisque orci. Ut pellentesque auctor nisi. Integer eu tincidunt nulla. Quisque pharetra tortor leo, eget cursus neque congue a.', 0, '2018-01-04 19:50:45', 1),
(12, 'Vivamus lacinia enim sed augue finibus, et efficitur ante posuere', 6, 'Vivamus ac eleifend purus. Nullam vel risus scelerisque, aliquam mauris in, fringilla nulla. Praesent pretium magna ex, eget suscipit purus bibendum eget. Mauris accumsan cursus quam, pulvinar accumsan libero eleifend ut. Quisque enim magna, eleifend sit amet rhoncus sit amet, cursus ut velit. Etiam maximus nisi sed enim faucibus congue. Donec vestibulum erat ut nisi euismod, sit amet gravida felis ultricies. Suspendisse malesuada vitae urna vel porttitor. Maecenas vitae magna egestas, bibendum odio non, ullamcorper enim. Fusce rhoncus et quam nec iaculis. Suspendisse vel maximus lorem. Aenean sed risus eu est facilisis sagittis vitae in nulla. Nullam aliquam ullamcorper velit, in tincidunt ex tincidunt sollicitudin. Maecenas id tortor porttitor, dictum mi at, mollis sem.\r\n\r\nInterdum et malesuada fames ac ante ipsum primis in faucibus. Aenean sit amet nunc nec mauris tempor consectetur quis a mi. Cras id volutpat mi, id rhoncus leo. Sed aliquet sed neque non dignissim. Vestibulum lacus dui, vulputate a sodales sed, laoreet eget elit. In sit amet nunc a metus porta porttitor. Morbi interdum eu massa at ornare. Praesent malesuada nisl quis ex tristique, in mattis massa malesuada. Phasellus pulvinar nisl eget magna blandit posuere. Proin rutrum sodales porta. In a enim diam.', 0, '2018-01-04 19:51:16', 1),
(13, 'Phasellus id justo nec enim eleifend tincidunt eget eget lorem', 8, 'Nulla quam nisi, tincidunt eget sem in, gravida vulputate eros. Cras id odio rhoncus, suscipit metus vitae, pulvinar lorem. Mauris maximus arcu id ipsum blandit interdum. Cras sollicitudin nulla at luctus tempus. Aenean consectetur quam sed consequat condimentum. Ut nec metus vulputate, blandit nulla condimentum, dignissim urna. Etiam et ipsum vitae est pretium vulputate. Pellentesque eu lobortis purus, non vehicula leo. Vivamus laoreet ac velit sed suscipit. Integer dictum, mauris nec posuere sollicitudin, orci augue ultricies arcu, quis tempor metus enim vel lectus.\r\n\r\nSuspendisse ultricies, lorem vitae faucibus convallis, leo justo vehicula nisi, ut ullamcorper magna sapien et enim. Ut et justo interdum augue pellentesque volutpat in eu enim. Donec sagittis varius massa id tempus. Suspendisse nec ipsum sed magna finibus pellentesque eget quis ante. Duis eget dictum dui. Aliquam ac neque euismod, commodo tortor vitae, fringilla ante. Praesent vel eleifend diam, blandit convallis magna. Vivamus ut ultricies leo, ut viverra erat. Aenean ultricies faucibus laoreet. Duis a nulla ac dui dapibus laoreet. Aliquam in orci mauris. Nam non egestas nisi.', 0, '2018-01-04 19:51:45', 1),
(14, 'Aliquam feugiat nisi at feugiat dictum', 8, 'Phasellus id euismod libero, in vehicula metus. Suspendisse venenatis lorem nisi, eget egestas nulla tempor non. Morbi aliquam vel est sed placerat. Duis eget blandit nisi, vitae consequat turpis. Integer at semper orci. Aliquam nec odio a turpis interdum commodo sit amet sit amet velit. Nam a mauris eget nisi blandit efficitur pulvinar ac nulla. Morbi urna ligula, rhoncus vitae arcu eget, condimentum egestas sapien. In rutrum et sem eu scelerisque. Quisque non sapien id purus venenatis rhoncus. Mauris volutpat erat a mauris facilisis imperdiet. Donec ultricies ac arcu non ullamcorper. Nunc laoreet placerat dui maximus elementum.\r\n\r\nUt tincidunt elit diam, in dictum tortor ullamcorper ut. Nam dignissim ultrices nisi sed tempor. Donec eu augue cursus, feugiat lacus eget, vestibulum purus. Nunc faucibus leo ac nunc placerat, vitae tempor justo placerat. Pellentesque lorem eros, ullamcorper eget porta ut, placerat iaculis orci. Vivamus ac semper nunc. Maecenas gravida orci in congue suscipit.', 0, '2018-01-04 19:52:33', 1),
(15, 'Etiam id risus blandit orci lobortis dignissim a at leo', 5, 'Morbi mauris purus, luctus nec turpis nec, iaculis condimentum metus. Suspendisse potenti. Nunc at consectetur nisl. Quisque a ullamcorper tellus, nec lobortis dui. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi blandit orci odio, quis tempus erat faucibus vitae. Integer dapibus metus ac varius suscipit. Proin ac molestie nibh, at cursus ante. Aliquam ligula nisi, vestibulum nec risus non, sollicitudin suscipit sem. In hac habitasse platea dictumst. Suspendisse in leo justo. Phasellus in rutrum nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vestibulum libero quis risus facilisis, et euismod massa maximus. Interdum et malesuada fames ac ante ipsum primis in faucibus.\r\n\r\nNulla facilisi. Sed molestie tortor tristique iaculis consequat. Phasellus ut ipsum porta, semper lorem vitae, sagittis felis. Aliquam sed felis arcu. Ut vitae turpis eget leo placerat faucibus ac vel nunc. Mauris tempus enim a erat lacinia iaculis. Maecenas id nisi pulvinar, porta enim eu, ultricies neque. Donec at ex volutpat, commodo libero non, dapibus est. Donec dictum urna nec lacus tristique vestibulum. Donec viverra volutpat ipsum, nec aliquet lacus viverra nec. Nullam sed odio ut velit eleifend molestie ut quis mi. Duis ac finibus nisl, ac ultrices nisi. Proin vitae finibus mi, sit amet ultrices dolor.', 0, '2018-01-04 19:52:58', 1),
(16, 'Etiam mollis ex at odio pretium elementum', 8, 'Vivamus eu finibus est. Curabitur tincidunt, ligula facilisis volutpat blandit, turpis ligula pretium ipsum, quis tincidunt urna sapien non ligula. Vivamus eget commodo nisi. Vivamus massa nunc, porta accumsan tincidunt sit amet, scelerisque interdum urna. Quisque rhoncus hendrerit lectus sit amet placerat. In diam dolor, mattis a euismod vel, tristique sit amet eros. Nullam euismod, lectus in porttitor pharetra, velit urna tincidunt eros, vel pretium arcu diam nec nisl. Nulla accumsan fringilla accumsan. Mauris fringilla nibh eget odio dictum, vel tincidunt risus faucibus. Nulla elementum hendrerit interdum. Suspendisse elementum congue diam, id lacinia erat tempor vitae. Curabitur nec blandit justo. Proin leo odio, faucibus finibus ultricies luctus, dignissim nec arcu.\r\n\r\nIn tristique nunc non rutrum vulputate. Praesent non cursus quam. Sed ut urna interdum, maximus risus quis, rutrum felis. Vestibulum pharetra est nec condimentum accumsan. In justo tellus, lobortis et dignissim ac, viverra sed risus. Suspendisse leo erat, fringilla ac odio sed, accumsan mattis est. Curabitur consectetur, est quis hendrerit porta, magna ante consequat quam, et tincidunt erat neque at augue. Aenean interdum leo purus, nec dapibus urna efficitur id. Suspendisse ac felis eu sapien vulputate rhoncus sit amet id felis. Maecenas id lobortis lectus, quis porta tortor. Quisque tortor lacus, varius eget lobortis vitae, pellentesque at erat. Donec mollis mattis neque, eget aliquam ex tristique et. Etiam volutpat, nisl id mollis dapibus, nulla urna venenatis sem, ut hendrerit ante arcu vitae magna. Donec et velit augue.', 0, '2018-01-04 19:53:23', 1),
(17, 'Nunc at nulla nec sem congue imperdiet non a diam', 1, 'Cras et semper lorem. Suspendisse eget fermentum nisi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer rhoncus, nulla sodales congue lobortis, felis nibh suscipit felis, et imperdiet ipsum massa non lorem. Praesent rutrum dolor ac tristique sagittis. Donec a risus posuere, fermentum tellus vitae, lobortis urna. Sed sit amet placerat nisl. Donec id libero eu erat interdum porttitor. Proin sollicitudin nulla a congue venenatis.\r\n\r\nAenean porttitor ornare viverra. Vivamus lobortis ante ac augue placerat, non vestibulum nulla sagittis. Phasellus consectetur sapien quis ex rhoncus, et faucibus lorem vehicula. Donec gravida, felis et pulvinar egestas, lectus odio accumsan dui, et vestibulum eros enim ut magna. Duis at augue ante. Quisque varius leo a convallis sollicitudin. Proin et ex nec dolor rutrum facilisis at vel neque. Sed volutpat, dui ac ultrices ultrices, massa tellus pretium purus, vel efficitur dolor metus a tortor. Proin blandit ante est, vel sodales nulla eleifend quis. Nullam dictum sollicitudin vulputate. Donec ac ornare lorem.', 0, '2018-01-04 19:54:02', 1),
(18, 'Phasellus luctus sapien ut laoreet fermentum', 1, 'Nullam in lacus eget nisi scelerisque ultricies. Aenean tincidunt augue risus, tincidunt tempus urna aliquet quis. Duis turpis turpis, finibus aliquet iaculis et, consequat quis nisl. Duis blandit condimentum est, eget elementum neque mollis ac. Curabitur tempus dui turpis, vel pellentesque tortor tristique ac. Pellentesque mattis ultricies risus tincidunt dignissim. Vestibulum ut efficitur eros.\r\n\r\nCras malesuada cursus dui, eu tempor tortor aliquam ac. Fusce venenatis lacus vel tortor feugiat aliquet. Suspendisse sapien sapien, vehicula in lorem eget, interdum facilisis lectus. Donec pellentesque vel ligula non lobortis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus in ante tempus, maximus arcu ut, pulvinar augue. Quisque eros eros, porttitor id semper vitae, consectetur eget sapien.', 0, '2018-01-04 19:54:34', 1),
(19, 'Fusce laoreet ipsum eget posuere volutpat', 7, 'Nam id tortor eget felis finibus efficitur in vel odio. Nam tincidunt sapien blandit tellus ornare, accumsan condimentum mauris venenatis. Vestibulum molestie massa eu nulla ornare vulputate. Sed bibendum dignissim suscipit. Donec scelerisque dignissim tincidunt. Vestibulum orci ipsum, luctus ut tristique lobortis, ultrices vitae est. Aenean non ornare tellus.\r\n\r\nNam maximus consectetur sapien, sit amet ullamcorper quam efficitur vitae. Aliquam sem risus, vehicula tristique eros et, fringilla congue velit. Quisque dictum pellentesque dictum. Donec sem mi, dignissim gravida fermentum et, bibendum at risus. Donec ultricies, magna accumsan blandit dapibus, est metus commodo turpis, a pulvinar quam nunc eget leo. Proin hendrerit in sem non imperdiet. Curabitur placerat diam a ullamcorper tempus. Integer imperdiet scelerisque pretium. Sed vel tortor at lectus egestas pellentesque. Integer pellentesque dignissim eros, ut elementum sem vulputate ac. Donec pretium nisl vitae lectus vehicula elementum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras consequat sem eu urna tincidunt, vel scelerisque sem finibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. In hac habitasse platea dictumst. Sed cursus aliquam justo, at mattis lacus bibendum sed.', 0, '2018-01-04 19:55:08', 1),
(20, 'Sed consequat augue in tristique facilisis', 6, 'Duis varius tincidunt nibh, ut sollicitudin enim tristique nec. Aenean pretium, felis eget facilisis pulvinar, neque dui fermentum turpis, id consequat dui erat non felis. In feugiat congue augue. Vivamus id ullamcorper odio. Nunc ut mi tellus. Sed pulvinar nunc vel sapien dapibus, vitae mollis purus ornare. In auctor felis at ipsum interdum, nec pellentesque ex dignissim. Curabitur varius vel magna quis lobortis. Phasellus venenatis urna vel augue maximus, ut tincidunt lectus commodo. Nam lobortis ultricies libero at tincidunt. Morbi fringilla nisl id lacus ullamcorper, sit amet interdum augue cursus.\r\n\r\nDuis cursus rutrum risus non eleifend. Cras facilisis consequat nibh, non ultricies orci semper vel. Suspendisse fringilla eros ipsum. Aliquam lacus arcu, porttitor ac pretium quis, ultricies eget orci. Ut sed nunc rutrum, pulvinar dolor vitae, pulvinar sapien. Pellentesque ut sem lorem. Aenean elementum faucibus sem viverra semper. Aenean blandit nulla arcu, in euismod neque rutrum eu. Cras rutrum sodales ultrices. Morbi congue nulla ut orci mattis scelerisque. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ac tortor et ex pellentesque finibus. Integer eu ipsum leo. Sed posuere fermentum mi, sit amet sagittis odio.', 0, '2018-01-04 19:55:35', 1),
(21, 'Vestibulum vitae nisl suscipit, eleifend lectus id, viverra odio', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:08:41', 1),
(22, 'Sed vitae nunc sed ante gravida feugiat', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:13:48', 1),
(23, 'Maecenas molestie enim ac mauris luctus, vitae elementum lectus lacinia', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:13:48', 1),
(24, 'Cras sit amet sapien sit amet urna maximus ultrices', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:13:48', 1),
(25, 'Donec sit amet nibh molestie, fringilla mauris sed, bibendum dolor', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:13:48', 1),
(26, 'Nam sagittis elit vitae ornare fringilla', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:13:48', 1),
(27, 'Cras consectetur mauris tempus ullamcorper elementum', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:13:48', 1),
(28, 'Nunc porttitor nulla quis enim ultricies, id luctus nunc porta', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:13:48', 1),
(29, 'Sed a diam iaculis, cursus tortor interdum, consequat leo', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:13:48', 1),
(30, 'Vestibulum finibus nisl a justo volutpat, tristique tristique justo facilisis', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:13:48', 1),
(31, 'In maximus neque vel urna pellentesque dignissim', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:13:49', 1),
(32, 'Nunc lacinia felis sit amet nisi mattis rutrum', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:13:49', 1),
(33, 'Vivamus porta nibh eu commodo tincidunt', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:13:49', 1),
(34, 'Nam pulvinar lorem sed mollis congue', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:17:50', 1),
(35, 'Morbi scelerisque nulla ac cursus ornare', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:17:55', 1),
(36, 'Aliquam quis tortor hendrerit, convallis nunc eget, viverra purus', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:17:57', 1),
(37, 'Sed vitae lorem rutrum diam egestas eleifend et a turpis', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:18:00', 1),
(38, 'Quisque placerat risus id nisi venenatis posuere', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:18:01', 1),
(39, 'Sed pulvinar libero ac metus consequat, eu gravida nibh vestibulum', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:18:16', 1);
INSERT INTO `news` (`id`, `title`, `category_id`, `description`, `analitic`, `created`, `active`) VALUES
(40, 'Nunc ultrices nisl pretium pharetra fringilla', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:18:40', 1),
(41, 'Nulla ut ante id massa vehicula eleifend a nec tortor', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:19:50', 1),
(42, 'Phasellus accumsan sem in aliquet maximus', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 08:19:59', 1),
(43, 'Mauris eget nulla quis ante volutpat tincidunt', 1, 'Proin semper quis nunc ut congue. Nullam urna lectus, cursus vitae mi id, aliquam facilisis nisl. Vestibulum quis fringilla nunc. Aenean egestas commodo sapien quis rhoncus. Phasellus fermentum tincidunt justo vitae pharetra. Donec interdum ligula et lacus faucibus, nec tempus lacus vulputate. Sed sodales lorem at massa rhoncus facilisis id sit amet mauris. Nullam faucibus sapien sed dui euismod finibus. Integer iaculis dictum augue, iaculis egestas est dapibus id. Aenean neque purus, ultricies eu imperdiet a, viverra vitae tellus.\r\n\r\nCras quam velit, convallis quis dictum nec, placerat ut purus. Nullam dignissim at nibh ac luctus. Maecenas eget justo non ipsum eleifend hendrerit. Phasellus at ipsum in elit tincidunt rhoncus at eu tortor. Proin elit neque, ullamcorper ut metus malesuada, pretium ornare ex. Nulla vitae dolor nibh. Cras rhoncus tortor vitae venenatis efficitur. Integer dictum nibh et iaculis auctor. Morbi sit amet lacinia leo, quis eleifend eros. Vivamus dignissim diam nec suscipit tempus. Fusce a eleifend nisl.', 0, '2018-01-06 09:55:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_media`
--

CREATE TABLE `news_media` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `filename` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_media`
--

INSERT INTO `news_media` (`news_id`, `filename`) VALUES
(5, '050ucHsxDBE-e1513245746442.jpg'),
(16, 'BluffsBarn_DW.jpg'),
(16, 'snowstorm.jpg'),
(17, '099874j8fSDFjs.jpg'),
(19, '190ghHOphh.jpg'),
(20, '84349.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news_tags`
--

CREATE TABLE `news_tags` (
  `news_id` int(10) UNSIGNED NOT NULL,
  `tag_id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_tags`
--

INSERT INTO `news_tags` (`news_id`, `tag_id`) VALUES
(1, 3),
(1, 4),
(2, 5),
(2, 11),
(3, 6),
(3, 9),
(4, 7),
(4, 13),
(5, 8),
(5, 12),
(6, 9),
(6, 11),
(7, 10),
(7, 13),
(8, 9),
(8, 11),
(9, 8),
(9, 12),
(10, 7),
(10, 13),
(11, 3),
(11, 4),
(12, 1),
(12, 5),
(12, 9),
(13, 6),
(13, 8),
(14, 7),
(14, 13),
(15, 12),
(16, 3),
(16, 5),
(16, 9),
(16, 11),
(17, 1),
(17, 10),
(18, 2),
(18, 9),
(19, 8),
(19, 12),
(20, 1),
(20, 2),
(20, 7),
(20, 9),
(20, 12),
(20, 13);

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `news_id` int(10) NOT NULL,
  `quantity` mediumint(8) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`news_id`, `quantity`) VALUES
(1, 5),
(16, 39940);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `email` varchar(80) NOT NULL,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(70) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`email`, `name`, `lastname`, `created`) VALUES
('nick.malinovskiy@gmail.com', 'Mykola Malinovskiy', 'Mykola Malinovskiy', '2018-01-04 20:47:20');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`) VALUES
(1, 'Украина'),
(2, 'Выборы'),
(3, 'Война'),
(4, 'ДТП'),
(5, 'АТО'),
(6, 'Футбол'),
(7, 'Хоккей'),
(8, 'Социология'),
(9, 'США'),
(10, 'ООН'),
(11, 'Порошенко'),
(12, 'Олимпиада'),
(13, 'Космос');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `login` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_media`
--
ALTER TABLE `news_media`
  ADD PRIMARY KEY (`news_id`,`filename`) USING BTREE;

--
-- Indexes for table `news_tags`
--
ALTER TABLE `news_tags`
  ADD PRIMARY KEY (`news_id`,`tag_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`news_id`) USING BTREE;

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
