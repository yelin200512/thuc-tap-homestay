-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2026 lúc 04:40 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlks`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdp`
--

CREATE TABLE `chitietdp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `datphong_id` bigint(20) UNSIGNED NOT NULL,
  `phong_id` bigint(20) UNSIGNED NOT NULL,
  `sophong` bigint(20) NOT NULL DEFAULT 0,
  `gia` float NOT NULL,
  `chuthich` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdp`
--

INSERT INTO `chitietdp` (`id`, `datphong_id`, `phong_id`, `sophong`, `gia`, `chuthich`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 2, 0, NULL, NULL, '2020-12-16 05:29:50'),
(2, 2, 1, 1, 0, NULL, NULL, '2020-12-22 11:43:53'),
(3, 1, 5, 1, 0, 'Huỷ', NULL, '2020-11-20 12:08:47'),
(4, 2, 5, 10, 0, '', NULL, '2020-11-20 12:08:47'),
(6, 11, 21, 1, 9786490, NULL, '2021-01-05 02:49:32', '2021-01-05 02:49:32'),
(7, 11, 1, 8, 1500000, NULL, '2021-01-05 02:49:32', '2021-01-05 02:49:32'),
(8, 11, 7, 1, 2500000, NULL, '2021-01-05 02:49:32', '2021-01-05 02:49:32'),
(12, 14, 7, 1, 2500000, NULL, '2021-01-05 03:10:48', '2021-01-05 03:10:48'),
(13, 15, 1, 1, 1500000, NULL, '2021-01-05 04:09:58', '2021-01-05 04:09:58'),
(14, 16, 7, 4, 2500000, NULL, '2021-01-05 04:11:27', '2021-01-05 04:11:27'),
(15, 17, 2, 3, 3000000, NULL, '2021-01-06 00:23:49', '2021-01-06 00:23:49'),
(16, 18, 1, 4, 1500000, NULL, '2021-01-06 00:26:36', '2021-01-06 00:26:36'),
(17, 19, 21, 3, 9786490, NULL, '2021-01-06 00:50:38', '2021-01-06 00:50:38'),
(18, 20, 2, 1, 3000000, NULL, '2023-12-20 21:09:41', '2023-12-20 21:09:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `datphong`
--

CREATE TABLE `datphong` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `khachhang_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ngaydat` date DEFAULT NULL,
  `tongsophong` int(11) NOT NULL,
  `tongtien` float NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `chuthich` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `datphong`
--

INSERT INTO `datphong` (`id`, `khachhang_id`, `user_id`, `ngaydat`, `tongsophong`, `tongtien`, `start_date`, `end_date`, `chuthich`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-11-20', 0, 0, '2020-11-20', '2020-11-25', NULL, NULL, '2020-11-17 05:23:42'),
(2, 2, 1, '2020-11-20', 0, 0, '2020-11-17', '2020-11-18', NULL, NULL, NULL),
(14, 19, NULL, '2021-01-05', 1, 2500000, '2021-05-01', '2021-05-01', 'trghggf', '2021-01-05 03:10:48', '2021-01-05 03:10:48'),
(15, 20, NULL, '2021-01-05', 1, 1500000, '2021-05-01', '2021-05-01', NULL, '2021-01-05 04:09:57', '2021-01-05 04:09:57'),
(16, 21, NULL, '2021-01-05', 4, 10000000, NULL, NULL, NULL, '2021-01-05 04:11:27', '2021-01-05 04:11:27'),
(17, 22, NULL, '2021-01-06', 3, 9000000, NULL, NULL, NULL, '2021-01-06 00:23:49', '2021-01-06 00:23:49'),
(18, 23, NULL, '2021-01-06', 4, 6000000, NULL, NULL, NULL, '2021-01-06 00:26:36', '2021-01-06 00:26:36'),
(19, 24, NULL, '2021-01-06', 3, 29359500, '2021-06-01', '2021-06-01', '12356', '2021-01-06 00:50:38', '2021-01-06 00:50:38'),
(20, 25, NULL, '2023-12-21', 1, 3000000, '2023-12-14', '2023-12-22', '0123456789', '2023-12-20 21:09:41', '2023-12-20 21:09:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kh`
--

CREATE TABLE `kh` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_kh` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diachi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kh`
--

INSERT INTO `kh` (`id`, `ten_kh`, `sdt`, `email`, `diachi`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Van ABSFDBVD', '01234567895678656', 'nguyenegdhfmngvana@gmail.comn', '', NULL, '2020-11-17 05:24:02'),
(2, 'Tran Van BACA', '084564343565', 'bvantran@yahoo.com', '', NULL, '2020-11-20 09:29:35'),
(4, 'Đỗ Thị Ngọc Ánh', '0123456789', 'anh@gmail.com', '', NULL, '2020-11-20 09:29:35'),
(19, 'fgfhfjk', '3565u7iukj', 'dfsgh@gmail.com', 'ưeretgrhtyj', '2021-01-05 03:10:48', '2021-01-05 03:10:48'),
(20, 'Nguyễn Tiến Anh', '123456789', 'ngyentienanh@gmail.com', 'Thái Bình', '2021-01-05 04:09:57', '2021-01-05 04:09:57'),
(21, 'Trần Thị Nhung', '567686564', 'nhungthi@gmail.com', 'Hà Nội', '2021-01-05 04:11:27', '2021-01-05 04:11:27'),
(22, 'Nguyễn Hải Long', '0123456789', 'hailong@gmail.com', 'Thái Thuỵ, Thái Bình', '2021-01-06 00:23:49', '2021-01-06 00:23:49'),
(23, 'Trần Duy', '0378208439', 'tranduy@gmail.com', 'Hà Nội', '2021-01-06 00:26:35', '2021-01-06 00:26:35'),
(24, 'Nguyễn Tiến Anh', '1234567', 'anhtien@gmail.com', '123467', '2021-01-06 00:50:38', '2021-01-06 00:50:38'),
(25, 'Nguyễn Tiến Anh', '0123456789', 'romcoca251100@gmail.com', '0123456789', '2023-12-20 21:09:40', '2023-12-20 21:09:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaiphong`
--

CREATE TABLE `loaiphong` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tenloaiphong` varchar(255) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaiphong`
--

INSERT INTO `loaiphong` (`id`, `tenloaiphong`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'Căn Gia Đình & Nhóm Bạn', 'can-gia-dinh-nhom-ban', 1, '2020-11-20 12:00:31', '2020-11-20 12:00:31'),
(8, 'Nhà Gỗ Tiêu Chuẩn', 'nha-go-tieu-chuan', 1, '2020-12-21 04:55:41', '2020-12-21 04:55:41'),
(9, 'Bungalow Sân Vườn', 'bungalow-san-vuon', 1, '2020-12-21 04:55:47', '2020-12-21 04:55:47'),
(10, 'Villa Nguyên Căn', 'villa-nguyen-can', 1, '2021-01-06 00:58:28', '2021-01-06 00:58:28');

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2020_11_13_212745_role', 1),
(13, '2020_11_13_212856_loaiphong_table', 1),
(14, '2020_11_13_212913_phong_table', 1),
(15, '2020_11_13_212936_datphong_table', 1),
(16, '2020_11_13_212947_chitietdatphong_table', 2),
(17, '2020_11_13_213009_khachhang_table', 3),
(18, '2020_11_20_205230_slide_table', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loaiphong_id` bigint(20) UNSIGNED NOT NULL,
  `tenphong` varchar(255) NOT NULL,
  `chuthich` longtext DEFAULT NULL,
  `hinhanh` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `soluong` bigint(20) NOT NULL DEFAULT 0,
  `gia` float NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `booked` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`id`, `loaiphong_id`, `tenphong`, `chuthich`, `hinhanh`, `user_id`, `soluong`, `gia`, `slug`, `booked`, `created_at`, `updated_at`) VALUES
(1, 9, 'Bungalow Vườn Hoa', 'Bungalow tách biệt nằm giữa khu vườn ngập tràn hoa và cây xanh, có hiên nghỉ ngoài trời thoáng mát.', 'ZXris_nVjFu_duluxe1.jpg', 1, 4, 950000, 'bungalow-vuon-hoa', 4, NULL, '2021-01-06 00:51:31'),
(2, 9, 'Bungalow Hiên Trà', 'Thiết kế mái vòm gỗ kết hợp hiên trà rộng rãi, trang bị sẵn bộ ấm chén và bàn ghế mây tre thư giãn.', 'Ae1lZ_XOm2L_1.jpg', 1, 5, 1100000, 'bungalow-hien-tra', 1, NULL, '2023-12-20 21:09:41'),
(5, 6, 'Căn Gia Đình Bếp Ấm', 'Căn rộng rãi gồm 2 giường đôi lớn, khu vực bếp tự nấu đầy đủ dụng cụ và bàn ăn quây quần cho gia đình 4-6 người.', 'N5BCR_lf1fM_suites2.png', 1, 4, 1600000, 'can-gia-dinh-bep-am', 0, '2020-11-20 11:30:26', '2021-01-06 00:16:30'),
(7, 8, 'Nhà Gỗ Thông Reo', 'Nhà gỗ thông tự nhiên ấm cúng, cửa sổ lớn đón gió rừng, đầy đủ tiện nghi cơ bản và góc pha trà sáng yên tĩnh.', 'bedna_xDgpz_twin.jpg', 1, 5, 650000, 'nha-go-thong-reo', 0, '2020-11-20 12:47:31', '2021-01-06 00:17:52'),
(10, 10, 'Villa Đồi Thông Nguyên Căn', 'Villa nguyên căn biệt lập cao cấp nhất tại Dookki Homestay, gồm 3 phòng ngủ, phòng khách kính, bếp riêng và sân đốt lửa trại.', 'dVT5L_EXFFL_1.jpg', 1, 2, 3200000, 'villa-doi-thong-nguyen-can', 0, '2020-11-20 13:12:50', '2021-01-06 00:16:55'),
(20, 8, 'Nhà Gỗ Ban Công Nắng', 'Không gian gỗ mộc mạc kết hợp ban công riêng hướng vườn, thích hợp để đọc sách, thưởng cà phê và nghỉ dưỡng cuối tuần.', 'e8lv1_kEa9z_triple.jpg', 1, 6, 750000, 'nha-go-ban-cong-nang', 0, '2020-12-22 11:45:11', '2021-01-06 00:18:54'),
(21, 9, 'Bungalow Kính Săn Mây', 'Mặt tiền kính tràn viền mở trọn tầm nhìn ra thung lũng, lý tưởng để đón bình minh và săn mây ngay từ giường ngủ.', 'cq6py_cmgmc_1.jpg', 1, 3, 1350000, 'bungalow-kinh-san-may', 3, '2020-12-22 11:45:47', '2021-01-06 00:50:38'),
(22, 6, 'Căn Tập Thể Sân BBQ', 'Không gian sinh hoạt chung thoáng rộng cho nhóm bạn, đi kèm khoảng sân riêng tổ chức tiệc nướng BBQ ngoài trời.', 'YqaTJ_FQdzG_triple2.jpg', 1, 3, 1800000, 'can-tap-the-san-bbq', 0, '2021-01-01 11:52:12', '2021-01-06 00:19:41'),
(23, 8, 'Studio Gác Mái Ấm Cúng', 'Căn studio thiết kế gác mái xinh xắn với ánh đèn vàng dịu nhẹ, tối ưu không gian riêng tư cho cặp đôi hoặc khách du lịch một mình.', 'SnXnn_wxCsm_1.jpg', 1, 8, 550000, 'studio-gac-mai-am-cung', 0, '2021-01-06 00:46:20', '2021-01-06 00:46:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `role_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'Quản lý', NULL, NULL),
(3, 'Nhân viên', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(255) NOT NULL,
  `hinh` varchar(255) NOT NULL,
  `tieude` varchar(1000) NOT NULL,
  `noidung` mediumtext NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `ten`, `hinh`, `tieude`, `noidung`, `link`, `created_at`, `updated_at`) VALUES
(6, 'Slide 1', 'KJRxP_y3XWp_1.jpg', 'Slide 1', 'Slide 1', 'http://google.com', '2020-12-30 03:33:55', '2020-12-30 03:33:55');

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
  `ma_nv` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `gioitinh` varchar(10) DEFAULT NULL,
  `sdt` text DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `ma_nv`, `role_id`, `gioitinh`, `sdt`, `ngaysinh`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, 1, 'Nam', '037 830 8838', '2000-12-20', NULL, NULL, '2020-11-21 04:43:59'),
(2, 'admin2', 'admin2', NULL, '$2y$10$3OorqLBSppE2qbiM7i3cq.XcsltfEaVGNESnU11VEPL8v9.zXzi9K', NULL, 2, '', '', NULL, NULL, NULL, NULL),
(3, 'Nguyễn Tiến Anh', 'romcoca251100@gmail.com', NULL, '$2y$10$FyoBwIpummy3vJ86OGwOuO/Kh5jSdJuWJRjKgKrUB1DgYd4xNLmFi', 'NV1', 2, '', '', NULL, NULL, '2020-11-20 14:50:57', '2020-11-20 14:50:57'),
(7, 'Đỗ Thị Ngọc Ánh', 'ngocanh@gmail.com', NULL, '$2y$10$dNDd2iD3e0mflDKej5Hs/.cQh.hWjE2/OiiaKCfxJS3At3fZiHriy', 'NV4', 2, NULL, NULL, NULL, NULL, '2020-12-13 06:59:10', '2020-12-13 06:59:10'),
(8, 'Trịnh Thị Lan Anh', 'lanhanh@gmail.com', NULL, '$2y$10$qv8baZoahms/bSFuwswsV.S09JJRoP.f8zaulaus/vw5YOmerdzNi', 'NV5', 2, NULL, NULL, NULL, NULL, '2020-12-13 07:03:12', '2020-12-13 07:03:12'),
(9, 'Tran Nhat Long', 'nhatlong@gmail.com', NULL, '$2y$10$cq7xujjDEbbDf5mR4JBMOuW92h8Ki5n4b/fkW0s0y38MHZ5R/F9TO', 'NV6', 2, NULL, NULL, NULL, NULL, '2020-12-13 07:23:18', '2020-12-13 07:23:18'),
(11, 'do ngoc anh', 'ngocanh123@gmail.com', NULL, '$2y$10$wQxtRoCVPEl2F5L/wS0H4.jDC8baPRS.Zf1Jilzuf/EvG46rvSGdS', 'nv19', 2, NULL, NULL, NULL, NULL, '2021-01-06 00:55:31', '2021-01-06 00:55:31');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdp`
--
ALTER TABLE `chitietdp`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `datphong`
--
ALTER TABLE `datphong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kh`
--
ALTER TABLE `kh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaiphong`
--
ALTER TABLE `loaiphong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT cho bảng `chitietdp`
--
ALTER TABLE `chitietdp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `datphong`
--
ALTER TABLE `datphong`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `kh`
--
ALTER TABLE `kh`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `loaiphong`
--
ALTER TABLE `loaiphong`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `phong`
--
ALTER TABLE `phong`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
