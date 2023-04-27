-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 27 2023 г., 18:33
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `django_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `auth_permission`
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
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add order', 9, 'add_order'),
(34, 'Can change order', 9, 'change_order'),
(35, 'Can delete order', 9, 'delete_order'),
(36, 'Can view order', 9, 'view_order'),
(37, 'Can add order item', 10, 'add_orderitem'),
(38, 'Can change order item', 10, 'change_orderitem'),
(39, 'Can delete order item', 10, 'delete_orderitem'),
(40, 'Can view order item', 10, 'view_orderitem'),
(41, 'Can add shipping address', 11, 'add_shippingaddress'),
(42, 'Can change shipping address', 11, 'change_shippingaddress'),
(43, 'Can delete shipping address', 11, 'delete_shippingaddress'),
(44, 'Can view shipping address', 11, 'view_shippingaddress'),
(45, 'Can add captcha store', 12, 'add_captchastore'),
(46, 'Can change captcha store', 12, 'change_captchastore'),
(47, 'Can delete captcha store', 12, 'delete_captchastore'),
(48, 'Can view captcha store', 12, 'view_captchastore');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$AJNjATjVNleGmBV75xPW4k$BXZGyIIcoRbsi7hKivpX5UpSzpp+4vPvwT9oz3sYQZg=', '2023-04-27 06:23:20.022598', 1, 'ogk', '', '', 'takemefire.99@icloud.com', 1, 1, '2023-03-25 19:30:34.697103'),
(18, 'pbkdf2_sha256$390000$Rdx4BNb14WPHZAHHmcdUtH$sxBmiIKynz3MR0YFxRowWxchxIgb4NAU7jpxO4tX0cA=', '2023-04-26 16:04:44.110738', 0, 'painmain', '', '', 'painmain@gmail.com', 0, 1, '2023-04-26 16:04:32.596015');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `captcha_captchastore`
--

CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `captcha_captchastore`
--

INSERT INTO `captcha_captchastore` (`id`, `challenge`, `response`, `hashkey`, `expiration`) VALUES
(97, 'YXVX', 'yxvx', 'a97a246a6c662513146105e2cdf00b26d24ac716', '2023-04-27 06:28:08.442169');

-- --------------------------------------------------------

--
-- Структура таблицы `django_admin_log`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-25 19:33:59.924291', '1', 'Nike SB Dunk Low Pro QS', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-03-25 19:34:23.294830', '2', 'Nike SB Dunk Low Pro', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-03-25 19:34:40.864561', '3', 'Nike SB Dunk Low Pro Hennessy', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-03-25 19:34:51.584126', '4', 'Nike SB Dunk High Pro KCDC', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-03-25 19:35:01.856700', '5', 'Nike Dunk High Pro SB FLOM', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-03-25 19:44:27.724890', '5', 'Nike Dunk High Pro SB FLOM', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(7, '2023-03-25 19:44:45.717152', '5', 'Nike Dunk High Pro SB FLOM', 2, '[]', 7, 1),
(8, '2023-03-25 19:50:48.766363', '5', 'Nike Dunk High Pro SB FLOM', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(9, '2023-03-25 19:50:59.655721', '5', 'Nike Dunk High Pro SB FLOM', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(10, '2023-03-25 19:53:40.736888', '5', 'Nike Dunk High Pro SB FLOM', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(11, '2023-03-25 19:56:02.177083', '2', 'kanyewest', 1, '[{\"added\": {}}]', 4, 1),
(12, '2023-03-25 19:56:25.972503', '1', 'Kanye West', 1, '[{\"added\": {}}]', 8, 1),
(13, '2023-03-25 19:56:52.779649', '1', '1', 1, '[{\"added\": {}}]', 9, 1),
(14, '2023-03-25 19:57:15.894556', '1', 'OrderItem object (1)', 1, '[{\"added\": {}}]', 10, 1),
(15, '2023-04-02 14:04:51.987279', '5', 'face2face', 3, '', 4, 1),
(16, '2023-04-02 14:04:51.992273', '2', 'kanyewest', 3, '', 4, 1),
(17, '2023-04-02 14:04:51.996001', '3', 'marlen', 3, '', 4, 1),
(18, '2023-04-02 14:04:52.001030', '4', 'swamp', 3, '', 4, 1),
(19, '2023-04-02 14:05:20.502023', '6', 'ogk', 2, '[{\"changed\": {\"fields\": [\"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c\"]}}]', 8, 1),
(20, '2023-04-09 12:36:43.292493', '5', 'dsadsa', 3, '', 8, 1),
(21, '2023-04-09 12:36:45.812370', '4', 'Mark', 3, '', 8, 1),
(22, '2023-04-09 12:36:47.941448', '3', 'dsadsa', 3, '', 8, 1),
(23, '2023-04-09 12:36:49.892072', '2', 'dasdas', 3, '', 8, 1),
(24, '2023-04-09 12:37:15.803141', '15', '15', 3, '', 9, 1),
(25, '2023-04-09 12:37:15.805141', '14', '14', 3, '', 9, 1),
(26, '2023-04-09 12:37:15.806456', '13', '13', 3, '', 9, 1),
(27, '2023-04-09 12:37:15.808381', '12', '12', 3, '', 9, 1),
(28, '2023-04-09 12:37:15.809905', '11', '11', 3, '', 9, 1),
(29, '2023-04-09 12:37:15.811909', '10', '10', 3, '', 9, 1),
(30, '2023-04-09 12:37:15.814776', '9', '9', 3, '', 9, 1),
(31, '2023-04-09 12:37:15.816772', '8', '8', 3, '', 9, 1),
(32, '2023-04-09 12:37:15.817760', '7', '7', 3, '', 9, 1),
(33, '2023-04-09 12:37:15.819760', '6', '6', 3, '', 9, 1),
(34, '2023-04-09 12:37:15.821218', '5', '5', 3, '', 9, 1),
(35, '2023-04-09 12:37:15.822215', '4', '4', 3, '', 9, 1),
(36, '2023-04-09 12:37:15.823214', '3', '3', 3, '', 9, 1),
(37, '2023-04-09 12:37:15.825228', '2', '2', 3, '', 9, 1),
(38, '2023-04-09 12:37:15.826215', '1', '1', 3, '', 9, 1),
(39, '2023-04-09 12:38:13.585467', '6', 'jordan', 1, '[{\"added\": {}}]', 4, 1),
(40, '2023-04-09 12:38:27.515899', '7', 'jordan', 1, '[{\"added\": {}}]', 8, 1),
(41, '2023-04-09 12:48:03.370637', '5', 'Nike Dunk High Pro SB FLOM', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(42, '2023-04-09 12:48:58.536225', '5', 'Nike Dunk High Pro SB FLOM', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(43, '2023-04-16 07:47:08.624528', '7', 'michael', 3, '', 4, 1),
(44, '2023-04-16 08:01:16.613655', '8', 'michael', 3, '', 4, 1),
(45, '2023-04-16 08:03:15.597577', '9', 'michael', 3, '', 4, 1),
(46, '2023-04-16 08:58:43.099034', '10', 'michael', 3, '', 4, 1),
(47, '2023-04-26 13:50:44.864097', '11', 'marlen', 3, '', 4, 1),
(48, '2023-04-26 14:03:44.985822', '12', 'nurayaman', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 1),
(49, '2023-04-26 14:03:45.544198', '12', 'nurayaman', 2, '[]', 4, 1),
(50, '2023-04-26 14:10:26.243120', '12', 'nurayaman', 3, '', 4, 1),
(51, '2023-04-26 14:12:21.941760', '13', 'deadpool', 3, '', 4, 1),
(52, '2023-04-26 15:53:18.214577', '14', 'haribo', 3, '', 4, 1),
(53, '2023-04-26 15:53:18.222104', '15', 'jacob', 3, '', 4, 1),
(54, '2023-04-26 15:57:16.085365', '16', 'michael', 3, '', 4, 1),
(55, '2023-04-26 15:57:21.715934', '6', 'jordan', 3, '', 4, 1),
(56, '2023-04-26 15:57:46.701154', '17', 'michael', 1, '[{\"added\": {}}]', 4, 1),
(57, '2023-04-26 15:57:58.881859', '17', 'michael', 3, '', 4, 1),
(58, '2023-04-26 16:07:05.993757', '8', 'painmain', 1, '[{\"added\": {}}]', 8, 1),
(59, '2023-04-26 16:15:03.539273', '24', 'arman', 3, '', 4, 1),
(60, '2023-04-26 16:15:03.541272', '21', 'bully', 3, '', 4, 1),
(61, '2023-04-26 16:15:03.543311', '22', 'frank', 3, '', 4, 1),
(62, '2023-04-26 16:15:03.544818', '20', 'hulk', 3, '', 4, 1),
(63, '2023-04-26 16:15:03.546825', '19', 'junkfood', 3, '', 4, 1),
(64, '2023-04-26 16:15:03.548831', '23', 'man', 3, '', 4, 1),
(65, '2023-04-26 16:15:03.549823', '25', 'phill', 3, '', 4, 1),
(66, '2023-04-26 16:26:14.884094', '9', 'register', 3, '', 8, 1),
(67, '2023-04-26 16:26:27.695839', '26', 'arman', 3, '', 4, 1),
(68, '2023-04-26 16:26:27.697412', '27', 'eagle', 3, '', 4, 1),
(69, '2023-04-26 16:26:27.699419', '29', 'god', 3, '', 4, 1),
(70, '2023-04-26 16:26:27.700469', '28', 'hunt', 3, '', 4, 1),
(71, '2023-04-26 16:26:27.702984', '30', 'register', 3, '', 4, 1),
(72, '2023-04-26 16:27:35.099597', '10', 'bane', 3, '', 8, 1),
(73, '2023-04-26 16:27:39.708305', '31', 'bane', 3, '', 4, 1),
(74, '2023-04-27 05:57:00.712255', '5', 'Nike Dunk High Pro SB FLOM', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(12, 'captcha', 'captchastore'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'sneakers', 'customer'),
(9, 'sneakers', 'order'),
(10, 'sneakers', 'orderitem'),
(7, 'sneakers', 'product'),
(11, 'sneakers', 'shippingaddress');

-- --------------------------------------------------------

--
-- Структура таблицы `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-25 18:59:35.778833'),
(2, 'auth', '0001_initial', '2023-03-25 18:59:36.137599'),
(3, 'admin', '0001_initial', '2023-03-25 18:59:36.241804'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-25 18:59:36.248238'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-25 18:59:36.254409'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-25 18:59:36.304738'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-25 18:59:36.345128'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-25 18:59:36.358874'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-25 18:59:36.365375'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-25 18:59:36.400279'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-25 18:59:36.402542'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-25 18:59:36.412052'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-25 18:59:36.425320'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-25 18:59:36.449793'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-25 18:59:36.464435'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-25 18:59:36.473988'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-25 18:59:36.491017'),
(18, 'sessions', '0001_initial', '2023-03-25 18:59:36.515609'),
(19, 'sneakers', '0001_initial', '2023-03-25 19:02:43.271185'),
(20, 'sneakers', '0002_remove_product_digital_product_image', '2023-03-25 19:41:34.352877'),
(21, 'captcha', '0001_initial', '2023-04-09 12:14:27.867772'),
(22, 'captcha', '0002_alter_captchastore_id', '2023-04-09 12:14:27.872489'),
(23, 'sneakers', '0003_alter_order_customer_alter_order_date_ordered_and_more', '2023-04-26 16:23:48.617035');

