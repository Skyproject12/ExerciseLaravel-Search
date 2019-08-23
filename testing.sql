-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2019 at 05:33 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2019_03_06_170753_create_tbl_customer_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `CustomerId` int(10) UNSIGNED NOT NULL,
  `CustomerName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`CustomerId`, `CustomerName`, `Address`, `city`, `postal_code`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Widya Aryani', 'Ki. Flora No. 864, Medan 88333, Riau', 'Sabang', 'YDAQaUUtot', 'Kazakhstan', NULL, NULL),
(2, 'Nilam Wastuti', 'Gg. Flores No. 414, Gorontalo 78177, KalSel', 'Parepare', '7WNBOpeTUg', 'Eritrea', NULL, NULL),
(3, 'Umaya Luthfi Santoso', 'Ki. Peta No. 127, Palembang 37889, Banten', 'Palangka Raya', 'SirW7Evwzp', 'Turki', NULL, NULL),
(4, 'Silvia Maryati', 'Jln. Moch. Toha No. 152, Surakarta 93938, Riau', 'Tebing Tinggi', 'HEDqKf5u4q', 'Cina', NULL, NULL),
(5, 'Purwa Firgantoro', 'Jln. Moch. Ramdan No. 526, Cimahi 22796, Bengkulu', 'Cilegon', 'yI2Djm2cIP', 'Gabon', NULL, NULL),
(6, 'Latika Hastuti', 'Jln. Bakau No. 689, Kotamobagu 46966, MalUt', 'Binjai', 'hPkJtthc1T', 'Armenia', NULL, NULL),
(7, 'Asmianto Sitorus', 'Jln. Suharso No. 438, Tasikmalaya 55093, JaBar', 'Bima', '7aeo7UD03h', 'Somalia', NULL, NULL),
(8, 'Zahra Yuliana Wastuti M.Farm', 'Dk. Bak Air No. 729, Probolinggo 78936, MalUt', 'Ambon', 'vPa5kNagmL', 'Kongo', NULL, NULL),
(9, 'Jaka Irawan', 'Ki. M.T. Haryono No. 235, Banjar 84407, MalUt', 'Padangpanjang', 'kKZ9dxvrSQ', 'Luxembourg', NULL, NULL),
(10, 'Daliono Teddy Utama', 'Gg. Bak Air No. 287, Tidore Kepulauan 94202, Bengkulu', 'Pariaman', 'lVsEZoidLp', 'Taiwan', NULL, NULL),
(11, 'Hesti Yulianti', 'Ds. Yoga No. 522, Metro 42716, KalSel', 'Sibolga', 'njr7K44TdL', 'Republik Ceko', NULL, NULL),
(12, 'Salwa Usada', 'Jr. Babadak No. 594, Sawahlunto 52804, JaBar', 'Tanjungbalai', '5ii4S3XSMD', 'Haiti', NULL, NULL),
(13, 'Gasti Uyainah', 'Gg. Cikutra Barat No. 34, Serang 34418, KalSel', 'Manado', 'OVS6hUiydt', 'Republik Chad', NULL, NULL),
(14, 'Cahyono Prakasa', 'Psr. Perintis Kemerdekaan No. 657, Tangerang Selatan 30015, SumSel', 'Ambon', 'sMx4Y5xtFc', 'Iran', NULL, NULL),
(15, 'Ade Sihombing', 'Kpg. Veteran No. 954, Pontianak 37158, DIY', 'Tangerang', 'UEDXYN7F3k', 'Serbia', NULL, NULL),
(16, 'Paramita Wulandari M.Farm', 'Dk. Gremet No. 906, Tidore Kepulauan 76950, SumUt', 'Makassar', 'sb1qSiUuky', 'Guinea', NULL, NULL),
(17, 'Waluyo Joko Salahudin', 'Jln. W.R. Supratman No. 636, Batam 44180, SumSel', 'Bima', 'raBhZPfUZL', 'Bolivia', NULL, NULL),
(18, 'Gabriella Padmasari M.TI.', 'Ds. Kebangkitan Nasional No. 95, Tangerang Selatan 63082, KepR', 'Manado', 'JiPAqJrMYi', 'Pantai Gading', NULL, NULL),
(19, 'Hafshah Keisha Hariyah M.TI.', 'Ki. Jagakarsa No. 532, Magelang 42901, Banten', 'Jambi', 'pwQG7EmUlZ', 'Togo', NULL, NULL),
(20, 'Irma Dinda Safitri', 'Ds. Wahidin Sudirohusodo No. 168, Pekanbaru 41266, SulBar', 'Kotamobagu', 'i4xM7loZqE', 'Komoro', NULL, NULL),
(21, 'Irwan Saptono', 'Ds. Ahmad Dahlan No. 884, Banjarmasin 86503, JaTim', 'Pematangsiantar', 'PBHodZl0nk', 'Malaysia', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`CustomerId`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `CustomerId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
