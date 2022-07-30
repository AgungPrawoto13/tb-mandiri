-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Nov 2020 pada 13.34
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tbmandiri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `page_link` varchar(50) NOT NULL,
  `contents` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `title`, `slug`, `page_link`, `contents`, `created_at`, `updated_on`, `active`) VALUES
(2, 'Tentang Kami', 'Tentang Kami', '#TentangKami', 'tentang_kami', 'Melihat kondisi  perkembangan dunia bisnis tertutama dibidang otomotive dan tepatnya mobil bekas, oleh karena itu saya mencoba untuk mengembangkan sayap ke penjualan besi, baja ringan dan lainya.\r\n\r\n					Awal mula menjalankan bisnis ini ada seorang teman yang mengajak untuk menjalankan peluang ini, pada mula ditawarkan saya belum langsung untuk diterima dan jalankan usaha ini. mulanya saya ditawarkan dan tertarik\r\n', '2020-10-16 01:47:36', '2020-11-06 14:01:49', 'active'),
(3, 'Produk', 'Produk', '#Produk', 'list-produk', 'Daftar Produk Kami', '2020-10-16 01:49:21', '2020-11-06 13:58:38', 'active'),
(4, 'Kontak', 'Kontak Kami', '#Kontak', 'kontak', 'Silahkan hubungi kami', '2020-10-16 01:51:15', '2020-11-06 14:01:49', 'active'),
(5, 'Youtube', 'Sucribe Channel kami', 'https://youtu.be/CkKej0KrgkY', 'https://youtu.be/CkKej0KrgkY', '<p>https://youtu.be/CkKej0KrgkY</p>', '2020-10-16 01:54:11', '2020-11-06 14:01:49', 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `merk` varchar(35) NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `tebal` varchar(10) NOT NULL,
  `harga` double NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(225) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`product_id`, `nama`, `merk`, `ukuran`, `tebal`, `harga`, `deskripsi`, `gambar`, `created_at`, `updated_on`) VALUES
