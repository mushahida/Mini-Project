-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 09:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add cart', 7, 'add_cart'),
(26, 'Can change cart', 7, 'change_cart'),
(27, 'Can delete cart', 7, 'delete_cart'),
(28, 'Can view cart', 7, 'view_cart'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add customized', 9, 'add_customized'),
(34, 'Can change customized', 9, 'change_customized'),
(35, 'Can delete customized', 9, 'delete_customized'),
(36, 'Can view customized', 9, 'view_customized'),
(37, 'Can add login', 10, 'add_login'),
(38, 'Can change login', 10, 'change_login'),
(39, 'Can delete login', 10, 'delete_login'),
(40, 'Can view login', 10, 'view_login'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add product', 12, 'add_product'),
(46, 'Can change product', 12, 'change_product'),
(47, 'Can delete product', 12, 'delete_product'),
(48, 'Can view product', 12, 'view_product'),
(49, 'Can add rating', 13, 'add_rating'),
(50, 'Can change rating', 13, 'change_rating'),
(51, 'Can delete rating', 13, 'delete_rating'),
(52, 'Can view rating', 13, 'view_rating'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cr_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cr_id`, `p_id`, `status`, `user_id`) VALUES
(3, 3, 'pending', 2),
(4, 6, 'removed', 2),
(5, 4, 'pending', 1),
(6, 7, 'pending', 2),
(7, 7, 'removed', 2),
(8, 3, 'pending', 3),
(9, 6, 'pending', 3),
(10, 4, 'pending', 3),
(11, 3, 'pending', 3),
(12, 8, 'pending', 3),
(13, 8, 'pending', 3),
(14, 8, 'pending', 3),
(15, 10, 'pending', 3),
(16, 10, 'pending', 3),
(17, 10, 'pending', 3),
(18, 11, 'pending', 3),
(19, 13, 'pending', 3),
(20, 15, 'pending', 3);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ct_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ct_id`, `category_name`, `image`) VALUES
(4, 'craft', 'cf1.png'),
(5, 'fashion', 'dr1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customized`
--

CREATE TABLE `customized` (
  `cs_id` int(11) NOT NULL,
  `product_details` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `return_date` date NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customized`
--

INSERT INTO `customized` (`cs_id`, `product_details`, `status`, `user_id`, `return_date`, `image`) VALUES
(1, 'lehanka', 'approved', 1, '2022-11-09', ''),
(2, 'lehanka', 'pending', 1, '2022-11-16', ''),
(3, 'dream catcher', 'approved', 3, '2022-10-15', ''),
(4, 'stright pant', 'approved', 3, '2022-12-25', ''),
(5, 'bottle art', 'pending', 3, '2022-11-25', ''),
(6, 'dream catcher', 'pending', 3, '2022-12-04', 'cute bottle art.jpg'),
(7, 'Frame', 'rejected', 3, '2022-12-10', 'IMG-20221106-WA0059.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'cart', 'cart'),
(8, 'category', 'category'),
(5, 'contenttypes', 'contenttype'),
(9, 'customized', 'customized'),
(10, 'login', 'login'),
(11, 'order', 'order'),
(12, 'product', 'product'),
(13, 'rating', 'rating'),
(6, 'sessions', 'session'),
(14, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-08 06:46:01.247325'),
(2, 'auth', '0001_initial', '2022-11-08 06:46:01.925415'),
(3, 'admin', '0001_initial', '2022-11-08 06:46:02.060561'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-08 06:46:02.068889'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-08 06:46:02.079625'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-08 06:46:02.159618'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-08 06:46:02.206220'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-08 06:46:02.245112'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-08 06:46:02.256412'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-08 06:46:02.305696'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-08 06:46:02.308687'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-08 06:46:02.317879'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-08 06:46:02.340869'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-08 06:46:02.375789'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-08 06:46:02.402562'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-08 06:46:02.416011'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-08 06:46:02.461970'),
(18, 'cart', '0001_initial', '2022-11-08 06:46:02.471877'),
(19, 'category', '0001_initial', '2022-11-08 06:46:02.478398'),
(20, 'customized', '0001_initial', '2022-11-08 06:46:02.484359'),
(21, 'login', '0001_initial', '2022-11-08 06:46:02.490218'),
(22, 'order', '0001_initial', '2022-11-08 06:46:02.496692'),
(23, 'product', '0001_initial', '2022-11-08 06:46:02.502742'),
(24, 'rating', '0001_initial', '2022-11-08 06:46:02.508409'),
(25, 'sessions', '0001_initial', '2022-11-08 06:46:02.562102'),
(26, 'user', '0001_initial', '2022-11-08 06:46:02.568664');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('db82b28vzxuvzrfrcd7p2m6u1ok8oco5', 'eyJ1X2lkIjoyfQ:1otOQy:LvQWFM0ssHtH-mO2-kVSgBXAz4psqec_o9cImuVXQ0w', '2022-11-25 07:26:40.744917'),
('xr0yrstflqe64gem18hvf9qbupm91dv9', 'eyJ1X2lkIjoyfQ:1oseQI:6Jjmbnf3qWdR6SFwahAi04Z5BJC-_GRiaNdL9Zf3YkA', '2022-11-23 06:18:54.832078'),
('ydkzmfg2ce3fu86azw3j1espavg3zut0', 'eyJ1X2lkIjozfQ:1oufne:w556PMFLCy4VxCKwn4Z9nT_WVFSeYx2N8_kYgFqkm38', '2022-11-28 20:11:22.838842');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `l_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`l_id`, `username`, `password`, `type`, `u_id`) VALUES
(1, 'akash', 'akash123', 'user', 1),
(2, 'admin', 'admin', 'admin', 0),
(3, 'angel', 'angel123', 'user', 2),
(4, 'Mushahida', 'mushahida', 'user', 3);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `o_id` int(11) NOT NULL,
  `p_id` varchar(10) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `delivery_address` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`o_id`, `p_id`, `user_id`, `quantity`, `description`, `status`, `delivery_address`, `phone`) VALUES
(1, '3', '2', '2', '', 'delivered', '', ''),
(2, '4', '1', '1', '', 'delivered two days ago', '', ''),
(3, '7', '2', '1', '', 'pending', '', ''),
(4, '7', '2', '3', '', 'pending', '', ''),
(5, '6', '3', '3', '', 'packed', '', ''),
(6, '3', '3', '1', '', 'order accepted', '', ''),
(7, '8', '3', '5', '', 'pending', 'calicut', '1111111111'),
(8, '10', '3', '1', '', 'pending', 'calicut', '8589876048'),
(9, '11', '3', '1', '', 'pending', 'malappuram', '454464656'),
(11, '13', '3', '1', '', 'pending', 'malappuram', '6655625'),
(12, '15', '3', '1', '', 'order accepted', 'malappuram', '8589876048');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `delivery_charge` varchar(100) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pay_id`, `amount`, `delivery_charge`, `total_amount`, `date`, `u_id`) VALUES
(1, '650', '50', '700', '2022-11-13', 3),
(2, '650', '50', '700', '2022-11-13', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `discription` varchar(200) NOT NULL,
  `image` varchar(300) NOT NULL,
  `prize` varchar(100) NOT NULL,
  `size_chart` varchar(250) NOT NULL,
  `ct_id` int(11) NOT NULL,
  `deliver_charge` varchar(200) NOT NULL,
  `total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `name`, `discription`, `image`, `prize`, `size_chart`, `ct_id`, `deliver_charge`, `total`) VALUES
(3, 'saree', 'kanjipuram', 'saree.png', '3999', 'size.png', 2, '', ''),
(4, 'jeans', 'best cloths', 'jeans.png', '899', 'size.png', 2, '', ''),
(5, 'froke', 'best cloths', 'froke.jpg', '699', 'size.png', 2, '', ''),
(6, 'shirt', 'body fit', 'shirt.jpg', '1200', 'size.png', 2, '', ''),
(7, 'tops', 'white colour', 'froke.jpg', '1500', 'size.png', 2, '', ''),
(8, 'dream catcher', 'blue dream catcher', 'dreamcatcher.jpeg', '250', '', 4, '', ''),
(9, 'bottle art', 'cute bottle art', 'cute bottle art.jpg', '500', '', 4, '', ''),
(10, 'bottle art', 'bottle artness', 'bottle art.jpg', '500', '', 4, '60', '560'),
(11, 'stright pant', 'slim fit', 'strightpant.jpeg', '650', '', 5, '50', '700'),
(12, 'craft materials', 'full craft materials', 'craftmaterials.jpeg', '500', '', 4, '50', '550'),
(13, 'bottle art', 'creative bottle art', 'creative bottle.jpg', '500', '', 4, '50', '550'),
(14, 'moms pant', 'loosly pant', 'moms pant.jpeg', '800', '', 5, '50', '850'),
(15, 'Pletted Georgette top with dupatta M', 'Fabric imp georgette with lining', 'IMG-20221115-WA0065.jpg', '1330', '', 5, '50', '1380'),
(16, 'Frame', 'A4 Size Frame', 'IMG-20221106-WA0055.jpg', '500', '', 4, '50', '550');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `r_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`r_id`, `p_id`, `user_id`, `rating`) VALUES
(1, 1, 1, 'one'),
(2, 1, 2, 'three'),
(3, 2, 2, 'five'),
(4, 5, 2, 'five'),
(5, 5, 2, 'four'),
(6, 6, 2, 'five'),
(7, 3, 3, 'four'),
(8, 11, 3, 'one'),
(9, 13, 3, 'four'),
(10, 15, 3, 'five');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `address`, `gender`, `phone`, `email`) VALUES
(1, 'akash', 'akash123', 'calicut', 'male', '5542785432', 'aksh@gmail.com'),
(2, 'angel', 'angel123', 'wayanad', 'female', '5698743625', 'kev@gmail.com'),
(3, 'Mushahida', 'mushahida', 'Arangottu puthan peediyekkal (H) pang chendi (po)', 'female', '8589876048', 'mushahidamohammed@gmail.com');

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
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

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
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cr_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ct_id`);

--
-- Indexes for table `customized`
--
ALTER TABLE `customized`
  ADD PRIMARY KEY (`cs_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

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
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ct_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customized`
--
ALTER TABLE `customized`
  MODIFY `cs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