-- --------------------------------------------------------

--
-- Структура таблицы `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2l845lqzxaveayc2mfrehjfdfc51ogw4', 'e30:1plQJj:7hbDDuPd4DiXTVnOzWm9Yzt7E_Y4-W5SvsJqGRDmIHs', '2023-04-23 08:22:31.042528'),
('4j34xnbr4p8ra9224idp64ks6exdhude', 'e30:1piy99:Q0HiKTkXIv6p6rkO26_tTyvyJmQcRI_6BKUM-0mp2-U', '2023-04-16 13:53:27.322975'),
('72k8wgepr1oearwla47o2q26gkc93caa', 'e30:1pixzW:WUMNkvBrAFwXEineR3hqwtw4zGHFxQmjLDcadRi7JoE', '2023-04-16 13:43:30.258806'),
('b9vb0vdxeliqiwg3mubn6tnd6w3y55eb', 'e30:1piy0y:M0XhnIEeuuQIVrhvO6M4FqXkrDdwTI4RG56KrS9Dsz0', '2023-04-16 13:45:00.649456'),
('buxwez2uzyc21xl2jhigo3klgkch0ykn', '.eJxVjMsOgjAQRf-la9N0GEqLS_d-QzOPYlEDCYWV8d-VhIVu7znnvkyibS1pq3lJo5qzAXP63Zjkkacd6J2m22xlntZlZLsr9qDVXmfNz8vh_h0UquVb-1Y4urb3yhAD9swwIJCnrOJQsOHAPmhoYgPqhg6ZhZ0IZewYAcz7A-aeODs:1prv2G:lRIGTKUTFLtVi8TLlbu-WMENtycYCWsw5ylvlKF8Xwk', '2023-05-11 06:23:20.095205'),
('ea8jmh2zthswjmk2uqrca9tetdqn7nyg', 'e30:1plQJx:fFEWEqj2lK1sO7wEznpQh4mHMqTL-S1-4TnlvmEu3QY', '2023-04-23 08:22:45.449953'),
('g6qh16kfx18lqv5y71u2u7pdo2q9ldum', 'e30:1plU3F:tdp2evGgwK-W1gPuLkjbKLnGeUimnYPVcDgV3fOarH4', '2023-04-23 12:21:45.069006'),
('glye76o3h4frw6ufi70ztv7yxlgkpxfs', 'e30:1plQKY:00C6LTvaPj6GH8EYxGVyjCx12ycYcuV2jf73-fG5s0U', '2023-04-23 08:23:22.829891'),
('icrti9ceh796w2xqwu70dtvqrp1df2p7', 'e30:1plU2c:px4EgNWnixuAKjcSEdP6SXEgf-Wj6nCkCXO9PwQBbZo', '2023-04-23 12:21:06.775872'),
('m15bop2nbm2iv77hjdc8yt58xom0nnzg', 'e30:1piy2W:2zDHmTjNywGaKqDDOHg7HsoadDQqeXe4wxPJUvy3VaA', '2023-04-16 13:46:36.782549'),
('wmz1c30j2rkczjbe6pue4foj175an0y6', '.eJxVjMsOgjAQRf-la9N0GEqLS_d-QzOPYlEDCYWV8d-VhIVu7znnvkyibS1pq3lJo5qzAXP63Zjkkacd6J2m22xlntZlZLsr9qDVXmfNz8vh_h0UquVb-1Y4urb3yhAD9swwIJCnrOJQsOHAPmhoYgPqhg6ZhZ0IZewYAcz7A-aeODs:1phA49:ZN5_0SzGqOF_AJN3yfSM2_njRr4aCLOvxQX54n6VICQ', '2023-04-11 14:12:49.185194'),
('ytke6opdf2807frzlictehdwognq0rid', 'e30:1piy8j:9cK4aWiV16qO3sd3u0RlfZs6eF-FTZJ52j5i-mDPwdQ', '2023-04-16 13:53:01.452135'),
('zuh6tdnrcnc1bhm8fji9xlo1ahobz15g', 'e30:1plU1m:gblqVi42mZai6H-GXSap4zWe56y1YkvY62Rp2_vo4tw', '2023-04-23 12:20:14.104712');

-- --------------------------------------------------------

--
-- Структура таблицы `sneakers_customer`
--

CREATE TABLE `sneakers_customer` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `sneakers_customer`
--

INSERT INTO `sneakers_customer` (`id`, `name`, `email`, `user_id`) VALUES
(6, 'ogk', 'dsads@mail.ru', 1),
(8, 'painmain', 'painmain@gmail.com', 18);

-- --------------------------------------------------------

--
-- Структура таблицы `sneakers_order`
--

CREATE TABLE `sneakers_order` (
  `id` bigint(20) NOT NULL,
  `date_ordered` datetime(6) NOT NULL,
  `complete` tinyint(1) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `sneakers_order`
--

INSERT INTO `sneakers_order` (`id`, `date_ordered`, `complete`, `transaction_id`, `customer_id`) VALUES
(16, '2023-04-09 12:37:22.205323', 0, NULL, 6),
(17, '2023-04-09 12:38:40.895615', 0, NULL, NULL),
(18, '2023-04-26 16:25:40.971136', 0, NULL, NULL),
(19, '2023-04-26 16:27:18.612255', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sneakers_orderitem`
--

