-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2015 at 11:09 AM
-- Server version: 5.6.26
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `albarrakco`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add category', 7, 'add_category'),
(20, 'Can change category', 7, 'change_category'),
(21, 'Can delete category', 7, 'delete_category'),
(28, 'Can add product', 10, 'add_product'),
(29, 'Can change product', 10, 'change_product'),
(30, 'Can delete product', 10, 'delete_product'),
(31, 'Can add kv store', 11, 'add_kvstore'),
(32, 'Can change kv store', 11, 'change_kvstore'),
(33, 'Can delete kv store', 11, 'delete_kvstore');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$20000$l2v8SGTzl2lT$oExVoRmfiTxtrjO2IMcBmSkfoFBZkWQR2IcmIHC8Sl4=', '2015-09-13 08:32:40.119073', 1, 'admin', '', '', '', 1, 1, '2015-08-23 08:39:52.885026');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-08-23 12:14:50.338094', '1', 'Laundry Products', 1, '', 7, 1),
(6, '2015-08-23 12:16:13.631682', '2', 'Factory', 1, '', 7, 1),
(10, '2015-09-13 08:35:42.118987', '2', 'Factory', 2, 'Changed image and info.', 7, 1),
(11, '2015-09-13 08:36:53.973385', '2', 'Factory', 2, 'Changed info.', 7, 1),
(12, '2015-09-13 08:37:43.558084', '1', 'Laundry Products', 2, 'Changed image and info.', 7, 1),
(13, '2015-09-13 08:40:15.912229', '3', 'coming soon', 1, '', 7, 1),
(14, '2015-09-13 08:40:40.093626', '4', 'coming soon', 1, '', 7, 1),
(15, '2015-09-13 08:40:57.353327', '5', 'coming soon', 1, '', 7, 1),
(16, '2015-09-13 09:03:35.649813', '1', 'Laundry Products', 2, 'Changed slug.', 7, 1),
(17, '2015-09-13 09:03:43.570240', '2', 'Factory', 2, 'Changed slug.', 7, 1),
(18, '2015-09-14 10:24:54.013465', '1', 'Faultless Starch', 2, 'Changed slug and info.', 10, 1),
(19, '2015-09-14 10:36:02.448890', '1', 'Faultless Starch', 2, 'Changed info.', 10, 1),
(20, '2015-09-14 10:42:50.940329', '4', 'Trouser Guards', 2, 'Changed slug and info.', 10, 1),
(21, '2015-09-14 10:43:00.013929', '3', 'White Hangers', 2, 'Changed slug and info.', 10, 1),
(22, '2015-09-14 10:43:16.573891', '2', 'Galvanized Hangers', 2, 'Changed slug and info.', 10, 1),
(23, '2015-09-14 10:55:12.427095', '5', 'extruder1', 1, '', 10, 1),
(24, '2015-09-14 10:55:45.460651', '6', 'printer1', 1, '', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'main', 'category'),
(10, 'main', 'product'),
(6, 'sessions', 'session'),
(11, 'thumbnail', 'kvstore');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-08-23 08:39:16.045221'),
(2, 'auth', '0001_initial', '2015-08-23 08:39:16.329522'),
(3, 'admin', '0001_initial', '2015-08-23 08:39:16.398666'),
(4, 'contenttypes', '0002_remove_content_type_name', '2015-08-23 08:39:16.496451'),
(5, 'auth', '0002_alter_permission_name_max_length', '2015-08-23 08:39:16.537003'),
(6, 'auth', '0003_alter_user_email_max_length', '2015-08-23 08:39:16.571163'),
(7, 'auth', '0004_alter_user_username_opts', '2015-08-23 08:39:16.583990'),
(8, 'auth', '0005_alter_user_last_login_null', '2015-08-23 08:39:16.622847'),
(9, 'auth', '0006_require_contenttypes_0002', '2015-08-23 08:39:16.624298'),
(10, 'main', '0001_initial', '2015-08-23 08:39:16.737281'),
(11, 'sessions', '0001_initial', '2015-08-23 08:39:16.775469'),
(12, 'main', '0002_auto_20150913_0833', '2015-09-13 08:33:35.960767'),
(13, 'main', '0003_auto_20150913_0846', '2015-09-13 08:46:30.764260'),
(14, 'main', '0004_category_slug', '2015-09-13 09:03:17.701567'),
(15, 'main', '0005_auto_20150913_0906', '2015-09-13 09:06:51.101548'),
(16, 'main', '0006_auto_20150914_0911', '2015-09-14 09:11:19.057068'),
(17, 'main', '0007_auto_20150914_0913', '2015-09-14 09:13:29.104599'),
(18, 'main', '0008_auto_20150914_1051', '2015-09-14 10:51:52.268946');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1vx62e7tk2wri2my166vzjvhedg0k98d', 'M2NlNmMwOGE5MDlhN2NlNGU3NjZjNzljMGJiMWJiZjY4OGNmN2EzNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjMWQxMzRkYjRkYWY1ODQ2OWQ2YTlkM2Y2NmY4ZmUwZDc4Y2I5YjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-09-27 08:32:40.121479'),
('jntxp1xsj3kf7y3wk4e075xasvugtjvf', 'M2NlNmMwOGE5MDlhN2NlNGU3NjZjNzljMGJiMWJiZjY4OGNmN2EzNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFjMWQxMzRkYjRkYWY1ODQ2OWQ2YTlkM2Y2NmY4ZmUwZDc4Y2I5YjciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2015-09-06 12:13:58.122957');

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE IF NOT EXISTS `main_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(100),
  `info` varchar(255),
  `slug` varchar(255)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_category`
