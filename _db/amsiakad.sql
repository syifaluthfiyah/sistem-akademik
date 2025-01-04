-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Mar 2024 pada 17.50
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amsiakad`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_sekolah`
--

CREATE TABLE `data_sekolah` (
  `id_data_sekolah` bigint(20) UNSIGNED NOT NULL,
  `nama_sekolah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npsn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nss` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_sekolah` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telp_fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_sekolah`
--

INSERT INTO `data_sekolah` (`id_data_sekolah`, `nama_sekolah`, `npsn`, `nss`, `alamat_sekolah`, `telp_fax`, `website`, `email`, `created_at`, `updated_at`) VALUES
(1, 'SMP ANAK BANGSA', '56545454', '56545454', 'Jl. Raya Anak Bangsa Indonesia', '0254898765', 'smpanakbangsa.sch.id', 'info@smpanakbangsa.sch.id', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` bigint(20) UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_lengkap_guru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota_lahir_guru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir_guru` date NOT NULL,
  `alamat_guru` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin_guru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp_guru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rememberToken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mapel_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nip`, `nama_lengkap_guru`, `kota_lahir_guru`, `tanggal_lahir_guru`, `alamat_guru`, `jenis_kelamin_guru`, `agama`, `no_hp_guru`, `email`, `password`, `role`, `rememberToken`, `profile_img`, `created_at`, `updated_at`, `mapel_id`) VALUES
(1, '1984416820', 'Banara Irwan Anggriawan', 'Dumai', '2003-05-18', 'Kpg. Sampangan No. 789, Bogor 18926, Jateng', 'l', 'konghucu', '(+62) 411 6904 4706', 'admin@admin.com', '$2y$10$sXNXZXsMsuYmbHK4xJEDBuNL.WIB7G973R9epG6RDIims5eRT17gq', 'admin', NULL, 'img_guru.jpg', '2023-02-27 07:05:21', '2023-02-27 07:05:21', NULL),
(2, '1991835972', 'Latika Novi Permata', 'Banjarmasin', '2020-09-05', 'Kpg. Dahlia No. 609, Bukittinggi 17752, DKI', 'l', 'kristen', '(+62) 471 6682 7642', 'bancar.wijaya@wahyudin.web.id', '$2y$10$r/d.vgI7R6CJOa97NW8bp.IiYWFnUxGIXUtamh.4hEO834v/Cl976', 'walikelas', NULL, 'img_guru.jpg', '2023-02-27 07:05:21', '2023-02-27 07:05:21', NULL),
(3, '1993584567', 'Lulut Simanjuntak', 'Bekasi', '1991-01-27', 'Ki. Lembong No. 9, Medan 89086, Jateng', 'l', 'islam', '(+62) 830 2997 157', 'utami.yuliana@usamah.go.id', '$2y$10$r/d.vgI7R6CJOa97NW8bp.IiYWFnUxGIXUtamh.4hEO834v/Cl976', 'guru', NULL, 'a552b0adc350b6e852c64d0134840374.jpg', '2023-02-27 07:05:21', '2023-02-27 07:05:21', NULL),
(4, '1983346934', 'Faizah Utami', 'Parepare', '1986-12-28', 'Jr. Bass No. 47, Lhokseumawe 93092, Kaltara', 'l', 'buddha', '(+62) 895 3835 235', 'hendri29@gmail.co.id', '$2y$10$QX2E/kaBTBKMgjBS48WDzenqZA5RLYfT.4KpkpC2SbuJRRIXAeejq', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:21', '2023-02-27 07:05:21', NULL),
(5, '1976122767', 'Lanjar Sihombing', 'Binjai', '1983-04-25', 'Jr. Diponegoro No. 35, Tasikmalaya 32857, Sulsel', 'p', 'kristen', '(+62) 817 2832 6792', 'mansur.hairyanto@gmail.co.id', '$2y$10$z1oPLE2mNG.MB17HBw2qZOIZxuDBlQ.8jtFR5nfnZFs9HYSL2okeq', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:22', '2023-02-27 07:05:22', NULL),
(6, '1982136559', 'Lantar Lulut Mangunsong', 'Manado', '1982-09-02', 'Jr. Kalimalang No. 178, Malang 27426, Sumsel', 'p', 'katolik', '(+62) 467 0314 3271', 'eka.haryanto@halimah.biz', '$2y$10$FkMJaWbZ6cB8uCzPNoBJSeTwC.zaec1CEnGzK2vC0AkB3ARl68Wgy', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:22', '2023-02-27 07:05:22', NULL),
(7, '1983082994', 'Zahra Gina Zulaika S.E.I', 'Madiun', '2005-08-30', 'Jln. Baan No. 393, Mataram 63666, Kaltim', 'l', 'buddha', '026 7382 6997', 'malika24@gmail.co.id', '$2y$10$O4PbnjQJZ01ZV9lSGG/NoOdRyCF2tuFPCVms2UsguVCmZVlF1r8GG', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:22', '2023-02-27 07:05:22', NULL),
(8, '1989327076', 'Siska Winarsih S.E.I', 'Bau-Bau', '2000-11-04', 'Dk. Yos No. 390, Bontang 65437, Sulbar', 'l', 'katolik', '(+62) 260 8783 593', 'dadi.yulianti@iswahyudi.desa.id', '$2y$10$m8.vNAXGcfF/AgQFHcr4Gu0sR/Wwc2AQWWjcMfFH7eykdmrHvAXqK', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:22', '2023-02-27 07:05:22', NULL),
(9, '1982996149', 'Gadang Lazuardi', 'Bontang', '2008-11-10', 'Dk. Pasteur No. 648, Tidore Kepulauan 26089, Kaltara', 'p', 'kristen', '(+62) 594 3234 6745', 'garan59@puspasari.id', '$2y$10$yRuL2WlLj.yl3Civ1b6F4ee6gG0lG47sq2jGMnS3dZACr0wLNUU2m', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:22', '2023-02-27 07:05:22', NULL),
(10, '1990242517', 'Pranawa Maryadi', 'Langsa', '2008-05-20', 'Psr. Kali No. 759, Administrasi Jakarta Utara 17466, Aceh', 'l', 'islam', '0287 5875 098', 'adriansyah.sabrina@sirait.desa.id', '$2y$10$l0zSBJDPGzQ1XEjx04y0LOIRW8q4Myad7bVHtnHnW86La5jPmJkgS', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:22', '2023-02-27 07:05:22', NULL),
(11, '1987471110', 'Dalima Nasyiah', 'Tasikmalaya', '2006-02-17', 'Jln. Halim No. 4, Subulussalam 71552, Sulteng', 'p', 'konghucu', '(+62) 803 0256 0628', 'embuh.aryani@laksita.my.id', '$2y$10$2wy8ko9zOtJ1f/b6cYTcUelRjZNXDEgYZFlPg4dtu4wBfwsL/9egy', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:22', '2023-02-27 07:05:22', NULL),
(12, '1985710905', 'Kiandra Ika Suryatmi', 'Sawahlunto', '2008-05-13', 'Jln. Antapani Lama No. 651, Pangkal Pinang 97779, Maluku', 'l', 'katolik', '0313 4661 3604', 'gilang64@nuraini.name', '$2y$10$F1gcyYH4AZsbVqjC16wWw.XAVRuoc54u9LzKAF5dYcSSgwVkHlyQ6', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:23', '2023-02-27 07:05:23', NULL),
(13, '1990535458', 'Puti Palastri', 'Batam', '2006-06-29', 'Ki. Teuku Umar No. 757, Padangsidempuan 15678, Malut', 'l', 'hindu', '(+62) 322 4042 060', 'michelle84@mulyani.name', '$2y$10$SCLHKYWSR7cqPTIw.GVbDuWGpqsb3h2FHAJ3iQlniASvGJBQtl3fi', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:23', '2023-02-27 07:05:23', NULL),
(14, '1982567673', 'Ganep Cawisono Samosir', 'Tebing Tinggi', '2020-10-11', 'Ds. Salak No. 78, Prabumulih 89127, DIY', 'p', 'kristen', '0810 856 350', 'fathonah84@usada.co.id', '$2y$10$eXA9W6Ab0zOKU1whenZ9TuxhhEAOdr.lTLtUAWzs6PPI2QVaS3U6i', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:23', '2023-02-27 07:05:23', NULL),
(15, '1979401237', 'Septi Wijayanti S.E.I', 'Sawahlunto', '1995-03-20', 'Kpg. Dipenogoro No. 93, Gunungsitoli 41337, Sulsel', 'p', 'hindu', '0471 6000 5370', 'jinawi.lailasari@habibi.my.id', '$2y$10$mvVI8ZFMR9KWLS1ERPLDee4giRdBU6QNpDnZeu5TMD1a3.isqMuI.', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:23', '2023-02-27 07:05:23', NULL),
(16, '1988799230', 'Samsul Putra', 'Jambi', '2002-07-03', 'Jln. Yap Tjwan Bing No. 781, Ternate 15611, Sumut', 'p', 'buddha', '(+62) 758 0665 567', 'permadi.eja@yahoo.co.id', '$2y$10$nwCazUnCPFqjZ4TnxtmWhu0oiwI92yQh8jtkFNPWCvl5kTnxsdLZi', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:23', '2023-02-27 07:05:23', NULL),
(17, '1993145175', 'Warsita Hidayanto', 'Banjar', '1987-05-11', 'Ki. BKR No. 760, Bukittinggi 99604, Sulut', 'l', 'konghucu', '(+62) 342 5316 800', 'winarsih.damar@yahoo.co.id', '$2y$10$g0nCwbDLRWfhYP2OYGM2uuxlEPZHtQVxXtctD5k8b6GBL0xke5vZW', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:23', '2023-02-27 07:05:23', NULL),
(18, '1980623302', 'Usyi Palastri', 'Lubuklinggau', '1976-12-21', 'Ki. Abang No. 602, Parepare 43464, Kalbar', 'l', 'katolik', '(+62) 300 7201 4795', 'permata.laswi@marpaung.go.id', '$2y$10$pnZpH7LrtThM3EJ.nIW6Ve22SvIMcRVSuBqyjPsgPRssiIEyaUa4W', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:23', '2023-02-27 07:05:23', NULL),
(19, '1980347235', 'Mila Pratiwi', 'Subulussalam', '1983-04-03', 'Jln. Padang No. 291, Semarang 61596, Riau', 'l', 'buddha', '020 8885 1279', 'prasasta.prabawa@kuswandari.sch.id', '$2y$10$38lx.ufq3ok46E7JUaPBCO69rEz/ZGry.pg8nwA6X0.whFVQrvhBG', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:23', '2023-02-27 07:05:23', NULL),
(20, '1994636170', 'Balidin Luluh Gunawan S.Ked', 'Pangkal Pinang', '2000-06-01', 'Gg. Ikan No. 239, Pekanbaru 16527, Kaltim', 'p', 'hindu', '(+62) 631 6523 2756', 'wulandari.ophelia@yahoo.co.id', '$2y$10$AsRDRZd.CrvzuPIpxLoJLupASTBpRkHdFDyTb806ZOTqUU4B67SJW', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:24', '2023-02-27 07:05:24', NULL),
(21, '1975620773', 'Raisa Purwanti', 'Pariaman', '2018-12-17', 'Psr. Bata Putih No. 663, Tidore Kepulauan 17810, DIY', 'p', 'hindu', '(+62) 366 2867 503', 'oliva.namaga@pudjiastuti.go.id', '$2y$10$R0TpeCb8vVsnb2e/OTc8Rulw98SCaEyl2snGqsm0LajtwES6fQmyi', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:24', '2023-02-27 07:05:24', NULL),
(22, '1975393399', 'Ika Vivi Mulyani', 'Kendari', '1978-07-04', 'Jr. Jambu No. 754, Mataram 17584, Malut', 'l', 'buddha', '0459 2634 832', 'bagas.sinaga@yahoo.com', '$2y$10$ZyuVv17HflaxeTHF6FLYmuNcc2wxtwNhhRpqewh2gsGPCRKEGZgHy', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:24', '2023-02-27 07:05:24', NULL),
(23, '1979903580', 'Agus Jailani M.TI.', 'Jayapura', '2019-06-10', 'Psr. Babakan No. 446, Mojokerto 77404, Pabar', 'l', 'buddha', '0883 6992 720', 'putra.rahayu@gmail.co.id', '$2y$10$gcO5v26x/5S/wSwqi/n.BuAt7VSXKRl1pKr6HlnBQDJjVQy3LEf7y', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:24', '2023-02-27 07:05:24', NULL),
(24, '1987846063', 'Rafid Budiman', 'Probolinggo', '2002-11-05', 'Jr. Moch. Yamin No. 731, Tanjung Pinang 53698, Kalsel', 'p', 'buddha', '021 0030 8942', 'suryono.wirda@yahoo.co.id', '$2y$10$jVuuYfg8vIxwxupnH5IQKuxLfeMzfKmT7IpjM3BCAuaKTLaU2RKQa', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:24', '2023-02-27 07:05:24', NULL),
(25, '1990156095', 'Laras Namaga', 'Kupang', '2013-07-17', 'Ki. Cut Nyak Dien No. 13, Pangkal Pinang 41352, Kaltim', 'p', 'islam', '(+62) 309 2561 195', 'prastuti.gaduh@yahoo.com', '$2y$10$WHpnEL4HbZj5SA2yUyfCfuD8oC/lDAnpKhs31fuQud11ZZYAJzlN.', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:24', '2023-02-27 07:05:24', NULL),
(26, '1991492019', 'Taufan Soleh Dabukke', 'Balikpapan', '1979-06-22', 'Ki. Yos Sudarso No. 303, Tomohon 67234, Pabar', 'p', 'buddha', '0801 605 869', 'dalimin.winarsih@gmail.co.id', '$2y$10$mj1fibQn/7gUH3rSdDoXUeB98L8QSZxrqObY4RDEm/mc5wuksODiS', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:24', '2023-02-27 07:05:24', NULL),
(27, '1979637798', 'Lintang Permata', 'Pekanbaru', '2019-10-16', 'Gg. Setia Budi No. 183, Bukittinggi 64016, Aceh', 'l', 'konghucu', '(+62) 815 8592 9101', 'fitriani.prasasta@yahoo.co.id', '$2y$10$92Wm82Ktl3GVyuQLZhLhQ.Ah/W2M2OADC7Zu6apdZTDhn8U9HgSQ2', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:25', '2023-02-27 07:05:25', NULL),
(28, '1975323481', 'Erik Nainggolan', 'Pekanbaru', '2011-01-12', 'Jr. Banceng Pondok No. 124, Kediri 84290, Lampung', 'p', 'islam', '0598 7154 207', 'lestari.emil@prabowo.name', '$2y$10$kw/Q9gwXmBQ6xnVGhgGxUeElmqx1OKfsbnhvVzPdx5Q/0yRnQ0Nou', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:25', '2023-02-27 07:05:25', NULL),
(29, '1976904511', 'Marsito Lulut Maheswara S.Pd', 'Magelang', '2008-11-04', 'Jln. M.T. Haryono No. 621, Solok 18090, Babel', 'l', 'buddha', '0848 0247 895', 'wpurwanti@yahoo.co.id', '$2y$10$ePFH/tjrSUFOs4OePBtdg.kXQyGDMLXwvOkKmQjHsRnTuk.4yrrKO', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:25', '2023-02-27 07:05:25', NULL),
(30, '1982109175', 'Tania Yolanda', 'Banjarmasin', '2003-03-05', 'Dk. Ir. H. Juanda No. 398, Administrasi Jakarta Timur 18229, Sumut', 'p', 'kristen', '(+62) 879 200 676', 'sitorus.lidya@permadi.info', '$2y$10$5sDXL5coo5z4vUdObW.FEe2aosKaMrl23nGVuUQY8vWxC04st1i6q', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:25', '2023-02-27 07:05:25', NULL),
(31, '1993329238', 'Jamil Saragih', 'Cirebon', '1975-03-22', 'Kpg. Gambang No. 24, Cilegon 42745, Kalbar', 'p', 'konghucu', '(+62) 742 8055 764', 'salimah09@mayasari.co.id', '$2y$10$83jqntBlUh8gQIVrXz6ROOGZfQK/UVBiB8QXbWXgT3eFRHkx0NWLW', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:25', '2023-02-27 07:05:25', NULL),
(32, '1994151832', 'Prayitna Waskita S.T.', 'Bengkulu', '1983-09-30', 'Jr. Ters. Kiaracondong No. 931, Bandar Lampung 49862, DIY', 'l', 'hindu', '0316 5972 078', 'cakrawangsa.wijaya@yahoo.com', '$2y$10$t3qos6ZvudnYB/j/vETFcuRcvlUiXTx5HFwycnf43Z1CwMpM/tqCO', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:25', '2023-02-27 07:05:25', NULL),
(33, '1975768982', 'Carla Pratiwi', 'Mojokerto', '2016-01-03', 'Jr. Sutarjo No. 604, Probolinggo 41554, Kalsel', 'p', 'kristen', '(+62) 594 5430 0462', 'ypertiwi@gmail.co.id', '$2y$10$E0QgpdxG./8smgKzYyjJVuCMmtszX68N2qNTjCdXdJrS87.Crbu42', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:25', '2023-02-27 07:05:25', NULL),
(34, '1978238233', 'Agnes Titin Suryatmi M.Farm', 'Singkawang', '1991-08-01', 'Kpg. M.T. Haryono No. 6, Pematangsiantar 33011, Sulbar', 'p', 'buddha', '(+62) 21 6002 870', 'permadi.arta@gmail.com', '$2y$10$xhUuay3Wgoz4yKaGIn7lju.fNptCVFynTyyEUGK9kMLkuXdlTAD/C', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:25', '2023-02-27 07:05:25', NULL),
(35, '1994868484', 'Okta Usman Marbun', 'Padang', '2010-12-20', 'Psr. Elang No. 700, Tebing Tinggi 40090, NTB', 'p', 'katolik', '0755 8874 7675', 'zsimanjuntak@gmail.com', '$2y$10$xB9y5S7qK.boOQXE8D3xsOTmG..IrkSdcsjgOwb.JGa/P2ot82ud6', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:26', '2023-02-27 07:05:26', NULL),
(36, '1976995852', 'Salwa Rahmi Wijayanti S.Farm', 'Tangerang', '1984-05-19', 'Kpg. Sudiarto No. 439, Pekanbaru 55788, Sulut', 'p', 'buddha', '(+62) 255 9314 3217', 'lasmanto87@manullang.web.id', '$2y$10$zIv4/Y58zI3vFO.2hELxeuo1Y1bANQUzhk6a6/jQA97fu9R1Ec8r2', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:26', '2023-02-27 07:05:26', NULL),
(37, '1979560484', 'Ulva Hariyah', 'Gunungsitoli', '1978-07-23', 'Jr. Bakhita No. 996, Singkawang 79270, Kalteng', 'l', 'islam', '0405 4659 0659', 'cahyo.fujiati@anggriawan.desa.id', '$2y$10$mX6BP2tKDB868rFrYBIGsOR/7AqkFE5u8LjC1tTuwhT1VdzhhKf2K', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:26', '2023-02-27 07:05:26', NULL),
(38, '1981180858', 'Tasdik Maheswara', 'Ambon', '2010-05-24', 'Ki. Abdul Muis No. 498, Balikpapan 63024, Banten', 'p', 'konghucu', '0879 5829 337', 'ihutapea@permata.name', '$2y$10$.KpcZ3BN.0z./4tcLUQk6upGOhf8wUlyxlsyPVKIUJ2rGOea0A5b.', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:26', '2023-02-27 07:05:26', NULL),
(39, '1983186758', 'Jaswadi Danu Manullang', 'Administrasi Jakarta Barat', '1981-12-05', 'Jln. Baya Kali Bungur No. 602, Bukittinggi 42839, Sulsel', 'l', 'konghucu', '(+62) 414 8531 6403', 'utami.gamblang@zulaika.name', '$2y$10$niLDPK.lwcsPLqD1uTTkNOwmTaR9K0Qe9cyClM7FT2qR50Y143PxS', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:26', '2023-02-27 07:05:26', NULL),
(40, '1977246718', 'Chelsea Palastri', 'Langsa', '2007-06-26', 'Jr. Jend. A. Yani No. 131, Bandar Lampung 59206, NTB', 'l', 'islam', '(+62) 233 9884 580', 'setya17@uyainah.or.id', '$2y$10$Z4gQuAmtM5RVa0XO3OcD2ug7FkYcMcyeWH179nReojsTwiiS6sbxW', 'guru', NULL, 'img_guru.jpg', '2023-02-27 07:05:27', '2023-02-27 07:05:27', NULL),
(41, '1010101010', 'ADMIN', 'Banyuwangi', '1997-01-01', 'Banyuwangi', 'l', 'islam', '081234567890', 'admin@mail.com', '$2y$10$/zp3g9nEax7M6Os.x1M3U.oADv0086jiB/lgHB9jqZEIgL6hOqP4W', 'admin', NULL, 'img_guru.jpg', '2023-02-27 07:05:32', '2023-02-27 07:05:32', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `id_hari` bigint(20) UNSIGNED NOT NULL,
  `nama_hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`id_hari`, `nama_hari`, `created_at`, `updated_at`) VALUES
(1, 'senin', '2023-02-27 06:56:28', '2023-02-27 06:56:28'),
(2, 'selasa', '2023-02-27 06:56:28', '2023-02-27 06:56:28'),
(3, 'rabu', '2023-02-27 06:56:28', '2023-02-27 06:56:28'),
(4, 'kamis', '2023-02-27 06:56:28', '2023-02-27 06:56:28'),
(5, 'jumat', '2023-02-27 06:56:28', '2023-02-27 06:56:28'),
(6, 'sabtu', '2023-02-27 06:56:28', '2023-02-27 06:56:28'),
(7, 'minggu', '2023-02-27 06:56:29', '2023-02-27 06:56:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_pelajaran`
--

CREATE TABLE `jadwal_pelajaran` (
  `id_jadwal` bigint(20) UNSIGNED NOT NULL,
  `mapel_id` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `hari_id` bigint(20) UNSIGNED NOT NULL,
  `jam_mapel_id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `tahun_ajaran_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal_pelajaran`
--

INSERT INTO `jadwal_pelajaran` (`id_jadwal`, `mapel_id`, `guru_id`, `hari_id`, `jam_mapel_id`, `kelas_id`, `semester_id`, `tahun_ajaran_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, '2023-02-27 07:05:31', '2023-02-27 07:05:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam_mapel`
--

CREATE TABLE `jam_mapel` (
  `id_jam_mapel` bigint(20) UNSIGNED NOT NULL,
  `jam_mulai` time NOT NULL,
  `jam_akhir` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jam_mapel`
--

INSERT INTO `jam_mapel` (`id_jam_mapel`, `jam_mulai`, `jam_akhir`, `created_at`, `updated_at`) VALUES
(1, '08:00:00', '08:40:00', '2023-02-27 07:05:27', '2024-03-27 16:36:45'),
(2, '08:40:00', '09:20:00', '2023-02-27 07:05:27', '2023-02-27 07:05:27'),
(3, '09:20:00', '10:00:00', '2023-02-27 07:05:27', '2023-02-27 07:05:27'),
(4, '10:30:00', '11:10:00', '2023-02-27 07:05:27', '2023-02-27 07:05:27'),
(5, '11:10:00', '11:50:00', '2023-02-27 07:05:27', '2023-02-27 07:05:27'),
(6, '11:50:00', '12:30:00', '2023-02-27 07:05:27', '2023-02-27 07:05:27'),
(7, '12:30:00', '13:10:00', '2023-02-27 07:05:28', '2023-02-27 07:05:28'),
(8, '13:10:00', '13:50:00', '2023-02-27 07:05:28', '2023-02-27 07:05:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` bigint(20) UNSIGNED NOT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wali_kls_id` bigint(20) UNSIGNED NOT NULL,
  `tahun_ajaran_id` bigint(20) UNSIGNED NOT NULL,
  `semester_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `wali_kls_id`, `tahun_ajaran_id`, `semester_id`, `created_at`, `updated_at`) VALUES
(1, 'VIII C', 3, 1, 2, '2023-02-27 07:05:29', '2023-02-27 07:05:29'),
(2, 'VIII A', 3, 1, 1, '2023-02-27 07:05:29', '2023-02-27 07:05:29'),
(3, 'IX A', 1, 3, 3, '2023-02-27 07:05:30', '2023-02-27 07:05:30'),
(4, 'IX B', 2, 2, 4, '2023-02-27 07:05:30', '2023-02-27 07:05:30'),
(5, 'VIII B', 1, 3, 3, '2023-02-27 07:05:30', '2023-02-27 07:05:30'),
(6, 'VII C', 8, 3, 5, '2023-02-27 07:05:30', '2023-02-27 07:05:30'),
(7, 'IX A', 1, 1, 5, '2023-02-27 07:05:30', '2023-02-27 07:05:30'),
(8, 'IX C', 3, 3, 4, '2023-02-27 07:05:30', '2023-02-27 07:05:30'),
(9, 'IX C', 2, 3, 4, '2023-02-27 07:05:30', '2023-02-27 07:05:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` bigint(20) UNSIGNED NOT NULL,
  `nama_mapel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama_mapel`, `created_at`, `updated_at`) VALUES
(1, 'MTK', '2023-02-27 07:05:28', '2023-02-27 07:05:28'),
(2, 'IPA', '2023-02-27 07:05:28', '2023-02-27 07:05:28'),
(3, 'BAHASA INDONESIA', '2023-02-27 07:05:28', '2023-02-27 07:05:28'),
(4, 'BAHASA INGGRIS', '2023-02-27 07:05:28', '2023-02-27 07:05:28'),
(5, 'IPS', '2023-02-27 07:05:28', '2023-02-27 07:05:28'),
(6, 'PPKN', '2023-02-27 07:05:28', '2023-02-27 07:05:28'),
(7, 'PAI', '2023-02-27 07:05:28', '2023-02-27 07:05:28'),
(8, 'SBK', '2023-02-27 07:05:28', '2023-02-27 07:05:28'),
(9, 'MULOK', '2023-02-27 07:05:28', '2023-02-27 07:05:28');

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
(1, '2021_06_15_131834_create_semesters_table', 1),
(2, '2021_06_15_180240_create_gurus_table', 1),
(3, '2021_06_15_180245_create_tahun_ajarans_table', 1),
(4, '2021_06_16_131614_create_wali_kelas_table', 1),
(5, '2021_06_16_131852_create_kelas_table', 1),
(6, '2021_06_16_133240_create_jam_mapels_table', 1),
(7, '2021_06_16_133323_create_mapels_table', 1),
(8, '2021_06_16_175343_create_haris_table', 1),
(9, '2021_06_16_181205_create_siswas_table', 1),
(10, '2021_06_16_181929_create_jadwal_pelajarans_table', 1),
(11, '2021_06_23_113315_create_data_sekolahs_table', 1),
(12, '2021_07_09_105325_create_s_p_p_s_table', 1),
(13, '2021_07_09_105911_create_pembayarans_table', 1),
(14, '2021_08_01_142216_add_mapel_id_field_guru', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `bulan_dibayar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spp_id` bigint(20) UNSIGNED NOT NULL,
  `id_petugas` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `nisn`, `tanggal_bayar`, `bulan_dibayar`, `keterangan`, `spp_id`, `id_petugas`, `created_at`, `updated_at`) VALUES
(1, '2005959383', '2024-03-27', 'Januari', 'Lunas', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `semester`
--

CREATE TABLE `semester` (
  `id_semester` bigint(20) UNSIGNED NOT NULL,
  `nama_semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `semester`
--

INSERT INTO `semester` (`id_semester`, `nama_semester`, `created_at`, `updated_at`) VALUES
(1, 'Semester 1', '2023-02-27 07:05:27', '2023-02-27 07:05:27'),
(2, 'Semester 2', '2023-02-27 07:05:27', '2023-02-27 07:05:27'),
(3, 'Semester 3', '2023-02-27 07:05:27', '2023-02-27 07:05:27'),
(4, 'Semester 4', '2023-02-27 07:05:27', '2023-02-27 07:05:27'),
(5, 'Semester 5', '2023-02-27 07:05:27', '2023-02-27 07:05:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` bigint(20) UNSIGNED NOT NULL,
  `nisn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kota_lahir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama_siswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_dalam_keluarga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anak_ke` int(11) NOT NULL,
  `alamat_siswa` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp_siswa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_ortu` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp_ortu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_ayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pekerjaan_ibu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat_wali` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan_wali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `tahun_angkatan_id` bigint(20) UNSIGNED NOT NULL,
  `profile_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nisn`, `nis`, `nama_lengkap`, `kota_lahir`, `tanggal_lahir`, `agama_siswa`, `jenis_kelamin`, `status_dalam_keluarga`, `anak_ke`, `alamat_siswa`, `no_hp_siswa`, `nama_ayah`, `nama_ibu`, `alamat_ortu`, `no_hp_ortu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `nama_wali`, `alamat_wali`, `no_hp_wali`, `pekerjaan_wali`, `kelas_id`, `tahun_angkatan_id`, `profile_img`, `created_at`, `updated_at`) VALUES
(1, '2005959383', '3676', 'Siska Hani Haryanti', 'Surabaya', '2014-08-18', 'buddha', 'l', 'anak', 5, 'Kpg. Lada No. 912, Binjai 45970, Pabar', '(+62) 486 4399 3549', 'Yulia Nasyidah', 'Galih Prabowo', 'Kpg. Bara Tambar No. 236, Batam 32967, Lampung', '0496 8791 094', 'rerum', 'consectetur', 'Maryadi Hardiansyah M.M.', 'Jr. Kusmanto No. 607, Lhokseumawe 64819, Sumbar', '0533 0815 4796', NULL, 5, 3, 'img_siswa.jpg', '2023-02-27 07:05:30', '2023-02-27 07:05:30'),
(2, '2004808254', '3384', 'Samiah Riyanti', 'Bandung', '1995-10-27', 'buddha', 'l', 'anak', 3, 'Dk. Lumban Tobing No. 459, Tanjung Pinang 11706, NTT', '(+62) 308 2551 7073', 'Amelia Lailasari', 'Hartaka Salahudin', 'Psr. Bakit  No. 364, Ternate 55372, Aceh', '0472 9844 777', 'excepturi', 'maiores', 'Sabar Prasasta', 'Psr. Gotong Royong No. 967, Denpasar 90853, Jabar', '0301 9590 658', NULL, 3, 2, 'img_siswa.jpg', '2023-02-27 07:05:30', '2023-02-27 07:05:30'),
(3, '2004904827', '2406', 'Samiah Elvina Palastri', 'Blitar', '1983-11-18', 'buddha', 'l', 'anak', 1, 'Ds. Pahlawan No. 372, Salatiga 49992, Sulteng', '0989 8422 9372', 'Belinda Nabila Utami', 'Margana Anggriawan', 'Dk. Pasirkoja No. 334, Tegal 94222, Sumbar', '(+62) 733 9987 4398', 'exercitationem', 'earum', 'Silvia Namaga', 'Gg. Uluwatu No. 698, Tanjungbalai 79134, Aceh', '(+62) 317 9663 6248', NULL, 8, 3, 'img_siswa.jpg', '2023-02-27 07:05:30', '2023-02-27 07:05:30'),
(4, '2004220218', '2759', 'Eva Olivia Mandasari M.Ak', 'Depok', '1985-05-12', 'buddha', 'l', 'anak', 2, 'Psr. Ciwastra No. 358, Bukittinggi 55269, Jabar', '(+62) 728 5361 245', 'Jasmin Anggraini S.H.', 'Agnes Puspasari', 'Ki. Acordion No. 101, Pontianak 56566, Sultra', '0352 7203 246', 'eum', 'illo', 'Paiman Jail Budiyanto S.T.', 'Ki. Lumban Tobing No. 949, Bitung 65173, Jabar', '0506 3018 8087', NULL, 6, 2, 'img_siswa.jpg', '2023-02-27 07:05:30', '2023-02-27 07:05:30'),
(5, '2004201192', '3475', 'Paiman Harimurti Tarihoran S.Ked', 'Semarang', '1985-01-10', 'buddha', 'l', 'anak', 2, 'Psr. Astana Anyar No. 929, Pangkal Pinang 23188, Kaltara', '023 0059 6824', 'Najib Himawan Napitupulu', 'Gawati Yuniar', 'Gg. Hang No. 558, Bima 36488, Gorontalo', '0445 7611 300', 'voluptatem', 'qui', 'Ade Zulaika', 'Kpg. Kalimalang No. 805, Kotamobagu 19327, Sulbar', '0727 9534 306', NULL, 9, 1, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(6, '2003166288', '2359', 'Adika Gunarto', 'Sabang', '2008-10-15', 'buddha', 'l', 'anak', 2, 'Psr. Bagonwoto  No. 40, Sibolga 64684, NTB', '0630 8727 0765', 'Ade Safitri S.T.', 'Sadina Widiastuti', 'Gg. K.H. Maskur No. 892, Malang 69218, Kepri', '(+62) 230 4652 4188', 'ipsa', 'velit', 'Viktor Panji Wacana', 'Jln. Daan No. 672, Pontianak 41962, Bengkulu', '0688 6042 050', NULL, 7, 1, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(7, '2004812206', '3942', 'Iriana Yuniar M.Ak', 'Gorontalo', '1998-06-16', 'buddha', 'l', 'anak', 3, 'Jln. Sutan Syahrir No. 104, Cilegon 90027, Jambi', '025 1127 8428', 'Wani Wijayanti', 'Nurul Icha Puspita', 'Kpg. Kartini No. 541, Tebing Tinggi 61534, Bali', '(+62) 418 1795 7230', 'voluptas', 'voluptates', 'Patricia Maryati', 'Jr. Dipatiukur No. 355, Kupang 20621, Jabar', '(+62) 629 1073 517', NULL, 4, 1, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(8, '2004910005', '3713', 'Elvin Santoso S.Farm', 'Yogyakarta', '2010-10-06', 'buddha', 'l', 'anak', 5, 'Jr. Achmad Yani No. 101, Tomohon 29855, Kaltara', '0781 0850 772', 'Kawaya Siregar S.Gz', 'Margana Jailani', 'Gg. Gading No. 519, Sabang 87759, Bali', '(+62) 706 6377 3943', 'iste', 'laudantium', 'Shakila Sudiati', 'Psr. Arifin No. 94, Padang 53558, Sumsel', '(+62) 966 1511 8294', NULL, 3, 3, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(9, '2005917322', '3355', 'Belinda Cinthia Agustina', 'Tasikmalaya', '1986-01-21', 'buddha', 'l', 'anak', 4, 'Psr. Baranang No. 699, Kotamobagu 16148, Jatim', '0537 9379 821', 'Cinta Sudiati', 'Sadina Rahmawati', 'Kpg. Baranang Siang Indah No. 4, Banjarbaru 82781, Maluku', '0462 4409 405', 'in', 'autem', 'Karen Andriani M.Farm', 'Kpg. Bagis Utama No. 703, Gorontalo 18316, Malut', '0819 2995 5343', NULL, 4, 3, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(10, '2005451770', '2581', 'Sadina Permata M.Ak', 'Palopo', '2004-06-23', 'buddha', 'l', 'anak', 5, 'Psr. Achmad No. 11, Samarinda 48446, Jabar', '0401 2762 2314', 'Diana Queen Purnawati S.H.', 'Gabriella Yulianti', 'Gg. Wahidin Sudirohusodo No. 714, Surakarta 75939, Sulbar', '0773 5969 246', 'ut', 'accusantium', 'Oni Anggraini S.Gz', 'Ki. Bayam No. 223, Probolinggo 75829, Kalbar', '0262 8944 6521', NULL, 9, 3, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(11, '2005537423', '4120', 'Prasetyo Maheswara', 'Cilegon', '2012-07-02', 'buddha', 'l', 'anak', 4, 'Psr. Salak No. 765, Kupang 33152, DKI', '(+62) 855 7505 111', 'Usyi Sudiati', 'Hamzah Makara Salahudin', 'Dk. Bacang No. 280, Administrasi Jakarta Utara 12072, Riau', '0538 8768 016', 'explicabo', 'corrupti', 'Adikara Maheswara', 'Dk. Otto No. 438, Pagar Alam 41272, NTB', '(+62) 498 6104 142', NULL, 4, 1, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(12, '2004279628', '3048', 'Dadi Latupono', 'Metro', '1972-07-16', 'buddha', 'l', 'anak', 5, 'Ki. Rajawali Barat No. 668, Parepare 24354, Lampung', '0386 7033 747', 'Suci Febi Fujiati M.TI.', 'Vanesa Hartati', 'Psr. Bakti No. 357, Tarakan 70795, Kalbar', '0880 5351 136', 'autem', 'ipsam', 'Yono Kuswoyo', 'Gg. Yap Tjwan Bing No. 593, Mataram 64354, Jatim', '(+62) 756 2773 4123', NULL, 7, 2, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(13, '2003968438', '4640', 'Puti Samiah Wulandari S.Psi', 'Gorontalo', '1993-11-01', 'buddha', 'l', 'anak', 5, 'Ki. Adisucipto No. 950, Bau-Bau 72680, Kalsel', '0229 6598 9934', 'Hasan Pangestu', 'Purwadi Lulut Wahyudin', 'Psr. Ketandan No. 250, Tanjungbalai 98371, Aceh', '(+62) 674 6902 957', 'unde', 'consequatur', 'Xanana Lazuardi S.H.', 'Dk. Ekonomi No. 629, Surakarta 82387, Kaltim', '0837 873 455', NULL, 5, 1, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(14, '2003773715', '4803', 'Pangeran Wardaya Lazuardi', 'Bima', '2014-11-24', 'buddha', 'l', 'anak', 1, 'Jr. K.H. Maskur No. 310, Tidore Kepulauan 98152, Kepri', '0326 5262 552', 'Icha Ratna Halimah', 'Kawaca Ardianto', 'Ki. Dago No. 453, Palopo 42322, Kalsel', '0779 2220 3813', 'modi', 'ut', 'Betania Mila Yuniar', 'Dk. Yogyakarta No. 509, Tanjungbalai 25099, Riau', '0744 9519 557', NULL, 4, 2, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(15, '2004199227', '2333', 'Titin Pratiwi', 'Kediri', '1995-11-27', 'buddha', 'l', 'anak', 5, 'Gg. Wahidin Sudirohusodo No. 744, Pematangsiantar 63162, Kalteng', '(+62) 210 1992 0202', 'Kania Puspita S.Pd', 'Jamalia Oktaviani S.IP', 'Ds. Yap Tjwan Bing No. 631, Prabumulih 13452, Sulteng', '(+62) 829 2105 153', 'aut', 'cupiditate', 'Adiarja Ramadan', 'Kpg. Salak No. 632, Bandar Lampung 27212, Kalteng', '027 4979 059', NULL, 9, 1, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(16, '2005861156', '3972', 'Ciaobella Jasmin Astuti S.I.Kom', 'Bengkulu', '1988-09-01', 'buddha', 'l', 'anak', 4, 'Psr. M.T. Haryono No. 750, Administrasi Jakarta Pusat 31998, Jambi', '(+62) 817 315 884', 'Jane Raisa Mayasari', 'Restu Maria Agustina S.Psi', 'Jr. Tangkuban Perahu No. 415, Denpasar 62567, DKI', '(+62) 299 2822 537', 'sit', 'adipisci', 'Daru Hutagalung S.Sos', 'Kpg. Kartini No. 187, Tomohon 56128, Sulteng', '(+62) 973 4979 025', NULL, 3, 1, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(17, '2003313294', '2680', 'Nilam Maryati', 'Sawahlunto', '1970-09-06', 'buddha', 'l', 'anak', 1, 'Kpg. Bacang No. 604, Magelang 59861, Jateng', '0503 7325 022', 'Mahesa Hutagalung', 'Shania Ami Nasyiah S.Gz', 'Gg. Setiabudhi No. 895, Madiun 51690, Papua', '0804 8662 788', 'provident', 'ut', 'Vero Thamrin', 'Ki. Ronggowarsito No. 628, Bandung 71069, Kalsel', '(+62) 603 6064 464', NULL, 5, 1, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(18, '2004558245', '2565', 'Marsudi Hardiansyah S.Ked', 'Mojokerto', '2017-05-14', 'buddha', 'l', 'anak', 2, 'Dk. Daan No. 920, Mojokerto 21322, DIY', '(+62) 928 4896 154', 'Ifa Jane Sudiati', 'Adhiarja Januar', 'Jr. Setiabudhi No. 429, Madiun 45688, Sulteng', '(+62) 297 2178 1007', 'odio', 'et', 'Jarwi Megantara', 'Psr. Bazuka Raya No. 966, Bandung 93261, Banten', '(+62) 649 1963 6352', NULL, 1, 1, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(19, '2005876345', '3159', 'Harsana Nyana Mangunsong S.Kom', 'Manado', '2020-12-01', 'buddha', 'l', 'anak', 4, 'Ki. Casablanca No. 872, Padangsidempuan 38679, Malut', '0801 0625 688', 'Lalita Aurora Yuniar', 'Enteng Nugroho', 'Gg. Tambun No. 636, Pekanbaru 25292, Banten', '0268 4066 492', 'est', 'eius', 'Salsabila Melinda Hastuti S.Kom', 'Ki. Wora Wari No. 323, Sungai Penuh 56882, Aceh', '(+62) 434 6860 521', NULL, 8, 2, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31'),
(20, '2003614287', '4623', 'Nyoman Megantara', 'Cilegon', '1982-03-02', 'buddha', 'l', 'anak', 2, 'Dk. Radio No. 138, Banjarbaru 37136, Sumsel', '(+62) 348 0092 874', 'Mitra Winarno', 'Estiawan Banawa Ardianto', 'Ds. Ters. Kiaracondong No. 982, Pangkal Pinang 53168, Aceh', '0831 1454 730', 'est', 'deserunt', 'Jane Yulianti S.T.', 'Dk. Bahagia  No. 903, Batam 72451, Babel', '(+62) 916 4169 7843', NULL, 2, 1, 'img_siswa.jpg', '2023-02-27 07:05:31', '2023-02-27 07:05:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `id_spp` bigint(20) UNSIGNED NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`, `created_at`, `updated_at`) VALUES
(1, '2024', 200000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id_tahun_ajaran` bigint(20) UNSIGNED NOT NULL,
  `nama_tahun_ajaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id_tahun_ajaran`, `nama_tahun_ajaran`, `created_at`, `updated_at`) VALUES
(1, '2021/2022', '2023-02-27 07:05:27', '2023-02-27 07:05:27'),
(2, '2022/2023', '2023-02-27 07:05:27', '2023-02-27 07:05:27'),
(3, '2023/2024', '2023-02-27 07:05:27', '2023-02-27 07:05:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id_wali_kelas` bigint(20) UNSIGNED NOT NULL,
  `guru_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wali_kelas`
--

INSERT INTO `wali_kelas` (`id_wali_kelas`, `guru_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-02-27 07:05:28', '2024-03-27 16:42:43'),
(2, 2, '2023-02-27 07:05:29', '2023-02-27 07:05:29'),
(3, 3, '2023-02-27 07:05:29', '2023-02-27 07:05:29'),
(4, 4, '2023-02-27 07:05:29', '2023-02-27 07:05:29'),
(5, 5, '2023-02-27 07:05:29', '2023-02-27 07:05:29'),
(6, 6, '2023-02-27 07:05:29', '2023-02-27 07:05:29'),
(7, 7, '2023-02-27 07:05:29', '2023-02-27 07:05:29'),
(8, 8, '2023-02-27 07:05:29', '2023-02-27 07:05:29'),
(9, 9, '2023-02-27 07:05:29', '2023-02-27 07:05:29');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_sekolah`
--
ALTER TABLE `data_sekolah`
  ADD PRIMARY KEY (`id_data_sekolah`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD UNIQUE KEY `guru_email_unique` (`email`),
  ADD UNIQUE KEY `guru_nip_unique` (`nip`),
  ADD KEY `guru_mapel_id_foreign` (`mapel_id`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id_hari`);

--
-- Indeks untuk tabel `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `jadwal_pelajaran_mapel_id_foreign` (`mapel_id`),
  ADD KEY `jadwal_pelajaran_guru_id_foreign` (`guru_id`),
  ADD KEY `jadwal_pelajaran_hari_id_foreign` (`hari_id`),
  ADD KEY `jadwal_pelajaran_jam_mapel_id_foreign` (`jam_mapel_id`),
  ADD KEY `jadwal_pelajaran_kelas_id_foreign` (`kelas_id`),
  ADD KEY `jadwal_pelajaran_semester_id_foreign` (`semester_id`),
  ADD KEY `jadwal_pelajaran_tahun_ajaran_id_foreign` (`tahun_ajaran_id`);

--
-- Indeks untuk tabel `jam_mapel`
--
ALTER TABLE `jam_mapel`
  ADD PRIMARY KEY (`id_jam_mapel`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `kelas_wali_kls_id_foreign` (`wali_kls_id`),
  ADD KEY `kelas_tahun_ajaran_id_foreign` (`tahun_ajaran_id`),
  ADD KEY `kelas_semester_id_foreign` (`semester_id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `pembayaran_spp_id_foreign` (`spp_id`),
  ADD KEY `pembayaran_id_petugas_foreign` (`id_petugas`);

--
-- Indeks untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id_semester`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD UNIQUE KEY `siswa_nisn_unique` (`nisn`),
  ADD UNIQUE KEY `siswa_nis_unique` (`nis`),
  ADD KEY `siswa_kelas_id_foreign` (`kelas_id`),
  ADD KEY `siswa_tahun_angkatan_id_foreign` (`tahun_angkatan_id`);

--
-- Indeks untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- Indeks untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id_tahun_ajaran`);

--
-- Indeks untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id_wali_kelas`),
  ADD KEY `wali_kelas_guru_id_foreign` (`guru_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_sekolah`
--
ALTER TABLE `data_sekolah`
  MODIFY `id_data_sekolah` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `id_hari` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  MODIFY `id_jadwal` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jam_mapel`
--
ALTER TABLE `jam_mapel`
  MODIFY `id_jam_mapel` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id_mapel` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `semester`
--
ALTER TABLE `semester`
  MODIFY `id_semester` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `spp`
--
ALTER TABLE `spp`
  MODIFY `id_spp` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id_tahun_ajaran` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id_wali_kelas` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id_mapel`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  ADD CONSTRAINT `jadwal_pelajaran_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_pelajaran_hari_id_foreign` FOREIGN KEY (`hari_id`) REFERENCES `hari` (`id_hari`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_pelajaran_jam_mapel_id_foreign` FOREIGN KEY (`jam_mapel_id`) REFERENCES `jam_mapel` (`id_jam_mapel`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_pelajaran_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_pelajaran_mapel_id_foreign` FOREIGN KEY (`mapel_id`) REFERENCES `mapel` (`id_mapel`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_pelajaran_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id_semester`) ON DELETE CASCADE,
  ADD CONSTRAINT `jadwal_pelajaran_tahun_ajaran_id_foreign` FOREIGN KEY (`tahun_ajaran_id`) REFERENCES `tahun_ajaran` (`id_tahun_ajaran`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_semester_id_foreign` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id_semester`) ON DELETE CASCADE,
  ADD CONSTRAINT `kelas_tahun_ajaran_id_foreign` FOREIGN KEY (`tahun_ajaran_id`) REFERENCES `tahun_ajaran` (`id_tahun_ajaran`) ON DELETE CASCADE,
  ADD CONSTRAINT `kelas_wali_kls_id_foreign` FOREIGN KEY (`wali_kls_id`) REFERENCES `wali_kelas` (`id_wali_kelas`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_id_petugas_foreign` FOREIGN KEY (`id_petugas`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE,
  ADD CONSTRAINT `pembayaran_spp_id_foreign` FOREIGN KEY (`spp_id`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE,
  ADD CONSTRAINT `siswa_tahun_angkatan_id_foreign` FOREIGN KEY (`tahun_angkatan_id`) REFERENCES `tahun_ajaran` (`id_tahun_ajaran`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD CONSTRAINT `wali_kelas_guru_id_foreign` FOREIGN KEY (`guru_id`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