CREATE TABLE `sneakers_orderitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date_added` datetime(6) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `sneakers_orderitem`
--

INSERT INTO `sneakers_orderitem` (`id`, `quantity`, `date_added`, `order_id`, `product_id`) VALUES
(1, 1, '2023-03-25 19:57:15.891208', NULL, 5),
(2, 5, '2023-04-02 14:46:24.587730', NULL, 2),
(3, 3, '2023-04-02 14:48:49.959118', NULL, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `sneakers_product`
--

CREATE TABLE `sneakers_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `sneakers_product`
--

INSERT INTO `sneakers_product` (`id`, `name`, `price`, `image`) VALUES
(1, 'Nike SB Dunk Low Pro QS', 240, NULL),
(2, 'Nike SB Dunk Low Pro', 300, NULL),
(3, 'Nike SB Dunk Low Pro Hennessy', 560, NULL),
(4, 'Nike SB Dunk High Pro KCDC', 150, NULL),
(5, 'Nike Dunk High Pro SB FLOM', 56139, 'images/nikedunkhighprosbflom_fRi01E5.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `sneakers_shippingaddress`
--

CREATE TABLE `sneakers_shippingaddress` (
  `id` bigint(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `zipcode` varchar(200) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Индексы таблицы `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Индексы таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Индексы таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Индексы таблицы `captcha_captchastore`
--
ALTER TABLE `captcha_captchastore`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hashkey` (`hashkey`);

--
-- Индексы таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Индексы таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Индексы таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Индексы таблицы `sneakers_customer`
--
ALTER TABLE `sneakers_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Индексы таблицы `sneakers_order`
--
ALTER TABLE `sneakers_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sneakers_order_customer_id_3c0c73ff_fk_sneakers_customer_id` (`customer_id`);

--
-- Индексы таблицы `sneakers_orderitem`
--
ALTER TABLE `sneakers_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sneakers_orderitem_order_id_128b9c1e_fk_sneakers_order_id` (`order_id`),
  ADD KEY `sneakers_orderitem_product_id_d5e9d37b_fk_sneakers_product_id` (`product_id`);

--
-- Индексы таблицы `sneakers_product`
--
ALTER TABLE `sneakers_product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sneakers_shippingaddress`
--
ALTER TABLE `sneakers_shippingaddress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sneakers_shippingadd_customer_id_29ad02a0_fk_sneakers_` (`customer_id`),
  ADD KEY `sneakers_shippingaddress_order_id_4330f5e6_fk_sneakers_order_id` (`order_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `captcha_captchastore`
--
ALTER TABLE `captcha_captchastore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT для таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `sneakers_customer`
--
ALTER TABLE `sneakers_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `sneakers_order`
--
ALTER TABLE `sneakers_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `sneakers_orderitem`
--
ALTER TABLE `sneakers_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `sneakers_product`
--
ALTER TABLE `sneakers_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `sneakers_shippingaddress`
--
ALTER TABLE `sneakers_shippingaddress`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `sneakers_customer`
--
ALTER TABLE `sneakers_customer`
  ADD CONSTRAINT `sneakers_customer_user_id_2d22c07e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ограничения внешнего ключа таблицы `sneakers_order`
--
ALTER TABLE `sneakers_order`
  ADD CONSTRAINT `sneakers_order_customer_id_3c0c73ff_fk_sneakers_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `sneakers_customer` (`id`);

--
-- Ограничения внешнего ключа таблицы `sneakers_orderitem`
--
ALTER TABLE `sneakers_orderitem`
  ADD CONSTRAINT `sneakers_orderitem_order_id_128b9c1e_fk_sneakers_order_id` FOREIGN KEY (`order_id`) REFERENCES `sneakers_order` (`id`),
  ADD CONSTRAINT `sneakers_orderitem_product_id_d5e9d37b_fk_sneakers_product_id` FOREIGN KEY (`product_id`) REFERENCES `sneakers_product` (`id`);

--
-- Ограничения внешнего ключа таблицы `sneakers_shippingaddress`
--
ALTER TABLE `sneakers_shippingaddress`
  ADD CONSTRAINT `sneakers_shippingadd_customer_id_29ad02a0_fk_sneakers_` FOREIGN KEY (`customer_id`) REFERENCES `sneakers_customer` (`id`),
  ADD CONSTRAINT `sneakers_shippingaddress_order_id_4330f5e6_fk_sneakers_order_id` FOREIGN KEY (`order_id`) REFERENCES `sneakers_order` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
