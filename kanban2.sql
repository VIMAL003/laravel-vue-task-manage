-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2024 at 08:24 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kanban2`
--

-- --------------------------------------------------------

--
-- Table structure for table `kanban_task_board`
--

CREATE TABLE `kanban_task_board` (
  `id` int(10) UNSIGNED NOT NULL,
  `board_prefixed_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `board_order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_by` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kanban_task_board`
--

INSERT INTO `kanban_task_board` (`id`, `board_prefixed_id`, `title`, `board_order`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'board1', 'Vimal row one', 0, '2021-08-17 00:22:44', '2021-08-17 00:22:49', NULL, 0, 0, 0),
(2, 'board2', 'two row', 1, '2021-08-17 00:22:44', '2021-08-17 00:22:49', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kanban_task_board_item`
--

CREATE TABLE `kanban_task_board_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `boardId` int(10) UNSIGNED NOT NULL,
  `itemId` int(10) UNSIGNED NOT NULL,
  `active` tinyint(4) NOT NULL,
  `entered_at` datetime DEFAULT NULL,
  `left_at` datetime DEFAULT NULL,
  `item_order` int(11) NOT NULL DEFAULT '0',
  `archived` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kanban_task_board_item`
--

INSERT INTO `kanban_task_board_item` (`id`, `boardId`, `itemId`, `active`, `entered_at`, `left_at`, `item_order`, `archived`) VALUES
(1, 1, 1, 0, '2021-08-17 05:54:05', '2021-08-17 05:54:14', 0, 0),
(2, 2, 1, 0, '2021-08-17 05:54:14', '2021-08-17 10:10:32', 0, 0),
(3, 1, 1, 0, '2021-08-17 10:10:32', '2021-08-17 10:20:32', 1, 0),
(4, 1, 2, 0, '2021-08-17 10:16:34', '2021-08-17 10:16:44', 0, 0),
(5, 2, 2, 0, '2021-08-17 10:16:44', '2021-08-17 10:25:44', 0, 0),
(6, 2, 1, 1, '2021-08-17 10:20:32', NULL, 0, 0),
(7, 1, 2, 1, '2021-08-17 10:25:44', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kanban_task_item`
--

CREATE TABLE `kanban_task_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_prefixed_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taskname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rendered_html` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0',
  `deleted_by` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kanban_task_item`
--

INSERT INTO `kanban_task_item` (`id`, `item_prefixed_id`, `taskname`, `remark`, `photo`, `name`, `gender`, `country`, `agency`, `position`, `phone`, `email`, `rendered_html`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'item1', 'Card one', 'card set data', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div class=\"hpanel hred hbgnavyblue \">\r\n    <div class=\"panel-body\" style=\"padding: 10px;\">\r\n        <div class=\"row\">\r\n            <div class=\"col-md-7\">\r\n                <h5>Name: </h5>\r\n                                    <img alt=\"logo\" class=\"img-circle \" src=\"/img/man.png\" style=\"width: 70px;height: auto\">\r\n                            </div>\r\n            <div class=\"col-md-5\">\r\n                <div class=\"float-e-margins pull-right\">\r\n                    <button type=\"button\" class=\"btn btn-xs btn-success edit-item\" id=\"edit-1\"><i class=\"fa fa-pencil\"></i> </button>\r\n                    <button type=\"button\" class=\"btn btn-xs btn-danger2 delete-item\" id=\"delete-1\"><i class=\"fa fa-trash-o \"></i> </button>\r\n                    <button type=\"button\" class=\"btn btn-xs btn-primary2 audit-item\" id=\"audit-1\"><i class=\"fa fa-history \"></i> </button>\r\n                </div>\r\n\r\n                <div><span>Phone</span> <strong></strong></div>\r\n                <div><span>Email</span> <strong></strong></div>\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"text-mutedd font-bold m-b-xs\">Need: Card one</div>\r\n        <p>\r\n            card set data\r\n        </p>\r\n\r\n    </div>\r\n</div>\r\n', '2021-08-17 00:24:05', '2021-08-17 00:24:05', NULL, 0, 0, 0),
(2, 'item2', 'test new', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<div class=\"hpanel hred hbgnavyblue \">\n    <div class=\"panel-body\" style=\"padding: 10px;\">\n        <div class=\"row\">\n            <div class=\"col-md-7\">\n               <h5> <i class=\"fa fa-tasks\" aria-hidden=\"true\"></i> Title: test new</h5>\n            </div>\n            <div class=\"col-md-5\">\n                <div class=\"float-e-margins pull-right\">\n                    <button type=\"button\" class=\"btn btn-xs btn-success edit-item\" id=\"edit-2\"><i class=\"fa fa-pencil\"></i> </button>\n                    <button type=\"button\" class=\"btn btn-xs btn-danger2 delete-item\" id=\"delete-2\"><i class=\"fa fa-trash-o \"></i> </button>\n                    <button type=\"button\" class=\"btn btn-xs btn-primary2 audit-item\" id=\"audit-2\"><i class=\"fa fa-history \"></i> </button>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n', '2021-08-17 04:46:34', '2021-08-17 04:46:34', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_30_070850_create_kanban_task_board', 1),
(4, '2019_09_30_070942_create_kanban_task_item', 1),
(5, '2019_09_30_071050_create_kanban_task_board_item', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kanban_task_board`
--
ALTER TABLE `kanban_task_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kanban_task_board_item`
--
ALTER TABLE `kanban_task_board_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kanban_task_item`
--
ALTER TABLE `kanban_task_item`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kanban_task_board`
--
ALTER TABLE `kanban_task_board`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kanban_task_board_item`
--
ALTER TABLE `kanban_task_board_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kanban_task_item`
--
ALTER TABLE `kanban_task_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
