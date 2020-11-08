-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Nov 2020 pada 09.36
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lapi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `fungsional`
--

CREATE TABLE `fungsional` (
  `id_fungsional` bigint(20) UNSIGNED NOT NULL,
  `nama_fungsional` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fungsional`
--

INSERT INTO `fungsional` (`id_fungsional`, `nama_fungsional`, `created_at`, `updated_at`) VALUES
(1, 'Engineer', NULL, NULL),
(2, 'Administrasi', NULL, NULL),
(3, 'Support', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2020_11_06_153605_create_fungsionals_table', 1),
(3, '2020_11_06_153749_create_strukturals_table', 1),
(4, '2020_11_06_153803_create_pegawais_table', 1),
(5, '2020_11_06_153816_create_presensis_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` bigint(20) UNSIGNED NOT NULL,
  `nip` int(11) DEFAULT NULL,
  `nama_pegawai` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_fungsional` int(11) DEFAULT NULL,
  `id_struktural` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nip`, `nama_pegawai`, `id_fungsional`, `id_struktural`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, '2020-11-08 01:22:11', '2020-11-08 01:22:11'),
(2, NULL, NULL, NULL, NULL, '2020-11-08 01:22:28', '2020-11-08 01:22:28'),
(3, 20010001, 'Fauzi', 1, 1, '2020-11-08 01:24:25', '2020-11-08 01:24:25'),
(4, 20020002, 'Ayi', 2, 1, '2020-11-08 01:24:37', '2020-11-08 01:24:37'),
(5, 20010003, 'Firizki', 1, 1, '2020-11-08 01:24:48', '2020-11-08 01:24:48'),
(6, 20010004, 'Bagas', 1, 2, '2020-11-08 01:25:01', '2020-11-08 01:25:01'),
(7, 20030005, 'Dahlan Setiawan', 3, 1, '2020-11-08 01:25:10', '2020-11-08 01:25:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi`
--

CREATE TABLE `presensi` (
  `id_presensi` bigint(20) UNSIGNED NOT NULL,
  `id_pegawai` int(11) DEFAULT NULL,
  `jenis_presensi` enum('hadir','sakit','izin','alfa') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `presensi`
--

INSERT INTO `presensi` (`id_presensi`, `id_pegawai`, `jenis_presensi`, `keterangan`, `tanggal`, `created_at`, `updated_at`) VALUES
(1, 3, 'hadir', 'sip', '2020-11-08', '2020-11-08 01:33:27', '2020-11-08 01:33:42'),
(2, 4, 'izin', 'mau pulang kampung', '2020-11-08', '2020-11-08 01:34:46', '2020-11-08 01:34:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktural`
--

CREATE TABLE `struktural` (
  `id_struktural` bigint(20) UNSIGNED NOT NULL,
  `nama_struktural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `struktural`
--

INSERT INTO `struktural` (`id_struktural`, `nama_struktural`, `created_at`, `updated_at`) VALUES
(1, 'Manager', NULL, NULL),
(2, 'Team Leader', NULL, NULL),
(3, 'Staff', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `fungsional`
--
ALTER TABLE `fungsional`
  ADD PRIMARY KEY (`id_fungsional`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `presensi`
--
ALTER TABLE `presensi`
  ADD PRIMARY KEY (`id_presensi`);

--
-- Indeks untuk tabel `struktural`
--
ALTER TABLE `struktural`
  ADD PRIMARY KEY (`id_struktural`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `fungsional`
--
ALTER TABLE `fungsional`
  MODIFY `id_fungsional` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `presensi`
--
ALTER TABLE `presensi`
  MODIFY `id_presensi` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `struktural`
--
ALTER TABLE `struktural`
  MODIFY `id_struktural` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
