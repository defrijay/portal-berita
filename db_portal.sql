-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 10:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment_content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'komentar diupdate', '2024-05-16 14:32:30', '2024-05-16 22:32:29', NULL),
(2, 1, 1, 'komentar berhasil! makasih', '2024-05-16 14:33:49', '2024-05-16 14:33:49', NULL),
(5, 1, 1, 'tutorin bangg', '2024-05-16 18:34:53', '2024-05-16 18:34:53', NULL),
(6, 1, 1, 'tutorin bangg dong', '2024-05-16 18:38:38', '2024-05-16 22:39:52', '2024-05-16 22:39:52'),
(7, 1, 1, 'tutorin JS bangg dong', '2024-05-16 18:41:22', '2024-05-16 18:41:22', NULL),
(8, 1, 1, 'tutorin JS bangg dong', '2024-05-16 18:42:07', '2024-05-16 18:42:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '0001_01_01_000000_create_users_table', 1),
(11, '0001_01_01_000001_create_cache_table', 1),
(12, '0001_01_01_000002_create_jobs_table', 1),
(13, '2024_05_14_231700_create_posts_table', 2),
(14, '2024_05_14_232932_create_comments_table', 3),
(15, '2024_05_14_234939_create_personal_access_tokens_table', 4),
(16, '2024_05_17_100105_add_image_coloumn_to_post_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'user login', '1f1cc0bdb977cb7ce2812ee097c29978e88477a0f7ca11bac97fd8df26557df6', '[\"*\"]', NULL, NULL, '2024-05-15 14:55:43', '2024-05-15 14:55:43'),
(5, 'App\\Models\\User', 3, 'user login', '92b511fab4dab4f9665dafd13354a6895466979acb95b33b374e630d09e536e8', '[\"*\"]', '2024-05-15 23:18:34', NULL, '2024-05-15 23:18:26', '2024-05-15 23:18:34'),
(6, 'App\\Models\\User', 3, 'user login', '3b4170abe8078aba5ee956a7d8e897b9ab1bdbb99404f1fe0322dfb81ce2bf41', '[\"*\"]', '2024-05-17 03:39:19', NULL, '2024-05-15 23:26:18', '2024-05-17 03:39:19'),
(8, 'App\\Models\\User', 1, 'user login', '4895466129e05a62f96b7bfddaeca728e70e239219c9fd8998fed5426b5918ab', '[\"*\"]', '2024-05-16 22:47:02', NULL, '2024-05-16 02:24:34', '2024-05-16 22:47:02'),
(9, 'App\\Models\\User', 1, 'user login', 'ab44e5688e314ea28928c8d40a93dec4ee91bfa111cd62ecaa23b5a34677650e', '[\"*\"]', NULL, NULL, '2024-06-09 00:55:24', '2024-06-09 00:55:24');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `news_content` text NOT NULL,
  `author` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `news_content`, `author`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'pengumuman', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Error, nobis eveniet unde itaque corporis incidunt odio, iusto numquam deleniti ex dolore, aliquid commodi? Dolor error aliquid quia accusantium dolores neque.', 1, '2024-04-30 23:41:43', '2024-05-08 23:41:31', NULL),
(2, 'Welocme portal berita', NULL, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Commodi corporis eveniet perspiciatis quo? Voluptates culpa reiciendis beatae! Quo nulla dolor dolorum aperiam quidem magni dolore voluptatibus. Perspiciatis delectus repudiandae dolor reiciendis c', 1, '2024-04-30 23:41:47', '2024-05-16 04:08:36', '2024-05-16 04:08:36'),
(3, 'Tutorial CSS Pemula', NULL, 'Isi konten udah diupdate', 1, '2024-05-15 22:09:49', '2024-05-16 03:59:11', NULL),
(4, 'Tutoriual HTML Pemula', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam alias amet doloremque accusantium expedita assumenda, laboriosam porro aspernatur a? Debitis atque est necessitatibus ipsam minima numquam dolore quia facilis ab molestias et voluptatibus ea sint perspiciatis sequi ad nam, illum deleniti! Cum porro tempora, magnam beatae sunt enim ratione impedit amet ex ipsum omnis aliquam expedita? Illo, consequuntur? Quibusdam vitae hic molestias, atque sint explicabo amet quasi nemo fugit aliquid aliquam nostrum blanditiis fuga saepe eum magnam error fugiat earum perspiciatis dolorem quo qui? Amet, debitis error ipsam eos est accusamus dolor ex doloremque deserunt corporis numquam iure distinctio dolores.', 2, '2024-05-15 23:16:05', '2024-05-15 23:16:05', NULL),
(5, 'Tutoriual HTML Pemula', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam alias amet doloremque accusantium expedita assumenda, laboriosam porro aspernatur a? Debitis atque est necessitatibus ipsam minima numquam dolore quia facilis ab molestias et voluptatibus ea sint perspiciatis sequi ad nam, illum deleniti! Cum porro tempora, magnam beatae sunt enim ratione impedit amet ex ipsum omnis aliquam expedita? Illo, consequuntur? Quibusdam vitae hic molestias, atque sint explicabo amet quasi nemo fugit aliquid aliquam nostrum blanditiis fuga saepe eum magnam error fugiat earum perspiciatis dolorem quo qui? Amet, debitis error ipsam eos est accusamus dolor ex doloremque deserunt corporis numquam iure distinctio dolores.', 3, '2024-05-15 23:18:34', '2024-05-15 23:18:34', NULL),
(6, 'Tutorial upload image dengan api laravel', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam alias amet doloremque accusantium expedita assumenda, laboriosam porro aspernatur a? Debitis atque est necessitatibus ipsam minima numquam dolore quia facilis ab molestias et voluptatibus ea sint perspiciatis sequi ad nam, illum deleniti! Cum porro tempora, magnam beatae sunt enim ratione impedit amet ex ipsum omnis aliquam expedita? Illo, consequuntur? Quibusdam vitae hic molestias, atque sint explicabo amet quasi nemo fugit aliquid aliquam nostrum blanditiis fuga saepe eum magnam error fugiat earum perspiciatis dolorem quo qui? Amet, debitis error ipsam eos est accusamus dolor ex doloremque deserunt corporis numquam iure distinctio dolores.', 3, '2024-05-17 03:28:40', '2024-05-17 03:28:40', NULL),
(7, 'Tutorial upload image dengan api laravel', 'A.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam alias amet doloremque accusantium expedita assumenda, laboriosam porro aspernatur a? Debitis atque est necessitatibus ipsam minima numquam dolore quia facilis ab molestias et voluptatibus ea sint perspiciatis sequi ad nam, illum deleniti! Cum porro tempora, magnam beatae sunt enim ratione impedit amet ex ipsum omnis aliquam expedita? Illo, consequuntur? Quibusdam vitae hic molestias, atque sint explicabo amet quasi nemo fugit aliquid aliquam nostrum blanditiis fuga saepe eum magnam error fugiat earum perspiciatis dolorem quo qui? Amet, debitis error ipsam eos est accusamus dolor ex doloremque deserunt corporis numquam iure distinctio dolores.', 3, '2024-05-17 03:30:18', '2024-05-17 03:30:18', NULL),
(8, 'Tutorial upload image dengan api laravel', '4.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam alias amet doloremque accusantium expedita assumenda, laboriosam porro aspernatur a? Debitis atque est necessitatibus ipsam minima numquam dolore quia facilis ab molestias et voluptatibus ea sint perspiciatis sequi ad nam, illum deleniti! Cum porro tempora, magnam beatae sunt enim ratione impedit amet ex ipsum omnis aliquam expedita? Illo, consequuntur? Quibusdam vitae hic molestias, atque sint explicabo amet quasi nemo fugit aliquid aliquam nostrum blanditiis fuga saepe eum magnam error fugiat earum perspiciatis dolorem quo qui? Amet, debitis error ipsam eos est accusamus dolor ex doloremque deserunt corporis numquam iure distinctio dolores.', 3, '2024-05-17 03:31:17', '2024-05-17 03:31:17', NULL),
(9, 'Tutorial upload image dengan api laravel', 'K.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam alias amet doloremque accusantium expedita assumenda, laboriosam porro aspernatur a? Debitis atque est necessitatibus ipsam minima numquam dolore quia facilis ab molestias et voluptatibus ea sint perspiciatis sequi ad nam, illum deleniti! Cum porro tempora, magnam beatae sunt enim ratione impedit amet ex ipsum omnis aliquam expedita? Illo, consequuntur? Quibusdam vitae hic molestias, atque sint explicabo amet quasi nemo fugit aliquid aliquam nostrum blanditiis fuga saepe eum magnam error fugiat earum perspiciatis dolorem quo qui? Amet, debitis error ipsam eos est accusamus dolor ex doloremque deserunt corporis numquam iure distinctio dolores.', 3, '2024-05-17 03:32:23', '2024-05-17 03:32:23', NULL),
(10, 'Tutorial upload image dengan api axios ReactJs', 'y.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam alias amet doloremque accusantium expedita assumenda, laboriosam porro aspernatur a? Debitis atque est necessitatibus ipsam minima numquam dolore quia facilis ab molestias et voluptatibus ea sint perspiciatis sequi ad nam, illum deleniti! Cum porro tempora, magnam beatae sunt enim ratione impedit amet ex ipsum omnis aliquam expedita? Illo, consequuntur? Quibusdam vitae hic molestias, atque sint explicabo amet quasi nemo fugit aliquid aliquam nostrum blanditiis fuga saepe eum magnam error fugiat earum perspiciatis dolorem quo qui? Amet, debitis error ipsam eos est accusamus dolor ex doloremque deserunt corporis numquam iure distinctio dolores.', 3, '2024-05-17 03:34:42', '2024-05-17 03:34:42', NULL),
(11, 'Tutorial upload image dengan api axios ReactJs', 'x.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam alias amet doloremque accusantium expedita assumenda, laboriosam porro aspernatur a? Debitis atque est necessitatibus ipsam minima numquam dolore quia facilis ab molestias et voluptatibus ea sint perspiciatis sequi ad nam, illum deleniti! Cum porro tempora, magnam beatae sunt enim ratione impedit amet ex ipsum omnis aliquam expedita? Illo, consequuntur? Quibusdam vitae hic molestias, atque sint explicabo amet quasi nemo fugit aliquid aliquam nostrum blanditiis fuga saepe eum magnam error fugiat earum perspiciatis dolorem quo qui? Amet, debitis error ipsam eos est accusamus dolor ex doloremque deserunt corporis numquam iure distinctio dolores.', 3, '2024-05-17 03:37:09', '2024-05-17 03:37:09', NULL),
(12, 'Tutorial upload image dengan api NodeJS', 'e.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam alias amet doloremque accusantium expedita assumenda, laboriosam porro aspernatur a? Debitis atque est necessitatibus ipsam minima numquam dolore quia facilis ab molestias et voluptatibus ea sint perspiciatis sequi ad nam, illum deleniti! Cum porro tempora, magnam beatae sunt enim ratione impedit amet ex ipsum omnis aliquam expedita? Illo, consequuntur? Quibusdam vitae hic molestias, atque sint explicabo amet quasi nemo fugit aliquid aliquam nostrum blanditiis fuga saepe eum magnam error fugiat earum perspiciatis dolorem quo qui? Amet, debitis error ipsam eos est accusamus dolor ex doloremque deserunt corporis numquam iure distinctio dolores.', 3, '2024-05-17 03:38:07', '2024-05-17 03:38:07', NULL),
(13, 'Tutorial upload image dengan api NodeJS', 'zX1zQFBs2GgTRU7im1UUxmKNjFw58G.png', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam alias amet doloremque accusantium expedita assumenda, laboriosam porro aspernatur a? Debitis atque est necessitatibus ipsam minima numquam dolore quia facilis ab molestias et voluptatibus ea sint perspiciatis sequi ad nam, illum deleniti! Cum porro tempora, magnam beatae sunt enim ratione impedit amet ex ipsum omnis aliquam expedita? Illo, consequuntur? Quibusdam vitae hic molestias, atque sint explicabo amet quasi nemo fugit aliquid aliquam nostrum blanditiis fuga saepe eum magnam error fugiat earum perspiciatis dolorem quo qui? Amet, debitis error ipsam eos est accusamus dolor ex doloremque deserunt corporis numquam iure distinctio dolores.', 3, '2024-05-17 03:39:19', '2024-05-17 03:39:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1IGQV3tqsQu4HLczQnptySlNA9IUq45cQeWl0z9O', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHlTZVBnYjAyQXZLbXJuaVk3VDZUVmRyQk5GVmZVQjdyN0p5VzBPZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715808596),
('BZ4aaoKvU1VtMU4aP3qCaiMTvsGeEsvcCxpt8iwV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWJITGtjUGFpb2lDVldISngzdG5BMXdlWE9DV3VaenU0dTlObE4yVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717919670),
('n1yDLcAbKgz7kUo2ZXtTEPTSBBYugfDYwvcmf5Zk', NULL, '127.0.0.1', 'PostmanRuntime/7.38.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjdhZEFGWmx4TU9ET0dRNUxlZWtSR3dESlBaZTJFVjdtNEVaUjR5YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715730964),
('oxmwazRV1cf6UEvc860wAPbRIteDytOb5OCuS4an', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVFgwRWdld1NVZTBZVFo5WjJOcEZOcml3S3ZxRURDdDJvN3kwOGc0diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715775659),
('T0P6HlnEadHxVbIr8tysFVAVuVmfHBBSnt0o2IgD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWE5Zlh5NVZqQkhubG4ydkhuaVVnQkZnY3p2NkZJM0s0UFdRS1JINSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715730684);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 'admin', '$2y$10$H8GYRwBB6S31R4.jDeIz5uj6jjv4hOGLDMiW9uQAdv9XL4gCrfJdi', 'admin', 'admin', NULL, NULL),
(2, 'akmal@gmail.com', 'akmal', '$2y$10$H8GYRwBB6S31R4.jDeIz5uj6jjv4hOGLDMiW9uQAdv9XL4gCrfJdi', 'akmal', 'udin', NULL, NULL),
(3, 'cendy@gmail.com', 'cendy', '$2y$10$H8GYRwBB6S31R4.jDeIz5uj6jjv4hOGLDMiW9uQAdv9XL4gCrfJdi', 'cendy', 'krispi', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

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
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD KEY `posts_author_foreign` (`author`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_foreign` FOREIGN KEY (`author`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
