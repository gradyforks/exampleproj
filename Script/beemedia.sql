-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2019 at 12:16 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beemedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `imagecat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`, `imagecat`) VALUES
(3, NULL, 1, 'Animals', 'animals', '2018-09-04 09:49:24', '2019-02-24 18:05:52', 'categories\\February2019\\IgsU76ET4pif4K1p8dfw.png'),
(5, NULL, 1, 'Cartoon', 'cartoon', '2018-09-04 09:50:04', '2019-02-24 18:05:48', 'categories\\February2019\\LojvTGk9sUa22RQtuKRC.png'),
(6, NULL, 1, 'Comedy', 'comedy', '2018-09-04 09:50:25', '2019-02-24 18:05:43', 'categories\\February2019\\dnC1fqe8wiuB8aBJUhJf.png'),
(7, NULL, 1, 'Comics', 'comics', '2018-09-04 09:50:49', '2019-02-24 18:05:37', 'categories\\February2019\\0LAHIrmujfE6G51wARHA.png'),
(8, NULL, 1, 'Family', 'family', '2018-09-04 09:51:03', '2019-02-24 18:05:32', 'categories\\February2019\\riRD8RwzevZl4xmtIixI.png'),
(9, NULL, 1, 'Film', 'film', '2018-09-04 09:51:19', '2019-02-24 18:05:12', 'categories\\February2019\\uvAG13aODu6vcpgJe88L.png'),
(10, NULL, 1, 'Food', 'food', '2018-09-04 09:51:37', '2019-02-24 18:05:07', 'categories\\February2019\\0NxdlGY5iU3GDcWCA9Vg.png'),
(11, NULL, 1, 'Music', 'music', '2018-09-04 09:52:04', '2019-02-24 18:05:02', 'categories\\February2019\\Eif9ZpQUN4WCw9kxOCGA.png'),
(12, NULL, 1, 'News', 'news', '2018-09-04 09:52:27', '2019-02-24 18:04:58', 'categories\\February2019\\vgPA2SXaBzHkHsOLagh2.png'),
(13, NULL, 1, 'Retro', 'retro', '2018-09-04 09:53:54', '2019-02-24 18:04:18', 'categories\\February2019\\MoLXr9eCeNpftc5dOThi.png'),
(15, NULL, 1, 'Vehicles', 'vehicles', '2018-09-04 09:54:32', '2019-02-24 18:04:14', 'categories\\February2019\\yfWdVI6c4ihmmbnGWZGW.png'),
(16, NULL, 1, 'Other', 'other', '2018-09-09 16:09:19', '2019-02-24 18:03:59', 'categories\\February2019\\wgkma1apeHJHXMqBIC1x.png');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(5, 'hello this best day', 1, 12, '2018-09-09 16:35:34', '2018-09-09 16:35:34'),
(6, 'hello i like this :)', 6, 18, '2019-02-24 18:57:42', '2019-02-24 18:57:42'),
(7, 'Awesome :)', 6, 50, '2019-02-24 19:07:45', '2019-02-24 19:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'text_area', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(47, 6, 'title', 'text', 'Title Post', 1, 1, 1, 1, 1, 1, NULL, 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, NULL, 4),
(49, 6, 'body', 'rich_text_box', 'Body', 0, 0, 1, 1, 1, 1, NULL, 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, NULL, 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, NULL, 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(57, 4, 'imagecat', 'image', 'Imagecat', 0, 1, 1, 1, 1, 1, NULL, 8),
(58, 5, 'post_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"author_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(59, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(60, 7, 'comment_content', 'text', 'Comment Content', 0, 1, 1, 1, 1, 1, NULL, 2),
(61, 7, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(62, 7, 'post_id', 'text', 'Post Id', 0, 1, 1, 1, 1, 1, NULL, 4),
(63, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(64, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(65, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(66, 8, 'like', 'text', 'Like', 0, 1, 1, 1, 1, 1, NULL, 2),
(67, 8, 'deslike', 'text', 'Deslike', 0, 1, 1, 1, 1, 1, NULL, 3),
(68, 8, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 4),
(69, 8, 'post_id', 'text', 'Post Id', 0, 1, 1, 1, 1, 1, NULL, 5),
(70, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 6),
(71, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(72, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(73, 9, 'deslike', 'text', 'Deslike', 0, 1, 1, 1, 1, 1, NULL, 2),
(74, 9, 'post_id', 'text', 'Post Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(75, 9, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 4),
(76, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 5),
(77, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(79, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(80, 10, 'Points', 'text', 'Points', 0, 1, 1, 1, 1, 1, NULL, 2),
(81, 10, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(82, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(83, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(84, 1, 'vedio', 'text', 'Vedio', 0, 1, 1, 1, 1, 1, NULL, 11),
(85, 5, 'vedio', 'text', 'Vedio', 0, 1, 1, 1, 1, 1, NULL, 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-04 08:27:37', '2018-09-06 09:24:45'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-09-04 08:27:37', '2018-09-04 08:27:37'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-09-04 08:27:37', '2018-09-04 08:27:37'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-04 08:27:46', '2018-09-04 09:46:36'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-04 08:27:47', '2018-09-04 14:54:10'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-04 08:27:50', '2018-09-04 14:56:32'),
(7, 'comments', 'comments', 'Comment', 'Comments', NULL, 'App\\Comment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-05 10:21:14', '2018-09-05 10:21:14'),
(8, 'likes', 'likes', 'Like', 'Likes', NULL, 'App\\Like', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-05 13:30:21', '2018-09-05 13:30:21'),
(9, 'deslikes', 'deslikes', 'Deslike', 'Deslikes', NULL, 'App\\Deslike', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-05 15:52:41', '2018-09-05 15:52:41'),
(10, 'points', 'points', 'Point', 'Points', NULL, 'App\\Point', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-09-08 10:40:10', '2018-09-08 10:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `deslikes`
--

CREATE TABLE `deslikes` (
  `id` int(10) UNSIGNED NOT NULL,
  `deslike` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `like` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `like`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(42, 1, 1, 12, '2018-09-09 16:35:23', '2018-09-09 16:35:23'),
(43, 1, 1, 36, '2018-09-09 16:36:07', '2018-09-09 16:36:07'),
(44, 1, 1, 40, '2018-09-09 16:37:06', '2018-09-09 16:37:06'),
(46, 1, 6, 18, '2019-02-24 18:55:59', '2019-02-24 18:55:59'),
(47, 1, 6, 19, '2019-02-24 19:05:35', '2019-02-24 19:05:35'),
(49, 1, 6, 50, '2019-02-24 19:07:34', '2019-02-24 19:07:34'),
(50, 1, 6, 44, '2019-02-24 19:17:15', '2019-02-24 19:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-09-04 08:27:38', '2018-09-04 08:27:38'),
(2, 'Top-menu', '2018-09-04 09:13:37', '2018-09-04 09:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-09-04 08:27:38', '2018-09-04 08:27:38', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-09-04 08:27:39', '2018-09-04 08:27:39', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-09-04 08:27:39', '2018-09-04 08:27:39', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-09-04 08:27:39', '2018-09-04 08:27:39', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2018-09-04 08:27:39', '2018-09-04 08:27:39', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2018-09-04 08:27:39', '2018-09-04 08:27:39', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2018-09-04 08:27:39', '2018-09-04 08:27:39', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2018-09-04 08:27:39', '2018-09-04 08:27:39', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2018-09-04 08:27:39', '2018-09-04 08:27:39', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2018-09-04 08:27:39', '2018-09-04 08:27:39', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 8, '2018-09-04 08:27:46', '2018-09-04 08:27:46', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2018-09-04 08:27:48', '2018-09-04 08:27:48', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2018-09-04 08:27:52', '2018-09-04 08:27:52', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2018-09-04 08:27:59', '2018-09-04 08:27:59', 'voyager.hooks', NULL),
(15, 2, 'Home', '', '_self', NULL, '#000000', NULL, 1, '2018-09-04 09:13:56', '2018-09-09 13:27:36', NULL, ''),
(16, 2, 'Leaderboard', 'Leaderboard', '_self', NULL, '#000000', NULL, 3, '2018-09-04 09:14:05', '2019-02-24 19:43:35', NULL, ''),
(17, 2, 'Contact', 'contact', '_self', NULL, '#000000', NULL, 6, '2018-09-04 09:14:12', '2019-02-24 19:43:35', NULL, ''),
(22, 2, 'categores', 'categores', '_self', NULL, '#000000', NULL, 4, '2018-09-09 13:27:29', '2019-02-24 19:43:35', NULL, ''),
(23, 2, 'Users', 'users', '_self', NULL, '#000000', NULL, 5, '2018-09-09 15:18:22', '2019-02-24 19:43:35', NULL, ''),
(24, 2, 'Video', 'video', '_self', NULL, '#000000', NULL, 2, '2019-02-24 19:43:31', '2019-02-24 19:43:34', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-09-04 08:27:39', '2018-09-04 08:27:39'),
(2, 'browse_bread', NULL, '2018-09-04 08:27:39', '2018-09-04 08:27:39'),
(3, 'browse_database', NULL, '2018-09-04 08:27:39', '2018-09-04 08:27:39'),
(4, 'browse_media', NULL, '2018-09-04 08:27:39', '2018-09-04 08:27:39'),
(5, 'browse_compass', NULL, '2018-09-04 08:27:39', '2018-09-04 08:27:39'),
(6, 'browse_menus', 'menus', '2018-09-04 08:27:39', '2018-09-04 08:27:39'),
(7, 'read_menus', 'menus', '2018-09-04 08:27:39', '2018-09-04 08:27:39'),
(8, 'edit_menus', 'menus', '2018-09-04 08:27:39', '2018-09-04 08:27:39'),
(9, 'add_menus', 'menus', '2018-09-04 08:27:39', '2018-09-04 08:27:39'),
(10, 'delete_menus', 'menus', '2018-09-04 08:27:39', '2018-09-04 08:27:39'),
(11, 'browse_roles', 'roles', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(12, 'read_roles', 'roles', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(13, 'edit_roles', 'roles', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(14, 'add_roles', 'roles', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(15, 'delete_roles', 'roles', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(16, 'browse_users', 'users', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(17, 'read_users', 'users', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(18, 'edit_users', 'users', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(19, 'add_users', 'users', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(20, 'delete_users', 'users', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(21, 'browse_settings', 'settings', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(22, 'read_settings', 'settings', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(23, 'edit_settings', 'settings', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(24, 'add_settings', 'settings', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(25, 'delete_settings', 'settings', '2018-09-04 08:27:40', '2018-09-04 08:27:40'),
(26, 'browse_categories', 'categories', '2018-09-04 08:27:46', '2018-09-04 08:27:46'),
(27, 'read_categories', 'categories', '2018-09-04 08:27:46', '2018-09-04 08:27:46'),
(28, 'edit_categories', 'categories', '2018-09-04 08:27:46', '2018-09-04 08:27:46'),
(29, 'add_categories', 'categories', '2018-09-04 08:27:46', '2018-09-04 08:27:46'),
(30, 'delete_categories', 'categories', '2018-09-04 08:27:46', '2018-09-04 08:27:46'),
(31, 'browse_posts', 'posts', '2018-09-04 08:27:48', '2018-09-04 08:27:48'),
(32, 'read_posts', 'posts', '2018-09-04 08:27:48', '2018-09-04 08:27:48'),
(33, 'edit_posts', 'posts', '2018-09-04 08:27:49', '2018-09-04 08:27:49'),
(34, 'add_posts', 'posts', '2018-09-04 08:27:49', '2018-09-04 08:27:49'),
(35, 'delete_posts', 'posts', '2018-09-04 08:27:49', '2018-09-04 08:27:49'),
(36, 'browse_pages', 'pages', '2018-09-04 08:27:52', '2018-09-04 08:27:52'),
(37, 'read_pages', 'pages', '2018-09-04 08:27:52', '2018-09-04 08:27:52'),
(38, 'edit_pages', 'pages', '2018-09-04 08:27:52', '2018-09-04 08:27:52'),
(39, 'add_pages', 'pages', '2018-09-04 08:27:52', '2018-09-04 08:27:52'),
(40, 'delete_pages', 'pages', '2018-09-04 08:27:53', '2018-09-04 08:27:53'),
(41, 'browse_hooks', NULL, '2018-09-04 08:28:00', '2018-09-04 08:28:00'),
(42, 'browse_comments', 'comments', '2018-09-05 10:21:15', '2018-09-05 10:21:15'),
(43, 'read_comments', 'comments', '2018-09-05 10:21:15', '2018-09-05 10:21:15'),
(44, 'edit_comments', 'comments', '2018-09-05 10:21:15', '2018-09-05 10:21:15'),
(45, 'add_comments', 'comments', '2018-09-05 10:21:15', '2018-09-05 10:21:15'),
(46, 'delete_comments', 'comments', '2018-09-05 10:21:15', '2018-09-05 10:21:15'),
(47, 'browse_likes', 'likes', '2018-09-05 13:30:21', '2018-09-05 13:30:21'),
(48, 'read_likes', 'likes', '2018-09-05 13:30:21', '2018-09-05 13:30:21'),
(49, 'edit_likes', 'likes', '2018-09-05 13:30:21', '2018-09-05 13:30:21'),
(50, 'add_likes', 'likes', '2018-09-05 13:30:21', '2018-09-05 13:30:21'),
(51, 'delete_likes', 'likes', '2018-09-05 13:30:21', '2018-09-05 13:30:21'),
(52, 'browse_deslikes', 'deslikes', '2018-09-05 15:52:41', '2018-09-05 15:52:41'),
(53, 'read_deslikes', 'deslikes', '2018-09-05 15:52:41', '2018-09-05 15:52:41'),
(54, 'edit_deslikes', 'deslikes', '2018-09-05 15:52:41', '2018-09-05 15:52:41'),
(55, 'add_deslikes', 'deslikes', '2018-09-05 15:52:41', '2018-09-05 15:52:41'),
(56, 'delete_deslikes', 'deslikes', '2018-09-05 15:52:41', '2018-09-05 15:52:41'),
(57, 'browse_points', 'points', '2018-09-08 10:40:10', '2018-09-08 10:40:10'),
(58, 'read_points', 'points', '2018-09-08 10:40:10', '2018-09-08 10:40:10'),
(59, 'edit_points', 'points', '2018-09-08 10:40:10', '2018-09-08 10:40:10'),
(60, 'add_points', 'points', '2018-09-08 10:40:10', '2018-09-08 10:40:10'),
(61, 'delete_points', 'points', '2018-09-08 10:40:10', '2018-09-08 10:40:10');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int(10) UNSIGNED NOT NULL,
  `Points` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `Points`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 1, 1, '2018-09-09 16:35:23', '2018-09-09 16:35:23'),
(9, 1, 1, '2018-09-09 16:35:34', '2018-09-09 16:35:34'),
(10, 1, 1, '2018-09-09 16:36:07', '2018-09-09 16:36:07'),
(11, 1, 1, '2018-09-09 16:37:06', '2018-09-09 16:37:06'),
(12, 1, 6, '2019-02-24 18:55:26', '2019-02-24 18:55:26'),
(13, 1, 6, '2019-02-24 18:56:00', '2019-02-24 18:56:00'),
(14, 1, 6, '2019-02-24 18:57:42', '2019-02-24 18:57:42'),
(15, 1, 6, '2019-02-24 19:05:35', '2019-02-24 19:05:35'),
(16, 1, 6, '2019-02-24 19:05:46', '2019-02-24 19:05:46'),
(17, 1, 6, '2019-02-24 19:07:34', '2019-02-24 19:07:34'),
(18, 1, 6, '2019-02-24 19:07:45', '2019-02-24 19:07:45'),
(19, 1, 6, '2019-02-24 19:17:15', '2019-02-24 19:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `vedio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `vedio`, `featured`, `created_at`, `updated_at`) VALUES
(18, 9, 7, 'Highlights', NULL, NULL, 'bokimon4 Highlights Highlights', 'posts\\February2019\\3KX6wXuNVa0HxMrCu5z9.png', 'highlights', NULL, NULL, NULL, 0, '2018-09-09 16:19:23', '2019-02-24 21:11:53'),
(19, 9, 7, 'Breakfast for One', NULL, 'bokimon4', 'Breakfast for One Breakfast for One Breakfast for One', 'posts\\February2019\\eYGl30g0nGQrlgFHM33M.png', 'breakfast-for-one', NULL, NULL, NULL, 0, '2018-09-09 16:19:49', '2019-02-24 21:11:46'),
(20, 9, 6, 'Must be Monday', NULL, NULL, 'Must be Monday', 'posts\\February2019\\TgTjBH6rRZSFgoh1nKtp.png', 'must-be-monday', NULL, NULL, NULL, 0, '2018-09-09 16:21:29', '2019-02-24 21:11:42'),
(21, 9, 6, 'Hate it when this happens!', NULL, NULL, 'Hate it when this happens! Hate it when this happens! Hate it when this happens!', 'posts\\February2019\\nNXfpjWlR8tj5tV9at2j.png', 'hate-it-when-this-happens', NULL, NULL, NULL, 0, '2018-09-09 16:22:04', '2019-02-24 21:11:37'),
(43, 6, 5, 'Nintendo Bed', NULL, NULL, 'Nintendo Bed Nintendo Bed Nintendo Bed Nintendo Bed', 'posts\\February2019\\LVMCeWZQkOStbxvSaTDA.png', 'nintendo-bed', NULL, NULL, NULL, 0, '2019-02-24 14:14:55', '2019-02-24 21:11:32'),
(44, 6, 7, 'Breakfast for One video', NULL, NULL, 'Breakfast for One video', NULL, 'breakfast-for-one-video', NULL, NULL, 'https://www.youtube.com/embed/rdTgzNWbIPw', 0, '2019-02-24 14:22:48', '2019-02-24 18:47:27'),
(45, 6, 5, 'The additional sign was necessary', NULL, NULL, 'The additional sign was necessary', NULL, 'the-additional-sign-was-necessary', NULL, NULL, 'https://www.youtube.com/embed/rdTgzNWbIPw', 0, '2019-02-24 14:43:12', '2019-02-24 18:47:23'),
(46, 6, 8, 'Diet Coke Ninjas', NULL, NULL, 'Diet Coke Ninjas Diet Coke Ninjas', NULL, 'diet-coke-ninjas', NULL, NULL, 'https://www.youtube.com/embed/rdTgzNWbIPw', 0, '2019-02-24 14:43:46', '2019-02-24 18:47:19'),
(47, 6, 6, 'Brain Transplant', NULL, NULL, 'Brain Transplant Brain Transplant', NULL, 'brain-transplant', NULL, NULL, 'https://www.youtube.com/embed/tME4tG4dpyk', 0, '2019-02-24 14:44:33', '2019-02-24 18:47:14'),
(48, 6, 6, 'Building the Mention Sales', NULL, NULL, 'Building the Mention Sales', NULL, 'building-the-mention-sales', NULL, NULL, 'https://www.youtube.com/embed/tME4tG4dpyk', 0, '2019-02-24 14:45:40', '2019-02-24 18:47:09'),
(49, 6, 8, 'Bare Necessities', NULL, NULL, 'Bare Necessities Bare Necessities', NULL, 'bare-necessities', NULL, NULL, 'https://www.youtube.com/embed/tME4tG4dpyk', 0, '2019-02-24 14:46:11', '2019-02-24 18:47:01'),
(50, 6, 8, 'Awesome...', NULL, NULL, 'Awesome... Awesome...', 'posts\\February2019\\eapPwqaX2q5j4ibLiIzo.png', 'awesome', NULL, NULL, NULL, 1, '2019-02-24 16:50:58', '2019-02-24 21:11:16'),
(51, 6, 6, 'Breakfast for One video2', NULL, NULL, 'Breakfast for One video2', 'posts\\February2019\\athly7Q12KmwJZxeFOEO.png', 'Breakfast for One video2', NULL, NULL, NULL, 0, '2019-02-24 19:01:51', '2019-02-24 21:11:20'),
(52, 6, 8, 'Breakfast for One video funny', NULL, NULL, 'Breakfast for One video funny Breakfast for One video funny', NULL, 'Breakfast for One video funny', NULL, NULL, 'https://www.youtube.com/embed/tME4tG4dpyk', 0, '2019-02-24 19:03:11', '2019-02-24 19:03:11'),
(53, 6, 5, 'Breakfast for One video funny two', NULL, NULL, 'Breakfast for One video funny two', 'posts\\February2019\\L3RKzvKB4ZkQ0ZOgFshz.png', 'Breakfast for One video funny two', NULL, NULL, NULL, 0, '2019-02-24 19:35:04', '2019-02-24 21:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-09-04 08:27:39', '2018-09-04 08:27:39'),
(2, 'user', 'Normal User', '2018-09-04 08:27:39', '2018-09-04 08:27:39');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Bee Media', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'BeeMedia - Media Sharing Script', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\February2019\\rOGyOkoX2tgLC4Vg0gFm.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\February2019\\tnsrqXiw1AhZ0aVMIZsj.png', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Bee Media', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Bee Media.', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\February2019\\ziBCw2qJ3iWMTQXPCsSv.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.background-Home', 'background-Home', 'settings\\February2019\\43fRdJ0cP5N6iJrG4vYM.png', NULL, 'image', 6, 'Site'),
(13, 'site.background-Home-Title', 'background-Home-Title', 'Viral Fun Media Sharing Script', NULL, 'text', 8, 'Site'),
(14, 'site.background-Home-link', 'background-Home-link', NULL, NULL, 'text', 9, 'Site'),
(15, 'page-categores.background-categores', 'background-categores', 'settings\\February2019\\Il38ijc1uCh5rrESEPcN.png', NULL, 'image', 10, 'Page-Categores'),
(16, 'page-categores.background-Categores-Title', 'background-Categores-Title', 'Categores', NULL, 'text', 11, 'Page-Categores'),
(17, 'page-categores.background-Categores-Link', 'background-Categores-Link', 'Categores', NULL, 'text', 12, 'Page-Categores'),
(21, 'social-link.Facebook', 'Facebook', 'Facebook', NULL, 'text', 15, 'Social-Link'),
(22, 'social-link.Twitter', 'Twitter', 'Twitter', NULL, 'text', 16, 'Social-Link'),
(23, 'social-link.Google-plus', 'Google-plus', 'Google-plus', NULL, 'text', 17, 'Social-Link'),
(24, 'social-link.Vimeo', 'Vimeo', 'Vimeo', NULL, 'text', 18, 'Social-Link'),
(27, 'social-link.share-buttons', 'share-buttons', 'https://localhost:8000', NULL, 'text', 21, 'Social-Link'),
(28, 'page-users.background-Users', 'background-Users', 'settings\\February2019\\luVSrpdIu2zfznl6VWq5.png', NULL, 'image', 22, 'Page-Users'),
(29, 'page-users.background-Users-Title', 'background-Users-Title', 'Users', NULL, 'text', 23, 'Page-Users'),
(30, 'page-users.background-Users-Link', 'background-Users-Link', 'users', NULL, 'text', 24, 'Page-Users'),
(31, 'page-leaderboard.background-Leaderboard', 'background-Leaderboard', 'settings\\February2019\\EGH4mn5kohXGrBPxtFfh.png', NULL, 'image', 25, 'Page-Leaderboard'),
(32, 'page-leaderboard.background-Leaderboard-Title', 'background-Leaderboard-Title', 'Points Leaderboard', NULL, 'text', 26, 'Page-Leaderboard'),
(33, 'page-leaderboard.background-Leaderboard-Link', 'background-Leaderboard-Link', 'Leaderboard', NULL, 'text', 27, 'Page-Leaderboard'),
(35, 'page-contact.background-Contact', 'background-Contact', 'settings\\February2019\\pCSQRNR4HZvQZvy6PFtN.png', NULL, 'image', 29, 'Page-Contact'),
(36, 'page-contact.background-Contact-Title', 'background-Contact-Title', 'Contact-Bee', NULL, 'text', 30, 'Page-Contact'),
(37, 'page-contact.background-Contact-Link', 'background-Contact-Link', NULL, NULL, 'text', 31, 'Page-Contact'),
(38, 'page-contact.Advertising-Contact-image', 'Advertising-Contact-image', 'settings\\February2019\\3CpaDPGZsAQHNe7PxEnB.png', NULL, 'image', 32, 'Page-Contact'),
(39, 'page-contact.Advertising-Contact-link', 'Advertising-Contact-link', 'Contact', NULL, 'text', 33, 'Page-Contact'),
(40, 'page-contact.Contact-body', 'Contact-body', 'consectadipisicing elit, sed do eiusmod por incidid ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud lorem exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\r\nDuis en aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', NULL, 'text_area', 34, 'Page-Contact'),
(41, 'page-contact.Email', 'Email', 'mail@gmail.com', NULL, 'text', 35, 'Page-Contact'),
(42, 'page-contact.Phone', 'Phone', '(002) 0100236598', NULL, 'text', 36, 'Page-Contact'),
(43, 'ads.ads-home-one-link', 'ads home one link', '/', NULL, 'text', 37, 'ads'),
(44, 'ads.ads-home-one-image', 'ads home one image', 'settings\\February2019\\yTPimUXeGGubtF7fkPQ5.png', NULL, 'image', 38, 'ads'),
(45, 'ads.ads-Leaderboard-one-link', 'ads Leaderboard one link', '/', NULL, 'text', 39, 'ads'),
(46, 'ads.ads-Leaderboard-one-IMAGE', 'ads Leaderboard one IMAGE', 'settings\\February2019\\o9G7uVKxZOSwn2La6SKj.png', NULL, 'image', 40, 'ads'),
(48, 'ads.ads-Leaderboard-two-link', 'ads Leaderboard two link', '/', NULL, 'text', 41, 'ads'),
(49, 'ads.ads-Leaderboard-two-IMAGE', 'ads Leaderboard two image', 'settings\\February2019\\K03TSIOrejLrBhkTg86v.png', NULL, 'image', 42, 'ads'),
(53, 'ads.ads-categoers-one-link', 'ads categoers one link', NULL, NULL, 'text', 43, 'ads'),
(54, 'ads.ads-categoers-two-link', 'ads categoers two link', NULL, NULL, 'text', 44, 'ads'),
(55, 'ads.ads-categoers-three-link', 'ads categoers three link', NULL, NULL, 'text', 45, 'ads'),
(56, 'ads.ads-categoers-one-image', 'ads categoers one image', 'settings\\February2019\\S9xYCrm4Vi7kfhWwTKwG.png', NULL, 'image', 46, 'ads'),
(57, 'ads.ads-categoers-two-image', 'ads categoers two image', 'settings\\February2019\\IOjXX9lvu5npouqHBKIw.png', NULL, 'image', 47, 'ads'),
(58, 'ads.ads-categoers-three-image', 'ads categoers three image', 'settings\\February2019\\IGoz9pUjaDJ9LKsGyTIj.png', NULL, 'image', 48, 'ads'),
(59, 'ads.ads-categoers-single-link', 'ads categoers single link', NULL, NULL, 'text', 49, 'ads'),
(60, 'ads.ads-categoers-single-two-link', 'ads categoers single two link', NULL, NULL, 'text', 50, 'ads'),
(61, 'ads.ads-categoers-single-image', 'ads categoers single image', 'settings\\February2019\\ivxIQIMVWUyp3lU1wVxI.png', NULL, 'image', 51, 'ads'),
(62, 'ads.ads-categoers-single-two-image', 'ads categoers single two image', 'settings\\February2019\\Vfim1N28JAKMgP5xiEgU.png', NULL, 'image', 52, 'ads'),
(63, 'ads.ads-user-link', 'ads user link', NULL, NULL, 'text', 53, 'ads'),
(64, 'ads.ads-user-image', 'ads user image', 'settings\\February2019\\riLJnw7XmNsRpu5TlaT0.png', NULL, 'image', 54, 'ads');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2018-09-04 08:27:53', '2018-09-04 08:27:53'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2018-09-04 08:27:53', '2018-09-04 08:27:53'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2018-09-04 08:27:53', '2018-09-04 08:27:53'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-09-04 08:27:54', '2018-09-04 08:27:54'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2018-09-04 08:27:54', '2018-09-04 08:27:54'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2018-09-04 08:27:54', '2018-09-04 08:27:54'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2018-09-04 08:27:54', '2018-09-04 08:27:54'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2018-09-04 08:27:55', '2018-09-04 08:27:55'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2018-09-04 08:27:55', '2018-09-04 08:27:55'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-09-04 08:27:55', '2018-09-04 08:27:55'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2018-09-04 08:27:55', '2018-09-04 08:27:55'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2018-09-04 08:27:55', '2018-09-04 08:27:55'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-09-04 08:27:55', '2018-09-04 08:27:55'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-09-04 08:27:56', '2018-09-04 08:27:56'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-09-04 08:27:56', '2018-09-04 08:27:56'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-09-04 08:27:56', '2018-09-04 08:27:56'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-09-04 08:27:56', '2018-09-04 08:27:56'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-09-04 08:27:56', '2018-09-04 08:27:56'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-09-04 08:27:56', '2018-09-04 08:27:56'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-09-04 08:27:56', '2018-09-04 08:27:56'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-09-04 08:27:57', '2018-09-04 08:27:57'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2018-09-04 08:27:57', '2018-09-04 08:27:57'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2018-09-04 08:27:57', '2018-09-04 08:27:57'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2018-09-04 08:27:57', '2018-09-04 08:27:57'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2018-09-04 08:27:57', '2018-09-04 08:27:57'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2018-09-04 08:27:57', '2018-09-04 08:27:57'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2018-09-04 08:27:57', '2018-09-04 08:27:57'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2018-09-04 08:27:57', '2018-09-04 08:27:57'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2018-09-04 08:27:58', '2018-09-04 08:27:58'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2018-09-04 08:27:58', '2018-09-04 08:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vedio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `vedio`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/September2018/user-1.png', '$2y$10$Mc5FH84hnpd.c1mIcvaY1eaVtLnz/I4FqYUj4Qy1.eo3SyDYFQwlq', 'KbXijFETuynremPiKiSFd8IuGNlDAG8TjcmLia0ymY30Q6bou9NvedP9KRYs', NULL, '2018-09-04 08:27:47', '2018-09-09 18:35:31', NULL),
(3, NULL, 'jak sbaro', 'sbaro@gmail.com', 'users\\September2018\\iNgXCjG7v9BopsVtEgPo.png', '$2y$10$QySKqgCoR0R7X/nMGwMT1uSKyMnlKbzAlfl.Mg76yfzMEsgbsgfu6', 'UbBzgCTaesxVY1Q93WACJAtiUtkqEDqukatFC5LYYKtRWzh8jzW7fd4i8I3T', '{\"locale\":\"en\"}', '2018-09-04 16:01:15', '2018-09-04 16:01:15', NULL),
(4, 2, 'jonsnow', 'jonsnow@gmail.com', 'users\\February2019\\X2fw7PYnBEMuUpqiQpjI.png', '$2y$10$4fQ0dACtcaVKDIRewfrj0OmtVFnpIqVrxJ9Cz6k3HUxG95IQMGbzq', NULL, '{\"locale\":\"en\"}', '2018-09-06 08:46:32', '2019-02-24 21:12:51', NULL),
(5, 2, 'caibol', 'caibol@gmail.com', 'users\\February2019\\Us7svIACmIEj3kwC3LQg.png', '$2y$10$.SKyKHPPbet0Y26R.V2LeesssDQ11sDh2FtdsOOyPQECCSz7LQBjW', NULL, '{\"locale\":\"en\"}', '2018-09-06 08:48:15', '2019-02-24 21:12:47', NULL),
(6, NULL, 'deadbool', 'deadbool@gmail.com', 'users\\February2019\\ykfv8YPhH7lzYgOdHKr6.png', '$2y$10$Wl6mLuW/N1POPNbUf6bZJOYz7JmDJwlGzryUaL7oxU3z4ZPC0Adxi', 'PsZqsYtk1EOPJfItSwxnlsbndOfRcv7LmC1ispVm9um5XWnpIfrLQmtc6gy2', '{\"locale\":\"en\"}', '2018-09-06 08:48:51', '2019-02-24 21:12:42', NULL),
(8, NULL, 'jemsbond', 'jemsbond@gmail.com', 'users\\February2019\\2otGlnePAzHhtZlQXYnx.png', '$2y$10$m9YLL6V0qQInj4dnUcSj6eXNGOeuToEjponjrmgKxC1U8P87c461i', NULL, '{\"locale\":\"en\"}', '2018-09-06 08:50:47', '2019-02-24 21:12:38', NULL),
(9, NULL, 'superwoman', 'superwoman@gmail.com', 'users\\February2019\\jykt8qXAhptxB6lqh3lZ.png', '$2y$10$pPeNFU9nWiwe0v/EIIBfZeRIVjKayJWXHS2RbNdmSmq9Dq/zksJIy', NULL, '{\"locale\":\"en\"}', '2018-09-06 08:51:14', '2019-02-24 21:12:35', NULL),
(10, NULL, 'karatehwoman', 'karatehwoman@gmail.com', 'users\\February2019\\syR4CHJJT576rpZhCKFH.png', '$2y$10$FeU38ntie7.kdlYQMX/umOgh9ii5na0HCjO2l/.O0LgeoeiYsukDG', NULL, '{\"locale\":\"en\"}', '2018-09-06 08:51:40', '2019-02-24 21:12:31', NULL),
(11, 2, 'nurchan', 'nurchan@gmail.com', 'users\\February2019\\HvfOtIWy1bVBmo0KTRs3.png', '$2y$10$YfRu0nXrRlj6/YTHyfHr5e8KqY8Q9qUcu03OLe9RI5A8kwz5FOY1a', 'zOL4HDuOgdHQf2Gx0dXZVkcIeD7ySrntzpbqubqdXC9NoGuHvrqRlWpiohrh', NULL, '2019-02-24 19:31:49', '2019-02-24 21:12:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `deslikes`
--
ALTER TABLE `deslikes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `deslikes`
--
ALTER TABLE `deslikes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
