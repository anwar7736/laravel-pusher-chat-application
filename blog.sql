-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2022 at 03:45 PM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Oran Fadel', '2022-09-28 02:46:46', '2022-09-28 02:46:46'),
(2, 'Nakia Dach', '2022-09-28 02:46:46', '2022-09-28 02:46:46'),
(3, 'Jalyn Trantow', '2022-09-28 02:46:46', '2022-09-28 02:46:46'),
(4, 'Claudie Wuckert', '2022-09-28 02:46:46', '2022-09-28 02:46:46'),
(5, 'Mr. Marco Mosciski', '2022-09-28 02:46:46', '2022-09-28 02:46:46'),
(6, 'Hollie Windler', '2022-09-28 02:46:46', '2022-09-28 02:46:46'),
(7, 'Jane Terry', '2022-09-28 02:46:46', '2022-09-28 02:46:46'),
(8, 'Dr. Parker Wilderman PhD', '2022-09-28 02:46:46', '2022-09-28 02:46:46'),
(9, 'Bridie Schulist', '2022-09-28 02:46:46', '2022-09-28 02:46:46'),
(10, 'Pearl Bogisich', '2022-09-28 02:46:46', '2022-09-28 02:46:46'),
(11, 'Gerhard Russel', '2022-09-28 02:50:18', '2022-09-28 02:50:18'),
(12, 'Elizabeth Frami Sr.', '2022-09-28 02:50:18', '2022-09-28 02:50:18'),
(13, 'Dr. Julien Kozey', '2022-09-28 02:50:18', '2022-09-28 02:50:18'),
(14, 'Elizabeth Glover', '2022-09-28 02:50:18', '2022-09-28 02:50:18'),
(15, 'Idella Rau', '2022-09-28 02:50:18', '2022-09-28 02:50:18'),
(16, 'Dr. Richie Abbott', '2022-09-28 02:50:18', '2022-09-28 02:50:18'),
(17, 'Maudie Dare', '2022-09-28 02:50:18', '2022-09-28 02:50:18'),
(18, 'Cade Osinski', '2022-09-28 02:50:18', '2022-09-28 02:50:18'),
(19, 'Liza Ullrich', '2022-09-28 02:50:18', '2022-09-28 02:50:18'),
(20, 'Whitney Abshire', '2022-09-28 02:50:18', '2022-09-28 02:50:18'),
(21, 'Arne O\'Keefe', '2022-09-28 02:51:07', '2022-09-28 02:51:07'),
(22, 'Tessie Hand', '2022-09-28 02:51:07', '2022-09-28 02:51:07'),
(23, 'Jefferey Waters IV', '2022-09-28 02:51:07', '2022-09-28 02:51:07'),
(24, 'Rocky Rice', '2022-09-28 02:51:07', '2022-09-28 02:51:07'),
(25, 'Mrs. Mae Goyette', '2022-09-28 02:51:07', '2022-09-28 02:51:07'),
(26, 'Armando Bergstrom DVM', '2022-09-28 02:51:07', '2022-09-28 02:51:07'),
(27, 'Dr. Lisandro Hammes', '2022-09-28 02:51:07', '2022-09-28 02:51:07'),
(28, 'Mr. Korbin Koepp Jr.', '2022-09-28 02:51:07', '2022-09-28 02:51:07'),
(29, 'Web Application', '2022-09-28 02:51:07', '2022-09-28 02:51:07'),
(30, 'Jace Hagenes', '2022-09-28 02:51:07', '2022-09-28 02:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comments`, `created_at`, `updated_at`) VALUES
(1, 5088, 5, 'My name is md anwar hossain My name is md anwar hossain My name is md anwar hossain', '2022-09-29 04:13:17', '2022-09-29 12:13:20'),
(2, 5088, 2, 'My name is md anwar hossain My name is md anwar hossain My name is md anwar hossain', '2022-09-29 06:13:17', '2022-09-29 12:13:20'),
(3, 5088, 3, 'My name is md anwar hossain My name is md anwar hossain My name is md anwar hossain', '2022-09-29 09:13:17', '2022-09-29 12:13:20'),
(4, 5088, 4, 'My name is md anwar hossain My name is md anwar hossain My name is md anwar hossain', '2022-09-29 12:13:17', '2022-09-29 12:13:20'),
(10, 5088, 1, 'Good Job!', '2022-09-29 13:23:30', '2022-09-29 13:23:30'),
(11, 5088, 4, 'Keep it up!', '2022-09-29 13:26:43', '2022-09-29 13:26:43'),
(12, 5088, 1, 'Thanks for your essential post!', '2022-09-29 13:32:49', '2022-09-29 13:32:49'),
(13, 5088, 4, 'Good', '2022-09-29 13:38:06', '2022-09-29 13:38:06'),
(14, 5088, 1, 'Good Job!', '2022-09-29 13:40:19', '2022-09-29 13:40:19'),
(15, 5088, 1, 'Good', '2022-09-29 13:41:59', '2022-09-29 13:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `is_like` int(11) NOT NULL,
  `is_unlike` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`, `is_like`, `is_unlike`, `created_at`, `updated_at`) VALUES
(20, 5081, 1, 1, 0, '2022-09-29 04:10:47', '2022-09-29 04:10:47'),
(21, 5081, 4, 0, 1, '2022-09-29 04:10:54', '2022-09-29 13:44:15'),
(22, 5078, 1, 1, 0, '2022-09-29 04:11:12', '2022-09-29 04:11:14'),
(23, 5076, 1, 1, 0, '2022-09-29 04:11:40', '2022-09-29 04:12:08'),
(25, 5074, 1, 1, 0, '2022-09-29 04:12:18', '2022-09-29 04:12:18'),
(29, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 05:32:39'),
(30, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(31, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(32, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(33, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(34, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(35, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(36, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(37, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(38, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(39, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(40, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(41, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(42, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(43, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(44, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(45, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(46, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(47, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(48, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(49, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(50, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(51, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(52, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(53, 5083, 4, 1, 0, '2022-09-29 04:35:35', '2022-09-29 04:35:47'),
(54, 5083, 1, 1, 0, '2022-09-29 04:38:49', '2022-09-29 13:43:57'),
(55, 5088, 1, 0, 1, '2022-09-29 05:33:36', '2022-09-29 13:43:44'),
(56, 5088, 4, 1, 0, '2022-09-29 05:37:43', '2022-09-29 13:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from`, `to`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '', 0, NULL, NULL),
(2, 1, 2, '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_28_081054_create_categories_table', 2),
(6, '2022_09_28_081117_create_subcategories_table', 2),
(10, '2022_09_28_082400_create_comments_table', 5),
(12, '2022_09_28_081330_create_posts_table', 6),
(13, '2022_09_28_083612_create_messages_table', 6),
(14, '2022_09_28_082328_create_likes_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_cover_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `subcategory_id`, `post_title`, `post_description`, `post_cover_photo`, `created_at`, `updated_at`) VALUES
(5033, 1, 8, 4, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 07:28:20', '2022-09-28 07:28:20'),
(5034, 1, 13, 2, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 07:48:36', '2022-09-28 07:48:36'),
(5035, 1, 18, 22, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 07:55:03', '2022-09-28 07:55:03'),
(5036, 1, 4, 5, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 07:58:28', '2022-09-28 07:58:28'),
(5037, 1, 4, 5, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 08:01:16', '2022-09-28 08:01:16'),
(5038, 1, 13, 2, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 08:02:10', '2022-09-28 08:02:10'),
(5039, 1, 13, 2, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 08:03:29', '2022-09-28 08:03:29'),
(5040, 1, 18, 22, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 08:03:58', '2022-09-28 08:03:58'),
(5041, 1, 14, 28, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 08:06:04', '2022-09-28 08:06:04'),
(5042, 1, 13, 2, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 08:07:35', '2022-09-28 08:07:35'),
(5043, 1, 21, 20, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 08:20:41', '2022-09-28 08:20:41'),
(5044, 1, 21, 20, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 08:21:01', '2022-09-28 08:21:01'),
(5045, 1, 21, 20, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 08:21:39', '2022-09-28 08:21:39'),
(5046, 1, 21, 20, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 08:21:54', '2022-09-28 08:21:54'),
(5047, 1, 21, 20, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', '1589349640.png', '2022-09-28 08:22:57', '2022-09-28 08:22:57'),
(5048, 1, 26, 27, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 08:29:30', '2022-09-28 08:29:30'),
(5051, 1, 26, 27, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 09:46:06', '2022-09-28 09:46:06');
INSERT INTO `posts` (`id`, `user_id`, `category_id`, `subcategory_id`, `post_title`, `post_description`, `post_cover_photo`, `created_at`, `updated_at`) VALUES
(5052, 1, 18, 24, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 09:46:59', '2022-09-28 09:46:59'),
(5053, 1, 21, 20, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex-shrink: 0; width: 458px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-28 09:47:49', '2022-09-28 09:47:49'),
(5054, 1, 9, 28, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 09:59:17', '2022-09-28 09:59:17'),
(5055, 1, 11, 21, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:00:16', '2022-09-28 10:00:16'),
(5056, 1, 9, 28, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:01:44', '2022-09-28 10:01:44'),
(5057, 1, 21, 20, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:02:35', '2022-09-28 10:02:35'),
(5058, 1, 4, 5, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:03:16', '2022-09-28 10:03:16'),
(5059, 1, 21, 20, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:04:06', '2022-09-28 10:04:06'),
(5060, 1, 26, 27, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:04:38', '2022-09-28 10:04:38'),
(5061, 1, 18, 24, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:05:18', '2022-09-28 10:05:18'),
(5062, 1, 9, 28, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:05:44', '2022-09-28 10:05:44'),
(5063, 1, 26, 27, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:10:11', '2022-09-28 10:10:11'),
(5064, 1, 9, 28, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:12:14', '2022-09-28 10:12:14'),
(5065, 1, 18, 24, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:13:03', '2022-09-28 10:13:03'),
(5066, 1, 21, 20, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:15:26', '2022-09-28 10:15:26'),
(5067, 1, 8, 4, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:23:29', '2022-09-28 10:23:29'),
(5068, 1, 26, 27, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:23:48', '2022-09-28 10:23:48'),
(5069, 1, 6, 19, 'Md Anwar Hossain', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:26:12', '2022-09-28 10:26:12'),
(5070, 1, 18, 24, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:28:28', '2022-09-28 10:28:28'),
(5071, 1, 18, 24, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:28:48', '2022-09-28 10:28:48'),
(5072, 1, 26, 27, 'Md Anwar Hossain', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:30:59', '2022-09-28 10:30:59'),
(5073, 1, 21, 20, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:35:22', '2022-09-28 10:35:22'),
(5074, 1, 26, 27, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', NULL, '2022-09-28 10:36:16', '2022-09-28 10:36:16'),
(5076, 1, 9, 28, 'Create a new blog site with real time chat application', '<p><span style=\"font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br></p>', '1165857785.png', '2022-09-28 10:39:50', '2022-09-28 10:39:50'),
(5078, 1, 26, 27, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 96.6562px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-29 00:04:08', '2022-09-29 00:04:08'),
(5079, 1, 18, 24, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 96.6562px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-29 00:09:13', '2022-09-29 00:09:13'),
(5080, 1, 18, 24, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 96.6562px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-29 00:14:08', '2022-09-29 00:14:08'),
(5081, 1, 6, 19, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><div class=\"col-md-3\" style=\"box-sizing: border-box; flex: 0 0 auto; width: 96.6562px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * 0.5); padding-left: calc(var(--bs-gutter-x) * 0.5); margin-top: var(--bs-gutter-y);\"></div></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', '880553911.png', '2022-09-29 00:16:00', '2022-09-29 00:16:00'),
(5083, 1, 21, 20, 'Create a new blog site with real time chat application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', '2123630137.png', '2022-09-29 04:13:35', '2022-09-29 04:13:35'),
(5088, 4, 18, 24, 'My First Laravel Pusher Real Time Chat Application', '<p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></p><div class=\"row\" style=\"box-sizing: border-box; --bs-gutter-x: 1.5rem; --bs-gutter-y: 0; display: flex; flex-wrap: wrap; margin-top: calc(-1 * var(--bs-gutter-y)); margin-right: calc(-0.5 * var(--bs-gutter-x)); margin-left: calc(-0.5 * var(--bs-gutter-x)); color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"></div></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(33, 37, 41); font-family: Nunito, sans-serif; font-size: 14.4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; background-color: rgb(255, 255, 255);\"><span style=\"box-sizing: border-box; font-size: 14.4px;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication, without the meaning of the text influencing the design.</span><br style=\"box-sizing: border-box;\"></p>', NULL, '2022-09-29 05:33:15', '2022-09-29 05:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(1, 15, 'Mr. Jesse Hagenes DVM', '2022-09-28 02:53:50', '2022-09-28 02:53:50'),
(2, 13, 'Prof. Zetta Cronin', '2022-09-28 02:53:50', '2022-09-28 02:53:50'),
(3, 16, 'Miss Freda Feeney', '2022-09-28 02:53:50', '2022-09-28 02:53:50'),
(4, 8, 'Maxine Walsh', '2022-09-28 02:53:50', '2022-09-28 02:53:50'),
(5, 4, 'Prof. Declan Daniel', '2022-09-28 02:53:50', '2022-09-28 02:53:50'),
(6, 27, 'Annabelle Blanda', '2022-09-28 02:53:50', '2022-09-28 02:53:50'),
(7, 1, 'Dudley Ziemann', '2022-09-28 02:53:50', '2022-09-28 02:53:50'),
(8, 28, 'Otilia Raynor', '2022-09-28 02:53:50', '2022-09-28 02:53:50'),
(9, 30, 'Prof. Alva Schultz DDS', '2022-09-28 02:53:50', '2022-09-28 02:53:50'),
(10, 7, 'Paul Reichert', '2022-09-28 02:53:50', '2022-09-28 02:53:50'),
(11, 5, 'Candice Rogahn', '2022-09-28 02:54:00', '2022-09-28 02:54:00'),
(12, 3, 'Maryam Nikolaus', '2022-09-28 02:54:00', '2022-09-28 02:54:00'),
(13, 10, 'Palma Bailey', '2022-09-28 02:54:00', '2022-09-28 02:54:00'),
(14, 29, 'Bert Boehm', '2022-09-28 02:54:00', '2022-09-28 02:54:00'),
(15, 22, 'Dr. Malcolm Rempel', '2022-09-28 02:54:00', '2022-09-28 02:54:00'),
(16, 25, 'Destiny Macejkovic', '2022-09-28 02:54:00', '2022-09-28 02:54:00'),
(17, 12, 'Janick Pagac', '2022-09-28 02:54:00', '2022-09-28 02:54:00'),
(18, 11, 'Gia Lueilwitz', '2022-09-28 02:54:00', '2022-09-28 02:54:00'),
(19, 6, 'Dewayne Denesik', '2022-09-28 02:54:00', '2022-09-28 02:54:00'),
(20, 21, 'Herta Braun', '2022-09-28 02:54:00', '2022-09-28 02:54:00'),
(21, 11, 'Lori Lockman', '2022-09-28 02:54:01', '2022-09-28 02:54:01'),
(22, 15, 'Evert Hyatt', '2022-09-28 02:54:01', '2022-09-28 02:54:01'),
(23, 20, 'Idell Romaguera', '2022-09-28 02:54:01', '2022-09-28 02:54:01'),
(24, 18, 'Christa Satterfield', '2022-09-28 02:54:01', '2022-09-28 02:54:01'),
(25, 2, 'Timothy Haley', '2022-09-28 02:54:01', '2022-09-28 02:54:01'),
(26, 14, 'Dennis Paucek', '2022-09-28 02:54:01', '2022-09-28 02:54:01'),
(27, 26, 'Prof. Alexandre Kohler II', '2022-09-28 02:54:01', '2022-09-28 02:54:01'),
(28, 9, 'Kasandra Schaefer', '2022-09-28 02:54:01', '2022-09-28 02:54:01'),
(29, 30, 'Wilburn Stoltenberg', '2022-09-28 02:54:01', '2022-09-28 02:54:01'),
(30, 24, 'Beverly Leuschke', '2022-09-28 02:54:01', '2022-09-28 02:54:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profile_photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Anwar Hossain', 'anwarhossain7736@gmail.com', NULL, '$2y$10$/CG7ouv7UogKmtcOeNsD0.FGYGdAN1LWmuoP6HPvKcsWqylwoczby', NULL, NULL, '2022-09-27 09:15:04', '2022-09-27 09:15:04'),
(2, 'Abul Hossain', 'anwarhossain773620@gmail.com', NULL, '$2y$10$oyGGPRenYAKRwLJ4LXoU2.ayDav6hosIgsXPBDgllZAQbaWyLaolS', NULL, NULL, '2022-09-27 09:15:24', '2022-09-27 09:15:24'),
(3, 'Ataur Rahman', 'anwarhossain@gmail.com', NULL, '$2y$10$xPAV62EMB5h5ESJSbKf2V.aaX/Ji0kSFC1b0KerMwdMC3MxzYVMxG', NULL, NULL, '2022-09-28 03:12:27', '2022-09-28 03:12:27'),
(4, 'Anin Mahmodul', 'anwar@gmail.com', NULL, '$2y$10$M./zQwBJXziJSfx4ahUiXO0fWCiGe62dLFMy9wM3z78QL7wjc1sd6', NULL, NULL, '2022-09-28 03:12:45', '2022-09-28 03:12:45'),
(5, 'Ashraf Karim', 'anwar550248@gmail.com', NULL, '$2y$10$kzl.IgGr9PtPoAKrkSsvce44kgLNBB01eW2mNP.Px3tyVNjR5wONa', NULL, NULL, '2022-09-28 03:13:03', '2022-09-28 03:13:03');

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
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_post_id_foreign` (`post_id`),
  ADD KEY `likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5089;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