--

INSERT INTO `main_category` (`id`, `name`, `image`, `info`, `slug`) VALUES
(1, 'Laundry Products', 'Products/faultless.jpg', 'laundry products', 'laundry'),
(2, 'Factory', 'Products/factory4.jpg', 'Al Barrak Plastics', 'factory'),
(3, 'coming soon', 'Products/comingsoon.jpg', 'coming soon', NULL),
(4, 'coming soon', 'Products/comingsoon_UjMPDfc.jpg', 'coming soon', NULL),
(5, 'coming soon', 'Products/comingsoon_0DUlDZR.jpg', 'coming soon', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_product`
--

CREATE TABLE IF NOT EXISTS `main_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `info` longtext,
  `slug` varchar(255)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_product`
--

INSERT INTO `main_product` (`id`, `name`, `image`, `category_id`, `info`, `slug`) VALUES
(1, 'Faultless Starch', 'Products/starch.jpg', 1, 'Faultless Starch kjqsdkjahckjhwkc', 'starch'),
(2, 'Galvanized Hangers', 'Products/galvanized_hanger.jpg', 1, 'Galvanized Hangers', 'gh'),
(3, 'White Hangers', 'Products/white_hanger.jpg', 1, 'White Hanger', 'wh'),
(4, 'Trouser Guards', 'Products/trouser_guard.jpg', 1, 'Trouser Guard', 'tg'),
(5, 'extruder1', 'Products/factory1.jpg', 2, 'thanks', '#'),
(6, 'printer1', 'Products/factory3.jpg', 2, 'printer', '#');

-- --------------------------------------------------------

--
-- Table structure for table `thumbnail_kvstore`
--

CREATE TABLE IF NOT EXISTS `thumbnail_kvstore` (
  `key` varchar(200) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thumbnail_kvstore`
--

INSERT INTO `thumbnail_kvstore` (`key`, `value`) VALUES
('sorl-thumbnail||image||0128c1ef5b845cec285d1bdbb2606e7e', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/95/da/95dacc7ea21f5f71863aa319dc07444c.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||0438d74845655a81733de2903d7c41ba', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c3/e2/c3e2fcfb84bbf4fea3e1fe93a66961b9.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||05939a7d79db78562b0e4bd363facb3f', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fe/d8/fed86e5e29a01449f5e4f48ad33ca4ae.jpg", "size": [230, 330]}'),
('sorl-thumbnail||image||073d79647a7305790314e38173bcd1c5', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/3b/a9/3ba9aa8dc2c1f6fa9c210533ff10075e.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||0afbd9605fcccbf4f06bf9c9ccea537b', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/26/f4/26f496414b9c4881622e6cc2597edacc.jpg", "size": [230, 330]}'),
('sorl-thumbnail||image||1535c127eaf47c72ec35a7ee3097ce8b', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/da/c7/dac71e0715743c419420e2031065adec.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||15fa67de325ea4ab22c075d2db24fc7d', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/79/22/7922e41bcaa378a935964ecb80ad458c.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||16a1dff58045cc891ca8b4fcbe0caf4e', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/90/32/90326b03efbbc00c65be2bb1061f8b5d.jpg", "size": [300, 300]}'),
('sorl-thumbnail||image||178111be3436d6bf04d0288cfbb5dc07', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/94/83/94836d2e7ba368bb63bfdd1d1389e10f.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||17b1d705825f879ad37b94e1078ed658', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "Products/starch.jpg", "size": [160, 190]}'),
('sorl-thumbnail||image||1f35e3763b50f13627c047b0620c5368', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/53/c7/53c7e6dc67c3c517fc96da4674483743.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||21f064d2ff39586818d5c60519462760', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "Products/comingsoon.jpg", "size": [768, 768]}'),
('sorl-thumbnail||image||223572af3be949affb93e4bfa66ffa52', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5f/5d/5f5d5cb2d53aa951cbcbad5f887e1706.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||2659970c2d6ae196359ee4bf06a57abe', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b9/d1/b9d1f3639a7c325ebb3da2bc01798ae2.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||28ecf20cfb58b0c43dca87e3cdeaa82c', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/00/55/0055d89006583ca73ad67e7d13e9ab49.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||29ca139d15304f9e34116bf003d71db5', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2a/5c/2a5cf756fbd95d6c5e1bd6f96b29f40e.jpg", "size": [330, 230]}'),
('sorl-thumbnail||image||2a3058925ee6479420b9f66ee69ccdd4', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/12/cb/12cb3fe4cc74e957cdd9ef9a9fdc3a80.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||2b2c2c3d27da63ba110678c6c895f589', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2b/2d/2b2d0dd823a8f9398f59673b2a0cdb74.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||2b30de7fd0aa2ccd57eaa3d5e1c76933', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2b/62/2b620e796682807beb966daff377b81f.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||2bbe7755ebb43fd6ee32e85056ea5253', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ce/e0/cee032655567c8f91467abb398e4b59a.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||2bc22952b8830001201f791389bed558', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f2/c8/f2c8b880727f4237d7d2694f7a99acc3.jpg", "size": [270, 230]}'),
('sorl-thumbnail||image||2fbd1d473baf1e47c4c928292769f3bf', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/81/83/81836a81775144499083a82ec400c75b.jpg", "size": [350, 230]}'),
('sorl-thumbnail||image||31fd3a9de921eb37d135c8aba43bc591', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/93/9b/939bfa50df454edd2b56232f073a14a9.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||3a5dbd6fb56acfabfbbb7d650c9183fd', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/0c/eb/0ceb344591d4d32b9fa36732303c76ff.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||3cba4bded43744a928d5d3c64468b8c6', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/44/0a/440ab39640a5cc96adb3ef7327ee77c1.jpg", "size": [310, 230]}'),
('sorl-thumbnail||image||3d7b34a58210556af04a2d4518041f3a', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5a/38/5a38c318426eee9cfffd0640e1e2e25e.jpg", "size": [330, 230]}'),
('sorl-thumbnail||image||3d7d1c272c245a6c59f1611d1ebe8eff', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/97/62/97622225e0c153293ca486b5c1643878.jpg", "size": [400, 400]}'),
('sorl-thumbnail||image||3e9a9b8ad52ec6113628c0f3f4751db9', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "Products/comingsoon_0DUlDZR.jpg", "size": [768, 768]}'),
('sorl-thumbnail||image||3eca1a11324dc02a1bd074d1e97db050', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/85/26/85262e0f7b798eef64646665f939ac9f.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||41d79084c9dece71442eb085c8a9dce9', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/d1/30/d130eee7d08bab9e2b8cfe492448cb30.jpg", "size": [240, 230]}'),
('sorl-thumbnail||image||4355bb5d8bcce7980fba311307f9ed76', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/3b/eb/3beb8d1dcb5ed85d53c817dc1c25576a.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||48b11d66c8f47ceb80725750930c0b8a', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2e/6c/2e6ccbb02943402d963e5747a2996a22.jpg", "size": [350, 230]}'),
('sorl-thumbnail||image||496dcb6d6b0f9f2b67b3cac24ce3a578', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4d/c9/4dc9c56da215fa68d9c80b04ab7693b2.jpg", "size": [400, 400]}'),
('sorl-thumbnail||image||4fa86a14084ad725619050b98f534803', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/61/81/61814d10117cfb2cd06fc221d677dc71.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||5293163d5037f66c3a38cfeac3e29ea9', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/62/03/6203628fff9988cd0b5d1d63e103fd36.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||534ccb7678c2f9d1e1a020a75299a6ec', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/53/6b/536b27b069add5f8e43c38b8335d165e.jpg", "size": [310, 230]}'),
('sorl-thumbnail||image||53fc40e7084fe8d9a1c506b0f15f808f', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fd/12/fd1289f5f6e35cef99fe690ee0533efe.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||55c65e3166b895d983ceb46b56ad8e23', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/40/7c/407cbbb9e5cab34499871a0ee673db86.jpg", "size": [290, 230]}'),
('sorl-thumbnail||image||5a02bcaea95f4b39b75836de98b9ec28', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ad/da/adda65e9013a5018d9451e648d82f92b.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||5aa90b1e9c8ddaa04bf3685cdfea5abc', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f2/24/f22415de356db30caa7508fab1d5dd4f.jpg", "size": [240, 230]}'),
('sorl-thumbnail||image||6031d84b82bc1c3089aac42d4705bf8c', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/39/9e/399ec77eaeea0555972ddb243f557485.jpg", "size": [310, 230]}'),
('sorl-thumbnail||image||61248735ceb46385172c68bbb6a23a76', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/1d/4f/1d4ff980c127dc8f13c02fd7ba6233d7.jpg", "size": [240, 230]}'),
('sorl-thumbnail||image||6214669a4589077bcfe859413a3ac43b', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ea/a8/eaa8dbea0c3f7a7324085374ce04c77f.jpg", "size": [330, 230]}'),
('sorl-thumbnail||image||63249fd519bd10c1e4b5c8bddb2cbcf6', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/92/0b/920b0d8b0632f1e92794361bd6797cd6.jpg", "size": [270, 230]}'),
('sorl-thumbnail||image||6caff0b32a1917caa0b166e8825b93e9', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/67/78/67788274806bf1bfecd65b4daca3d144.jpg", "size": [230, 330]}'),
('sorl-thumbnail||image||7b4e8d48790a01671407d3ed75775e32', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "Products/faultless.jpg", "size": [500, 500]}'),
('sorl-thumbnail||image||7ce387b5c97496e847ecaa0e880f7747', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a8/9f/a89fb27fb0b57e4aadbc5edf1cdd3b00.jpg", "size": [400, 400]}'),
('sorl-thumbnail||image||7e8c2e57ce5eea2ef38b704ff9023b58', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c7/e4/c7e4a7a078afbc43fd1a1373dbd03c4f.jpg", "size": [350, 230]}'),
('sorl-thumbnail||image||7ebaec8be4c8d84931ad0a18509af451', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "Products/galvanized_hanger.jpg", "size": [160, 190]}'),
('sorl-thumbnail||image||81f410af01fb6b9935acb29a6889b28a', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a5/f8/a5f8cc413f643280249669f487ff2816.jpg", "size": [290, 230]}'),
('sorl-thumbnail||image||85fe2a6d2966b19ae84fe998bb34f1ea', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "Products/factory3.jpg", "size": [250, 350]}'),
('sorl-thumbnail||image||881754288224e719ad6200efcb69152d', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/92/5e/925ec41b6d84c72a138ed929c586745e.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||88b055e3b686eaad469fad02f9688c59', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/3a/e3/3ae320a038a31592f7967c347f9779f6.jpg", "size": [300, 300]}'),
('sorl-thumbnail||image||8cb3e219e316689a19549b9d8c285b2e', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/60/be/60be9fa1d9247678328a5580164e2a12.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||8ef146d66a3a5fb7d060be834381691b', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/6a/56/6a56121566ef2639196c8c4ac6deaacd.jpg", "size": [270, 230]}'),
('sorl-thumbnail||image||8fe4bbd25371c9bff30d837208b689e3', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fa/90/fa906d36b5c2ba538f0ea91ac0b86249.jpg", "size": [330, 230]}'),
('sorl-thumbnail||image||9022acb9e5f3cab407da970617152905', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/cb/f0/cbf094785a8b7f3a77cc2cfbd73463f3.jpg", "size": [270, 230]}'),
('sorl-thumbnail||image||911511831c300bbd3a919b217a67302a', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a1/07/a107cb00c2086f81ef38184a81e812ca.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||91347bbcc58993067aa9133ac4bbf990', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4a/71/4a71da01abf667230bac125dad364e10.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||92432bc9a04272e967d2264761757d9f', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ca/9a/ca9aec1cfffd9bea0b271dd647f0e222.jpg", "size": [290, 230]}'),
('sorl-thumbnail||image||9906afa76c585169b5edcfe8708678ba', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "Products/white_hanger.jpg", "size": [160, 190]}'),
('sorl-thumbnail||image||a1260341e7185125789bbd66b2c7d076', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/69/21/692139a8dc47d7a57ba5e64a9b1a5cb6.jpg", "size": [300, 300]}'),
('sorl-thumbnail||image||a4205c1f52292439679a3a31da69fa0f', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a6/99/a69922fa8ce54e4acdd505e87fd9e617.jpg", "size": [300, 300]}'),
('sorl-thumbnail||image||a6f589568b1417e13e8803c3f1e3cab4', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "Products/factory4.jpg", "size": [610, 567]}'),
('sorl-thumbnail||image||ac34f2010aa483eb6619de6fd9bddc8c', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/43/c0/43c0ac3e3087073f47784593f75c832d.jpg", "size": [350, 230]}'),
('sorl-thumbnail||image||ad19400c0ed71ce35671810be91eb9c6', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/05/3d/053d15d3ac5a17fc481c3781a0f9b52e.jpg", "size": [300, 300]}'),
('sorl-thumbnail||image||b02d77dbd3f180290ee0f64e860212df', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/44/98/44983fdb758a8dfcbcaa7393358fe2ed.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||b68f085bd34696693884a3c96acd8304', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/c5/f4/c5f46420f626cc1119d32f88d85b057b.jpg", "size": [300, 300]}'),
('sorl-thumbnail||image||b8021f3036b913ce29784b9828788f69', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e3/8a/e38a25f371f16b08653007231136dd0a.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||bc7f7cd773f3dab7a5c556fac91bf72d', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b9/a4/b9a46db132b8cd5a7d8d7b6eee38a993.jpg", "size": [300, 300]}'),
('sorl-thumbnail||image||bcdacea83f411d191d1aca24d075ac67', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b1/15/b11550395529313d8c6a06e90b86db4d.jpg", "size": [300, 300]}'),
('sorl-thumbnail||image||c07a375bac79a7d031fd4bffb8bada92', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/54/fe/54fe6471acdc232cc146a5e1720aff42.jpg", "size": [230, 330]}'),
('sorl-thumbnail||image||c457a1d82620df9d3ea5f840ef924bf2', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/e8/8f/e88f5b1c3afe7b20a232c54421a026ed.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||c5c939851308b9c36ec473a1e3665584', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/5c/ec/5cec6d1767776f9dcf7c5ab0ec824a45.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||c77c5a6bc698b268d44b98c02cb2df12', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/f1/60/f160b071ef755f1afdc854b5087d8b0e.jpg", "size": [310, 230]}'),
('sorl-thumbnail||image||ca30cd44a6e8229ea8783ea200dac625', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/07/e7/07e78d2eeef34dd539685370cedd169b.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||cbe8db9b412f50435f4aa083844d4328', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/19/30/19301adf448bc1bf46dda87d93d9c143.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||cd2c94c83ec67128970ab2b3a1582ae3', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/0c/19/0c19854b11454afd04d57df0e5ae63b6.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||ce199aac6abf2569dbad27207b01f166', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/7a/61/7a61d8a0e1932989253bd9760085e6ab.jpg", "size": [300, 300]}'),
('sorl-thumbnail||image||d36de6a89f8034305731e823c147e4d1', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/fe/64/fe6456783a54c11c4e4d5bf458812f18.jpg", "size": [240, 230]}'),
('sorl-thumbnail||image||d406e9bc5b1ab7326c7efa667f045857', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "Products/comingsoon_UjMPDfc.jpg", "size": [768, 768]}'),
('sorl-thumbnail||image||d514de9aa4e4c2972b0e85519e29c487', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4c/8e/4c8e6dd16f1fc2d781da931ca8ba1f85.jpg", "size": [290, 230]}'),
('sorl-thumbnail||image||d859219b54697053960bafcd2cddcf92', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/3f/c0/3fc0e336218d2431dda514f715332437.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||da362cadd54e5811d8215c912ea7bab3', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/42/9c/429cf5d935ddf5c3d3346697778056b9.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||dc8dd132cb8c751c5a00b54b19c2a126', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "Products/trouser_guard.jpg", "size": [160, 190]}'),
('sorl-thumbnail||image||e181fc4ef1ad0e1f92f5ae7e0b7de60e', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ca/cc/cacc97329797bb6325a79e594ad2be87.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||e46f70235fed87cac80aa15610ec79ff', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/2b/70/2b7010c10b28125d3e88ef09a348ea62.jpg", "size": [400, 400]}'),
('sorl-thumbnail||image||e7094c1eb8d594c7eb7767670fc140c1', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/ac/c3/acc3100b3c013e30031ae317012d213b.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||eae8edb1d2ad80a055516323a482c59e', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b6/93/b6937bbc06e48b39ae37e781d92c9b5f.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||f037008f65f6173f9fee6075529a10f3', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "Products/factory1.jpg", "size": [343, 480]}'),
('sorl-thumbnail||image||f826c04752ee8f02e2fe2565c03af447', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/b3/2f/b32fdea77426a8a26d2b1d4b44a24f98.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||fabdc9c57ee52abf0ec8395240207ec2', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/4c/08/4c08e9e436de3f6991c2303a4f230cbf.jpg", "size": [235, 235]}'),
('sorl-thumbnail||image||fae17cde7ceb4b79208713c5531c4b90', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/a8/87/a8878e58d1edff14add5f6537f2c157c.jpg", "size": [230, 230]}'),
('sorl-thumbnail||image||fd4ffe8d72e088fd9ba5d9bb5a0230e2', '{"storage": "django.core.files.storage.FileSystemStorage", "name": "cache/26/1d/261de2d9c72964403dca568819067e62.jpg", "size": [230, 230]}'),
('sorl-thumbnail||thumbnails||17b1d705825f879ad37b94e1078ed658', '["ad19400c0ed71ce35671810be91eb9c6"]'),
('sorl-thumbnail||thumbnails||21f064d2ff39586818d5c60519462760', '["bcdacea83f411d191d1aca24d075ac67"]'),
('sorl-thumbnail||thumbnails||3e9a9b8ad52ec6113628c0f3f4751db9', '["a1260341e7185125789bbd66b2c7d076"]'),
('sorl-thumbnail||thumbnails||7b4e8d48790a01671407d3ed75775e32', '["b68f085bd34696693884a3c96acd8304"]'),
('sorl-thumbnail||thumbnails||7ebaec8be4c8d84931ad0a18509af451', '["ce199aac6abf2569dbad27207b01f166"]'),
('sorl-thumbnail||thumbnails||85fe2a6d2966b19ae84fe998bb34f1ea', '["5293163d5037f66c3a38cfeac3e29ea9"]'),
('sorl-thumbnail||thumbnails||9906afa76c585169b5edcfe8708678ba', '["88b055e3b686eaad469fad02f9688c59"]'),
('sorl-thumbnail||thumbnails||a6f589568b1417e13e8803c3f1e3cab4', '["a4205c1f52292439679a3a31da69fa0f"]'),
('sorl-thumbnail||thumbnails||d406e9bc5b1ab7326c7efa667f045857', '["bc7f7cd773f3dab7a5c556fac91bf72d"]'),
('sorl-thumbnail||thumbnails||dc8dd132cb8c751c5a00b54b19c2a126', '["16a1dff58045cc891ca8b4fcbe0caf4e"]'),
('sorl-thumbnail||thumbnails||f037008f65f6173f9fee6075529a10f3', '["91347bbcc58993067aa9133ac4bbf990"]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  ADD KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  ADD KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `main_category`
--
ALTER TABLE `main_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_category_2dbcba41` (`slug`);

--
-- Indexes for table `main_product`
--
ALTER TABLE `main_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_products_category_id_29372b9e4b59b55d_fk_main_category_id` (`category_id`);

--
-- Indexes for table `thumbnail_kvstore`
--
ALTER TABLE `thumbnail_kvstore`
  ADD PRIMARY KEY (`key`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `main_category`
--
ALTER TABLE `main_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `main_product`
--
ALTER TABLE `main_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `main_product`
--
ALTER TABLE `main_product`
  ADD CONSTRAINT `main_products_category_id_29372b9e4b59b55d_fk_main_category_id` FOREIGN KEY (`category_id`) REFERENCES `main_category` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
