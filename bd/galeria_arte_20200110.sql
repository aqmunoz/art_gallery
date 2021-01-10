-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2021 at 03:47 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galeria_arte`
--

-- --------------------------------------------------------

--
-- Table structure for table `gc_appraise_artwork`
--

CREATE TABLE `gc_appraise_artwork` (
  `id` mediumint(9) NOT NULL,
  `name_artwork` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_artwork` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_material` mediumint(9) NOT NULL,
  `id_technique` mediumint(9) NOT NULL,
  `large` double NOT NULL,
  `width` double NOT NULL,
  `height` double NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_resume` text COLLATE utf8mb4_unicode_ci,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `id_user` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gc_appraise_artwork`
--

INSERT INTO `gc_appraise_artwork` (`id`, `name_artwork`, `theme_artwork`, `id_material`, `id_technique`, `large`, `width`, `height`, `author_name`, `author_resume`, `document`, `created_at`, `id_user`) VALUES
(1, 'El David', 'Lorem Ipsum', 103, 105, 1, 1, 1, 'Davinci', 'Lorem Ipsum', 'doc-5ff3e2ea3f7ac.docx', '2021-01-05 03:39:45', 1),
(2, 'Gioconda', 'Lorem Ipsum', 103, 105, 1, 1, 1, 'Lorem Ipsum', 'Lorem Ipsum', 'doc-5ff682ef71335.docx', '2021-01-07 03:40:44', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(6, 'action_scheduler/migration_hook', 'complete', '2020-12-01 13:21:10', '2020-12-01 13:21:10', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1606828870;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1606828870;}', 1, 1, '2020-12-27 20:13:13', '2020-12-27 20:13:13', 0, NULL),
(7, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-01 13:27:34', '2020-12-01 13:27:34', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1606829254;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1606829254;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-27 20:13:13', '2020-12-27 20:13:13', 0, NULL),
(8, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-27 21:13:13', '2020-12-27 21:13:13', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609103593;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609103593;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-27 21:13:46', '2020-12-27 21:13:46', 0, NULL),
(9, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-27 22:13:46', '2020-12-27 22:13:46', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609107226;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609107226;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-27 22:15:04', '2020-12-27 22:15:04', 0, NULL),
(10, 'action_scheduler/migration_hook', 'complete', '2020-12-27 21:28:35', '2020-12-27 21:28:35', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609104515;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609104515;}', 1, 1, '2020-12-27 21:28:49', '2020-12-27 21:28:49', 0, NULL),
(11, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-12-27 21:58:22', '2020-12-27 21:58:22', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609106302;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609106302;}', 0, 1, '2020-12-27 21:58:33', '2020-12-27 21:58:33', 0, NULL),
(12, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-12-28 21:58:33', '2020-12-28 21:58:33', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609192713;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609192713;}', 0, 1, '2020-12-28 23:15:21', '2020-12-28 23:15:21', 0, NULL),
(13, 'wc-admin_import_customer', 'complete', '2020-12-27 22:04:34', '2020-12-27 22:04:34', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609106674;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609106674;}', 3, 1, '2020-12-27 22:04:42', '2020-12-27 22:04:42', 0, NULL),
(14, 'wc-admin_import_order', 'complete', '2020-12-27 22:04:35', '2020-12-27 22:04:35', '[44]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609106675;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609106675;}', 3, 1, '2020-12-27 22:04:43', '2020-12-27 22:04:43', 0, NULL),
(15, 'wc-admin_import_customer', 'complete', '2020-12-27 22:06:37', '2020-12-27 22:06:37', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609106797;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609106797;}', 3, 1, '2020-12-27 22:06:43', '2020-12-27 22:06:43', 0, NULL),
(16, 'wc-admin_import_order', 'complete', '2020-12-27 22:06:39', '2020-12-27 22:06:39', '[44]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609106799;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609106799;}', 3, 1, '2020-12-27 22:06:44', '2020-12-27 22:06:44', 0, NULL),
(17, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-27 23:15:05', '2020-12-27 23:15:05', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609110905;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609110905;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-27 23:16:07', '2020-12-27 23:16:07', 0, NULL),
(18, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-28 00:16:07', '2020-12-28 00:16:07', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609114567;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609114567;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-28 01:32:48', '2020-12-28 01:32:48', 0, NULL),
(19, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-28 02:32:48', '2020-12-28 02:32:48', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609122768;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609122768;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-28 02:33:05', '2020-12-28 02:33:05', 0, NULL),
(20, 'action_scheduler/migration_hook', 'complete', '2020-12-28 02:17:39', '2020-12-28 02:17:39', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609121859;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609121859;}', 1, 1, '2020-12-28 02:17:53', '2020-12-28 02:17:53', 0, NULL),
(21, 'action_scheduler/migration_hook', 'complete', '2020-12-28 02:29:55', '2020-12-28 02:29:55', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609122595;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609122595;}', 1, 1, '2020-12-28 02:30:00', '2020-12-28 02:30:00', 0, NULL),
(22, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-28 03:33:05', '2020-12-28 03:33:05', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609126385;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609126385;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-28 03:33:15', '2020-12-28 03:33:15', 0, NULL),
(23, 'action_scheduler/migration_hook', 'complete', '2020-12-28 02:45:22', '2020-12-28 02:45:22', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609123522;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609123522;}', 1, 1, '2020-12-28 02:45:34', '2020-12-28 02:45:34', 0, NULL),
(24, 'action_scheduler/migration_hook', 'complete', '2020-12-28 03:09:50', '2020-12-28 03:09:50', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609124990;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609124990;}', 1, 1, '2020-12-28 03:10:03', '2020-12-28 03:10:03', 0, NULL),
(25, 'action_scheduler/migration_hook', 'complete', '2020-12-28 03:11:15', '2020-12-28 03:11:15', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609125075;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609125075;}', 1, 1, '2020-12-28 03:11:48', '2020-12-28 03:11:48', 0, NULL),
(26, 'action_scheduler/migration_hook', 'complete', '2020-12-28 03:13:05', '2020-12-28 03:13:05', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609125185;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609125185;}', 1, 1, '2020-12-28 03:13:10', '2020-12-28 03:13:10', 0, NULL),
(27, 'action_scheduler/migration_hook', 'complete', '2020-12-28 03:16:36', '2020-12-28 03:16:36', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609125396;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609125396;}', 1, 1, '2020-12-28 03:16:49', '2020-12-28 03:16:49', 0, NULL),
(28, 'action_scheduler/migration_hook', 'complete', '2020-12-28 03:19:02', '2020-12-28 03:19:02', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609125542;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609125542;}', 1, 1, '2020-12-28 03:19:15', '2020-12-28 03:19:15', 0, NULL),
(29, 'action_scheduler/migration_hook', 'complete', '2020-12-28 03:25:24', '2020-12-28 03:25:24', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609125924;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609125924;}', 1, 1, '2020-12-28 03:25:51', '2020-12-28 03:25:51', 0, NULL),
(30, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-28 04:33:15', '2020-12-28 04:33:15', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609129995;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609129995;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-28 04:33:44', '2020-12-28 04:33:44', 0, NULL),
(31, 'action_scheduler/migration_hook', 'complete', '2020-12-28 03:37:28', '2020-12-28 03:37:28', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609126648;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609126648;}', 1, 1, '2020-12-28 03:38:07', '2020-12-28 03:38:07', 0, NULL),
(32, 'action_scheduler/migration_hook', 'complete', '2020-12-28 03:43:20', '2020-12-28 03:43:20', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609127000;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609127000;}', 1, 1, '2020-12-28 03:43:26', '2020-12-28 03:43:26', 0, NULL),
(33, 'action_scheduler/migration_hook', 'complete', '2020-12-28 04:03:39', '2020-12-28 04:03:39', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609128219;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609128219;}', 1, 1, '2020-12-28 04:03:45', '2020-12-28 04:03:45', 0, NULL),
(34, 'action_scheduler/migration_hook', 'complete', '2020-12-28 04:07:03', '2020-12-28 04:07:03', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609128423;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609128423;}', 1, 1, '2020-12-28 04:07:18', '2020-12-28 04:07:18', 0, NULL),
(35, 'action_scheduler/migration_hook', 'complete', '2020-12-28 04:10:47', '2020-12-28 04:10:47', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609128647;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609128647;}', 1, 1, '2020-12-28 04:11:02', '2020-12-28 04:11:02', 0, NULL),
(36, 'action_scheduler/migration_hook', 'complete', '2020-12-28 04:24:42', '2020-12-28 04:24:42', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609129482;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609129482;}', 1, 1, '2020-12-28 04:24:54', '2020-12-28 04:24:54', 0, NULL),
(37, 'action_scheduler/migration_hook', 'complete', '2020-12-28 04:26:29', '2020-12-28 04:26:29', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609129589;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609129589;}', 1, 1, '2020-12-28 04:26:43', '2020-12-28 04:26:43', 0, NULL),
(38, 'action_scheduler/migration_hook', 'complete', '2020-12-28 04:28:44', '2020-12-28 04:28:44', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609129724;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609129724;}', 1, 1, '2020-12-28 04:28:57', '2020-12-28 04:28:57', 0, NULL),
(39, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-28 05:33:44', '2020-12-28 05:33:44', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609133624;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609133624;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-28 05:34:42', '2020-12-28 05:34:42', 0, NULL),
(40, 'action_scheduler/migration_hook', 'complete', '2020-12-28 04:37:27', '2020-12-28 04:37:27', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609130247;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609130247;}', 1, 1, '2020-12-28 04:38:06', '2020-12-28 04:38:06', 0, NULL),
(41, 'action_scheduler/migration_hook', 'complete', '2020-12-28 04:39:06', '2020-12-28 04:39:06', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609130346;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609130346;}', 1, 1, '2020-12-28 04:40:05', '2020-12-28 04:40:05', 0, NULL),
(42, 'action_scheduler/migration_hook', 'complete', '2020-12-28 04:59:38', '2020-12-28 04:59:38', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609131578;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609131578;}', 1, 1, '2020-12-28 04:59:51', '2020-12-28 04:59:51', 0, NULL),
(43, 'action_scheduler/migration_hook', 'complete', '2020-12-28 05:28:56', '2020-12-28 05:28:56', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609133336;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609133336;}', 1, 1, '2020-12-28 05:29:08', '2020-12-28 05:29:08', 0, NULL),
(44, 'action_scheduler/migration_hook', 'complete', '2020-12-28 05:32:31', '2020-12-28 05:32:31', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609133551;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609133551;}', 1, 1, '2020-12-28 05:32:42', '2020-12-28 05:32:42', 0, NULL),
(45, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-28 06:34:42', '2020-12-28 06:34:42', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609137282;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609137282;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-28 15:40:56', '2020-12-28 15:40:56', 0, NULL),
(46, 'action_scheduler/migration_hook', 'complete', '2020-12-28 05:37:38', '2020-12-28 05:37:38', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609133858;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609133858;}', 1, 1, '2020-12-28 05:37:43', '2020-12-28 05:37:43', 0, NULL),
(47, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-28 16:40:57', '2020-12-28 16:40:57', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609173657;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609173657;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-28 16:41:40', '2020-12-28 16:41:40', 0, NULL),
(48, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-28 17:41:40', '2020-12-28 17:41:40', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609177300;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609177300;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-28 17:42:28', '2020-12-28 17:42:28', 0, NULL),
(49, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-28 18:42:28', '2020-12-28 18:42:28', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609180948;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609180948;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-28 23:15:21', '2020-12-28 23:15:21', 0, NULL),
(50, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-12-29 23:15:21', '2020-12-29 23:15:21', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609283721;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609283721;}', 0, 1, '2020-12-30 01:26:14', '2020-12-30 01:26:14', 0, NULL),
(51, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-29 00:15:21', '2020-12-29 00:15:21', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609200921;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609200921;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-29 21:38:27', '2020-12-29 21:38:27', 0, NULL),
(52, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-29 22:38:27', '2020-12-29 22:38:27', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609281507;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609281507;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-29 22:43:07', '2020-12-29 22:43:07', 0, NULL),
(53, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-29 23:43:07', '2020-12-29 23:43:07', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609285387;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609285387;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-30 01:26:15', '2020-12-30 01:26:15', 0, NULL),
(54, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-12-31 01:26:13', '2020-12-31 01:26:13', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609377973;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609377973;}', 0, 1, '2021-01-03 16:17:42', '2021-01-03 16:17:42', 0, NULL),
(55, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-30 02:26:15', '2020-12-30 02:26:15', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609295175;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609295175;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-30 02:26:32', '2020-12-30 02:26:32', 0, NULL),
(56, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-30 03:26:32', '2020-12-30 03:26:32', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609298792;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609298792;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-30 03:26:41', '2020-12-30 03:26:41', 0, NULL),
(57, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-30 04:26:41', '2020-12-30 04:26:41', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609302401;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609302401;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-30 04:27:43', '2020-12-30 04:27:43', 0, NULL),
(58, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-30 05:27:43', '2020-12-30 05:27:43', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609306063;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609306063;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2020-12-30 05:28:09', '2020-12-30 05:28:09', 0, NULL),
(59, 'action_scheduler/migration_hook', 'complete', '2020-12-30 04:49:12', '2020-12-30 04:49:12', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609303752;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609303752;}', 1, 1, '2020-12-30 04:49:24', '2020-12-30 04:49:24', 0, NULL),
(60, 'action_scheduler/migration_hook', 'complete', '2020-12-30 05:16:11', '2020-12-30 05:16:11', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609305371;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609305371;}', 1, 1, '2020-12-30 05:17:39', '2020-12-30 05:17:39', 0, NULL),
(61, 'wc_admin_unsnooze_admin_notes', 'complete', '2020-12-30 06:28:09', '2020-12-30 06:28:09', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609309689;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609309689;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2021-01-03 16:17:42', '2021-01-03 16:17:42', 0, NULL),
(62, 'woocommerce_update_marketplace_suggestions', 'complete', '2021-01-04 16:17:42', '2021-01-04 16:17:42', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609777062;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609777062;}', 0, 1, '2021-01-05 03:00:33', '2021-01-05 03:00:33', 0, NULL),
(63, 'wc_admin_unsnooze_admin_notes', 'complete', '2021-01-03 17:17:42', '2021-01-03 17:17:42', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609694262;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609694262;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2021-01-03 17:18:30', '2021-01-03 17:18:30', 0, NULL),
(64, 'wc_admin_unsnooze_admin_notes', 'complete', '2021-01-03 18:18:30', '2021-01-03 18:18:30', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609697910;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609697910;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2021-01-03 18:18:50', '2021-01-03 18:18:50', 0, NULL),
(65, 'action_scheduler/migration_hook', 'complete', '2021-01-03 17:19:46', '2021-01-03 17:19:46', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609694386;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609694386;}', 1, 1, '2021-01-03 17:55:56', '2021-01-03 17:55:56', 0, NULL),
(66, 'wc_admin_unsnooze_admin_notes', 'complete', '2021-01-03 19:18:50', '2021-01-03 19:18:50', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609701530;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609701530;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2021-01-03 19:19:14', '2021-01-03 19:19:14', 0, NULL),
(67, 'wc_admin_unsnooze_admin_notes', 'complete', '2021-01-03 20:19:14', '2021-01-03 20:19:14', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609705154;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609705154;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2021-01-05 03:00:36', '2021-01-05 03:00:36', 0, NULL),
(68, 'woocommerce_update_marketplace_suggestions', 'complete', '2021-01-06 03:00:33', '2021-01-06 03:00:33', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609902033;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609902033;}', 0, 1, '2021-01-07 02:43:56', '2021-01-07 02:43:56', 0, NULL),
(69, 'wc_admin_unsnooze_admin_notes', 'complete', '2021-01-05 04:00:36', '2021-01-05 04:00:36', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609819236;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609819236;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2021-01-05 04:01:38', '2021-01-05 04:01:38', 0, NULL),
(70, 'action_scheduler/migration_hook', 'complete', '2021-01-05 03:02:13', '2021-01-05 03:02:13', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609815733;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609815733;}', 1, 1, '2021-01-05 03:02:55', '2021-01-05 03:02:55', 0, NULL),
(71, 'action_scheduler/migration_hook', 'complete', '2021-01-05 03:17:19', '2021-01-05 03:17:19', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609816639;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609816639;}', 1, 1, '2021-01-05 03:17:57', '2021-01-05 03:17:57', 0, NULL),
(72, 'action_scheduler/migration_hook', 'complete', '2021-01-05 03:19:29', '2021-01-05 03:19:29', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609816769;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609816769;}', 1, 1, '2021-01-05 03:19:41', '2021-01-05 03:19:41', 0, NULL),
(73, 'action_scheduler/migration_hook', 'complete', '2021-01-05 03:21:06', '2021-01-05 03:21:06', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609816866;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609816866;}', 1, 1, '2021-01-05 03:21:25', '2021-01-05 03:21:25', 0, NULL),
(74, 'action_scheduler/migration_hook', 'complete', '2021-01-05 03:23:17', '2021-01-05 03:23:17', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609816997;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609816997;}', 1, 1, '2021-01-05 03:23:27', '2021-01-05 03:23:27', 0, NULL),
(75, 'action_scheduler/migration_hook', 'complete', '2021-01-05 03:24:31', '2021-01-05 03:24:31', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609817071;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609817071;}', 1, 1, '2021-01-05 03:25:35', '2021-01-05 03:25:35', 0, NULL),
(76, 'action_scheduler/migration_hook', 'complete', '2021-01-05 03:28:13', '2021-01-05 03:28:13', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609817293;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609817293;}', 1, 1, '2021-01-05 03:28:47', '2021-01-05 03:28:47', 0, NULL),
(77, 'action_scheduler/migration_hook', 'complete', '2021-01-05 03:29:54', '2021-01-05 03:29:54', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609817394;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609817394;}', 1, 1, '2021-01-05 03:30:46', '2021-01-05 03:30:46', 0, NULL),
(78, 'action_scheduler/migration_hook', 'complete', '2021-01-05 03:32:56', '2021-01-05 03:32:56', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609817576;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609817576;}', 1, 1, '2021-01-05 03:33:06', '2021-01-05 03:33:06', 0, NULL),
(79, 'action_scheduler/migration_hook', 'complete', '2021-01-05 03:34:09', '2021-01-05 03:34:09', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609817649;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609817649;}', 1, 1, '2021-01-05 03:34:19', '2021-01-05 03:34:19', 0, NULL),
(80, 'action_scheduler/migration_hook', 'complete', '2021-01-05 03:36:32', '2021-01-05 03:36:32', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609817792;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609817792;}', 1, 1, '2021-01-05 03:36:37', '2021-01-05 03:36:37', 0, NULL),
(81, 'action_scheduler/migration_hook', 'complete', '2021-01-05 03:38:23', '2021-01-05 03:38:23', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1609817903;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1609817903;}', 1, 1, '2021-01-05 03:38:48', '2021-01-05 03:38:48', 0, NULL),
(82, 'wc_admin_unsnooze_admin_notes', 'complete', '2021-01-05 05:01:38', '2021-01-05 05:01:38', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609822898;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609822898;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2021-01-07 02:43:56', '2021-01-07 02:43:56', 0, NULL),
(83, 'woocommerce_update_marketplace_suggestions', 'pending', '2021-01-08 02:43:56', '2021-01-08 02:43:56', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1610073836;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1610073836;}', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(84, 'wc_admin_unsnooze_admin_notes', 'complete', '2021-01-07 03:43:56', '2021-01-07 03:43:56', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609991036;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609991036;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 1, '2021-01-07 03:44:23', '2021-01-07 03:44:23', 0, NULL),
(85, 'wc_admin_unsnooze_admin_notes', 'pending', '2021-01-07 04:44:23', '2021-01-07 04:44:23', '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1609994663;s:18:\"\0*\0first_timestamp\";i:1606829254;s:13:\"\0*\0recurrence\";i:3600;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1609994663;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:3600;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wc-admin-notes'),
(3, 'wc-admin-data');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 6, 'action created', '2020-12-01 13:20:11', '2020-12-01 13:20:11'),
(2, 7, 'action created', '2020-12-01 13:27:34', '2020-12-01 13:27:34'),
(3, 6, 'action started via WP Cron', '2020-12-27 20:13:13', '2020-12-27 20:13:13'),
(4, 6, 'action complete via WP Cron', '2020-12-27 20:13:13', '2020-12-27 20:13:13'),
(5, 7, 'action started via WP Cron', '2020-12-27 20:13:13', '2020-12-27 20:13:13'),
(6, 7, 'action complete via WP Cron', '2020-12-27 20:13:13', '2020-12-27 20:13:13'),
(7, 8, 'action created', '2020-12-27 20:13:13', '2020-12-27 20:13:13'),
(8, 8, 'action started via WP Cron', '2020-12-27 21:13:46', '2020-12-27 21:13:46'),
(9, 8, 'action complete via WP Cron', '2020-12-27 21:13:46', '2020-12-27 21:13:46'),
(10, 9, 'action created', '2020-12-27 21:13:46', '2020-12-27 21:13:46'),
(11, 10, 'action created', '2020-12-27 21:27:36', '2020-12-27 21:27:36'),
(12, 10, 'action started via WP Cron', '2020-12-27 21:28:48', '2020-12-27 21:28:48'),
(13, 10, 'action complete via WP Cron', '2020-12-27 21:28:49', '2020-12-27 21:28:49'),
(14, 11, 'action created', '2020-12-27 21:58:22', '2020-12-27 21:58:22'),
(15, 11, 'action started via Async Request', '2020-12-27 21:58:33', '2020-12-27 21:58:33'),
(16, 12, 'action created', '2020-12-27 21:58:33', '2020-12-27 21:58:33'),
(17, 11, 'action complete via Async Request', '2020-12-27 21:58:33', '2020-12-27 21:58:33'),
(18, 13, 'action created', '2020-12-27 22:04:30', '2020-12-27 22:04:30'),
(19, 14, 'action created', '2020-12-27 22:04:30', '2020-12-27 22:04:30'),
(20, 13, 'action started via WP Cron', '2020-12-27 22:04:42', '2020-12-27 22:04:42'),
(21, 13, 'action complete via WP Cron', '2020-12-27 22:04:42', '2020-12-27 22:04:42'),
(22, 14, 'action started via WP Cron', '2020-12-27 22:04:42', '2020-12-27 22:04:42'),
(23, 14, 'action complete via WP Cron', '2020-12-27 22:04:43', '2020-12-27 22:04:43'),
(24, 15, 'action created', '2020-12-27 22:06:32', '2020-12-27 22:06:32'),
(25, 16, 'action created', '2020-12-27 22:06:34', '2020-12-27 22:06:34'),
(26, 15, 'action started via WP Cron', '2020-12-27 22:06:43', '2020-12-27 22:06:43'),
(27, 15, 'action complete via WP Cron', '2020-12-27 22:06:43', '2020-12-27 22:06:43'),
(28, 16, 'action started via WP Cron', '2020-12-27 22:06:43', '2020-12-27 22:06:43'),
(29, 16, 'action complete via WP Cron', '2020-12-27 22:06:44', '2020-12-27 22:06:44'),
(30, 9, 'action started via WP Cron', '2020-12-27 22:15:04', '2020-12-27 22:15:04'),
(31, 9, 'action complete via WP Cron', '2020-12-27 22:15:04', '2020-12-27 22:15:04'),
(32, 17, 'action created', '2020-12-27 22:15:05', '2020-12-27 22:15:05'),
(33, 17, 'action started via WP Cron', '2020-12-27 23:16:06', '2020-12-27 23:16:06'),
(34, 17, 'action complete via WP Cron', '2020-12-27 23:16:07', '2020-12-27 23:16:07'),
(35, 18, 'action created', '2020-12-27 23:16:07', '2020-12-27 23:16:07'),
(36, 18, 'action started via WP Cron', '2020-12-28 01:32:48', '2020-12-28 01:32:48'),
(37, 18, 'action complete via WP Cron', '2020-12-28 01:32:48', '2020-12-28 01:32:48'),
(38, 19, 'action created', '2020-12-28 01:32:48', '2020-12-28 01:32:48'),
(39, 20, 'action created', '2020-12-28 02:16:39', '2020-12-28 02:16:39'),
(40, 20, 'action started via WP Cron', '2020-12-28 02:17:53', '2020-12-28 02:17:53'),
(41, 20, 'action complete via WP Cron', '2020-12-28 02:17:53', '2020-12-28 02:17:53'),
(42, 21, 'action created', '2020-12-28 02:28:55', '2020-12-28 02:28:55'),
(43, 21, 'action started via Async Request', '2020-12-28 02:30:00', '2020-12-28 02:30:00'),
(44, 21, 'action complete via Async Request', '2020-12-28 02:30:00', '2020-12-28 02:30:00'),
(45, 19, 'action started via WP Cron', '2020-12-28 02:33:05', '2020-12-28 02:33:05'),
(46, 19, 'action complete via WP Cron', '2020-12-28 02:33:05', '2020-12-28 02:33:05'),
(47, 22, 'action created', '2020-12-28 02:33:05', '2020-12-28 02:33:05'),
(48, 23, 'action created', '2020-12-28 02:44:22', '2020-12-28 02:44:22'),
(49, 23, 'action started via WP Cron', '2020-12-28 02:45:32', '2020-12-28 02:45:32'),
(50, 23, 'action complete via WP Cron', '2020-12-28 02:45:34', '2020-12-28 02:45:34'),
(51, 24, 'action created', '2020-12-28 03:08:50', '2020-12-28 03:08:50'),
(52, 24, 'action started via WP Cron', '2020-12-28 03:10:02', '2020-12-28 03:10:02'),
(53, 24, 'action complete via WP Cron', '2020-12-28 03:10:03', '2020-12-28 03:10:03'),
(54, 25, 'action created', '2020-12-28 03:10:15', '2020-12-28 03:10:15'),
(55, 25, 'action started via WP Cron', '2020-12-28 03:11:47', '2020-12-28 03:11:47'),
(56, 25, 'action complete via WP Cron', '2020-12-28 03:11:48', '2020-12-28 03:11:48'),
(57, 26, 'action created', '2020-12-28 03:12:05', '2020-12-28 03:12:05'),
(58, 26, 'action started via WP Cron', '2020-12-28 03:13:10', '2020-12-28 03:13:10'),
(59, 26, 'action complete via WP Cron', '2020-12-28 03:13:10', '2020-12-28 03:13:10'),
(60, 27, 'action created', '2020-12-28 03:15:36', '2020-12-28 03:15:36'),
(61, 27, 'action started via WP Cron', '2020-12-28 03:16:48', '2020-12-28 03:16:48'),
(62, 27, 'action complete via WP Cron', '2020-12-28 03:16:49', '2020-12-28 03:16:49'),
(63, 28, 'action created', '2020-12-28 03:18:02', '2020-12-28 03:18:02'),
(64, 28, 'action started via Async Request', '2020-12-28 03:19:14', '2020-12-28 03:19:14'),
(65, 28, 'action complete via Async Request', '2020-12-28 03:19:15', '2020-12-28 03:19:15'),
(66, 29, 'action created', '2020-12-28 03:24:24', '2020-12-28 03:24:24'),
(67, 29, 'action started via WP Cron', '2020-12-28 03:25:50', '2020-12-28 03:25:50'),
(68, 29, 'action complete via WP Cron', '2020-12-28 03:25:50', '2020-12-28 03:25:50'),
(69, 22, 'action started via WP Cron', '2020-12-28 03:33:14', '2020-12-28 03:33:14'),
(70, 22, 'action complete via WP Cron', '2020-12-28 03:33:15', '2020-12-28 03:33:15'),
(71, 30, 'action created', '2020-12-28 03:33:15', '2020-12-28 03:33:15'),
(72, 31, 'action created', '2020-12-28 03:36:28', '2020-12-28 03:36:28'),
(73, 31, 'action started via WP Cron', '2020-12-28 03:38:06', '2020-12-28 03:38:06'),
(74, 31, 'action complete via WP Cron', '2020-12-28 03:38:07', '2020-12-28 03:38:07'),
(75, 32, 'action created', '2020-12-28 03:42:21', '2020-12-28 03:42:21'),
(76, 32, 'action started via WP Cron', '2020-12-28 03:43:25', '2020-12-28 03:43:25'),
(77, 32, 'action complete via WP Cron', '2020-12-28 03:43:26', '2020-12-28 03:43:26'),
(78, 33, 'action created', '2020-12-28 04:02:39', '2020-12-28 04:02:39'),
(79, 33, 'action started via WP Cron', '2020-12-28 04:03:45', '2020-12-28 04:03:45'),
(80, 33, 'action complete via WP Cron', '2020-12-28 04:03:45', '2020-12-28 04:03:45'),
(81, 34, 'action created', '2020-12-28 04:06:04', '2020-12-28 04:06:04'),
(82, 34, 'action started via Async Request', '2020-12-28 04:07:16', '2020-12-28 04:07:16'),
(83, 34, 'action complete via Async Request', '2020-12-28 04:07:18', '2020-12-28 04:07:18'),
(84, 35, 'action created', '2020-12-28 04:09:47', '2020-12-28 04:09:47'),
(85, 35, 'action started via WP Cron', '2020-12-28 04:11:02', '2020-12-28 04:11:02'),
(86, 35, 'action complete via WP Cron', '2020-12-28 04:11:02', '2020-12-28 04:11:02'),
(87, 36, 'action created', '2020-12-28 04:23:42', '2020-12-28 04:23:42'),
(88, 36, 'action started via WP Cron', '2020-12-28 04:24:54', '2020-12-28 04:24:54'),
(89, 36, 'action complete via WP Cron', '2020-12-28 04:24:54', '2020-12-28 04:24:54'),
(90, 37, 'action created', '2020-12-28 04:25:29', '2020-12-28 04:25:29'),
(91, 37, 'action started via WP Cron', '2020-12-28 04:26:43', '2020-12-28 04:26:43'),
(92, 37, 'action complete via WP Cron', '2020-12-28 04:26:43', '2020-12-28 04:26:43'),
(93, 38, 'action created', '2020-12-28 04:27:44', '2020-12-28 04:27:44'),
(94, 38, 'action started via WP Cron', '2020-12-28 04:28:57', '2020-12-28 04:28:57'),
(95, 38, 'action complete via WP Cron', '2020-12-28 04:28:57', '2020-12-28 04:28:57'),
(96, 30, 'action started via WP Cron', '2020-12-28 04:33:43', '2020-12-28 04:33:43'),
(97, 30, 'action complete via WP Cron', '2020-12-28 04:33:44', '2020-12-28 04:33:44'),
(98, 39, 'action created', '2020-12-28 04:33:44', '2020-12-28 04:33:44'),
(99, 40, 'action created', '2020-12-28 04:36:27', '2020-12-28 04:36:27'),
(100, 40, 'action started via WP Cron', '2020-12-28 04:38:05', '2020-12-28 04:38:05'),
(101, 40, 'action complete via WP Cron', '2020-12-28 04:38:06', '2020-12-28 04:38:06'),
(102, 41, 'action created', '2020-12-28 04:38:06', '2020-12-28 04:38:06'),
(103, 41, 'action started via WP Cron', '2020-12-28 04:40:05', '2020-12-28 04:40:05'),
(104, 41, 'action complete via WP Cron', '2020-12-28 04:40:05', '2020-12-28 04:40:05'),
(105, 42, 'action created', '2020-12-28 04:58:38', '2020-12-28 04:58:38'),
(106, 42, 'action started via WP Cron', '2020-12-28 04:59:51', '2020-12-28 04:59:51'),
(107, 42, 'action complete via WP Cron', '2020-12-28 04:59:51', '2020-12-28 04:59:51'),
(108, 43, 'action created', '2020-12-28 05:27:56', '2020-12-28 05:27:56'),
(109, 43, 'action started via WP Cron', '2020-12-28 05:29:08', '2020-12-28 05:29:08'),
(110, 43, 'action complete via WP Cron', '2020-12-28 05:29:08', '2020-12-28 05:29:08'),
(111, 44, 'action created', '2020-12-28 05:31:31', '2020-12-28 05:31:31'),
(112, 44, 'action started via WP Cron', '2020-12-28 05:32:42', '2020-12-28 05:32:42'),
(113, 44, 'action complete via WP Cron', '2020-12-28 05:32:42', '2020-12-28 05:32:42'),
(114, 39, 'action started via WP Cron', '2020-12-28 05:34:42', '2020-12-28 05:34:42'),
(115, 39, 'action complete via WP Cron', '2020-12-28 05:34:42', '2020-12-28 05:34:42'),
(116, 45, 'action created', '2020-12-28 05:34:42', '2020-12-28 05:34:42'),
(117, 46, 'action created', '2020-12-28 05:36:38', '2020-12-28 05:36:38'),
(118, 46, 'action started via Async Request', '2020-12-28 05:37:42', '2020-12-28 05:37:42'),
(119, 46, 'action complete via Async Request', '2020-12-28 05:37:42', '2020-12-28 05:37:42'),
(120, 45, 'action started via WP Cron', '2020-12-28 15:40:56', '2020-12-28 15:40:56'),
(121, 45, 'action complete via WP Cron', '2020-12-28 15:40:56', '2020-12-28 15:40:56'),
(122, 47, 'action created', '2020-12-28 15:40:57', '2020-12-28 15:40:57'),
(123, 47, 'action started via WP Cron', '2020-12-28 16:41:39', '2020-12-28 16:41:39'),
(124, 47, 'action complete via WP Cron', '2020-12-28 16:41:39', '2020-12-28 16:41:39'),
(125, 48, 'action created', '2020-12-28 16:41:40', '2020-12-28 16:41:40'),
(126, 48, 'action started via WP Cron', '2020-12-28 17:42:28', '2020-12-28 17:42:28'),
(127, 48, 'action complete via WP Cron', '2020-12-28 17:42:28', '2020-12-28 17:42:28'),
(128, 49, 'action created', '2020-12-28 17:42:28', '2020-12-28 17:42:28'),
(129, 12, 'action started via WP Cron', '2020-12-28 23:15:20', '2020-12-28 23:15:20'),
(130, 50, 'action created', '2020-12-28 23:15:21', '2020-12-28 23:15:21'),
(131, 12, 'action complete via WP Cron', '2020-12-28 23:15:21', '2020-12-28 23:15:21'),
(132, 49, 'action started via WP Cron', '2020-12-28 23:15:21', '2020-12-28 23:15:21'),
(133, 49, 'action complete via WP Cron', '2020-12-28 23:15:21', '2020-12-28 23:15:21'),
(134, 51, 'action created', '2020-12-28 23:15:21', '2020-12-28 23:15:21'),
(135, 51, 'action started via WP Cron', '2020-12-29 21:38:27', '2020-12-29 21:38:27'),
(136, 51, 'action complete via WP Cron', '2020-12-29 21:38:27', '2020-12-29 21:38:27'),
(137, 52, 'action created', '2020-12-29 21:38:27', '2020-12-29 21:38:27'),
(138, 52, 'action started via WP Cron', '2020-12-29 22:43:06', '2020-12-29 22:43:06'),
(139, 52, 'action complete via WP Cron', '2020-12-29 22:43:06', '2020-12-29 22:43:06'),
(140, 53, 'action created', '2020-12-29 22:43:07', '2020-12-29 22:43:07'),
(141, 50, 'action started via WP Cron', '2020-12-30 01:26:13', '2020-12-30 01:26:13'),
(142, 54, 'action created', '2020-12-30 01:26:14', '2020-12-30 01:26:14'),
(143, 50, 'action complete via WP Cron', '2020-12-30 01:26:14', '2020-12-30 01:26:14'),
(144, 53, 'action started via WP Cron', '2020-12-30 01:26:14', '2020-12-30 01:26:14'),
(145, 53, 'action complete via WP Cron', '2020-12-30 01:26:15', '2020-12-30 01:26:15'),
(146, 55, 'action created', '2020-12-30 01:26:15', '2020-12-30 01:26:15'),
(147, 55, 'action started via WP Cron', '2020-12-30 02:26:31', '2020-12-30 02:26:31'),
(148, 55, 'action complete via WP Cron', '2020-12-30 02:26:31', '2020-12-30 02:26:31'),
(149, 56, 'action created', '2020-12-30 02:26:32', '2020-12-30 02:26:32'),
(150, 56, 'action started via WP Cron', '2020-12-30 03:26:41', '2020-12-30 03:26:41'),
(151, 56, 'action complete via WP Cron', '2020-12-30 03:26:41', '2020-12-30 03:26:41'),
(152, 57, 'action created', '2020-12-30 03:26:41', '2020-12-30 03:26:41'),
(153, 57, 'action started via Async Request', '2020-12-30 04:27:42', '2020-12-30 04:27:42'),
(154, 57, 'action complete via Async Request', '2020-12-30 04:27:43', '2020-12-30 04:27:43'),
(155, 58, 'action created', '2020-12-30 04:27:43', '2020-12-30 04:27:43'),
(156, 59, 'action created', '2020-12-30 04:48:12', '2020-12-30 04:48:12'),
(157, 59, 'action started via Async Request', '2020-12-30 04:49:24', '2020-12-30 04:49:24'),
(158, 59, 'action complete via Async Request', '2020-12-30 04:49:24', '2020-12-30 04:49:24'),
(159, 60, 'action created', '2020-12-30 05:15:11', '2020-12-30 05:15:11'),
(160, 60, 'action started via WP Cron', '2020-12-30 05:17:38', '2020-12-30 05:17:38'),
(161, 60, 'action complete via WP Cron', '2020-12-30 05:17:39', '2020-12-30 05:17:39'),
(162, 58, 'action started via WP Cron', '2020-12-30 05:28:08', '2020-12-30 05:28:08'),
(163, 58, 'action complete via WP Cron', '2020-12-30 05:28:09', '2020-12-30 05:28:09'),
(164, 61, 'action created', '2020-12-30 05:28:09', '2020-12-30 05:28:09'),
(165, 54, 'action started via WP Cron', '2021-01-03 16:17:41', '2021-01-03 16:17:41'),
(166, 62, 'action created', '2021-01-03 16:17:42', '2021-01-03 16:17:42'),
(167, 54, 'action complete via WP Cron', '2021-01-03 16:17:42', '2021-01-03 16:17:42'),
(168, 61, 'action started via WP Cron', '2021-01-03 16:17:42', '2021-01-03 16:17:42'),
(169, 61, 'action complete via WP Cron', '2021-01-03 16:17:42', '2021-01-03 16:17:42'),
(170, 63, 'action created', '2021-01-03 16:17:42', '2021-01-03 16:17:42'),
(171, 63, 'action started via WP Cron', '2021-01-03 17:18:30', '2021-01-03 17:18:30'),
(172, 63, 'action complete via WP Cron', '2021-01-03 17:18:30', '2021-01-03 17:18:30'),
(173, 64, 'action created', '2021-01-03 17:18:30', '2021-01-03 17:18:30'),
(174, 65, 'action created', '2021-01-03 17:18:46', '2021-01-03 17:18:46'),
(175, 65, 'action started via WP Cron', '2021-01-03 17:55:55', '2021-01-03 17:55:55'),
(176, 65, 'action complete via WP Cron', '2021-01-03 17:55:56', '2021-01-03 17:55:56'),
(177, 64, 'action started via WP Cron', '2021-01-03 18:18:50', '2021-01-03 18:18:50'),
(178, 64, 'action complete via WP Cron', '2021-01-03 18:18:50', '2021-01-03 18:18:50'),
(179, 66, 'action created', '2021-01-03 18:18:50', '2021-01-03 18:18:50'),
(180, 66, 'action started via WP Cron', '2021-01-03 19:19:13', '2021-01-03 19:19:13'),
(181, 66, 'action complete via WP Cron', '2021-01-03 19:19:14', '2021-01-03 19:19:14'),
(182, 67, 'action created', '2021-01-03 19:19:14', '2021-01-03 19:19:14'),
(183, 62, 'action started via WP Cron', '2021-01-05 03:00:33', '2021-01-05 03:00:33'),
(184, 68, 'action created', '2021-01-05 03:00:33', '2021-01-05 03:00:33'),
(185, 62, 'action complete via WP Cron', '2021-01-05 03:00:33', '2021-01-05 03:00:33'),
(186, 67, 'action started via Async Request', '2021-01-05 03:00:36', '2021-01-05 03:00:36'),
(187, 67, 'action complete via Async Request', '2021-01-05 03:00:36', '2021-01-05 03:00:36'),
(188, 69, 'action created', '2021-01-05 03:00:37', '2021-01-05 03:00:37'),
(189, 70, 'action created', '2021-01-05 03:01:13', '2021-01-05 03:01:13'),
(190, 70, 'action started via WP Cron', '2021-01-05 03:02:55', '2021-01-05 03:02:55'),
(191, 70, 'action complete via WP Cron', '2021-01-05 03:02:55', '2021-01-05 03:02:55'),
(192, 71, 'action created', '2021-01-05 03:16:19', '2021-01-05 03:16:19'),
(193, 71, 'action started via WP Cron', '2021-01-05 03:17:56', '2021-01-05 03:17:56'),
(194, 71, 'action complete via WP Cron', '2021-01-05 03:17:57', '2021-01-05 03:17:57'),
(195, 72, 'action created', '2021-01-05 03:18:29', '2021-01-05 03:18:29'),
(196, 72, 'action started via WP Cron', '2021-01-05 03:19:41', '2021-01-05 03:19:41'),
(197, 72, 'action complete via WP Cron', '2021-01-05 03:19:41', '2021-01-05 03:19:41'),
(198, 73, 'action created', '2021-01-05 03:20:06', '2021-01-05 03:20:06'),
(199, 73, 'action started via WP Cron', '2021-01-05 03:21:25', '2021-01-05 03:21:25'),
(200, 73, 'action complete via WP Cron', '2021-01-05 03:21:25', '2021-01-05 03:21:25'),
(201, 74, 'action created', '2021-01-05 03:22:17', '2021-01-05 03:22:17'),
(202, 74, 'action started via WP Cron', '2021-01-05 03:23:27', '2021-01-05 03:23:27'),
(203, 74, 'action complete via WP Cron', '2021-01-05 03:23:27', '2021-01-05 03:23:27'),
(204, 75, 'action created', '2021-01-05 03:23:31', '2021-01-05 03:23:31'),
(205, 75, 'action started via WP Cron', '2021-01-05 03:25:35', '2021-01-05 03:25:35'),
(206, 75, 'action complete via WP Cron', '2021-01-05 03:25:35', '2021-01-05 03:25:35'),
(207, 76, 'action created', '2021-01-05 03:27:13', '2021-01-05 03:27:13'),
(208, 76, 'action started via WP Cron', '2021-01-05 03:28:47', '2021-01-05 03:28:47'),
(209, 76, 'action complete via WP Cron', '2021-01-05 03:28:47', '2021-01-05 03:28:47'),
(210, 77, 'action created', '2021-01-05 03:28:54', '2021-01-05 03:28:54'),
(211, 77, 'action started via WP Cron', '2021-01-05 03:30:45', '2021-01-05 03:30:45'),
(212, 77, 'action complete via WP Cron', '2021-01-05 03:30:46', '2021-01-05 03:30:46'),
(213, 78, 'action created', '2021-01-05 03:31:56', '2021-01-05 03:31:56'),
(214, 78, 'action started via WP Cron', '2021-01-05 03:33:06', '2021-01-05 03:33:06'),
(215, 78, 'action complete via WP Cron', '2021-01-05 03:33:06', '2021-01-05 03:33:06'),
(216, 79, 'action created', '2021-01-05 03:33:09', '2021-01-05 03:33:09'),
(217, 79, 'action started via WP Cron', '2021-01-05 03:34:18', '2021-01-05 03:34:18'),
(218, 79, 'action complete via WP Cron', '2021-01-05 03:34:19', '2021-01-05 03:34:19'),
(219, 80, 'action created', '2021-01-05 03:35:32', '2021-01-05 03:35:32'),
(220, 80, 'action started via WP Cron', '2021-01-05 03:36:37', '2021-01-05 03:36:37'),
(221, 80, 'action complete via WP Cron', '2021-01-05 03:36:37', '2021-01-05 03:36:37'),
(222, 81, 'action created', '2021-01-05 03:37:23', '2021-01-05 03:37:23'),
(223, 81, 'action started via WP Cron', '2021-01-05 03:38:48', '2021-01-05 03:38:48'),
(224, 81, 'action complete via WP Cron', '2021-01-05 03:38:48', '2021-01-05 03:38:48'),
(225, 69, 'action started via WP Cron', '2021-01-05 04:01:38', '2021-01-05 04:01:38'),
(226, 69, 'action complete via WP Cron', '2021-01-05 04:01:38', '2021-01-05 04:01:38'),
(227, 82, 'action created', '2021-01-05 04:01:39', '2021-01-05 04:01:39'),
(228, 68, 'action started via WP Cron', '2021-01-07 02:43:56', '2021-01-07 02:43:56'),
(229, 83, 'action created', '2021-01-07 02:43:56', '2021-01-07 02:43:56'),
(230, 68, 'action complete via WP Cron', '2021-01-07 02:43:56', '2021-01-07 02:43:56'),
(231, 82, 'action started via WP Cron', '2021-01-07 02:43:56', '2021-01-07 02:43:56'),
(232, 82, 'action complete via WP Cron', '2021-01-07 02:43:56', '2021-01-07 02:43:56'),
(233, 84, 'action created', '2021-01-07 02:43:56', '2021-01-07 02:43:56'),
(234, 84, 'action started via WP Cron', '2021-01-07 03:44:23', '2021-01-07 03:44:23'),
(235, 84, 'action complete via WP Cron', '2021-01-07 03:44:23', '2021-01-07 03:44:23'),
(236, 85, 'action created', '2021-01-07 03:44:23', '2021-01-07 03:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `wp_aspirante`
--

CREATE TABLE `wp_aspirante` (
  `id` mediumint(9) NOT NULL,
  `nombre` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel_html` smallint(4) NOT NULL,
  `nivel_css` smallint(4) NOT NULL,
  `nivel_js` smallint(4) NOT NULL,
  `aceptacion` smallint(4) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_aspirante`
--

INSERT INTO `wp_aspirante` (`id`, `nombre`, `correo`, `nivel_html`, `nivel_css`, `nivel_js`, `aceptacion`, `created_at`) VALUES
(1, 'adniel', 'a@a.com', 2, 1, 1, 1, '2020-12-28 02:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-12-01 13:17:47', '2020-12-01 13:17:47', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(2, 44, 'WooCommerce', '', '', '', '2020-12-27 22:04:34', '2020-12-27 22:04:34', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 44, 'admin', 'aqmunoz@gmail.com', '', '', '2020-12-27 22:06:33', '2020-12-27 22:06:33', 'Order status changed from On hold to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `type` longtext,
  `active` tinyint(1) DEFAULT '1',
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `label` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`, `label`) VALUES
(1, '', '', 'save', 1, 1, '2020-12-27 22:47:44', '2020-12-27 22:47:44', 'Store Submission'),
(2, '', '', 'email', 1, 1, '2020-12-27 22:47:46', '2020-12-27 22:47:45', 'Email Confirmation'),
(3, '', '', 'email', 1, 1, '2020-12-27 22:47:47', '2020-12-27 22:47:47', 'Email Notification'),
(4, '', '', 'successmessage', 1, 1, '2020-12-27 22:47:48', '2020-12-27 22:47:48', 'Success Message'),
(5, '', '', 'save', 0, 2, '2018-04-17 00:55:48', NULL, 'Store Submission'),
(6, '', '', 'successmessage', 1, 2, '2018-04-17 00:55:48', NULL, 'Success Message'),
(7, '', '', 'email', 0, 2, '2018-04-17 00:55:48', NULL, 'Admin Email');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'objectType', 'Action', 'objectType', 'Action'),
(2, 1, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(3, 1, 'editActive', '', 'editActive', ''),
(4, 1, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(5, 1, 'payment_gateways', '', 'payment_gateways', ''),
(6, 1, 'payment_total', '', 'payment_total', ''),
(7, 1, 'tag', '', 'tag', ''),
(8, 1, 'to', '', 'to', ''),
(9, 1, 'email_subject', '', 'email_subject', ''),
(10, 1, 'email_message', '', 'email_message', ''),
(11, 1, 'from_name', '', 'from_name', ''),
(12, 1, 'from_address', '', 'from_address', ''),
(13, 1, 'reply_to', '', 'reply_to', ''),
(14, 1, 'email_format', 'html', 'email_format', 'html'),
(15, 1, 'cc', '', 'cc', ''),
(16, 1, 'bcc', '', 'bcc', ''),
(17, 1, 'attach_csv', '', 'attach_csv', ''),
(18, 1, 'redirect_url', '', 'redirect_url', ''),
(19, 1, 'email_message_plain', '', 'email_message_plain', ''),
(20, 2, 'to', '{field:email}', 'to', '{field:email}'),
(21, 2, 'subject', 'This is an email action.', 'subject', 'This is an email action.'),
(22, 2, 'message', 'Hello, Ninja Forms!', 'message', 'Hello, Ninja Forms!'),
(23, 2, 'objectType', 'Action', 'objectType', 'Action'),
(24, 2, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(25, 2, 'editActive', '', 'editActive', ''),
(26, 2, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(27, 2, 'payment_gateways', '', 'payment_gateways', ''),
(28, 2, 'payment_total', '', 'payment_total', ''),
(29, 2, 'tag', '', 'tag', ''),
(30, 2, 'email_subject', 'Submission Confirmation ', 'email_subject', 'Submission Confirmation '),
(31, 2, 'email_message', '<p>{all_fields_table}<br></p>', 'email_message', '<p>{all_fields_table}<br></p>'),
(32, 2, 'from_name', '', 'from_name', ''),
(33, 2, 'from_address', '', 'from_address', ''),
(34, 2, 'reply_to', '', 'reply_to', ''),
(35, 2, 'email_format', 'html', 'email_format', 'html'),
(36, 2, 'cc', '', 'cc', ''),
(37, 2, 'bcc', '', 'bcc', ''),
(38, 2, 'attach_csv', '', 'attach_csv', ''),
(39, 2, 'email_message_plain', '', 'email_message_plain', ''),
(40, 3, 'objectType', 'Action', 'objectType', 'Action'),
(41, 3, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(42, 3, 'editActive', '', 'editActive', ''),
(43, 3, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(44, 3, 'payment_gateways', '', 'payment_gateways', ''),
(45, 3, 'payment_total', '', 'payment_total', ''),
(46, 3, 'tag', '', 'tag', ''),
(47, 3, 'to', '{system:admin_email}', 'to', '{system:admin_email}'),
(48, 3, 'email_subject', 'New message from {field:name}', 'email_subject', 'New message from {field:name}'),
(49, 3, 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>', 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>'),
(50, 3, 'from_name', '', 'from_name', ''),
(51, 3, 'from_address', '', 'from_address', ''),
(52, 3, 'reply_to', '{field:email}', 'reply_to', '{field:email}'),
(53, 3, 'email_format', 'html', 'email_format', 'html'),
(54, 3, 'cc', '', 'cc', ''),
(55, 3, 'bcc', '', 'bcc', ''),
(56, 3, 'attach_csv', '0', 'attach_csv', '0'),
(57, 3, 'email_message_plain', '', 'email_message_plain', ''),
(58, 4, 'message', 'Thank you {field:name} for filling out my form!', 'message', 'Thank you {field:name} for filling out my form!'),
(59, 4, 'objectType', 'Action', 'objectType', 'Action'),
(60, 4, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(61, 4, 'editActive', '', 'editActive', ''),
(62, 4, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(63, 4, 'payment_gateways', '', 'payment_gateways', ''),
(64, 4, 'payment_total', '', 'payment_total', ''),
(65, 4, 'tag', '', 'tag', ''),
(66, 4, 'to', '', 'to', ''),
(67, 4, 'email_subject', '', 'email_subject', ''),
(68, 4, 'email_message', '', 'email_message', ''),
(69, 4, 'from_name', '', 'from_name', ''),
(70, 4, 'from_address', '', 'from_address', ''),
(71, 4, 'reply_to', '', 'reply_to', ''),
(72, 4, 'email_format', 'html', 'email_format', 'html'),
(73, 4, 'cc', '', 'cc', ''),
(74, 4, 'bcc', '', 'bcc', ''),
(75, 4, 'attach_csv', '', 'attach_csv', ''),
(76, 4, 'redirect_url', '', 'redirect_url', ''),
(77, 4, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>', 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(78, 4, 'email_message_plain', '', 'email_message_plain', ''),
(79, 5, 'title', '', 'title', ''),
(80, 5, 'key', '', 'key', ''),
(81, 5, 'type', 'save', 'type', 'save'),
(82, 5, 'active', '1', 'active', '1'),
(83, 5, 'created_at', '2018-04-16 19:55:48', 'created_at', '2018-04-16 19:55:48'),
(84, 5, 'objectType', 'Action', 'objectType', 'Action'),
(85, 5, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(86, 5, 'editActive', '', 'editActive', ''),
(87, 5, 'label', 'Store Submission', 'label', 'Store Submission'),
(88, 5, 'order', '3', 'order', '3'),
(89, 5, 'payment_gateways', '', 'payment_gateways', ''),
(90, 5, 'payment_total', '0', 'payment_total', '0'),
(91, 5, 'tag', '', 'tag', ''),
(92, 5, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(93, 5, 'reply_to', '', 'reply_to', ''),
(94, 5, 'email_subject', 'Ninja Forms Submission', 'email_subject', 'Ninja Forms Submission'),
(95, 5, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(96, 5, 'email_message_plain', '', 'email_message_plain', ''),
(97, 5, 'from_name', '', 'from_name', ''),
(98, 5, 'from_address', '', 'from_address', ''),
(99, 5, 'email_format', 'html', 'email_format', 'html'),
(100, 5, 'cc', '', 'cc', ''),
(101, 5, 'bcc', '', 'bcc', ''),
(102, 5, 'redirect_url', '', 'redirect_url', ''),
(103, 5, 'parent_id', '2', 'parent_id', '2'),
(104, 6, 'title', '', 'title', ''),
(105, 6, 'key', '', 'key', ''),
(106, 6, 'type', 'successmessage', 'type', 'successmessage'),
(107, 6, 'active', '1', 'active', '1'),
(108, 6, 'created_at', '2018-04-16 19:55:48', 'created_at', '2018-04-16 19:55:48'),
(109, 6, 'objectType', 'Action', 'objectType', 'Action'),
(110, 6, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(111, 6, 'editActive', '', 'editActive', ''),
(112, 6, 'label', 'Success Message', 'label', 'Success Message'),
(113, 6, 'message', 'Your form has been successfully submitted.', 'message', 'Your form has been successfully submitted.'),
(114, 6, 'order', '1', 'order', '1'),
(115, 6, 'payment_gateways', '', 'payment_gateways', ''),
(116, 6, 'payment_total', '0', 'payment_total', '0'),
(117, 6, 'tag', '', 'tag', ''),
(118, 6, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(119, 6, 'reply_to', '', 'reply_to', ''),
(120, 6, 'email_subject', 'Ninja Forms Submission', 'email_subject', 'Ninja Forms Submission'),
(121, 6, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(122, 6, 'email_message_plain', '', 'email_message_plain', ''),
(123, 6, 'from_name', '', 'from_name', ''),
(124, 6, 'from_address', '', 'from_address', ''),
(125, 6, 'email_format', 'html', 'email_format', 'html'),
(126, 6, 'cc', '', 'cc', ''),
(127, 6, 'bcc', '', 'bcc', ''),
(128, 6, 'redirect_url', '', 'redirect_url', ''),
(129, 6, 'success_msg', 'Your form has been successfully submitted.', 'success_msg', 'Your form has been successfully submitted.'),
(130, 6, 'parent_id', '2', 'parent_id', '2'),
(131, 7, 'title', '', 'title', ''),
(132, 7, 'key', '', 'key', ''),
(133, 7, 'type', 'email', 'type', 'email'),
(134, 7, 'active', '1', 'active', '1'),
(135, 7, 'created_at', '2018-04-16 19:55:48', 'created_at', '2018-04-16 19:55:48'),
(136, 7, 'objectType', 'Action', 'objectType', 'Action'),
(137, 7, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(138, 7, 'editActive', '', 'editActive', ''),
(139, 7, 'label', 'Admin Email', 'label', 'Admin Email'),
(140, 7, 'order', '2', 'order', '2'),
(141, 7, 'payment_gateways', '', 'payment_gateways', ''),
(142, 7, 'payment_total', '0', 'payment_total', '0'),
(143, 7, 'tag', '', 'tag', ''),
(144, 7, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(145, 7, 'reply_to', '', 'reply_to', ''),
(146, 7, 'email_subject', 'Ninja Forms Submission', 'email_subject', 'Ninja Forms Submission'),
(147, 7, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(148, 7, 'email_message_plain', '', 'email_message_plain', ''),
(149, 7, 'from_name', '', 'from_name', ''),
(150, 7, 'from_address', '', 'from_address', ''),
(151, 7, 'email_format', 'html', 'email_format', 'html'),
(152, 7, 'cc', '', 'cc', ''),
(153, 7, 'bcc', '', 'bcc', ''),
(154, 7, 'parent_id', '2', 'parent_id', '2'),
(155, 5, 'success_msg', 'Your form has been successfully submitted.', 'success_msg', 'Your form has been successfully submitted.'),
(156, 5, 'submitter_email', '', 'submitter_email', ''),
(157, 5, 'fields-save-toggle', 'save_all', 'fields-save-toggle', 'save_all'),
(158, 5, 'exception_fields', 'a:0:{}', 'exception_fields', 'a:0:{}'),
(159, 5, 'set_subs_to_expire', '0', 'set_subs_to_expire', '0'),
(160, 5, 'subs_expire_time', '90', 'subs_expire_time', '90');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_chunks`
--

CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext,
  `key` longtext,
  `type` longtext,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `field_label` longtext,
  `field_key` longtext,
  `order` int(11) DEFAULT NULL,
  `required` bit(1) DEFAULT NULL,
  `default_value` longtext,
  `label_pos` varchar(15) DEFAULT NULL,
  `personally_identifiable` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`, `field_label`, `field_key`, `order`, `required`, `default_value`, `label_pos`, `personally_identifiable`) VALUES
(1, 'Name', 'name', 'textbox', 1, '2020-12-28 03:47:35', '2020-12-27 22:47:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Email', 'email', 'email', 1, '2020-12-28 03:47:37', '2020-12-27 22:47:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Message', 'message', 'textarea', 1, '2020-12-28 03:47:39', '2020-12-27 22:47:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Submit', 'submit', 'submit', 1, '2020-12-28 03:47:41', '2020-12-27 22:47:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Artwork\'s name', 'artwork_s_name_1609109711542', 'firstname', 2, '2020-12-27 23:06:48', NULL, 'Artwork\'s name', 'artwork_s_name_1609109711542', 1, b'1', '', 'default', b'1'),
(6, 'Artwork\'s theme', 'artwork_s_theme_1609109730352', 'lastname', 2, '2020-12-27 23:06:48', NULL, 'Artwork\'s theme', 'artwork_s_theme_1609109730352', 2, b'1', '', 'default', b'1'),
(7, 'Author\'s name', 'author_s_name_1609109746687', 'email', 2, '2020-12-27 23:06:48', NULL, 'Author\'s name', 'author_s_name_1609109746687', 3, b'1', '', 'default', b'1'),
(10, 'Material used', 'material_used_1609110317235', 'listselect', 2, '2020-12-27 23:06:48', NULL, 'Material used', 'material_used_1609110317235', 8, b'1', '', 'default', b'0'),
(14, 'Send', 'send_1609110397880', 'submit', 2, '2020-12-27 23:06:48', NULL, 'Send', 'send_1609110397880', 10, b'0', '', '', b'0'),
(15, 'Author\'s resume', 'author_s_resume_1609110020660', 'textarea', 2, '2020-12-27 23:06:48', NULL, 'Author\'s resume', 'author_s_resume_1609110020660', 4, b'0', '', 'default', b'0'),
(16, 'Lenth', 'lenth_1609110212809', 'number', 2, '2020-12-27 23:06:48', NULL, 'Lenth', 'lenth_1609110212809', 5, b'0', '', 'default', b'0'),
(17, 'Width', 'width_1609110240133', 'number', 2, '2020-12-27 23:06:48', NULL, 'Width', 'width_1609110240133', 6, b'0', '', 'default', b'0'),
(18, 'Height', 'height_1609110258122', 'number', 2, '2020-12-27 23:06:48', NULL, 'Height', 'height_1609110258122', 7, b'0', '', 'default', b'0'),
(19, 'Technique used', 'technique_used_1609110371056', 'listselect', 2, '2020-12-27 23:06:48', NULL, 'Technique used', 'technique_used_1609110371056', 9, b'0', '', 'default', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'label_pos', 'above', 'label_pos', 'above'),
(2, 1, 'required', '1', 'required', '1'),
(3, 1, 'order', '1', 'order', '1'),
(4, 1, 'placeholder', '', 'placeholder', ''),
(5, 1, 'default', '', 'default', ''),
(6, 1, 'wrapper_class', '', 'wrapper_class', ''),
(7, 1, 'element_class', '', 'element_class', ''),
(8, 1, 'objectType', 'Field', 'objectType', 'Field'),
(9, 1, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(10, 1, 'editActive', '', 'editActive', ''),
(11, 1, 'container_class', '', 'container_class', ''),
(12, 1, 'input_limit', '', 'input_limit', ''),
(13, 1, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(14, 1, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(15, 1, 'manual_key', '', 'manual_key', ''),
(16, 1, 'disable_input', '', 'disable_input', ''),
(17, 1, 'admin_label', '', 'admin_label', ''),
(18, 1, 'help_text', '', 'help_text', ''),
(19, 1, 'desc_text', '', 'desc_text', ''),
(20, 1, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(21, 1, 'mask', '', 'mask', ''),
(22, 1, 'custom_mask', '', 'custom_mask', ''),
(23, 1, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(24, 1, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(25, 1, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(26, 1, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(27, 1, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(28, 1, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(29, 1, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(30, 1, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(31, 1, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(32, 1, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(33, 1, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(34, 1, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(35, 1, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(36, 1, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(37, 1, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(38, 1, 'label_styles_border', '', 'label_styles_border', ''),
(39, 1, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(40, 1, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(41, 1, 'label_styles_color', '', 'label_styles_color', ''),
(42, 1, 'label_styles_height', '', 'label_styles_height', ''),
(43, 1, 'label_styles_width', '', 'label_styles_width', ''),
(44, 1, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(45, 1, 'label_styles_margin', '', 'label_styles_margin', ''),
(46, 1, 'label_styles_padding', '', 'label_styles_padding', ''),
(47, 1, 'label_styles_display', '', 'label_styles_display', ''),
(48, 1, 'label_styles_float', '', 'label_styles_float', ''),
(49, 1, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(50, 1, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(51, 1, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(52, 1, 'element_styles_border', '', 'element_styles_border', ''),
(53, 1, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(54, 1, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(55, 1, 'element_styles_color', '', 'element_styles_color', ''),
(56, 1, 'element_styles_height', '', 'element_styles_height', ''),
(57, 1, 'element_styles_width', '', 'element_styles_width', ''),
(58, 1, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(59, 1, 'element_styles_margin', '', 'element_styles_margin', ''),
(60, 1, 'element_styles_padding', '', 'element_styles_padding', ''),
(61, 1, 'element_styles_display', '', 'element_styles_display', ''),
(62, 1, 'element_styles_float', '', 'element_styles_float', ''),
(63, 1, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(64, 1, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(65, 1, 'cellcid', 'c3277', 'cellcid', 'c3277'),
(66, 2, 'label_pos', 'above', 'label_pos', 'above'),
(67, 2, 'required', '1', 'required', '1'),
(68, 2, 'order', '2', 'order', '2'),
(69, 2, 'placeholder', '', 'placeholder', ''),
(70, 2, 'default', '', 'default', ''),
(71, 2, 'wrapper_class', '', 'wrapper_class', ''),
(72, 2, 'element_class', '', 'element_class', ''),
(73, 2, 'objectType', 'Field', 'objectType', 'Field'),
(74, 2, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(75, 2, 'editActive', '', 'editActive', ''),
(76, 2, 'container_class', '', 'container_class', ''),
(77, 2, 'admin_label', '', 'admin_label', ''),
(78, 2, 'help_text', '', 'help_text', ''),
(79, 2, 'desc_text', '', 'desc_text', ''),
(80, 2, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(81, 2, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(82, 2, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(83, 2, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(84, 2, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(85, 2, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(86, 2, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(87, 2, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(88, 2, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(89, 2, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(90, 2, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(91, 2, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(92, 2, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(93, 2, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(94, 2, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(95, 2, 'label_styles_border', '', 'label_styles_border', ''),
(96, 2, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(97, 2, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(98, 2, 'label_styles_color', '', 'label_styles_color', ''),
(99, 2, 'label_styles_height', '', 'label_styles_height', ''),
(100, 2, 'label_styles_width', '', 'label_styles_width', ''),
(101, 2, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(102, 2, 'label_styles_margin', '', 'label_styles_margin', ''),
(103, 2, 'label_styles_padding', '', 'label_styles_padding', ''),
(104, 2, 'label_styles_display', '', 'label_styles_display', ''),
(105, 2, 'label_styles_float', '', 'label_styles_float', ''),
(106, 2, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(107, 2, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(108, 2, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(109, 2, 'element_styles_border', '', 'element_styles_border', ''),
(110, 2, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(111, 2, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(112, 2, 'element_styles_color', '', 'element_styles_color', ''),
(113, 2, 'element_styles_height', '', 'element_styles_height', ''),
(114, 2, 'element_styles_width', '', 'element_styles_width', ''),
(115, 2, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(116, 2, 'element_styles_margin', '', 'element_styles_margin', ''),
(117, 2, 'element_styles_padding', '', 'element_styles_padding', ''),
(118, 2, 'element_styles_display', '', 'element_styles_display', ''),
(119, 2, 'element_styles_float', '', 'element_styles_float', ''),
(120, 2, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(121, 2, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(122, 2, 'cellcid', 'c3281', 'cellcid', 'c3281'),
(123, 3, 'label_pos', 'above', 'label_pos', 'above'),
(124, 3, 'required', '1', 'required', '1'),
(125, 3, 'order', '3', 'order', '3'),
(126, 3, 'placeholder', '', 'placeholder', ''),
(127, 3, 'default', '', 'default', ''),
(128, 3, 'wrapper_class', '', 'wrapper_class', ''),
(129, 3, 'element_class', '', 'element_class', ''),
(130, 3, 'objectType', 'Field', 'objectType', 'Field'),
(131, 3, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(132, 3, 'editActive', '', 'editActive', ''),
(133, 3, 'container_class', '', 'container_class', ''),
(134, 3, 'input_limit', '', 'input_limit', ''),
(135, 3, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(136, 3, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(137, 3, 'manual_key', '', 'manual_key', ''),
(138, 3, 'disable_input', '', 'disable_input', ''),
(139, 3, 'admin_label', '', 'admin_label', ''),
(140, 3, 'help_text', '', 'help_text', ''),
(141, 3, 'desc_text', '', 'desc_text', ''),
(142, 3, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(143, 3, 'textarea_rte', '', 'textarea_rte', ''),
(144, 3, 'disable_rte_mobile', '', 'disable_rte_mobile', ''),
(145, 3, 'textarea_media', '', 'textarea_media', ''),
(146, 3, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(147, 3, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(148, 3, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(149, 3, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(150, 3, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(151, 3, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(152, 3, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(153, 3, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(154, 3, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(155, 3, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(156, 3, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(157, 3, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(158, 3, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(159, 3, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(160, 3, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(161, 3, 'label_styles_border', '', 'label_styles_border', ''),
(162, 3, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(163, 3, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(164, 3, 'label_styles_color', '', 'label_styles_color', ''),
(165, 3, 'label_styles_height', '', 'label_styles_height', ''),
(166, 3, 'label_styles_width', '', 'label_styles_width', ''),
(167, 3, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(168, 3, 'label_styles_margin', '', 'label_styles_margin', ''),
(169, 3, 'label_styles_padding', '', 'label_styles_padding', ''),
(170, 3, 'label_styles_display', '', 'label_styles_display', ''),
(171, 3, 'label_styles_float', '', 'label_styles_float', ''),
(172, 3, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(173, 3, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(174, 3, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(175, 3, 'element_styles_border', '', 'element_styles_border', ''),
(176, 3, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(177, 3, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(178, 3, 'element_styles_color', '', 'element_styles_color', ''),
(179, 3, 'element_styles_height', '', 'element_styles_height', ''),
(180, 3, 'element_styles_width', '', 'element_styles_width', ''),
(181, 3, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(182, 3, 'element_styles_margin', '', 'element_styles_margin', ''),
(183, 3, 'element_styles_padding', '', 'element_styles_padding', ''),
(184, 3, 'element_styles_display', '', 'element_styles_display', ''),
(185, 3, 'element_styles_float', '', 'element_styles_float', ''),
(186, 3, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(187, 3, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(188, 3, 'cellcid', 'c3284', 'cellcid', 'c3284'),
(189, 4, 'processing_label', 'Processing', 'processing_label', 'Processing'),
(190, 4, 'order', '5', 'order', '5'),
(191, 4, 'objectType', 'Field', 'objectType', 'Field'),
(192, 4, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(193, 4, 'editActive', '', 'editActive', ''),
(194, 4, 'container_class', '', 'container_class', ''),
(195, 4, 'element_class', '', 'element_class', ''),
(196, 4, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(197, 4, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(198, 4, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(199, 4, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(200, 4, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(201, 4, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(202, 4, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(203, 4, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(204, 4, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(205, 4, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(206, 4, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(207, 4, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(208, 4, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(209, 4, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(210, 4, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(211, 4, 'label_styles_border', '', 'label_styles_border', ''),
(212, 4, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(213, 4, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(214, 4, 'label_styles_color', '', 'label_styles_color', ''),
(215, 4, 'label_styles_height', '', 'label_styles_height', ''),
(216, 4, 'label_styles_width', '', 'label_styles_width', ''),
(217, 4, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(218, 4, 'label_styles_margin', '', 'label_styles_margin', ''),
(219, 4, 'label_styles_padding', '', 'label_styles_padding', ''),
(220, 4, 'label_styles_display', '', 'label_styles_display', ''),
(221, 4, 'label_styles_float', '', 'label_styles_float', ''),
(222, 4, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(223, 4, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(224, 4, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(225, 4, 'element_styles_border', '', 'element_styles_border', ''),
(226, 4, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(227, 4, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(228, 4, 'element_styles_color', '', 'element_styles_color', ''),
(229, 4, 'element_styles_height', '', 'element_styles_height', ''),
(230, 4, 'element_styles_width', '', 'element_styles_width', ''),
(231, 4, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(232, 4, 'element_styles_margin', '', 'element_styles_margin', ''),
(233, 4, 'element_styles_padding', '', 'element_styles_padding', ''),
(234, 4, 'element_styles_display', '', 'element_styles_display', ''),
(235, 4, 'element_styles_float', '', 'element_styles_float', ''),
(236, 4, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(237, 4, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(238, 4, 'submit_element_hover_styles_background-color', '', 'submit_element_hover_styles_background-color', ''),
(239, 4, 'submit_element_hover_styles_border', '', 'submit_element_hover_styles_border', ''),
(240, 4, 'submit_element_hover_styles_border-style', '', 'submit_element_hover_styles_border-style', ''),
(241, 4, 'submit_element_hover_styles_border-color', '', 'submit_element_hover_styles_border-color', ''),
(242, 4, 'submit_element_hover_styles_color', '', 'submit_element_hover_styles_color', ''),
(243, 4, 'submit_element_hover_styles_height', '', 'submit_element_hover_styles_height', ''),
(244, 4, 'submit_element_hover_styles_width', '', 'submit_element_hover_styles_width', ''),
(245, 4, 'submit_element_hover_styles_font-size', '', 'submit_element_hover_styles_font-size', ''),
(246, 4, 'submit_element_hover_styles_margin', '', 'submit_element_hover_styles_margin', ''),
(247, 4, 'submit_element_hover_styles_padding', '', 'submit_element_hover_styles_padding', ''),
(248, 4, 'submit_element_hover_styles_display', '', 'submit_element_hover_styles_display', ''),
(249, 4, 'submit_element_hover_styles_float', '', 'submit_element_hover_styles_float', ''),
(250, 4, 'submit_element_hover_styles_show_advanced_css', '0', 'submit_element_hover_styles_show_advanced_css', '0'),
(251, 4, 'submit_element_hover_styles_advanced', '', 'submit_element_hover_styles_advanced', ''),
(252, 4, 'cellcid', 'c3287', 'cellcid', 'c3287'),
(253, 5, 'objectType', 'Field', 'objectType', 'Field'),
(254, 5, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(255, 5, 'editActive', '', 'editActive', ''),
(256, 5, 'order', '1', 'order', '1'),
(257, 5, 'label', 'Artwork\'s name', 'label', 'Artwork\'s name'),
(258, 5, 'type', 'firstname', 'type', 'firstname'),
(259, 5, 'key', 'artwork_s_name_1609109711542', 'key', 'artwork_s_name_1609109711542'),
(260, 5, 'label_pos', 'default', 'label_pos', 'default'),
(261, 5, 'required', '1', 'required', '1'),
(262, 5, 'default', '', 'default', ''),
(263, 5, 'placeholder', '', 'placeholder', ''),
(264, 5, 'container_class', 'one-half first', 'container_class', 'one-half first'),
(265, 5, 'element_class', '', 'element_class', ''),
(266, 5, 'admin_label', '', 'admin_label', ''),
(267, 5, 'help_text', '', 'help_text', ''),
(268, 5, 'custom_name_attribute', 'fname', 'custom_name_attribute', 'fname'),
(269, 5, 'parent_id', '2', 'parent_id', '2'),
(270, 6, 'objectType', 'Field', 'objectType', 'Field'),
(271, 6, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(272, 6, 'editActive', '', 'editActive', ''),
(273, 6, 'order', '2', 'order', '2'),
(274, 6, 'label', 'Artwork\'s theme', 'label', 'Artwork\'s theme'),
(275, 6, 'type', 'lastname', 'type', 'lastname'),
(276, 6, 'key', 'artwork_s_theme_1609109730352', 'key', 'artwork_s_theme_1609109730352'),
(277, 6, 'label_pos', 'default', 'label_pos', 'default'),
(278, 6, 'required', '1', 'required', '1'),
(279, 6, 'default', '', 'default', ''),
(280, 6, 'placeholder', '', 'placeholder', ''),
(281, 6, 'container_class', 'one-half second', 'container_class', 'one-half second'),
(282, 6, 'element_class', '', 'element_class', ''),
(283, 6, 'admin_label', '', 'admin_label', ''),
(284, 6, 'help_text', '', 'help_text', ''),
(285, 6, 'custom_name_attribute', 'lname', 'custom_name_attribute', 'lname'),
(286, 6, 'drawerDisabled', '', 'drawerDisabled', ''),
(287, 6, 'parent_id', '2', 'parent_id', '2'),
(288, 7, 'objectType', 'Field', 'objectType', 'Field'),
(289, 7, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(290, 7, 'editActive', '', 'editActive', ''),
(291, 7, 'order', '3', 'order', '3'),
(292, 7, 'label', 'Author\'s name', 'label', 'Author\'s name'),
(293, 7, 'type', 'email', 'type', 'email'),
(294, 7, 'key', 'author_s_name_1609109746687', 'key', 'author_s_name_1609109746687'),
(295, 7, 'label_pos', 'default', 'label_pos', 'default'),
(296, 7, 'required', '1', 'required', '1'),
(297, 7, 'default', '', 'default', ''),
(298, 7, 'placeholder', '', 'placeholder', ''),
(299, 7, 'container_class', '', 'container_class', ''),
(300, 7, 'element_class', '', 'element_class', ''),
(301, 7, 'admin_label', '', 'admin_label', ''),
(302, 7, 'help_text', '', 'help_text', ''),
(303, 7, 'custom_name_attribute', 'email', 'custom_name_attribute', 'email'),
(304, 7, 'parent_id', '2', 'parent_id', '2'),
(344, 10, 'objectType', 'Field', 'objectType', 'Field'),
(345, 10, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(346, 10, 'editActive', '', 'editActive', ''),
(347, 10, 'order', '8', 'order', '8'),
(348, 10, 'type', 'listselect', 'type', 'listselect'),
(349, 10, 'label', 'Material used', 'label', 'Material used'),
(350, 10, 'key', 'material_used_1609110317235', 'key', 'material_used_1609110317235'),
(351, 10, 'label_pos', 'default', 'label_pos', 'default'),
(352, 10, 'required', '1', 'required', '1'),
(353, 10, 'options', 'a:2:{i:0;a:10:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"order\";i:0;s:3:\"new\";b:0;s:7:\"options\";a:0:{}s:5:\"label\";s:6:\"Madera\";s:5:\"value\";s:6:\"madera\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}}i:1;a:10:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"order\";i:1;s:3:\"new\";b:0;s:7:\"options\";a:0:{}s:5:\"label\";s:5:\"Plomo\";s:5:\"value\";s:5:\"plomo\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}}}', 'options', 'a:2:{i:0;a:10:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"order\";i:0;s:3:\"new\";b:0;s:7:\"options\";a:0:{}s:5:\"label\";s:6:\"Madera\";s:5:\"value\";s:6:\"madera\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}}i:1;a:10:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"order\";i:1;s:3:\"new\";b:0;s:7:\"options\";a:0:{}s:5:\"label\";s:5:\"Plomo\";s:5:\"value\";s:5:\"plomo\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}}}'),
(354, 10, 'container_class', '', 'container_class', ''),
(355, 10, 'element_class', '', 'element_class', ''),
(356, 10, 'admin_label', '', 'admin_label', ''),
(357, 10, 'help_text', '', 'help_text', ''),
(358, 10, 'drawerDisabled', '', 'drawerDisabled', ''),
(359, 10, 'parent_id', '2', 'parent_id', '2'),
(418, 14, 'objectType', 'Field', 'objectType', 'Field'),
(419, 14, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(420, 14, 'editActive', '', 'editActive', ''),
(421, 14, 'order', '10', 'order', '10'),
(422, 14, 'type', 'submit', 'type', 'submit'),
(423, 14, 'label', 'Send', 'label', 'Send'),
(424, 14, 'processing_label', 'Processing', 'processing_label', 'Processing'),
(425, 14, 'container_class', '', 'container_class', ''),
(426, 14, 'element_class', '', 'element_class', ''),
(427, 14, 'key', 'send_1609110397880', 'key', 'send_1609110397880'),
(428, 14, 'parent_id', '2', 'parent_id', '2'),
(429, 5, 'field_label', 'First Name', 'field_label', 'First Name'),
(430, 5, 'field_key', 'firstname_1523908368154', 'field_key', 'firstname_1523908368154'),
(431, 5, 'personally_identifiable', '1', 'personally_identifiable', '1'),
(432, 5, 'value', '', 'value', ''),
(433, 5, 'drawerDisabled', '', 'drawerDisabled', ''),
(434, 6, 'field_label', 'Last Name', 'field_label', 'Last Name'),
(435, 6, 'field_key', 'lastname_1523908369534', 'field_key', 'lastname_1523908369534'),
(436, 6, 'personally_identifiable', '1', 'personally_identifiable', '1'),
(437, 6, 'value', '', 'value', ''),
(438, 7, 'field_label', 'Email', 'field_label', 'Email'),
(439, 7, 'field_key', 'email_1523908522614', 'field_key', 'email_1523908522614'),
(440, 7, 'personally_identifiable', '1', 'personally_identifiable', '1'),
(441, 7, 'value', '', 'value', ''),
(442, 15, 'editActive', '', 'editActive', ''),
(443, 15, 'order', '4', 'order', '4'),
(444, 15, 'label', 'Author\'s resume', 'label', 'Author\'s resume'),
(445, 15, 'type', 'textarea', 'type', 'textarea'),
(446, 15, 'key', 'author_s_resume_1609110020660', 'key', 'author_s_resume_1609110020660'),
(447, 15, 'label_pos', 'default', 'label_pos', 'default'),
(448, 15, 'required', '', 'required', ''),
(449, 15, 'default', '', 'default', ''),
(450, 15, 'placeholder', '', 'placeholder', ''),
(451, 15, 'container_class', '', 'container_class', ''),
(452, 15, 'element_class', '', 'element_class', ''),
(453, 15, 'input_limit', '', 'input_limit', ''),
(454, 15, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(455, 15, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(456, 15, 'manual_key', '', 'manual_key', ''),
(457, 15, 'admin_label', '', 'admin_label', ''),
(458, 15, 'help_text', '', 'help_text', ''),
(459, 15, 'textarea_rte', '', 'textarea_rte', ''),
(460, 15, 'disable_rte_mobile', '', 'disable_rte_mobile', ''),
(461, 15, 'textarea_media', '', 'textarea_media', ''),
(462, 15, 'value', '', 'value', ''),
(463, 15, 'drawerDisabled', '', 'drawerDisabled', ''),
(464, 16, 'editActive', '', 'editActive', ''),
(465, 16, 'order', '5', 'order', '5'),
(466, 16, 'label', 'Lenth', 'label', 'Lenth'),
(467, 16, 'type', 'number', 'type', 'number'),
(468, 16, 'key', 'lenth_1609110212809', 'key', 'lenth_1609110212809'),
(469, 16, 'label_pos', 'default', 'label_pos', 'default'),
(470, 16, 'required', '', 'required', ''),
(471, 16, 'default', '', 'default', ''),
(472, 16, 'placeholder', '', 'placeholder', ''),
(473, 16, 'container_class', '', 'container_class', ''),
(474, 16, 'element_class', '', 'element_class', ''),
(475, 16, 'manual_key', '', 'manual_key', ''),
(476, 16, 'admin_label', '', 'admin_label', ''),
(477, 16, 'help_text', '', 'help_text', ''),
(478, 16, 'num_min', '', 'num_min', ''),
(479, 16, 'num_max', '', 'num_max', ''),
(480, 16, 'num_step', '1', 'num_step', '1'),
(481, 16, 'value', '', 'value', ''),
(482, 16, 'drawerDisabled', '', 'drawerDisabled', ''),
(483, 17, 'editActive', '', 'editActive', ''),
(484, 17, 'order', '6', 'order', '6'),
(485, 17, 'label', 'Width', 'label', 'Width'),
(486, 17, 'type', 'number', 'type', 'number'),
(487, 17, 'key', 'width_1609110240133', 'key', 'width_1609110240133'),
(488, 17, 'label_pos', 'default', 'label_pos', 'default'),
(489, 17, 'required', '', 'required', ''),
(490, 17, 'default', '', 'default', ''),
(491, 17, 'placeholder', '', 'placeholder', ''),
(492, 17, 'container_class', '', 'container_class', ''),
(493, 17, 'element_class', '', 'element_class', ''),
(494, 17, 'manual_key', '', 'manual_key', ''),
(495, 17, 'admin_label', '', 'admin_label', ''),
(496, 17, 'help_text', '', 'help_text', ''),
(497, 17, 'num_min', '', 'num_min', ''),
(498, 17, 'num_max', '', 'num_max', ''),
(499, 17, 'num_step', '1', 'num_step', '1'),
(500, 17, 'value', '', 'value', ''),
(501, 17, 'drawerDisabled', '', 'drawerDisabled', ''),
(502, 18, 'editActive', '', 'editActive', ''),
(503, 18, 'order', '7', 'order', '7'),
(504, 18, 'label', 'Height', 'label', 'Height'),
(505, 18, 'type', 'number', 'type', 'number'),
(506, 18, 'key', 'height_1609110258122', 'key', 'height_1609110258122'),
(507, 18, 'label_pos', 'default', 'label_pos', 'default'),
(508, 18, 'required', '', 'required', ''),
(509, 18, 'default', '', 'default', ''),
(510, 18, 'placeholder', '', 'placeholder', ''),
(511, 18, 'container_class', '', 'container_class', ''),
(512, 18, 'element_class', '', 'element_class', ''),
(513, 18, 'manual_key', '', 'manual_key', ''),
(514, 18, 'admin_label', '', 'admin_label', ''),
(515, 18, 'help_text', '', 'help_text', ''),
(516, 18, 'num_min', '', 'num_min', ''),
(517, 18, 'num_max', '', 'num_max', ''),
(518, 18, 'num_step', '1', 'num_step', '1'),
(519, 18, 'value', '', 'value', ''),
(520, 18, 'drawerDisabled', '', 'drawerDisabled', ''),
(521, 10, 'field_label', 'Enquiry Type', 'field_label', 'Enquiry Type'),
(522, 10, 'field_key', 'enquiry_type_1523908495090', 'field_key', 'enquiry_type_1523908495090'),
(523, 19, 'editActive', '', 'editActive', ''),
(524, 19, 'order', '9', 'order', '9'),
(525, 19, 'label', 'Technique used', 'label', 'Technique used'),
(526, 19, 'type', 'listselect', 'type', 'listselect'),
(527, 19, 'key', 'technique_used_1609110371056', 'key', 'technique_used_1609110371056'),
(528, 19, 'label_pos', 'default', 'label_pos', 'default'),
(529, 19, 'required', '', 'required', ''),
(530, 19, 'options', 'a:1:{i:0;a:10:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"order\";i:0;s:3:\"new\";b:0;s:7:\"options\";a:0:{}s:5:\"label\";s:18:\"Óleo sobre lienzo\";s:5:\"value\";s:17:\"oleo-sobre-lienzo\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}}}', 'options', 'a:1:{i:0;a:10:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"order\";i:0;s:3:\"new\";b:0;s:7:\"options\";a:0:{}s:5:\"label\";s:18:\"Óleo sobre lienzo\";s:5:\"value\";s:17:\"oleo-sobre-lienzo\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}}}'),
(531, 19, 'container_class', '', 'container_class', ''),
(532, 19, 'element_class', '', 'element_class', ''),
(533, 19, 'admin_label', '', 'admin_label', ''),
(534, 19, 'help_text', '', 'help_text', ''),
(535, 19, 'drawerDisabled', '', 'drawerDisabled', ''),
(536, 14, 'field_label', 'Submit', 'field_label', 'Submit'),
(537, 14, 'field_key', 'submit_1523908548082', 'field_key', 'submit_1523908548082'),
(538, 14, 'drawerDisabled', '', 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext,
  `key` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  `form_title` longtext,
  `default_label_pos` varchar(15) DEFAULT NULL,
  `show_title` bit(1) DEFAULT NULL,
  `clear_complete` bit(1) DEFAULT NULL,
  `hide_complete` bit(1) DEFAULT NULL,
  `logged_in` bit(1) DEFAULT NULL,
  `seq_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`, `form_title`, `default_label_pos`, `show_title`, `clear_complete`, `hide_complete`, `logged_in`, `seq_num`) VALUES
(1, 'Contact Me', NULL, '2020-12-27 22:47:30', '2020-12-27 22:47:28', NULL, NULL, 'Contact Me', 'above', b'1', b'1', b'1', b'0', NULL),
(2, 'Appraise artwork', NULL, '2020-12-27 22:54:16', NULL, NULL, NULL, 'Appraise artwork', 'above', b'0', b'1', b'1', b'1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'key', '', 'key', ''),
(2, 1, 'created_at', '2020-12-27 22:47:28', 'created_at', '2020-12-27 22:47:28'),
(3, 1, 'default_label_pos', 'above', 'default_label_pos', 'above'),
(4, 1, 'conditions', 'a:0:{}', 'conditions', 'a:0:{}'),
(5, 1, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(6, 1, 'editActive', '', 'editActive', ''),
(7, 1, 'show_title', '1', 'show_title', '1'),
(8, 1, 'clear_complete', '1', 'clear_complete', '1'),
(9, 1, 'hide_complete', '1', 'hide_complete', '1'),
(10, 1, 'wrapper_class', '', 'wrapper_class', ''),
(11, 1, 'element_class', '', 'element_class', ''),
(12, 1, 'add_submit', '1', 'add_submit', '1'),
(13, 1, 'logged_in', '', 'logged_in', ''),
(14, 1, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(15, 1, 'sub_limit_number', '', 'sub_limit_number', ''),
(16, 1, 'sub_limit_msg', '', 'sub_limit_msg', ''),
(17, 1, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(18, 1, 'formContentData', 'a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}', 'formContentData', 'a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}'),
(19, 1, 'container_styles_background-color', '', 'container_styles_background-color', ''),
(20, 1, 'container_styles_border', '', 'container_styles_border', ''),
(21, 1, 'container_styles_border-style', '', 'container_styles_border-style', ''),
(22, 1, 'container_styles_border-color', '', 'container_styles_border-color', ''),
(23, 1, 'container_styles_color', '', 'container_styles_color', ''),
(24, 1, 'container_styles_height', '', 'container_styles_height', ''),
(25, 1, 'container_styles_width', '', 'container_styles_width', ''),
(26, 1, 'container_styles_font-size', '', 'container_styles_font-size', ''),
(27, 1, 'container_styles_margin', '', 'container_styles_margin', ''),
(28, 1, 'container_styles_padding', '', 'container_styles_padding', ''),
(29, 1, 'container_styles_display', '', 'container_styles_display', ''),
(30, 1, 'container_styles_float', '', 'container_styles_float', ''),
(31, 1, 'container_styles_show_advanced_css', '0', 'container_styles_show_advanced_css', '0'),
(32, 1, 'container_styles_advanced', '', 'container_styles_advanced', ''),
(33, 1, 'title_styles_background-color', '', 'title_styles_background-color', ''),
(34, 1, 'title_styles_border', '', 'title_styles_border', ''),
(35, 1, 'title_styles_border-style', '', 'title_styles_border-style', ''),
(36, 1, 'title_styles_border-color', '', 'title_styles_border-color', ''),
(37, 1, 'title_styles_color', '', 'title_styles_color', ''),
(38, 1, 'title_styles_height', '', 'title_styles_height', ''),
(39, 1, 'title_styles_width', '', 'title_styles_width', ''),
(40, 1, 'title_styles_font-size', '', 'title_styles_font-size', ''),
(41, 1, 'title_styles_margin', '', 'title_styles_margin', ''),
(42, 1, 'title_styles_padding', '', 'title_styles_padding', ''),
(43, 1, 'title_styles_display', '', 'title_styles_display', ''),
(44, 1, 'title_styles_float', '', 'title_styles_float', ''),
(45, 1, 'title_styles_show_advanced_css', '0', 'title_styles_show_advanced_css', '0'),
(46, 1, 'title_styles_advanced', '', 'title_styles_advanced', ''),
(47, 1, 'row_styles_background-color', '', 'row_styles_background-color', ''),
(48, 1, 'row_styles_border', '', 'row_styles_border', ''),
(49, 1, 'row_styles_border-style', '', 'row_styles_border-style', ''),
(50, 1, 'row_styles_border-color', '', 'row_styles_border-color', ''),
(51, 1, 'row_styles_color', '', 'row_styles_color', ''),
(52, 1, 'row_styles_height', '', 'row_styles_height', ''),
(53, 1, 'row_styles_width', '', 'row_styles_width', ''),
(54, 1, 'row_styles_font-size', '', 'row_styles_font-size', ''),
(55, 1, 'row_styles_margin', '', 'row_styles_margin', ''),
(56, 1, 'row_styles_padding', '', 'row_styles_padding', ''),
(57, 1, 'row_styles_display', '', 'row_styles_display', ''),
(58, 1, 'row_styles_show_advanced_css', '0', 'row_styles_show_advanced_css', '0'),
(59, 1, 'row_styles_advanced', '', 'row_styles_advanced', ''),
(60, 1, 'row-odd_styles_background-color', '', 'row-odd_styles_background-color', ''),
(61, 1, 'row-odd_styles_border', '', 'row-odd_styles_border', ''),
(62, 1, 'row-odd_styles_border-style', '', 'row-odd_styles_border-style', ''),
(63, 1, 'row-odd_styles_border-color', '', 'row-odd_styles_border-color', ''),
(64, 1, 'row-odd_styles_color', '', 'row-odd_styles_color', ''),
(65, 1, 'row-odd_styles_height', '', 'row-odd_styles_height', ''),
(66, 1, 'row-odd_styles_width', '', 'row-odd_styles_width', ''),
(67, 1, 'row-odd_styles_font-size', '', 'row-odd_styles_font-size', ''),
(68, 1, 'row-odd_styles_margin', '', 'row-odd_styles_margin', ''),
(69, 1, 'row-odd_styles_padding', '', 'row-odd_styles_padding', ''),
(70, 1, 'row-odd_styles_display', '', 'row-odd_styles_display', ''),
(71, 1, 'row-odd_styles_show_advanced_css', '0', 'row-odd_styles_show_advanced_css', '0'),
(72, 1, 'row-odd_styles_advanced', '', 'row-odd_styles_advanced', ''),
(73, 1, 'success-msg_styles_background-color', '', 'success-msg_styles_background-color', ''),
(74, 1, 'success-msg_styles_border', '', 'success-msg_styles_border', ''),
(75, 1, 'success-msg_styles_border-style', '', 'success-msg_styles_border-style', ''),
(76, 1, 'success-msg_styles_border-color', '', 'success-msg_styles_border-color', ''),
(77, 1, 'success-msg_styles_color', '', 'success-msg_styles_color', ''),
(78, 1, 'success-msg_styles_height', '', 'success-msg_styles_height', ''),
(79, 1, 'success-msg_styles_width', '', 'success-msg_styles_width', ''),
(80, 1, 'success-msg_styles_font-size', '', 'success-msg_styles_font-size', ''),
(81, 1, 'success-msg_styles_margin', '', 'success-msg_styles_margin', ''),
(82, 1, 'success-msg_styles_padding', '', 'success-msg_styles_padding', ''),
(83, 1, 'success-msg_styles_display', '', 'success-msg_styles_display', ''),
(84, 1, 'success-msg_styles_show_advanced_css', '0', 'success-msg_styles_show_advanced_css', '0'),
(85, 1, 'success-msg_styles_advanced', '', 'success-msg_styles_advanced', ''),
(86, 1, 'error_msg_styles_background-color', '', 'error_msg_styles_background-color', ''),
(87, 1, 'error_msg_styles_border', '', 'error_msg_styles_border', ''),
(88, 1, 'error_msg_styles_border-style', '', 'error_msg_styles_border-style', ''),
(89, 1, 'error_msg_styles_border-color', '', 'error_msg_styles_border-color', ''),
(90, 1, 'error_msg_styles_color', '', 'error_msg_styles_color', ''),
(91, 1, 'error_msg_styles_height', '', 'error_msg_styles_height', ''),
(92, 1, 'error_msg_styles_width', '', 'error_msg_styles_width', ''),
(93, 1, 'error_msg_styles_font-size', '', 'error_msg_styles_font-size', ''),
(94, 1, 'error_msg_styles_margin', '', 'error_msg_styles_margin', ''),
(95, 1, 'error_msg_styles_padding', '', 'error_msg_styles_padding', ''),
(96, 1, 'error_msg_styles_display', '', 'error_msg_styles_display', ''),
(97, 1, 'error_msg_styles_show_advanced_css', '0', 'error_msg_styles_show_advanced_css', '0'),
(98, 1, 'error_msg_styles_advanced', '', 'error_msg_styles_advanced', ''),
(99, 2, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(100, 2, 'editActive', '1', 'editActive', '1'),
(101, 2, 'title', 'Enquiry', 'title', 'Enquiry'),
(102, 2, 'show_title', '0', 'show_title', '0'),
(103, 2, 'clear_complete', '1', 'clear_complete', '1'),
(104, 2, 'hide_complete', '1', 'hide_complete', '1'),
(105, 2, 'default_label_pos', 'above', 'default_label_pos', 'above'),
(106, 2, 'wrapper_class', '', 'wrapper_class', ''),
(107, 2, 'element_class', '', 'element_class', ''),
(108, 2, 'key', '', 'key', ''),
(109, 2, 'add_submit', '1', 'add_submit', '1'),
(110, 2, 'currency', '', 'currency', ''),
(111, 2, 'unique_field_error', 'A form with this value has already been submitted.', 'unique_field_error', 'A form with this value has already been submitted.'),
(112, 2, 'logged_in', '1', 'logged_in', '1'),
(113, 2, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(114, 2, 'sub_limit_msg', 'The form has reached its submission limit.', 'sub_limit_msg', 'The form has reached its submission limit.'),
(115, 2, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(116, 2, 'formContentData', 'a:10:{i:0;s:28:\"artwork_s_name_1609109711542\";i:1;s:29:\"artwork_s_theme_1609109730352\";i:2;s:27:\"author_s_name_1609109746687\";i:3;s:29:\"author_s_resume_1609110020660\";i:4;s:19:\"lenth_1609110212809\";i:5;s:19:\"width_1609110240133\";i:6;s:20:\"height_1609110258122\";i:7;s:27:\"material_used_1609110317235\";i:8;s:28:\"technique_used_1609110371056\";i:9;s:18:\"send_1609110397880\";}', 'formContentData', 'a:10:{i:0;s:28:\"artwork_s_name_1609109711542\";i:1;s:29:\"artwork_s_theme_1609109730352\";i:2;s:27:\"author_s_name_1609109746687\";i:3;s:29:\"author_s_resume_1609110020660\";i:4;s:19:\"lenth_1609110212809\";i:5;s:19:\"width_1609110240133\";i:6;s:20:\"height_1609110258122\";i:7;s:27:\"material_used_1609110317235\";i:8;s:28:\"technique_used_1609110371056\";i:9;s:18:\"send_1609110397880\";}'),
(117, 2, 'drawerDisabled', '', 'drawerDisabled', ''),
(118, 2, 'created_at', '2020-12-27 17:54:16', 'created_at', '2020-12-27 17:54:16'),
(119, 2, 'seq_num', NULL, 'seq_num', NULL),
(120, 2, 'allow_public_link', '0', 'allow_public_link', '0'),
(121, 2, 'embed_form', '', 'embed_form', ''),
(122, 2, 'changeEmailErrorMsg', '', 'changeEmailErrorMsg', ''),
(123, 2, 'changeDateErrorMsg', '', 'changeDateErrorMsg', ''),
(124, 2, 'confirmFieldErrorMsg', '', 'confirmFieldErrorMsg', ''),
(125, 2, 'fieldNumberNumMinError', '', 'fieldNumberNumMinError', ''),
(126, 2, 'fieldNumberNumMaxError', '', 'fieldNumberNumMaxError', ''),
(127, 2, 'fieldNumberIncrementBy', '', 'fieldNumberIncrementBy', ''),
(128, 2, 'formErrorsCorrectErrors', '', 'formErrorsCorrectErrors', ''),
(129, 2, 'validateRequiredField', '', 'validateRequiredField', ''),
(130, 2, 'honeypotHoneypotError', '', 'honeypotHoneypotError', ''),
(131, 2, 'fieldsMarkedRequired', '', 'fieldsMarkedRequired', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext,
  `title` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `object_title` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext,
  `meta_key` longtext,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nf3_upgrades`
--

CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext,
  `stage` int(11) NOT NULL DEFAULT '0',
  `maintenance` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_nf3_upgrades`
--

INSERT INTO `wp_nf3_upgrades` (`id`, `cache`, `stage`, `maintenance`) VALUES
(1, 'a:4:{s:2:\"id\";i:1;s:6:\"fields\";a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2020-12-27 22:47:35\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2020-12-27 22:47:37\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2020-12-27 22:47:39\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2020-12-27 22:47:41\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}s:7:\"actions\";a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:25:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2020-12-27 22:47:44\";s:5:\"label\";s:16:\"Store Submission\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:0:\"\";s:13:\"email_subject\";s:0:\"\";s:13:\"email_message\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:26:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2020-12-27 22:47:45\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:24:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2020-12-27 22:47:47\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:29:\"New message from {field:name}\";s:13:\"email_message\";s:60:\"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:27:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2020-12-27 22:47:48\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:47:\"Thank you {field:name} for filling out my form!\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:0:\"\";s:13:\"email_subject\";s:0:\"\";s:13:\"email_message\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";}}}s:8:\"settings\";a:99:{s:5:\"title\";s:10:\"Contact Me\";s:3:\"key\";s:0:\"\";s:10:\"created_at\";s:19:\"2020-12-27 22:47:28\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"conditions\";a:0:{}s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:9:\"logged_in\";s:0:\"\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";}}', 4, b'0'),
(2, 'a:7:{s:2:\"id\";i:2;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:10:{i:0;a:2:{s:8:\"settings\";a:21:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:1;s:5:\"label\";s:14:\"Artwork\'s name\";s:4:\"type\";s:9:\"firstname\";s:3:\"key\";s:28:\"artwork_s_name_1609109711542\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:14:\"one-half first\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:21:\"custom_name_attribute\";s:5:\"fname\";s:11:\"field_label\";s:10:\"First Name\";s:9:\"field_key\";s:23:\"firstname_1523908368154\";s:23:\"personally_identifiable\";s:1:\"1\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:5;}i:1;a:2:{s:8:\"settings\";a:21:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:2;s:5:\"label\";s:15:\"Artwork\'s theme\";s:4:\"type\";s:8:\"lastname\";s:3:\"key\";s:29:\"artwork_s_theme_1609109730352\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";s:1:\"1\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:15:\"one-half second\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:21:\"custom_name_attribute\";s:5:\"lname\";s:14:\"drawerDisabled\";s:0:\"\";s:11:\"field_label\";s:9:\"Last Name\";s:9:\"field_key\";s:22:\"lastname_1523908369534\";s:23:\"personally_identifiable\";s:1:\"1\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:6;}i:2;a:2:{s:8:\"settings\";a:20:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:3;s:5:\"label\";s:13:\"Author\'s name\";s:4:\"type\";s:5:\"email\";s:3:\"key\";s:27:\"author_s_name_1609109746687\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";i:1;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:21:\"custom_name_attribute\";s:5:\"email\";s:11:\"field_label\";s:5:\"Email\";s:9:\"field_key\";s:19:\"email_1523908522614\";s:23:\"personally_identifiable\";s:1:\"1\";s:5:\"value\";s:0:\"\";}s:2:\"id\";i:7;}i:3;a:2:{s:8:\"settings\";a:24:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:4;s:5:\"label\";s:15:\"Author\'s resume\";s:4:\"type\";s:8:\"textarea\";s:3:\"key\";s:29:\"author_s_resume_1609110020660\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:2:\"15\";}i:4;a:2:{s:8:\"settings\";a:21:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:5;s:5:\"label\";s:5:\"Lenth\";s:4:\"type\";s:6:\"number\";s:3:\"key\";s:19:\"lenth_1609110212809\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:7:\"num_min\";s:0:\"\";s:7:\"num_max\";s:0:\"\";s:8:\"num_step\";s:1:\"1\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:2:\"16\";}i:5;a:2:{s:8:\"settings\";a:21:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:6;s:5:\"label\";s:5:\"Width\";s:4:\"type\";s:6:\"number\";s:3:\"key\";s:19:\"width_1609110240133\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:7:\"num_min\";s:0:\"\";s:7:\"num_max\";s:0:\"\";s:8:\"num_step\";s:1:\"1\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:2:\"17\";}i:6;a:2:{s:8:\"settings\";a:21:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:7;s:5:\"label\";s:6:\"Height\";s:4:\"type\";s:6:\"number\";s:3:\"key\";s:20:\"height_1609110258122\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"manual_key\";b:0;s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:7:\"num_min\";s:0:\"\";s:7:\"num_max\";s:0:\"\";s:8:\"num_step\";s:1:\"1\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:2:\"18\";}i:7;a:2:{s:8:\"settings\";a:17:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:8;s:4:\"type\";s:10:\"listselect\";s:5:\"label\";s:13:\"Material used\";s:3:\"key\";s:27:\"material_used_1609110317235\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";s:1:\"1\";s:7:\"options\";a:2:{i:0;a:10:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"order\";i:0;s:3:\"new\";b:0;s:7:\"options\";a:0:{}s:5:\"label\";s:6:\"Madera\";s:5:\"value\";s:6:\"madera\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}}i:1;a:10:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"order\";i:1;s:3:\"new\";b:0;s:7:\"options\";a:0:{}s:5:\"label\";s:5:\"Plomo\";s:5:\"value\";s:5:\"plomo\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}}}s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:14:\"drawerDisabled\";b:0;s:11:\"field_label\";s:12:\"Enquiry Type\";s:9:\"field_key\";s:26:\"enquiry_type_1523908495090\";}s:2:\"id\";i:10;}i:8;a:2:{s:8:\"settings\";a:15:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:9;s:5:\"label\";s:14:\"Technique used\";s:4:\"type\";s:10:\"listselect\";s:3:\"key\";s:28:\"technique_used_1609110371056\";s:9:\"label_pos\";s:7:\"default\";s:8:\"required\";b:0;s:7:\"options\";a:1:{i:0;a:10:{s:6:\"errors\";a:0:{}s:11:\"max_options\";i:0;s:5:\"order\";i:0;s:3:\"new\";b:0;s:7:\"options\";a:0:{}s:5:\"label\";s:18:\"Óleo sobre lienzo\";s:5:\"value\";s:17:\"oleo-sobre-lienzo\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:12:\"settingModel\";a:10:{s:8:\"settings\";b:0;s:15:\"hide_merge_tags\";b:0;s:5:\"error\";b:0;s:4:\"name\";s:7:\"options\";s:4:\"type\";s:15:\"option-repeater\";s:5:\"label\";s:159:\"Options <a href=\"#\" class=\"nf-add-new\">Add New</a> <a href=\"#\" class=\"extra nf-open-import-tooltip\"><i class=\"fa fa-sign-in\" aria-hidden=\"true\"></i> Import</a>\";s:5:\"width\";s:4:\"full\";s:5:\"group\";s:0:\"\";s:5:\"value\";a:3:{i:0;a:5:{s:5:\"label\";s:3:\"One\";s:5:\"value\";s:3:\"one\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:0;}i:1;a:5:{s:5:\"label\";s:3:\"Two\";s:5:\"value\";s:3:\"two\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:1;}i:2;a:5:{s:5:\"label\";s:5:\"Three\";s:5:\"value\";s:5:\"three\";s:4:\"calc\";s:0:\"\";s:8:\"selected\";i:0;s:5:\"order\";i:2;}}s:7:\"columns\";a:4:{s:5:\"label\";a:2:{s:6:\"header\";s:5:\"Label\";s:7:\"default\";s:0:\"\";}s:5:\"value\";a:2:{s:6:\"header\";s:5:\"Value\";s:7:\"default\";s:0:\"\";}s:4:\"calc\";a:2:{s:6:\"header\";s:10:\"Calc Value\";s:7:\"default\";s:0:\"\";}s:8:\"selected\";a:2:{s:6:\"header\";s:45:\"<span class=\"dashicons dashicons-yes\"></span>\";s:7:\"default\";i:0;}}}}}s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";s:2:\"19\";}i:9;a:2:{s:8:\"settings\";a:13:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";i:10;s:4:\"type\";s:6:\"submit\";s:5:\"label\";s:4:\"Send\";s:16:\"processing_label\";s:10:\"Processing\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:18:\"send_1609110397880\";s:11:\"field_label\";s:6:\"Submit\";s:9:\"field_key\";s:20:\"submit_1523908548082\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:14;}}s:7:\"actions\";a:3:{i:0;a:2:{s:8:\"settings\";a:26:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2018-04-16 19:55:48\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:42:\"Your form has been successfully submitted.\";s:5:\"order\";s:1:\"1\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:42:\"Your form has been successfully submitted.\";}s:2:\"id\";i:6;}i:1;a:2:{s:8:\"settings\";a:23:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"0\";s:10:\"created_at\";s:19:\"2018-04-16 19:55:48\";s:5:\"label\";s:11:\"Admin Email\";s:5:\"order\";s:1:\"2\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";}s:2:\"id\";i:7;}i:2;a:2:{s:8:\"settings\";a:30:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"0\";s:10:\"created_at\";s:19:\"2018-04-16 19:55:48\";s:5:\"label\";s:16:\"Store Submission\";s:5:\"order\";s:1:\"3\";s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:1:\"0\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:8:\"reply_to\";s:0:\"\";s:13:\"email_subject\";s:22:\"Ninja Forms Submission\";s:13:\"email_message\";s:14:\"{fields_table}\";s:19:\"email_message_plain\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:42:\"Your form has been successfully submitted.\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:5;}}s:8:\"settings\";a:33:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:1;s:5:\"title\";s:16:\"Appraise artwork\";s:10:\"created_at\";s:19:\"2020-12-27 17:54:16\";s:10:\"form_title\";s:7:\"Enquiry\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"show_title\";s:1:\"0\";s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:9:\"logged_in\";i:1;s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:3:\"key\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:8:\"currency\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:17:\"not_logged_in_msg\";s:0:\"\";s:13:\"sub_limit_msg\";s:42:\"The form has reached its submission limit.\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:10:{i:0;s:28:\"artwork_s_name_1609109711542\";i:1;s:29:\"artwork_s_theme_1609109730352\";i:2;s:27:\"author_s_name_1609109746687\";i:3;s:29:\"author_s_resume_1609110020660\";i:4;s:19:\"lenth_1609110212809\";i:5;s:19:\"width_1609110240133\";i:6;s:20:\"height_1609110258122\";i:7;s:27:\"material_used_1609110317235\";i:8;s:28:\"technique_used_1609110371056\";i:9;s:18:\"send_1609110397880\";}s:14:\"drawerDisabled\";b:0;s:17:\"allow_public_link\";i:0;s:10:\"embed_form\";s:0:\"\";s:19:\"changeEmailErrorMsg\";s:0:\"\";s:18:\"changeDateErrorMsg\";s:0:\"\";s:20:\"confirmFieldErrorMsg\";s:0:\"\";s:22:\"fieldNumberNumMinError\";s:0:\"\";s:22:\"fieldNumberNumMaxError\";s:0:\"\";s:22:\"fieldNumberIncrementBy\";s:0:\"\";s:23:\"formErrorsCorrectErrors\";s:0:\"\";s:21:\"validateRequiredField\";s:0:\"\";s:21:\"honeypotHoneypotError\";s:0:\"\";s:20:\"fieldsMarkedRequired\";s:0:\"\";}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}', 4, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/galeria_arte', 'yes'),
(2, 'home', 'http://localhost/galeria_arte', 'yes'),
(3, 'blogname', 'Galeria de Arte', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'aqmunoz@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:213:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:29:\"vendors/([^/]*)/page/([0-9]+)\";s:69:\"index.php?post_type=product&vendor_shop=$matches[1]&paged=$matches[2]\";s:15:\"vendors/([^/]*)\";s:51:\"index.php?post_type=product&vendor_shop=$matches[1]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:8:\"nomen/?$\";s:32:\"index.php?post_type=nomenclators\";s:38:\"nomen/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=nomenclators&feed=$matches[1]\";s:33:\"nomen/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=nomenclators&feed=$matches[1]\";s:25:\"nomen/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=nomenclators&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:45:\"shop_order_vendor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"shop_order_vendor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"shop_order_vendor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"shop_order_vendor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"shop_order_vendor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"shop_order_vendor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"shop_order_vendor/([^/]+)/embed/?$\";s:50:\"index.php?shop_order_vendor=$matches[1]&embed=true\";s:38:\"shop_order_vendor/([^/]+)/trackback/?$\";s:44:\"index.php?shop_order_vendor=$matches[1]&tb=1\";s:46:\"shop_order_vendor/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?shop_order_vendor=$matches[1]&paged=$matches[2]\";s:53:\"shop_order_vendor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?shop_order_vendor=$matches[1]&cpage=$matches[2]\";s:43:\"shop_order_vendor/([^/]+)/wc-api(/(.*))?/?$\";s:58:\"index.php?shop_order_vendor=$matches[1]&wc-api=$matches[3]\";s:49:\"shop_order_vendor/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"shop_order_vendor/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"shop_order_vendor/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?shop_order_vendor=$matches[1]&page=$matches[2]\";s:34:\"shop_order_vendor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"shop_order_vendor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"shop_order_vendor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"shop_order_vendor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"shop_order_vendor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"shop_order_vendor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"nomen/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"nomen/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"nomen/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"nomen/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"nomen/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"nomen/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"nomen/([^/]+)/embed/?$\";s:45:\"index.php?nomenclators=$matches[1]&embed=true\";s:26:\"nomen/([^/]+)/trackback/?$\";s:39:\"index.php?nomenclators=$matches[1]&tb=1\";s:46:\"nomen/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?nomenclators=$matches[1]&feed=$matches[2]\";s:41:\"nomen/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?nomenclators=$matches[1]&feed=$matches[2]\";s:34:\"nomen/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?nomenclators=$matches[1]&paged=$matches[2]\";s:41:\"nomen/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?nomenclators=$matches[1]&cpage=$matches[2]\";s:31:\"nomen/([^/]+)/wc-api(/(.*))?/?$\";s:53:\"index.php?nomenclators=$matches[1]&wc-api=$matches[3]\";s:37:\"nomen/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:48:\"nomen/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:30:\"nomen/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?nomenclators=$matches[1]&page=$matches[2]\";s:22:\"nomen/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"nomen/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"nomen/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"nomen/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"nomen/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"nomen/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:61:\"gallery-nomenclators/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?gallery-nomenclators=$matches[1]&feed=$matches[2]\";s:56:\"gallery-nomenclators/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?gallery-nomenclators=$matches[1]&feed=$matches[2]\";s:37:\"gallery-nomenclators/([^/]+)/embed/?$\";s:53:\"index.php?gallery-nomenclators=$matches[1]&embed=true\";s:49:\"gallery-nomenclators/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?gallery-nomenclators=$matches[1]&paged=$matches[2]\";s:31:\"gallery-nomenclators/([^/]+)/?$\";s:42:\"index.php?gallery-nomenclators=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:34:\"(.?.+?)/become-a-vendor(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&become-a-vendor=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:9:{i:0;s:25:\"adminimize/adminimize.php\";i:1;s:43:\"gc-appraise-artwork/gc-appraise-artwork.php\";i:2;s:49:\"gc-nomenclator-artwork/gc-nomenclator-artwork.php\";i:3;s:31:\"wc-vendors/class-wc-vendors.php\";i:4;s:39:\"woocommerce-admin/woocommerce-admin.php\";i:5;s:53:\"woocommerce-pay-per-post/woocommerce-pay-per-post.php\";i:6;s:80:\"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php\";i:7;s:27:\"woocommerce/woocommerce.php\";i:8;s:53:\"wpfront-user-role-editor/wpfront-user-role-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:67:\"C:\\xampp\\htdocs\\galeria_arte/wp-content/themes/ample/navigation.php\";i:1;s:62:\"C:\\xampp\\htdocs\\galeria_arte/wp-content/themes/ample/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'ample', 'yes'),
(41, 'stylesheet', 'ample', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:5:{s:43:\"gc-appraise-artwork/gc-appraise-artwork.php\";s:28:\"delete_plugin_database_table\";s:43:\"ag-appraise-artwork/ag-appraise-artwork.php\";s:28:\"delete_plugin_database_table\";s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";s:31:\"gc-type-nomen/gc-type-nomen.php\";s:34:\"delete_plugin_nomen_database_table\";s:25:\"adminimize/adminimize.php\";s:24:\"_mw_adminimize_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '7', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1622380660', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:10:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:190:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:18:\"wcv_vendor_enabled\";b:1;s:19:\"wcv_vendor_verified\";b:1;s:18:\"wcv_vendor_trusted\";b:1;s:19:\"wcv_manage_products\";b:1;s:17:\"wcv_manage_orders\";b:1;s:18:\"wcv_manage_coupons\";b:1;s:18:\"wcv_manage_ratings\";b:1;s:19:\"wcv_manage_settings\";b:1;s:19:\"wcv_manage_shipping\";b:1;s:14:\"wcv_view_store\";b:1;s:23:\"wcv_view_sales_overview\";b:1;s:27:\"wcv_view_sales_report_chart\";b:1;s:22:\"wcv_view_vendor_notice\";b:1;s:21:\"wcv_view_order_report\";b:1;s:23:\"wcv_view_order_overview\";b:1;s:23:\"wcv_view_review_reports\";b:1;s:30:\"wcv_view_product_status_report\";b:1;s:15:\"wcv_add_product\";b:1;s:16:\"wcv_edit_product\";b:1;s:26:\"wcv_edit_product_published\";b:1;s:19:\"wcv_publish_product\";b:1;s:18:\"wcv_delete_product\";b:1;s:21:\"wcv_duplicate_product\";b:1;s:20:\"wcv_featured_product\";b:1;s:16:\"wcv_view_product\";b:1;s:18:\"wcv_import_product\";b:1;s:18:\"wcv_export_product\";b:1;s:14:\"wcv_view_order\";b:1;s:18:\"wcv_add_order_note\";b:1;s:19:\"wcv_view_order_note\";b:1;s:23:\"wcv_manage_order_export\";b:1;s:23:\"wcv_manage_order_status\";b:1;s:13:\"wcv_view_name\";b:1;s:14:\"wcv_view_phone\";b:1;s:22:\"wcv_view_shipping_name\";b:1;s:17:\"wcv_view_shipping\";b:1;s:16:\"wcv_view_billing\";b:1;s:14:\"wcv_view_email\";b:1;s:14:\"wcv_add_coupon\";b:1;s:15:\"wcv_edit_coupon\";b:1;s:17:\"wcv_delete_coupon\";b:1;s:24:\"wcv_view_overview_report\";b:1;s:26:\"wcv_view_daily_sale_report\";b:1;s:27:\"wcv_view_top_selling_report\";b:1;s:27:\"wcv_view_top_earning_report\";b:1;s:25:\"wcv_view_statement_report\";b:1;s:22:\"wcv_view_overview_menu\";b:1;s:23:\"wcv_view_dashboard_menu\";b:1;s:21:\"wcv_view_product_menu\";b:1;s:19:\"wcv_view_order_menu\";b:1;s:20:\"wcv_view_coupon_menu\";b:1;s:21:\"wcv_view_ratings_menu\";b:1;s:28:\"wcv_view_store_settings_menu\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:10:\"edit_roles\";b:1;s:12:\"delete_roles\";b:1;s:15:\"edit_role_menus\";b:1;s:27:\"edit_posts_role_permissions\";b:1;s:27:\"edit_pages_role_permissions\";b:1;s:25:\"edit_nav_menu_permissions\";b:1;s:23:\"edit_content_shortcodes\";b:1;s:25:\"delete_content_shortcodes\";b:1;s:20:\"edit_login_redirects\";b:1;s:22:\"delete_login_redirects\";b:1;s:15:\"bulk_edit_roles\";b:1;s:23:\"edit_widget_permissions\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;s:23:\"edit_users_higher_level\";b:1;s:25:\"delete_users_higher_level\";b:1;s:26:\"promote_users_higher_level\";b:1;s:29:\"promote_users_to_higher_level\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:39:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:15:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:150:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:18:\"wcv_vendor_enabled\";b:1;s:19:\"wcv_vendor_verified\";b:1;s:18:\"wcv_vendor_trusted\";b:1;s:19:\"wcv_manage_products\";b:1;s:17:\"wcv_manage_orders\";b:1;s:18:\"wcv_manage_coupons\";b:1;s:18:\"wcv_manage_ratings\";b:1;s:19:\"wcv_manage_settings\";b:1;s:19:\"wcv_manage_shipping\";b:1;s:14:\"wcv_view_store\";b:1;s:23:\"wcv_view_sales_overview\";b:1;s:27:\"wcv_view_sales_report_chart\";b:1;s:22:\"wcv_view_vendor_notice\";b:1;s:21:\"wcv_view_order_report\";b:1;s:23:\"wcv_view_order_overview\";b:1;s:23:\"wcv_view_review_reports\";b:1;s:30:\"wcv_view_product_status_report\";b:1;s:15:\"wcv_add_product\";b:1;s:16:\"wcv_edit_product\";b:1;s:26:\"wcv_edit_product_published\";b:1;s:19:\"wcv_publish_product\";b:1;s:18:\"wcv_delete_product\";b:1;s:21:\"wcv_duplicate_product\";b:1;s:20:\"wcv_featured_product\";b:1;s:16:\"wcv_view_product\";b:1;s:18:\"wcv_import_product\";b:1;s:18:\"wcv_export_product\";b:1;s:14:\"wcv_view_order\";b:1;s:18:\"wcv_add_order_note\";b:1;s:19:\"wcv_view_order_note\";b:1;s:23:\"wcv_manage_order_export\";b:1;s:23:\"wcv_manage_order_status\";b:1;s:13:\"wcv_view_name\";b:1;s:14:\"wcv_view_phone\";b:1;s:22:\"wcv_view_shipping_name\";b:1;s:17:\"wcv_view_shipping\";b:1;s:16:\"wcv_view_billing\";b:1;s:14:\"wcv_view_email\";b:1;s:14:\"wcv_add_coupon\";b:1;s:15:\"wcv_edit_coupon\";b:1;s:17:\"wcv_delete_coupon\";b:1;s:24:\"wcv_view_overview_report\";b:1;s:26:\"wcv_view_daily_sale_report\";b:1;s:27:\"wcv_view_top_selling_report\";b:1;s:27:\"wcv_view_top_earning_report\";b:1;s:25:\"wcv_view_statement_report\";b:1;s:22:\"wcv_view_overview_menu\";b:1;s:23:\"wcv_view_dashboard_menu\";b:1;s:21:\"wcv_view_product_menu\";b:1;s:19:\"wcv_view_order_menu\";b:1;s:20:\"wcv_view_coupon_menu\";b:1;s:21:\"wcv_view_ratings_menu\";b:1;s:28:\"wcv_view_store_settings_menu\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:14:\"pending_vendor\";a:2:{s:4:\"name\";s:14:\"Pending Vendor\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}s:6:\"vendor\";a:2:{s:4:\"name\";s:6:\"Vendor\";s:12:\"capabilities\";a:72:{s:20:\"assign_product_terms\";b:1;s:13:\"edit_products\";b:1;s:12:\"edit_product\";b:1;s:23:\"edit_published_products\";b:1;s:25:\"delete_published_products\";b:1;s:15:\"delete_products\";b:1;s:12:\"delete_posts\";b:1;s:14:\"manage_product\";b:1;s:16:\"publish_products\";b:1;s:4:\"read\";b:1;s:13:\"read_products\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:24:\"view_woocommerce_reports\";b:0;s:18:\"wcv_vendor_enabled\";b:1;s:19:\"wcv_vendor_verified\";b:1;s:18:\"wcv_vendor_trusted\";b:1;s:19:\"wcv_manage_products\";b:1;s:17:\"wcv_manage_orders\";b:1;s:18:\"wcv_manage_coupons\";b:1;s:18:\"wcv_manage_ratings\";b:1;s:19:\"wcv_manage_settings\";b:1;s:19:\"wcv_manage_shipping\";b:1;s:14:\"wcv_view_store\";b:1;s:23:\"wcv_view_sales_overview\";b:1;s:27:\"wcv_view_sales_report_chart\";b:1;s:22:\"wcv_view_vendor_notice\";b:1;s:21:\"wcv_view_order_report\";b:1;s:23:\"wcv_view_order_overview\";b:1;s:23:\"wcv_view_review_reports\";b:1;s:30:\"wcv_view_product_status_report\";b:1;s:15:\"wcv_add_product\";b:1;s:16:\"wcv_edit_product\";b:1;s:26:\"wcv_edit_product_published\";b:1;s:19:\"wcv_publish_product\";b:1;s:18:\"wcv_delete_product\";b:1;s:21:\"wcv_duplicate_product\";b:1;s:20:\"wcv_featured_product\";b:1;s:16:\"wcv_view_product\";b:1;s:18:\"wcv_import_product\";b:1;s:18:\"wcv_export_product\";b:1;s:14:\"wcv_view_order\";b:1;s:18:\"wcv_add_order_note\";b:1;s:19:\"wcv_view_order_note\";b:1;s:23:\"wcv_manage_order_export\";b:1;s:23:\"wcv_manage_order_status\";b:1;s:13:\"wcv_view_name\";b:1;s:14:\"wcv_view_phone\";b:1;s:22:\"wcv_view_shipping_name\";b:1;s:17:\"wcv_view_shipping\";b:1;s:16:\"wcv_view_billing\";b:1;s:14:\"wcv_view_email\";b:1;s:14:\"wcv_add_coupon\";b:1;s:15:\"wcv_edit_coupon\";b:1;s:17:\"wcv_delete_coupon\";b:1;s:24:\"wcv_view_overview_report\";b:1;s:26:\"wcv_view_daily_sale_report\";b:1;s:27:\"wcv_view_top_selling_report\";b:1;s:27:\"wcv_view_top_earning_report\";b:1;s:25:\"wcv_view_statement_report\";b:1;s:22:\"wcv_view_overview_menu\";b:1;s:23:\"wcv_view_dashboard_menu\";b:1;s:21:\"wcv_view_product_menu\";b:1;s:19:\"wcv_view_order_menu\";b:1;s:20:\"wcv_view_coupon_menu\";b:1;s:21:\"wcv_view_ratings_menu\";b:1;s:28:\"wcv_view_store_settings_menu\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:7:\"tasador\";a:2:{s:4:\"name\";s:7:\"Tasador\";s:12:\"capabilities\";a:40:{s:4:\"read\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:18:\"read_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:17:\"manage_categories\";b:1;s:12:\"upload_files\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;s:13:\"publish_pages\";b:1;s:10:\"edit_pages\";b:1;s:12:\"delete_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:17:\"edit_others_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:17:\"moderate_comments\";b:1;s:14:\"manage_options\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"manage_links\";b:1;s:7:\"level_0\";b:1;s:7:\"level_1\";b:1;s:7:\"level_2\";b:1;s:7:\"level_3\";b:1;s:7:\"level_4\";b:1;s:7:\"level_5\";b:1;s:7:\"level_6\";b:1;s:7:\"level_7\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:11:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"ample_right_sidebar\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:18:\"ample_left_sidebar\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:22:\"ample_business_sidebar\";a:0:{}s:28:\"ample_error_404_page_sidebar\";a:0:{}s:26:\"ample_contact_page_sidebar\";a:0:{}s:21:\"ample_footer_sidebar1\";a:0:{}s:21:\"ample_footer_sidebar2\";a:0:{}s:21:\"ample_footer_sidebar3\";a:0:{}s:21:\"ample_footer_sidebar4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:19:{i:1609991680;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1609993075;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1609993207;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1609993217;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1609994664;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1609994684;a:1:{s:26:\"upgrader_scheduled_cleanup\";a:1:{s:32:\"f895dc1f335924ef681df47ba50790a4\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:108;}}}}i:1610004002;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1610025474;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610025475;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1610025480;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610025483;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610025610;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610025612;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610036402;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610064000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1610543874;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1610716862;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}i:1611788915;a:1:{s:13:\"nf_optin_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"nf-monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(115, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"last_checked\";i:1609987438;}', 'no'),
(119, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1609987485;}', 'no'),
(122, 'can_compress_scripts', '1', 'no'),
(125, 'action_scheduler_hybrid_store_demarkation', '5', 'yes'),
(126, 'schema-ActionScheduler_StoreSchema', '3.0.1606828780', 'yes'),
(127, 'schema-ActionScheduler_LoggerSchema', '2.0.1606828780', 'yes'),
(130, 'woocommerce_schema_version', '430', 'yes'),
(131, 'woocommerce_store_address', 'Calle Falsa', 'yes'),
(132, 'woocommerce_store_address_2', '', 'yes'),
(133, 'woocommerce_store_city', 'Valencia', 'yes'),
(134, 'woocommerce_default_country', 'ES:V', 'yes'),
(135, 'woocommerce_store_postcode', '80400', 'yes'),
(136, 'woocommerce_allowed_countries', 'all', 'yes'),
(137, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(138, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(139, 'woocommerce_ship_to_countries', '', 'yes'),
(140, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(141, 'woocommerce_default_customer_address', 'base', 'yes'),
(142, 'woocommerce_calc_taxes', 'no', 'yes'),
(143, 'woocommerce_enable_coupons', 'yes', 'yes'),
(144, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(145, 'woocommerce_currency', 'EUR', 'yes'),
(146, 'woocommerce_currency_pos', 'left', 'yes'),
(147, 'woocommerce_price_thousand_sep', '.', 'yes'),
(148, 'woocommerce_price_decimal_sep', ',', 'yes'),
(149, 'woocommerce_price_num_decimals', '2', 'yes'),
(150, 'woocommerce_shop_page_id', '7', 'yes'),
(151, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(152, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(153, 'woocommerce_placeholder_image', '6', 'yes'),
(154, 'woocommerce_weight_unit', 'kg', 'yes'),
(155, 'woocommerce_dimension_unit', 'cm', 'yes'),
(156, 'woocommerce_enable_reviews', 'yes', 'yes'),
(157, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(158, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(159, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(160, 'woocommerce_review_rating_required', 'yes', 'no'),
(161, 'woocommerce_manage_stock', 'yes', 'yes'),
(162, 'woocommerce_hold_stock_minutes', '60', 'no'),
(163, 'woocommerce_notify_low_stock', 'yes', 'no'),
(164, 'woocommerce_notify_no_stock', 'yes', 'no'),
(165, 'woocommerce_stock_email_recipient', 'aqmunoz@gmail.com', 'no'),
(166, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(167, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(168, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(169, 'woocommerce_stock_format', '', 'yes'),
(170, 'woocommerce_file_download_method', 'force', 'no'),
(171, 'woocommerce_downloads_require_login', 'no', 'no'),
(172, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(173, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(174, 'woocommerce_prices_include_tax', 'no', 'yes'),
(175, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(176, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(177, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(178, 'woocommerce_tax_classes', '', 'yes'),
(179, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(180, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(181, 'woocommerce_price_display_suffix', '', 'yes'),
(182, 'woocommerce_tax_total_display', 'itemized', 'no'),
(183, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(184, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(185, 'woocommerce_ship_to_destination', 'billing', 'no'),
(186, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(187, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(188, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(189, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(190, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(191, 'woocommerce_registration_generate_username', 'yes', 'no'),
(192, 'woocommerce_registration_generate_password', 'yes', 'no'),
(193, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(194, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(195, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(196, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(197, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(198, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(199, 'woocommerce_trash_pending_orders', '', 'no'),
(200, 'woocommerce_trash_failed_orders', '', 'no'),
(201, 'woocommerce_trash_cancelled_orders', '', 'no'),
(202, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(203, 'woocommerce_email_from_name', 'Galeria de Arte', 'no'),
(204, 'woocommerce_email_from_address', 'aqmunoz@gmail.com', 'no'),
(205, 'woocommerce_email_header_image', '', 'no'),
(206, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(207, 'woocommerce_email_base_color', '#96588a', 'no'),
(208, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(209, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(210, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(211, 'woocommerce_cart_page_id', '8', 'no'),
(212, 'woocommerce_checkout_page_id', '9', 'no'),
(213, 'woocommerce_myaccount_page_id', '10', 'no'),
(214, 'woocommerce_terms_page_id', '', 'no'),
(215, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(216, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(217, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(218, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(219, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(220, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(221, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(222, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(223, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(224, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(225, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(226, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(227, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(228, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(229, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(230, 'woocommerce_api_enabled', 'no', 'yes'),
(231, 'woocommerce_allow_tracking', 'no', 'no'),
(232, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(233, 'woocommerce_single_image_width', '600', 'yes'),
(234, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(235, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(236, 'woocommerce_demo_store', 'no', 'no'),
(237, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:8:\"/product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:1;}', 'yes'),
(238, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(239, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(240, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(241, 'product_cat_children', 'a:0:{}', 'yes'),
(242, 'default_product_cat', '15', 'yes'),
(245, 'woocommerce_version', '4.7.1', 'yes'),
(246, 'woocommerce_db_version', '4.7.1', 'yes'),
(249, 'recently_activated', 'a:2:{s:43:\"gc-appraise-artwork/gc-appraise-artwork.php\";i:1609817841;s:31:\"gc-type-nomen/gc-type-nomen.php\";i:1609817232;}', 'yes'),
(250, 'action_scheduler_lock_async-request-runner', '1609991678', 'yes'),
(251, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(252, 'theme_mods_twentytwenty', 'a:4:{s:16:\"background_color\";s:3:\"fff\";s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1609131187;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(253, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"2DAR9fFtopQppZ8cdUhRJxHtU6Py9Hv5\";}', 'yes'),
(254, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(255, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(256, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(257, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(259, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'woocommerce_admin_version', '1.6.3', 'yes'),
(270, 'woocommerce_admin_install_timestamp', '1606828810', 'yes'),
(273, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1606828810', 'yes'),
(275, 'wc_blocks_db_schema_version', '260', 'yes'),
(276, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:0;}', 'yes'),
(277, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(278, '_transient_woocommerce_reports-transient-version', '1609987456', 'yes'),
(293, 'woocommerce_onboarding_profile', 'a:9:{s:12:\"setup_client\";b:0;s:8:\"industry\";a:1:{i:0;a:2:{s:4:\"slug\";s:5:\"other\";s:6:\"detail\";s:3:\"Art\";}}s:13:\"product_types\";a:2:{i:0;s:8:\"physical\";i:1;s:9:\"downloads\";}s:13:\"product_count\";s:1:\"0\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:0:{}s:5:\"theme\";s:12:\"twentytwenty\";s:7:\"plugins\";s:9:\"installed\";s:9:\"completed\";b:1;}', 'yes'),
(294, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(295, 'wc_remote_inbox_notifications_specs', 'a:0:{}', 'yes'),
(296, '_transient_shipping-transient-version', '1606829031', 'yes'),
(298, 'woocommerce_task_list_tracked_completed_tasks', 'a:1:{i:0;s:13:\"store_details\";}', 'yes'),
(304, 'woocommerce_task_list_welcome_modal_dismissed', 'yes', 'yes'),
(321, 'wc_admin_version', '0.23.3', 'yes'),
(322, 'wc_admin_install_timestamp', '1606829254', 'yes'),
(328, 'wcvendors_vendor_allow_registration', 'yes', 'yes'),
(329, 'wcvendors_terms_and_conditions_visibility', 'yes', 'yes'),
(330, 'wcvendors_vendor_approve_registration', 'no', 'yes'),
(331, 'wcvendors_vendor_give_taxes', 'no', 'yes'),
(332, 'wcvendors_vendor_give_shipping', 'no', 'yes'),
(333, 'wcvendors_vendor_commission_rate', '50', 'yes'),
(334, 'wcvendors_capability_products_enabled', 'yes', 'yes'),
(335, 'wcvendors_capability_products_edit', 'yes', 'yes'),
(336, 'wcvendors_capability_products_live', 'yes', 'yes'),
(337, 'wcvendors_capability_orders_enabled', 'yes', 'yes'),
(338, 'wcvendors_capability_orders_export', 'yes', 'yes'),
(339, 'wcvendors_capability_frontend_reports', 'yes', 'yes'),
(340, 'wcvendors_capability_product_featured', 'no', 'yes'),
(341, 'wcvendors_capability_product_duplicate', 'no', 'yes'),
(342, 'wcvendors_capability_product_sku', 'no', 'yes'),
(343, 'wcvendors_capability_product_taxes', 'no', 'yes'),
(344, 'wcvendors_capability_order_read_notes', 'yes', 'yes'),
(345, 'wcvendors_capability_order_update_notes', 'yes', 'yes'),
(346, 'wcvendors_capability_order_customer_name', 'yes', 'yes'),
(347, 'wcvendors_capability_order_customer_shipping_name', 'yes', 'yes'),
(348, 'wcvendors_capability_order_customer_billing', 'yes', 'yes'),
(349, 'wcvendors_capability_order_customer_shipping', 'yes', 'yes'),
(350, 'wcvendors_capability_order_customer_email', 'yes', 'yes'),
(351, 'wcvendors_capability_order_customer_phone', 'yes', 'yes'),
(352, 'wcvendors_vendor_dashboard_page_id', '', 'yes'),
(353, 'wcvendors_shop_settings_page_id', '', 'yes'),
(354, 'wcvendors_product_orders_page_id', '', 'yes'),
(355, 'wcvendors_vendors_page_id', '', 'yes'),
(356, 'wcvendors_vendor_terms_page_id', '', 'yes'),
(357, 'wcvendors_vendor_shop_permalink', 'vendors', 'yes'),
(358, 'wcvendors_display_shop_headers', 'no', 'yes'),
(359, 'wcvendors_store_single_headers', 'no', 'yes'),
(360, 'wcvendors_display_shop_description', 'no', 'yes'),
(361, 'wcvendors_display_shop_description_html', 'no', 'yes'),
(362, 'wcvendors_display_shop_display_name', 'shop_name', 'yes'),
(363, 'wcvendors_vendor_singular', 'Vendor', 'yes'),
(364, 'wcvendors_vendor_plural', 'Vendors', 'yes'),
(365, 'wcvendors_display_label_sold_by_enable', 'yes', 'yes'),
(366, 'wcvendors_label_sold_by_separator', ':', 'yes'),
(367, 'wcvendors_label_sold_by', 'Sold By', 'yes'),
(368, 'wcvendors_become_a_vendor_my_account_link_visibility', 'yes', 'yes'),
(369, 'wcvendors_label_become_a_vendor', 'Become a', 'yes'),
(370, 'wcvendors_label_store_info_enable', 'yes', 'yes'),
(371, 'wcvendors_display_label_store_info', 'Store Info', 'yes'),
(372, 'wcvendors_display_advanced_stylesheet', '', 'yes'),
(373, 'wcvendors_redirect_wp_registration_to_woocommerce_myaccount', 'no', 'yes'),
(374, 'wcvendors_uninstall_delete_all_data', 'no', 'yes'),
(375, 'wcvendors_uninstall_delete_custom_table', 'no', 'yes'),
(376, 'wcvendors_uninstall_delete_settings_options', 'no', 'yes'),
(377, 'wcvendors_uninstall_delete_custom_pages', 'no', 'yes'),
(378, 'wcvendors_uninstall_delete_vendor_roles', 'no', 'yes'),
(379, 'wcvendors_install_date', '2020-12-01', 'yes'),
(380, 'wcvendors_version', '2.1.17', 'yes'),
(381, 'wcvendors_db_version', '2.1.17', 'yes'),
(383, 'wcvendors_admin_notices', 'a:0:{}', 'yes'),
(386, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:54:\"woocommerce-pay-per-post/vendor/freemius/wordpress-sdk\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.2\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1609099986;s:11:\"plugin_path\";s:27:\"woocommerce/woocommerce.php\";}}s:7:\"abspath\";s:29:\"C:\\xampp\\htdocs\\galeria_arte/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:27:\"woocommerce/woocommerce.php\";s:8:\"sdk_path\";s:54:\"woocommerce-pay-per-post/vendor/freemius/wordpress-sdk\";s:7:\"version\";s:5:\"2.3.2\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1609099986;}}', 'yes'),
(387, 'fs_debug_mode', '', 'yes'),
(388, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:1664;a:3:{s:4:\"slug\";s:24:\"woocommerce-pay-per-post\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:53:\"woocommerce-pay-per-post/woocommerce-pay-per-post.php\";}}s:11:\"plugin_data\";a:1:{s:24:\"woocommerce-pay-per-post\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:53:\"woocommerce-pay-per-post/woocommerce-pay-per-post.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1606829332;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:6:\"2.4.15\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:0;s:4:\"host\";s:14:\"localhost:8080\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:0;s:9:\"timestamp\";i:1606829332;s:7:\"version\";s:6:\"2.4.15\";}s:21:\"trial_promotion_shown\";i:1609101202;s:30:\"affiliate_program_notice_shown\";i:1609690683;}}s:13:\"file_slug_map\";a:1:{s:53:\"woocommerce-pay-per-post/woocommerce-pay-per-post.php\";s:24:\"woocommerce-pay-per-post\";}s:7:\"plugins\";a:1:{s:24:\"woocommerce-pay-per-post\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:24:\"WooCommerce Pay Per Post\";s:4:\"slug\";s:24:\"woocommerce-pay-per-post\";s:12:\"premium_slug\";s:32:\"woocommerce-pay-per-post-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:3:\"all\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:53:\"woocommerce-pay-per-post/woocommerce-pay-per-post.php\";s:7:\"version\";s:6:\"2.4.15\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:7:\"Premium\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_3421f16894101749f184e4e1535da\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"1664\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"e061f8b62ef4de9f6bd3dee41b97f533\";s:13:\"admin_notices\";a:1:{s:24:\"woocommerce-pay-per-post\";a:0:{}}}', 'yes'),
(389, 'fs_options', 'a:1:{s:14:\"api_force_http\";b:0;}', 'yes'),
(390, 'wc_pay_per_post_custom_post_types', 'a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:7:\"product\";}', 'no'),
(391, 'wc_pay_per_post_needs_upgrade', 'false', 'no'),
(392, 'wc_pay_per_post_db_version', 'WC_PPP_PLUGIN_VERSION', 'no'),
(393, 'fs_api_cache', 'a:0:{}', 'no'),
(395, 'wpo_wcpdf_settings_general', 'a:4:{s:16:\"download_display\";s:7:\"display\";s:13:\"template_path\";s:103:\"C:\\xampp\\htdocs\\galeria_arte\\wp-content\\plugins\\woocommerce-pdf-invoices-packing-slips/templates/Simple\";s:13:\"currency_font\";s:0:\"\";s:10:\"paper_size\";s:2:\"a4\";}', 'yes'),
(396, 'wpo_wcpdf_documents_settings_invoice', 'a:1:{s:7:\"enabled\";i:1;}', 'yes'),
(397, 'wpo_wcpdf_documents_settings_packing-slip', 'a:1:{s:7:\"enabled\";i:1;}', 'yes'),
(398, 'wpo_wcpdf_settings_debug', 'a:2:{s:14:\"enable_cleanup\";i:1;s:12:\"cleanup_days\";i:7;}', 'yes'),
(401, 'wpo_wcpdf_version', '2.4.6', 'yes'),
(405, 'recovery_keys', 'a:0:{}', 'yes'),
(406, '_transient_orders-transient-version', '1609106791', 'yes'),
(414, 'finished_updating_comment_type', '1', 'yes'),
(421, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"9\",\"critical\":\"0\"}', 'yes'),
(429, '_transient_product_query-transient-version', '1609990472', 'yes'),
(440, '_transient_timeout_wc_customer_bought_product_ea825bcb3afcec2917aa18c078d9db5b', '1611698807', 'no'),
(441, '_transient_wc_customer_bought_product_ea825bcb3afcec2917aa18c078d9db5b', 'a:2:{s:7:\"version\";s:10:\"1609106791\";s:5:\"value\";a:2:{i:0;i:43;i:1;i:43;}}', 'no'),
(443, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(444, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(498, 'category_children', 'a:0:{}', 'yes'),
(526, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:0:{}s:7:\"updated\";i:1609987436;}', 'no'),
(528, '_transient_product-transient-version', '1609170197', 'yes'),
(530, '_transient_timeout_wc_product_loop_9066dc5cd33095d0f83d1842b048ba06', '1611698419', 'no'),
(531, '_transient_wc_product_loop_9066dc5cd33095d0f83d1842b048ba06', 'a:2:{s:7:\"version\";s:10:\"1609106369\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:43;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:-1;s:12:\"current_page\";i:1;}}', 'no'),
(536, 'woocommerce_bacs_settings', 'a:11:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:20:\"Direct bank transfer\";s:11:\"description\";s:176:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}', 'yes'),
(538, 'woocommerce_bacs_accounts', 'a:1:{i:0;a:6:{s:12:\"account_name\";s:3:\"BPA\";s:14:\"account_number\";s:6:\"123456\";s:9:\"bank_name\";s:3:\"BPA\";s:9:\"sort_code\";s:4:\"1234\";s:4:\"iban\";s:3:\"123\";s:3:\"bic\";s:7:\"1234566\";}}', 'yes'),
(579, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(597, 'wc_admin_last_orders_milestone', '1', 'yes'),
(626, 'ninja_forms_oauth_client_secret', 'sM0bE7bmXFKxgygzTb7DbIhrXBiLrp5ovsM7MC9X', 'yes'),
(627, 'ninja_forms_version', '3.4.33', 'yes'),
(628, 'ninja_forms_db_version', '1.4', 'no'),
(629, 'ninja_forms_required_updates', 'a:6:{s:19:\"CacheCollateActions\";s:19:\"2020-12-27 22:47:22\";s:17:\"CacheCollateForms\";s:19:\"2020-12-27 22:47:22\";s:18:\"CacheCollateFields\";s:19:\"2020-12-27 22:47:22\";s:19:\"CacheCollateObjects\";s:19:\"2020-12-27 22:47:22\";s:19:\"CacheCollateCleanup\";s:19:\"2020-12-27 22:47:22\";s:25:\"CacheFieldReconcilliation\";s:19:\"2020-12-27 22:47:22\";}', 'yes'),
(630, 'ninja_forms_settings', 'a:11:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";s:1:\"0\";s:16:\"builder_dev_mode\";s:1:\"1\";s:18:\"opinionated_styles\";s:5:\"light\";s:15:\"recaptcha_theme\";s:5:\"light\";s:15:\"currency_symbol\";s:5:\"&#36;\";}', 'yes'),
(631, 'ninja_forms_zuul', '73', 'no'),
(632, 'wp_nf_update_fields_batch_9627b381d4dc4aa19ac543d51a461964', 'a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2020-12-27 22:47:35\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2020-12-27 22:47:37\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2020-12-27 22:47:39\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2020-12-27 22:47:41\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}', 'no'),
(639, 'widget_ninja_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(640, 'ninja-forms-views-secret', '6kaVFeXcqQzHAz809HX7tchgYgoNgHY4dz2V9T9C', 'yes'),
(641, 'ninja_forms_needs_updates', '0', 'yes'),
(642, 'nf_admin_notice', 'a:1:{s:16:\"one_week_support\";a:2:{s:5:\"start\";s:8:\"1/3/2021\";s:3:\"int\";i:7;}}', 'yes'),
(644, 'nf_active_promotions', '{\"dashboard\":[{\"id\":\"personal-20\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-20\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"http:\\/\\/localhost\\/galeria_arte\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-20.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"personal-50\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-50\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"http:\\/\\/localhost\\/galeria_arte\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-50.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"sendwp-banner\",\"location\":\"dashboard\",\"content\":\"<span aria-label=\\\"SendWP. Getting WordPress email into an inbox shouldn\'t be that hard! Never miss another receipt, form submission, or any WordPress email ever again.\\\" style=\\\"cursor:pointer;width:800px;height:83px;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;background-image:url(\'http:\\/\\/localhost\\/galeria_arte\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-sendwp.png\');display:block;\\\"><\\/span>\",\"type\":\"sendwp\",\"script\":\"\\n      setTimeout(function(){ \\/* Wait for services to init. *\\/\\n        var data = {\\n          width: 450,\\n          closeOnClick: \'body\',\\n          closeOnEsc: true,\\n          content: \'<p><h2>Frustrated that WordPress email isn\\u2019t being received?<\\/h2><p>Form submission notifications not hitting your inbox? Some of your visitors getting form feedback via email, others not? By default, your WordPress site sends emails through your web host, which can be unreliable. Your host has spent lots of time and money optimizing to serve your pages, not send your emails.<\\/p><h3>Sign up for SendWP today, and never deal with WordPress email issues again!<\\/h3><p>SendWP is an email service that removes your web host from the email equation.<\\/p><ul style=&quot;list-style-type:initial;margin-left: 20px;&quot;><li>Sends email through dedicated email service, increasing email deliverability.<\\/li><li>Keeps form submission emails out of spam by using a trusted email provider.<\\/li><li>On a shared web host? Don\\u2019t worry about emails being rejected because of blocked IP addresses.<\\/li><li><strong>$1 for the first month. $9\\/month after. Cancel anytime!<\\/strong><\\/li><\\/ul><\\/p><br \\/>\',\\n          btnPrimary: {\\n            text: \'Sign me up!\',\\n            callback: function() {\\n              var spinner = document.createElement(\'span\');\\n              spinner.classList.add(\'dashicons\', \'dashicons-update\', \'dashicons-update-spin\');\\n              var w = this.offsetWidth;\\n              this.innerHTML = spinner.outerHTML;\\n              this.style.width = w+\'px\';\\n              ninja_forms_sendwp_remote_install();\\n            }\\n          },\\n          btnSecondary: {\\n            text: \'Cancel\',\\n            callback: function() {\\n              sendwpModal.toggleModal(false);\\n            }\\n          }\\n        }\\n        var sendwpModal = new NinjaModal(data);\\n      }, 500);\\n    \"}]}', 'no'),
(645, 'nf_form_tel_data', '1,2', 'no'),
(646, 'ninja_forms_do_not_allow_tracking', '1', 'yes'),
(647, 'ninja_forms_optin_reported', '1', 'yes'),
(667, 'nf_sub_expiration', 'a:0:{}', 'yes'),
(679, 'nf_form_tel_sent', 'true', 'no'),
(912, 'current_theme', 'Ample', 'yes'),
(913, 'theme_mods_ample', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:18:\"custom_css_post_id\";i:91;}', 'yes'),
(914, 'theme_switched', '', 'yes'),
(917, 'widget_ample_service_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(918, 'widget_ample_portfolio_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(919, 'widget_ample_call_to_action_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(920, 'widget_ample_featured_posts_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(923, 'ample_admin_notice_welcome', '1', 'yes'),
(979, 'woocommerce_sales_record_date', '2020-12-27', 'yes'),
(980, 'woocommerce_sales_record_amount', '99', 'yes'),
(995, '_transient_timeout_wc_low_stock_count', '1611762416', 'no'),
(996, '_transient_wc_low_stock_count', '0', 'no'),
(997, '_transient_timeout_wc_outofstock_count', '1611762416', 'no'),
(998, '_transient_wc_outofstock_count', '0', 'no'),
(999, 'recovery_mode_email_last_sent', '1609693034', 'yes'),
(1449, 'gallery-nomenclators_children', 'a:0:{}', 'yes'),
(1500, 'action_scheduler_migration_status', 'complete', 'yes'),
(1531, 'wpfront-user-role-editor-db-version', '2.14.4', 'yes'),
(1537, '_transient_timeout_wc_customer_bought_product_2ae6d19f3a82c2bad28b3eccccb162ec', '1612412370', 'no'),
(1538, '_transient_wc_customer_bought_product_2ae6d19f3a82c2bad28b3eccccb162ec', 'a:2:{s:7:\"version\";s:10:\"1609106791\";s:5:\"value\";a:0:{}}', 'no'),
(1539, '_transient_timeout_wc_shipping_method_count_legacy', '1612412371', 'no'),
(1540, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1606829031\";s:5:\"value\";i:0;}', 'no'),
(1544, '_site_transient_timeout_theme_roots', '1609989239', 'no'),
(1545, '_site_transient_theme_roots', 'a:4:{s:5:\"ample\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1546, '_transient_timeout__woocommerce_helper_updates', '1610030639', 'no'),
(1547, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1609987439;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1554, '_transient_timeout_wc_report_sales_by_date', '1610078042', 'no'),
(1555, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"1118cafa80fd94a3d7ed55bee45a9a73\";a:0:{}s:32:\"1302fa14ebb1f65cd5bfad4991fdf35f\";a:0:{}s:32:\"eee404de7655d400f9a83b377b262f50\";a:0:{}s:32:\"7601a6094fec722d82f1b290c691e0af\";N;s:32:\"10a06b021ee8ae0c441ce1a9a4ff8fc8\";a:0:{}s:32:\"48b50d2824a2f3e27ded55b9fa5c3be1\";a:0:{}s:32:\"bce7b620a043409066452caa7a3d92c5\";a:0:{}s:32:\"60a6c53e39ebf372abc41694c0ad7b2f\";a:0:{}}', 'no'),
(1556, '_transient_timeout_wc_admin_report', '1610078042', 'no'),
(1557, '_transient_wc_admin_report', 'a:1:{s:32:\"f5ece50e74fa9bc78cc16daaa38b7f92\";a:0:{}}', 'no'),
(1558, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1610030663', 'no'),
(1559, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>', 'no'),
(1563, '_site_transient_update_plugins', 'O:8:\"stdClass\":2:{s:12:\"last_checked\";i:1609987495;s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1564, 'mw_adminimize', 'a:171:{s:29:\"mw_adminimize_admin_bar_nodes\";a:27:{s:12:\"user-actions\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"user-actions\";s:5:\"title\";b:0;s:6:\"parent\";s:10:\"my-account\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:0:{}}s:9:\"user-info\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"user-info\";s:5:\"title\";s:312:\"<img alt=\'\' src=\'http://1.gravatar.com/avatar/ac3031828533a3e72e6ebdd119a557f3?s=64&#038;d=mm&#038;r=g\' srcset=\'http://1.gravatar.com/avatar/ac3031828533a3e72e6ebdd119a557f3?s=128&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-64 photo\' height=\'64\' width=\'64\' loading=\'lazy\'/><span class=\'display-name\'>admin</span>\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:50:\"http://localhost/galeria_arte/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:8:\"tabindex\";i:-1;}}s:12:\"edit-profile\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"edit-profile\";s:5:\"title\";s:12:\"Edit Profile\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:50:\"http://localhost/galeria_arte/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:6:\"logout\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"logout\";s:5:\"title\";s:7:\"Log Out\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:80:\"http://localhost/galeria_arte/wp-login.php?action=logout&amp;_wpnonce=ad7264e900\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"menu-toggle\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"menu-toggle\";s:5:\"title\";s:73:\"<span class=\"ab-icon\"></span><span class=\"screen-reader-text\">Menu</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:1:\"#\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"my-account\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"my-account\";s:5:\"title\";s:318:\"Howdy, <span class=\"display-name\">admin</span><img alt=\'\' src=\'http://1.gravatar.com/avatar/ac3031828533a3e72e6ebdd119a557f3?s=26&#038;d=mm&#038;r=g\' srcset=\'http://1.gravatar.com/avatar/ac3031828533a3e72e6ebdd119a557f3?s=52&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-26 photo\' height=\'26\' width=\'26\' loading=\'lazy\'/>\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";s:50:\"http://localhost/galeria_arte/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:11:\"with-avatar\";}}s:7:\"wp-logo\";O:8:\"stdClass\":6:{s:2:\"id\";s:7:\"wp-logo\";s:5:\"title\";s:84:\"<span class=\"ab-icon\"></span><span class=\"screen-reader-text\">About WordPress</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:48:\"http://localhost/galeria_arte/wp-admin/about.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"about\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"about\";s:5:\"title\";s:15:\"About WordPress\";s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";s:48:\"http://localhost/galeria_arte/wp-admin/about.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"wporg\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"wporg\";s:5:\"title\";s:13:\"WordPress.org\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:22:\"https://wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"documentation\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"documentation\";s:5:\"title\";s:13:\"Documentation\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:28:\"https://codex.wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"support-forums\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"support-forums\";s:5:\"title\";s:7:\"Support\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:30:\"https://wordpress.org/support/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"feedback\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"feedback\";s:5:\"title\";s:8:\"Feedback\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:57:\"https://wordpress.org/support/forum/requests-and-feedback\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"site-name\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"site-name\";s:5:\"title\";s:15:\"Galeria de Arte\";s:6:\"parent\";b:0;s:4:\"href\";s:30:\"http://localhost/galeria_arte/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"view-site\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"view-site\";s:5:\"title\";s:10:\"Visit Site\";s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";s:30:\"http://localhost/galeria_arte/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"comments\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"comments\";s:5:\"title\";s:206:\"<span class=\"ab-icon\"></span><span class=\"ab-label awaiting-mod pending-count count-0\" aria-hidden=\"true\">0</span><span class=\"screen-reader-text comments-in-moderation-text\">0 Comments in moderation</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:56:\"http://localhost/galeria_arte/wp-admin/edit-comments.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-content\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-content\";s:5:\"title\";s:62:\"<span class=\"ab-icon\"></span><span class=\"ab-label\">New</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:51:\"http://localhost/galeria_arte/wp-admin/post-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-post\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-post\";s:5:\"title\";s:4:\"Post\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:51:\"http://localhost/galeria_arte/wp-admin/post-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"new-media\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"new-media\";s:5:\"title\";s:5:\"Media\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:52:\"http://localhost/galeria_arte/wp-admin/media-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-page\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-page\";s:5:\"title\";s:4:\"Page\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:66:\"http://localhost/galeria_arte/wp-admin/post-new.php?post_type=page\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-product\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-product\";s:5:\"title\";s:7:\"Product\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:69:\"http://localhost/galeria_arte/wp-admin/post-new.php?post_type=product\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"new-shop_order\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"new-shop_order\";s:5:\"title\";s:5:\"Order\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:72:\"http://localhost/galeria_arte/wp-admin/post-new.php?post_type=shop_order\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:15:\"new-shop_coupon\";O:8:\"stdClass\":6:{s:2:\"id\";s:15:\"new-shop_coupon\";s:5:\"title\";s:6:\"Coupon\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:73:\"http://localhost/galeria_arte/wp-admin/post-new.php?post_type=shop_coupon\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:16:\"new-nomenclators\";O:8:\"stdClass\":6:{s:2:\"id\";s:16:\"new-nomenclators\";s:5:\"title\";s:11:\"Nomenclator\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:74:\"http://localhost/galeria_arte/wp-admin/post-new.php?post_type=nomenclators\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-user\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-user\";s:5:\"title\";s:4:\"User\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:51:\"http://localhost/galeria_arte/wp-admin/user-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"top-secondary\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"top-secondary\";s:5:\"title\";b:0;s:6:\"parent\";b:0;s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-top-secondary\";}}s:16:\"wp-logo-external\";O:8:\"stdClass\":6:{s:2:\"id\";s:16:\"wp-logo-external\";s:5:\"title\";b:0;s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-sub-secondary\";}}s:32:\"wpfront-user-role-editor-add-new\";O:8:\"stdClass\":6:{s:2:\"id\";s:32:\"wpfront-user-role-editor-add-new\";s:5:\"title\";s:4:\"Role\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:86:\"http://localhost/galeria_arte/wp-admin/admin.php?page=wpfront-user-role-editor-add-new\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}}s:52:\"mw_adminimize_disabled_admin_bar_administrator_items\";a:0:{}s:45:\"mw_adminimize_disabled_admin_bar_editor_items\";a:0:{}s:45:\"mw_adminimize_disabled_admin_bar_author_items\";a:0:{}s:50:\"mw_adminimize_disabled_admin_bar_contributor_items\";a:0:{}s:49:\"mw_adminimize_disabled_admin_bar_subscriber_items\";a:0:{}s:47:\"mw_adminimize_disabled_admin_bar_customer_items\";a:0:{}s:51:\"mw_adminimize_disabled_admin_bar_shop_manager_items\";a:0:{}s:53:\"mw_adminimize_disabled_admin_bar_pending_vendor_items\";a:0:{}s:45:\"mw_adminimize_disabled_admin_bar_vendor_items\";a:0:{}s:46:\"mw_adminimize_disabled_admin_bar_tasador_items\";a:0:{}s:19:\"mw_adminimize_debug\";i:0;s:28:\"mw_adminimize_multiple_roles\";i:0;s:29:\"mw_adminimize_support_bbpress\";i:0;s:33:\"mw_adminimize_prevent_page_access\";i:0;s:38:\"mw_adminimize_admin_bar_frontend_nodes\";a:34:{s:12:\"user-actions\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"user-actions\";s:5:\"title\";b:0;s:6:\"parent\";s:10:\"my-account\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:0:{}}s:9:\"user-info\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"user-info\";s:5:\"title\";s:312:\"<img alt=\'\' src=\'http://1.gravatar.com/avatar/ac3031828533a3e72e6ebdd119a557f3?s=64&#038;d=mm&#038;r=g\' srcset=\'http://1.gravatar.com/avatar/ac3031828533a3e72e6ebdd119a557f3?s=128&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-64 photo\' height=\'64\' width=\'64\' loading=\'lazy\'/><span class=\'display-name\'>admin</span>\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:50:\"http://localhost/galeria_arte/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:8:\"tabindex\";i:-1;}}s:12:\"edit-profile\";O:8:\"stdClass\":6:{s:2:\"id\";s:12:\"edit-profile\";s:5:\"title\";s:12:\"Edit Profile\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:50:\"http://localhost/galeria_arte/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:6:\"logout\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"logout\";s:5:\"title\";s:7:\"Log Out\";s:6:\"parent\";s:12:\"user-actions\";s:4:\"href\";s:80:\"http://localhost/galeria_arte/wp-login.php?action=logout&amp;_wpnonce=ad7264e900\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:6:\"search\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"search\";s:5:\"title\";s:316:\"<form action=\"http://localhost/galeria_arte/\" method=\"get\" id=\"adminbarsearch\"><input class=\"adminbar-input\" name=\"s\" id=\"adminbar-search\" type=\"text\" value=\"\" maxlength=\"150\" /><label for=\"adminbar-search\" class=\"screen-reader-text\">Search</label><input type=\"submit\" class=\"adminbar-button\" value=\"Search\"/></form>\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";b:0;s:5:\"group\";b:0;s:4:\"meta\";a:2:{s:5:\"class\";s:16:\"admin-bar-search\";s:8:\"tabindex\";i:-1;}}s:10:\"my-account\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"my-account\";s:5:\"title\";s:318:\"Howdy, <span class=\"display-name\">admin</span><img alt=\'\' src=\'http://1.gravatar.com/avatar/ac3031828533a3e72e6ebdd119a557f3?s=26&#038;d=mm&#038;r=g\' srcset=\'http://1.gravatar.com/avatar/ac3031828533a3e72e6ebdd119a557f3?s=52&#038;d=mm&#038;r=g 2x\' class=\'avatar avatar-26 photo\' height=\'26\' width=\'26\' loading=\'lazy\'/>\";s:6:\"parent\";s:13:\"top-secondary\";s:4:\"href\";s:50:\"http://localhost/galeria_arte/wp-admin/profile.php\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:11:\"with-avatar\";}}s:7:\"wp-logo\";O:8:\"stdClass\":6:{s:2:\"id\";s:7:\"wp-logo\";s:5:\"title\";s:84:\"<span class=\"ab-icon\"></span><span class=\"screen-reader-text\">About WordPress</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:48:\"http://localhost/galeria_arte/wp-admin/about.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"about\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"about\";s:5:\"title\";s:15:\"About WordPress\";s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";s:48:\"http://localhost/galeria_arte/wp-admin/about.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"wporg\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"wporg\";s:5:\"title\";s:13:\"WordPress.org\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:22:\"https://wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"documentation\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"documentation\";s:5:\"title\";s:13:\"Documentation\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:28:\"https://codex.wordpress.org/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"support-forums\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"support-forums\";s:5:\"title\";s:7:\"Support\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:30:\"https://wordpress.org/support/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"feedback\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"feedback\";s:5:\"title\";s:8:\"Feedback\";s:6:\"parent\";s:16:\"wp-logo-external\";s:4:\"href\";s:57:\"https://wordpress.org/support/forum/requests-and-feedback\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"site-name\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"site-name\";s:5:\"title\";s:15:\"Galeria de Arte\";s:6:\"parent\";b:0;s:4:\"href\";s:39:\"http://localhost/galeria_arte/wp-admin/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"dashboard\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"dashboard\";s:5:\"title\";s:9:\"Dashboard\";s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";s:39:\"http://localhost/galeria_arte/wp-admin/\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"appearance\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"appearance\";s:5:\"title\";b:0;s:6:\"parent\";s:9:\"site-name\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:0:{}}s:6:\"themes\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"themes\";s:5:\"title\";s:6:\"Themes\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:49:\"http://localhost/galeria_arte/wp-admin/themes.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:7:\"widgets\";O:8:\"stdClass\":6:{s:2:\"id\";s:7:\"widgets\";s:5:\"title\";s:7:\"Widgets\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:50:\"http://localhost/galeria_arte/wp-admin/widgets.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:5:\"menus\";O:8:\"stdClass\":6:{s:2:\"id\";s:5:\"menus\";s:5:\"title\";s:5:\"Menus\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:52:\"http://localhost/galeria_arte/wp-admin/nav-menus.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:10:\"background\";O:8:\"stdClass\":6:{s:2:\"id\";s:10:\"background\";s:5:\"title\";s:10:\"Background\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:72:\"http://localhost/galeria_arte/wp-admin/themes.php?page=custom-background\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:17:\"hide-if-customize\";}}s:6:\"header\";O:8:\"stdClass\":6:{s:2:\"id\";s:6:\"header\";s:5:\"title\";s:6:\"Header\";s:6:\"parent\";s:10:\"appearance\";s:4:\"href\";s:68:\"http://localhost/galeria_arte/wp-admin/themes.php?page=custom-header\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:17:\"hide-if-customize\";}}s:9:\"customize\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"customize\";s:5:\"title\";s:9:\"Customize\";s:6:\"parent\";b:0;s:4:\"href\";s:168:\"http://localhost/galeria_arte/wp-admin/customize.php?url=http%3A%2F%2Flocalhost%2Fgaleria_arte%2Fapprises-list%2F%3Faction%3Dshow%26appraise%3D2%26_wpnonce%3D68e0e6001e\";s:5:\"group\";b:0;s:4:\"meta\";a:1:{s:5:\"class\";s:20:\"hide-if-no-customize\";}}s:8:\"comments\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"comments\";s:5:\"title\";s:206:\"<span class=\"ab-icon\"></span><span class=\"ab-label awaiting-mod pending-count count-0\" aria-hidden=\"true\">0</span><span class=\"screen-reader-text comments-in-moderation-text\">0 Comments in moderation</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:56:\"http://localhost/galeria_arte/wp-admin/edit-comments.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-content\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-content\";s:5:\"title\";s:62:\"<span class=\"ab-icon\"></span><span class=\"ab-label\">New</span>\";s:6:\"parent\";b:0;s:4:\"href\";s:51:\"http://localhost/galeria_arte/wp-admin/post-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-post\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-post\";s:5:\"title\";s:4:\"Post\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:51:\"http://localhost/galeria_arte/wp-admin/post-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:9:\"new-media\";O:8:\"stdClass\":6:{s:2:\"id\";s:9:\"new-media\";s:5:\"title\";s:5:\"Media\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:52:\"http://localhost/galeria_arte/wp-admin/media-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-page\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-page\";s:5:\"title\";s:4:\"Page\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:66:\"http://localhost/galeria_arte/wp-admin/post-new.php?post_type=page\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:11:\"new-product\";O:8:\"stdClass\":6:{s:2:\"id\";s:11:\"new-product\";s:5:\"title\";s:7:\"Product\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:69:\"http://localhost/galeria_arte/wp-admin/post-new.php?post_type=product\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:14:\"new-shop_order\";O:8:\"stdClass\":6:{s:2:\"id\";s:14:\"new-shop_order\";s:5:\"title\";s:5:\"Order\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:72:\"http://localhost/galeria_arte/wp-admin/post-new.php?post_type=shop_order\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:15:\"new-shop_coupon\";O:8:\"stdClass\":6:{s:2:\"id\";s:15:\"new-shop_coupon\";s:5:\"title\";s:6:\"Coupon\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:73:\"http://localhost/galeria_arte/wp-admin/post-new.php?post_type=shop_coupon\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:16:\"new-nomenclators\";O:8:\"stdClass\":6:{s:2:\"id\";s:16:\"new-nomenclators\";s:5:\"title\";s:11:\"Nomenclator\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:74:\"http://localhost/galeria_arte/wp-admin/post-new.php?post_type=nomenclators\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:8:\"new-user\";O:8:\"stdClass\":6:{s:2:\"id\";s:8:\"new-user\";s:5:\"title\";s:4:\"User\";s:6:\"parent\";s:11:\"new-content\";s:4:\"href\";s:51:\"http://localhost/galeria_arte/wp-admin/user-new.php\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:4:\"edit\";O:8:\"stdClass\":6:{s:2:\"id\";s:4:\"edit\";s:5:\"title\";s:9:\"Edit Page\";s:6:\"parent\";b:0;s:4:\"href\";s:71:\"http://localhost/galeria_arte/wp-admin/post.php?post=85&amp;action=edit\";s:5:\"group\";b:0;s:4:\"meta\";a:0:{}}s:13:\"top-secondary\";O:8:\"stdClass\":6:{s:2:\"id\";s:13:\"top-secondary\";s:5:\"title\";b:0;s:6:\"parent\";b:0;s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-top-secondary\";}}s:16:\"wp-logo-external\";O:8:\"stdClass\":6:{s:2:\"id\";s:16:\"wp-logo-external\";s:5:\"title\";b:0;s:6:\"parent\";s:7:\"wp-logo\";s:4:\"href\";b:0;s:5:\"group\";b:1;s:4:\"meta\";a:1:{s:5:\"class\";s:16:\"ab-sub-secondary\";}}}s:61:\"mw_adminimize_disabled_admin_bar_frontend_administrator_items\";a:0:{}s:54:\"mw_adminimize_disabled_admin_bar_frontend_editor_items\";a:0:{}s:54:\"mw_adminimize_disabled_admin_bar_frontend_author_items\";a:0:{}s:59:\"mw_adminimize_disabled_admin_bar_frontend_contributor_items\";a:0:{}s:58:\"mw_adminimize_disabled_admin_bar_frontend_subscriber_items\";a:0:{}s:56:\"mw_adminimize_disabled_admin_bar_frontend_customer_items\";a:0:{}s:60:\"mw_adminimize_disabled_admin_bar_frontend_shop_manager_items\";a:0:{}s:62:\"mw_adminimize_disabled_admin_bar_frontend_pending_vendor_items\";a:0:{}s:54:\"mw_adminimize_disabled_admin_bar_frontend_vendor_items\";a:0:{}s:55:\"mw_adminimize_disabled_admin_bar_frontend_tasador_items\";a:0:{}s:24:\"_mw_adminimize_user_info\";i:0;s:21:\"_mw_adminimize_footer\";i:0;s:21:\"_mw_adminimize_header\";i:0;s:34:\"_mw_adminimize_exclude_super_admin\";i:0;s:24:\"_mw_adminimize_tb_window\";i:0;s:23:\"_mw_adminimize_cat_full\";i:0;s:26:\"_mw_adminimize_db_redirect\";i:0;s:26:\"_mw_adminimize_ui_redirect\";i:0;s:21:\"_mw_adminimize_advice\";i:0;s:25:\"_mw_adminimize_advice_txt\";s:0:\"\";s:24:\"_mw_adminimize_timestamp\";i:0;s:30:\"_mw_adminimize_db_redirect_txt\";s:0:\"\";s:47:\"mw_adminimize_disabled_menu_administrator_items\";a:0:{}s:50:\"mw_adminimize_disabled_submenu_administrator_items\";a:0:{}s:40:\"mw_adminimize_disabled_menu_editor_items\";a:0:{}s:43:\"mw_adminimize_disabled_submenu_editor_items\";a:0:{}s:40:\"mw_adminimize_disabled_menu_author_items\";a:0:{}s:43:\"mw_adminimize_disabled_submenu_author_items\";a:0:{}s:45:\"mw_adminimize_disabled_menu_contributor_items\";a:0:{}s:48:\"mw_adminimize_disabled_submenu_contributor_items\";a:0:{}s:44:\"mw_adminimize_disabled_menu_subscriber_items\";a:0:{}s:47:\"mw_adminimize_disabled_submenu_subscriber_items\";a:0:{}s:42:\"mw_adminimize_disabled_menu_customer_items\";a:0:{}s:45:\"mw_adminimize_disabled_submenu_customer_items\";a:0:{}s:46:\"mw_adminimize_disabled_menu_shop_manager_items\";a:0:{}s:49:\"mw_adminimize_disabled_submenu_shop_manager_items\";a:0:{}s:48:\"mw_adminimize_disabled_menu_pending_vendor_items\";a:0:{}s:51:\"mw_adminimize_disabled_submenu_pending_vendor_items\";a:0:{}s:40:\"mw_adminimize_disabled_menu_vendor_items\";a:0:{}s:43:\"mw_adminimize_disabled_submenu_vendor_items\";a:0:{}s:41:\"mw_adminimize_disabled_menu_tasador_items\";a:21:{i:0;s:9:\"index.php\";i:1;s:10:\"separator1\";i:2;s:8:\"edit.php\";i:3;s:31:\"edit.php?post_type=nomenclators\";i:4;s:10:\"upload.php\";i:5;s:23:\"edit.php?post_type=page\";i:6;s:17:\"edit-comments.php\";i:7;s:10:\"wc-vendors\";i:8;s:21:\"separator-woocommerce\";i:9;s:11:\"woocommerce\";i:10;s:26:\"edit.php?post_type=product\";i:11;s:32:\"wc-admin&path=/analytics/revenue\";i:12;s:10:\"separator2\";i:13;s:10:\"themes.php\";i:14;s:11:\"plugins.php\";i:15;s:34:\"wpfront-user-role-editor-all-roles\";i:16;s:9:\"users.php\";i:17;s:9:\"tools.php\";i:18;s:19:\"options-general.php\";i:19;s:14:\"separator-last\";i:20;s:15:\"wc_pay_per_post\";}s:44:\"mw_adminimize_disabled_submenu_tasador_items\";a:0:{}s:28:\"_mw_adminimize_own_menu_slug\";s:0:\"\";s:35:\"_mw_adminimize_own_menu_custom_slug\";s:0:\"\";s:56:\"mw_adminimize_disabled_global_option_administrator_items\";a:0:{}s:57:\"mw_adminimize_disabled_metaboxes_post_administrator_items\";a:0:{}s:57:\"mw_adminimize_disabled_metaboxes_page_administrator_items\";a:0:{}s:60:\"mw_adminimize_disabled_metaboxes_product_administrator_items\";a:0:{}s:65:\"mw_adminimize_disabled_metaboxes_nomenclators_administrator_items\";a:0:{}s:54:\"mw_adminimize_disabled_link_option_administrator_items\";a:0:{}s:58:\"mw_adminimize_disabled_nav_menu_option_administrator_items\";a:0:{}s:56:\"mw_adminimize_disabled_widget_option_administrator_items\";a:0:{}s:59:\"mw_adminimize_disabled_dashboard_option_administrator_items\";a:0:{}s:49:\"mw_adminimize_disabled_global_option_editor_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_post_editor_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_page_editor_items\";a:0:{}s:53:\"mw_adminimize_disabled_metaboxes_product_editor_items\";a:0:{}s:58:\"mw_adminimize_disabled_metaboxes_nomenclators_editor_items\";a:0:{}s:47:\"mw_adminimize_disabled_link_option_editor_items\";a:0:{}s:51:\"mw_adminimize_disabled_nav_menu_option_editor_items\";a:0:{}s:49:\"mw_adminimize_disabled_widget_option_editor_items\";a:0:{}s:52:\"mw_adminimize_disabled_dashboard_option_editor_items\";a:0:{}s:49:\"mw_adminimize_disabled_global_option_author_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_post_author_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_page_author_items\";a:0:{}s:53:\"mw_adminimize_disabled_metaboxes_product_author_items\";a:0:{}s:58:\"mw_adminimize_disabled_metaboxes_nomenclators_author_items\";a:0:{}s:47:\"mw_adminimize_disabled_link_option_author_items\";a:0:{}s:51:\"mw_adminimize_disabled_nav_menu_option_author_items\";a:0:{}s:49:\"mw_adminimize_disabled_widget_option_author_items\";a:0:{}s:52:\"mw_adminimize_disabled_dashboard_option_author_items\";a:0:{}s:54:\"mw_adminimize_disabled_global_option_contributor_items\";a:0:{}s:55:\"mw_adminimize_disabled_metaboxes_post_contributor_items\";a:0:{}s:55:\"mw_adminimize_disabled_metaboxes_page_contributor_items\";a:0:{}s:58:\"mw_adminimize_disabled_metaboxes_product_contributor_items\";a:0:{}s:63:\"mw_adminimize_disabled_metaboxes_nomenclators_contributor_items\";a:0:{}s:52:\"mw_adminimize_disabled_link_option_contributor_items\";a:0:{}s:56:\"mw_adminimize_disabled_nav_menu_option_contributor_items\";a:0:{}s:54:\"mw_adminimize_disabled_widget_option_contributor_items\";a:0:{}s:57:\"mw_adminimize_disabled_dashboard_option_contributor_items\";a:0:{}s:53:\"mw_adminimize_disabled_global_option_subscriber_items\";a:0:{}s:54:\"mw_adminimize_disabled_metaboxes_post_subscriber_items\";a:0:{}s:54:\"mw_adminimize_disabled_metaboxes_page_subscriber_items\";a:0:{}s:57:\"mw_adminimize_disabled_metaboxes_product_subscriber_items\";a:0:{}s:62:\"mw_adminimize_disabled_metaboxes_nomenclators_subscriber_items\";a:0:{}s:51:\"mw_adminimize_disabled_link_option_subscriber_items\";a:0:{}s:55:\"mw_adminimize_disabled_nav_menu_option_subscriber_items\";a:0:{}s:53:\"mw_adminimize_disabled_widget_option_subscriber_items\";a:0:{}s:56:\"mw_adminimize_disabled_dashboard_option_subscriber_items\";a:0:{}s:51:\"mw_adminimize_disabled_global_option_customer_items\";a:0:{}s:52:\"mw_adminimize_disabled_metaboxes_post_customer_items\";a:0:{}s:52:\"mw_adminimize_disabled_metaboxes_page_customer_items\";a:0:{}s:55:\"mw_adminimize_disabled_metaboxes_product_customer_items\";a:0:{}s:60:\"mw_adminimize_disabled_metaboxes_nomenclators_customer_items\";a:0:{}s:49:\"mw_adminimize_disabled_link_option_customer_items\";a:0:{}s:53:\"mw_adminimize_disabled_nav_menu_option_customer_items\";a:0:{}s:51:\"mw_adminimize_disabled_widget_option_customer_items\";a:0:{}s:54:\"mw_adminimize_disabled_dashboard_option_customer_items\";a:0:{}s:55:\"mw_adminimize_disabled_global_option_shop_manager_items\";a:0:{}s:56:\"mw_adminimize_disabled_metaboxes_post_shop_manager_items\";a:0:{}s:56:\"mw_adminimize_disabled_metaboxes_page_shop_manager_items\";a:0:{}s:59:\"mw_adminimize_disabled_metaboxes_product_shop_manager_items\";a:0:{}s:64:\"mw_adminimize_disabled_metaboxes_nomenclators_shop_manager_items\";a:0:{}s:53:\"mw_adminimize_disabled_link_option_shop_manager_items\";a:0:{}s:57:\"mw_adminimize_disabled_nav_menu_option_shop_manager_items\";a:0:{}s:55:\"mw_adminimize_disabled_widget_option_shop_manager_items\";a:0:{}s:58:\"mw_adminimize_disabled_dashboard_option_shop_manager_items\";a:0:{}s:57:\"mw_adminimize_disabled_global_option_pending_vendor_items\";a:0:{}s:58:\"mw_adminimize_disabled_metaboxes_post_pending_vendor_items\";a:0:{}s:58:\"mw_adminimize_disabled_metaboxes_page_pending_vendor_items\";a:0:{}s:61:\"mw_adminimize_disabled_metaboxes_product_pending_vendor_items\";a:0:{}s:66:\"mw_adminimize_disabled_metaboxes_nomenclators_pending_vendor_items\";a:0:{}s:55:\"mw_adminimize_disabled_link_option_pending_vendor_items\";a:0:{}s:59:\"mw_adminimize_disabled_nav_menu_option_pending_vendor_items\";a:0:{}s:57:\"mw_adminimize_disabled_widget_option_pending_vendor_items\";a:0:{}s:60:\"mw_adminimize_disabled_dashboard_option_pending_vendor_items\";a:0:{}s:49:\"mw_adminimize_disabled_global_option_vendor_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_post_vendor_items\";a:0:{}s:50:\"mw_adminimize_disabled_metaboxes_page_vendor_items\";a:0:{}s:53:\"mw_adminimize_disabled_metaboxes_product_vendor_items\";a:0:{}s:58:\"mw_adminimize_disabled_metaboxes_nomenclators_vendor_items\";a:0:{}s:47:\"mw_adminimize_disabled_link_option_vendor_items\";a:0:{}s:51:\"mw_adminimize_disabled_nav_menu_option_vendor_items\";a:0:{}s:49:\"mw_adminimize_disabled_widget_option_vendor_items\";a:0:{}s:52:\"mw_adminimize_disabled_dashboard_option_vendor_items\";a:0:{}s:50:\"mw_adminimize_disabled_global_option_tasador_items\";a:1:{i:0;s:15:\".show-admin-bar\";}s:51:\"mw_adminimize_disabled_metaboxes_post_tasador_items\";a:0:{}s:51:\"mw_adminimize_disabled_metaboxes_page_tasador_items\";a:0:{}s:54:\"mw_adminimize_disabled_metaboxes_product_tasador_items\";a:0:{}s:59:\"mw_adminimize_disabled_metaboxes_nomenclators_tasador_items\";a:0:{}s:48:\"mw_adminimize_disabled_link_option_tasador_items\";a:0:{}s:52:\"mw_adminimize_disabled_nav_menu_option_tasador_items\";a:0:{}s:50:\"mw_adminimize_disabled_widget_option_tasador_items\";a:0:{}s:53:\"mw_adminimize_disabled_dashboard_option_tasador_items\";a:0:{}s:25:\"_mw_adminimize_own_values\";s:0:\"\";s:26:\"_mw_adminimize_own_options\";s:0:\"\";s:30:\"_mw_adminimize_own_post_values\";s:0:\"\";s:31:\"_mw_adminimize_own_post_options\";s:0:\"\";s:30:\"_mw_adminimize_own_page_values\";s:0:\"\";s:31:\"_mw_adminimize_own_page_options\";s:0:\"\";s:33:\"_mw_adminimize_own_values_product\";s:0:\"\";s:34:\"_mw_adminimize_own_options_product\";s:0:\"\";s:38:\"_mw_adminimize_own_values_nomenclators\";s:0:\"\";s:39:\"_mw_adminimize_own_options_nomenclators\";s:0:\"\";s:30:\"_mw_adminimize_own_link_values\";s:0:\"\";s:31:\"_mw_adminimize_own_link_options\";s:0:\"\";s:34:\"_mw_adminimize_own_nav_menu_values\";s:0:\"\";s:35:\"_mw_adminimize_own_nav_menu_options\";s:0:\"\";s:32:\"_mw_adminimize_own_widget_values\";s:0:\"\";s:33:\"_mw_adminimize_own_widget_options\";s:0:\"\";s:35:\"_mw_adminimize_own_dashboard_values\";s:0:\"\";s:36:\"_mw_adminimize_own_dashboard_options\";s:0:\"\";s:31:\"mw_adminimize_dashboard_widgets\";a:7:{s:21:\"dashboard_site_health\";a:4:{s:2:\"id\";s:21:\"dashboard_site_health\";s:5:\"title\";s:18:\"Site Health Status\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";}s:19:\"dashboard_right_now\";a:4:{s:2:\"id\";s:19:\"dashboard_right_now\";s:5:\"title\";s:11:\"At a Glance\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";}s:18:\"dashboard_activity\";a:4:{s:2:\"id\";s:18:\"dashboard_activity\";s:5:\"title\";s:8:\"Activity\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";}s:36:\"woocommerce_dashboard_recent_reviews\";a:4:{s:2:\"id\";s:36:\"woocommerce_dashboard_recent_reviews\";s:5:\"title\";s:26:\"WooCommerce Recent Reviews\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";}s:28:\"woocommerce_dashboard_status\";a:4:{s:2:\"id\";s:28:\"woocommerce_dashboard_status\";s:5:\"title\";s:18:\"WooCommerce Status\";s:7:\"context\";s:6:\"normal\";s:8:\"priority\";s:4:\"core\";}s:21:\"dashboard_quick_press\";a:4:{s:2:\"id\";s:21:\"dashboard_quick_press\";s:5:\"title\";s:0:\"\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";}s:17:\"dashboard_primary\";a:4:{s:2:\"id\";s:17:\"dashboard_primary\";s:5:\"title\";s:25:\"WordPress Events and News\";s:7:\"context\";s:4:\"side\";s:8:\"priority\";s:4:\"core\";}}s:26:\"mw_adminimize_default_menu\";a:22:{i:0;a:7:{i:0;s:9:\"Dashboard\";i:1;s:4:\"read\";i:2;s:9:\"index.php\";i:3;s:0:\"\";i:4;s:72:\"menu-top menu-top-first menu-icon-dashboard menu-top-first menu-top-last\";i:5;s:14:\"menu-dashboard\";i:6;s:19:\"dashicons-dashboard\";}i:1;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:10:\"separator1\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}i:2;a:7:{i:0;s:5:\"Posts\";i:1;s:10:\"edit_posts\";i:2;s:8:\"edit.php\";i:3;s:0:\"\";i:4;s:52:\"menu-top menu-icon-post open-if-no-js menu-top-first\";i:5;s:10:\"menu-posts\";i:6;s:20:\"dashicons-admin-post\";}i:3;a:7:{i:0;s:12:\"Nomenclators\";i:1;s:10:\"edit_posts\";i:2;s:31:\"edit.php?post_type=nomenclators\";i:3;s:0:\"\";i:4;s:31:\"menu-top menu-icon-nomenclators\";i:5;s:23:\"menu-posts-nomenclators\";i:6;s:20:\"dashicons-images-alt\";}i:4;a:7:{i:0;s:5:\"Media\";i:1;s:12:\"upload_files\";i:2;s:10:\"upload.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-media\";i:5;s:10:\"menu-media\";i:6;s:21:\"dashicons-admin-media\";}i:5;a:7:{i:0;s:5:\"Pages\";i:1;s:10:\"edit_pages\";i:2;s:23:\"edit.php?post_type=page\";i:3;s:0:\"\";i:4;s:23:\"menu-top menu-icon-page\";i:5;s:10:\"menu-pages\";i:6;s:20:\"dashicons-admin-page\";}i:6;a:7:{i:0;s:198:\"Comments <span class=\"awaiting-mod count-0\"><span class=\"pending-count\" aria-hidden=\"true\">0</span><span class=\"comments-in-moderation-text screen-reader-text\">0 Comments in moderation</span></span>\";i:1;s:10:\"edit_posts\";i:2;s:17:\"edit-comments.php\";i:3;s:0:\"\";i:4;s:27:\"menu-top menu-icon-comments\";i:5;s:13:\"menu-comments\";i:6;s:24:\"dashicons-admin-comments\";}i:7;a:7:{i:0;s:10:\"WC Vendors\";i:1;s:18:\"manage_woocommerce\";i:2;s:10:\"wc-vendors\";i:3;s:10:\"WC Vendors\";i:4;s:47:\"menu-top toplevel_page_wc-vendors menu-top-last\";i:5;s:24:\"toplevel_page_wc-vendors\";i:6;s:14:\"dashicons-cart\";}i:8;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:21:\"separator-woocommerce\";i:3;s:0:\"\";i:4;s:29:\"wp-menu-separator woocommerce\";}i:10;a:7:{i:0;s:11:\"WooCommerce\";i:1;s:23:\"edit_others_shop_orders\";i:2;s:11:\"woocommerce\";i:3;s:11:\"WooCommerce\";i:4;s:67:\"menu-top menu-icon-generic toplevel_page_woocommerce menu-top-first\";i:5;s:25:\"toplevel_page_woocommerce\";i:6;s:23:\"dashicons-admin-generic\";}i:11;a:7:{i:0;s:8:\"Products\";i:1;s:13:\"edit_products\";i:2;s:26:\"edit.php?post_type=product\";i:3;s:0:\"\";i:4;s:26:\"menu-top menu-icon-product\";i:5;s:18:\"menu-posts-product\";i:6;s:20:\"dashicons-admin-post\";}i:12;a:7:{i:0;s:9:\"Analytics\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:32:\"wc-admin&path=/analytics/revenue\";i:3;s:9:\"Analytics\";i:4;s:69:\"menu-top toplevel_page_wc-admin&path=/analytics/revenue menu-top-last\";i:5;s:46:\"toplevel_page_wc-admin&path=/analytics/revenue\";i:6;s:19:\"dashicons-chart-bar\";}i:13;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:10:\"separator2\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}i:14;a:7:{i:0;s:10:\"Appearance\";i:1;s:13:\"switch_themes\";i:2;s:10:\"themes.php\";i:3;s:0:\"\";i:4;s:44:\"menu-top menu-icon-appearance menu-top-first\";i:5;s:15:\"menu-appearance\";i:6;s:26:\"dashicons-admin-appearance\";}i:15;a:7:{i:0;s:87:\"Plugins <span class=\"update-plugins count-0\"><span class=\"plugin-count\">0</span></span>\";i:1;s:16:\"activate_plugins\";i:2;s:11:\"plugins.php\";i:3;s:0:\"\";i:4;s:26:\"menu-top menu-icon-plugins\";i:5;s:12:\"menu-plugins\";i:6;s:23:\"dashicons-admin-plugins\";}i:16;a:7:{i:0;s:5:\"Roles\";i:1;s:10:\"list_roles\";i:2;s:34:\"wpfront-user-role-editor-all-roles\";i:3;s:5:\"Roles\";i:4;s:57:\"menu-top toplevel_page_wpfront-user-role-editor-all-roles\";i:5;s:48:\"toplevel_page_wpfront-user-role-editor-all-roles\";i:6;s:95:\"http://localhost/galeria_arte/wp-content/plugins/wpfront-user-role-editor/images/roles_menu.png\";}i:17;a:7:{i:0;s:5:\"Users\";i:1;s:10:\"list_users\";i:2;s:9:\"users.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-users\";i:5;s:10:\"menu-users\";i:6;s:21:\"dashicons-admin-users\";}i:18;a:7:{i:0;s:5:\"Tools\";i:1;s:10:\"edit_posts\";i:2;s:9:\"tools.php\";i:3;s:0:\"\";i:4;s:24:\"menu-top menu-icon-tools\";i:5;s:10:\"menu-tools\";i:6;s:21:\"dashicons-admin-tools\";}i:19;a:7:{i:0;s:8:\"Settings\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-general.php\";i:3;s:0:\"\";i:4;s:41:\"menu-top menu-icon-settings menu-top-last\";i:5;s:13:\"menu-settings\";i:6;s:24:\"dashicons-admin-settings\";}i:20;a:5:{i:0;s:0:\"\";i:1;s:4:\"read\";i:2;s:14:\"separator-last\";i:3;s:0:\"\";i:4;s:17:\"wp-menu-separator\";}i:21;a:7:{i:0;s:22:\"WooCommerce PayPerPost\";i:1;s:14:\"manage_options\";i:2;s:15:\"wc_pay_per_post\";i:3;s:22:\"WooCommerce PayPerPost\";i:4;s:53:\"menu-top toplevel_page_wc_pay_per_post menu-top-first\";i:5;s:29:\"toplevel_page_wc_pay_per_post\";i:6;s:14:\"dashicons-cart\";}i:22;a:7:{i:0;s:9:\"Appraises\";i:1;s:14:\"manage_options\";i:2;s:21:\"gc_appraise_list_menu\";i:3;s:13:\"Appraise list\";i:4;s:58:\"menu-top toplevel_page_gc_appraise_list_menu menu-top-last\";i:5;s:35:\"toplevel_page_gc_appraise_list_menu\";i:6;s:21:\"dashicons-tickets-alt\";}}s:29:\"mw_adminimize_default_submenu\";a:17:{s:9:\"index.php\";a:2:{i:0;a:3:{i:0;s:4:\"Home\";i:1;s:4:\"read\";i:2;s:9:\"index.php\";}i:10;a:3:{i:0;s:87:\"Updates <span class=\"update-plugins count-0\"><span class=\"update-count\">0</span></span>\";i:1;s:11:\"update_core\";i:2;s:15:\"update-core.php\";}}s:10:\"upload.php\";a:2:{i:5;a:3:{i:0;s:7:\"Library\";i:1;s:12:\"upload_files\";i:2;s:10:\"upload.php\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:12:\"upload_files\";i:2;s:13:\"media-new.php\";}}s:8:\"edit.php\";a:4:{i:5;a:3:{i:0;s:9:\"All Posts\";i:1;s:10:\"edit_posts\";i:2;s:8:\"edit.php\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:10:\"edit_posts\";i:2;s:12:\"post-new.php\";}i:15;a:3:{i:0;s:10:\"Categories\";i:1;s:17:\"manage_categories\";i:2;s:31:\"edit-tags.php?taxonomy=category\";}i:16;a:3:{i:0;s:4:\"Tags\";i:1;s:16:\"manage_post_tags\";i:2;s:31:\"edit-tags.php?taxonomy=post_tag\";}}s:23:\"edit.php?post_type=page\";a:2:{i:5;a:3:{i:0;s:9:\"All Pages\";i:1;s:10:\"edit_pages\";i:2;s:23:\"edit.php?post_type=page\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:10:\"edit_pages\";i:2;s:27:\"post-new.php?post_type=page\";}}s:26:\"edit.php?post_type=product\";a:5:{i:5;a:3:{i:0;s:12:\"All Products\";i:1;s:13:\"edit_products\";i:2;s:26:\"edit.php?post_type=product\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:13:\"edit_products\";i:2;s:30:\"post-new.php?post_type=product\";}i:15;a:3:{i:0;s:10:\"Categories\";i:1;s:20:\"manage_product_terms\";i:2;s:56:\"edit-tags.php?taxonomy=product_cat&amp;post_type=product\";}i:16;a:3:{i:0;s:4:\"Tags\";i:1;s:20:\"manage_product_terms\";i:2;s:56:\"edit-tags.php?taxonomy=product_tag&amp;post_type=product\";}i:17;a:4:{i:0;s:10:\"Attributes\";i:1;s:20:\"manage_product_terms\";i:2;s:18:\"product_attributes\";i:3;s:10:\"Attributes\";}}s:31:\"edit.php?post_type=nomenclators\";a:3:{i:5;a:3:{i:0;s:3:\"All\";i:1;s:10:\"edit_posts\";i:2;s:31:\"edit.php?post_type=nomenclators\";}i:10;a:3:{i:0;s:7:\"Add new\";i:1;s:10:\"edit_posts\";i:2;s:35:\"post-new.php?post_type=nomenclators\";}i:15;a:3:{i:0;s:18:\"Nomenclators types\";i:1;s:17:\"manage_categories\";i:2;s:70:\"edit-tags.php?taxonomy=gallery-nomenclators&amp;post_type=nomenclators\";}}s:10:\"themes.php\";a:11:{i:5;a:3:{i:0;s:6:\"Themes\";i:1;s:13:\"switch_themes\";i:2;s:10:\"themes.php\";}i:6;a:5:{i:0;s:9:\"Customize\";i:1;s:9:\"customize\";i:2;s:97:\"customize.php?return=%2Fgaleria_arte%2Fwp-admin%2Foptions-general.php%3Fpage%3Dadminimize-options\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:7;a:3:{i:0;s:7:\"Widgets\";i:1;s:18:\"edit_theme_options\";i:2;s:11:\"widgets.php\";}i:10;a:3:{i:0;s:5:\"Menus\";i:1;s:18:\"edit_theme_options\";i:2;s:13:\"nav-menus.php\";}i:15;a:5:{i:0;s:6:\"Header\";i:1;s:13:\"switch_themes\";i:2;s:138:\"customize.php?return=%2Fgaleria_arte%2Fwp-admin%2Foptions-general.php%3Fpage%3Dadminimize-options&#038;autofocus%5Bcontrol%5D=header_image\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:20;a:5:{i:0;s:10:\"Background\";i:1;s:13:\"switch_themes\";i:2;s:142:\"customize.php?return=%2Fgaleria_arte%2Fwp-admin%2Foptions-general.php%3Fpage%3Dadminimize-options&#038;autofocus%5Bcontrol%5D=background_image\";i:3;s:0:\"\";i:4;s:20:\"hide-if-no-customize\";}i:21;a:4:{i:0;s:11:\"About Ample\";i:1;s:16:\"activate_plugins\";i:2;s:13:\"ample-welcome\";i:3;s:11:\"About Ample\";}i:22;a:4:{i:0;s:15:\"Install Plugins\";i:1;s:18:\"edit_theme_options\";i:2;s:21:\"tgmpa-install-plugins\";i:3;s:24:\"Install Required Plugins\";}i:23;a:4:{i:0;s:6:\"Header\";i:1;s:18:\"edit_theme_options\";i:2;s:13:\"custom-header\";i:3;s:6:\"Header\";}i:24;a:4:{i:0;s:10:\"Background\";i:1;s:18:\"edit_theme_options\";i:2;s:17:\"custom-background\";i:3;s:10:\"Background\";}i:25;a:4:{i:0;s:12:\"Theme Editor\";i:1;s:11:\"edit_themes\";i:2;s:16:\"theme-editor.php\";i:3;s:12:\"Theme Editor\";}}s:11:\"plugins.php\";a:3:{i:5;a:3:{i:0;s:17:\"Installed Plugins\";i:1;s:16:\"activate_plugins\";i:2;s:11:\"plugins.php\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:15:\"install_plugins\";i:2;s:18:\"plugin-install.php\";}i:15;a:3:{i:0;s:13:\"Plugin Editor\";i:1;s:12:\"edit_plugins\";i:2;s:17:\"plugin-editor.php\";}}s:9:\"users.php\";a:4:{i:5;a:3:{i:0;s:9:\"All Users\";i:1;s:10:\"list_users\";i:2;s:9:\"users.php\";}i:10;a:3:{i:0;s:7:\"Add New\";i:1;s:12:\"create_users\";i:2;s:12:\"user-new.php\";}i:15;a:3:{i:0;s:7:\"Profile\";i:1;s:4:\"read\";i:2;s:11:\"profile.php\";}i:16;a:4:{i:0;s:16:\"Assign / Migrate\";i:1;s:13:\"promote_users\";i:2;s:37:\"wpfront-user-role-editor-assign-roles\";i:3;s:28:\"Assign Roles | Migrate Users\";}}s:9:\"tools.php\";a:7:{i:5;a:3:{i:0;s:15:\"Available Tools\";i:1;s:10:\"edit_posts\";i:2;s:9:\"tools.php\";}i:10;a:3:{i:0;s:6:\"Import\";i:1;s:6:\"import\";i:2;s:10:\"import.php\";}i:15;a:3:{i:0;s:6:\"Export\";i:1;s:6:\"export\";i:2;s:10:\"export.php\";}i:20;a:3:{i:0;s:11:\"Site Health\";i:1;s:23:\"view_site_health_checks\";i:2;s:15:\"site-health.php\";}i:25;a:3:{i:0;s:20:\"Export Personal Data\";i:1;s:27:\"export_others_personal_data\";i:2;s:24:\"export-personal-data.php\";}i:30;a:3:{i:0;s:19:\"Erase Personal Data\";i:1;s:26:\"erase_others_personal_data\";i:2;s:23:\"erase-personal-data.php\";}i:31;a:4:{i:0;s:17:\"Scheduled Actions\";i:1;s:14:\"manage_options\";i:2;s:16:\"action-scheduler\";i:3;s:17:\"Scheduled Actions\";}}s:19:\"options-general.php\";a:8:{i:10;a:3:{i:0;s:7:\"General\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-general.php\";}i:15;a:3:{i:0;s:7:\"Writing\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-writing.php\";}i:20;a:3:{i:0;s:7:\"Reading\";i:1;s:14:\"manage_options\";i:2;s:19:\"options-reading.php\";}i:25;a:3:{i:0;s:10:\"Discussion\";i:1;s:14:\"manage_options\";i:2;s:22:\"options-discussion.php\";}i:30;a:3:{i:0;s:5:\"Media\";i:1;s:14:\"manage_options\";i:2;s:17:\"options-media.php\";}i:40;a:3:{i:0;s:10:\"Permalinks\";i:1;s:14:\"manage_options\";i:2;s:21:\"options-permalink.php\";}i:45;a:3:{i:0;s:7:\"Privacy\";i:1;s:22:\"manage_privacy_options\";i:2;s:19:\"options-privacy.php\";}i:46;a:4:{i:0;s:10:\"Adminimize\";i:1;s:14:\"manage_options\";i:2;s:18:\"adminimize-options\";i:3;s:18:\"Adminimize Options\";}}s:11:\"woocommerce\";a:8:{i:0;a:4:{i:0;s:9:\"Dashboard\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:8:\"wc-admin\";i:3;s:9:\"Dashboard\";}i:1;a:4:{i:0;s:6:\"Orders\";i:1;s:16:\"edit_shop_orders\";i:2;s:29:\"edit.php?post_type=shop_order\";i:3;s:6:\"Orders\";}i:2;a:4:{i:0;s:7:\"Coupons\";i:1;s:17:\"edit_shop_coupons\";i:2;s:30:\"edit.php?post_type=shop_coupon\";i:3;s:7:\"Coupons\";}i:3;a:4:{i:0;s:7:\"Reports\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:10:\"wc-reports\";i:3;s:7:\"Reports\";}i:4;a:4:{i:0;s:8:\"Settings\";i:1;s:18:\"manage_woocommerce\";i:2;s:11:\"wc-settings\";i:3;s:20:\"WooCommerce settings\";}i:5;a:4:{i:0;s:6:\"Status\";i:1;s:18:\"manage_woocommerce\";i:2;s:9:\"wc-status\";i:3;s:18:\"WooCommerce status\";}i:6;a:4:{i:0;s:11:\"Extensions \";i:1;s:18:\"manage_woocommerce\";i:2;s:9:\"wc-addons\";i:3;s:22:\"WooCommerce extensions\";}i:7;a:4:{i:0;s:12:\"PDF Invoices\";i:1;s:18:\"manage_woocommerce\";i:2;s:22:\"wpo_wcpdf_options_page\";i:3;s:12:\"PDF Invoices\";}}s:0:\"\";a:1:{i:0;a:4:{i:0;s:24:\"Freemius Debug [v.2.3.2]\";i:1;s:14:\"manage_options\";i:2;s:8:\"freemius\";i:3;s:24:\"Freemius Debug [v.2.3.2]\";}}s:15:\"wc_pay_per_post\";a:9:{i:1;a:4:{i:0;s:8:\"Settings\";i:1;s:14:\"manage_options\";i:2;s:24:\"wc_pay_per_post-settings\";i:3;s:8:\"Settings\";}i:2;a:4:{i:0;s:10:\"What\'s New\";i:1;s:14:\"manage_options\";i:2;s:25:\"wc_pay_per_post-whats-new\";i:3;s:10:\"What\'s New\";}i:3;a:4:{i:0;s:15:\"Getting Started\";i:1;s:14:\"manage_options\";i:2;s:31:\"wc_pay_per_post-getting-started\";i:3;s:45:\"Getting Started with WooCommerce Pay Per Post\";}i:4;a:4:{i:0;s:13:\"Documentation\";i:1;s:14:\"manage_options\";i:2;s:20:\"wc_pay_per_post-help\";i:3;s:38:\"WooCommerce Pay Per Post Documentation\";}i:5;a:4:{i:0;s:5:\"Debug\";i:1;s:14:\"manage_options\";i:2;s:21:\"wc_pay_per_post-debug\";i:3;s:5:\"Debug\";}i:6;a:4:{i:0;s:172:\"<span class=\"pramadillo-admin-separator-container\"><span class=\"pramadillo-admin-separator-title\">Account Info</span><span class=\"pramadillo-admin-separator\"></span></span>\";i:1;s:14:\"manage_options\";i:2;s:1:\"#\";i:3;s:0:\"\";}i:7;a:4:{i:0;s:86:\"<span class=\"fs-submenu-item woocommerce-pay-per-post affiliation \">Affiliation</span>\";i:1;s:14:\"manage_options\";i:2;s:27:\"wc_pay_per_post-affiliation\";i:3;s:44:\"WooCommerce Pay Per Post &ndash; Affiliation\";}i:8;a:4:{i:0;s:81:\"<span class=\"fs-submenu-item woocommerce-pay-per-post contact \">Contact Us</span>\";i:1;s:14:\"manage_options\";i:2;s:23:\"wc_pay_per_post-contact\";i:3;s:43:\"WooCommerce Pay Per Post &ndash; Contact Us\";}i:9;a:4:{i:0;s:110:\"<span class=\"fs-submenu-item woocommerce-pay-per-post pricing upgrade-mode\">Upgrade&nbsp;&nbsp;&#x27a4;</span>\";i:1;s:14:\"manage_options\";i:2;s:23:\"wc_pay_per_post-pricing\";i:3;s:40:\"WooCommerce Pay Per Post &ndash; Pricing\";}}s:34:\"wpfront-user-role-editor-all-roles\";a:7:{i:0;a:4:{i:0;s:9:\"All Roles\";i:1;s:10:\"list_roles\";i:2;s:34:\"wpfront-user-role-editor-all-roles\";i:3;s:5:\"Roles\";}i:1;a:4:{i:0;s:7:\"Add New\";i:1;s:12:\"create_roles\";i:2;s:32:\"wpfront-user-role-editor-add-new\";i:3;s:12:\"Add New Role\";}i:2;a:4:{i:0;s:7:\"Restore\";i:1;s:10:\"edit_roles\";i:2;s:32:\"wpfront-user-role-editor-restore\";i:3;s:12:\"Restore Role\";}i:3;a:4:{i:0;s:14:\"Add/Remove Cap\";i:1;s:10:\"edit_roles\";i:2;s:46:\"wpfront-user-role-editor-add-remove-capability\";i:3;s:21:\"Add/Remove Capability\";}i:4;a:4:{i:0;s:14:\"Login Redirect\";i:1;s:20:\"edit_login_redirects\";i:2;s:39:\"wpfront-user-role-editor-login-redirect\";i:3;s:14:\"Login Redirect\";}i:5;a:4:{i:0;s:8:\"Settings\";i:1;s:14:\"manage_options\";i:2;s:24:\"wpfront-user-role-editor\";i:3;s:8:\"Settings\";}i:6;a:4:{i:0;s:42:\"<span class=\"wpfront-go-pro\">Go Pro</span>\";i:1;s:14:\"manage_options\";i:2;s:31:\"wpfront-user-role-editor-go-pro\";i:3;s:6:\"Go Pro\";}}s:32:\"wc-admin&path=/analytics/revenue\";a:10:{i:0;a:4:{i:0;s:7:\"Revenue\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:32:\"wc-admin&path=/analytics/revenue\";i:3;s:7:\"Revenue\";}i:1;a:4:{i:0;s:6:\"Orders\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:31:\"wc-admin&path=/analytics/orders\";i:3;s:6:\"Orders\";}i:2;a:4:{i:0;s:8:\"Products\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:33:\"wc-admin&path=/analytics/products\";i:3;s:8:\"Products\";}i:3;a:4:{i:0;s:10:\"Categories\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:35:\"wc-admin&path=/analytics/categories\";i:3;s:10:\"Categories\";}i:4;a:4:{i:0;s:7:\"Coupons\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:32:\"wc-admin&path=/analytics/coupons\";i:3;s:7:\"Coupons\";}i:5;a:4:{i:0;s:5:\"Taxes\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:30:\"wc-admin&path=/analytics/taxes\";i:3;s:5:\"Taxes\";}i:6;a:4:{i:0;s:9:\"Downloads\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:34:\"wc-admin&path=/analytics/downloads\";i:3;s:9:\"Downloads\";}i:7;a:4:{i:0;s:5:\"Stock\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:30:\"wc-admin&path=/analytics/stock\";i:3;s:5:\"Stock\";}i:8;a:4:{i:0;s:9:\"Customers\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:34:\"wc-admin&path=/analytics/customers\";i:3;s:9:\"Customers\";}i:9;a:4:{i:0;s:8:\"Settings\";i:1;s:24:\"view_woocommerce_reports\";i:2;s:33:\"wc-admin&path=/analytics/settings\";i:3;s:8:\"Settings\";}}s:10:\"wc-vendors\";a:3:{i:1;a:4:{i:0;s:11:\"Commissions\";i:1;s:18:\"manage_woocommerce\";i:2;s:15:\"wcv-commissions\";i:3;s:11:\"Commissions\";}i:2;a:4:{i:0;s:8:\"Settings\";i:1;s:18:\"manage_woocommerce\";i:2;s:12:\"wcv-settings\";i:3;s:19:\"WC Vendors Settings\";}i:3;a:4:{i:0;s:10:\"Extensions\";i:1;s:18:\"manage_woocommerce\";i:2;s:14:\"wcv-extensions\";i:3;s:21:\"WC Vendors Extensions\";}}}}', 'yes'),
(1618, '_transient_timeout_wc_admin_unsnooze_admin_notes_checked', '1609994663', 'no'),
(1619, '_transient_wc_admin_unsnooze_admin_notes_checked', 'yes', 'no'),
(1624, 'wc_pay_per_post_restricted_content_default', '<h1>Oops, Restricted Content</h1>\r\nWe are sorry but this post is restricted to folks that have purchased this page.\r\n\r\n[products ids=\'{{product_id}}\']', 'yes'),
(1625, 'wc_pay_per_post_only_show_virtual_products', '1', 'yes'),
(1626, 'wc_pay_per_post_turn_off_comments_when_protected', '1', 'yes'),
(1627, 'wc_pay_per_post_allow_admins_access_to_protected_posts', '', 'yes'),
(1628, 'wc_pay_per_post_enable_debugging', '', 'yes'),
(1629, 'wc_pay_per_post_delete_settings', '', 'yes'),
(1630, '_transient_timeout_settings_errors', '1609991446', 'no'),
(1631, '_transient_settings_errors', 'a:1:{i:0;a:4:{s:7:\"setting\";s:7:\"general\";s:4:\"code\";s:16:\"settings_updated\";s:7:\"message\";s:15:\"Settings saved.\";s:4:\"type\";s:7:\"success\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_wp_attached_file', 'woocommerce-placeholder.png'),
(6, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 17, '_menu_item_type', 'custom'),
(16, 17, '_menu_item_menu_item_parent', '0'),
(17, 17, '_menu_item_object_id', '17'),
(18, 17, '_menu_item_object', 'custom'),
(19, 17, '_menu_item_target', ''),
(20, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(21, 17, '_menu_item_xfn', ''),
(22, 17, '_menu_item_url', 'http://localhost/galeria_arte'),
(23, 16, '_wp_trash_meta_status', 'publish'),
(24, 16, '_wp_trash_meta_time', '1609101531'),
(28, 20, '_edit_lock', '1609103559:1'),
(29, 20, '_edit_last', '1'),
(30, 20, 'wc_pay_per_post_product_ids', ''),
(47, 22, '_wp_trash_meta_status', 'publish'),
(48, 22, '_wp_trash_meta_time', '1609101846'),
(49, 25, '_edit_lock', '1609102188:1'),
(50, 26, '_menu_item_type', 'custom'),
(51, 26, '_menu_item_menu_item_parent', '0'),
(52, 26, '_menu_item_object_id', '26'),
(53, 26, '_menu_item_object', 'custom'),
(54, 26, '_menu_item_target', ''),
(55, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 26, '_menu_item_xfn', ''),
(57, 26, '_menu_item_url', '#'),
(74, 25, '_wp_trash_meta_status', 'publish'),
(75, 25, '_wp_trash_meta_time', '1609102192'),
(77, 8, '_edit_lock', '1609103634:1'),
(94, 34, '_wp_trash_meta_status', 'publish'),
(95, 34, '_wp_trash_meta_time', '1609104784'),
(104, 36, '_wp_trash_meta_status', 'publish'),
(105, 36, '_wp_trash_meta_time', '1609104845'),
(123, 40, '_wp_trash_meta_status', 'publish'),
(124, 40, '_wp_trash_meta_time', '1609106219'),
(125, 42, '_wp_trash_meta_status', 'publish'),
(126, 42, '_wp_trash_meta_time', '1609106244'),
(127, 43, '_edit_last', '1'),
(128, 43, '_edit_lock', '1609991228:1'),
(129, 43, 'pv_commission_rate', ''),
(130, 43, '_regular_price', '100'),
(131, 43, '_sale_price', '99'),
(132, 43, 'total_sales', '1'),
(133, 43, '_tax_status', 'taxable'),
(134, 43, '_tax_class', ''),
(135, 43, '_manage_stock', 'no'),
(136, 43, '_backorders', 'no'),
(137, 43, '_sold_individually', 'no'),
(138, 43, '_virtual', 'yes'),
(139, 43, '_downloadable', 'no'),
(140, 43, '_download_limit', '-1'),
(141, 43, '_download_expiry', '-1'),
(142, 43, '_stock', NULL),
(143, 43, '_stock_status', 'instock'),
(144, 43, '_wc_average_rating', '0'),
(145, 43, '_wc_review_count', '0'),
(146, 43, '_product_version', '4.7.1'),
(147, 43, '_price', '99'),
(148, 44, '_order_key', 'wc_order_m8c0evG4OT5FA'),
(149, 44, '_customer_user', '1'),
(150, 44, '_payment_method', 'bacs'),
(151, 44, '_payment_method_title', 'Direct bank transfer'),
(152, 44, '_customer_ip_address', '127.0.0.1'),
(153, 44, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0'),
(154, 44, '_created_via', 'checkout'),
(155, 44, '_cart_hash', '0ce14c277c16296e6a9242df65183b93'),
(156, 44, '_billing_first_name', 'Adniel'),
(157, 44, '_billing_last_name', 'Quintana'),
(158, 44, '_billing_company', 'GWOCUBA'),
(159, 44, '_billing_address_1', 'Calle Falsa'),
(160, 44, '_billing_address_2', '123'),
(161, 44, '_billing_city', 'Madrid'),
(162, 44, '_billing_state', 'M'),
(163, 44, '_billing_postcode', '84100'),
(164, 44, '_billing_country', 'ES'),
(165, 44, '_billing_email', 'aqmunoz@gmail.com'),
(166, 44, '_billing_phone', '46345689'),
(167, 44, '_order_currency', 'EUR'),
(168, 44, '_cart_discount', '0'),
(169, 44, '_cart_discount_tax', '0'),
(170, 44, '_order_shipping', '0'),
(171, 44, '_order_shipping_tax', '0'),
(172, 44, '_order_tax', '0'),
(173, 44, '_order_total', '99.00'),
(174, 44, '_order_version', '4.7.1'),
(175, 44, '_prices_include_tax', 'no'),
(176, 44, '_billing_address_index', 'Adniel Quintana GWOCUBA Calle Falsa 123 Madrid M 84100 ES aqmunoz@gmail.com 46345689'),
(177, 44, '_shipping_address_index', '        '),
(178, 44, 'is_vat_exempt', 'no'),
(179, 44, '_recorded_sales', 'yes'),
(180, 44, '_recorded_coupon_usage_counts', 'yes'),
(181, 44, '_order_stock_reduced', 'yes'),
(182, 44, '_edit_lock', '1609107113:1'),
(183, 44, '_edit_last', '1'),
(185, 44, '_date_completed', '1609106791'),
(186, 44, '_date_paid', '1609106791'),
(187, 44, '_paid_date', '2020-12-27 22:06:31'),
(188, 44, '_completed_date', '2020-12-27 22:06:31'),
(189, 44, '_download_permissions_granted', 'yes'),
(206, 53, '_wp_trash_meta_status', 'publish'),
(207, 53, '_wp_trash_meta_time', '1609121402'),
(208, 55, '_wp_trash_meta_status', 'publish'),
(209, 55, '_wp_trash_meta_time', '1609122485'),
(224, 58, '_wp_trash_meta_status', 'publish'),
(225, 58, '_wp_trash_meta_time', '1609122740'),
(243, 64, '_wp_trash_meta_status', 'publish'),
(244, 64, '_wp_trash_meta_time', '1609123345'),
(245, 66, '_wp_trash_meta_status', 'publish'),
(246, 66, '_wp_trash_meta_time', '1609123422'),
(261, 69, '_wp_trash_meta_status', 'publish'),
(262, 69, '_wp_trash_meta_time', '1609124751'),
(274, 74, '_wp_trash_meta_status', 'publish'),
(275, 74, '_wp_trash_meta_time', '1609128461'),
(282, 76, '_edit_lock', '1609991473:1'),
(283, 76, '_edit_last', '1'),
(284, 76, 'wc_pay_per_post_product_ids', ''),
(285, 79, '_menu_item_type', 'custom'),
(286, 79, '_menu_item_menu_item_parent', '0'),
(287, 79, '_menu_item_object_id', '79'),
(288, 79, '_menu_item_object', 'custom'),
(289, 79, '_menu_item_target', ''),
(290, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(291, 79, '_menu_item_xfn', ''),
(292, 79, '_menu_item_url', '#'),
(293, 80, '_menu_item_type', 'post_type'),
(294, 80, '_menu_item_menu_item_parent', '79'),
(295, 80, '_menu_item_object_id', '76'),
(296, 80, '_menu_item_object', 'page'),
(297, 80, '_menu_item_target', ''),
(298, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(299, 80, '_menu_item_xfn', ''),
(300, 80, '_menu_item_url', ''),
(301, 78, '_wp_trash_meta_status', 'publish'),
(302, 78, '_wp_trash_meta_time', '1609129208'),
(309, 85, '_edit_lock', '1609130068:1'),
(310, 85, '_edit_last', '1'),
(311, 85, 'wc_pay_per_post_product_ids', ''),
(312, 89, '_menu_item_type', 'post_type'),
(313, 89, '_menu_item_menu_item_parent', '79'),
(314, 89, '_menu_item_object_id', '85'),
(315, 89, '_menu_item_object', 'page'),
(316, 89, '_menu_item_target', ''),
(317, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(318, 89, '_menu_item_xfn', ''),
(319, 89, '_menu_item_url', ''),
(320, 88, '_wp_trash_meta_status', 'publish'),
(321, 88, '_wp_trash_meta_time', '1609130099'),
(322, 90, '_wp_trash_meta_status', 'publish'),
(323, 90, '_wp_trash_meta_time', '1609134088'),
(336, 103, '_edit_last', '1'),
(337, 103, '_edit_lock', '1609815761:1'),
(338, 104, '_edit_last', '1'),
(339, 104, '_edit_lock', '1609815793:1'),
(340, 105, '_edit_last', '1'),
(341, 105, '_edit_lock', '1609815850:1'),
(344, 107, '_wp_trash_meta_status', 'auto-draft'),
(345, 107, '_wp_trash_meta_time', '1609990190'),
(346, 107, '_wp_desired_post_slug', ''),
(347, 110, '_wp_trash_meta_status', 'auto-draft'),
(348, 110, '_wp_trash_meta_time', '1609990192'),
(349, 110, '_wp_desired_post_slug', ''),
(350, 114, '_edit_lock', '1609991207:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-12-01 13:17:47', '2020-12-01 13:17:47', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-12-01 13:17:47', '2020-12-01 13:17:47', '', 0, 'http://localhost:8080/galeria_arte/?p=1', 0, 'post', '', 1),
(2, 1, '2020-12-01 13:17:47', '2020-12-01 13:17:47', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8080/galeria_arte/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-12-01 13:17:47', '2020-12-01 13:17:47', '', 0, 'http://localhost:8080/galeria_arte/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-12-01 13:17:47', '2020-12-01 13:17:47', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8080/galeria_arte.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-12-01 13:17:47', '2020-12-01 13:17:47', '', 0, 'http://localhost:8080/galeria_arte/?page_id=3', 0, 'page', '', 0),
(6, 1, '2020-12-01 13:20:02', '2020-12-01 13:20:02', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-12-01 13:20:02', '2020-12-01 13:20:02', '', 0, 'http://localhost:8080/galeria_arte/wp-content/uploads/2020/12/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2020-12-01 13:20:03', '2020-12-01 13:20:03', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-12-01 13:20:03', '2020-12-01 13:20:03', '', 0, 'http://localhost:8080/galeria_arte/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-12-01 13:20:04', '2020-12-01 13:20:04', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-12-01 13:20:04', '2020-12-01 13:20:04', '', 0, 'http://localhost:8080/galeria_arte/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-12-01 13:20:04', '2020-12-01 13:20:04', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-12-01 13:20:04', '2020-12-01 13:20:04', '', 0, 'http://localhost:8080/galeria_arte/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-12-01 13:20:04', '2020-12-01 13:20:04', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-12-01 13:20:04', '2020-12-01 13:20:04', '', 0, 'http://localhost:8080/galeria_arte/?page_id=10', 0, 'page', '', 0),
(16, 1, '2020-12-27 20:38:48', '2020-12-27 20:38:48', '{\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"value\": -742991413,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 20:38:48\"\n    },\n    \"nav_menu[-742991413]\": {\n        \"value\": {\n            \"name\": \"principal\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 20:38:48\"\n    },\n    \"nav_menu_item[-1666208442]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/galeria_arte\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -742991413,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 20:38:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '703bbc0a-9fa8-4d9d-8b3c-da6b5f1d4b19', '', '', '2020-12-27 20:38:48', '2020-12-27 20:38:48', '', 0, 'http://localhost/galeria_arte/?p=16', 0, 'customize_changeset', '', 0),
(17, 1, '2020-12-27 20:38:49', '2020-12-27 20:38:49', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-12-27 20:38:49', '2020-12-27 20:38:49', '', 0, 'http://localhost/galeria_arte/?p=17', 1, 'nav_menu_item', '', 0),
(22, 1, '2020-12-27 20:44:04', '2020-12-27 20:44:04', '{\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"value\": -1705338818,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 20:44:04\"\n    },\n    \"nav_menu[-1705338818]\": {\n        \"value\": {\n            \"name\": \"Appraises\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 20:44:04\"\n    },\n    \"nav_menu_item[-136072370]\": {\n        \"value\": {\n            \"object_id\": 20,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Appraise list\",\n            \"url\": \"http://localhost/galeria_arte/?page_id=20\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Appraise list\",\n            \"nav_menu_term_id\": -1705338818,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 20:44:04\"\n    },\n    \"nav_menu_item[-61871341]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Appraise form\",\n            \"url\": \"http://localhost/galeria_arte/?page_id=18\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Appraise form\",\n            \"nav_menu_term_id\": -1705338818,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 20:44:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'db6ada38-2daa-48d8-8b30-ed9976d9e4d9', '', '', '2020-12-27 20:44:04', '2020-12-27 20:44:04', '', 0, 'http://localhost/galeria_arte/?p=22', 0, 'customize_changeset', '', 0),
(25, 1, '2020-12-27 20:49:50', '2020-12-27 20:49:50', '{\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"value\": 16,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 20:44:40\"\n    },\n    \"nav_menu_item[-259680741]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Appraises\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Appraises\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 20:49:48\"\n    },\n    \"nav_menu_item[-2111536079]\": {\n        \"value\": {\n            \"object_id\": 20,\n            \"object\": \"page\",\n            \"menu_item_parent\": -259680741,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Appraise list\",\n            \"url\": \"http://localhost/galeria_arte/?page_id=20\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Appraise list\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 20:49:48\"\n    },\n    \"nav_menu_item[-353896887]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": -259680741,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Appraise form\",\n            \"url\": \"http://localhost/galeria_arte/?page_id=18\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Appraise form\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 20:49:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f79524d4-eaf8-45eb-8843-02eccef2f473', '', '', '2020-12-27 20:49:50', '2020-12-27 20:49:50', '', 0, 'http://localhost/galeria_arte/?p=25', 0, 'customize_changeset', '', 0),
(34, 1, '2020-12-27 21:33:02', '2020-12-27 21:33:02', '{\n    \"nav_menu_item[28]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 21:33:02\"\n    },\n    \"nav_menu_item[-693396098]\": {\n        \"value\": {\n            \"object_id\": 32,\n            \"object\": \"post\",\n            \"menu_item_parent\": 26,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Appraise form\",\n            \"url\": \"http://localhost/galeria_arte/?p=32\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Appraise form\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Post\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 21:33:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6a13c7d6-78ff-4677-8205-9efa19877b7a', '', '', '2020-12-27 21:33:02', '2020-12-27 21:33:02', '', 0, 'http://localhost/galeria_arte/?p=34', 0, 'customize_changeset', '', 0),
(36, 1, '2020-12-27 21:34:03', '2020-12-27 21:34:03', '{\n    \"nav_menu_item[35]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 21:34:03\"\n    },\n    \"nav_menu_item[-1929877393]\": {\n        \"value\": {\n            \"object_id\": 18,\n            \"object\": \"page\",\n            \"menu_item_parent\": 26,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Appraise form\",\n            \"url\": \"http://localhost/galeria_arte/?page_id=18\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Appraise form\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 21:34:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f9e5aa0d-2ffe-4f0b-8073-b9b1b8775aad', '', '', '2020-12-27 21:34:03', '2020-12-27 21:34:03', '', 0, 'http://localhost/galeria_arte/?p=36', 0, 'customize_changeset', '', 0),
(40, 1, '2020-12-27 21:56:58', '2020-12-27 21:56:58', '{\n    \"nav_menu_item[-1023491083]\": {\n        \"value\": {\n            \"object_id\": 38,\n            \"object\": \"page\",\n            \"menu_item_parent\": 26,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Appraise form\",\n            \"url\": \"http://localhost/galeria_arte/appraise-form/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Appraise form\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 21:56:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dc891903-a460-4085-a6f0-53a095768d21', '', '', '2020-12-27 21:56:58', '2020-12-27 21:56:58', '', 0, 'http://localhost/galeria_arte/dc891903-a460-4085-a6f0-53a095768d21/', 0, 'customize_changeset', '', 0),
(42, 1, '2020-12-27 21:57:23', '2020-12-27 21:57:23', '{\n    \"nav_menu[17]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 21:57:23\"\n    },\n    \"nav_menu_item[23]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-27 21:57:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6a02255c-a1ce-4e7d-b465-5aaf10b1da1c', '', '', '2020-12-27 21:57:23', '2020-12-27 21:57:23', '', 0, 'http://localhost/galeria_arte/6a02255c-a1ce-4e7d-b465-5aaf10b1da1c/', 0, 'customize_changeset', '', 0),
(43, 1, '2020-12-27 21:59:26', '2020-12-27 21:59:26', 'Appraise product', 'Appraise product', 'Appraise product', 'publish', 'open', 'closed', '', 'appraise-product', '', '', '2020-12-28 15:43:17', '2020-12-28 15:43:17', '', 0, 'http://localhost/galeria_arte/?post_type=product&#038;p=43', 0, 'product', '', 0),
(44, 1, '2020-12-27 22:04:30', '2020-12-27 22:04:30', '', 'Order &ndash; December 27, 2020 @ 10:04 PM', 'aefsfewf', 'wc-completed', 'closed', 'closed', 'wc_order_m8c0evG4OT5FA', 'order-dec-27-2020-1004-pm', '', '', '2020-12-27 22:06:31', '2020-12-27 22:06:31', '', 0, 'http://localhost/galeria_arte/?post_type=shop_order&#038;p=44', 0, 'shop_order', '', 2),
(53, 1, '2020-12-28 02:10:01', '2020-12-28 02:10:01', '{\n    \"nav_menu_item[-1815716023]\": {\n        \"value\": {\n            \"object_id\": 51,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"#51 (no title)\",\n            \"url\": \"http://localhost/galeria_arte/51-2/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"#51 (no title)\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 02:10:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c16b1243-a9aa-4d26-86da-08b534e2bc87', '', '', '2020-12-28 02:10:01', '2020-12-28 02:10:01', '', 0, 'http://localhost/galeria_arte/c16b1243-a9aa-4d26-86da-08b534e2bc87/', 0, 'customize_changeset', '', 0),
(55, 1, '2020-12-28 02:28:05', '2020-12-28 02:28:05', '{\n    \"nav_menu_item[54]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 51,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/galeria_arte/51-2/\",\n            \"title\": \"#51 (no title)\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 5,\n            \"status\": \"publish\",\n            \"original_title\": \"#51 (no title)\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 02:28:05\"\n    },\n    \"nav_menu_item[41]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 38,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/galeria_arte/appraise/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 16,\n            \"position\": 4,\n            \"status\": \"publish\",\n            \"original_title\": \"Appraise form\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 02:28:05\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'efd48823-e6c6-4b78-8975-96d01b79e352', '', '', '2020-12-28 02:28:05', '2020-12-28 02:28:05', '', 0, 'http://localhost/galeria_arte/efd48823-e6c6-4b78-8975-96d01b79e352/', 0, 'customize_changeset', '', 0),
(58, 1, '2020-12-28 02:32:15', '2020-12-28 02:32:15', '{\n    \"nav_menu_item[-1208942785]\": {\n        \"value\": {\n            \"object_id\": 56,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"#56 (no title)\",\n            \"url\": \"http://localhost/galeria_arte/56-2/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"#56 (no title)\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 02:32:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '46298265-580b-4bcc-9ecb-4152b9f052e8', '', '', '2020-12-28 02:32:15', '2020-12-28 02:32:15', '', 0, 'http://localhost/galeria_arte/46298265-580b-4bcc-9ecb-4152b9f052e8/', 0, 'customize_changeset', '', 0),
(64, 1, '2020-12-28 02:42:24', '2020-12-28 02:42:24', '{\n    \"nav_menu_item[27]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 02:42:24\"\n    },\n    \"nav_menu_item[-1647398496]\": {\n        \"value\": {\n            \"object_id\": 62,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Appraise\",\n            \"url\": \"http://localhost/galeria_arte/appraise/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Appraise\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 02:42:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '35cbc2aa-0ff7-403b-9513-c525848d5b3f', '', '', '2020-12-28 02:42:24', '2020-12-28 02:42:24', '', 0, 'http://localhost/galeria_arte/35cbc2aa-0ff7-403b-9513-c525848d5b3f/', 0, 'customize_changeset', '', 0),
(66, 1, '2020-12-28 02:43:42', '2020-12-28 02:43:42', '{\n    \"nav_menu_item[65]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 02:43:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4d2c9144-af5e-4dfb-a1f7-6b59e1345a05', '', '', '2020-12-28 02:43:42', '2020-12-28 02:43:42', '', 0, 'http://localhost/galeria_arte/4d2c9144-af5e-4dfb-a1f7-6b59e1345a05/', 0, 'customize_changeset', '', 0),
(69, 1, '2020-12-28 03:05:50', '2020-12-28 03:05:50', '{\n    \"nav_menu_item[-1607255702]\": {\n        \"value\": {\n            \"object_id\": 67,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"pp\",\n            \"url\": \"http://localhost/galeria_arte/pp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"pp\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 03:05:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bf05281f-be93-4a7a-a061-eee01a8d9189', '', '', '2020-12-28 03:05:50', '2020-12-28 03:05:50', '', 0, 'http://localhost/galeria_arte/bf05281f-be93-4a7a-a061-eee01a8d9189/', 0, 'customize_changeset', '', 0),
(74, 1, '2020-12-28 04:07:34', '2020-12-28 04:07:34', '{\n    \"nav_menu_item[70]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 04:07:34\"\n    },\n    \"nav_menu_item[-1417668618]\": {\n        \"value\": {\n            \"object_id\": 71,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"aa\",\n            \"url\": \"http://localhost/galeria_arte/aa/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"aa\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 04:07:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '25c65721-b486-45a3-b404-01b86435a89f', '', '', '2020-12-28 04:07:34', '2020-12-28 04:07:34', '', 0, 'http://localhost/galeria_arte/25c65721-b486-45a3-b404-01b86435a89f/', 0, 'customize_changeset', '', 0),
(76, 1, '2020-12-28 04:19:12', '2020-12-28 04:19:12', '<!-- wp:shortcode -->\n[gc_appraise_artwork_form]\n<!-- /wp:shortcode -->', 'New apprise', '', 'publish', 'closed', 'closed', '', 'new-apprise', '', '', '2020-12-28 04:19:15', '2020-12-28 04:19:15', '', 0, 'http://localhost/galeria_arte/?page_id=76', 0, 'page', '', 0),
(77, 1, '2020-12-28 04:19:12', '2020-12-28 04:19:12', '<!-- wp:shortcode -->\n[gc_appraise_artwork_form]\n<!-- /wp:shortcode -->', 'New apprise', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2020-12-28 04:19:12', '2020-12-28 04:19:12', '', 76, 'http://localhost/galeria_arte/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-12-28 04:20:06', '2020-12-28 04:20:06', '{\n    \"nav_menu_item[-1979404623]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Apprises\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Apprises\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 04:20:06\"\n    },\n    \"nav_menu_item[-2047767920]\": {\n        \"value\": {\n            \"object_id\": 76,\n            \"object\": \"page\",\n            \"menu_item_parent\": -1979404623,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"New apprise\",\n            \"url\": \"http://localhost/galeria_arte/new-apprise/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"New apprise\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 04:20:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5d6ab7ca-db26-4c1b-80d8-838b484f336b', '', '', '2020-12-28 04:20:06', '2020-12-28 04:20:06', '', 0, 'http://localhost/galeria_arte/5d6ab7ca-db26-4c1b-80d8-838b484f336b/', 0, 'customize_changeset', '', 0),
(79, 1, '2020-12-28 04:20:06', '2020-12-28 04:20:06', '', 'Apprises', '', 'publish', 'closed', 'closed', '', 'apprises', '', '', '2020-12-28 04:20:06', '2020-12-28 04:20:06', '', 0, 'http://localhost/galeria_arte/apprises/', 2, 'nav_menu_item', '', 0),
(80, 1, '2020-12-28 04:20:07', '2020-12-28 04:20:07', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2020-12-28 04:20:07', '2020-12-28 04:20:07', '', 0, 'http://localhost/galeria_arte/80/', 3, 'nav_menu_item', '', 0),
(85, 1, '2020-12-28 04:33:40', '2020-12-28 04:33:40', '<!-- wp:shortcode -->\n[personal_appraise_list]\n<!-- /wp:shortcode -->', 'Personal Apprises', '', 'publish', 'closed', 'closed', '', 'apprises-list', '', '', '2020-12-28 04:34:25', '2020-12-28 04:34:25', '', 0, 'http://localhost/galeria_arte/?page_id=85', 0, 'page', '', 0),
(86, 1, '2020-12-28 04:33:40', '2020-12-28 04:33:40', '<!-- wp:shortcode -->\n[personal_appraise_list]\n<!-- /wp:shortcode -->', 'Apprises List', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2020-12-28 04:33:40', '2020-12-28 04:33:40', '', 85, 'http://localhost/galeria_arte/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-12-28 04:34:23', '2020-12-28 04:34:23', '<!-- wp:shortcode -->\n[personal_appraise_list]\n<!-- /wp:shortcode -->', 'Personal Apprises', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2020-12-28 04:34:23', '2020-12-28 04:34:23', '', 85, 'http://localhost/galeria_arte/85-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2020-12-28 04:34:58', '2020-12-28 04:34:58', '{\n    \"nav_menu_item[-2081688315]\": {\n        \"value\": {\n            \"object_id\": 85,\n            \"object\": \"page\",\n            \"menu_item_parent\": 79,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Personal Apprises\",\n            \"url\": \"http://localhost/galeria_arte/apprises-list/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Personal Apprises\",\n            \"nav_menu_term_id\": 16,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 04:34:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '81ff9827-3cd0-4b32-8c1d-bf4d1c4883c8', '', '', '2020-12-28 04:34:58', '2020-12-28 04:34:58', '', 0, 'http://localhost/galeria_arte/81ff9827-3cd0-4b32-8c1d-bf4d1c4883c8/', 0, 'customize_changeset', '', 0),
(89, 1, '2020-12-28 04:34:58', '2020-12-28 04:34:58', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2020-12-28 04:34:58', '2020-12-28 04:34:58', '', 0, 'http://localhost/galeria_arte/89/', 4, 'nav_menu_item', '', 0),
(90, 1, '2020-12-28 05:41:27', '2020-12-28 05:41:27', '{\n    \"custom_css[ample]\": {\n        \"value\": \"table.personalappraises button.toggle-row{\\n    display: none !important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-12-28 05:41:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3f5e6d7f-f854-4f40-a4d3-7295fddca6e8', '', '', '2020-12-28 05:41:27', '2020-12-28 05:41:27', '', 0, 'http://localhost/galeria_arte/3f5e6d7f-f854-4f40-a4d3-7295fddca6e8/', 0, 'customize_changeset', '', 0),
(91, 1, '2020-12-28 05:41:28', '2020-12-28 05:41:28', 'table.personalappraises button.toggle-row{\n    display: none !important;\n}', 'ample', '', 'publish', 'closed', 'closed', '', 'ample', '', '', '2020-12-28 05:41:28', '2020-12-28 05:41:28', '', 0, 'http://localhost/galeria_arte/ample/', 0, 'custom_css', '', 0),
(92, 1, '2020-12-28 05:41:28', '2020-12-28 05:41:28', 'table.personalappraises button.toggle-row{\n    display: none !important;\n}', 'ample', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2020-12-28 05:41:28', '2020-12-28 05:41:28', '', 91, 'http://localhost/galeria_arte/91-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2021-01-05 03:00:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-01-05 03:00:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/galeria_arte/?p=102', 0, 'post', '', 0),
(103, 1, '2021-01-05 03:04:55', '2021-01-05 03:04:55', '', 'Wood', '', 'publish', 'closed', 'closed', '', 'wood', '', '', '2021-01-05 03:04:55', '2021-01-05 03:04:55', '', 0, 'http://localhost/galeria_arte/?post_type=nomenclators&#038;p=103', 0, 'nomenclators', '', 0),
(104, 1, '2021-01-05 03:05:30', '2021-01-05 03:05:30', '', 'Plastic', '', 'publish', 'closed', 'closed', '', 'plastic', '', '', '2021-01-05 03:05:30', '2021-01-05 03:05:30', '', 0, 'http://localhost/galeria_arte/?post_type=nomenclators&#038;p=104', 0, 'nomenclators', '', 0),
(105, 1, '2021-01-05 03:06:25', '2021-01-05 03:06:25', '', 'Óleo sobre lienzo', '', 'publish', 'closed', 'closed', '', 'oleo-sobre-lienzo', '', '', '2021-01-05 03:06:25', '2021-01-05 03:06:25', '', 0, 'http://localhost/galeria_arte/?post_type=nomenclators&#038;p=105', 0, 'nomenclators', '', 0),
(107, 2, '2021-01-07 03:29:51', '2021-01-07 03:29:51', '', 'Auto Draft', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2021-01-07 03:29:51', '2021-01-07 03:29:51', '', 0, 'http://localhost/galeria_arte/?p=107', 0, 'post', '', 0),
(109, 3, '2021-01-07 02:53:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-01-07 02:53:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/galeria_arte/?p=109', 0, 'post', '', 0),
(110, 4, '2021-01-07 03:29:52', '2021-01-07 03:29:52', '', 'Auto Draft', '', 'trash', 'open', 'open', '', '__trashed-2', '', '', '2021-01-07 03:29:52', '2021-01-07 03:29:52', '', 0, 'http://localhost/galeria_arte/?p=110', 0, 'post', '', 0),
(111, 1, '2021-01-07 03:29:51', '2021-01-07 03:29:51', '', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2021-01-07 03:29:51', '2021-01-07 03:29:51', '', 107, 'http://localhost/galeria_arte/107-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2021-01-07 03:29:52', '2021-01-07 03:29:52', '', 'Auto Draft', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2021-01-07 03:29:52', '2021-01-07 03:29:52', '', 110, 'http://localhost/galeria_arte/110-revision-v1/', 0, 'revision', '', 0),
(113, 5, '2021-01-07 03:34:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-01-07 03:34:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/galeria_arte/?p=113', 0, 'post', '', 0),
(114, 1, '2021-01-07 03:45:56', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2021-01-07 03:45:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/galeria_arte/?post_type=product&p=114', 0, 'product', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_pv_commission`
--

CREATE TABLE `wp_pv_commission` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `total_due` decimal(20,2) NOT NULL,
  `qty` bigint(20) NOT NULL,
  `total_shipping` decimal(20,2) NOT NULL,
  `tax` decimal(20,2) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'due',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'principal', 'principal', 0),
(17, 'Material', 'material', 0),
(18, 'Technique', 'technique', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 16, 0),
(26, 16, 0),
(43, 2, 0),
(43, 6, 0),
(43, 7, 0),
(43, 15, 0),
(79, 16, 0),
(80, 16, 0),
(89, 16, 0),
(103, 17, 0),
(104, 17, 0),
(105, 18, 0),
(107, 1, 0),
(110, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 1),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 1),
(7, 7, 'product_visibility', '', 0, 1),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 1),
(16, 16, 'nav_menu', '', 0, 4),
(17, 17, 'gallery-nomenclators', 'Material used in the artwork', 0, 2),
(18, 18, 'gallery-nomenclators', 'Technique used in the artwork', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Adniel'),
(3, 1, 'last_name', 'Quintana'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"8c86712b90d105ccbe9df656beaec11260c7829905c33c89971a054c3cb2ee6c\";a:4:{s:10:\"expiration\";i:1609993665;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0\";s:5:\"login\";i:1609820865;}s:64:\"321b2f016662c006f5387de2de9cd620f53998c259b7310ab8d53d5fd2b26fc6\";a:4:{s:10:\"expiration\";i:1610163724;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0\";s:5:\"login\";i:1609990924;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '102'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:J5wHOB2+pvYO6NCtsqZPAs/g'),
(19, 1, 'last_update', '1609106792'),
(20, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1606828819079'),
(21, 1, 'wc_last_active', '1609977600'),
(25, 1, 'billing_first_name', 'Adniel'),
(26, 1, 'billing_last_name', 'Quintana'),
(27, 1, 'billing_company', 'GWOCUBA'),
(28, 1, 'billing_address_1', 'Calle Falsa'),
(29, 1, 'billing_address_2', '123'),
(30, 1, 'billing_city', 'Madrid'),
(31, 1, 'billing_state', 'M'),
(32, 1, 'billing_postcode', '84100'),
(33, 1, 'billing_country', 'ES'),
(34, 1, 'billing_email', 'aqmunoz@gmail.com'),
(35, 1, 'billing_phone', '46345689'),
(36, 1, 'shipping_method', ''),
(38, 1, 'paying_customer', '1'),
(39, 1, '_order_count', '1'),
(44, 1, 'manageedit-nf_subcolumnshidden', 'a:5:{i:0;i:16;i:1;i:17;i:2;i:18;i:3;i:10;i:4;i:19;}'),
(46, 1, 'tgmpa_dismissed_notice_ample', '1'),
(48, 1, 'dismissed_no_secure_connection_notice', '1'),
(70, 1, 'closedpostboxes_wpfront-user-role-editor-add-new', 'a:1:{i:0;s:35:\"postbox-Refunds (shop_order_refund)\";}'),
(71, 1, 'metaboxhidden_wpfront-user-role-editor-add-new', 'a:1:{i:0;s:18:\"postbox-Deprecated\";}'),
(72, 1, 'meta-box-order_wpfront-user-role-editor-add-new', 'a:1:{s:6:\"normal\";s:470:\"postbox-Dashboard,postbox-Posts,postbox-Media,postbox-Pages,postbox-Comments,postbox-Themes,postbox-Plugins,postbox-Users,postbox-Tools,postbox-Admin,postbox-Links,postbox-Deprecated,postbox-Roles (WPFront),postbox-Vendor Orders (shop_order_vendor),postbox-Products (product),postbox-Variations (product_variation),postbox-Orders (shop_order),postbox-Coupons (shop_coupon),postbox-Refunds (shop_order_refund),postbox-Other Capabilities,postbox-Nomenclator (nomenclators)\";}'),
(84, 3, 'nickname', 'editor'),
(85, 3, 'first_name', 'editor'),
(86, 3, 'last_name', 'editor'),
(87, 3, 'description', ''),
(88, 3, 'rich_editing', 'true'),
(89, 3, 'syntax_highlighting', 'true'),
(90, 3, 'comment_shortcuts', 'false'),
(91, 3, 'admin_color', 'fresh'),
(92, 3, 'use_ssl', '0'),
(93, 3, 'show_admin_bar_front', 'true'),
(94, 3, 'locale', ''),
(95, 3, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(96, 3, 'wp_user_level', '7'),
(97, 3, 'dismissed_wp_pointers', ''),
(99, 3, 'wc_last_active', '1609977600'),
(101, 3, 'wp_dashboard_quick_press_last_post_id', '109'),
(137, 5, 'nickname', 'tasador'),
(138, 5, 'first_name', 'Tasador'),
(139, 5, 'last_name', 'Tasador'),
(140, 5, 'description', ''),
(141, 5, 'rich_editing', 'true'),
(142, 5, 'syntax_highlighting', 'true'),
(143, 5, 'comment_shortcuts', 'false'),
(144, 5, 'admin_color', 'fresh'),
(145, 5, 'use_ssl', '0'),
(146, 5, 'show_admin_bar_front', 'true'),
(147, 5, 'locale', ''),
(148, 5, 'wp_capabilities', 'a:1:{s:7:\"tasador\";b:1;}'),
(149, 5, 'wp_user_level', '7'),
(150, 5, 'dismissed_wp_pointers', ''),
(152, 5, 'wc_last_active', '1609977600'),
(155, 5, 'session_tokens', 'a:1:{s:64:\"0eaf2840658f9c169c1f9ed6558787b8a50c5eaf48056e5fb4a9f49812067a7f\";a:4:{s:10:\"expiration\";i:1610163270;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0\";s:5:\"login\";i:1609990470;}}'),
(157, 5, 'wp_dashboard_quick_press_last_post_id', '113'),
(158, 5, '_woocommerce_tracks_anon_id', 'woo:B2nVOmlopWSPItM4f3mh97xJ'),
(164, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:77:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt,authordiv,commentsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(165, 1, 'screen_layout_product', '2'),
(166, 1, 'closedpostboxes_product', 'a:0:{}'),
(167, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B29bb86SnlEF8gx.Aef54fFLacK5SG.', 'admin', 'aqmunoz@gmail.com', 'http://localhost:8080/galeria_arte', '2020-12-01 13:17:46', '', 0, 'admin'),
(3, 'editor', '$P$BoS.u43UL9wTv687Uz5ZWUlYLdBWxl1', 'editor', 'editor@gmail.com', '', '2021-01-07 02:53:17', '', 0, 'editor editor'),
(5, 'tasador', '$P$Br4EMh4K97t6JpXFk0vHPGJCi6CK7L1', 'tasador', 'tasador@gmail.com', '', '2021-01-07 03:30:38', '', 0, 'Tasador Tasador');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-01 13:20:12', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', '{}', 'actioned', 'woocommerce-admin', '2020-12-01 13:20:12', NULL, 0, 'plain', '', 0, 'info'),
(3, 'wc-admin-install-jp-and-wcs-plugins', 'info', 'en_US', 'Uh oh... There was a problem during the Jetpack and WooCommerce Shipping & Tax install. Please try again.', 'We noticed that there was a problem during the Jetpack and WooCommerce Shipping &amp; Tax install. Please try again and enjoy all the advantages of having the plugins connected to your store! Sorry for the inconvenience. The \"Jetpack\" and \"WooCommerce Shipping &amp; Tax\" plugins will be installed &amp; activated for free.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-01 13:23:47', NULL, 0, 'plain', '', 0, 'info'),
(4, 'wc-admin-welcome-note', 'info', 'en_US', 'New feature(s)', 'Welcome to the new WooCommerce experience! In this new release you\'ll be able to have a glimpse of how your store is doing in the Dashboard, manage important aspects of your business (such as managing orders, stock, reviews) from anywhere in the interface, dive into your store data with a completely new Analytics section and more!', '{}', 'unactioned', 'woocommerce-admin', '2020-12-01 13:27:33', NULL, 0, '', NULL, 0, 'info'),
(5, 'wc-admin-store-notice-giving-feedback', 'info', 'en_US', 'Review your experience', 'If you like WooCommerce Admin please leave us a 5 star rating. A huge thanks in advance!', '{}', 'unactioned', 'woocommerce-admin', '2020-12-27 20:13:14', NULL, 0, '', NULL, 0, 'info'),
(6, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-27 20:13:14', NULL, 0, '', NULL, 0, 'phone'),
(7, 'wc-admin-add-first-product', 'info', 'en_US', 'Add your first product', 'Grow your revenue by adding products to your store. Add products manually, import from a sheet, or migrate from another platform.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-27 20:13:14', NULL, 0, '', NULL, 0, 'product'),
(8, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Help WooCommerce improve with usage tracking', 'Gathering usage data allows us to improve WooCommerce. Your store will be considered as we evaluate new features, judge the quality of an update, or determine if an improvement makes sense. You can always visit the <a href=\"http://localhost/galeria_arte/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Settings</a> and choose to stop sharing data. <a href=\"https://woocommerce.com/usage-tracking\" target=\"_blank\">Read more</a> about what data we collect.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-27 20:13:14', NULL, 0, '', NULL, 0, 'info'),
(9, 'wc-admin-orders-milestone', 'info', 'en_US', 'First order', 'Congratulations on getting your first order from a customer! Learn how to manage your orders.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-27 22:21:11', NULL, 0, '', NULL, 0, 'trophy'),
(10, 'wc-admin-facebook-extension', 'info', 'en_US', 'Market on Facebook', 'Grow your business by targeting the right people and driving sales with Facebook. You can install this free extension now.', '{}', 'unactioned', 'woocommerce-admin', '2020-12-28 15:40:59', NULL, 0, '', NULL, 0, 'thumbs-up');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(2, 2, 'continue-profiler', 'Continue Store Setup', 'http://localhost:8080/galeria_arte/wp-admin/admin.php?page=wc-admin&path=/setup-wizard', 'unactioned', 1, ''),
(3, 2, 'skip-profiler', 'Skip Setup', 'http://localhost:8080/galeria_arte/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0, ''),
(4, 3, 'install-jp-and-wcs-plugins', 'Install plugins', '', 'actioned', 1, ''),
(5, 4, 'learn-more', 'Learn more', 'https://woocommerce.wordpress.com/', 'actioned', 0, ''),
(6, 5, 'share-feedback', 'Review', 'https://wordpress.org/support/plugin/woocommerce-admin/reviews/?rate=5#new-post', 'actioned', 0, ''),
(7, 6, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(8, 7, 'add-a-product', 'Add a product', 'http://localhost/galeria_arte/wp-admin/post-new.php?post_type=product', 'actioned', 1, ''),
(9, 8, 'tracking-dismiss', 'Dismiss', '', 'actioned', 0, ''),
(10, 8, 'tracking-opt-in', 'Activate usage tracking', '', 'actioned', 1, ''),
(11, 9, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/managing-orders/', 'actioned', 0, ''),
(12, 10, 'learn-more', 'Learn more', 'https://woocommerce.com/products/facebook/', 'unactioned', 0, ''),
(13, 10, 'install-now', 'Install now', '', 'unactioned', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

INSERT INTO `wp_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(1, 1, 'admin', 'Adniel', 'Quintana', 'aqmunoz@gmail.com', '2021-01-07 05:00:00', '2020-12-01 18:17:46', 'ES', '84100', 'Madrid', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

INSERT INTO `wp_wc_order_product_lookup` (`order_item_id`, `order_id`, `product_id`, `variation_id`, `customer_id`, `date_created`, `product_qty`, `product_net_revenue`, `product_gross_revenue`, `coupon_amount`, `tax_amount`, `shipping_amount`, `shipping_tax_amount`) VALUES
(1, 44, 43, 0, 1, '2020-12-27 22:04:30', 1, 99, 99, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_order_stats`
--

INSERT INTO `wp_wc_order_stats` (`order_id`, `parent_id`, `date_created`, `date_created_gmt`, `num_items_sold`, `total_sales`, `tax_total`, `shipping_total`, `net_total`, `returning_customer`, `status`, `customer_id`) VALUES
(44, 0, '2020-12-27 22:04:30', '2020-12-27 22:04:30', 1, 99, 0, 0, 99, 0, 'wc-completed', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(43, '', 1, 0, '99.0000', '99.0000', 1, NULL, 'instock', 0, '0.00', 1, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '43'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '99'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '99'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 1, 'Sold By', 'Galeria de Arte');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Appraise product', 'line_item', 44);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(67, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:800:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-12-27T22:06:32+00:00\";s:8:\"postcode\";s:5:\"84100\";s:4:\"city\";s:6:\"Madrid\";s:9:\"address_1\";s:11:\"Calle Falsa\";s:7:\"address\";s:11:\"Calle Falsa\";s:9:\"address_2\";s:3:\"123\";s:5:\"state\";s:1:\"M\";s:7:\"country\";s:2:\"ES\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:1:\"M\";s:16:\"shipping_country\";s:2:\"ES\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:6:\"Adniel\";s:9:\"last_name\";s:8:\"Quintana\";s:7:\"company\";s:7:\"GWOCUBA\";s:5:\"phone\";s:8:\"46345689\";s:5:\"email\";s:17:\"aqmunoz@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1610163728);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpfront_ure_login_redirect`
--

CREATE TABLE `wp_wpfront_ure_login_redirect` (
  `id` bigint(20) NOT NULL,
  `role` varchar(250) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `url` varchar(2000) DEFAULT NULL,
  `deny_wpadmin` tinyint(1) DEFAULT NULL,
  `disable_toolbar` tinyint(1) DEFAULT NULL,
  `logout_url` varchar(2000) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpfront_ure_options`
--

CREATE TABLE `wp_wpfront_ure_options` (
  `id` bigint(20) NOT NULL,
  `option_name` varchar(250) DEFAULT NULL,
  `option_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wp_wpfront_ure_options`
--

INSERT INTO `wp_wpfront_ure_options` (`id`, `option_name`, `option_value`) VALUES
(1, 'wp_wpfront_ure_options-db-version', '2.14.4'),
(2, 'attachment_capabilities_processed', '1'),
(3, 'user_permission_capabilities_processed', '1'),
(4, 'wp_wpfront_ure_login_redirect-db-version', '2.14.4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gc_appraise_artwork`
--
ALTER TABLE `gc_appraise_artwork`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_idx` (`id_material`),
  ADD KEY `tecnique_idx` (`id_technique`);

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_aspirante`
--
ALTER TABLE `wp_aspirante`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_upgrades`
--
ALTER TABLE `wp_nf3_upgrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_pv_commission`
--
ALTER TABLE `wp_pv_commission`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_wpfront_ure_login_redirect`
--
ALTER TABLE `wp_wpfront_ure_login_redirect`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_wpfront_ure_options`
--
ALTER TABLE `wp_wpfront_ure_options`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gc_appraise_artwork`
--
ALTER TABLE `gc_appraise_artwork`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `wp_aspirante`
--
ALTER TABLE `wp_aspirante`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=539;

--
-- AUTO_INCREMENT for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1632;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=351;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `wp_pv_commission`
--
ALTER TABLE `wp_pv_commission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpfront_ure_login_redirect`
--
ALTER TABLE `wp_wpfront_ure_login_redirect`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpfront_ure_options`
--
ALTER TABLE `wp_wpfront_ure_options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
