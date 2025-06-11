-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 11, 2025 lúc 05:17 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `order_service`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_02_25_163014_create_orders_table', 1),
(6, '2025_02_25_163643_create_order_items_table', 1),
(7, '2025_03_07_031533_add_order_id_to_order_items_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_code` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `total_amount` decimal(20,2) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_code`, `customer_name`, `address`, `phone`, `payment_method`, `total_amount`, `status`, `created_at`, `updated_at`) VALUES
(2, 4, '#802012762', 'Thành Nghĩa', 'Sóc Sơn', '1234567897', 'COD', 17990000.00, 'completed', '2025-03-08 04:31:55', '2025-03-08 20:31:05'),
(3, 5, '#562164352', 'Trịnh Quyền', 'Thanh Hóa', '1234567898', 'COD', 35980000.00, 'completed', '2025-03-08 20:54:09', '2025-03-10 08:35:12'),
(4, 5, '#461773300', 'Trịnh Quyền', 'Thanh Hóa', '1234567898', 'COD', 22890000.00, 'completed', '2025-03-08 20:55:05', '2025-03-10 08:39:17'),
(5, 5, '#533393126', 'Trịnh Quyền', 'Thanh Hóa', '1234567898', 'COD', 51990000.00, 'pending', '2025-03-10 08:42:03', '2025-03-10 08:42:03'),
(9, 4, '#963231297', 'Thành Nghĩa', 'Sóc Sơn', '1234567897', 'VNPay', 16990000.00, 'pending', '2025-03-14 01:17:46', '2025-03-14 01:17:46'),
(10, 9, '#805477091', 'Quang Hưởng', 'Thạch Thất', '0396131469', 'COD', 26980000.00, 'pending', '2025-03-19 00:04:35', '2025-03-19 00:04:35'),
(11, 10, '#385913351', 'Hưởng', 'Thạch Thất', '0234567893', 'COD', 17990000.00, 'pending', '2025-03-19 00:46:38', '2025-03-19 00:46:38'),
(12, 10, '#461932997', 'Hưởng', 'Thạch Thất', '0234567893', 'VNPay', 51990000.00, 'completed', '2025-03-19 01:11:25', '2025-03-19 03:30:51'),
(13, 10, '#758577130', 'Hưởng', 'Thạch Thất', '0234567893', 'COD', 107470000.00, 'pending', '2025-03-19 03:26:09', '2025-03-19 03:26:09'),
(14, 10, '#204581025', 'Hưởng', 'Thạch Thất', '0234567893', 'COD', 17990000.00, 'pending', '2025-06-10 20:09:51', '2025-06-10 20:09:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `product_name`, `quantity`, `price`) VALUES
(3, 2, 'Lenovo Yoga 7 2-in-1', 1, 17990000.00),
(4, 3, 'Lenovo Yoga 7 2-in-1', 1, 17990000.00),
(5, 3, 'Laptop Dell Inspiron 15 3520 6HD73 I7-1255U/16GB/5', 1, 17990000.00),
(6, 4, 'ThinkPad T490', 1, 22890000.00),
(7, 5, 'Laptop Dell XPS 13 9340 Ultra 5 125H/16GB/2TB', 1, 51990000.00),
(11, 9, 'Laptop Dell Latitude 3540 71038100 I5-1235U/16GB/5', 1, 16990000.00),
(12, 10, 'Laptop MSI Modern 14 C13M - 608VN', 1, 13990000.00),
(13, 10, 'Laptop MSI Modern 15 B13M-438VN', 1, 12990000.00),
(14, 11, 'Lenovo Yoga 7 2-in-1', 1, 17990000.00),
(15, 12, 'Laptop Dell XPS 13 9340 Ultra 5 125H/16GB/2TB', 1, 51990000.00),
(16, 13, 'Laptop Dell Vostro 3530 2H1TPI7 I7-1355U/16GB/512G', 1, 18490000.00),
(17, 13, 'Laptop Dell XPS 13 9340 Ultra 5 125H/16GB/2TB', 1, 51990000.00),
(18, 13, 'Laptop Dell G15 5530 i7 13650HX/16GB/1TB/8GB RTX40', 1, 36990000.00),
(19, 14, 'Lenovo Yoga 7 2-in-1', 1, 17990000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
