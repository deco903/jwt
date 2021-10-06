-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for jwt
CREATE DATABASE IF NOT EXISTS `jwt` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jwt`;

-- Dumping structure for table jwt.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jwt.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table jwt.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jwt.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2019_08_19_000000_create_failed_jobs_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table jwt.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jwt.users: ~11 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'decorico', 'deco@gmail.com', NULL, '$2y$10$5l4o/Fu2PAm0m0PsXIUbiOpfkifrwAuTTWRfma5dnt640P7uUyIb2', NULL, '2021-05-20 10:35:00', '2021-05-20 10:35:00'),
	(2, 'silvia', 'silvia@gmail.com', NULL, '$2y$10$UVYI/TiNKyCdti1Ufev6zel502DT.p4LEe4qi4BUQiGYEyyLlktRi', NULL, '2021-05-21 07:52:22', '2021-05-21 07:52:22'),
	(3, 'telukcoding', 'telukcoding@gmail.com', NULL, 'telukcoding123', NULL, '2021-05-27 06:06:03', '2021-05-27 06:06:03'),
	(5, 'telukcoding', 'telukcoding1@gmail.com', NULL, '$2y$10$OFK016Ao56AO5wlZb.MAWuLRKHTYLl9n90ISwNyyh3xDvgoSVdI06', NULL, '2021-05-27 06:09:39', '2021-05-27 06:09:39'),
	(6, 'telukcoding', 'telukcoding2@gmail.com', NULL, '$2y$10$MUyIGyfdKanQhLgLPaG9i.GUyGB/huBs/egYk2osP7lQ7EiOd.YZm', NULL, '2021-05-28 07:14:37', '2021-05-28 07:14:37'),
	(7, 'telukapi', 'telukapi@gmail.com', NULL, '$2y$10$faRM4p2P.yEV0gpEYlEiT.VdtWEssRVJCTyIanCo0BQhY7G9GQCG.', NULL, '2021-05-28 07:26:06', '2021-05-28 07:26:06'),
	(8, 'telukapi', 'telukapi1@gmail.com', NULL, '$2y$10$/Tx5JN8vLFjOPW79yK/19uwJ6RkA73Jl.RtOmu4nZ0GHR0X0gAYFK', NULL, '2021-05-28 07:31:11', '2021-05-28 07:31:11'),
	(9, 'telukapi', 'telukapi2@gmail.com', NULL, '$2y$10$IdwMQ/Z4L1UGA2Ij4roThuTDWu8YAsfkCjplUPrVxEBP6GrstDJQu', NULL, '2021-05-28 08:17:04', '2021-05-28 08:17:04'),
	(11, 'telukapi', 'telukapi3@gmail.com', NULL, '$2y$10$X7cFOc.Zkgl8z/puZgeYZekAfnXTvPAdiMjTITqB/f8rpBc8lSKZm', NULL, '2021-05-28 08:29:40', '2021-05-28 08:29:40'),
	(12, 'telukapi', 'telukapi4@gmail.com', NULL, '$2y$10$wRdvysIo/xK/DbyKY8lXEehGrAaTerJz4.kq5adGIhObu/R07AT.S', NULL, '2021-05-28 08:40:31', '2021-05-28 08:40:31'),
	(13, 'telukapi', 'telukapi5@gmail.com', NULL, '$2y$10$9xti6XKRoPV/.LPxmUonWOAewT7pgf4CyleVQqDtc9BFQSjoW8aCS', NULL, '2021-05-28 09:28:25', '2021-05-28 09:28:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