(5, 'Hollow Galvanis 20x20', '', '20x20', '0.9', 500000, 'Hollow Galvanis dengan panjang 20x20 tebal 0.9 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:10:53', '2020-11-05 06:26:38'),
(6, 'Hollow Galvanis 20x20', '', '20x20', '1.0', 53000, 'Hollow Galvanis dengan panjang 20x20 tebal 1.0 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:13:58', '2020-11-05 06:27:11'),
(7, 'Hollow Galvanis 20x20', '', '20x20', '1.2', 59000, 'Hollow Galvanis dengan panjang 20x20 tebal 1.2 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:14:39', '2020-11-05 06:27:20'),
(8, 'Hollow Galvanis 25x25', '', '25x25', '1.0', 70000, 'Hollow Galvanis dengan panjang 25x25 tebal 1.0 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:27:32'),
(9, 'Hollow Galvanis 20x40', '', '20x40', '0.7', 51000, 'Hollow Galvanis dengan panjang 20x40 tebal 0.7 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:27:51'),
(10, 'Hollow Galvanis 20x40', '', '20x40', '0.8', 53000, 'Hollow Galvanis dengan panjang 20x40 tebal 0.8 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:28:03'),
(11, 'Hollow Galvanis 20x40', '', '20x40', '0.9', 62000, 'Hollow Galvanis dengan panjang 20x40 tebal 0.9 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:28:11'),
(12, 'Hollow Galvanis 20x40', '', '20x40', '0.9kf', 90000, 'Hollow Galvanis dengan panjang 20x40 tebal 0.9kf anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:28:38'),
(13, 'Hollow Galvanis 20x40', '', '20x40', '1.0', 68000, 'Hollow Galvanis dengan panjang 20x40 tebal 1.0 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:28:51'),
(14, 'Hollow Galvanis 20x40', '', '20x40', '1.1', 75000, 'Hollow Galvanis dengan panjang 20x40 tebal 1.1 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:28:58'),
(15, 'Hollow Galvanis 20x40', '', '20x40', '1.2', 83000, 'Hollow Galvanis dengan panjang 20x40 tebal 1.2 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:29:05'),
(16, 'Hollow Galvanis 20x40', '', '20x40', '1.2kf', 98000, 'Hollow Galvanis dengan panjang 20x40 tebal 1.2kf anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:29:13'),
(17, 'Hollow Galvanis 20x40', '', '20x40', '1.6kf', 127000, 'Hollow Galvanis dengan panjang 20x40 tebal 1.6kf anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:29:21'),
(18, 'Hollow Galvanis 15x30', '', '15x30', '0.7', 46000, 'Hollow Galvanis dengan panjang 15x30 tebal 0.7 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:29:45'),
(19, 'Hollow Galvanis 15x30', '', '15x30', '0.8', 50000, 'Hollow Galvanis dengan panjang 15x30 tebal 0.8 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:30:10'),
(20, 'Hollow Galvanis 15x30', '', '15x30', '0.9', 56000, 'Hollow Galvanis dengan panjang 15x30 tebal 0.9 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:30:22'),
(21, 'Hollow Galvanis 30x30', '', '30x30', '0.7', 58000, 'Hollow Galvanis dengan panjang 30x30 tebal 0.7 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:30:41'),
(22, 'Hollow Galvanis 30x30', '', '30x30', '0.8', 62000, 'Hollow Galvanis dengan panjang 30x30 tebal 0.8 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:30:58'),
(23, 'Hollow Galvanis 30x30', '', '30x30', '0.9', 72000, 'Hollow Galvanis dengan panjang 30x30 tebal 0.9 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:31:13'),
(24, 'Hollow Galvanis 30x30', '', '30x30', '1.0', 79000, 'Hollow Galvanis dengan panjang 30x30 tebal 1.0 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:31:24'),
(25, 'Hollow Hitam 20x20', '', '20x20', '0.7', 36000, 'Hollow Hitam dengan panjang 20x20 tebal 0.7 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:31:57'),
(26, 'Hollow Hitam 20x20', '', '20x20', '0.8', 41000, 'Hollow Hitam dengan panjang 20x20 tebal 0.8 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:32:21'),
(27, 'Hollow Hitam 20x20', '', '20x20', '0.9', 46000, 'Hollow Hitam dengan panjang 20x20 tebal 0.9 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:32:29'),
(28, 'Hollow Hitam 20x20', '', '20x20', '1.0', 48000, 'Hollow Hitam dengan panjang 20x20 tebal 1.0 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:32:42'),
(29, 'Hollow Hitam 25x25', '', '25x25', '0.7', 48000, 'Hollow Hitam dengan panjang 25x25 tebal 0.7 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:32:55'),
(30, 'Hollow Hitam 25x25', '', '25x25', '0.8', 57000, 'Hollow Hitam dengan panjang 25x25 tebal 0.8 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:33:06'),
(31, 'Hollow Hitam 25x25', '', '25x25', '1.2', 72000, 'Hollow Hitam dengan panjang 25x25 tebal 1.2 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:33:17'),
(32, 'Hollow Hitam 20x40', '', '20x40', '0.7', 48000, 'Hollow Hitam dengan panjang 20x40 tebal 0.7 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:33:38'),
(33, 'Hollow Hitam 20x40', '', '20x40', '0.8', 51000, 'Hollow Hitam dengan panjang 20x40 tebal 0.8 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:33:51'),
(34, 'Hollow Hitam 20x40', '', '20x40', '0.9', 59000, 'Hollow Hitam dengan panjang 20x40 tebal 0.9 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:34:04'),
(35, 'Hollow Hitam 20x40', '', '20x40', '1.0', 61000, 'Hollow Hitam dengan panjang 20x40 tebal 1.0 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:34:16'),
(36, 'Hollow Hitam 20x40', '', '20x40', '1.1kf', 89000, 'Hollow Hitam dengan panjang 20x40 tebal 1.1kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:34:44'),
(37, 'Hollow Hitam 20x40', '', '20x40', '1.2', 67000, 'Hollow Hitam dengan panjang 20x40 tebal 1.2 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:34:56'),
(38, 'Hollow Hitam 20x40', '', '20x40', '1.4kf', 98000, 'Hollow Hitam dengan panjang 20x40 tebal 1.4kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:35:10'),
(39, 'Hollow Hitam 20x40', '', '20x40', '1.6kf', 105000, 'Hollow Hitam dengan panjang 20x40 tebal 1.6kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:35:23'),
(40, 'Hollow Hitam 25x50', '', '25x50', '1.2', 108000, 'Hollow Hitam dengan panjang 25x50 tebal 1.2 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:35:41'),
(41, 'Hollow Hitam 30x30', '', '30x30', '0.8', 57000, 'Hollow Hitam dengan panjang 30x30 tebal 0.8 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:36:05'),
(42, 'Hollow Hitam 30x30', '', '30x30', '0.9', 65000, 'Hollow Hitam dengan panjang 30x30 tebal 0.9 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:36:17'),
(43, 'Hollow Hitam 30x30', '', '30x30', '1.0', 72000, 'Hollow Hitam dengan panjang 30x30 tebal 1.0 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:36:28'),
(44, 'Hollow Hitam 30x30', '', '30x30', '1.2', 81000, 'Hollow Hitam dengan panjang 30x30 tebal 1.2 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-24 03:23:53', '2020-11-05 06:36:38'),
(45, 'Hollow Galvanis 30x60', '', '30x60', '0.8', 102000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:37:56'),
(46, 'Hollow Galvanis 30x60', '', '30x60', '0.9', 110000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.9 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:38:14'),
(47, 'Hollow Galvanis 30x60', '', '30x60', '1.0', 119000, 'Hollow Galvanis dengan panjang 30x60 tebal 1.0 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:38:23'),
(48, 'Hollow Galvanis 30x60', '', '30x60', '1.2', 142000, 'Hollow Galvanis dengan panjang 30x60 tebal 1.2 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:38:35'),
(49, 'Hollow Galvanis 40x40', '', '40x40', '0.7', 71000, 'Hollow Galvanis dengan panjang 40x40 tebal 0.7 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:38:53'),
(50, 'Hollow Galvanis 40x40', '', '40x40', '0.8', 79000, 'Hollow Galvanis dengan panjang 40x40 tebal 0.8 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:39:11'),
(51, 'Hollow Galvanis 40x40', '', '40x40', '0.8kf', 94000, 'Hollow Galvanis dengan panjang 40x40 tebal 0.8kf anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:39:21'),
(52, 'Hollow Galvanis 40x40', '', '40x40', '0.9', 85000, 'Hollow Galvanis dengan panjang 40x40 tebal 0.9 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:39:33'),
(53, 'Hollow Galvanis 40x40', '', '40x40', '0.9kf', 104000, 'Hollow Galvanis dengan panjang 40x40 tebal 0.9kf anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:39:40'),
(54, 'Hollow Galvanis 40x40', '', '40x40', '1.0', 96000, 'Hollow Galvanis dengan panjang 40x40 tebal 1.0 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:39:49'),
(55, 'Hollow Galvanis 40x40', '', '40x40', '1.0kf', 114000, 'Hollow Galvanis dengan panjang 40x40 tebal 1.0kf anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:40:00'),
(56, 'Hollow Galvanis 40x40', '', '40x40', '1.2', 113000, 'Hollow Galvanis dengan panjang 40x40 tebal 1.2 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:40:09'),
(57, 'Hollow Galvanis 40x40', '', '40x40', '1.2kf', 134000, 'Hollow Galvanis dengan panjang 40x40 tebal 1.2kf anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-24 03:23:53', '2020-11-05 06:40:24'),
(58, 'Hollow Galvanis 40x40', '', '40x40', '1.6kf', 165000, 'Hollow Galvanis dengan panjang 40x40 tebal 1.6kf anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:23:30', '2020-11-05 06:40:32'),
(59, 'Hollow Galvanis 40x40', '', '40x40', '50x50', 112000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama where product_id=45;\n', 'hollow galvanis.jpg', '2020-10-31 19:23:59', '2020-11-05 06:25:05'),
(60, 'Hollow Galvanis 50x50', '', '50x50', '1.0', 139000, 'Hollow Galvanis dengan panjang 50x50 tebal 1.0 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:25:08', '2020-11-05 06:41:49'),
(61, 'Hollow Galvanis 50x50', '', '50x50', '1.2', 154000, 'Hollow Galvanis dengan panjang 50x50 tebal 1.2 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:26:57', '2020-11-05 06:42:00'),
(63, 'Hollow Galvanis 40x60', '', '40x60', '0.7', 88000, 'Hollow Galvanis dengan panjang 40x60 tebal 0.7 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:29:27', '2020-11-05 06:42:36'),
(64, 'Hollow Galvanis 40x60', '', '40x60', '0.8', 99000, 'Hollow Galvanis dengan panjang 40x60 tebal 0.8 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:29:27', '2020-11-05 06:42:59'),
(65, 'Hollow Galvanis 40x60', '', '40x60', '0.8kf', 115000, 'Hollow Galvanis dengan panjang 40x60 tebal 0.8kf anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:36:05', '2020-11-05 06:43:15'),
(66, 'Hollow Galvanis 40x60', '', '40x60', '0.9', 114000, 'Hollow Galvanis dengan panjang 40x60 tebal 0.9 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:36:05', '2020-11-05 06:43:28'),
(67, 'Hollow Galvanis 40x60', '', '40x60', '0.9kf', 125000, 'Hollow Galvanis dengan panjang 40x60 tebal 0.9kf anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:36:05', '2020-11-05 06:43:37'),
(68, 'Hollow Galvanis 40x60', '', '40x60', '1.0', 127000, 'Hollow Galvanis dengan panjang 40x60 tebal 1.0 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:36:05', '2020-11-05 06:43:46'),
(69, 'Hollow Galvanis 40x60', '', '40x60', '1.0kf', 135000, 'Hollow Galvanis dengan panjang 40x60 tebal 1.0kf anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:36:05', '2020-11-05 06:43:53'),
(70, 'Hollow Galvanis 40x60', '', '40x60', '1.2', 147000, 'Hollow Galvanis dengan panjang 40x60 tebal 1.2 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:36:05', '2020-11-05 06:44:05'),
(71, 'Hollow Galvanis 40x60', '', '40x60', '1.2kf', 158000, 'Hollow Galvanis dengan panjang 40x60 tebal 1.2kf anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:36:05', '2020-11-05 06:44:15'),
(72, 'Hollow Galvanis 40x60', '', '40x60', '1.5kf', 288000, 'Hollow Galvanis dengan panjang 40x60 tebal 1.5kf anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:36:05', '2020-11-05 06:44:27'),
(73, 'Hollow Galvanis 40x60', '', '40x60', '2.0', 298000, 'Hollow Galvanis dengan panjang 40x60 tebal 2.0 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:36:05', '2020-11-05 06:44:40'),
(74, 'Hollow Galvanis 40x80', '', '40x80', '0.8', 134000, 'Hollow Galvanis dengan panjang 40x80 tebal 0.8 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:47:06', '2020-11-05 06:44:53'),
(75, 'Hollow Galvanis 40x80', '', '40x80', '1.0', 185000, 'Hollow Galvanis dengan panjang 40x80 tebal 1.0 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:47:06', '2020-11-05 06:45:05'),
(76, 'Hollow Galvanis 40x80', '', '40x80', '1.1', 195000, 'Hollow Galvanis dengan panjang 40x80 tebal 1.1 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:47:06', '2020-11-05 06:45:14'),
(77, 'Hollow Galvanis 40x80', '', '40x80', '1.2', 218000, 'Hollow Galvanis dengan panjang 40x80 tebal 1.2 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:47:06', '2020-11-05 06:45:24'),
(78, 'Hollow Galvanis 40x80', '', '40x80', '1.6', 268000, 'Hollow Galvanis dengan panjang 40x80 tebal 1.6 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:47:06', '2020-11-05 06:45:37'),
(79, 'Hollow Galvanis 50x100', '', '50x100', '1.0', 205000, 'Hollow Galvanis dengan panjang 50x100 tebal 1.0 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:50:54', '2020-11-05 06:45:56'),
(80, 'Hollow Galvanis 50x100', '', '50x100', '1.1', 228000, 'Hollow Galvanis dengan panjang 50x100 tebal 1.1 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:50:54', '2020-11-05 06:46:05'),
(81, 'Hollow Galvanis 50x100', '', '50x100', '1.2', 264000, 'Hollow Galvanis dengan panjang 50x100 tebal 1.2 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:50:54', '2020-11-05 06:48:19'),
(82, 'Hollow Galvanis 50x100', '', '50x100', '1.6', 333000, 'Hollow Galvanis dengan panjang 50x100 tebal 1.6 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 19:50:54', '2020-11-05 06:48:32'),
(83, 'Hollow Galvanis 75x75', '', '75x75', '2.0', 344000, 'Hollow Galvanis dengan panjang 75x75 tebal 2.0 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 20:03:45', '2020-11-05 06:48:51'),
(84, 'Hollow Hitam 30x60', '', '30x60', '0.8', 90000, 'Hollow Hitam dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:14:50', '2020-11-05 06:49:24'),
(85, 'Hollow Hitam 30x60', '', '30x60', '0.9', 97000, 'Hollow Hitam dengan panjang 30x60 tebal 0.9 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:14:50', '2020-11-05 06:50:16'),
(86, 'Hollow Hitam 30x60', '', '30x60', '1.0', 106000, 'Hollow Hitam dengan panjang 30x60 tebal 1.0 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:14:50', '2020-11-05 06:50:26'),
(87, 'Hollow Hitam 30x60', '', '30x60', '1.2', 127000, 'Hollow Hitam dengan panjang 30x60 tebal 1.2 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:14:50', '2020-11-05 06:50:35'),
(88, 'Hollow Hitam 40x40', '', '40x40', '0.7', 66000, 'Hollow Hitam dengan panjang 40x40 tebal 0.7 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:20:48', '2020-11-05 06:50:51'),
(89, 'Hollow Hitam 40x40', '', '40x40', '0.8', 71000, 'Hollow Hitam dengan panjang 40x40 tebal 0.8 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:20:48', '2020-11-05 06:51:01'),
(90, 'Hollow Hitam 40x40', '', '40x40', '0.9', 81000, 'Hollow Hitam dengan panjang 40x40 tebal 0.9 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:20:48', '2020-11-05 06:51:15'),
(91, 'Hollow Hitam 40x40', '', '40x40', '0.9kf', 92000, 'Hollow Hitam dengan panjang 40x40 tebal 0.9kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:30:20', '2020-11-05 06:51:21'),
(92, 'Hollow Hitam 40x40', '', '40x40', '1.0', 91000, 'Hollow Hitam dengan panjang 40x40 tebal 1.0 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:30:20', '2020-11-05 06:51:28'),
(93, 'Hollow Hitam 40x40', '', '40x40', '1.0kf', 97000, 'Hollow Hitam dengan panjang 40x40 tebal 1.0kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:30:20', '2020-11-05 06:51:36'),
(94, 'Hollow Hitam 40x40', '', '40x40', '1.2', 103000, 'Hollow Hitam dengan panjang 40x40 tebal 1.2 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:30:20', '2020-11-05 06:51:53'),
(95, 'Hollow Hitam 40x40', '', '40x40', '1.2E', 105000, 'Hollow Hitam dengan panjang 40x40 tebal 1.2E anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:30:20', '2020-11-05 06:52:04'),
(96, 'Hollow Hitam 40x40', '', '40x40', '1.2kf', 113500, 'Hollow Hitam dengan panjang 40x40 tebal 1.2kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:30:20', '2020-11-05 06:55:32'),
(97, 'Hollow Hitam 40x40', '', '40x40', '1.4', 128000, 'Hollow Hitam dengan panjang 40x40 tebal 1.4 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:30:20', '2020-11-05 06:55:42'),
(98, 'Hollow Hitam 40x40', '', '40x40', '1.4kf', 135000, 'Hollow Hitam dengan panjang 40x40 tebal 1.4kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:30:20', '2020-11-05 06:55:49'),
(99, 'Hollow Hitam 40x40', '', '40x40', '1.6kf', 145000, 'Hollow Hitam dengan panjang 40x40 tebal 1.6kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:30:20', '2020-11-05 06:55:56'),
(100, 'Hollow Hitam 50x50', '', '50x50', '1.0', 123000, 'Hollow Hitam dengan panjang 50x50 tebal 1.0 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:33:40', '2020-11-05 06:56:10'),
(101, 'Hollow Hitam 50x50', '', '50x50', '1.2', 140000, 'Hollow Hitam dengan panjang 50x50 tebal 1.2 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:33:40', '2020-11-05 06:56:18'),
(102, 'Hollow Hitam 50x50', '', '50x50', '1.4', 158000, 'Hollow Hitam dengan panjang 50x50 tebal 1.4 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:33:40', '2020-11-05 06:56:27'),
(103, 'Hollow Hitam 40x60 KF', '', '40x60 KF', '0.8kf', 102000, 'Hollow Hitam dengan panjang 40x60 KF tebal 0.8kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:39:00', '2020-11-05 07:04:21'),
(104, 'Hollow Hitam 40x60 KF', '', '40x60 KF', '0.9kf', 110000, 'Hollow Hitam dengan panjang 40x60 KF tebal 0.9kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:39:00', '2020-11-05 07:04:34'),
(105, 'Hollow Hitam 40x60 KF', '', '40x60 KF', '1.0kf', 119000, 'Hollow Hitam dengan panjang 40x60 KF tebal 1.0kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:39:00', '2020-11-05 07:04:47'),
(106, 'Hollow Hitam 40x60 KF', '', '40x60 KF', '1.2kf', 143000, 'Hollow Hitam dengan panjang 40x60 KF tebal 1.2kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:39:00', '2020-11-05 07:04:58'),
(107, 'Hollow Hitam 40x60 KF', '', '40x60 KF', '1.4kf', 161000, 'Hollow Hitam dengan panjang 40x60 KF tebal 1.4kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:39:00', '2020-11-05 07:05:05'),
(108, 'Hollow Hitam 40x60 KF', '', '40x60 KF', '1.6kf', 183000, 'Hollow Hitam dengan panjang 40x60 KF tebal 1.6kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:39:00', '2020-11-05 07:05:12'),
(109, 'Hollow Hitam 40x60 KF', '', '40x60 KF', '1.8kf', 210000, 'Hollow Hitam dengan panjang 40x60 KF tebal 1.8kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:39:00', '2020-11-05 07:05:20'),
(110, 'Hollow Hitam 40x60 KF', '', '40x60 KF', '2.0kf', 231000, 'Hollow Hitam dengan panjang 40x60 KF tebal 2.0kf anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:39:00', '2020-11-05 07:05:38'),
(111, 'Hollow Hitam 40x80', '', '40x80', '0.8', 135000, 'Hollow Hitam dengan panjang 40x80 tebal 0.8 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:41:15', '2020-11-05 07:01:34'),
(112, 'Hollow Hitam 40x80', '', '40x80', '1.0', 155000, 'Hollow Hitam dengan panjang 40x80 tebal 1.0 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:41:15', '2020-11-05 07:01:45'),
(113, 'Hollow Hitam 40x80', '', '40x80', '1.2', 174000, 'Hollow Hitam dengan panjang 40x80 tebal 1.2 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:41:15', '2020-11-05 07:01:53'),
(114, 'Hollow Hitam 40x80', '', '40x80', '1.4', 207000, 'Hollow Hitam dengan panjang 40x80 tebal 1.4 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:41:15', '2020-11-05 07:02:03'),
(115, 'Hollow Hitam 40x80', '', '40x80', '1.6', 228000, 'Hollow Hitam dengan panjang 40x80 tebal 1.6 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:41:15', '2020-11-05 07:02:15'),
(116, 'Hollow Hitam 50x100', '', '50x100', '1.0', 198000, 'Hollow Hitam dengan panjang 50x100 tebal 1.0 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:43:02', '2020-11-05 07:02:26'),
(117, 'Hollow Hitam 50x100', '', '50x100', '1.2', 225000, 'Hollow Hitam dengan panjang 50x100 tebal 1.2 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:43:02', '2020-11-05 07:02:34'),
(118, 'Hollow Hitam 50x100', '', '50x100', '1.4', 258000, 'Hollow Hitam dengan panjang 50x100 tebal 1.4 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:43:02', '2020-11-05 07:07:01'),
(119, 'Hollow Hitam 50x100', '', '50x100', '1.6', 275000, 'Hollow Hitam dengan panjang 50x100 tebal 1.6 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:43:02', '2020-11-05 07:07:09'),
(120, 'Hollow Hitam 50x100', '', '50x100', '1.8', 315000, 'Hollow Hitam dengan panjang 50x100 tebal 1.8 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:43:02', '2020-11-05 07:07:18'),
(121, 'Hollow Hitam 75x75', '', '75x75', '1.6', 279000, 'Hollow Hitam dengan panjang 75x75 tebal 1.6 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:43:50', '2020-11-05 07:07:31'),
(122, 'Hollow Hitam 75x75', '', '75x75', '2.0', 339000, 'Hollow Hitam dengan panjang 75x75 tebal 2.0 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:43:50', '2020-11-05 07:07:41'),
(123, 'Hollow Hitam 100x100', '', '100x100', '1.2', 390000, 'Hollow Hitam dengan panjang 100x100 tebal 1.2 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:44:47', '2020-11-05 07:08:05'),
(124, 'Hollow Hitam 100x100', '', '100x100', '1.6', 397000, 'Hollow Hitam dengan panjang 100x100 tebal 1.6 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:44:47', '2020-11-05 07:08:16'),
(125, 'Hollow Hitam 100x100', '', '100x100', '2.0', 285000, 'Hollow Hitam dengan panjang 100x100 tebal 2.0 anti karat dan tahan lama', 'hollow hitam.jpg', '2020-10-31 20:44:47', '2020-11-05 07:08:25'),
(126, 'Hollow Galvanis 100x100', '', '100x100', '1.6', 455000, 'Hollow Galvanis dengan panjang 100x100 tebal 1.6 anti karat dan tahan lama', 'hollow galvanis.jpg', '2020-10-31 20:46:38', '2020-11-05 07:09:00'),
(127, 'Besi UNP 50', '', '', '50', 135000, 'Besi UNP tebal 50 anti karat dan tahan lama', 'besi unp.jpg', '2020-10-31 20:49:25', '2020-11-05 07:18:42'),
(128, 'Besi UNP 80', '', '', '80', 282000, 'Besi UNP tebal 80 anti karat dan tahan lama', 'besi unp.jpg', '2020-10-31 20:49:25', '2020-11-05 07:20:55'),
(129, 'Besi UNP 100', '', '', '100', 445000, 'Besi UNP tebal 100 anti karat dan tahan lama', 'besi unp.jpg', '2020-10-31 20:49:25', '2020-11-05 07:21:05'),
(130, 'Besi UNP 120', '', '', '120', 605000, 'Besi UNP tebal 120 anti karat dan tahan lama', 'besi unp.jpg', '2020-10-31 20:49:25', '2020-11-05 07:21:42'),
(131, 'Besi CNP 100x1.0', '', '', '100 x 1.0', 105000, 'Besi CNP tebal 100x1.0 anti karat dan tahan lama', 'besi cnp.jpeg', '2020-10-31 21:06:32', '2020-11-05 07:23:09'),
(132, 'Besi CNP 120', '', '', '120 x 1.2', 132000, 'Besi CNP tebal 120x1.2 anti karat dan tahan lama', 'besi cnp.jpeg', '2020-10-31 21:06:32', '2020-11-05 07:41:25'),
(133, 'Besi CNP 120', '', '', '120 x 1.6', 185000, 'Besi CNP tebal 120x1.6 anti karat dan tahan lama', 'besi cnp.jpeg', '2020-10-31 21:06:32', '2020-11-05 07:41:39'),
(134, 'Besi CNP 150x1.6', '', '', '150 x 1.6', 195000, 'Besi CNP tebal 150x1.6 anti karat dan tahan lama', 'besi cnp.jpeg', '2020-10-31 21:06:32', '2020-11-05 07:41:54'),
(135, 'Besi CNP 150x2.0', '', '', '150 x 2.0', 255000, 'Besi CNP tebal 150x2.0 anti karat dan tahan lama', 'besi cnp.jpeg', '2020-10-31 21:06:32', '2020-11-05 07:42:06'),
(136, 'Besi WF 150x6m', '', '', '150 x 6m', 970000, 'Besi WF tebal 150x6m anti karat dan tahan lama', 'besi wf.jpg', '2020-10-31 21:07:21', '2020-11-05 07:43:11'),
(137, 'Pipa Air Galvanis 1/2', '', '1/2"', '0.9', 45000, 'Pipa Air Galvanis ukuran 1/2 tebal 0.9 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:11:19', '2020-11-05 07:46:01'),
(138, 'Pipa Air Galvanis 1/2', '', '1/2"', '1.0', 48500, 'Pipa Air Galvanis ukuran 1/2 tebal 1.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:11:19', '2020-11-05 07:48:31'),
(139, 'Pipa Air Galvanis 1/2', '', '1/2"', '1.2', 58000, 'Pipa Air Galvanis ukuran 1/2 tebal 1.2 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:11:19', '2020-11-05 07:48:48'),
(140, 'Pipa Air Galvanis 1/2', '', '1/2"', '1.4', 70000, 'Pipa Air Galvanis ukuran 1/2 tebal 1.4 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:11:19', '2020-11-05 07:48:56'),
(141, 'Pipa Air Galvanis 1/2', '', '1/2"', '1.6', 78000, 'Pipa Air Galvanis ukuran 1/2 tebal 1.6 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:11:19', '2020-11-05 07:49:05'),
(142, 'Pipa Air Galvanis 3/4', '', '3/4"', '0.9', 55000, 'Pipa Air Galvanis ukuran 3/4 tebal 0.9 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:26:01', '2020-11-05 07:49:20'),
(143, 'Pipa Air Galvanis 3/4', '', '3/4"', '1.0', 63000, 'Pipa Air Galvanis ukuran 3/4 tebal 1.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:26:01', '2020-11-05 07:49:35'),
(144, 'Pipa Air Galvanis 3/4', '', '3/4"', '1.2', 73000, 'Pipa Air Galvanis ukuran 3/4 tebal 1.2 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:26:01', '2020-11-05 07:49:43'),
(145, 'Pipa Air Galvanis 3/4', '', '3/4"', '1.4', 80000, 'Pipa Air Galvanis ukuran 3/4 tebal 1.4 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:26:01', '2020-11-05 07:49:52'),
(146, 'Pipa Air Galvanis 3/4', '', '3/4"', '1.6', 95000, 'Pipa Air Galvanis ukuran 3/4 tebal 1.6 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:26:01', '2020-11-05 07:50:02'),
(147, 'Pipa Air Galvanis 1', '', '1"', '1.0', 87000, 'Pipa Air Galvanis ukuran 1/ tebal 1.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:28:06', '2020-11-05 07:50:24'),
(148, 'Pipa Air Galvanis 1', '', '1"', '1.2', 98000, 'Pipa Air Galvanis ukuran 1/ tebal 1.2 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:28:06', '2020-11-05 07:50:38'),
(149, 'Pipa Air Galvanis 1', '', '1"', '1.4', 100000, 'Pipa Air Galvanis ukuran 1/ tebal 1.4 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:28:06', '2020-11-05 07:50:45'),
(150, 'Pipa Air Galvanis 1', '', '1"', '1.6', 115000, 'Pipa Air Galvanis ukuran 1/ tebal 1.6 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:28:06', '2020-11-05 07:50:52'),
(151, 'Pipa Air Galvanis 1', '', '1"', '2.0', 167000, 'Pipa Air Galvanis ukuran 1/ tebal 2.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:28:06', '2020-11-05 07:50:59'),
(152, 'Pipa Air Galvanis 1 1/4', '', '1 1/4"', '0.9', 87000, 'Pipa Air Galvanis ukuran 1 1/4 tebal 0.9 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:44:04', '2020-11-05 07:51:15'),
(153, 'Pipa Air Galvanis 1 1/4', '', '1 1/4"', '1.0', 99000, 'Pipa Air Galvanis ukuran 1 1/4 tebal 1.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:44:04', '2020-11-05 07:51:38'),
(154, 'Pipa Air Galvanis 1 1/4', '', '1 1/4"', '1.2', 120000, 'Pipa Air Galvanis ukuran 1 1/4 tebal 1.2 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:44:04', '2020-11-05 07:51:49'),
(155, 'Pipa Air Galvanis 1 1/4', '', '1 1/4"', '1.4', 129000, 'Pipa Air Galvanis ukuran 1 1/4 tebal 1.4 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:44:04', '2020-11-05 07:52:11'),
(156, 'Pipa Air Galvanis 1 1/4', '', '1 1/4"', '1.6', 157000, 'Pipa Air Galvanis ukuran 1 1/4 tebal 1.6 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:44:04', '2020-11-05 07:52:22'),
(157, 'Pipa Air Galvanis 1 1/4', '', '1 1/4"', '2.0', 223000, 'Pipa Air Galvanis ukuran 1 1/4 tebal 2.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:44:04', '2020-11-05 07:52:33'),
(158, 'Pipa Air Galvanis 1 1/2', '', '1 1/2"', '0.8', 91000, 'Pipa Air Galvanis ukuran 1 1/2 tebal 0.8 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:49:20', '2020-11-05 07:52:45'),
(159, 'Pipa Air Galvanis 1 1/2', '', '1 1/2"', '1.0', 115000, 'Pipa Air Galvanis ukuran 1 1/2 tebal 1.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:49:20', '2020-11-05 07:52:55'),
(160, 'Pipa Air Galvanis 1 1/2', '', '1 1/2"', '1.2', 131000, 'Pipa Air Galvanis ukuran 1 1/2 tebal 1.2 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:49:20', '2020-11-05 07:53:16'),
(161, 'Pipa Air Galvanis 1 1/2', '', '1 1/2"', '1.4', 152000, 'Pipa Air Galvanis ukuran 1 1/2 tebal 1.4 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:49:20', '2020-11-05 07:53:26'),
(162, 'Pipa Air Galvanis 1 1/2', '', '1 1/2"', '1.6', 211000, 'Pipa Air Galvanis ukuran 1 1/2 tebal 1.6 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:49:20', '2020-11-05 07:54:07'),
(163, 'Pipa Air Galvanis 1 1/2', '', '1 1/2"', '2.0', 277000, 'Pipa Air Galvanis ukuran 1 1/2 tebal 2.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-10-31 21:49:20', '2020-11-05 07:54:15'),
(164, 'Pipa Air Galvanis 2', '', '2"', '1.0', 138000, 'Pipa Air Galvanis ukuran 2 tebal 1.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:39:22', '2020-11-05 07:54:58'),
(165, 'Pipa Air Galvanis 2', '', '2"', '1.2', 160000, 'Pipa Air Galvanis ukuran 2 tebal 1.2 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:40:00', '2020-11-05 07:55:05'),
(166, 'Pipa Air Galvanis 2', '', '2"', '1.4', 187000, 'Pipa Air Galvanis ukuran 2 tebal 1.4 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:40:25', '2020-11-05 07:55:13'),
(167, 'Pipa Air Galvanis 2', '', '2"', '1.6', 211000, 'Pipa Air Galvanis ukuran 2 tebal 1.6 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:40:51', '2020-11-05 07:55:22'),
(168, 'Pipa Air Galvanis 2', '', '2"', '2.0', 240000, 'Pipa Air Galvanis ukuran 2 tebal 2.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:41:19', '2020-11-05 07:55:31'),
(169, 'Pipa Air Galvanis 2 1/2', '', '2 1/2"', '1.0', 0, 'Pipa Air Galvanis ukuran 2 1/2 tebal 1.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:43:30', '2020-11-05 07:56:00'),
(170, 'Pipa Air Galvanis 2 1/2', '', '2 1/2"', '1.2', 201000, 'Pipa Air Galvanis ukuran 2 1/2 tebal 1.2 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:44:08', '2020-11-05 07:56:12'),
(171, 'Pipa Air Galvanis 2 1/2', '', '2 1/2"', '1.4', 235000, 'Pipa Air Galvanis ukuran 2 1/2 tebal 1.4 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:45:32', '2020-11-05 07:56:20'),
(172, 'Pipa Air Galvanis 2 1/2', '', '2 1/2"', '1.6', 266000, 'Pipa Air Galvanis ukuran 2 1/2 tebal 1.6 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:48:15', '2020-11-05 07:56:25'),
(173, 'Pipa Air Galvanis 2 1/2', '', '2 1/2"', '2.0', 278000, 'Pipa Air Galvanis ukuran 2 1/2 tebal 2.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:48:46', '2020-11-05 07:56:39'),
(174, 'Pipa Air Galvanis 3', '', '3"', '1.0', 0, 'Pipa Air Galvanis ukuran 3 tebal 1.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:56:00', '2020-11-05 07:56:51'),
(175, 'Pipa Air Galvanis 3', '', '3"', '1.3', 278000, 'Pipa Air Galvanis ukuran 3 tebal 1.3 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:56:00', '2020-11-05 07:56:59'),
(176, 'Pipa Air Galvanis 3', '', '3"', '1.4', 308000, 'Pipa Air Galvanis ukuran 3 tebal 1.4 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:56:00', '2020-11-05 07:57:07'),
(177, 'Pipa Air Galvanis 3', '', '3"', '1.5', 323000, 'Pipa Air Galvanis ukuran 3 tebal 1.5 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:56:00', '2020-11-05 07:57:16'),
(178, 'Pipa Air Galvanis 3', '', '3"', '1.6', 346000, 'Pipa Air Galvanis ukuran 3 tebal 1.6 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:56:00', '2020-11-05 07:57:27'),
(179, 'Pipa Air Galvanis 4', '', '4"', '1.4', 379000, 'Pipa Air Galvanis ukuran 4 tebal 1.4 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:56:00', '2020-11-05 07:57:39'),
(180, 'Pipa Air Galvanis 4', '', '4"', '1.5', 407000, 'Pipa Air Galvanis ukuran 4 tebal 1.5 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:56:00', '2020-11-05 07:57:50'),
(181, 'Pipa Air Galvanis 4', '', '4"', '1.6', 442000, 'Pipa Air Galvanis ukuran 4 tebal 1.6 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:56:00', '2020-11-05 07:57:55'),
(182, 'Pipa Air Galvanis 4', '', '4"', '2.0', 580000, 'Pipa Air Galvanis ukuran 4 tebal 2.0 anti karat dan tahan lama', 'pipa besi galvanis.jpeg', '2020-11-03 09:56:00', '2020-11-05 07:58:02'),
(183, 'Pipa Hitam 1/2', '', '1/2"', '0.8', 0, 'Pipa Hitam ukuran 1/2 tebal 0.8 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:08:11', '2020-11-05 08:03:34'),
(184, 'Pipa Hitam 1/2', '', '1/2"', '0.9', 40000, 'Pipa Hitam ukuran 1/2 tebal 0.9 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:08:11', '2020-11-05 08:03:51'),
(185, 'Pipa Hitam 1/2', '', '1/2"', '1.0', 43000, 'Pipa Hitam ukuran 1/2 tebal  1.0 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:08:11', '2020-11-05 08:05:26'),
(186, 'Pipa Hitam 1/2', '', '1/2"', '1.2', 45000, 'Pipa Hitam ukuran 1/2 tebal  1.2 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:08:11', '2020-11-05 08:04:58'),
(187, 'Pipa Hitam 1/2', '', '1/2"', '1.4', 0, 'Pipa Hitam ukuran 1/2 tebal  1.4 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:08:11', '2020-11-05 08:06:31'),
(188, 'Pipa Hitam 3/4', '', '3/4"', '0.7', 32000, 'Pipa Hitam ukuran 3/4 tebal  0.7 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:08:11', '2020-11-05 08:07:22'),
(189, 'Pipa Hitam 3/4', '', '3/4"', '0.8', 0, 'Pipa Hitam ukuran 3/4 tebal  0.8 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:08:11', '2020-11-05 08:08:15'),
(190, 'Pipa Hitam 3/4', '', '3/4"', '1.0', 52000, 'Pipa Hitam ukuran 3/4 tebal  1.0 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:08:11', '2020-11-05 08:08:33'),
(191, 'Pipa Hitam 3/4', '', '3/4"', '1.2', 61000, 'Pipa Hitam ukuran 3/4 tebal  1.2 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:08:11', '2020-11-05 08:08:54'),
(192, 'Pipa Hitam 3/4', '', '3/4"', '1.4', 73000, 'Pipa Hitam ukuran 3/4 tebal  1.4 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:21:17', '2020-11-05 08:09:13'),
(193, 'Pipa Hitam 1', '', '1"', '0.8', 0, 'Pipa Hitam ukuran 1/ tebal  0.8 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:29:57', '2020-11-05 08:10:03'),
(194, 'Pipa Hitam 1', '', '1"', '1.0', 63000, 'Pipa Hitam ukuran 1/ tebal  1.0 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:29:57', '2020-11-05 08:10:15'),
(195, 'Pipa Hitam 1', '', '1"', '1.2', 72000, 'Pipa Hitam ukuran 1/ tebal  1.2 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:29:57', '2020-11-05 08:10:59'),
(196, 'Pipa Hitam 1', '', '1"', '1.4', 82000, 'Pipa Hitam ukuran 1/ tebal  1.4 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:29:57', '2020-11-05 08:11:07'),
(197, 'Pipa Hitam 1', '', '1"', '1.6', 98000, 'Pipa Hitam ukuran 1/ tebal  1.6 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:29:57', '2020-11-05 08:11:15'),
(198, 'Pipa Hitam 1 1/4', '', '1 1/4"', '0.8', 0, 'Pipa Hitam ukuran 1 1/4 tebal  0.8 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:33:57', '2020-11-05 08:11:34'),
(199, 'Pipa Hitam 1 1/4', '', '1 1/4"', '0.9', 0, 'Pipa Hitam ukuran 1 1/4 tebal  0.9 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:33:57', '2020-11-05 08:11:44'),
(200, 'Pipa Hitam 1 1/4', '', '1 1/4"', '1.0', 89000, 'Pipa Hitam ukuran 1 1/4 tebal  1.0 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:33:57', '2020-11-05 08:12:01'),
(201, 'Pipa Hitam 1 1/4', '', '1 1/4"', '1.2', 96000, 'Pipa Hitam ukuran 1 1/4 tebal  1.2 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:33:57', '2020-11-05 08:12:11'),
(202, 'Pipa Hitam 1 1/4', '', '1 1/4"', '1.4', 118000, 'Pipa Hitam ukuran 1 1/4 tebal  1.4 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:33:57', '2020-11-05 08:12:20'),
(203, 'Pipa Hitam 1 1/4', '', '1 1/4"', '1.6', 0, 'Pipa Hitam ukuran 1 1/4 tebal  1.6 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:33:57', '2020-11-05 08:12:29'),
(204, 'Pipa Hitam 1 1/2', '', '1 1/2"', '1.0', 0, 'Pipa Hitam ukuran 1 1/2 tebal  1.0 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:43:49', '2020-11-05 08:12:45'),
(205, 'Pipa Hitam 1 1/2', '', '1 1/2"', '1.2', 106000, 'Pipa Hitam ukuran 1 1/2 tebal  1.2 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:43:49', '2020-11-05 08:12:56'),
(206, 'Pipa Hitam 1 1/2', '', '1 1/2"', '1.5', 135000, 'Pipa Hitam ukuran 1 1/2 tebal  1.5 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:43:49', '2020-11-05 08:13:06'),
(207, 'Pipa Hitam 2', '', '2"', '1.0', 0, 'Pipa Hitam ukuran 2/ tebal  1.0 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:46:42', '2020-11-05 08:13:20'),
(208, 'Pipa Hitam 2', '', '2"', '1.2', 142000, 'Pipa Hitam ukuran 2/ tebal  1.2 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:46:42', '2020-11-05 08:13:30'),
(209, 'Pipa Hitam 2', '', '2"', '1.4', 149000, 'Pipa Hitam ukuran 2/ tebal  1.4 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:46:42', '2020-11-05 08:13:39'),
(210, 'Pipa Hitam 2', '', '2"', '1.6', 161000, 'Pipa Hitam ukuran 2/ tebal  1.6 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:46:42', '2020-11-05 08:13:47'),
(211, 'Pipa Hitam 2', '', '2"', '2.0', 218000, 'Pipa Hitam ukuran 2/ tebal  2.0 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 10:46:42', '2020-11-05 08:13:54'),
(212, 'Pipa Hitam 2 1/2', '', '2 1/2"', '1.0', 0, 'Pipa Hitam ukuran 2 1/2 tebal  1.0 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:03:45', '2020-11-05 08:14:12'),
(213, 'Pipa Hitam 2 1/2', '', '2 1/2"', '1.2', 165000, 'Pipa Hitam ukuran 2 1/2 tebal  1.2 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:03:45', '2020-11-05 08:14:23'),
(214, 'Pipa Hitam 2 1/2', '', '2 1/2"', '1.4', 0, 'Pipa Hitam ukuran 2 1/2 tebal  1.4 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:03:45', '2020-11-05 08:14:31'),
(215, 'Pipa Hitam 2 1/2', '', '2 1/2"', '1.6', 196000, 'Pipa Hitam ukuran 2 1/2 tebal  1.6 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:03:45', '2020-11-05 08:14:38'),
(216, 'Pipa Hitam 2 1/2', '', '2 1/2"', '1.8', 0, 'Pipa Hitam ukuran 2 1/2 tebal  1.8 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:03:45', '2020-11-05 08:14:47'),
(217, 'Pipa Hitam 3', '', '3"', '1.0', 0, 'Pipa Hitam ukuran 3/ tebal  1.0 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:11:27', '2020-11-05 08:15:00'),
(218, 'Pipa Hitam 3', '', '3"', '1.2', 215000, 'Pipa Hitam ukuran 3/ tebal  1.2 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:11:27', '2020-11-05 08:15:13'),
(219, 'Pipa Hitam 3', '', '3"', '1.4', 239000, 'Pipa Hitam ukuran 3/ tebal  1.4 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:11:27', '2020-11-05 08:15:19'),
(220, 'Pipa Hitam 3', '', '3"', '1.6**', 335000, 'Pipa Hitam ukuran 3/ tebal  1.6 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:11:27', '2020-11-05 08:15:29'),
(221, 'Pipa Hitam 3', '', '3"', '1.8', 0, 'Pipa Hitam ukuran 3/ tebal  1.8 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:11:27', '2020-11-05 08:15:35'),
(222, 'Pipa Hitam 4', '', '4"', '1.0', 0, 'Pipa Hitam ukuran 4/ tebal  1.0 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:13:23', '2020-11-05 08:15:44'),
(223, 'Pipa Hitam 4', '', '4"', '1.2', 0, 'Pipa Hitam ukuran 4/ tebal  1.2 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:13:23', '2020-11-05 08:15:59'),
(224, 'Pipa Hitam 4', '', '4"', '1.4', 0, 'Pipa Hitam ukuran 4/ tebal  1.4 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:13:23', '2020-11-05 08:16:05'),
(225, 'Pipa Hitam 4', '', '4"', '1.6', 370000, 'Pipa Hitam ukuran 4/ tebal  1.6 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:13:23', '2020-11-05 08:16:11'),
(226, 'Pipa Hitam 4', '', '4"', '1.8', 0, 'Pipa Hitam ukuran 4/ tebal  1.8 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:13:23', '2020-11-05 08:16:32'),
(227, 'Pipa Hitam 4', '', '4"', '2.2', 654000, 'Pipa Hitam ukuran 4/ tebal  2.2 anti karat dan tahan lama', 'pipa hitam.jpg', '2020-11-03 11:14:09', '2020-11-05 08:16:43'),
(228, 'Noko 10x6m', '', '10x6m', '', 58000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama where product_id=45;\n', 'hollow galvanis.jpg', '2020-11-03 11:29:45', '2020-11-05 06:25:05'),
(229, 'Noko 12x4m', '', '12x4m', '', 31000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama where product_id=45;\n', 'hollow galvanis.jpg', '2020-11-03 11:29:45', '2020-11-05 06:25:05'),
(230, 'Noko 12x4.5m', '', '12x4.5m', '', 40000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama where product_id=45;\n', 'hollow galvanis.jpg', '2020-11-03 11:29:45', '2020-11-05 06:25:05'),
(231, 'Noko 12x5.7m', '', '12x5.7m', '', 55000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama where product_id=45;\n', 'hollow galvanis.jpg', '2020-11-03 11:29:45', '2020-11-05 06:25:05'),
(232, 'Noko 12x6m', '', '12x6m', '', 79000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama where product_id=45;\n', 'hollow galvanis.jpg', '2020-11-03 11:29:45', '2020-11-05 06:25:05'),
(233, 'Noko 10 ulir', '', '10 ulir', '', 59000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama where product_id=45;\n', 'hollow galvanis.jpg', '2020-11-03 11:29:45', '2020-11-05 06:25:05'),
(234, 'Noko 10x4m', '', '10x4m', '', 36000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama where product_id=45;\n', 'hollow galvanis.jpg', '2020-11-03 11:29:45', '2020-11-05 06:25:05'),
(235, 'Noko ulir 12x6', '', 'ulir 12x6', '', 83000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama where product_id=45;\n', 'hollow galvanis.jpg', '2020-11-03 11:29:45', '2020-11-05 06:25:05'),
(236, 'Siku 20x20', '', '20x20', '', 31000, 'Siku ukuran 20x20 kuat dan tahan lama', 'siku.jpeg', '2020-11-03 11:40:15', '2020-11-05 08:23:27'),
(237, 'Siku 25x25', '', '25x25', '', 37000, 'Siku ukuran 25x25 kuat dan tahan lama', 'siku.jpeg', '2020-11-03 11:40:15', '2020-11-05 08:23:54'),
(238, 'Siku 30x30 P', '', '30x30 P', '', 51000, 'Siku ukuran 30x30 P kuat dan tahan lama', 'siku.jpeg', '2020-11-03 11:40:15', '2020-11-05 08:24:07'),
(239, 'Siku 30x30 H', '', '30x30 H', '', 55000, 'Siku ukuran 30x30 H kuat dan tahan lama', 'siku.jpeg', '2020-11-03 11:40:15', '2020-11-05 08:24:16'),
(240, 'Siku 40x40 bc', '', '40x40 bc', '', 65000, 'Siku ukuran 40x40 bc kuat dan tahan lama', 'siku.jpeg', '2020-11-03 11:40:15', '2020-11-05 08:24:27'),
(241, 'Siku 40x40 k', '', '40x40 k', '', 76000, 'Siku ukuran 40x40 k kuat dan tahan lama', 'siku.jpeg', '2020-11-03 11:40:15', '2020-11-05 08:24:35'),
(242, 'Siku 40x40 M', '', '40x40 M', '', 80000, 'Siku ukuran 40x40 M kuat dan tahan lama', 'siku.jpeg', '2020-11-03 11:40:15', '2020-11-05 08:24:42'),
(243, 'Siku 40x40 B', '', '40x40 B', '', 85000, 'Siku ukuran 40x40 B kuat dan tahan lama', 'siku.jpeg', '2020-11-03 11:40:15', '2020-11-05 08:24:48'),
(244, 'Siku 45x3.0 M', '', '45x3.0 M', '', 102000, 'Siku ukuran 45x3.0 M kuat dan tahan lama', 'siku.jpeg', '2020-11-03 11:40:15', '2020-11-05 08:25:05'),
(245, 'Siku 50x3.4', '', '50x3,4', '', 118000, 'Siku ukuran 50x3.4 kuat dan tahan lama', 'siku.jpeg', '2020-11-03 11:40:15', '2020-11-05 08:25:23'),
(246, 'Siku 50x4.0 B', '', '50x4.0 B', '', 167000, 'Siku ukuran 50x4.0 B kuat dan tahan lama', 'siku.jpeg', '2020-11-03 11:40:15', '2020-11-05 08:25:39'),
(247, 'Siku 60x60', '', '60x60', '', 261000, 'Siku ukuran 60x60 kuat dan tahan lama', 'siku.jpeg', '2020-11-03 11:40:15', '2020-11-05 08:25:50'),
(248, 'Plat Bodres 0.8', '', '0.8', '', 253000, 'Plat Bodres ukuran 0.8 anti karat dan tahan lama', 'plat bodres.jpg', '2020-11-03 11:47:28', '2020-11-05 08:26:51'),
(249, 'Plat Bodres 0.9', '', '0.9', '', 280000, 'Plat Bodres ukuran 0.9 anti karat dan tahan lama', 'plat bodres.jpg', '2020-11-03 11:47:28', '2020-11-05 08:28:50'),
(250, 'Plat Bodres 1.0', '', '1.0', '', 313000, 'Plat Bodres ukuran 1.0 anti karat dan tahan lama', 'plat bodres.jpg', '2020-11-03 11:47:28', '2020-11-05 08:28:59'),
(251, 'Plat Bodres 1.2', '', '1.2', '', 360000, 'Plat Bodres ukuran 1.2 anti karat dan tahan lama', 'plat bodres.jpg', '2020-11-03 11:47:28', '2020-11-06 02:32:22'),
(252, 'Plat Bodres 1.4', '', '1.4', '', 454000, 'Plat Bodres ukuran 1.4 anti karat dan tahan lama', 'plat bodres.jpg', '2020-11-03 11:47:28', '2020-11-06 02:32:43'),
(253, 'Plat Bodres 1.6', '', '1.6 asli', '', 550000, 'Plat Bodres ukuran 1.6 asli anti karat dan tahan lama', 'plat bodres.jpg', '2020-11-03 11:47:28', '2020-11-06 02:32:51'),
(254, 'Plat Bodres 1.8', '', '1.8 asli', '', 563000, 'Plat Bodres ukuran 1.8 asli anti karat dan tahan lama', 'plat bodres.jpg', '2020-11-03 11:47:28', '2020-11-06 02:32:57'),
(255, 'Plat Bodres 2.0', '', '2.0 asli', '', 625000, 'Plat Bodres ukuran 2.0 asli anti karat dan tahan lama', 'plat bodres.jpg', '2020-11-03 11:47:28', '2020-11-06 02:33:04'),
(256, 'Baja ringan 1.0', '', '', '1.0', 95000, 'Plat Bodres tebal 1.0 anti karat dan tahan lama', 'plat bodres.jpg', '2020-11-03 11:50:17', '2020-11-06 02:34:09'),
(257, 'Baja ringan 0.75', '', '', '0.75', 70000, 'Plat Bodres tebal 0.75 anti karat dan tahan lama', 'plat bodres.jpg', '2020-11-03 11:50:17', '2020-11-06 02:34:17'),
(258, 'Baja ringan 0.65', '', '', '0.65', 62000, 'Plat Bodres tebal 0.65 anti karat dan tahan lama', 'plat bodres.jpg', '2020-11-03 11:50:17', '2020-11-06 02:34:23'),
(259, 'Baja ringan 0.55', '', '', '0.55', 54000, 'Plat Bodres tebal 0.55 anti karat dan tahan lama', 'plat bodres.jpg', '2020-11-03 11:50:17', '2020-11-06 02:34:29'),
(260, 'Plat strip 519x2m', '', '519x2m', '', 12000, 'Plat Strip ukuran 519x2m anti karat dan tahan lama', 'plat strip.jpeg', '2020-11-03 14:01:19', '2020-11-06 02:42:04'),
(261, 'Plat strip 525x2m', '', '525x2m', '', 14000, 'Plat Strip ukuran 525x2m anti karat dan tahan lama', 'plat strip.jpeg', '2020-11-03 14:01:19', '2020-11-06 02:42:37'),
(262, 'Plat strip 519x5.7m', '', '519x5.7m', '', 30000, 'Plat Strip ukuran 519x5.7m anti karat dan tahan lama', 'plat strip.jpeg', '2020-11-03 14:01:19', '2020-11-06 02:42:54'),
(263, 'Plat strip 525x5.7m', '', '525x5.7m', '', 40000, 'Plat Strip ukuran 525x5.7m anti karat dan tahan lama', 'plat strip.jpeg', '2020-11-03 14:01:19', '2020-11-06 02:43:07'),
(264, 'Plat strip 530x5.7m', '', '530x5.7m', '', 53000, 'Plat Strip ukuran 530x5.7m anti karat dan tahan lama', 'plat strip.jpeg', '2020-11-03 14:01:19', '2020-11-06 02:43:16'),
(265, 'Plat strip 5x38x6', '', '5x38x6', '', 111000, 'Plat Strip ukuran 5x38x6 anti karat dan tahan lama', 'plat strip.jpeg', '2020-11-03 14:01:19', '2020-11-06 02:43:29'),
(266, 'Plat eser 0.8', '', '0.8', '', 230000, 'Plat Eser ukuran 0.8 anti karat dan tahan lama', 'plat eser.jpeg', '2020-11-03 14:25:29', '2020-11-06 02:43:50'),
(267, 'Plat eser 0.9', '', '0.9', '', 258000, 'Plat Eser ukuran 0.9 anti karat dan tahan lama', 'plat eser.jpeg', '2020-11-03 14:25:29', '2020-11-06 02:44:31'),
(268, 'Plat eser 1.0', '', '1.0', '', 288000, 'Plat Eser ukuran 1.0 anti karat dan tahan lama', 'plat eser.jpeg', '2020-11-03 14:25:29', '2020-11-06 02:44:38'),
(269, 'Plat eser 1.2', '', '1.2', '', 334000, 'Plat Eser ukuran 1.2 anti karat dan tahan lama', 'plat eser.jpeg', '2020-11-03 14:25:29', '2020-11-06 02:44:43');
INSERT INTO `products` (`product_id`, `nama`, `merk`, `ukuran`, `tebal`, `harga`, `deskripsi`, `gambar`, `created_at`, `updated_on`) VALUES
(270, 'Plat eser 1.4', '', '1.4', '', 357000, 'Plat Eser ukuran 1.4 anti karat dan tahan lama', 'plat eser.jpeg', '2020-11-03 14:25:29', '2020-11-06 02:44:50'),
(271, 'Plat eser 1.6', '', '1.6', '', 415000, 'Plat Eser ukuran 1.6 anti karat dan tahan lama', 'plat eser.jpeg', '2020-11-03 14:25:29', '2020-11-06 02:44:56'),
(272, 'Plat eser 1.8', '', '1.8', '', 458000, 'Plat Eser ukuran 1.8 anti karat dan tahan lama', 'plat eser.jpeg', '2020-11-03 14:25:29', '2020-11-06 02:45:03'),
(273, 'Plat eser 2.0', '', '2.0', '', 530000, 'Plat Eser ukuran 2.0 anti karat dan tahan lama', 'plat eser.jpeg', '2020-11-03 14:25:29', '2020-11-06 02:45:14'),
(274, 'beton', '', '6', '', 30000, 'Beton ukuran 6 kuat dan tahan lama', 'beton.jpeg', '2020-11-03 14:31:34', '2020-11-06 02:55:11'),
(275, 'beton', '', '8 SG', '', 36000, 'Beton ukuran 8 SG kuat dan tahan lama', 'beton.jpeg', '2020-11-03 14:31:34', '2020-11-06 02:55:02'),
(276, 'beton', '', '8 ST', '', 41000, 'Beton ukuran 8 ST kuat dan tahan lama', 'beton.jpeg', '2020-11-03 14:31:34', '2020-11-06 02:55:22'),
(277, 'beton', '', '10 SG', '', 51000, 'Beton ukuran 10 SG kuat dan tahan lama', 'beton.jpeg', '2020-11-03 14:31:34', '2020-11-06 02:55:43'),
(278, 'beton', '', '10 ST', '', 61000, 'Beton ukuran 10 ST kuat dan tahan lama', 'beton.jpeg', '2020-11-03 14:31:34', '2020-11-06 02:55:49'),
(279, 'beton', '', '10 ulir SG', '', 53000, 'Beton ukuran 10 Ulir SG kuat dan tahan lama', 'beton.jpeg', '2020-11-03 14:31:34', '2020-11-06 02:55:58'),
(280, 'beton', '', '12 ST', '', 89000, 'Beton ukuran 12 ST kuat dan tahan lama', 'beton.jpeg', '2020-11-03 14:31:34', '2020-11-06 02:56:07'),
(281, 'beton', '', '13 ulir SG', '', 81000, 'Beton ukuran 13 Ulir SG kuat dan tahan lama', 'beton.jpeg', '2020-11-03 14:31:34', '2020-11-06 02:56:26'),
(282, 'beton', '', '14 ls', '', 135000, 'Beton ukuran 14 ls kuat dan tahan lama', 'beton.jpeg', '2020-11-03 14:31:34', '2020-11-06 02:56:36'),
(283, 'beton', '', '16 tj', '', 147000, 'Beton ukuran 16 tj kuat dan tahan lama', 'beton.jpeg', '2020-11-03 14:31:34', '2020-11-06 02:56:46'),
(284, 'spandek 0.30', '', '', '0.30', 45000, 'Spandek tebal 0.30 kuat dan tahan lama', 'spandek.jpg', '2020-11-03 14:37:59', '2020-11-06 02:57:41'),
(285, 'spandek 0.35', '', '', '0.35', 52000, 'Spandek tebal 0.35 kuat dan tahan lama', 'spandek.jpg', '2020-11-03 14:37:59', '2020-11-06 02:58:06'),
(286, 'spandek', '', '', 'predam', 85000, 'Spandek predam kuat dan tahan lama', 'spandek.jpg', '2020-11-03 14:37:59', '2020-11-06 02:58:23'),
(287, 'reng baja ringan 0.40', '', '', '0.40', 33000, 'Reng Baja Ringan tebal 0.40 anti karat,kuat dan tahan lama', 'reng baja ringan.jpeg', '2020-11-03 14:39:45', '2020-11-06 02:59:44'),
(288, 'reng baja ringan 0.30', '', '', '0.30', 27000, 'Reng Baja Ringan tebal 0.30 anti karat,kuat dan tahan lama', 'reng baja ringan.jpeg', '2020-11-03 14:39:45', '2020-11-06 02:59:51'),
(289, 'reng baja ringan 0.35', '', '', '0.35', 30000, 'Reng Baja Ringan tebal 0.35 anti karat,kuat dan tahan lama', 'reng baja ringan.jpeg', '2020-11-03 14:39:45', '2020-11-06 03:00:02'),
(290, 'bondek 0.65', '', '', '0.65', 87000, 'Bondek tebal 0.65 anti karat,kuat dan tahan lama', 'bondek.jpeg', '2020-11-03 14:40:39', '2020-11-06 03:00:53'),
(291, 'bondek 0.75', '', '', '0.70', 94000, 'Bondek tebal 0.70 anti karat,kuat dan tahan lama', 'bondek.jpeg', '2020-11-03 14:40:39', '2020-11-06 03:03:11'),
(292, 'bondek 0.75', '', '', '0.75', 99000, 'Bondek tebal 0.75 anti karat,kuat dan tahan lama', 'bondek.jpeg', '2020-11-03 14:40:39', '2020-11-06 03:03:17'),
(293, 'lisplang motif 10x4m', '', '10x4m', '', 42000, 'Lisplang Motif ukuran 10x4m kuat dan tahan lama', 'lisplang.jpeg', '2020-11-03 14:44:14', '2020-11-06 03:04:26'),
(294, 'lisplang motif 20x3m', '', '20x3m', '', 52000, 'Lisplang Motif ukuran 20x3m kuat dan tahan lama', 'lisplang.jpeg', '2020-11-03 14:44:14', '2020-11-06 03:04:38'),
(295, 'lisplang motif 20x4m', '', '20x4m', '', 70000, 'Lisplang Motif ukuran 20x4m kuat dan tahan lama', 'lisplang.jpeg', '2020-11-03 14:44:14', '2020-11-06 03:04:44'),
(296, 'lisplang warna 20x3m', '', '20x3m', '', 62000, 'Lisplang Motif ukuran 20x3m kuat dan tahan lama', 'lisplang.jpeg', '2020-11-03 14:45:16', '2020-11-06 03:05:15'),
(297, 'karpet talang', '', 'tebal', '', 23000, 'Karpet Talang tebal anti air, kuat dan tahan lama', 'karpet talang.jpeg', '2020-11-03 14:47:22', '2020-11-06 03:17:31'),
(298, 'karpet talang', '', 'tipis', '', 20000, 'Karpet Talang tipis anti air, kuat dan tahan lama', 'karpet talang.jpeg', '2020-11-03 14:47:22', '2020-11-06 03:16:50'),
(299, 'selang air benang', '', 'hijau', '', 14000, 'Selang air benang hijau kuat dan tahan lama', 'selang hijau.jpeg', '2020-11-03 14:49:53', '2020-11-06 03:24:22'),
(300, 'selang air benang', '', 'biru', '', 11000, 'Selang air benang biru kuat dan tahan lama', 'selang biru.jpeg', '2020-11-03 14:49:53', '2020-11-06 03:24:51'),
(301, 'holo gibsum 2x4', '', '2x4', '', 17000, 'Holo Gibsum ukuran 2x4 kuat dan tahan lama', 'holo gibsum.jpeg', '2020-11-03 14:53:21', '2020-11-06 03:26:56'),
(302, 'holo gibsum 4x4', '', '4x4', '', 22000, 'Holo Gibsum ukuran 4x4 kuat dan tahan lama', 'holo gibsum.jpeg', '2020-11-03 14:53:21', '2020-11-06 03:27:21'),
(303, 'holo gibsum 2x4 tbl', '', '2x4 tbl', '', 25000, 'Holo Gibsum ukuran 2x4 tbl kuat dan tahan lama', 'holo gibsum.jpeg', '2020-11-03 14:53:21', '2020-11-06 03:27:31'),
(304, 'holo gibsum 4x4 tbl', '', '4x4 tbl', '', 40000, 'Holo Gibsum ukuran 4x4 tbl kuat dan tahan lama', 'holo gibsum.jpeg', '2020-11-03 14:53:21', '2020-11-06 03:27:36'),
(305, 'holo gibsum 4x4 tbl M', '', '4x4 tbl M', '', 45000, 'Holo Gibsum ukuran 4x4 tbl M kuat dan tahan lama', 'holo gibsum.jpeg', '2020-11-03 14:53:21', '2020-11-06 03:27:44'),
(306, 'gibsum', '', '', '', 52000, 'Gibsum kuat dan tahan lama', 'gibsum aplus.jpeg', '2020-11-03 14:58:56', '2020-11-11 02:18:45'),
(307, 'gibsum', '', '', '', 70000, 'Gibsum kuat dan tahan lama', 'gibsum jaya.jpeg', '2020-11-03 14:58:56', '2020-11-11 02:18:45'),
(308, 'atap transparan 1.5m', '', '1.5m', '', 83000, 'Atap Transparan ukuran 1.5m kuat dan tahan lama', 'atap transparant.jpeg', '2020-11-03 15:13:16', '2020-11-06 03:30:00'),
(309, 'atap transparan 1.8m', '', '1.8m', '', 99000, 'Atap Transparan ukuran 1.8m kuat dan tahan lama', 'atap transparant.jpeg', '2020-11-03 15:13:16', '2020-11-06 03:30:19'),
(310, 'atap transparan 2.1m', '', '2.1m', '', 116000, 'Atap Transparan ukuran 2.1m kuat dan tahan lama', 'atap transparant.jpeg', '2020-11-03 15:13:16', '2020-11-06 03:30:30'),
(311, 'atap transparan 2.4m', '', '2.4m', '', 132000, 'Atap Transparan ukuran 2.4m kuat dan tahan lama', 'atap transparant.jpeg', '2020-11-03 15:13:16', '2020-11-06 03:30:37'),
(312, 'atap transparan 3.0m', '', '3.0m', '', 165000, 'Atap Transparan ukuran 3.0m kuat dan tahan lama', 'atap transparant.jpeg', '2020-11-03 15:13:16', '2020-11-06 03:30:43'),
(313, 'fiber batik hitam', '', '', '', 35000, 'Fiber batik hitam kuat dan tahan lama', 'fiber batik hitam.jpeg', '2020-11-03 15:15:11', '2020-11-06 03:41:30'),
(314, 'fiber batik putih', '', '', '', 35000, 'Fiber batik putih kuat dan tahan lama', 'fiber batik putih.jpeg', '2020-11-03 15:15:11', '2020-11-06 03:41:03'),
(315, 'fiber tebal hitam', '', '', '', 40000, 'Fiber batik hitam tebal kuat dan tahan lama', 'fiber batik hitam.jpeg', '2020-11-03 15:15:11', '2020-11-06 03:41:37'),
(316, 'fiber tebal putih', '', '', '', 40000, 'Fiber batik putih tebal kuat dan tahan lama', 'fiber batik putih.jpeg', '2020-11-03 15:15:11', '2020-11-06 03:41:16'),
(317, '', '', '', '', 135000, 'Alderon kuat dan tahan lama', 'alderon.jpeg', '2020-11-03 15:15:58', '2020-11-11 02:18:45'),
(318, '', '', '', '', 62000, 'Alderon rd kuat dan tahan lama', 'alderon.jpeg', '2020-11-03 15:15:58', '2020-11-11 02:18:45'),
(319, 'kawat las', '', '', '2.6', 125000, 'Kawat las tebal 2.6', 'kawat las.jpeg', '2020-11-03 15:17:42', '2020-11-06 03:47:51'),
(320, 'kawat las', '', '', '2.6', 65000, 'Kawat las tebal 2.6', 'kawat las.jpeg', '2020-11-03 15:17:42', '2020-11-06 03:48:07'),
(321, 'WD', '', '4"', '', 60000, 'WD-40 ', 'wd 40.jpeg', '2020-11-03 15:23:02', '2020-11-06 03:49:11'),
(322, 'WD potong', '', '14"', '', 32000, 'WD potong ukuran 14', 'wd.jpeg', '2020-11-03 15:23:02', '2020-11-06 03:50:07'),
(323, 'WD poles', '', '', '', 8000, 'WD poles ukuran 14', 'wd.jpeg', '2020-11-03 15:23:02', '2020-11-06 03:50:18'),
(324, 'Grinda amplas', '', '', '', 10000, 'Amplas tahan lama', 'amplas.jpeg', '2020-11-03 15:23:02', '2020-11-06 03:51:24'),
(325, 'dumpul alfa 3 klg', '', '', '', 120000, 'Dumpul alfa 3 klg', 'dempul alfa.jpeg', '2020-11-03 15:23:02', '2020-11-06 03:52:14'),
(326, 'dumpul alfa 1 klg', '', '', '', 40000, 'Dumpul alfa 1 klg', 'dempul alfa.jpeg', '2020-11-03 15:25:02', '2020-11-06 03:56:32'),
(327, 'dumpul sampolak kecil', '', '', '', 17000, 'Dumpul sampolak kecil', 'sanpolak kecil.jpeg', '2020-11-03 15:25:02', '2020-11-06 17:24:16'),
(328, 'dumpul isamu kecil', '', '', '', 25000, 'Dumpul isamu kecil', 'dempul isamu kecil (2).jpeg', '2020-11-03 15:25:02', '2020-11-06 03:57:14'),
(329, 'cat hitam rincon', '', '', '', 58000, 'Cat hitam rincon', 'cat hitam rincon.jpeg', '2020-11-03 15:25:02', '2020-11-06 03:58:00'),
(330, 'cat putih rincon', '', '', '', 60000, 'Cat putih rincon', 'cat hitam rincon.jpeg', '2020-11-03 15:25:02', '2020-11-06 03:58:32'),
(331, 'meni rincon hitam', '', '', '', 45000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama where product_id=45;\n', 'hollow galvanis.jpg', '2020-11-03 15:29:50', '2020-11-05 06:25:05'),
(332, 'meni rincon abu-abu', '', '', '', 45000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama where product_id=45;\n', 'hollow galvanis.jpg', '2020-11-03 15:29:50', '2020-11-05 06:25:05'),
(333, 'meni rincon hijau', '', '', '', 45000, 'Hollow Galvanis dengan panjang 30x60 tebal 0.8 anti karat dan tahan lama where product_id=45;\n', 'hollow galvanis.jpg', '2020-11-03 15:29:50', '2020-11-05 06:25:05'),
(334, 'cat seiv', '', '', '', 60000, 'Cat seiv kemasan 0.96 Liter', 'cat seiv.jpeg', '2020-11-03 15:29:50', '2020-11-06 04:01:36'),
(335, 'cat seiv warna', '', '', '', 62000, 'Cat seiv kemasan 0.96 Liter', 'cat seiv.jpeg', '2020-11-03 15:29:50', '2020-11-06 04:02:06'),
(336, 'meni seiv', '', '', '', 47000, 'Cat seiv kemasan 0.96 Liter', 'cat seiv.jpeg', '2020-11-03 15:31:51', '2020-11-06 17:17:52'),
(337, 'cat seiv', '', '0.8', '', 58000, 'Cat seiv kemasan 0.96 Liter ukuran 0.8', 'cat seiv.jpeg', '2020-11-03 15:31:51', '2020-11-06 04:03:57'),
(338, 'cat seiv kecil warna', '', '', '', 35000, 'Cat seiv', 'cat seiv.jpeg', '2020-11-03 15:31:51', '2020-11-06 04:05:13'),
(339, 'rolan', '', '', '', 13000, 'Rolan', 'rolan.jpeg', '2020-11-03 15:31:51', '2020-11-06 04:10:06'),
(340, 'bulu rol', '', '', '', 8000, 'Bulu rol kuat dan tahan lama', 'bulu rol.jpeg', '2020-11-03 15:31:51', '2020-11-06 04:10:58'),
(341, 'bak cat', '', '', '', 10000, 'Bak Cat', 'bak cat.jpeg', '2020-11-03 15:35:47', '2020-11-06 04:11:46'),
(342, 'ruping 10cm', '', '10cm', '', 1000, 'Baut roofing 10cm', 'baut roufing.jpeg', '2020-11-03 15:35:47', '2020-11-06 17:16:50'),
(343, 'rouping 7cm', '', '7cm', '', 700, 'Baut roofing 7cm', 'baut roufing.jpeg', '2020-11-03 15:35:47', '2020-11-06 17:16:53'),
(344, 'rouping 5cm', '', '5cm', '', 500, 'Baut roofing 5cm', 'baut roufing.jpeg', '2020-11-03 15:35:47', '2020-11-06 17:16:55'),
(345, 'rouping 3cm', '', '3cm', '', 300, 'Baut roofing 3cm', 'baut roufing.jpeg', '2020-11-03 15:35:47', '2020-11-06 17:16:58'),
(346, 'rouping 2.5cm', '', '2.5cm', '', 250, 'Baut roofing 2.5cm', 'baut roufing.jpeg', '2020-11-03 15:45:45', '2020-11-06 17:17:00'),
(347, 'ruping baja ringan', '', '', '', 200, 'Baut roofing baja ringan', 'ruping baja ringan.jpeg', '2020-11-03 15:45:45', '2020-11-06 04:14:50'),
(348, 'dinabol 12x8cm', '', '12x8cm', '', 2500, 'Dinabol ukuran 12x8cm', 'dinabol.jpeg', '2020-11-03 15:45:45', '2020-11-06 04:21:48'),
(349, 'dinabol 10x80cm', '', '10x80cm', '', 2000, 'Dinabol ukuran 10x80cm', 'dinabol.jpeg', '2020-11-03 15:45:45', '2020-11-06 05:48:08'),
(350, 'dinabol 10x5cm', '', '10x5cm', '', 1300, 'Dinabol ukuran 10x5cm', 'dinabol.jpeg', '2020-11-03 15:45:45', '2020-11-06 05:48:15'),
(351, 'dinabol 8x8cm', '', '8x8cm', '', 1700, 'Dinabol ukuran 8x8cm', 'dinabol.jpeg', '2020-11-03 15:48:04', '2020-11-06 05:48:22'),
(352, 'dinabol 8x65cm', '', '8x65cm', '', 1500, 'Dinabol ukuran 8x65cm', 'dinabol.jpeg', '2020-11-03 15:48:04', '2020-11-06 05:48:28'),
(353, 'dinabol 8x4cm', '', '8x4cm', '', 1000, 'Dinabol ukuran 8x4cm', 'dinabol.jpeg', '2020-11-03 15:48:04', '2020-11-06 05:48:34'),
(354, 'skrup 1kg 7cm', '', '7cm', '', 52000, 'Skrup ukuran 7cm', 'skup.jpeg', '2020-11-03 15:48:04', '2020-11-06 05:49:48'),
(355, 'skrup 1kg 5cm', '', '5cm', '', 52000, 'Skrup ukuran 5cm', 'skup.jpeg', '2020-11-03 15:48:04', '2020-11-06 05:50:11'),
(356, 'skrup 1kg 3cm', '', '3cm', '', 52000, 'Skrup ukuran 3cm', 'skup.jpeg', '2020-11-03 15:50:31', '2020-11-06 05:50:23'),
(357, 'skrup 1kg 2.5cm', '', '2.5cm', '', 52000, 'Skrup ukuran 2.5cm', 'skup.jpeg', '2020-11-03 15:50:31', '2020-11-06 05:50:30'),
(358, 'paku ripet 2 mili', '', '2 mili', '', 190, 'Paku ripet ukuran 2 mili', 'paku ripet.jpeg', '2020-11-03 15:50:31', '2020-11-06 05:51:06'),
(359, 'paku beton 7', '', '', '', 50000, 'Paku Beton 7cm', 'paku beton.jpeg', '2020-11-03 15:50:31', '2020-11-06 05:52:16'),
(360, 'paku beton 5', '', '', '', 50000, 'Paku Beton 5cm', 'paku beton.jpeg', '2020-11-03 15:50:31', '2020-11-06 05:52:22'),
(361, 'hendel pintu besar', '', '', '', 135000, 'Hendel pintu besar kuat dan tahan lama', 'hendel besar.jpeg', '2020-11-03 15:52:05', '2020-11-06 05:53:10'),
(362, 'hendel pintu sedang', '', '', '', 100000, 'Hendel pintu sedang kuat dan tahan lama', 'hendel sedang.jpeg', '2020-11-03 15:52:05', '2020-11-06 05:54:30'),
(363, 'hendel pintu kecil', '', '', '', 70000, 'Hendel pintu kecil kuat dan tahan lama', 'hendel kecil.jpeg', '2020-11-03 15:52:05', '2020-11-06 05:54:20'),
(364, 'kawat nyamuk', '', '', '', 24000, 'Kawat nyamuk kuat dan tahan lama', 'kawat anti nyamuk.jpeg', '2020-11-03 15:52:05', '2020-11-06 06:07:47'),
(365, 'kawat nyamuk koting', '', '', '', 75000, 'Kawat nyamuk coating kuat dan tahan lama', 'kawat nyamuk coating.jpeg', '2020-11-03 15:52:05', '2020-11-06 05:56:00'),
(366, 'kawat nyamuk alumunium', '', '', '', 37000, 'Kawat nyamuk alumunium kuat dan tahan lama', 'kawat anti nyamuk.jpeg', '2020-11-03 15:52:45', '2020-11-06 06:08:04'),
(367, 'kawat nyamuk 0505x120', '', '', '', 52000, 'Kawat nyamuk 0505x120 kuat dan tahan lama', 'expanda 0505.jpeg', '2020-11-03 15:52:45', '2020-11-06 17:03:03'),
(368, 'exspanda 1015', '', '', '', 72000, 'Exspanda 1015 kuat dan tahan lama', 'expandaa 1015.jpeg', '2020-11-03 15:55:18', '2020-11-06 06:13:30'),
(369, 'exspanda 1025', '', '', '', 70000, 'Exspanda 1025 kuat dan tahan lama', 'expanda 1025.jpeg', '2020-11-03 15:55:18', '2020-11-06 06:09:30'),
(370, 'exspanda 0505', '', '', '', 55000, 'Exspanda 0505 kuat dan tahan lama', 'expanda 0505.jpeg', '2020-11-03 15:55:18', '2020-11-06 06:09:55'),
(371, 'singalum 60', '', '', '', 29000, 'Singalum 60 kuat dan tahan lama', 'singalum.jpeg', '2020-11-03 15:55:18', '2020-11-06 06:14:26'),
(372, 'singalum 90', '', '', '', 39000, 'Singalum 90 kuat dan tahan lama', 'singalum.jpeg', '2020-11-03 15:55:18', '2020-11-06 06:14:41'),
(373, 'baut alderon', '', '', '', 60000, 'Baut alderon', 'baut alderon.jpeg', '2020-11-03 15:56:39', '2020-11-06 06:15:12'),
(374, 'meteran 5m', '', '', '', 35000, 'Meteran panjang 5m', 'meteran.jpeg', '2020-11-03 15:56:39', '2020-11-06 06:15:53'),
(375, 'meteran 7.5', '', '', '', 45000, 'Meteran panjang 7.5m', 'meteran.jpeg', '2020-11-03 15:56:39', '2020-11-06 06:16:03'),
(376, 'sikon', '', '', '', 25000, 'Sikon kuat tahan lama', 'sikon.jpeg', '2020-11-03 15:56:39', '2020-11-06 06:16:45'),
(377, 'gembok', '', '', '', 0, 'Gembok', 'gembok.jpeg', '2020-11-03 15:56:39', '2020-11-06 06:17:19'),
(378, 'gun silen', '', '', '', 25000, 'Gun silen ', 'gun silen.jpeg', '2020-11-03 16:04:21', '2020-11-06 06:17:48'),
(379, 'silen', '', '', '', 15000, 'Silen', 'silen.jpeg', '2020-11-03 16:04:21', '2020-11-06 06:18:11'),
(380, 'tapak 35x35', '', '35x35', '', 1500, 'Tapak ukuran 35x35', 'tapak.jpeg', '2020-11-03 16:04:21', '2020-11-06 06:18:38'),
(381, 'tapak 4x4', '', '4x4', '', 1700, 'Tapak ukuran 4x4', 'tapak.jpeg', '2020-11-03 16:04:21', '2020-11-06 06:18:44'),
(382, 'tapak 4x6', '', '4x6', '', 2500, 'Tapak ukuran 4x6', 'tapak.jpeg', '2020-11-03 16:04:21', '2020-11-06 06:18:51'),
(383, 'tapak 4x8', '', '4x8', '', 4000, 'Tapak ukuran 4x8', 'tapak.jpeg', '2020-11-03 16:06:58', '2020-11-06 06:18:57'),
(384, 'engsel 5/8', '', '5/8', '', 8000, '<p>Engsel ukuran 5/8 kuat dan tahan lama</p>', '0ade1b6b65abb11cc57a19a60cb36975.jpeg', '2020-11-03 16:06:58', '2020-11-11 02:18:45'),
(385, 'engsel 7/8', '', '7/8', '', 18000, '<p>Engsel ukuran 7/8 kuat dan tahan lama</p>', '1880ee7431a84eb96c925ae412f0337f.jpeg', '2020-11-03 16:06:58', '2020-11-11 02:18:45'),
(386, 'engsel 1', '', '1"', '', 20000, '<p>Engsel ukuran 1/ kuat dan tahan lama</p>', 'bf341f6b59ceca04adc14872e70ba80d.jpeg', '2020-11-03 16:06:58', '2020-11-11 02:18:45'),
(387, 'roda oren 6', '', '', '', 60000, 'Roda ukuran 6', 'roda oren.jpeg', '2020-11-03 16:06:58', '2020-11-06 06:23:24'),
(388, 'roda oren 7', '', '', '', 70000, 'Roda ukuran 7', 'roda oren.jpeg', '2020-11-03 16:09:02', '2020-11-06 06:23:41'),
(389, 'roda oren 8', '', '', '', 80000, 'Roda ukuran 8', 'roda oren.jpeg', '2020-11-03 16:09:02', '2020-11-06 16:39:20'),
(390, 'roda oren 10', '', '', '', 100000, 'Roda ukuran 10', 'roda oren.jpeg', '2020-11-03 16:09:02', '2020-11-06 06:23:57'),
(391, 'roda super 6', '', '', '', 75000, '<p>Roda super 6</p>', 'dc11be5d7d2c6070e265d125c517a2b4.jpeg', '2020-11-03 16:09:02', '2020-11-11 02:18:45'),
(392, 'roda super 8', '', '', '', 95000, '<p>Roda super 8</p>', 'e74968ed7f6a76ff852fb673a66524e4.jpg', '2020-11-03 16:09:02', '2020-11-11 02:18:45'),
(393, 'roda super 10', '', '', '', 125000, 'Roda super 10', 'roda 10 1.jpeg', '2020-11-03 16:09:02', '2020-11-06 16:46:07'),
(395, 'roda biasa 8', '', '', '', 60000, 'Roda biasa 8', 'f30e13045666252d1a30b32d2009e503.jpg', '2020-11-11 08:52:45', '2020-11-11 02:20:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `testi_id` int(11) NOT NULL,
  `name` varchar(220) NOT NULL,
  `comments` text NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`testi_id`, `name`, `comments`, `image`) VALUES
(1, 'Tresno', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', 'bang jago.jpg'),
(2, 'kartonyono', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'kartonyono.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@tbmandiri.com', '$2y$10$0RVq1dxZ2Jz.J.4.Bb/NK.4uCBlW7CzFV5Jv86pAjLL9tPr7K3zoK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `website`
--

CREATE TABLE `website` (
  `id` int(11) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `title` varchar(156) NOT NULL,
  `name` varchar(120) NOT NULL,
  `description` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone1` varchar(20) NOT NULL,
  `phone2` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `website`
--

INSERT INTO `website` (`id`, `icon`, `title`, `name`, `description`, `address`, `phone1`, `phone2`, `email`) VALUES
(1, '4ee5ad7fd3b1abbbfab7318449ab1e94.png', 'TB Mandiri', 'TB Mandiri Steel', 'Website yang menjual berbagai macam besi berkualitas serta perabotan bangunan lainnya', 'Permata Pamulang Blok G 25 No 10 Tangerang Selatan', '081374624487', '', 'tbmandiri@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`testi_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;
--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `testi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `website`
--
ALTER TABLE `website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
