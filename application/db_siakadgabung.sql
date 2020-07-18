-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2019 at 11:30 
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_siakadgabung`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) UNSIGNED NOT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  `all_access` tinyint(1) NOT NULL DEFAULT '0',
  `controller` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `b_groups_aksesprodi`
--

CREATE TABLE `b_groups_aksesprodi` (
  `id_user_aksesprodi` int(11) NOT NULL,
  `Id_GroupUser` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `b_groups_aksesprodi`
--

INSERT INTO `b_groups_aksesprodi` (`id_user_aksesprodi`, `Id_GroupUser`, `id_prodi`) VALUES
(25, 2, 19),
(26, 2, 2),
(27, 2, 5),
(28, 2, 4),
(29, 2, 9),
(30, 2, 3),
(31, 2, 18),
(32, 2, 17),
(33, 2, 16),
(34, 3, 23),
(35, 3, 25),
(36, 3, 24),
(37, 3, 22),
(173, 16, 21),
(174, 16, 20),
(175, 16, 23),
(176, 16, 25),
(177, 16, 24),
(178, 16, 22),
(179, 16, 19),
(180, 16, 2),
(181, 16, 5),
(182, 16, 4),
(183, 16, 9),
(184, 16, 3),
(185, 16, 18),
(186, 16, 17),
(187, 16, 16),
(624, 14, 21),
(625, 14, 20),
(626, 14, 23),
(627, 14, 25),
(628, 14, 24),
(629, 14, 22),
(630, 14, 19),
(631, 14, 2),
(632, 14, 5),
(633, 14, 4),
(634, 14, 9),
(635, 14, 3),
(636, 14, 18),
(637, 14, 17),
(638, 14, 16),
(654, 15, 21),
(655, 15, 20),
(656, 15, 23),
(657, 15, 25),
(658, 15, 24),
(659, 15, 22),
(660, 15, 19),
(661, 15, 2),
(662, 15, 5),
(663, 15, 4),
(664, 15, 9),
(665, 15, 3),
(666, 15, 18),
(667, 15, 17),
(668, 15, 16);

-- --------------------------------------------------------

--
-- Table structure for table `b_groupusers`
--

CREATE TABLE `b_groupusers` (
  `Id_GroupUser` int(11) NOT NULL,
  `level` enum('administrateur','baaku','dosen','kemahasiswaan','kepegawaian','kerumahtanggaan','keuangan','perpustakaan','userportal') DEFAULT NULL,
  `nama_group` varchar(50) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `b_groupusers`
--

INSERT INTO `b_groupusers` (`Id_GroupUser`, `level`, `nama_group`, `keterangan`) VALUES
(2, 'administrateur', 'root', '-'),
(3, 'administrateur', 'Administraor', 'sdsd'),
(14, 'baaku', 'TU FTIK', 'sasad'),
(15, 'keuangan', 'TU Keuangan', 'as'),
(16, 'perpustakaan', 'Kepala Perpustakaan', '-');

-- --------------------------------------------------------

--
-- Table structure for table `b_modulgroup`
--

CREATE TABLE `b_modulgroup` (
  `id_modulgroup` int(11) NOT NULL,
  `id_modul` int(11) NOT NULL,
  `Id_GroupUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `b_modulgroup`
--

INSERT INTO `b_modulgroup` (`id_modulgroup`, `id_modul`, `Id_GroupUser`) VALUES
(29, 7, 2),
(30, 8, 2),
(31, 9, 2),
(32, 6, 2),
(33, 2, 2),
(34, 10, 2),
(35, 4, 2),
(97, 7, 3),
(98, 8, 3),
(99, 9, 3),
(100, 6, 3),
(101, 2, 3),
(233, 12, 16),
(870, 15, 14),
(871, 19, 14),
(872, 18, 14),
(873, 39, 14),
(874, 17, 14),
(875, 16, 14),
(876, 7, 14),
(877, 11, 14),
(878, 13, 14),
(879, 8, 14),
(880, 9, 14),
(881, 26, 14),
(882, 30, 14),
(883, 27, 14),
(884, 29, 14),
(885, 32, 14),
(886, 34, 14),
(887, 35, 14),
(888, 28, 14),
(889, 33, 14),
(890, 31, 14),
(891, 14, 14),
(892, 12, 14),
(893, 23, 14),
(894, 2, 14),
(895, 10, 14),
(896, 25, 14),
(897, 24, 14),
(898, 22, 14),
(899, 21, 14),
(900, 38, 14),
(901, 36, 14),
(907, 37, 15),
(908, 22, 15),
(909, 20, 15),
(910, 21, 15);

-- --------------------------------------------------------

--
-- Table structure for table `b_moduls`
--

CREATE TABLE `b_moduls` (
  `id_modul` int(11) NOT NULL,
  `nama_modul` varchar(100) NOT NULL,
  `menu` varchar(50) DEFAULT NULL,
  `aktif` enum('Y','T') NOT NULL DEFAULT 'T',
  `level` enum('userportal','admin','baaku','mahasiswa','dosen','keuangan','kepegawaian','kerumahtanggaan','kaprodi','dekan') NOT NULL DEFAULT 'baaku'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `b_moduls`
--

INSERT INTO `b_moduls` (`id_modul`, `nama_modul`, `menu`, `aktif`, `level`) VALUES
(2, 'Ruangan', 'Ruangan', 'Y', 'kerumahtanggaan'),
(4, 'Tambah User', 'Tambah User', 'Y', 'dosen'),
(6, 'Manajemen User', 'Manajemen User', 'Y', 'admin'),
(7, 'Dosen- Data Dosen', 'Dosen', 'Y', 'baaku'),
(8, 'Kurikulum', 'Kurikulum', 'Y', 'baaku'),
(9, 'Mahasiswa', 'Mahasiswa', 'Y', 'baaku'),
(10, 'Semester', 'Semester', 'Y', 'baaku'),
(11, 'Fakultas', 'Fakultas', 'Y', 'baaku'),
(12, 'Pejabat', 'Pejabat', 'Y', 'baaku'),
(13, 'Gedung', 'Gedung', 'Y', 'baaku'),
(14, 'Matakuliah', 'Matakuliah', 'Y', 'baaku'),
(15, 'Account Dosen', 'Account Dosen', 'Y', 'baaku'),
(16, 'Divisi Kerja', 'Divisi Kerja', 'Y', 'baaku'),
(17, 'Data Staff', 'Staff', 'Y', 'baaku'),
(18, 'Account Staff', 'Account Staff', 'Y', 'baaku'),
(19, 'Account Mahasiswa', 'Account Mahasiswa', 'Y', 'baaku'),
(20, 'ST-Set Biaya', 'Biayast', 'Y', 'baaku'),
(21, 'ST-Validasi Pembayaran ST', 'Validasi Pembayaran ST', 'Y', 'baaku'),
(22, 'ST-Rekap Gaji ST', 'Rekap Gaji ST', 'Y', 'baaku'),
(23, 'Permohonan ST', 'Permohonan ST', 'Y', 'baaku'),
(24, 'ST-Cetak Surat', 'Cetak Surat ST', 'Y', 'baaku'),
(25, 'Setting Matakuliah Pada Kurikulum', 'Setting Kurikulum', 'Y', 'baaku'),
(26, 'Master Agama', 'Agama', 'Y', 'baaku'),
(27, 'Master Jenis Pendidikan', 'Jenis Pendidikan', 'Y', 'baaku'),
(28, 'Master Kewarganegaraan', 'Kewarganegaraan', 'Y', 'baaku'),
(29, 'Master Jenis Tempat Tinggal', 'Jenis Tempat Tinggal', 'Y', 'baaku'),
(30, 'Master Jenis Pekerjaan', 'Jenis Pekerjaan', 'Y', 'baaku'),
(31, 'Master Range Penghasilan', 'Range Penghasilan', 'Y', 'baaku'),
(32, 'Master Jenis Transportasi', 'Jenis Transportasi', 'Y', 'baaku'),
(33, 'Master Provinsi', 'Provinsi', 'Y', 'baaku'),
(34, 'Master Kabupaten', 'Kabupaten', 'Y', 'baaku'),
(35, 'Master Kecamatan', 'Kecamatan', 'Y', 'baaku'),
(36, 'Wisuda', 'Wisuda', 'Y', 'baaku'),
(37, 'Pembayaran Wisuda', 'Pembayaran Wisuda', 'Y', 'baaku'),
(38, 'Surat Keterangan Mahasiswa', 'Surat Keterangan', 'Y', 'baaku'),
(39, 'Berkas Mahasiswa', 'Berkas Mahasiswa', 'Y', 'baaku');

-- --------------------------------------------------------

--
-- Table structure for table `b_users`
--

CREATE TABLE `b_users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `Id_GroupUser` int(11) DEFAULT NULL,
  `level` enum('mahasiswa','dosen','staff','perpus') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `psw_md5` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `akses_backend` enum('Y','N') DEFAULT 'N',
  `id_session` varchar(255) NOT NULL,
  `tgl_daftar` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_log` int(11) NOT NULL DEFAULT '0',
  `status_log` enum('0','1') NOT NULL DEFAULT '0',
  `ver_code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `b_users`
--

INSERT INTO `b_users` (`id_user`, `username`, `Id_GroupUser`, `level`, `password`, `psw_md5`, `nama_lengkap`, `email`, `no_telp`, `foto`, `blokir`, `akses_backend`, `id_session`, `tgl_daftar`, `is_log`, `status_log`, `ver_code`) VALUES
(1, 'agusmulyanto', NULL, '', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', NULL, 'Agus Mulyanto', 'agus.mulyanto@teknokrat.ac.id', '085105555534', '15349771_1330941753617946_105056530721048606_n.jpg', 'N', 'N', 'q173s8hs1jl04st35169ccl8o7', '2017-09-29 08:48:07', 0, '0', ''),
(2, 'admin1', NULL, '', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', NULL, 'Yeni Agus Nurhuda', 'dedekrisna.fs@gmail.com', '085105555534', 'Hydrangeas.jpg', 'N', 'N', '200ceb26807d6bf99fd6f4f0d1ca54d4-20170909000537', '2017-09-29 08:48:07', 0, '1', '75368'),
(3, 'adminportal', NULL, '', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', NULL, 'Agus Mulyanto', 'agus.mulyanto@teknokrat.ac.id', '02983278323', '15349771_1330941753617946_105056530721048606_n.jpg', 'N', 'N', 'ce8ceed1b5b3143703a5dc67da2098e7-20170909003958', '2017-09-29 08:48:07', 0, '0', ''),
(4, 'kepegawaian', NULL, '', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', NULL, 'Indah Apriyanti', 'Indah.apriyanti@gmail.com', '28937287323', 'Koala2.jpg', 'N', 'N', '24c9e15e52afc47c225b757e7bee1f9d-20170909015442', '2017-09-29 08:48:07', 0, '0', ''),
(8, '028918321', 2, '', '82e9631003886bdc5c9952a2997a28e3f275f259e3537ec85c3319fd19275bc41c7fab5182a7a781f0de7d109301fa041ef041293daf99aec40b027d32e0573a', NULL, 'Agus Mulyanto', '', '', '15349771_1330941753617946_105056530721048606_n.jpg', 'N', 'Y', '', '2017-10-22 23:36:41', 0, '0', ''),
(9, 'admin', 2, 'dosen', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', '4e915520233bb8bb39dfe463fd8acfd1', 'Angga', '', '', '15349771_1330941753617946_105056530721048606_n.jpg', 'N', 'Y', '3ce66cd772dea7776fde29c371d188de17239b0a008d8ed7df82b1bca65131ee27bf0b6a7f69dac34385ae02bbe6978ab026bcead922547720956b4b246232b1', '2018-03-08 03:57:39', 0, '0', ''),
(11, 'kerumahtanggaan', NULL, '', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', NULL, 'Hanako', '', '', '15349771_1330941753617946_105056530721048606_n.jpg', 'N', 'N', '', '2017-10-25 08:35:07', 0, '0', ''),
(54, '17212006', NULL, 'mahasiswa', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', '609d956337bccfec208ef9f96bdf0b59', 'Beni', '', '', 'F_.jpg', 'N', 'N', '97e480ae84997480f4a171f40be502d8391b25828077671023ca54b31255bd08953ed662d5e114b7a6157dc0e41c7457efb92f1876b8b36e13bc030fc972196b', '2018-03-07 23:31:55', 0, '0', ''),
(64, '0271827', NULL, 'dosen', 'ee8d995310f93e95bc21edf4a1da4d287ab570492be3616b6ac0912a04fabbec380800cba0fb6d6ad7ba963f59379351a8f4d7ffc63499d7871d71d3dcba95f0', '1a3b576dfe75622e4f184da99f08df2b', 'Imam Ahmad', '', '', '', 'Y', 'N', 'ee8d995310f93e95bc21edf4a1da4d287ab570492be3616b6ac0912a04fabbec380800cba0fb6d6ad7ba963f59379351a8f4d7ffc63499d7871d71d3dcba95f0', '2018-04-04 11:42:46', 0, '0', ''),
(65, 'kaprodi', NULL, 'dosen', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', '26182d67330514d1b5ed3aaf317e4beb', 'Jupriyadi', '', '', '', 'N', 'N', '6583b69d948cc03b4e406a4a930374e781f6346ea4e70964f0e23c2411c276eaa08f5a65454d9dbe86ad3b75f55f350f3c3f99f0ff789827d70a66e21e2e38bf', '2018-03-08 03:57:39', 0, '0', ''),
(66, '021983137', NULL, 'dosen', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', '3b4225d0735d49aa9b1441e573e3804c', 'Angga', '', '', '', 'N', 'N', 'd096c36c99959e99b86eee3f3254b27cd6a1ee1b5eb31ed41ce246dd87f73dc78af3ee5060a121a9c5834c37e97ef909a2f856192491892b916581f2a50aa1b3', '2018-03-13 16:22:54', 0, '0', ''),
(67, 'keuangan', 15, 'staff', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 'a75e642a3cc1996d55e8f4e834bd3d62', 'aksajasjk', '', '', '', 'N', 'Y', '19a1125d54169480b2ea75ca8195b06413065f99658f83c5f183ac233b381c2f4165e77cb9de1658ac495300c7810b8bf082eab6ab5f25ddd684817aeffd64a7', '2018-03-23 08:12:27', 0, '0', ''),
(68, 'tuftik', 14, 'staff', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', 'a34ad77ca741e2982e75adcd235f8800', 'Vita Saptarini', '', '', '', 'N', 'Y', 'd6b2c2dccc73801d7fa93ec52339934356e492864218a04c72bc790129be8f97228892bfae5edba8b3b06f3d699079fbed1893c92d72dc4459afadde20c930d7', '2018-03-08 03:41:39', 0, '0', ''),
(70, 'perpustakaan', 16, 'staff', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', '70297ab908c3659f1e1594d497c70245', 'Rahmad Iqbal', '', '', '', 'N', 'Y', '0b9b846c2d00daacd0a753385a9e27483264bcb3e423165a7d0ff1fb774724bf41f9a34c8028ea6db38f7c1232af26bdef57fa40f0833a02111cd54ed66098d5', '2018-03-28 10:02:48', 0, '0', ''),
(71, '17212009', NULL, 'mahasiswa', 'd26356f1579603d3aa910e128ad60afc64538ef327236828fede3df9515a788f779255ce9c22abcbf47041e3d1a68e0d391ac3f1dfdbf273c5a6e42389a0ee7e', 'c18cb6dfc7a7bf15aa88e4f18bd80caa', 'Riski', '', '', '', 'N', 'N', 'd26356f1579603d3aa910e128ad60afc64538ef327236828fede3df9515a788f779255ce9c22abcbf47041e3d1a68e0d391ac3f1dfdbf273c5a6e42389a0ee7e', '2018-03-23 14:36:41', 0, '0', ''),
(72, '17212010', NULL, 'mahasiswa', '8b296251c5c209372f1bd2831199ffba246a75709b350481251bd558855b712dca441d1dfcc1983761e77c7ea8c7d03906a0fc475c7a0dd3423873622e9714f9', 'ab9d16777cceed02d17d3db995002976', 'Veny', '', '', '', 'N', 'N', '8b296251c5c209372f1bd2831199ffba246a75709b350481251bd558855b712dca441d1dfcc1983761e77c7ea8c7d03906a0fc475c7a0dd3423873622e9714f9', '2018-03-23 14:36:41', 0, '0', ''),
(73, '17212011', NULL, 'mahasiswa', 'ed98d3e481a55cf5cb903ac72190a1ea061b119a15a7b8afab5117c3fc07e4c2b8260451e11b98c17595146678250989e188deb23afd34a0defbed4326765ae2', 'ae43b93da5f23c7efa1e8a44fd8b47cb', 'Beni', '', '', '', 'N', 'N', 'ed98d3e481a55cf5cb903ac72190a1ea061b119a15a7b8afab5117c3fc07e4c2b8260451e11b98c17595146678250989e188deb23afd34a0defbed4326765ae2', '2018-03-23 08:58:50', 0, '0', ''),
(75, 'purwono', NULL, 'dosen', 'dc64714aed2c003a4796d1435b67681eb58f03ddfe3d319939f48643e0cafd6d44bae2fe2b70ef95ac3917e3ccf07b3852d0cc02665821d1fff5d47ef61ab40e', '111577b66cb843684bd83964a36fd14b', 'Purwono Prasetyawan', '', '', '', 'N', 'N', 'dc64714aed2c003a4796d1435b67681eb58f03ddfe3d319939f48643e0cafd6d44bae2fe2b70ef95ac3917e3ccf07b3852d0cc02665821d1fff5d47ef61ab40e', '2018-04-03 10:02:59', 0, '0', ''),
(124, '18111111', NULL, 'mahasiswa', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', NULL, 'patoni1', '', '', 'F_.jpeg', 'N', 'N', '', '2018-04-02 11:57:25', 0, '0', ''),
(125, '18111112', NULL, 'mahasiswa', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', NULL, 'patoni2', '', '', '', 'N', 'N', '', '2018-04-02 11:57:26', 0, '0', ''),
(126, '18111113', NULL, 'mahasiswa', 'cedec9abee313e0e6dd5eb85ce029c8712ab185c73ec8e092138f91314e6e9c50939918f4a0d3ad0be0bb347ec5ec8bc8e21003af0c89c942e439b98b3b34958', NULL, 'patoni3', '', '', '', 'N', 'N', '', '2018-04-02 11:57:26', 0, '0', ''),
(127, '18111114', NULL, 'mahasiswa', 'bed3a16b9f7fedbd4fd0222750eaa575760706e2081ead90351a8bf4b685eb17c5ba8f206f6d8213a28003f8b64b639af8a3b8aadd08d13d78455c04e1a48d63', NULL, 'patoni4', '', '', '', 'N', 'N', '', '2018-04-02 11:57:26', 0, '0', ''),
(128, '18111115', NULL, 'mahasiswa', 'ddb947eb35aaa4fd425ec2d3d959d4b8352fcc69b056c0ef4eb1ce37bcedc18f85641b53ca4858762795ea6b304e7b1310b1e86ec18fc8e2aea36282c28289e6', NULL, 'patoni5', '', '', '', 'N', 'N', '', '2018-04-02 11:57:26', 0, '0', ''),
(129, '18111116', NULL, 'mahasiswa', '39b281e61d872ad6986da300eb6c9db046342cb716fed65236c09e191057999255e541c70ae6befb41f24b232a1acd15441bba599d4ed868ca1172bb31476358', NULL, 'patoni6', '', '', '', 'N', 'N', '', '2018-04-02 11:57:26', 0, '0', ''),
(130, '18111117', NULL, 'mahasiswa', '42b0fbcbdf1ebfe24ddc9b8b759bd89cc5d42ea7e4058c33dcae9b9213ae60f302ad2206d0cb2acd124c912b5c9a401d7ff192689c501b692114ba72a1a12549', NULL, 'patoni7', '', '', '', 'N', 'N', '', '2018-04-02 11:57:26', 0, '0', ''),
(131, '18111118', NULL, 'mahasiswa', '1be20c3287bb628b8cd9ec8b9aae536f5cca12685a9bc5a8b27f61d18751578011d6f10be49dd1ad88ad4610726d0be34e68ee556ea68af2e8b3536dfddf4631', NULL, 'patoni8', '', '', '', 'N', 'N', '', '2018-04-02 11:57:27', 0, '0', ''),
(132, '18111119', NULL, 'mahasiswa', '3c71233d5a9c0132dc0cb41ddaf0fc03b0a52ed4ccfaa5cbd160ad0880ca0791611be9ab9fdd3ba59ac26ffcef31d4a709be860bf3de573c850c81a959c02e93', NULL, 'patoni9', '', '', '', 'N', 'N', '', '2018-04-02 11:57:27', 0, '0', ''),
(133, '18111120', NULL, 'mahasiswa', 'f4fb6b3176532f716233afb2f250de1810499382290699cd259a07d58a751430181d0bbfb972ea67af3ac84670ef2bc72ea41728a31592dfef49b7777734e23f', NULL, 'patoni10', '', '', '', 'N', 'N', '', '2018-04-02 11:57:27', 0, '0', ''),
(134, '18111121', NULL, 'mahasiswa', '637908a88cf9711a4f277c464c8f3791b98f9deee6e001e99c0c637139620196fc9f51d87c1152edf6c2ff9360eb9f32f19759a0d8e2507f4a61080da1dbc9fd', NULL, 'patoni11', '', '', '', 'N', 'N', '', '2018-04-02 11:57:27', 0, '0', ''),
(135, '18111122', NULL, 'mahasiswa', '8368a119898b66e92fd8411cd8aef483ce39270611f4b205a7b2940ecb8bffae78afeeb57a5d843fe4044759bb3070395a3a0469b8b1f1c8290af1f8365961f1', NULL, 'patoni12', '', '', '', 'N', 'N', '', '2018-04-02 11:57:27', 0, '0', ''),
(136, '18111123', NULL, 'mahasiswa', '88a2936ae0cabd27ff0c9a62b910c2074e8b3fcbdb9270be5da6a5caa3ad49bef87f87ae32d77041f2c3fe0e2570da575928cdca3edf40c1bd630f7044c1ff66', NULL, 'patoni13', '', '', '', 'N', 'N', '', '2018-04-02 11:57:27', 0, '0', ''),
(137, '18111124', NULL, 'mahasiswa', '7566ad08de2d306742695e072bdaf7866f3af046d4f347377b012ca9920122bcacc71a44ca17169d73cdfcc7a5595ab9331ad25ed94028cb67a2d3bad9297de7', NULL, 'patoni14', '', '', '', 'N', 'N', '', '2018-04-02 11:57:27', 0, '0', ''),
(138, '18111125', NULL, 'mahasiswa', 'ffcb46c0263fce6f4219e1279df9848de5115958b78cccbb7b74f34173fc6970f9534628fe40e6360418d66ada7efea1dec78c01e00fb5c9f8e564d516660bbf', NULL, 'patoni15', '', '', '', 'N', 'N', '', '2018-04-02 11:57:27', 0, '0', ''),
(139, '18111126', NULL, 'mahasiswa', '87929a9319b05ff5f895650e6b18cc2d3c8841343dd295a6e41b75402c5b1477b3c71b317529e93f3db5c753dccc8013a56aeb056915153e1c8d2ef867a94fbc', NULL, 'patoni16', '', '', '', 'N', 'N', '', '2018-04-02 11:57:28', 0, '0', ''),
(140, '18111127', NULL, 'mahasiswa', 'aa172424b5022fc403e69372902192209f136e42d84c22caea31811f2281ce91370171564588137d5277be81d9fd8fd8402628ed13954e7cdb255228736a9c9b', NULL, 'patoni17', '', '', '', 'N', 'N', '', '2018-04-02 11:57:28', 0, '0', ''),
(141, '18111128', NULL, 'mahasiswa', '941589e4effbc9e3f071b1b12ca837022783eed04a2a9b4096685539220540b4c20d284194cc1737120231d4d8d94e8424a77f7b73c63f2751c39e9e2d00d991', NULL, 'patoni18', '', '', '', 'N', 'N', '', '2018-04-02 11:57:28', 0, '0', ''),
(142, '18111129', NULL, 'mahasiswa', 'cb0be4c00e8d409e6a740fe7ddbc3db021338a8bd0c1c7229be95c9436722f670b55d396d2ad389720a09ee367757c2c10643b99abdc6f0d4c6f1e15877187e3', NULL, 'patoni19', '', '', '', 'N', 'N', '', '2018-04-02 11:57:28', 0, '0', ''),
(143, '18111130', NULL, 'mahasiswa', '2c21258a3708461c4fa8cf831d7ee2dc83ff4d943c75dd91a8d966fc9df471f1c7844cfb1a1e93a4ce119b9079f4cdcd1bc1421905172a2e6ecac843bd73398d', NULL, 'patoni20', '', '', '', 'N', 'N', '', '2018-04-02 11:57:28', 0, '0', ''),
(144, '18111131', NULL, 'mahasiswa', 'f3192e6ac45833365808243bda5eb54bfe108d7400496ecd9b1e755f175b3e151677a673929339589f598c825f4cc92cfe191756ff10ceba0983c592e0a1cc78', NULL, 'patoni21', '', '', '', 'N', 'N', '', '2018-04-02 11:57:29', 0, '0', ''),
(145, '18111132', NULL, 'mahasiswa', '2125114fad810a27a38fc2402b4a1c1d629d1d3ec0c9f356b0fba1ab63f11caa2929171ce48fcd8eef6804053ffd416340fb9cb4c48e49206ba8664570a279fa', NULL, 'patoni22', '', '', '', 'N', 'N', '', '2018-04-02 11:57:29', 0, '0', ''),
(146, '10311372', NULL, 'mahasiswa', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', NULL, 'Eva Yuniati', '', '', '', 'N', 'N', '', '2018-04-02 16:27:59', 0, '0', ''),
(147, '14311088', NULL, 'mahasiswa', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', NULL, 'Okti Yunita Syahputri', '', '', '', 'N', 'N', '', '2018-04-02 16:28:00', 0, '0', ''),
(148, '14311115', NULL, 'mahasiswa', '3e39b3844837bdefc8017fbcb386ea302af877fb17baa09d0a1bd34b67bbf2b34fba314bbcab450f5f3f73771b7aea956ba3320defda029723f4fdff7dfa007b', NULL, 'Joko Trilaksono', '', '', '', 'N', 'N', '', '2018-04-03 10:30:28', 0, '0', ''),
(149, '10312148', NULL, 'dosen', '75025624605a81995592314626c9b791acd0b35e6bf6ae08d59bc8251418da6460b4b7aa2ab59a4952d01ea43901fb803384c2bec47d703c6884deb220419d5c', 'd73b58a980699ce7d61009c33d82bb71', 'toni', '', '', '', 'N', 'N', '', '2018-04-04 16:44:25', 0, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `data_agama`
--

CREATE TABLE `data_agama` (
  `id_agama` int(11) NOT NULL,
  `nm_agama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_agama`
--

INSERT INTO `data_agama` (`id_agama`, `nm_agama`) VALUES
(1, 'Islam'),
(2, 'Kristen'),
(3, 'Katholik'),
(4, 'Hindu'),
(5, 'Budha'),
(6, 'Konghuchu'),
(99, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `data_jenis_tinggal`
--

CREATE TABLE `data_jenis_tinggal` (
  `id_jns_tinggal` int(11) NOT NULL,
  `nm_jns_tinggal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_jenis_tinggal`
--

INSERT INTO `data_jenis_tinggal` (`id_jns_tinggal`, `nm_jns_tinggal`) VALUES
(1, 'Bersama orang tua'),
(2, 'Wali'),
(3, 'Kost'),
(4, 'Asrama'),
(5, 'Panti asuhan'),
(99, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `data_jenjang_pendidikan`
--

CREATE TABLE `data_jenjang_pendidikan` (
  `id_jenj_didik` int(11) NOT NULL,
  `nm_jenj_didik` varchar(50) DEFAULT '0',
  `u_jenj_lemb` int(11) DEFAULT '0',
  `u_jenj_org` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='id_jenj_didik	nm_jenj_didik	u_jenj_lemb	u_jenj_org';

--
-- Dumping data for table `data_jenjang_pendidikan`
--

INSERT INTO `data_jenjang_pendidikan` (`id_jenj_didik`, `nm_jenj_didik`, `u_jenj_lemb`, `u_jenj_org`) VALUES
(1, 'Tidak Sekolah', 0, 0),
(2, 'Paud', 0, 0),
(3, 'TK / Sederajat', 0, 0),
(4, 'Putus SD', 0, 0),
(5, 'SD / Sederajat', 0, 0),
(6, 'SMP / Sederajat', 0, 0),
(7, 'SMA / Sederajat', 0, 0),
(8, 'Paket A', 0, 0),
(9, 'Paket B', 0, 0),
(10, 'Paket C', 0, 0),
(20, 'D1', 1, 1),
(21, 'D2', 1, 1),
(22, 'D3', 1, 1),
(23, 'D4', 1, 1),
(25, 'Profesi', 1, 1),
(30, 'S1', 1, 1),
(32, 'Sp-1', 1, 1),
(35, 'S2', 1, 1),
(37, 'Sp-2', 1, 1),
(40, 'S3', 1, 1),
(90, 'Non formal', 1, 0),
(91, 'Informal', 1, 0),
(99, 'Lainnya', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_kabupaten`
--

CREATE TABLE `data_kabupaten` (
  `id_kab` int(11) NOT NULL,
  `nama_kabupaten` varchar(50) DEFAULT NULL,
  `id_wil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kabupaten`
--

INSERT INTO `data_kabupaten` (`id_kab`, `nama_kabupaten`, `id_wil`) VALUES
(3, 'Gianyar', 7428),
(4, 'Bangli', 7428),
(5, 'Buleleng', 7428),
(6, 'Tabanan', 7428),
(7, 'Karangasem', 7428),
(8, 'Badung', 7428),
(9, 'Jembrana', 7428),
(10, 'Klungkung', 7428),
(11, 'Denpasar', 7428),
(12, 'Bangka Selatan', 7429),
(13, 'Bangka Barat', 7429),
(14, 'Belitung', 7429),
(15, 'Pangkal Pinang', 7429),
(16, 'Bangka Tengah', 7429),
(17, 'Bangka', 7429),
(18, 'Belitung Timur', 7429),
(19, 'Lebak', 7430),
(20, 'Serang', 7430),
(21, 'Tangerang', 7430),
(22, 'Pandeglang', 7430),
(23, 'Tangerang Selatan', 7430),
(24, 'Cilegon', 7430),
(25, 'Seluma', 7431),
(26, 'Bengkulu Tengah', 7431),
(27, 'Bengkulu', 7431),
(28, 'Muko Muko', 7431),
(29, 'Rejang Lebong', 7431),
(30, 'Kaur', 7431),
(31, 'Bengkulu Selatan', 7431),
(32, 'Kepahiang', 7431),
(33, 'Lebong', 7431),
(34, 'Bengkulu Utara', 7431),
(35, 'Gunung Kidul', 7432),
(36, 'Yogyakarta', 7432),
(37, 'Kulon Progo', 7432),
(38, 'Sleman', 7432),
(39, 'Bantul', 7432),
(40, 'Jakarta Selatan', 7433),
(41, 'Jakarta Utara', 7433),
(42, 'Jakarta Pusat', 7433),
(43, 'Jakarta Barat', 7433),
(44, 'Jakarta Timur', 7433),
(45, 'Kepulauan Seribu', 7433),
(46, 'Boalemo', 7434),
(47, 'Pohuwato', 7434),
(48, 'Gorontalo Utara', 7434),
(49, 'Gorontalo', 7434),
(50, 'Bone Bolango', 7434),
(51, 'Tebo', 7435),
(52, 'Tanjung Jabung Barat', 7435),
(53, 'Merangin', 7435),
(54, 'Jambi', 7435),
(55, 'Bungo', 7435),
(56, 'Sungaipenuh', 7435),
(57, 'Muaro Jambi', 7435),
(58, 'Kerinci', 7435),
(59, 'Sarolangun', 7435),
(60, 'Tanjung Jabung Timur', 7435),
(61, 'Batang Hari', 7435),
(62, 'Indramayu', 7436),
(63, 'Cirebon', 7436),
(64, 'Cianjur', 7436),
(65, 'Sukabumi', 7436),
(66, 'Purwakarta', 7436),
(67, 'Garut', 7436),
(68, 'Sumedang', 7436),
(69, 'Bandung', 7436),
(70, 'Karawang', 7436),
(71, 'Bogor', 7436),
(72, 'Tasikmalaya', 7436),
(73, 'Bekasi', 7436),
(74, 'Depok', 7436),
(75, 'Subang', 7436),
(76, 'Ciamis', 7436),
(77, 'Majalengka', 7436),
(78, 'Kuningan', 7436),
(79, 'Bandung Barat', 7436),
(80, 'Pangandaran', 7436),
(81, 'Banjar', 7436),
(82, 'Cimahi', 7436),
(83, 'Wonogiri', 7437),
(84, 'Batang', 7437),
(85, 'Wonosobo', 7437),
(86, 'Boyolali', 7437),
(87, 'Klaten', 7437),
(88, 'Demak', 7437),
(89, 'Pekalongan', 7437),
(90, 'Temanggung', 7437),
(91, 'Grobogan', 7437),
(92, 'Pati', 7437),
(93, 'Magelang', 7437),
(94, 'Sukoharjo', 7437),
(95, 'Kendal', 7437),
(96, 'Jepara', 7437),
(97, 'Pemalang', 7437),
(98, 'Tegal', 7437),
(99, 'Banyumas', 7437),
(100, 'Banjarnegara', 7437),
(101, 'Brebes', 7437),
(102, 'Cilacap', 7437),
(103, 'Semarang', 7437),
(104, 'Kudus', 7437),
(105, 'Blora', 7437),
(106, 'Salatiga', 7437),
(107, 'Karanganyar', 7437),
(108, 'Sragen', 7437),
(109, 'Rembang', 7437),
(110, 'Kebumen', 7437),
(111, 'Surakarta', 7437),
(112, 'Purbalingga', 7437),
(113, 'Purworejo', 7437),
(114, 'Bangkalan', 7438),
(115, 'Banyuwangi', 7438),
(116, 'Batu', 7438),
(117, 'Blitar', 7438),
(118, 'Bojonegoro', 7438),
(119, 'Bondowoso', 7438),
(120, 'Gresik', 7438),
(121, 'Jember', 7438),
(122, 'Jombang', 7438),
(123, 'Kediri', 7438),
(124, 'Lamongan', 7438),
(125, 'Lumajang', 7438),
(126, 'Madiun', 7438),
(127, 'Magetan', 7438),
(128, 'Malang', 7438),
(129, 'Mojokerto', 7438),
(130, 'Nganjuk', 7438),
(131, 'Ngawi', 7438),
(132, 'Pacitan', 7438),
(133, 'Pamekasan', 7438),
(134, 'Pasuruan', 7438),
(135, 'Ponorogo', 7438),
(136, 'Probolinggo', 7438),
(137, 'Sampang', 7438),
(138, 'Sidoarjo', 7438),
(139, 'Situbondo', 7438),
(140, 'Sumenep', 7438),
(141, 'Surabaya', 7438),
(142, 'Trenggalek', 7438),
(143, 'Tuban', 7438),
(144, 'Tulungagung', 7438),
(145, 'Bengkayang', 7439),
(146, 'Kapuas Hulu', 7439),
(147, 'Kayong Utara', 7439),
(148, 'Ketapang', 7439),
(149, 'Kubu Raya', 7439),
(150, 'Landak', 7439),
(151, 'Melawi', 7439),
(152, 'Mempawah', 7439),
(153, 'Pontianak', 7439),
(154, 'Sambas', 7439),
(155, 'Sanggau', 7439),
(156, 'Sekadau', 7439),
(157, 'Singkawang', 7439),
(158, 'Sintang', 7439),
(159, 'Balangan', 7440),
(160, 'Banjar', 7440),
(161, 'Banjarbaru', 7440),
(162, 'Banjarmasin', 7440),
(163, 'Barito Kuala', 7440),
(164, 'Hulu Sungai Selatan', 7440),
(165, 'Hulu Sungai Tengah', 7440),
(166, 'Hulu Sungai Utara', 7440),
(167, 'Kotabaru', 7440),
(168, 'Tabalong', 7440),
(169, 'Tanah Bumbu', 7440),
(170, 'Tanah Laut', 7440),
(171, 'Tapin', 7440),
(172, 'Barito Selatan', 7441),
(173, 'Barito Timur', 7441),
(174, 'Barito Utara', 7441),
(175, 'Gunung Mas', 7441),
(176, 'Kapuas', 7441),
(177, 'Katingan', 7441),
(178, 'Kotawaringin Barat', 7441),
(179, 'Kotawaringin Timur', 7441),
(180, 'Lamandau', 7441),
(181, 'Murung Raya', 7441),
(182, 'Palangka Raya', 7441),
(183, 'Pulang Pisau', 7441),
(184, 'Seruyan', 7441),
(185, 'Sukamara', 7441),
(186, 'Balikpapan', 7442),
(187, 'Berau', 7442),
(188, 'Bontang', 7442),
(189, 'Kutai Barat', 7442),
(190, 'Kutai Kartanegara', 7442),
(191, 'Kutai Timur', 7442),
(192, 'Mahakam Ulu', 7442),
(193, 'Paser', 7442),
(194, 'Penajam Paser Utara', 7442),
(195, 'Samarinda', 7442),
(196, 'Bulungan', 7443),
(197, 'Malinau', 7443),
(198, 'Nunukan', 7443),
(199, 'Tana Tidung', 7443),
(200, 'Tarakan', 7443),
(201, 'Batam', 7444),
(202, 'Bintan', 7444),
(203, 'Karimun', 7444),
(204, 'Kepulauan Anambas', 7444),
(205, 'Lingga', 7444),
(206, 'Natuna', 7444),
(207, 'Tanjung Pinang', 7444),
(208, 'Bandar Lampung', 7445),
(209, 'Lampung Barat', 7445),
(210, 'Lampung Selatan', 7445),
(211, 'Lampung Tengah', 7445),
(212, 'Lampung Timur', 7445),
(213, 'Lampung Utara', 7445),
(214, 'Mesuji', 7445),
(215, 'Metro', 7445),
(216, 'Pesawaran', 7445),
(217, 'Pesisir Barat', 7445),
(218, 'Pringsewu', 7445),
(219, 'Tanggamus', 7445),
(220, 'Tulang Bawang', 7445),
(221, 'Tulang Bawang Barat', 7445),
(222, 'Way Kanan', 7445),
(223, 'Ambon', 7446),
(224, 'Buru', 7446),
(225, 'Buru Selatan', 7446),
(226, 'Kepulauan Aru', 7446),
(227, 'Maluku Barat Daya', 7446),
(228, 'Maluku Tengah', 7446),
(229, 'Maluku Tenggara', 7446),
(230, 'Maluku Tenggara Barat', 7446),
(231, 'Seram Bagian Barat', 7446),
(232, 'Seram Bagian Timur', 7446),
(233, 'Tual', 7446),
(234, 'Halmahera Barat', 7447),
(235, 'Halmahera Selatan', 7447),
(236, 'Halmahera Tengah', 7447),
(237, 'Halmahera Timur', 7447),
(238, 'Halmahera Utara', 7447),
(239, 'Kepulauan Sula', 7447),
(240, 'Pulau Morotai', 7447),
(241, 'Pulau Taliabu', 7447),
(242, 'Ternate', 7447),
(243, 'Tidore Kepulauan', 7447),
(244, 'Aceh Barat', 7448),
(245, 'Aceh Barat Daya', 7448),
(246, 'Aceh Besar', 7448),
(247, 'Aceh Jaya', 7448),
(248, 'Aceh Selatan', 7448),
(249, 'Aceh Singkil', 7448),
(250, 'Aceh Tamiang', 7448),
(251, 'Aceh Tengah', 7448),
(252, 'Aceh Tenggara', 7448),
(253, 'Aceh Timur', 7448),
(254, 'Aceh Utara', 7448),
(255, 'Banda Aceh', 7448),
(256, 'Bener Meriah', 7448),
(257, 'Bireuen', 7448),
(258, 'Gayo Lues', 7448),
(259, 'Lhokseumawe', 7448),
(260, 'Nagan Raya', 7448),
(261, 'Pidie', 7448),
(262, 'Pidie Jaya', 7448),
(263, 'Sabang', 7448),
(264, 'Simeulue', 7448),
(265, 'Subulussalam', 7448),
(266, 'Bima', 7449),
(267, 'Dompu', 7449),
(268, 'Lombok Barat', 7449),
(269, 'Lombok Tengah', 7449),
(270, 'Lombok Timur', 7449),
(271, 'Lombok Utara', 7449),
(272, 'Mataram', 7449),
(273, 'Sumbawa', 7449),
(274, 'Sumbawa Barat', 7449),
(275, 'Alor', 7450),
(276, 'Belu', 7450),
(277, 'Ende', 7450),
(278, ' Ende', 7450),
(279, ' Flores Timur', 7450),
(280, 'Flores Timur', 7450),
(281, 'Kupang', 7450),
(282, 'Lembata', 7450),
(283, 'Malaka', 7450),
(284, 'Manggarai', 7450),
(285, 'Manggarai Barat', 7450),
(286, 'Manggarai Timur', 7450),
(287, 'Nagekeo', 7450),
(288, 'Ngada', 7450),
(289, 'Rote Ndao', 7450),
(290, 'Sabu Raijua', 7450),
(291, 'Sikka', 7450),
(292, 'Sumba Barat', 7450),
(293, 'Sumba Barat Daya', 7450),
(294, 'Sumba Tengah', 7450),
(295, 'Sumba Timur', 7450),
(296, 'Timor Tengah Selatan', 7450),
(297, 'Timor Tengah Utara', 7450),
(298, 'Asmat', 7451),
(299, 'Biak Numfor', 7451),
(300, 'Boven Digoel', 7451),
(301, 'Deiyai', 7451),
(302, 'Dogiyai', 7451),
(303, 'Intan Jaya', 7451),
(304, 'Jayapura', 7451),
(305, 'Jayawijaya', 7451),
(306, 'Keerom', 7451),
(307, 'Kepulauan Yapen', 7451),
(308, 'Lanny Jaya', 7451),
(309, 'Mamberamo Raya', 7451),
(310, 'Mamberamo Tengah', 7451),
(311, 'Mappi', 7451),
(312, 'Merauke', 7451),
(313, 'Mimika', 7451),
(314, 'Nabire', 7451),
(315, 'Nduga', 7451),
(316, 'Paniai', 7451),
(317, 'Pegunungan Bintang', 7451),
(318, 'Puncak', 7451),
(319, 'Puncak Jaya', 7451),
(320, 'Sarmi', 7451),
(321, 'Supiori', 7451),
(322, 'Tolikara', 7451),
(323, 'Waropen', 7451),
(324, 'Yahukimo', 7451),
(325, 'Yalimo', 7451),
(326, 'Fakfak', 7452),
(327, 'Kaimana', 7452),
(328, 'Manokwari', 7452),
(329, 'Manokwari Selatan', 7452),
(330, 'Maybrat', 7452),
(331, 'Pegunungan Arfak', 7452),
(332, 'Raja Ampat', 7452),
(333, 'Sorong', 7452),
(334, 'Sorong Selatan', 7452),
(335, 'Tambrauw', 7452),
(336, 'Teluk Bintuni', 7452),
(337, 'Teluk Wondama', 7452),
(338, 'Bengkalis', 7453),
(339, 'Dumai', 7453),
(340, 'Indragiri Hilir', 7453),
(341, 'Indragiri Hulu', 7453),
(342, 'Kampar', 7453),
(343, 'Kepulauan Meranti', 7453),
(344, 'Kuantan Singingi', 7453),
(345, 'Pekanbaru', 7453),
(346, 'Pelalawan', 7453),
(347, 'Rokan Hilir', 7453),
(348, 'Rokan Hulu', 7453),
(349, 'Siak', 7453),
(350, 'Majene', 7454),
(351, 'Mamasa', 7454),
(352, 'Mamuju', 7454),
(353, 'Mamuju Tengah', 7454),
(354, 'Mamuju Utara', 7454),
(355, 'Polewali Mandar', 7454),
(356, 'Bantaeng', 7455),
(357, 'Barru', 7455),
(358, 'Bone', 7455),
(359, 'Bulukumba', 7455),
(360, 'Enrekang', 7455),
(361, 'Gowa', 7455),
(362, 'Jeneponto', 7455),
(363, 'Kepulauan Selayar', 7455),
(364, 'Luwu', 7455),
(365, 'Luwu Timur', 7455),
(366, 'Luwu Utara', 7455),
(367, 'Makassar', 7455),
(368, 'Maros', 7455),
(369, 'Palopo', 7455),
(370, 'Pangkajene Kepulauan', 7455),
(371, 'Parepare', 7455),
(372, 'Pinrang', 7455),
(373, 'Sidenreng Rappang', 7455),
(374, 'Sinjai', 7455),
(375, 'Soppeng', 7455),
(376, 'Takalar', 7455),
(377, 'Tana Toraja', 7455),
(378, 'Toraja Utara', 7455),
(379, 'Wajo', 7455),
(380, 'Banggai', 0),
(381, 'Banggai Kepulauan', 7456),
(382, 'Banggai Laut', 7456),
(383, 'Buol', 7456),
(384, 'Donggala', 7456),
(385, 'Morowali', 7456),
(386, 'Morowali Utara', 7456),
(387, 'Palu', 7456),
(388, 'Parigi Moutong', 7456),
(389, 'Poso', 7456),
(390, 'Sigi', 7456),
(391, 'Tojo Una-Una', 7456),
(392, 'Toli-Toli', 7456),
(393, 'Bau-Bau', 7457),
(394, 'Bombana', 7457),
(395, 'Buton', 7457),
(396, 'Buton Selatan', 7457),
(397, 'Buton Tengah', 7457),
(398, 'Buton Utara', 7457),
(399, 'Kendari', 7457),
(400, 'Kolaka', 7457),
(401, 'Kolaka Timur', 7457),
(402, 'Kolaka Utara', 7457),
(403, 'Konawe', 7457),
(404, 'Konawe Kepulauan', 7457),
(405, 'Konawe Selatan', 7457),
(406, 'Konawe Utara', 7457),
(407, 'Muna', 7457),
(408, 'Muna Barat', 7457),
(409, 'Wakatobi', 7457),
(410, 'Bitung', 7458),
(411, 'Bolaang Mongondow', 7458),
(412, 'Bolaang Mongondow Selatan', 7458),
(413, 'Bolaang Mongondow Timur', 7458),
(414, 'Bolaang Mongondow Utara', 7458),
(415, 'Kepulauan Sangihe', 7458),
(416, 'Kepulauan Siau Tagulandang Biaro (Sitaro)', 7458),
(417, 'Kepulauan Talaud', 7458),
(418, 'Kotamobagu', 7458),
(419, 'Manado', 7458),
(420, 'Minahasa', 7458),
(421, 'Minahasa Selatan', 7458),
(422, 'Minahasa Tenggara', 7458),
(423, 'Minahasa Utara', 7458),
(424, 'Tomohon', 7458),
(425, 'Agam', 7459),
(426, 'Bukittinggi', 7459),
(427, 'Dharmasraya', 7459),
(428, 'Kepulauan Mentawai', 7459),
(429, 'Lima Puluh Kota', 7459),
(430, 'Padang', 7459),
(431, 'Padang Panjang', 7459),
(432, 'Padang Pariaman', 7459),
(433, 'Pariaman', 7459),
(434, 'Pasaman', 7459),
(435, 'Pasaman Barat', 7459),
(436, 'Payakumbuh', 7459),
(437, 'Pesisir Selatan', 7459),
(438, 'Sawah Lunto', 7459),
(439, 'Sijunjung', 7459),
(440, 'Solok', 7459),
(441, 'Solok Selatan', 7459),
(442, 'Tanah Datar', 7459),
(443, 'Banyuasin', 7460),
(444, 'Empat Lawang', 7460),
(445, 'Lahat', 7460),
(446, 'Lubuk Linggau', 7460),
(447, 'Muara Enim', 7460),
(448, 'Musi Banyuasin', 7460),
(449, 'Musi Rawas', 7460),
(450, 'Musi Rawas Utara', 7460),
(451, 'Ogan Ilir', 7460),
(452, 'Ogan Komering Ilir', 7460),
(453, 'Ogan Komering Ulu', 7460),
(454, 'Ogan Komering Ulu Selatan', 7460),
(455, 'Ogan Komering Ulu Timur', 7460),
(456, 'Pagar Alam', 7460),
(457, 'Palembang', 7460),
(458, 'Penukal Abab Lematang Ilir', 7460),
(459, 'Prabumulih', 7460),
(460, 'Asahan', 7461),
(461, 'Batu Bara', 7461),
(462, 'Binjai', 7461),
(463, 'Dairi', 7461),
(464, 'Deli Serdang', 7461),
(465, 'Gunungsitoli', 7461),
(466, 'Humbang Hasundutan', 7461),
(467, 'Karo', 7461),
(468, 'Labuhanbatu', 7461),
(469, 'Labuhanbatu Selatan', 7461),
(470, 'Labuhanbatu Utara', 7461),
(471, 'Langkat', 7461),
(472, 'Mandailing Natal', 7461),
(473, 'Medan', 7461),
(474, 'Nias', 7461),
(475, 'Nias Barat', 7461),
(476, 'Nias Selatan', 7461),
(477, 'Nias Utara', 7461),
(478, 'Padang Lawas', 7461),
(479, 'Padang Lawas Utara', 7461),
(480, 'Padang Sidempuan', 7461),
(481, 'Pakpak Bharat', 7461),
(482, 'Pematang Siantar', 7461),
(483, 'Samosir', 7461),
(484, 'Serdang Bedagai', 7461),
(485, 'Sibolga', 7461),
(486, 'Simalungun', 7461),
(487, 'Tanjung Balai', 7461),
(488, 'Tapanuli Selatan', 7461),
(489, 'Tapanuli Tengah', 7461),
(490, 'Tapanuli Utara', 7461),
(491, 'Tebing Tinggi', 7461),
(492, 'Toba Samosir', 7461);

-- --------------------------------------------------------

--
-- Table structure for table `data_kecamatan`
--

CREATE TABLE `data_kecamatan` (
  `id_kec` int(11) NOT NULL,
  `nama_kec` varchar(50) DEFAULT NULL,
  `id_kab` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kecamatan`
--

INSERT INTO `data_kecamatan` (`id_kec`, `nama_kec`, `id_kab`) VALUES
(15, 'Ubud', 3),
(16, 'Tembuku', 4),
(17, 'Tejakula', 5),
(18, 'Tegallalang', 3),
(19, 'Tampak Siring', 3),
(20, 'Tabanan', 6),
(21, 'Susut', 4),
(22, 'Sukawati', 3),
(23, 'Sukasada', 5),
(24, 'Sidemen', 7),
(25, 'Seririt', 5),
(26, 'Selemadeg', 6),
(27, 'Selat', 7),
(28, 'Sawan', 5),
(29, 'Salemadeg Timur', 6),
(30, 'Salemadeg Barat', 6),
(31, 'Rendang', 7),
(32, 'Pupuan', 6),
(33, 'Petang', 8),
(34, 'Penebel', 6),
(35, 'Pekutatan', 9),
(36, 'Payangan', 3),
(37, 'Nusapenida', 10),
(38, 'Negara', 9),
(39, 'Mengwi', 8),
(40, 'Mendoyo', 9),
(41, 'Melaya', 9),
(42, 'Marga', 6),
(43, 'Manggis', 7),
(44, 'Kuta Utara', 8),
(45, 'Kuta Selatan', 8),
(46, 'Kuta', 8),
(47, 'Kubutambahan', 5),
(48, 'Kubu', 7),
(49, 'Klungkung', 10),
(50, 'Kintamani', 4),
(51, 'Kerambitan', 6),
(52, 'Kediri', 6),
(53, 'Karang Asem', 7),
(54, 'Jembrana', 9),
(55, 'Gianyar', 3),
(56, 'Gerokgak', 5),
(57, 'Denpasar Utara', 11),
(58, 'Denpasar Timur', 11),
(59, 'Denpasar Selatan', 11),
(60, 'Denpasar Barat', 11),
(61, 'Dawan', 10),
(62, 'Busungbiu', 5),
(63, 'Buleleng', 5),
(64, 'Belah Batuh (Blahbatuh)', 3),
(65, 'Bebandem', 7),
(66, 'Baturiti', 6),
(67, 'Banjarangkan', 10),
(68, 'Banjar', 5),
(69, 'Bangli', 4),
(70, 'Abiansemal', 8),
(71, 'Abang', 7),
(72, 'Tukak Sadai', 12),
(73, 'Toboali', 12),
(74, 'Tempilang', 13),
(75, 'Tanjung Pandan', 14),
(76, 'Taman Sari', 15),
(77, 'Sungai Selan', 16),
(78, 'Sungai Liat', 17),
(79, 'Simpang Teritip', 13),
(80, 'Simpang Rimba', 12),
(81, 'Simpang Renggiang', 18),
(82, 'Simpang Pesak', 18),
(83, 'Simpang Katis', 16),
(84, 'Sijuk', 14),
(85, 'Selat Nasik', 14),
(86, 'Riau Silip', 17),
(87, 'Rangkui', 15),
(88, 'Pulau Besar', 12),
(89, 'Puding Besar', 17),
(90, 'Pemali', 17),
(91, 'Payung', 12),
(92, 'Parittiga', 13),
(93, 'Pangkalan Baru', 16),
(94, 'Pangkal Balam', 15),
(95, 'Namang', 16),
(96, 'Merawang', 17),
(97, 'Mentok (Muntok)', 13),
(98, 'Mendo Barat', 17),
(99, 'Membalong', 14),
(100, 'Manggar', 18),
(101, 'Lubuk Besar', 16),
(102, 'Lepar Pongok', 12),
(103, 'Koba', 16),
(104, 'Kepulauan Pongok', 12),
(105, 'Kelapa Kampit', 18),
(106, 'Kelapa', 13),
(107, 'Jebus', 13),
(108, 'Girimaya', 15),
(109, 'Gerunggang', 15),
(110, 'Gantung', 18),
(111, 'Gabek', 15),
(112, 'Dendang', 18),
(113, 'Damar', 18),
(114, 'Bukit Intan', 15),
(115, 'Belinyu', 17),
(116, 'Bakam', 17),
(117, 'Badau', 14),
(118, 'Air Gegas', 12),
(119, 'Warunggunung', 19),
(120, 'Waringin Kurung', 20),
(121, 'Wanasalam', 19),
(122, 'Walantaka', 20),
(123, 'Tunjung Teja', 20),
(124, 'Tirtayasa', 20),
(125, 'Tigaraksa', 21),
(126, 'Teluknaga', 21),
(127, 'Tangerang', 21),
(128, 'Tanara', 20),
(129, 'Taktakan', 20),
(130, 'Sumur', 22),
(131, 'Sukaresmi', 22),
(132, 'Sukamulya', 21),
(133, 'Sukadiri', 21),
(134, 'Solear', 21),
(135, 'Sobang', 22),
(136, 'Sindangresmi', 22),
(137, 'Sindang Jaya', 21),
(138, 'Setu', 23),
(139, 'Serpong Utara', 23),
(140, 'Serpong', 23),
(141, 'Serang', 20),
(142, 'Sepatan Timur', 21),
(143, 'Sepatan', 21),
(144, 'Saketi', 22),
(145, 'Sajira', 19),
(146, 'Rangkasbitung', 19),
(147, 'Rajeg', 21),
(148, 'Purwakarta', 24),
(149, 'Pulosari', 22),
(150, 'Pulomerak', 24),
(151, 'Pulo Ampel', 20),
(152, 'Pontang', 20),
(153, 'Pondok Aren', 23),
(154, 'Pinang (Penang)', 21),
(155, 'Picung', 22),
(156, 'Petir', 20),
(157, 'Periuk', 21),
(158, 'Patia', 22),
(159, 'Pasar Kemis', 21),
(160, 'Panongan', 21),
(161, 'Panimbang', 22),
(162, 'Panggarangan', 19),
(163, 'Pandeglang', 22),
(164, 'Pamulang', 23),
(165, 'Pamarayan', 20),
(166, 'Pakuhaji', 21),
(167, 'Pagelaran', 22),
(168, 'Pagedangan', 21),
(169, 'Padarincang', 20),
(170, 'Pabuaran', 20),
(171, 'Neglasari', 21),
(172, 'Munjul', 22),
(173, 'Muncang', 19),
(174, 'Menes', 22),
(175, 'Mekarjaya', 22),
(176, 'Mekar Baru', 21),
(177, 'Mauk', 21),
(178, 'Mandalawangi', 22),
(179, 'Mancak', 20),
(180, 'Malingping', 19),
(181, 'Majasari', 22),
(182, 'Maja', 19),
(183, 'Leuwidamar', 19),
(184, 'Legok', 21),
(185, 'Lebakgedong', 19),
(186, 'Lebak Wangi', 20),
(187, 'Larangan', 21),
(188, 'Labuan', 22),
(189, 'Kronjo', 21),
(190, 'Kresek', 21),
(191, 'Kramatwatu', 20),
(192, 'Kragilan', 20),
(193, 'Kosambi', 21),
(194, 'Koroncong', 22),
(195, 'Kopo', 20),
(196, 'Kibin', 20),
(197, 'Kemiri', 21),
(198, 'Kelapa Dua', 21),
(199, 'Kasemen', 20),
(200, 'Karawaci', 21),
(201, 'Karang Tengah', 21),
(202, 'Karang Tanjung', 22),
(203, 'Kalanganyar', 19),
(204, 'Kaduhejo', 22),
(205, 'Jombang', 24),
(206, 'Jiput', 22),
(207, 'Jayanti', 21),
(208, 'Jawilan', 20),
(209, 'Jatiuwung', 21),
(210, 'Jambe', 21),
(211, 'Gunungsari', 20),
(212, 'Gunung Kencana', 19),
(213, 'Gunung Kaler', 21),
(214, 'Gerogol', 24),
(215, 'Curugbitung', 19),
(216, 'Curug', 21),
(217, 'Ciwandan', 24),
(218, 'Citangkil', 24),
(219, 'Cisoka', 21),
(220, 'Cisauk', 21),
(221, 'Cisata', 22),
(222, 'Ciruas', 20),
(223, 'Cirinten', 19),
(224, 'Ciputat Timur', 23),
(225, 'Ciputat', 23),
(226, 'Cipondoh', 21),
(227, 'Cipocok Jaya', 20),
(228, 'Cipeucang', 22),
(229, 'Cipanas', 19),
(230, 'Ciomas', 20),
(231, 'Cinangka', 20),
(232, 'Cimarga', 19),
(233, 'Cimanuk', 22),
(234, 'Cimanggu', 22),
(235, 'Cilograng', 19),
(236, 'Cileles', 19),
(237, 'Cilegon', 24),
(238, 'Ciledug', 21),
(239, 'Cikupa', 21),
(240, 'Cikulur', 19),
(241, 'Cikeusik', 22),
(242, 'Cikeusal', 20),
(243, 'Cikeudal (Cikedal)', 22),
(244, 'Cikande', 20),
(245, 'Cijaku', 19),
(246, 'Cihara', 19),
(247, 'Cigeulis', 22),
(248, 'Cigemblong', 19),
(249, 'Cibodas', 21),
(250, 'Cibitung', 22),
(251, 'Cibeber', 24),
(252, 'Cibaliung', 22),
(253, 'Cibadak', 19),
(254, 'Carita', 22),
(255, 'Carenang (Cerenang)', 20),
(256, 'Cadasari', 22),
(257, 'Bojongmanik', 19),
(258, 'Bojong', 22),
(259, 'Bojonegara', 20),
(260, 'Binuang', 20),
(261, 'Benda', 21),
(262, 'Bayah', 19),
(263, 'Batuceper', 21),
(264, 'Baros', 20),
(265, 'Banjarsari', 19),
(266, 'Bandung', 20),
(267, 'Balaraja', 21),
(268, 'Anyar', 20),
(269, 'Angsana', 22),
(270, 'Talo', 25),
(271, 'Talang Empat', 26),
(272, 'Taba Penanjung', 26),
(273, 'Sungai Serut', 27),
(274, 'Sungai Rumbai', 28),
(275, 'Sukaraja', 25),
(276, 'Singaran Pati', 27),
(277, 'Sindang Kelingi', 29),
(278, 'Sindang Daratan', 29),
(279, 'Sindang Beliti Ulu', 29),
(280, 'Sindang Beliti Ilir', 29),
(281, 'Semidang Gumai (Gumay)', 30),
(282, 'Semidang Alas Maras', 25),
(283, 'Semidang Alas', 25),
(284, 'Selupu Rejang', 29),
(285, 'Seluma Utara', 25),
(286, 'Seluma Timur', 25),
(287, 'Seluma Selatan', 25),
(288, 'Seluma Barat', 25),
(289, 'Seluma', 25),
(290, 'Selebar', 27),
(291, 'Selagan Raya', 28),
(292, 'Seginim', 31),
(293, 'Seberang Musi', 32),
(294, 'Rimbo Pengadang', 33),
(295, 'Ratu Samban', 27),
(296, 'Ratu Agung', 27),
(297, 'Putri Hijau', 34),
(298, 'Pondok Suguh', 28),
(299, 'Pondok Kubang', 26),
(300, 'Pondok Kelapa', 26),
(301, 'Pinoraya', 31),
(302, 'Pino', 31),
(303, 'Pinang Belapis', 33),
(304, 'Penarik', 28),
(305, 'Pematang Tiga', 26),
(306, 'Pelabai', 33),
(307, 'Pasar Manna', 31),
(308, 'Pagar Jati', 26),
(309, 'Padang Ulak Tanding', 29),
(310, 'Padang Jaya', 34),
(311, 'Padang Guci Hulu', 30),
(312, 'Padang Guci Hilir', 30),
(313, 'Nasal', 30),
(314, 'Napal Putih', 34),
(315, 'Muara Sahung', 30),
(316, 'Muara Kemumu', 32),
(317, 'Muara Bangka Hulu', 27),
(318, 'Merigi Sakti', 26),
(319, 'Merigi Kelindang', 26),
(320, 'Merigi', 32),
(321, 'Manna', 31),
(322, 'Malin Deman', 28),
(323, 'Maje', 30),
(324, 'Lungkang Kule', 30),
(325, 'Lubuk Sandi', 25),
(326, 'Lubuk Pinang', 28),
(327, 'Luas', 30),
(328, 'Lebong Utara', 33),
(329, 'Lebong Tengah', 33),
(330, 'Lebong Selatan', 33),
(331, 'Lebong Sakti', 33),
(332, 'Lebong Atas', 33),
(333, 'Lais', 34),
(334, 'Kota Padang', 29),
(335, 'Kota Mukomuko (Mukomuko Utara)', 28),
(336, 'Kota Manna', 31),
(337, 'Kinal', 30),
(338, 'Ketahun', 34),
(339, 'Kerkap', 34),
(340, 'Kepahiang', 32),
(341, 'Kelam Tengah', 30),
(342, 'Kedurang Ilir', 31),
(343, 'Kedurang', 31),
(344, 'Kebawetan', 32),
(345, 'Kaur Utara', 30),
(346, 'Kaur Tengah', 30),
(347, 'Kaur Selatan', 30),
(348, 'Karang Tinggi', 26),
(349, 'Kampung Melayu', 27),
(350, 'Ipuh (Muko-Muko Selatan)', 28),
(351, 'Ilir Talo', 25),
(352, 'Hulu Palik', 34),
(353, 'Giri Mulia', 34),
(354, 'Gading Cempaka', 27),
(355, 'Enggano', 34),
(356, 'Curup Utara', 29),
(357, 'Curup Timur', 29),
(358, 'Curup Tengah', 29),
(359, 'Curup Selatan', 29),
(360, 'Curup', 29),
(361, 'Bunga Mas', 31),
(362, 'Bingin Kuning', 33),
(363, 'Binduriang', 29),
(364, 'Bermani Ulu Raya', 29),
(365, 'Bermani Ulu', 29),
(366, 'Bermani Ilir', 32),
(367, 'Batik Nau', 34),
(368, 'Bang Haji', 26),
(369, 'Arma Jaya', 34),
(370, 'Arga Makmur', 34),
(371, 'Amen', 33),
(372, 'Air Rami', 28),
(373, 'Air Periukan', 25),
(374, 'Air Padang', 34),
(375, 'Air Nipis', 31),
(376, 'Air Napal', 34),
(377, 'Air Majunto', 28),
(378, 'Air Dikit', 28),
(379, 'Air Besi', 34),
(380, 'Wonosari', 35),
(381, 'Wirobrajan', 36),
(382, 'Wates', 37),
(383, 'Umbulharjo', 36),
(384, 'Turi', 38),
(385, 'Tepus', 35),
(386, 'Tempel', 38),
(387, 'Temon', 37),
(388, 'Tegalrejo', 36),
(389, 'Tanjungsari', 35),
(390, 'Srandakan', 39),
(391, 'Sleman', 38),
(392, 'Seyegan', 38),
(393, 'Sewon', 39),
(394, 'Sentolo', 37),
(395, 'Semin', 35),
(396, 'Semanu', 35),
(397, 'Sedayu', 39),
(398, 'Sapto Sari', 35),
(399, 'Sanden', 39),
(400, 'Samigaluh', 37),
(401, 'Rongkop', 35),
(402, 'Purwosari', 35),
(403, 'Pundong', 39),
(404, 'Prambanan', 38),
(405, 'Ponjong', 35),
(406, 'Pleret', 39),
(407, 'Playen', 35),
(408, 'Piyungan', 39),
(409, 'Pengasih', 37),
(410, 'Patuk', 35),
(411, 'Panjatan', 37),
(412, 'Panggang', 35),
(413, 'Pandak', 39),
(414, 'Paliyan', 35),
(415, 'Pakualaman', 36),
(416, 'Pakem', 38),
(417, 'Pajangan', 39),
(418, 'Nglipar', 35),
(419, 'Ngemplak', 38),
(420, 'Ngawen', 35),
(421, 'Ngampilan', 36),
(422, 'Ngaglik', 38),
(423, 'Nanggulan', 37),
(424, 'Moyudan', 38),
(425, 'Mlati', 38),
(426, 'Minggir', 38),
(427, 'Mergangsan', 36),
(428, 'Mantrijeron', 36),
(429, 'Lendah', 37),
(430, 'Kretek', 39),
(431, 'Kraton', 36),
(432, 'Kotagede', 36),
(433, 'Kokap', 37),
(434, 'Kasihan', 39),
(435, 'Karangmojo', 35),
(436, 'Kalibawang', 37),
(437, 'Kalasan', 38),
(438, 'Jetis', 36),
(439, 'Imogiri', 39),
(440, 'Gondomanan', 36),
(441, 'Gondokusuman', 36),
(442, 'Godean', 38),
(443, 'Girisubo', 35),
(444, 'Girimulyo', 37),
(445, 'Gedong Tengen', 36),
(446, 'Gedang Sari', 35),
(447, 'Gamping', 38),
(448, 'Galur', 37),
(449, 'Dlingo', 39),
(450, 'Depok', 38),
(451, 'Danurejan', 36),
(452, 'Cangkringan', 38),
(453, 'Berbah', 38),
(454, 'Bantul', 39),
(455, 'Banguntapan', 39),
(456, 'Bambang Lipuro', 39),
(457, 'Tebet', 40),
(458, 'Tanjung Priok', 41),
(459, 'Tanah Abang', 42),
(460, 'Tambora', 43),
(461, 'Setia Budi', 40),
(462, 'Senen', 42),
(463, 'Sawah Besar', 42),
(464, 'Pulo Gadung', 44),
(465, 'Pesanggrahan', 40),
(466, 'Penjaringan', 41),
(467, 'Pasar Rebo', 44),
(468, 'Pasar Minggu', 40),
(469, 'Pancoran', 40),
(470, 'Palmerah', 43),
(471, 'Pademangan', 41),
(472, 'Menteng', 42),
(473, 'Matraman', 44),
(474, 'Mampang Prapatan', 40),
(475, 'Makasar', 44),
(476, 'Kramat Jati', 44),
(477, 'Koja', 41),
(478, 'Kepulauan Seribu Utara', 45),
(479, 'Kepulauan Seribu Selatan', 45),
(480, 'Kembangan', 43),
(481, 'Kemayoran', 42),
(482, 'Kelapa Gading', 41),
(483, 'Kebon Jeruk', 43),
(484, 'Kebayoran Lama', 40),
(485, 'Kebayoran Baru', 40),
(486, 'Kalideres', 43),
(487, 'Johar Baru', 42),
(488, 'Jatinegara', 44),
(489, 'Jagakarsa', 40),
(490, 'Grogol Petamburan', 43),
(491, 'Gambir', 42),
(492, 'Duren Sawit', 44),
(493, 'Ciracas', 44),
(494, 'Cipayung', 44),
(495, 'Cilincing', 41),
(496, 'Cilandak', 40),
(497, 'Cengkareng', 43),
(498, 'Cempaka Putih', 42),
(499, 'Cakung', 44),
(500, 'Wanggarasi', 47),
(501, 'Tomolito', 48),
(502, 'Tolinggula', 48),
(503, 'Tolangohula', 49),
(504, 'Tilongkabila', 50),
(505, 'Tilango', 49),
(506, 'Tilamuta', 46),
(507, 'Tibawa', 49),
(508, 'Telaga Jaya', 49),
(509, 'Telaga Biru', 49),
(510, 'Telaga', 49),
(511, 'Tapa', 50),
(512, 'Taluditi (Taluduti)', 47),
(513, 'Tabongo', 49),
(514, 'Suwawa Timur', 50),
(515, 'Suwawa Tengah', 50),
(516, 'Suwawa Selatan', 50),
(517, 'Suwawa', 50),
(518, 'Sumalata Timur', 48),
(519, 'Sumalata', 48),
(520, 'Sipatana', 49),
(521, 'Randangan', 47),
(522, 'Pulubala', 49),
(523, 'Popayato Timur', 47),
(524, 'Popayato Barat', 47),
(525, 'Popayato', 47),
(526, 'Ponelo Kepulauan', 48),
(527, 'Pinogu', 50),
(528, 'Patilanggio', 47),
(529, 'Paguyaman Pantai', 46),
(530, 'Paguyaman', 46),
(531, 'Paguat', 47),
(532, 'Mootilango', 49),
(533, 'Monano', 48),
(534, 'Marisa', 47),
(535, 'Mananggu', 46),
(536, 'Limboto Barat', 49),
(537, 'Limboto', 49),
(538, 'Lemito', 47),
(539, 'Kwandang', 48),
(540, 'Kota Utara', 49),
(541, 'Kota Timur', 49),
(542, 'Kota Tengah', 49),
(543, 'Kota Selatan', 49),
(544, 'Kota Barat', 49),
(545, 'Kabila Bone', 50),
(546, 'Kabila', 50),
(547, 'Hulonthalangi', 49),
(548, 'Gentuma Raya', 48),
(549, 'Dungingi', 49),
(550, 'Dungaliyo', 49),
(551, 'Dumbo Raya', 49),
(552, 'Dulupi', 46),
(553, 'Duhiadaa', 47),
(554, 'Dengilo', 47),
(555, 'Buntulia', 47),
(556, 'Bulawa', 50),
(557, 'Bulango Utara', 50),
(558, 'Bulango Ulu', 50),
(559, 'Bulango Timur', 50),
(560, 'Bulango Selatan', 50),
(561, 'Botumoita', 46),
(562, 'Botu Pingge', 50),
(563, 'Bongomeme', 49),
(564, 'Bonepantai', 50),
(565, 'Bone Raya', 50),
(566, 'Bone', 50),
(567, 'Boliohuto (Boliyohuto)', 49),
(568, 'Biluhu', 49),
(569, 'Bilato', 49),
(570, 'Biau', 48),
(571, 'Batudaa Pantai', 49),
(572, 'Batudaa', 49),
(573, 'Atinggola', 48),
(574, 'Asparaga', 49),
(575, 'Anggrek', 48),
(576, 'VII Koto Ilir', 51),
(577, 'VII Koto', 51),
(578, 'Tungkal Ulu', 52),
(579, 'Tungkal Ilir', 52),
(580, 'Tiang Pumpung', 53),
(581, 'Tengah Ilir', 51),
(582, 'Telanaipura', 54),
(583, 'Tebo Ulu', 51),
(584, 'Tebo Tengah', 51),
(585, 'Tebo Ilir', 51),
(586, 'Tebing Tinggi', 52),
(587, 'Tanah Tumbuh', 55),
(588, 'Tanah Sepenggal Lintas', 55),
(589, 'Tanah Sepenggal', 55),
(590, 'Tanah Kampung', 56),
(591, 'Taman Rajo', 57),
(592, 'Tabir Ulu', 53),
(593, 'Tabir Timur', 53),
(594, 'Tabir Selatan', 53),
(595, 'Tabir Lintas', 53),
(596, 'Tabir Ilir', 53),
(597, 'Tabir Barat', 53),
(598, 'Tabir', 53),
(599, 'Sungai Tenang', 53),
(600, 'Sungai Penuh', 56),
(601, 'Sungai Manau', 53),
(602, 'Sungai Gelam', 57),
(603, 'Sungai Bungkal', 56),
(604, 'Sungai Bahar', 57),
(605, 'Sumay', 51),
(606, 'Siulak Mukai', 58),
(607, 'Siulak', 58),
(608, 'Sitinjau Laut', 58),
(609, 'Singkut', 59),
(610, 'Serai Serumpun', 51),
(611, 'Senyerang', 52),
(612, 'Sekernan', 57),
(613, 'Seberang Kota', 52),
(614, 'Sarolangun', 59),
(615, 'Sadu', 60),
(616, 'Rimbo Ulu', 51),
(617, 'Rimbo Tengah', 55),
(618, 'Rimbo Ilir', 51),
(619, 'Rimbo Bujang', 51),
(620, 'Renah Pemenang', 53),
(621, 'Renah Pembarap', 53),
(622, 'Renah Mendaluh', 52),
(623, 'Rantau Rasau', 60),
(624, 'Rantau Pandan', 55),
(625, 'Pondok Tinggi', 56),
(626, 'Pesisir Bukit', 56),
(627, 'Pengabuan', 52),
(628, 'Pemayung', 61),
(629, 'Pelepat Ilir', 55),
(630, 'Pelepat', 55),
(631, 'Pelayangan', 54),
(632, 'Pelawan', 59),
(633, 'Pauh', 59),
(634, 'Pasar Muara Bungo', 55),
(635, 'Pasar Jambi', 54),
(636, 'Pangkalan Jambu', 53),
(637, 'Pamenang Selatan', 53),
(638, 'Pamenang Barat', 53),
(639, 'Pamenang', 53),
(640, 'Nipah Panjang', 60),
(641, 'Nalo Tantan', 53),
(642, 'Muko-Muko Batin VII', 55),
(643, 'Muara Tembesi', 61),
(644, 'Muara Tabir', 51),
(645, 'Muara Siau', 53),
(646, 'Muara Sabak Timur', 60),
(647, 'Muara Sabak Barat', 60),
(648, 'Muara Papalik', 52),
(649, 'Muara Bulian', 61),
(650, 'Mestong', 57),
(651, 'Mersam', 61),
(652, 'Merlung', 52),
(653, 'Mendahara Ulu', 60),
(654, 'Mendahara', 60),
(655, 'Maro Sebo Ulu', 61),
(656, 'Maro Sebo Ilir', 61),
(657, 'Maro Sebo', 57),
(658, 'Margo Tabir', 53),
(659, 'Mandiangin', 59),
(660, 'Limun', 59),
(661, 'Limbur Lubuk Mengkuang', 55),
(662, 'Lembah Masurai', 53),
(663, 'Kumun Debai', 56),
(664, 'Kumpeh Ulu', 57),
(665, 'Kumpeh', 57),
(666, 'Kuala Jambi', 60),
(667, 'Kuala Betara', 52),
(668, 'Koto Baru', 56),
(669, 'Kota Baru', 54),
(670, 'Keliling Danau', 58),
(671, 'Kayu Aro Barat', 58),
(672, 'Kayu Aro', 58),
(673, 'Jujuhan Ilir', 55),
(674, 'Jujuhan', 55),
(675, 'Jelutung', 54),
(676, 'Jangkat', 53),
(677, 'Jambi Timur', 54),
(678, 'Jambi Selatan', 54),
(679, 'Jambi Luar Kota', 57),
(680, 'Hamparan Rawang', 56),
(681, 'Gunung Tujuh', 58),
(682, 'Gunung Raya', 58),
(683, 'Gunung Kerinci', 58),
(684, 'Geragai', 60),
(685, 'Depati Tujuh', 58),
(686, 'Danau Teluk', 54),
(687, 'Danau Kerinci', 58),
(688, 'Cermin Nan Gadang', 59),
(689, 'Bungo Dani', 55),
(690, 'Bukitkerman', 58),
(691, 'Bram Itam', 52),
(692, 'Betara', 52),
(693, 'Berbak', 60),
(694, 'Batin XXIV', 61),
(695, 'Bathin VIII (Batin VIII)', 59),
(696, 'Bathin III Ulu', 55),
(697, 'Bathin III', 55),
(698, 'Bathin II Pelayang', 55),
(699, 'Bathin II Babeko', 55),
(700, 'Batang Merangin', 58),
(701, 'Batang Masumai', 53),
(702, 'Batang Asam', 52),
(703, 'Batang Asai', 59),
(704, 'Bangko Barat', 53),
(705, 'Bangko', 53),
(706, 'Bajubang', 61),
(707, 'Bahar Utara', 57),
(708, 'Bahar Selatan', 57),
(709, 'Air Hitam', 59),
(710, 'Air Hangat Timur', 58),
(711, 'Air Hangat Barat', 58),
(712, 'Air Hangat', 58),
(713, 'Widasari', 62),
(714, 'Weru', 63),
(715, 'Warungkondang', 64),
(716, 'Warungkiara', 65),
(717, 'Warudoyong', 65),
(718, 'Wanayasa', 66),
(719, 'Wanaraja', 67),
(720, 'Waluran', 65),
(721, 'Waled', 63),
(722, 'Wado', 68),
(723, 'Ujungjaya', 68),
(724, 'Ujung Berung', 69),
(725, 'Tukdana', 62),
(726, 'Trisi/Terisi', 62),
(727, 'Tomo', 68),
(728, 'Tirtamulya', 70),
(729, 'Tirtajaya', 70),
(730, 'Tenjolaya', 71),
(731, 'Tenjo', 71),
(732, 'Tengah Tani', 63),
(733, 'Tempuran', 70),
(734, 'Telukjambe Timur', 70),
(735, 'Telukjambe Barat', 70),
(736, 'Tegalwaru', 70),
(737, 'Tegalbuleud', 65),
(738, 'Tegal Waru', 66),
(739, 'Tawang', 72),
(740, 'Tarumajaya', 73),
(741, 'Tarogong Kidul', 67),
(742, 'Tarogong Kaler', 67),
(743, 'Taraju', 72),
(744, 'Tapos', 74),
(745, 'Tanjungsiang', 75),
(746, 'Tanjungmedar', 68),
(747, 'Tanjungkerta', 68),
(748, 'Tanjungjaya', 72),
(749, 'Tanggeung', 64),
(750, 'Tanah Sereal', 71),
(751, 'Tambun Utara', 73),
(752, 'Tambun Selatan', 73),
(753, 'Tambelang', 73),
(754, 'Tambaksari', 76),
(755, 'Tambakdahan', 75),
(756, 'Tamansari', 72),
(757, 'Talun (Cirebon Selatan)', 63),
(758, 'Talegong', 67),
(759, 'Talagasari', 70),
(760, 'Talaga', 77),
(761, 'Takokak', 64),
(762, 'Tajurhalang', 71),
(763, 'Susukan Lebak', 63),
(764, 'Susukan', 63),
(765, 'Surian', 68),
(766, 'Suranenggala', 63),
(767, 'Surade', 65),
(768, 'Sumur Bandung', 69),
(769, 'Sumedang Utara', 68),
(770, 'Sumedang Selatan', 68),
(771, 'Sumberjaya', 77),
(772, 'Sumber', 63),
(773, 'Sukra', 62),
(774, 'Sukmajaya', 74),
(775, 'Sukawening', 67),
(776, 'Sukawangi', 73),
(777, 'Sukatani', 73),
(778, 'Sukasari', 75),
(779, 'Sukaresik', 72),
(780, 'Sukaratu', 72),
(781, 'Sukarame', 72),
(782, 'Sukanagara', 64),
(783, 'Sukamantri', 76),
(784, 'Sukamakmur', 71),
(785, 'Sukaluyu', 64),
(786, 'Sukalarang', 65),
(787, 'Sukakarya', 73),
(788, 'Sukajaya', 71),
(789, 'Sukajadi', 69),
(790, 'Sukahening', 72),
(791, 'Sukahaji', 77),
(792, 'Sukagumiwang', 62),
(793, 'Sukadana', 76),
(794, 'Sukabumi', 65),
(795, 'Sucinaraja', 67),
(796, 'Subang', 78),
(797, 'Soreang', 69),
(798, 'Solokan Jeruk', 69),
(799, 'Sodonghilir', 72),
(800, 'Sliyeg', 62),
(801, 'Situraja', 68),
(802, 'Singaparna', 72),
(803, 'Singajaya', 67),
(804, 'Sindangwangi', 77),
(805, 'Sindangkerta', 79),
(806, 'Sindangkasih', 76),
(807, 'Sindangbarang', 64),
(808, 'Sindangagung', 78),
(809, 'Sindang', 62),
(810, 'Simpenan', 65),
(811, 'Sidamulih', 80),
(812, 'Serangpanjang', 75),
(813, 'Serang Baru', 73),
(814, 'Selajambe', 78),
(815, 'Selaawi', 67),
(816, 'Sedong', 63),
(817, 'Sawangan', 74),
(818, 'Sariwangi', 72),
(819, 'Samarang', 67),
(820, 'Salopa', 72),
(821, 'Salawu', 72),
(822, 'Saguling', 79),
(823, 'Sagaranten', 65),
(824, 'Sagalaherang', 75),
(825, 'Sadananya', 76),
(826, 'Rumpin', 71),
(827, 'Rongga', 79),
(828, 'Rengasdengklok', 70),
(829, 'Regol', 69),
(830, 'Rawamerta', 70),
(831, 'Rawalumbu', 73),
(832, 'Rancasari', 69),
(833, 'Rancakalong', 68),
(834, 'Rancah', 76),
(835, 'Rancaekek', 69),
(836, 'Ranca Bungur', 71),
(837, 'Ranca Bali', 69),
(838, 'Rajapolah', 72),
(839, 'Rajagaluh', 77),
(840, 'Rajadesa', 76),
(841, 'Puspahiang', 72),
(842, 'Pusakanagara', 75),
(843, 'Pusakajaya', 75),
(844, 'Purwasari', 70),
(845, 'Purwaharja', 81),
(846, 'Purwadadi', 76),
(847, 'Purbaratu', 72),
(848, 'Purabaya', 65),
(849, 'Pondoksalam', 66),
(850, 'Pondok Melati', 73),
(851, 'Pondok Gede', 73),
(852, 'Plumbon', 63),
(853, 'Plered', 66),
(854, 'Peundeuy', 67),
(855, 'Pelabuhanratu', 65),
(856, 'Pekalipan', 63),
(857, 'Pedes', 70),
(858, 'Pebayuran', 73),
(859, 'Patrol', 62),
(860, 'Patokbeusi', 75),
(861, 'Pataruman', 81),
(862, 'Pasirwangi', 67),
(863, 'Pasirkuda', 64),
(864, 'Pasirjambu', 69),
(865, 'Pasekan', 62),
(866, 'Paseh', 68),
(867, 'Pasawahan', 78),
(868, 'Pasaleman', 63),
(869, 'Parungponteng', 72),
(870, 'Parung Panjang', 71),
(871, 'Parung Kuda', 65),
(872, 'Parung', 71),
(873, 'Parongpong', 79),
(874, 'Parigi', 80),
(875, 'Parakan Salak', 65),
(876, 'Panyingkiran', 77),
(877, 'Panyileukan', 69),
(878, 'Panumbangan', 76),
(879, 'Panjalu', 76),
(880, 'Panguragan', 63),
(881, 'Pangkalan', 70),
(882, 'Pangenan', 63),
(883, 'Pangatikan', 67),
(884, 'Pangandaran', 80),
(885, 'Pangalengan', 69),
(886, 'Pancoran Mas', 74),
(887, 'Pancatengah', 72),
(888, 'Pancalang', 78),
(889, 'Panawangan', 76),
(890, 'Pamulihan', 68),
(891, 'Pamijahan', 71),
(892, 'Pameungpeuk', 67),
(893, 'Pamarican', 76),
(894, 'Pamanukan', 75),
(895, 'Palimanan', 63),
(896, 'Palasah', 77),
(897, 'Pakisjaya', 70),
(898, 'Pakenjeng', 67),
(899, 'Pagerageung', 72),
(900, 'Pagaden Barat', 75),
(901, 'Pagaden', 75),
(902, 'Padalarang', 79),
(903, 'Padakembang', 72),
(904, 'Padaherang', 80),
(905, 'Pacet', 64),
(906, 'Pabedilan', 63),
(907, 'Nyalindung', 65),
(908, 'Nusaherang', 78),
(909, 'Ngamprah', 79),
(910, 'Naringgul', 64),
(911, 'Nanggung', 71),
(912, 'Nagreg', 69),
(913, 'Nagrak', 65),
(914, 'Mustika Jaya', 73),
(915, 'Mundu', 63),
(916, 'Muara Gembong', 73),
(917, 'Mekarmukti', 67),
(918, 'Megamendung', 71),
(919, 'Medan Satria', 73),
(920, 'Margahayu', 69),
(921, 'Margaasih', 69),
(922, 'Manonjaya', 72),
(923, 'Maniis', 66),
(924, 'Mangunreja', 72),
(925, 'Mangunjaya', 80),
(926, 'Mangkubumi', 72),
(927, 'Mandirancan', 78),
(928, 'Mande', 64),
(929, 'Mandalajati', 69),
(930, 'Maleber', 78),
(931, 'Malausma', 77),
(932, 'Malangbong', 67),
(933, 'Majalengka', 77),
(934, 'Majalaya', 70),
(935, 'Luragung', 78),
(936, 'Lumbung', 76),
(937, 'Losari', 63),
(938, 'Losarang', 62),
(939, 'Lohbener', 62),
(940, 'Limo', 74),
(941, 'Ligung', 77),
(942, 'Leuwisari', 72),
(943, 'Leuwisadeng', 71),
(944, 'Leuwimunding', 77),
(945, 'Leuwiliang', 71),
(946, 'Leuwigoong', 67),
(947, 'Lengkong', 69),
(948, 'Lembursitu', 65),
(949, 'Lembang', 79),
(950, 'Lemahwungkuk', 63),
(951, 'Lemahsugih', 77),
(952, 'Lemahabang', 63),
(953, 'Leles', 67),
(954, 'Lelea', 62),
(955, 'Legonkulon', 75),
(956, 'Lebakwangi', 78),
(957, 'Langkaplancar', 80),
(958, 'Langensari', 81),
(959, 'Lakbok', 76),
(960, 'Kutawaringin', 69),
(961, 'Kutawaluya', 70),
(962, 'Kuningan', 78),
(963, 'Kroya', 62),
(964, 'Krangkeng', 62),
(965, 'Kramat Mulya', 78),
(966, 'Kotabaru', 70),
(967, 'Klari', 70),
(968, 'Klapanunggal', 71),
(969, 'Klangenan', 63),
(970, 'Kiarapedes', 66),
(971, 'Kiaracondong', 69),
(972, 'Kesambi', 63),
(973, 'Kertasemaya', 62),
(974, 'Kertasari', 69),
(975, 'Kertajati', 77),
(976, 'Kersamanah', 67),
(977, 'Kemang', 71),
(978, 'Kejaksan', 63),
(979, 'Kedung Waringin', 73),
(980, 'Kedokan Bunder', 62),
(981, 'Kedawung', 63),
(982, 'Kebonpedes', 65),
(983, 'Kawalu', 72),
(984, 'Kawali', 76),
(985, 'Katapang', 69),
(986, 'Kasomalang', 75),
(987, 'Kasokandel', 77),
(988, 'Karawang Timur', 70),
(989, 'Karawang Barat', 70),
(990, 'Karangwareng', 63),
(991, 'Karangtengah', 64),
(992, 'Karangsembung', 63),
(993, 'Karangpawitan', 67),
(994, 'Karangnunggal', 72),
(995, 'Karangkancana', 78),
(996, 'Karangbahagia', 73),
(997, 'Karangampel', 62),
(998, 'Karang Jaya', 72),
(999, 'Kapetakan', 63),
(1000, 'Kandanghaur', 62),
(1001, 'Kaliwedi', 63),
(1002, 'Kalipucang', 80),
(1003, 'Kalimanggis', 78),
(1004, 'Kalijati', 75),
(1005, 'Kalibunder', 65),
(1006, 'Kalapa Nunggal', 65),
(1007, 'Kadupandak', 64),
(1008, 'Kadungora', 67),
(1009, 'Kadugede', 78),
(1010, 'Kadudampit', 65),
(1011, 'Kadipaten', 77),
(1012, 'Kabandungan', 65),
(1013, 'Juntinyuat', 62),
(1014, 'Jonggol', 71),
(1015, 'Jayakerta', 70),
(1016, 'Jatiwaras', 72),
(1017, 'Jatiwangi', 77),
(1018, 'Jatitujuh', 77),
(1019, 'Jatisari', 70),
(1020, 'Jatinunggal', 68),
(1021, 'Jatinangor', 68),
(1022, 'Jatinagara', 76),
(1023, 'Jatiluhur', 66),
(1024, 'Jatigede', 68),
(1025, 'Jatibarang', 62),
(1026, 'Jatiasih', 73),
(1027, 'Jati Sampurna', 73),
(1028, 'Jasinga', 71),
(1029, 'Japara', 78),
(1030, 'Jampang Tengah', 65),
(1031, 'Jampang Kulon', 65),
(1032, 'Jamblang', 63),
(1033, 'Jamanis', 72),
(1034, 'Jalancagak', 75),
(1035, 'Jalaksana', 78),
(1036, 'Indramayu', 62),
(1037, 'Indihiang', 72),
(1038, 'Ibun', 69),
(1039, 'Haurwangi', 64),
(1040, 'Haurgeulis', 62),
(1041, 'Harjamukti', 63),
(1042, 'Hantara', 78),
(1043, 'Gununghalu', 79),
(1044, 'Gunungguruh', 65),
(1045, 'Gunung Tanjung', 72),
(1046, 'Gunung Sindur', 71),
(1047, 'Gunung Puyuh', 65),
(1048, 'Gunung Putri', 71),
(1049, 'Gunung Jati (Cirebon Utara)', 63),
(1050, 'Greged (Greget)', 63),
(1051, 'Gempol', 63),
(1052, 'Gekbrong', 64),
(1053, 'Gegesik', 63),
(1054, 'Geger Bitung', 65),
(1055, 'Gedebage', 69),
(1056, 'Gebang', 63),
(1057, 'Garut Kota', 67),
(1058, 'Garawangi', 78),
(1059, 'Gantar', 62),
(1060, 'Ganeas', 68),
(1061, 'Gabuswetan', 62),
(1062, 'Dukupuntang', 63),
(1063, 'Dramaga', 71),
(1064, 'Dayeuhkolot', 69),
(1065, 'Dawuan', 77),
(1066, 'Darmaraja', 68),
(1067, 'Darma', 78),
(1068, 'Darangdan', 66),
(1069, 'Curugkembar', 65),
(1070, 'Culamega', 72),
(1071, 'Cugenang', 64),
(1072, 'Conggeang', 68),
(1073, 'Compreng', 75),
(1074, 'Coblong', 69),
(1075, 'Ciwidey', 69),
(1076, 'Ciwaru', 78),
(1077, 'Ciwaringin', 63),
(1078, 'Citeureup', 71),
(1079, 'Citamiang', 65),
(1080, 'Cisurupan', 67),
(1081, 'Cisompet', 67),
(1082, 'Cisolok', 65),
(1083, 'Cisitu', 68),
(1084, 'Cisewu', 67),
(1085, 'Ciseeng', 71),
(1086, 'Cisayong', 72),
(1087, 'Cisarua', 68),
(1088, 'Cisalak', 75),
(1089, 'Cisaga', 76),
(1090, 'Cisaat', 65),
(1091, 'Cireunghas', 65),
(1092, 'Ciranjang', 64),
(1093, 'Ciracap', 65),
(1094, 'Cipunagara', 75),
(1095, 'Cipongkor', 79),
(1096, 'Cipicung', 78),
(1097, 'Cipeundeuy', 75),
(1098, 'Cipedes', 72),
(1099, 'Cipatujah', 72),
(1100, 'Cipatat', 79),
(1101, 'Ciparay', 69),
(1102, 'Cipaku', 76),
(1103, 'Ciniru', 78),
(1104, 'Cingambul', 77),
(1105, 'Cinere', 74),
(1106, 'Cineam', 72),
(1107, 'Cinambo', 69),
(1108, 'Cimeunyan', 69),
(1109, 'Cimerak', 80),
(1110, 'Cimaung', 69),
(1111, 'Cimaragas', 76),
(1112, 'Cimanggung', 68),
(1113, 'Cimanggis', 74),
(1114, 'Cimalaka', 68),
(1115, 'Cimahi Utara', 82),
(1116, 'Cimahi Tengah', 82),
(1117, 'Cimahi Selatan', 82),
(1118, 'Cimahi', 78),
(1119, 'Cilodong', 74),
(1120, 'Cilimus', 78),
(1121, 'Cililin', 79),
(1122, 'Cileunyi', 69),
(1123, 'Cileungsi', 71),
(1124, 'Cilengkrang', 69),
(1125, 'Cilebar', 70),
(1126, 'Cilebak', 78),
(1127, 'Cilawu', 67),
(1128, 'Cilamaya Wetan', 70),
(1129, 'Cilamaya Kulon', 70),
(1130, 'Cilaku', 64),
(1131, 'Cikoneng', 76),
(1132, 'Cikole', 65),
(1133, 'Cikijing', 77),
(1134, 'Cikidang', 65),
(1135, 'Cikembar', 65),
(1136, 'Cikelet', 67),
(1137, 'Cikedung', 62),
(1138, 'Cikaum', 75),
(1139, 'Cikatomas', 72),
(1140, 'Cikarang Utara', 73),
(1141, 'Cikarang Timur', 73),
(1142, 'Cikarang Selatan', 73),
(1143, 'Cikarang Pusat', 73),
(1144, 'Cikarang Barat', 73),
(1145, 'Cikancung', 69),
(1146, 'Cikampek', 70),
(1147, 'Cikalongkulon', 64),
(1148, 'Cikalong Wetan', 79),
(1149, 'Cikalong', 72),
(1150, 'Cikakak', 65),
(1151, 'Cikajang', 67),
(1152, 'Cikadu', 64),
(1153, 'Cijulang', 80),
(1154, 'Cijeungjing', 76),
(1155, 'Cijeruk', 71),
(1156, 'Cijati', 64),
(1157, 'Cijambe', 75),
(1158, 'Cihurip', 67),
(1159, 'Cihideung', 72),
(1160, 'Cihaurbeuti', 76),
(1161, 'Cihampelas', 79),
(1162, 'Cigugur', 78),
(1163, 'Cigudeg', 71),
(1164, 'Cigombong', 71),
(1165, 'Cigedug', 67),
(1166, 'Cigasong', 77),
(1167, 'Cigandamekar', 78),
(1168, 'Cigalontang', 72),
(1169, 'Ciemas', 65),
(1170, 'Cidolog', 76),
(1171, 'Cidaun', 64),
(1172, 'Cidahu', 65),
(1173, 'Cidadap', 65),
(1174, 'Cicurug', 65),
(1175, 'Cicendo', 69),
(1176, 'Cicantayan', 65),
(1177, 'Cicalengka', 69),
(1178, 'Cibungbulang', 71),
(1179, 'Cibugel', 68),
(1180, 'Cibuaya', 70),
(1181, 'Cibogo', 75),
(1182, 'Cibiuk', 67),
(1183, 'Cibiru', 69),
(1184, 'Cibinong', 64),
(1185, 'Cibingbin', 78),
(1186, 'Cibeureum', 72),
(1187, 'Cibeunying Kidul', 69),
(1188, 'Cibeunying Kaler', 69),
(1189, 'Cibatu', 67),
(1190, 'Cibarusah', 73),
(1191, 'Cibalong', 72),
(1192, 'Ciawigebang', 78),
(1193, 'Ciawi', 71),
(1194, 'Ciater', 75),
(1195, 'Ciasem', 75),
(1196, 'Cianjur', 64),
(1197, 'Ciampel', 70),
(1198, 'Ciampea', 71),
(1199, 'Ciamis', 76),
(1200, 'Ciambar', 65),
(1201, 'Cariu', 71),
(1202, 'Caringin', 71),
(1203, 'Cantigi', 62),
(1204, 'Cangkuang', 69),
(1205, 'Campaka Mulya', 64),
(1206, 'Campaka', 66),
(1207, 'Cabangbungin', 73),
(1208, 'Bungursari', 72),
(1209, 'Bungbulang', 67),
(1210, 'Buahdua', 68),
(1211, 'Buahbatu (Margacinta)', 69),
(1212, 'Bongas', 62),
(1213, 'Bojongsoang', 69),
(1214, 'Bojongsari', 74),
(1215, 'Bojongpicung', 64),
(1216, 'Bojongmangu', 73),
(1217, 'Bojongloa Kidul', 69),
(1218, 'Bojongloa Kaler', 69),
(1219, 'Bojonggede', 71),
(1220, 'Bojonggambir', 72),
(1221, 'Bojongasih', 72),
(1222, 'Bojong Genteng', 65),
(1223, 'Bogor Utara - Kota', 71),
(1224, 'Bogor Timur - Kota', 71),
(1225, 'Bogor Tengah - Kota', 71),
(1226, 'Bogor Selatan - Kota', 71),
(1227, 'Bogor Barat - Kota', 71),
(1228, 'Blubur Limbangan', 67),
(1229, 'Blanakan', 75),
(1230, 'Binong', 75),
(1231, 'Bekasi Utara', 73),
(1232, 'Bekasi Timur', 73),
(1233, 'Bekasi Selatan', 73),
(1234, 'Bekasi Barat', 73),
(1235, 'Beji', 74),
(1236, 'Beber', 63),
(1237, 'Bayongbong', 67),
(1238, 'Batununggal', 69),
(1239, 'Batujaya', 70),
(1240, 'Batujajar', 79),
(1241, 'Baregbeg', 76),
(1242, 'Banyusari', 70),
(1243, 'Banyuresmi', 67),
(1244, 'Bantarujeg', 77),
(1245, 'Bantarkalong', 72),
(1246, 'Bantargadung', 65),
(1247, 'Bantar Gebang', 73),
(1248, 'Banjarwangi', 67),
(1249, 'Banjaran', 77),
(1250, 'Bangodua', 62),
(1251, 'Bandung Wetan', 69),
(1252, 'Bandung Kulon', 69),
(1253, 'Bandung Kidul', 69),
(1254, 'Balongan', 62),
(1255, 'Baleendah', 69),
(1256, 'Babelan', 73),
(1257, 'Babakancikao', 66),
(1258, 'Babakan Madang', 71),
(1259, 'Babakan Ciparay', 69),
(1260, 'Babakan', 63),
(1261, 'Astanajapura', 63),
(1262, 'Astana Anyar', 69),
(1263, 'Arjawinangun', 63),
(1264, 'Arjasari', 69),
(1265, 'Argapura', 77),
(1266, 'Arcamanik', 69),
(1267, 'Arahan', 62),
(1268, 'Antapani (Cicadas)', 69),
(1269, 'Anjatan', 62),
(1270, 'Andir', 69),
(1271, 'Agrabinta', 64),
(1272, 'Wuryantoro', 83),
(1273, 'Wonotunggal', 84),
(1274, 'Wonosobo', 85),
(1275, 'Wonosegoro', 86),
(1276, 'Wonosalam', 88),
(1277, 'Wonopringgo', 89),
(1278, 'Wonokerto', 89),
(1279, 'Wonogiri', 83),
(1280, 'Wonoboyo', 90),
(1281, 'Wirosari', 91),
(1282, 'Wiradesa', 89),
(1283, 'Winong', 92),
(1284, 'Windusari', 93),
(1285, 'Weleri', 95),
(1286, 'Welahan', 96),
(1287, 'Wedung', 88),
(1288, 'Wedi', 87),
(1289, 'Wedarijaksa', 92),
(1290, 'Watumalang', 85),
(1291, 'Watukumpul', 97),
(1292, 'Warurejo', 98),
(1293, 'Warungpring', 97),
(1294, 'Warungasem', 84),
(1295, 'Wangon', 99),
(1296, 'Wanasari', 101),
(1297, 'Wanareja', 102),
(1298, 'Wanadadi (Wonodadi)', 100),
(1299, 'Wadaslintang', 85),
(1300, 'Ungaran Timur', 103),
(1301, 'Ungaran Barat', 103),
(1302, 'Undaan', 104),
(1303, 'Ulujami', 97),
(1304, 'Tuntang', 103),
(1305, 'Tunjungan', 105),
(1306, 'Tulung', 87),
(1307, 'Tulis', 84),
(1308, 'Tugu', 103),
(1309, 'Trucuk', 87),
(1310, 'Tretep', 90),
(1311, 'Trangkil', 92),
(1312, 'Toroh', 91),
(1313, 'Tonjong', 101),
(1314, 'Todanan', 105),
(1315, 'Tlogowungu', 92),
(1316, 'Tlogomulyo', 90),
(1317, 'Tirtomoyo', 83),
(1318, 'Tirto', 89),
(1319, 'Tingkir', 106),
(1320, 'Tersono', 84),
(1321, 'Teras', 86),
(1322, 'Tengaran', 103),
(1323, 'Tembarak', 90),
(1324, 'Tembalang', 103),
(1325, 'Temanggung', 90),
(1326, 'Tegowanu', 91),
(1327, 'Tegal Timur', 98),
(1328, 'Tegal Selatan', 98),
(1329, 'Tegal Barat', 98),
(1330, 'Tayu', 92),
(1331, 'Tawangsari', 94),
(1332, 'Tawangmangu', 107),
(1333, 'Tawangharjo', 91),
(1334, 'Tasikmadu', 107),
(1335, 'Tarub', 98),
(1336, 'Tanon', 108),
(1337, 'Tanjung', 101),
(1338, 'Tanggungharjo', 91),
(1339, 'Tangen', 108),
(1340, 'Tambakromo', 92),
(1341, 'Tambak', 99),
(1342, 'Taman', 97),
(1343, 'Talun', 89),
(1344, 'Talang', 98),
(1345, 'Tahunan', 96),
(1346, 'Suruh', 103),
(1347, 'Surodadi', 98),
(1348, 'Sumpiuh', 99),
(1349, 'Sumowono', 103),
(1350, 'Sumberlawang', 108),
(1351, 'Sumbang', 99),
(1352, 'Sulang', 109),
(1353, 'Sukorejo', 95),
(1354, 'Sukolilo', 92),
(1355, 'Sukoharjo', 94),
(1356, 'Sukodono', 108),
(1357, 'Subah', 84),
(1358, 'Sruweng', 110),
(1359, 'Srumbung', 93),
(1360, 'Sragi', 89),
(1361, 'Sragen', 108),
(1362, 'Songgom', 101),
(1363, 'Somagede', 99),
(1364, 'Sokaraja', 99),
(1365, 'Sluke', 109),
(1366, 'Slogohimo', 83),
(1367, 'Slawi', 98),
(1368, 'Siwalan', 89),
(1369, 'Sirampog', 101),
(1370, 'Singorojo', 95),
(1371, 'Simo', 86),
(1372, 'Sigaluh', 100),
(1373, 'Sidorejo', 106),
(1374, 'Sidomukti', 106),
(1375, 'Sidoharjo', 108),
(1376, 'Sidareja', 102),
(1377, 'Serengan', 111),
(1378, 'Sempor', 110),
(1379, 'Semarang Utara', 103),
(1380, 'Semarang Timur', 103),
(1381, 'Semarang Tengah', 103),
(1382, 'Semarang Selatan', 103),
(1383, 'Semarang Barat', 103),
(1384, 'Selopampang', 90),
(1385, 'Selomerto', 85),
(1386, 'Selogiri', 83),
(1387, 'Selo', 86),
(1388, 'Sedan', 109),
(1389, 'Secang', 93),
(1390, 'Sayung', 88),
(1391, 'Sawit', 86),
(1392, 'Sarang', 109),
(1393, 'Sapuran', 85),
(1394, 'Sampang', 102),
(1395, 'Sambung Macan', 108),
(1396, 'Sambong', 105),
(1397, 'Sambirejo', 108),
(1398, 'Sambi', 86),
(1399, 'Salem', 101),
(1400, 'Sale', 109),
(1401, 'Salaman', 93),
(1402, 'Salam', 93),
(1403, 'Sadang', 110),
(1404, 'Rowosari', 95),
(1405, 'Rowokele', 110),
(1406, 'Ringinarum', 95),
(1407, 'Rembang', 112),
(1408, 'Reban', 84),
(1409, 'Rawalo', 99),
(1410, 'Randudongkal', 97),
(1411, 'Randublatung', 105),
(1412, 'Rakit', 100),
(1413, 'Purworejo Klampok', 100),
(1414, 'Purworejo', 113),
(1415, 'Purwonegoro', 100),
(1416, 'Purwokerto Utara', 99),
(1417, 'Purwokerto Timur', 99),
(1418, 'Purwokerto Selatan', 99),
(1419, 'Purwokerto Barat', 99),
(1420, 'Purwojati', 99),
(1421, 'Purwodadi', 113),
(1422, 'Purwantoro', 83),
(1423, 'Puring', 110),
(1424, 'Purbalingga', 112),
(1425, 'Punggelan', 100),
(1426, 'Pulokulon', 91),
(1427, 'Puhpelem', 83),
(1428, 'Pucakwangi', 92),
(1429, 'Pringsurat', 90),
(1430, 'Pringapus', 103),
(1431, 'Prembun', 110),
(1432, 'Pracimantoro', 83),
(1433, 'Poncowarno', 110),
(1434, 'Polokarto', 94),
(1435, 'Polanharjo', 87),
(1436, 'Plupuh', 108),
(1437, 'Plantungan', 95),
(1438, 'Pituruh', 113),
(1439, 'Petungkriono/Petungkriyono', 89),
(1440, 'Petarukan', 97),
(1441, 'Petanahan', 110),
(1442, 'Pengadegan', 112),
(1443, 'Penawangan', 91),
(1444, 'Pemalang', 97),
(1445, 'Pekuncen', 99),
(1446, 'Pekalongan Utara', 89),
(1447, 'Pekalongan Timur', 89),
(1448, 'Pekalongan Selatan', 89),
(1449, 'Pekalongan Barat', 89),
(1450, 'Pejawaran', 100),
(1451, 'Pejagoan', 110),
(1452, 'Pegandon', 95),
(1453, 'Pedurungan', 103),
(1454, 'Pedan', 87),
(1455, 'Pecangaan', 96),
(1456, 'Pecalungan', 84),
(1457, 'Patimuan', 102),
(1458, 'Patikraja', 99),
(1459, 'Pati', 92),
(1460, 'Patebon', 95),
(1461, 'Patean', 95),
(1462, 'Pasar Kliwon', 111),
(1463, 'Paranggupito', 83),
(1464, 'Parakan', 90),
(1465, 'Paninggaran', 89),
(1466, 'Pangkah', 98),
(1467, 'Pandanarum', 100),
(1468, 'Pancur', 109),
(1469, 'Pamotan', 109),
(1470, 'Pakis Aji', 96),
(1471, 'Pakis', 93),
(1472, 'Paguyangan', 101),
(1473, 'Pagerruyung', 95),
(1474, 'Pagerbarang', 98),
(1475, 'Pagentan', 100),
(1476, 'Pagedongan', 100),
(1477, 'Padureso', 110),
(1478, 'Padamara', 112),
(1479, 'Pabelan', 103),
(1480, 'Nusawungu', 102),
(1481, 'Nogosari', 86),
(1482, 'Nguter', 94),
(1483, 'Nguntoronadi', 83),
(1484, 'Ngrampal', 108),
(1485, 'Ngombol', 113),
(1486, 'Ngluwar', 93),
(1487, 'Ngaringan', 91),
(1488, 'Ngargoyoso', 107),
(1489, 'Ngampel', 95),
(1490, 'Ngaliyan', 103),
(1491, 'Ngadirojo', 83),
(1492, 'Ngadirejo', 90),
(1493, 'Ngablak', 93),
(1494, 'Nalumsari', 96),
(1495, 'Musuk', 86),
(1496, 'Muntilan', 93),
(1497, 'Mungkid', 93),
(1498, 'Mrebet', 112),
(1499, 'Mranggen', 88),
(1500, 'Mondokan', 108),
(1501, 'Mojotengah', 85),
(1502, 'Mojosongo', 86),
(1503, 'Mojolaban', 94),
(1504, 'Mojogedang', 107),
(1505, 'Moga', 97),
(1506, 'Mlonggo', 96),
(1507, 'Mirit', 110),
(1508, 'Miri', 108),
(1509, 'Mijen', 88),
(1510, 'Mertoyudan', 93),
(1511, 'Mejobo', 104),
(1512, 'Mayong', 96),
(1513, 'Matesih', 107),
(1514, 'Masaran', 108),
(1515, 'Margoyoso', 92),
(1516, 'Margorejo', 92),
(1517, 'Margasari', 98),
(1518, 'Margadana', 98),
(1519, 'Maos', 102),
(1520, 'Manyaran', 83),
(1521, 'Manisrenggo', 87),
(1522, 'Mandiraja', 100),
(1523, 'Majenang', 102),
(1524, 'Magelang Utara', 93),
(1525, 'Magelang Tengah', 93),
(1526, 'Magelang Selatan', 93),
(1527, 'Madukara', 100),
(1528, 'Lumbir', 99),
(1529, 'Loano', 113),
(1530, 'Limpung', 84),
(1531, 'Limbangan', 95),
(1532, 'Leksono', 85),
(1533, 'Lebaksiu', 98),
(1534, 'Lebakbarang', 89),
(1535, 'Laweyan', 111),
(1536, 'Lasem', 109),
(1537, 'Kuwarasan', 110),
(1538, 'Kutowinangun', 110),
(1539, 'Kutoarjo', 113),
(1540, 'Kutasari', 112),
(1541, 'Kunduran', 105),
(1542, 'Kudus Kota', 104),
(1543, 'Kranggan', 90),
(1544, 'Kramat', 98),
(1545, 'Kragan', 109),
(1546, 'Kradenan', 91),
(1547, 'Klirong', 110),
(1548, 'Klego', 86),
(1549, 'Kledung', 90),
(1550, 'Klaten Utara', 87),
(1551, 'Klaten Tengah', 87),
(1552, 'Klaten Selatan', 87),
(1553, 'Klambu', 91),
(1554, 'Kismantoro', 83),
(1555, 'Ketanggungan', 101),
(1556, 'Kesugihan', 102),
(1557, 'Kesesi', 89),
(1558, 'Kertek', 85),
(1559, 'Kertanegara', 112),
(1560, 'Kersana', 101),
(1561, 'Kerjo', 107),
(1562, 'Kepil', 85),
(1563, 'Kendal', 95),
(1564, 'Kemusu', 86),
(1565, 'Kemranjen', 99),
(1566, 'Kembaran', 99),
(1567, 'Kembang', 96),
(1568, 'Kemangkon', 112),
(1569, 'Kemalang', 87),
(1570, 'Keling', 96),
(1571, 'Kejobong', 112),
(1572, 'Kejajar', 85),
(1573, 'Kedungwuni', 89),
(1574, 'Kedungtuban', 105),
(1575, 'Kedungreja', 102),
(1576, 'Kedungjati', 91),
(1577, 'Kedung Banteng', 99),
(1578, 'Kedung', 96),
(1579, 'Kedu', 90),
(1580, 'Kebumen', 110),
(1581, 'Kebonarum', 87),
(1582, 'Kebonagung', 88),
(1583, 'Kebasen', 99),
(1584, 'Kebakkramat', 107),
(1585, 'Kayen', 92),
(1586, 'Kawunganten', 102),
(1587, 'Kartasura', 94),
(1588, 'Karimunjawa', 96),
(1589, 'Karangsambung', 110),
(1590, 'Karangreja', 112),
(1591, 'Karangrayung', 91),
(1592, 'Karangpucung', 102),
(1593, 'Karangpandan', 107),
(1594, 'Karangnongko', 87),
(1595, 'Karangmoncol', 112),
(1596, 'Karangmalang', 108),
(1597, 'Karanglewas', 99),
(1598, 'Karangkobar', 100),
(1599, 'Karangjambu', 112),
(1600, 'Karanggede', 86),
(1601, 'Karanggayam', 110),
(1602, 'Karangdowo', 87),
(1603, 'Karangdadap', 89),
(1604, 'Karangawen', 88),
(1605, 'Karanganyar', 88),
(1606, 'Karanganom', 87),
(1607, 'Kangkung', 95),
(1608, 'Kandeman', 84),
(1609, 'Kandangserang', 89),
(1610, 'Kandangan', 90),
(1611, 'Kampung Laut', 102),
(1612, 'Kaloran', 90),
(1613, 'Kaliwungu Selatan', 95),
(1614, 'Kaliwungu', 104),
(1615, 'Kaliwiro', 85),
(1616, 'Kaliori', 109),
(1617, 'Kalinyamatan', 96),
(1618, 'Kalimanah', 112),
(1619, 'Kalikotes', 87),
(1620, 'Kalikajar', 85),
(1621, 'Kalijambe', 108),
(1622, 'Kaligondang', 112),
(1623, 'Kaligesing', 113),
(1624, 'Kalibening', 100),
(1625, 'Kalibagor', 99),
(1626, 'Kaliangkrik', 93),
(1627, 'Kajoran', 93),
(1628, 'Kajen', 89),
(1629, 'Juwiring', 87),
(1630, 'Juwangi', 86),
(1631, 'Juwana', 92),
(1632, 'Jumo', 90),
(1633, 'Jumapolo', 107),
(1634, 'Jumantono', 107),
(1635, 'Jogonalan', 87),
(1636, 'Jiken', 105),
(1637, 'Jeruklegi', 102),
(1638, 'Jepon', 105),
(1639, 'Jepara', 96),
(1640, 'Jenawi', 107),
(1641, 'Jenar', 108),
(1642, 'Jekulo', 104),
(1643, 'Jebres', 111),
(1644, 'Jatiyoso', 107),
(1645, 'Jatisrono', 83),
(1646, 'Jatiroto', 83),
(1647, 'Jatipuro', 107),
(1648, 'Jatipurno', 83),
(1649, 'Jatinom', 87),
(1650, 'Jatilawang', 99),
(1651, 'Jati', 105),
(1652, 'Jaten', 107),
(1653, 'Japah', 105),
(1654, 'Jambu', 103),
(1655, 'Jakenan', 92),
(1656, 'Jaken', 92),
(1657, 'Gunungwungkal', 92),
(1658, 'Gunungpati', 103),
(1659, 'Guntur', 88),
(1660, 'Gunem', 109),
(1661, 'Gumelar', 99),
(1662, 'Gubug', 91),
(1663, 'Grogol', 94),
(1664, 'Grobogan', 91),
(1665, 'Gringsing', 84),
(1666, 'Grabag', 113),
(1667, 'Gondangrejo', 107),
(1668, 'Gondang', 108),
(1669, 'Gombong', 110),
(1670, 'Godong', 91),
(1671, 'Giriwoyo', 83),
(1672, 'Giritontro', 83),
(1673, 'Girimarto', 83),
(1674, 'Geyer', 91),
(1675, 'Getasan', 103),
(1676, 'Gesi', 108),
(1677, 'Genuk', 103),
(1678, 'Gemuh', 95),
(1679, 'Gemolong', 108),
(1680, 'Gembong', 92),
(1681, 'Gemawang', 90),
(1682, 'Gebog', 104),
(1683, 'Gayamsari', 103),
(1684, 'Gatak', 94),
(1685, 'Garung', 85),
(1686, 'Gantiwarno', 87),
(1687, 'Gandrungmangu', 102),
(1688, 'Gajah Mungkur', 103),
(1689, 'Gajah', 88),
(1690, 'Gabus', 92),
(1691, 'Eromoko', 83),
(1692, 'Dukun', 93),
(1693, 'Dukuhwaru', 98),
(1694, 'Dukuhturi', 98),
(1695, 'Dukuhseti', 92),
(1696, 'Doro', 89),
(1697, 'Donorojo', 96),
(1698, 'Dempet', 88),
(1699, 'Demak', 88),
(1700, 'Delanggu', 87),
(1701, 'Dayeuhluhur', 102),
(1702, 'Dawe', 104),
(1703, 'Comal', 97),
(1704, 'Colomadu', 107),
(1705, 'Cluwak', 92),
(1706, 'Cipari', 102),
(1707, 'Cilongok', 99),
(1708, 'Cilacap Utara', 102),
(1709, 'Cilacap Tengah', 102),
(1710, 'Cilacap Selatan', 102),
(1711, 'Cepu', 105),
(1712, 'Cepogo', 86),
(1713, 'Cepiring', 95),
(1714, 'Ceper', 87),
(1715, 'Cawas', 87),
(1716, 'Candisari', 103),
(1717, 'Candiroto', 90),
(1718, 'Candimulyo', 93),
(1719, 'Butuh', 113),
(1720, 'Bumijawa', 98),
(1721, 'Bumiayu', 101),
(1722, 'Buluspesantren', 110),
(1723, 'Bulukerto', 83),
(1724, 'Bulu', 90),
(1725, 'Bulakamba', 101),
(1726, 'Bukateja', 112),
(1727, 'Buayan', 110),
(1728, 'Buaran', 89),
(1729, 'Bruno', 113),
(1730, 'Bringin', 103),
(1731, 'Brebes', 101),
(1732, 'Brati', 91),
(1733, 'Brangsong', 95),
(1734, 'Boyolali', 86),
(1735, 'Borobudur', 93),
(1736, 'Bonorowo', 110),
(1737, 'Bonang', 88),
(1738, 'Boja', 95),
(1739, 'Bogorejo', 105),
(1740, 'Bodeh', 97),
(1741, 'Bobotsari', 112),
(1742, 'Blora kota', 105),
(1743, 'Blado', 84),
(1744, 'Binangun', 102),
(1745, 'Bergas', 103),
(1746, 'Bener', 113),
(1747, 'Bendosari', 94),
(1748, 'Belik', 97),
(1749, 'Bejen', 90),
(1750, 'Bayat', 87),
(1751, 'Bayan', 113),
(1752, 'Bawen', 103),
(1753, 'Bawang', 100),
(1754, 'Batuwarno', 83),
(1755, 'Baturetno', 83),
(1756, 'Baturaden', 99),
(1757, 'Batur', 100),
(1758, 'Batealit', 96),
(1759, 'Batangan', 92),
(1760, 'Batang', 84),
(1761, 'Banyuurip', 113),
(1762, 'Banyuputih', 84),
(1763, 'Banyumas', 99),
(1764, 'Banyumanik', 103),
(1765, 'Banyudono', 86),
(1766, 'Banyubiru', 103),
(1767, 'Bantarsari', 102),
(1768, 'Bantarkawung', 101),
(1769, 'Bantarbolang', 97),
(1770, 'Bansari', 90),
(1771, 'Banjarnegara', 100),
(1772, 'Banjarmangu', 100),
(1773, 'Banjarharjo', 101),
(1774, 'Banjarejo', 105),
(1775, 'Bangsri', 96),
(1776, 'Bandungan', 103),
(1777, 'Bandongan', 93),
(1778, 'Bandar', 84),
(1779, 'Bancak', 103),
(1780, 'Balapulang', 98),
(1781, 'Baki', 94),
(1782, 'Bagelen', 113),
(1783, 'Bae', 104),
(1784, 'Ayah', 110),
(1785, 'Argomulyo', 106),
(1786, 'Andong', 86),
(1787, 'Ampelgading', 97),
(1788, 'Ampel', 86),
(1789, 'Ambarawa', 103),
(1790, 'Ambal', 110),
(1791, 'Alian/Aliyan', 110),
(1792, 'Ajibarang', 99),
(1793, 'Adiwerna', 98),
(1794, 'Adipala', 102),
(1795, 'Adimulyo', 110),
(1796, 'Arosbaya', 114),
(1797, 'Bangkalan', 114),
(1798, 'Blega', 114),
(1799, 'Burneh', 114),
(1800, 'Galis', 114),
(1801, 'Geger', 114),
(1802, 'Kamal', 114),
(1803, 'Klampis', 114),
(1804, 'Kokop', 114),
(1805, 'Konang', 114),
(1806, 'Kwanyar', 114),
(1807, 'Labang', 114),
(1808, 'Modung', 114),
(1809, 'Sepulu', 114),
(1810, 'Socah', 114),
(1811, 'Tanah Merah', 114),
(1812, 'Tanjungbumi', 114),
(1813, 'Tragah', 114),
(1814, 'Bangorejo', 115),
(1815, 'Banyuwangi', 115),
(1816, 'Cluring', 115),
(1817, 'Gambiran', 115),
(1818, 'Genteng', 115),
(1819, 'Giri', 115),
(1820, 'Glagah', 115),
(1821, 'Glenmore', 115),
(1822, 'Kabat', 115),
(1823, 'Kalibaru', 115),
(1824, 'Kalipuro', 115),
(1825, 'Licin', 115),
(1826, 'Muncar', 115),
(1827, 'Pesanggaran', 115),
(1828, 'Purwoharjo', 115),
(1829, 'Rogojampi', 115),
(1830, 'Sempu', 115),
(1831, 'Siliragung', 115),
(1832, 'Singojuruh', 115),
(1833, 'Songgon', 115),
(1834, 'Srono', 115),
(1835, 'Tegaldlimo', 115),
(1836, 'Tegalsari', 115),
(1837, 'Wongsorejo', 115),
(1838, 'Batu', 116),
(1839, 'Bumiaji', 116),
(1840, 'Junrejo', 116),
(1841, 'Kepanjen Kidul', 117),
(1842, 'Sanan Wetan', 117),
(1843, 'Bakung', 117),
(1844, 'Doko', 117),
(1845, 'Gandusari', 117),
(1846, 'Garum', 117),
(1847, 'Kademangan', 117),
(1848, 'Kanigoro', 117),
(1849, 'Kesamben', 117),
(1850, 'Nglegok', 117),
(1851, 'Panggungrejo', 117),
(1852, 'Ponggok', 117),
(1853, 'Sanan Kulon', 117),
(1854, 'Selopuro', 117),
(1855, 'Selorejo', 117),
(1856, 'Srengat', 117),
(1857, 'Sutojayan', 117),
(1858, 'Udanawu', 117),
(1859, 'Wlingi', 117),
(1860, 'Wonodadi', 117),
(1861, 'Wonotirto', 117),
(1862, 'Balen', 118),
(1863, 'Baureno', 118),
(1864, 'Bojonegoro', 118),
(1865, 'Bubulan', 118),
(1866, 'Dander', 118),
(1867, 'Gayam', 118),
(1868, 'Kalitidu', 118),
(1869, 'Kanor', 118),
(1870, 'Kapas', 118),
(1871, 'Kasiman', 118),
(1872, 'Kedewan', 118),
(1873, 'Kedungadem', 118),
(1874, 'Kepoh Baru', 118),
(1875, 'Malo', 118),
(1876, 'Margomulyo', 118),
(1877, 'Ngambon', 118),
(1878, 'Ngasem', 118),
(1879, 'Ngraho', 118),
(1880, 'Padangan', 118),
(1881, 'Sekar', 118),
(1882, 'Sugihwaras', 118),
(1883, 'Sukosewu', 118),
(1884, 'Sumberrejo', 118),
(1885, 'Tambakrejo', 118),
(1886, 'Temayang', 118),
(1887, 'Binakal', 119),
(1888, 'Bondowoso', 119),
(1889, 'Botolinggo', 119),
(1890, 'Cermee', 119),
(1891, 'Curahdami', 119),
(1892, 'Grujugan', 119),
(1893, 'Jambe Sari Darus Sholah', 119),
(1894, 'Klabang', 119),
(1895, 'Maesan', 119),
(1896, 'Prajekan', 119),
(1897, 'Pujer', 119),
(1898, 'Sempol', 119),
(1899, 'Sukosari', 119),
(1900, 'Sumber Wringin', 119),
(1901, 'Taman Krocok', 119),
(1902, 'Tamanan', 119),
(1903, 'Tapen', 119),
(1904, 'Tegalampel', 119),
(1905, 'Tenggarang', 119),
(1906, 'Tlogosari', 119),
(1907, 'Wringin', 119),
(1908, 'Balong Panggang', 120),
(1909, 'Benjeng', 120),
(1910, 'Bungah', 120),
(1911, 'Cerme', 120),
(1912, 'Driyorejo', 120),
(1913, 'Duduk Sampeyan', 120),
(1914, 'Gresik', 120),
(1915, 'Kebomas', 120),
(1916, 'Kedamean', 120),
(1917, 'Manyar', 120),
(1918, 'Menganti', 120),
(1919, 'Panceng', 120),
(1920, 'Sangkapura', 120),
(1921, 'Sidayu', 120),
(1922, 'Ujung Pangkah', 120),
(1923, 'Wringin Anom', 120),
(1924, 'Ajung', 121),
(1925, 'Ambulu', 121),
(1926, 'Arjasa', 121),
(1927, 'Balung', 121),
(1928, 'Bangsalsari', 121),
(1929, 'Gumuk Mas', 121),
(1930, 'Jelbuk', 121),
(1931, 'Jenggawah', 121),
(1932, 'Kalisat', 121),
(1933, 'Kaliwates', 121),
(1934, 'Kencong', 121),
(1935, 'Ledokombo', 121),
(1936, 'Mayang', 121),
(1937, 'Mumbulsari', 121),
(1938, 'Pakusari', 121),
(1939, 'Panti', 121),
(1940, 'Patrang', 121),
(1941, 'Puger', 121),
(1942, 'Rambipuji', 121),
(1943, 'Semboro', 121),
(1944, 'Silo', 121),
(1945, 'Sukorambi', 121),
(1946, 'Sukowono', 121),
(1947, 'Sumber Baru', 121),
(1948, 'Sumber Jambe', 121),
(1949, 'Sumber Sari', 121),
(1950, 'Tanggul', 121),
(1951, 'Tempurejo', 121),
(1952, 'Umbulsari', 121),
(1953, 'Wuluhan', 121),
(1954, 'Bandar Kedung Mulyo', 122),
(1955, 'Bareng', 122),
(1956, 'Diwek', 122),
(1957, 'Gudo', 122),
(1958, 'Jogoroto', 122),
(1959, 'Kabuh', 122),
(1960, 'Kudu', 122),
(1961, 'Megaluh', 122),
(1962, 'Mojoagung', 122),
(1963, 'Mojowarno', 122),
(1964, 'Ngoro', 122),
(1965, 'Ngusikan', 122),
(1966, 'Perak', 122),
(1967, 'Peterongan', 122),
(1968, 'Plandaan', 122),
(1969, 'Ploso', 122),
(1970, 'Sumobito', 122),
(1971, 'Tembelang', 122),
(1972, 'Kediri Kota', 123),
(1973, 'Mojoroto', 123),
(1974, 'Pesantren', 123),
(1975, 'Badas', 123),
(1976, 'Banyakan', 123),
(1977, 'Gampengrejo', 123),
(1978, 'Gurah', 123),
(1979, 'Kandat', 123),
(1980, 'Kayen Kidul', 123),
(1981, 'Kepung', 123),
(1982, 'Kras', 123),
(1983, 'Kunjang', 123),
(1984, 'Mojo', 123),
(1985, 'Ngadiluwih', 123),
(1986, 'Ngancar', 123),
(1987, 'Pagu', 123),
(1988, 'Papar', 123),
(1989, 'Pare', 123),
(1990, 'Plemahan', 123),
(1991, 'Plosoklaten', 123),
(1992, 'Puncu', 123),
(1993, 'Purwoasri', 123),
(1994, 'Ringinrejo', 123),
(1995, 'Semen', 123),
(1996, 'Tarokan', 123),
(1997, 'Babat', 124),
(1998, 'Bluluk', 124),
(1999, 'Brondong', 124),
(2000, 'Deket', 124),
(2001, 'Kalitengah', 124),
(2002, 'Karang Geneng', 124),
(2003, 'Karangbinangun', 124),
(2004, 'Kedungpring', 124),
(2005, 'Kembangbahu', 124),
(2006, 'Lamongan', 124),
(2007, 'Laren', 124),
(2008, 'Maduran', 124),
(2009, 'Mantup', 124),
(2010, 'Modo', 124),
(2011, 'Ngimbang', 124),
(2012, 'Paciran', 124),
(2013, 'Pucuk', 124),
(2014, 'Sambeng', 124),
(2015, 'Sarirejo', 124),
(2016, 'Sekaran', 124),
(2017, 'Solokuro', 124),
(2018, 'Sugio', 124),
(2019, 'Sukodadi', 124),
(2020, 'Sukorame', 124),
(2021, 'Tikung', 124),
(2022, 'Candipuro', 125),
(2023, 'Gucialit', 125),
(2024, 'Kedungjajang', 125),
(2025, 'Klakah', 125),
(2026, 'Kunir', 125),
(2027, 'Lumajang', 125),
(2028, 'Padang', 125),
(2029, 'Pasirian', 125),
(2030, 'Pasrujambe/Pasujambe', 125),
(2031, 'Pronojiwo', 125),
(2032, 'Randuagung', 125),
(2033, 'Ranuyoso', 125),
(2034, 'Rowokangkung', 125),
(2035, 'Senduro', 125),
(2036, 'Sumbersuko', 125),
(2037, 'Tekung', 125),
(2038, 'Tempeh', 125),
(2039, 'Tempursari', 125),
(2040, 'Yosowilangun', 125),
(2041, 'Kartoharjo', 126),
(2042, 'Manguharjo', 126),
(2043, 'Balerejo', 126),
(2044, 'Dagangan', 126),
(2045, 'Dolopo', 126),
(2046, 'Gemarang', 126),
(2047, 'Jiwan', 126),
(2048, 'Kare', 126),
(2049, 'Kebonsari', 126),
(2050, 'Madiun', 126),
(2051, 'Mejayan', 126),
(2052, 'Pilangkenceng', 126),
(2053, 'Saradan', 126),
(2054, 'Sawahan', 126),
(2055, 'Wonoasri', 126),
(2056, 'Wungu', 126),
(2057, 'Barat', 127),
(2058, 'Bendo', 127),
(2059, 'Karangrejo', 127),
(2060, 'Karas', 127),
(2061, 'Kartoharjo (Kertoharjo)', 127),
(2062, 'Kawedanan', 127),
(2063, 'Lembeyan', 127),
(2064, 'Magetan', 127),
(2065, 'Maospati', 127),
(2066, 'Ngariboyo', 127),
(2067, 'Panekan', 127),
(2068, 'Parang', 127),
(2069, 'Plaosan', 127),
(2070, 'Poncol', 127),
(2071, 'Sukomoro', 127),
(2072, 'Takeran', 127),
(2073, 'Blimbing', 128),
(2074, 'Kedungkandang', 128),
(2075, 'Klojen', 128),
(2076, 'Lowokwaru', 128),
(2077, 'Sukun', 128),
(2078, 'Bantur', 128),
(2079, 'Bululawang', 128),
(2080, 'Dampit', 128),
(2081, 'Dau', 128),
(2082, 'Donomulyo', 128),
(2083, 'Gedangan', 128),
(2084, 'Gondanglegi', 128),
(2085, 'Jabung', 128),
(2086, 'Kalipare', 128),
(2087, 'Karangploso', 128),
(2088, 'Kasembon', 128),
(2089, 'Kepanjen', 128),
(2090, 'Kromengan', 128),
(2091, 'Lawang', 128),
(2092, 'Ngajung (Ngajum)', 128),
(2093, 'Ngantang', 128),
(2094, 'Pagak', 128),
(2095, 'Pakisaji', 128),
(2096, 'Poncokusumo', 128),
(2097, 'Pujon', 128),
(2098, 'Singosari', 128),
(2099, 'Sumbermanjing Wetan', 128),
(2100, 'Sumberpucung', 128),
(2101, 'Tajinan', 128),
(2102, 'Tirtoyudo', 128),
(2103, 'Tumpang', 128),
(2104, 'Turen', 128),
(2105, 'Wagir', 128),
(2106, 'Wajak', 128),
(2107, 'Magersari', 129),
(2108, 'Prajurit Kulon', 129),
(2109, 'Bangsal', 129),
(2110, 'Dawar Blandong', 129),
(2111, 'Dlanggu', 129),
(2112, 'Gedeg', 129),
(2113, 'Jatirejo', 129),
(2114, 'Kemlagi', 129),
(2115, 'Kutorejo', 129),
(2116, 'Mojoanyar', 129),
(2117, 'Mojosari', 129),
(2118, 'Pungging', 129),
(2119, 'Puri', 129),
(2120, 'Sooko', 129),
(2121, 'Trawas', 129),
(2122, 'Trowulan', 129),
(2123, 'Bagor', 130),
(2124, 'Baron', 130),
(2125, 'Berbek', 130),
(2126, 'Jatikalen', 130),
(2127, 'Kertosono', 130),
(2128, 'Loceret', 130),
(2129, 'Nganjuk', 130),
(2130, 'Ngetos', 130),
(2131, 'Ngluyu', 130),
(2132, 'Ngronggot', 130),
(2133, 'Pace', 130),
(2134, 'Patianrowo', 130),
(2135, 'Prambon', 130),
(2136, 'Rejoso', 130),
(2137, 'Tanjunganom', 130),
(2138, 'Wilangan', 130),
(2139, 'Geneng', 131),
(2140, 'Gerih', 131),
(2141, 'Jogorogo', 131),
(2142, 'Karangjati', 131),
(2143, 'Kasreman', 131),
(2144, 'Kedunggalar', 131),
(2145, 'Kwadungan', 131),
(2146, 'Mantingan', 131),
(2147, 'Ngawi', 131),
(2148, 'Ngrambe', 131),
(2149, 'Padas', 131),
(2150, 'Pangkur', 131),
(2151, 'Paron', 131),
(2152, 'Pitu', 131),
(2153, 'Sine', 131),
(2154, 'Widodaren', 131),
(2155, 'Arjosari', 132),
(2156, 'Kebon Agung', 132),
(2157, 'Nawangan', 132),
(2158, 'Pacitan', 132),
(2159, 'Pringkuku', 132),
(2160, 'Punung', 132),
(2161, 'Sudimoro', 132),
(2162, 'Tegalombo', 132),
(2163, 'Tulakan', 132),
(2164, 'Batumarmar', 133),
(2165, 'Kadur', 133),
(2166, 'Pademawu', 133),
(2167, 'Pakong', 133),
(2168, 'Palengaan', 133),
(2169, 'Pamekasan', 133),
(2170, 'Pasean', 133),
(2171, 'Pegantenan', 133),
(2172, 'Proppo', 133),
(2173, 'Tlanakan', 133),
(2174, 'Waru', 133),
(2175, 'Bugul Kidul', 134),
(2176, 'Gadingrejo', 134),
(2177, 'Bangil', 134),
(2178, 'Gondang Wetan', 134),
(2179, 'Grati', 134),
(2180, 'Kejayan', 134),
(2181, 'Lekok', 134),
(2182, 'Lumbang', 134),
(2183, 'Nguling', 134),
(2184, 'Pandaan', 134),
(2185, 'Pasrepan', 134),
(2186, 'Pohjentrek', 134),
(2187, 'Prigen', 134),
(2188, 'Puspo', 134),
(2189, 'Tosari', 134),
(2190, 'Tutur', 134),
(2191, 'Winongan', 134),
(2192, 'Wonorejo', 134),
(2193, 'Babadan', 135),
(2194, 'Badegan', 135),
(2195, 'Balong', 135),
(2196, 'Bungkal', 135),
(2197, 'Jambon', 135),
(2198, 'Jenangan', 135),
(2199, 'Kauman', 135),
(2200, 'Mlarak', 135),
(2201, 'Ngebel', 135),
(2202, 'Ngrayun', 135),
(2203, 'Ponorogo', 135),
(2204, 'Pudak', 135),
(2205, 'Pulung', 135),
(2206, 'Sambit', 135),
(2207, 'Sampung', 135),
(2208, 'Sawoo', 135),
(2209, 'Siman', 135),
(2210, 'Slahung', 135),
(2211, 'Kanigaran', 136),
(2212, 'Kedopok (Kedopak)', 136),
(2213, 'Mayangan', 136),
(2214, 'Wonoasih', 136);
INSERT INTO `data_kecamatan` (`id_kec`, `nama_kec`, `id_kab`) VALUES
(2215, 'Bantaran', 136),
(2216, 'Banyu Anyar', 136),
(2217, 'Besuk', 136),
(2218, 'Dringu', 136),
(2219, 'Gading', 136),
(2220, 'Gending', 136),
(2221, 'Kota Anyar', 136),
(2222, 'Kraksaan', 136),
(2223, 'Krejengan', 136),
(2224, 'Krucil', 136),
(2225, 'Kuripan', 136),
(2226, 'Leces', 136),
(2227, 'Maron', 136),
(2228, 'Paiton', 136),
(2229, 'Pajarakan', 136),
(2230, 'Pakuniran', 136),
(2231, 'Sukapura', 136),
(2232, 'Sumberasih', 136),
(2233, 'Tegal Siwalan', 136),
(2234, 'Tiris', 136),
(2235, 'Tongas', 136),
(2236, 'Wonomerto', 136),
(2237, 'Banyuates', 137),
(2238, 'Camplong', 137),
(2239, 'Jrengik', 137),
(2240, 'Karang Penang', 137),
(2241, 'Kedungdung', 137),
(2242, 'Ketapang', 137),
(2243, 'Omben', 137),
(2244, 'Pangarengan', 137),
(2245, 'Robatal', 137),
(2246, 'Sokobanah', 137),
(2247, 'Sreseh', 137),
(2248, 'Tambelangan', 137),
(2249, 'Torjun', 137),
(2250, 'Balongbendo', 138),
(2251, 'Buduran', 138),
(2252, 'Candi', 138),
(2253, 'Jabon', 138),
(2254, 'Krembung', 138),
(2255, 'Krian', 138),
(2256, 'Porong', 138),
(2257, 'Sedati', 138),
(2258, 'Sidoarjo', 138),
(2259, 'Tanggulangin', 138),
(2260, 'Tarik', 138),
(2261, 'Tulangan', 138),
(2262, 'Wonoayu', 138),
(2263, 'Asembagus', 139),
(2264, 'Banyuglugur', 139),
(2265, 'Besuki', 139),
(2266, 'Bungatan', 139),
(2267, 'Jangkar', 139),
(2268, 'Jatibanteng', 139),
(2269, 'Kapongan', 139),
(2270, 'Kendit', 139),
(2271, 'Mangaran', 139),
(2272, 'Mlandingan', 139),
(2273, 'Panarukan', 139),
(2274, 'Panji', 139),
(2275, 'Situbondo', 139),
(2276, 'Suboh', 139),
(2277, 'Sumbermalang', 139),
(2278, 'Ambunten', 140),
(2279, 'Batang Batang', 140),
(2280, 'Batuan', 140),
(2281, 'Batuputih', 140),
(2282, 'Bluto', 140),
(2283, 'Dasuk', 140),
(2284, 'Dungkek', 140),
(2285, 'Ganding', 140),
(2286, 'Gapura', 140),
(2287, 'Gili Ginting', 140),
(2288, 'Guluk Guluk', 140),
(2289, 'Kalianget', 140),
(2290, 'Kangayan', 140),
(2291, 'Kota Sumenep', 140),
(2292, 'Lenteng', 140),
(2293, 'Manding', 140),
(2294, 'Masalembu', 140),
(2295, 'Nonggunong', 140),
(2296, 'Pasongsongan', 140),
(2297, 'Pragaan', 140),
(2298, 'Raas', 140),
(2299, 'Rubaru', 140),
(2300, 'Sapeken', 140),
(2301, 'Saronggi', 140),
(2302, 'Talango', 140),
(2303, 'Asemrowo', 141),
(2304, 'Benowo', 141),
(2305, 'Bubutan', 141),
(2306, 'Bulak', 141),
(2307, 'Dukuh Pakis', 141),
(2308, 'Gayungan', 141),
(2309, 'Gubeng', 141),
(2310, 'Gununganyar', 141),
(2311, 'Jambangan', 141),
(2312, 'Karangpilang', 141),
(2313, 'Kenjeran', 141),
(2314, 'Krembangan', 141),
(2315, 'Lakarsantri', 141),
(2316, 'Mulyorejo', 141),
(2317, 'Pabean Cantikan', 141),
(2318, 'Pakal', 141),
(2319, 'Rungkut', 141),
(2320, 'Sambikerep', 141),
(2321, 'Semampir', 141),
(2322, 'Simokerto', 141),
(2323, 'Sukomanunggal', 141),
(2324, 'Tandes', 141),
(2325, 'Tenggilis Mejoyo', 141),
(2326, 'Wiyung', 141),
(2327, 'Wonocolo', 141),
(2328, 'Wonokromo', 141),
(2329, 'Bendungan', 142),
(2330, 'Dongko', 142),
(2331, 'Durenan', 142),
(2332, 'Kampak', 142),
(2333, 'Karangan', 142),
(2334, 'Munjungan', 142),
(2335, 'Panggul', 142),
(2336, 'Pogalan', 142),
(2337, 'Pule', 142),
(2338, 'Trenggalek', 142),
(2339, 'Watulimo', 142),
(2340, 'Bancar', 143),
(2341, 'Bangilan', 143),
(2342, 'Grabagan', 143),
(2343, 'Jatirogo', 143),
(2344, 'Jenu', 143),
(2345, 'Kenduruan', 143),
(2346, 'Kerek', 143),
(2347, 'Merakurak', 143),
(2348, 'Montong', 143),
(2349, 'Palang', 143),
(2350, 'Parengan', 143),
(2351, 'Plumpang', 143),
(2352, 'Rengel', 143),
(2353, 'Semanding', 143),
(2354, 'Senori', 143),
(2355, 'Singgahan', 143),
(2356, 'Soko', 143),
(2357, 'Tambakboyo', 143),
(2358, 'Tuban', 143),
(2359, 'Widang', 143),
(2360, 'Boyolangu', 144),
(2361, 'Campur Darat', 144),
(2362, 'Kalidawir', 144),
(2363, 'Karang Rejo', 144),
(2364, 'Kedungwaru', 144),
(2365, 'Ngantru', 144),
(2366, 'Ngunut', 144),
(2367, 'Pagerwojo', 144),
(2368, 'Pakel', 144),
(2369, 'Pucanglaban', 144),
(2370, 'Rejotangan', 144),
(2371, 'Sendang', 144),
(2372, 'Sumbergempol', 144),
(2373, 'Tanggung Gunung', 144),
(2374, 'Tulungagung', 144),
(2375, 'Bengkayang', 145),
(2376, 'Capkala', 145),
(2377, 'Jagoi Babang', 145),
(2378, 'Ledo', 145),
(2379, 'Lembah Bawang', 145),
(2380, 'Lumar', 145),
(2381, 'Monterado', 145),
(2382, 'Samalantan', 145),
(2383, 'Sanggau Ledo', 145),
(2384, 'Seluas', 145),
(2385, 'Siding', 145),
(2386, 'Sungai Betung', 145),
(2387, 'Sungai Raya', 145),
(2388, 'Sungai Raya Kepulauan', 145),
(2389, 'Suti Semarang', 145),
(2390, 'Teriak', 145),
(2391, 'Tujuh Belas', 145),
(2392, 'Batang Lupar', 146),
(2393, 'Bika', 146),
(2394, 'Boyan Tanjung', 146),
(2395, 'Bunut Hilir', 146),
(2396, 'Bunut Hulu', 146),
(2397, 'Embaloh Hilir', 146),
(2398, 'Embaloh Hulu', 146),
(2399, 'Empanang', 146),
(2400, 'Hulu Gurung', 146),
(2401, 'Jongkong (Jengkong)', 146),
(2402, 'Kalis', 146),
(2403, 'Mentebah', 146),
(2404, 'Pengkadan (Batu Datu)', 146),
(2405, 'Puring Kencana', 146),
(2406, 'Putussibau Selatan', 146),
(2407, 'Putussibau Utara', 146),
(2408, 'Seberuang', 146),
(2409, 'Selimbau', 146),
(2410, 'Semitau', 146),
(2411, 'Silat Hilir', 146),
(2412, 'Silat Hulu', 146),
(2413, 'Suhaid', 146),
(2414, 'Kepulauan Karimata', 147),
(2415, 'Pulau Maya (Pulau Maya Karimata)', 147),
(2416, 'Seponti', 147),
(2417, 'Simpang Hilir', 147),
(2418, 'Teluk Batang', 147),
(2419, 'Air Upas', 148),
(2420, 'Benua Kayong', 148),
(2421, 'Delta Pawan', 148),
(2422, 'Hulu Sungai', 148),
(2423, 'Jelai Hulu', 148),
(2424, 'Kendawangan', 148),
(2425, 'Manis Mata', 148),
(2426, 'Marau', 148),
(2427, 'Matan Hilir Selatan', 148),
(2428, 'Matan Hilir Utara', 148),
(2429, 'Muara Pawan', 148),
(2430, 'Nanga Tayap', 148),
(2431, 'Pemahan', 148),
(2432, 'Sandai', 148),
(2433, 'Simpang Dua', 148),
(2434, 'Simpang Hulu', 148),
(2435, 'Singkup', 148),
(2436, 'Sungai Laur', 148),
(2437, 'Sungai Melayu Rayak', 148),
(2438, 'Tumbang Titi', 148),
(2439, 'Batu Ampar', 149),
(2440, 'Kuala Mandor B', 149),
(2441, 'Rasau Jaya', 149),
(2442, 'Sungai Ambawang', 149),
(2443, 'Sungai Kakap', 149),
(2444, 'Teluk Pakedai', 149),
(2445, 'Terentang', 149),
(2446, 'Air Besar', 150),
(2447, 'Banyuke Hulu', 150),
(2448, 'Jelimpo', 150),
(2449, 'Kuala Behe', 150),
(2450, 'Mandor', 150),
(2451, 'Mempawah Hulu', 150),
(2452, 'Menjalin', 150),
(2453, 'Menyuke', 150),
(2454, 'Meranti', 150),
(2455, 'Ngabang', 150),
(2456, 'Sebangki', 150),
(2457, 'Sengah Temila', 150),
(2458, 'Sompak', 150),
(2459, 'Belimbing', 151),
(2460, 'Belimbing Hulu', 151),
(2461, 'Ella Hilir', 151),
(2462, 'Menukung', 151),
(2463, 'Nanga Pinoh', 151),
(2464, 'Pinoh Selatan', 151),
(2465, 'Pinoh Utara', 151),
(2466, 'Sayan', 151),
(2467, 'Sokan', 151),
(2468, 'Tanah Pinoh', 151),
(2469, 'Tanah Pinoh Barat', 151),
(2470, 'Anjongan', 152),
(2471, 'Mempawah Hilir', 152),
(2472, 'Mempawah Timur', 152),
(2473, 'Sadaniang', 152),
(2474, 'Segedong', 152),
(2475, 'Sei/Sungai Kunyit', 152),
(2476, 'Sei/Sungai Pinyuh', 152),
(2477, 'Siantan', 152),
(2478, 'Toho', 152),
(2479, 'Pontianak Barat', 153),
(2480, 'Pontianak Kota', 153),
(2481, 'Pontianak Selatan', 153),
(2482, 'Pontianak Tenggara', 153),
(2483, 'Pontianak Timur', 153),
(2484, 'Pontianak Utara', 153),
(2485, 'Galing', 154),
(2486, 'Jawai', 154),
(2487, 'Jawai Selatan', 154),
(2488, 'Paloh', 154),
(2489, 'Pemangkat', 154),
(2490, 'Sajad', 154),
(2491, 'Sajingan Besar', 154),
(2492, 'Salatiga', 154),
(2493, 'Sambas', 154),
(2494, 'Sebawi', 154),
(2495, 'Sejangkung', 154),
(2496, 'Selakau', 154),
(2497, 'Selakau Timur', 154),
(2498, 'Semparuk', 154),
(2499, 'Tangaran', 154),
(2500, 'Tebas', 154),
(2501, 'Tekarang', 154),
(2502, 'Teluk Keramat', 154),
(2503, 'Balai', 155),
(2504, 'Beduai (Beduwai)', 155),
(2505, 'Bonti', 155),
(2506, 'Entikong', 155),
(2507, 'Jangkang', 155),
(2508, 'Kapuas (Sanggau Kapuas)', 155),
(2509, 'Kembayan', 155),
(2510, 'Meliau', 155),
(2511, 'Mukok', 155),
(2512, 'Noyan', 155),
(2513, 'Parindu', 155),
(2514, 'Sekayam', 155),
(2515, 'Tayan Hilir', 155),
(2516, 'Tayan Hulu', 155),
(2517, 'Toba', 155),
(2518, 'Belitang', 156),
(2519, 'Belitang Hilir', 156),
(2520, 'Belitang Hulu', 156),
(2521, 'Nanga Mahap', 156),
(2522, 'Nanga Taman', 156),
(2523, 'Sekadau Hilir', 156),
(2524, 'Sekadau Hulu', 156),
(2525, 'Singkawang Barat', 157),
(2526, 'Singkawang Selatan', 157),
(2527, 'Singkawang Tengah', 157),
(2528, 'Singkawang Timur', 157),
(2529, 'Singkawang Utara', 157),
(2530, 'Ambalau', 158),
(2531, 'Binjai Hulu', 158),
(2532, 'Dedai', 158),
(2533, 'Kayan Hilir', 158),
(2534, 'Kayan Hulu', 158),
(2535, 'Kelam Permai', 158),
(2536, 'Ketungau Hilir', 158),
(2537, 'Ketungau Hulu', 158),
(2538, 'Ketungau Tengah', 158),
(2539, 'Sepauk', 158),
(2540, 'Serawai (Nanga Serawai)', 158),
(2541, 'Sintang', 158),
(2542, 'Sungai Tebelian', 158),
(2543, 'Tempunak', 158),
(2544, 'Awayan', 159),
(2545, 'Batu Mandi', 159),
(2546, 'Halong', 159),
(2547, 'Juai', 159),
(2548, 'Lampihong', 159),
(2549, 'Paringin', 159),
(2550, 'Paringin Selatan', 159),
(2551, 'Aluh-Aluh', 81),
(2552, 'Aranio', 81),
(2553, 'Astambul', 81),
(2554, 'Beruntung Baru', 81),
(2555, 'Gambut', 81),
(2556, 'Karang Intan', 81),
(2557, 'Kertak Hanyar', 81),
(2558, 'Martapura Barat', 81),
(2559, 'Martapura Kota', 81),
(2560, 'Martapura Timur', 81),
(2561, 'Mataraman', 81),
(2562, 'Pengaron', 81),
(2563, 'Peramasan', 81),
(2564, 'Sambung Makmur', 81),
(2565, 'Sei/Sungai Pinang', 81),
(2566, 'Sei/Sungai Tabuk', 81),
(2567, 'Simpang Empat', 81),
(2568, 'Tatah Makmur', 81),
(2569, 'Telaga Bauntung', 81),
(2570, 'Banjar Baru Selatan', 161),
(2571, 'Banjar Baru Utara', 161),
(2572, 'Cempaka', 161),
(2573, 'Landasan Ulin', 161),
(2574, 'Liang Anggang', 161),
(2575, 'Banjarmasin Barat', 162),
(2576, 'Banjarmasin Selatan', 162),
(2577, 'Banjarmasin Tengah', 162),
(2578, 'Banjarmasin Timur', 162),
(2579, 'Banjarmasin Utara', 162),
(2580, 'Alalak', 163),
(2581, 'Anjir Muara', 163),
(2582, 'Anjir Pasar', 163),
(2583, 'Bakumpai', 163),
(2584, 'Barambai', 163),
(2585, 'Belawang', 163),
(2586, 'Cerbon', 163),
(2587, 'Jejangkit', 163),
(2588, 'Mandastana', 163),
(2589, 'Marabahan', 163),
(2590, 'Mekar Sari', 163),
(2591, 'Rantau Badauh', 163),
(2592, 'Tabukan', 163),
(2593, 'Tabunganen', 163),
(2594, 'Tamban', 163),
(2595, 'Wanaraya', 163),
(2596, 'Angkinang', 164),
(2597, 'Daha Barat', 164),
(2598, 'Daha Selatan', 164),
(2599, 'Daha Utara', 164),
(2600, 'Kalumpang (Kelumpang)', 164),
(2601, 'Loksado', 164),
(2602, 'Padang Batung', 164),
(2603, 'Simpur', 164),
(2604, 'Telaga Langsat', 164),
(2605, 'Barabai', 165),
(2606, 'Batang Alai Selatan', 165),
(2607, 'Batang Alai Timur', 165),
(2608, 'Batang Alai Utara', 165),
(2609, 'Batu Benawa', 165),
(2610, 'Hantakan', 165),
(2611, 'Haruyan', 165),
(2612, 'Labuan Amas Selatan', 165),
(2613, 'Labuan Amas Utara', 165),
(2614, 'Limpasu', 165),
(2615, 'Pandawan', 165),
(2616, 'Amuntai Selatan', 166),
(2617, 'Amuntai Tengah', 166),
(2618, 'Amuntai Utara', 166),
(2619, 'Babirik', 166),
(2620, 'Banjang', 166),
(2621, 'Danau Panggang', 166),
(2622, 'Haur Gading', 166),
(2623, 'Paminggir', 166),
(2624, 'Sungai Pandan', 166),
(2625, 'Sungai Tabukan', 166),
(2626, 'Hampang', 167),
(2627, 'Kelumpang Barat', 167),
(2628, 'Kelumpang Hilir', 167),
(2629, 'Kelumpang Hulu', 167),
(2630, 'Kelumpang Selatan', 167),
(2631, 'Kelumpang Tengah', 167),
(2632, 'Kelumpang Utara', 167),
(2633, 'Pamukan Barat', 167),
(2634, 'Pamukan Selatan', 167),
(2635, 'Pamukan Utara', 167),
(2636, 'Pulau Laut Barat', 167),
(2637, 'Pulau Laut Kepulauan', 167),
(2638, 'Pulau Laut Selatan', 167),
(2639, 'Pulau Laut Tanjung Selayar', 167),
(2640, 'Pulau Laut Tengah', 167),
(2641, 'Pulau Laut Timur', 167),
(2642, 'Pulau Laut Utara', 167),
(2643, 'Pulau Sebuku', 167),
(2644, 'Pulau Sembilan', 167),
(2645, 'Sampanahan', 167),
(2646, 'Sungai Durian', 167),
(2647, 'Banua Lawas', 168),
(2648, 'Bintang Ara', 168),
(2649, 'Haruai', 168),
(2650, 'Jaro', 168),
(2651, 'Kelua (Klua)', 168),
(2652, 'Muara Harus', 168),
(2653, 'Muara Uya', 168),
(2654, 'Murung Pudak', 168),
(2655, 'Pugaan', 168),
(2656, 'Tanta', 168),
(2657, 'Upau', 168),
(2658, 'Batulicin', 169),
(2659, 'Karang Bintang', 169),
(2660, 'Kuranji', 169),
(2661, 'Kusan Hilir', 169),
(2662, 'Kusan Hulu', 169),
(2663, 'Mantewe', 169),
(2664, 'Satui', 169),
(2665, 'Sungai Loban', 169),
(2666, 'Bajuin', 170),
(2667, 'Bati-Bati', 170),
(2668, 'Bumi Makmur', 170),
(2669, 'Jorong', 170),
(2670, 'Kintap', 170),
(2671, 'Kurau', 170),
(2672, 'Panyipatan', 170),
(2673, 'Pelaihari', 170),
(2674, 'Takisung', 170),
(2675, 'Tambang Ulang', 170),
(2676, 'Bakarangan', 171),
(2677, 'Bungur', 171),
(2678, 'Candi Laras Selatan', 171),
(2679, 'Candi Laras Utara', 171),
(2680, 'Hatungun', 171),
(2681, 'Lokpaikat', 171),
(2682, 'Piani', 171),
(2683, 'Salam Babaris', 171),
(2684, 'Tapin Selatan', 171),
(2685, 'Tapin Tengah', 171),
(2686, 'Tapin Utara', 171),
(2687, 'Dusun Hilir', 172),
(2688, 'Dusun Selatan', 172),
(2689, 'Dusun Utara', 172),
(2690, 'Gunung Bintang Awai', 172),
(2691, 'Jenamas', 172),
(2692, 'Karau Kuala', 172),
(2693, 'Awang', 173),
(2694, 'Benua Lima', 173),
(2695, 'Dusun Tengah', 173),
(2696, 'Dusun Timur', 173),
(2697, 'Karusen Janang', 173),
(2698, 'Paju Epat', 173),
(2699, 'Paku', 173),
(2700, 'Patangkep Tutui', 173),
(2701, 'Pematang Karau', 173),
(2702, 'Raren Batuah', 173),
(2703, 'Gunung Purei', 174),
(2704, 'Gunung Timang', 174),
(2705, 'Lahei', 174),
(2706, 'Lahei Barat', 174),
(2707, 'Montallat (Montalat)', 174),
(2708, 'Teweh Baru', 174),
(2709, 'Teweh Selatan', 174),
(2710, 'Teweh Tengah', 174),
(2711, 'Teweh Timur', 174),
(2712, 'Damang Batu', 175),
(2713, 'Kahayan Hulu Utara', 175),
(2714, 'Kurun', 175),
(2715, 'Manuhing', 175),
(2716, 'Manuhing Raya', 175),
(2717, 'Mihing Raya', 175),
(2718, 'Miri Manasa', 175),
(2719, 'Rungan', 175),
(2720, 'Rungan Barat', 175),
(2721, 'Rungan Hulu', 175),
(2722, 'Sepang (Sepang Simin)', 175),
(2723, 'Tewah', 175),
(2724, 'Basarang', 176),
(2725, 'Bataguh', 176),
(2726, 'Dadahup', 176),
(2727, 'Kapuas Barat', 176),
(2728, 'Kapuas Hilir', 176),
(2729, 'Kapuas Hulu', 176),
(2730, 'Kapuas Kuala', 176),
(2731, 'Kapuas Murung', 176),
(2732, 'Kapuas Tengah', 176),
(2733, 'Kapuas Timur', 176),
(2734, 'Mandau Talawang', 176),
(2735, 'Mantangai', 176),
(2736, 'Pasak Talawang', 176),
(2737, 'Pulau Petak', 176),
(2738, 'Tamban Catur', 176),
(2739, 'Timpah', 176),
(2740, 'Bukit Raya', 177),
(2741, 'Kamipang', 177),
(2742, 'Katingan Hilir', 177),
(2743, 'Katingan Hulu', 177),
(2744, 'Katingan Kuala', 177),
(2745, 'Katingan Tengah', 177),
(2746, 'Marikit', 177),
(2747, 'Mendawai', 177),
(2748, 'Petak Malai', 177),
(2749, 'Pulau Malan', 177),
(2750, 'Sanaman Mantikei (Senamang Mantikei)', 177),
(2751, 'Tasik Payawan', 177),
(2752, 'Tewang Sanggalang Garing (Sangalang)', 177),
(2753, 'Arut Selatan', 178),
(2754, 'Arut Utara', 178),
(2755, 'Kotawaringin Lama', 178),
(2756, 'Kumai', 178),
(2757, 'Pangkalan Banteng', 178),
(2758, 'Pangkalan Lada', 178),
(2759, 'Antang Kalang', 179),
(2760, 'Baamang', 179),
(2761, 'Bukit Santuei', 179),
(2762, 'Cempaga', 179),
(2763, 'Cempaga Hulu', 179),
(2764, 'Kota Besi', 179),
(2765, 'Mentawa Baru Ketapang', 179),
(2766, 'Mentaya Hilir Selatan', 179),
(2767, 'Mentaya Hilir Utara', 179),
(2768, 'Mentaya Hulu', 179),
(2769, 'Parenggean', 179),
(2770, 'Pulau Hanaut', 179),
(2771, 'Seranau', 179),
(2772, 'Telaga Antang', 179),
(2773, 'Telawang', 179),
(2774, 'Teluk Sampit', 179),
(2775, 'Tualan Hulu', 179),
(2776, 'Batang Kawa', 180),
(2777, 'Belantikan Raya', 180),
(2778, 'Bulik', 180),
(2779, 'Bulik Timur', 180),
(2780, 'Delang', 180),
(2781, 'Lamandau', 180),
(2782, 'Menthobi Raya', 180),
(2783, 'Sematu Jaya', 180),
(2784, 'Barito Tuhup Raya', 181),
(2785, 'Laung Tuhup', 181),
(2786, 'Murung', 181),
(2787, 'Permata Intan', 181),
(2788, 'Seribu Riam', 181),
(2789, 'Sumber Barito', 181),
(2790, 'Sungai Babuat', 181),
(2791, 'Tanah Siang', 181),
(2792, 'Tanah Siang Selatan', 181),
(2793, 'Uut Murung', 181),
(2794, 'Bukit Batu', 182),
(2795, 'Jekan Raya', 182),
(2796, 'Pahandut', 182),
(2797, 'Rakumpit', 182),
(2798, 'Sebangau', 182),
(2799, 'Banama Tingang', 183),
(2800, 'Jabiren Raya', 183),
(2801, 'Kahayan Hilir', 183),
(2802, 'Kahayan Kuala', 183),
(2803, 'Kahayan Tengah', 183),
(2804, 'Maliku', 183),
(2805, 'Pandih Batu', 183),
(2806, 'Sebangau Kuala', 183),
(2807, 'Danau Seluluk', 184),
(2808, 'Danau Sembuluh', 184),
(2809, 'Hanau', 184),
(2810, 'Seruyan Hilir', 184),
(2811, 'Seruyan Hilir Timur', 184),
(2812, 'Seruyan Hulu', 184),
(2813, 'Seruyan Raya', 184),
(2814, 'Seruyan Tengah', 184),
(2815, 'Suling Tambun', 184),
(2816, 'Balai Riam', 185),
(2817, 'Jelai', 185),
(2818, 'Pantai Lunci', 185),
(2819, 'Permata Kecubung', 185),
(2820, 'Sukamara', 185),
(2821, 'Balikpapan Barat', 186),
(2822, 'Balikpapan Kota', 186),
(2823, 'Balikpapan Selatan', 186),
(2824, 'Balikpapan Tengah', 186),
(2825, 'Balikpapan Timur', 186),
(2826, 'Balikpapan Utara', 186),
(2827, 'Batu Putih', 187),
(2828, 'Biatan', 187),
(2829, 'Biduk-Biduk', 187),
(2830, 'Derawan (Pulau Derawan)', 187),
(2831, 'Gunung Tabur', 187),
(2832, 'Kelay', 187),
(2833, 'Maratua', 187),
(2834, 'Sambaliung', 187),
(2835, 'Segah', 187),
(2836, 'Tabalar', 187),
(2837, 'Talisayan', 187),
(2838, 'Tanjung Redeb', 187),
(2839, 'Teluk Bayur', 187),
(2840, 'Bontang Barat', 188),
(2841, 'Bontang Selatan', 188),
(2842, 'Bontang Utara', 188),
(2843, 'Barong Tongkok', 189),
(2844, 'Bentian Besar', 189),
(2845, 'Bongan', 189),
(2846, 'Damai', 189),
(2847, 'Jempang', 189),
(2848, 'Linggang Bigung', 189),
(2849, 'Long Iram', 189),
(2850, 'Melak', 189),
(2851, 'Mook Manaar Bulatn', 189),
(2852, 'Muara Lawa', 189),
(2853, 'Muara Pahu', 189),
(2854, 'Nyuatan', 189),
(2855, 'Penyinggahan', 189),
(2856, 'Sekolaq Darat', 189),
(2857, 'Siluq Ngurai', 189),
(2858, 'Tering', 189),
(2859, 'Anggana', 190),
(2860, 'Kembang Janggut', 190),
(2861, 'Kenohan', 190),
(2862, 'Kota Bangun', 190),
(2863, 'Loa Janan', 190),
(2864, 'Loa Kulu', 190),
(2865, 'Marang Kayu', 190),
(2866, 'Muara Badak', 190),
(2867, 'Muara Jawa', 190),
(2868, 'Muara Kaman', 190),
(2869, 'Muara Muntai', 190),
(2870, 'Muara Wis', 190),
(2871, 'Samboja (Semboja)', 190),
(2872, 'Sanga-Sanga', 190),
(2873, 'Sebulu', 190),
(2874, 'Tabang', 190),
(2875, 'Tenggarong', 190),
(2876, 'Tenggarong Seberang', 190),
(2877, 'Bengalon', 191),
(2878, 'Busang', 191),
(2879, 'Kaliorang', 191),
(2880, 'Kaubun', 191),
(2881, 'Kongbeng', 191),
(2882, 'Long Mesangat (Mesengat)', 191),
(2883, 'Muara Ancalong', 191),
(2884, 'Muara Bengkal', 191),
(2885, 'Muara Wahau', 191),
(2886, 'Rantau Pulung', 191),
(2887, 'Sandaran', 191),
(2888, 'Sangatta Selatan', 191),
(2889, 'Sangatta Utara', 191),
(2890, 'Sangkulirang', 191),
(2891, 'Telen', 191),
(2892, 'Teluk Pandan', 191),
(2893, 'Laham', 192),
(2894, 'Long Apari', 192),
(2895, 'Long Bagun', 192),
(2896, 'Long Hubung', 192),
(2897, 'Long Pahangai', 192),
(2898, 'Batu Engau', 193),
(2899, 'Batu Sopang', 193),
(2900, 'Kuaro', 193),
(2901, 'Long Ikis', 193),
(2902, 'Long Kali', 193),
(2903, 'Muara Komam', 193),
(2904, 'Muara Samu', 193),
(2905, 'Pasir Belengkong', 193),
(2906, 'Tanah Grogot', 193),
(2907, 'Tanjung Harapan', 193),
(2908, 'Babulu', 194),
(2909, 'Penajam', 194),
(2910, 'Sepaku', 194),
(2911, 'Loa Janan Ilir', 195),
(2912, 'Palaran', 195),
(2913, 'Samarinda Ilir', 195),
(2914, 'Samarinda Kota', 195),
(2915, 'Samarinda Seberang', 195),
(2916, 'Samarinda Ulu', 195),
(2917, 'Samarinda Utara', 195),
(2918, 'Sambutan', 195),
(2919, 'Sungai Kunjang', 195),
(2920, 'Sungai Pinang', 195),
(2921, 'Peso', 196),
(2922, 'Peso Hilir/Ilir', 196),
(2923, 'Pulau Bunyu', 196),
(2924, 'Sekatak', 196),
(2925, 'Tanjung Palas', 196),
(2926, 'Tanjung Palas Barat', 196),
(2927, 'Tanjung Palas Tengah', 196),
(2928, 'Tanjung Palas Timur', 196),
(2929, 'Tanjung Palas Utara', 196),
(2930, 'Tanjung Selor', 196),
(2931, 'Bahau Hulu', 197),
(2932, 'Kayan Selatan', 197),
(2933, 'Malinau Barat', 197),
(2934, 'Malinau Kota', 197),
(2935, 'Malinau Selatan', 197),
(2936, 'Malinau Selatan Hilir', 197),
(2937, 'Malinau Selatan Hulu', 197),
(2938, 'Malinau Utara', 197),
(2939, 'Mentarang', 197),
(2940, 'Mentarang Hulu', 197),
(2941, 'Pujungan', 197),
(2942, 'Sungai Boh', 197),
(2943, 'Sungai Tubu', 197),
(2944, 'Krayan', 198),
(2945, 'Krayan Selatan', 198),
(2946, 'Lumbis', 198),
(2947, 'Lumbis Ogong', 198),
(2948, 'Nunukan', 198),
(2949, 'Nunukan Selatan', 198),
(2950, 'Sebatik', 198),
(2951, 'Sebatik Barat', 198),
(2952, 'Sebatik Tengah', 198),
(2953, 'Sebatik Timur', 198),
(2954, 'Sebatik Utara', 198),
(2955, 'Sebuku', 198),
(2956, 'Sei Menggaris', 198),
(2957, 'Sembakung', 198),
(2958, 'Sembakung Atulai', 198),
(2959, 'Tulin Onsoi', 198),
(2960, 'Betayau', 199),
(2961, 'Muruk Rian', 199),
(2962, 'Sesayap', 199),
(2963, 'Sesayap Hilir', 199),
(2964, 'Tana Lia', 199),
(2965, 'Tarakan Barat', 200),
(2966, 'Tarakan Tengah', 200),
(2967, 'Tarakan Timur', 200),
(2968, 'Tarakan Utara', 200),
(2969, 'Batam Kota', 201),
(2970, 'Batu Aji', 201),
(2971, 'Belakang Padang', 201),
(2972, 'Bengkong', 201),
(2973, 'Bulang', 201),
(2974, 'Galang', 201),
(2975, 'Lubuk Baja', 201),
(2976, 'Nongsa', 201),
(2977, 'Sagulung', 201),
(2978, 'Sei/Sungai Beduk', 201),
(2979, 'Sekupang', 201),
(2980, 'Bintan Pesisir', 202),
(2981, 'Bintan Timur', 202),
(2982, 'Bintan Utara', 202),
(2983, 'Gunung Kijang', 202),
(2984, 'Mantang', 202),
(2985, 'Seri/Sri Kuala Lobam', 202),
(2986, 'Tambelan', 202),
(2987, 'Teluk Bintan', 202),
(2988, 'Teluk Sebong', 202),
(2989, 'Toapaya', 202),
(2990, 'Belat', 203),
(2991, 'Buru', 203),
(2992, 'Durai', 203),
(2993, 'Karimun', 203),
(2994, 'Kundur', 203),
(2995, 'Kundur Barat', 203),
(2996, 'Kundur Utara', 203),
(2997, 'Meral', 203),
(2998, 'Meral Barat', 203),
(2999, 'Moro', 203),
(3000, 'Tebing', 203),
(3001, 'Ungar', 203),
(3002, 'Jemaja', 204),
(3003, 'Jemaja Timur', 204),
(3004, 'Palmatak', 204),
(3005, 'Siantan Selatan', 204),
(3006, 'Siantan Tengah', 204),
(3007, 'Siantan Timur', 204),
(3008, 'Lingga', 205),
(3009, 'Lingga Timur', 205),
(3010, 'Lingga Utara', 205),
(3011, 'Selayar', 205),
(3012, 'Senayang', 205),
(3013, 'Singkep', 205),
(3014, 'Singkep Barat', 205),
(3015, 'Singkep Pesisir', 205),
(3016, 'Singkep Selatan', 205),
(3017, 'Bunguran Barat', 206),
(3018, 'Bunguran Selatan', 206),
(3019, 'Bunguran Tengah', 206),
(3020, 'Bunguran Timur', 206),
(3021, 'Bunguran Timur Laut', 206),
(3022, 'Bunguran Utara', 206),
(3023, 'Midai', 206),
(3024, 'Pulau Laut', 206),
(3025, 'Pulau Tiga', 206),
(3026, 'Serasan', 206),
(3027, 'Serasan Timur', 206),
(3028, 'Subi', 206),
(3029, 'Bukit Bestari', 207),
(3030, 'Tanjung Pinang Barat', 207),
(3031, 'Tanjung Pinang Kota', 207),
(3032, 'Tanjung Pinang Timur', 207),
(3033, 'Bumi Waras', 208),
(3034, 'Enggal', 208),
(3035, 'Kedamaian', 208),
(3036, 'Kedaton', 208),
(3037, 'Kemiling', 208),
(3038, 'Labuhan Ratu', 208),
(3039, 'Langkapura', 208),
(3040, 'Panjang', 208),
(3041, 'Rajabasa', 208),
(3042, 'Tanjung Karang Barat', 208),
(3043, 'Tanjung Karang Pusat', 208),
(3044, 'Tanjung Karang Timur', 208),
(3045, 'Tanjung Senang', 208),
(3046, 'Telukbetung Barat', 208),
(3047, 'Telukbetung Selatan', 208),
(3048, 'Telukbetung Timur', 208),
(3049, 'Telukbetung Utara', 208),
(3050, 'Way Halim', 208),
(3051, 'Balik Bukit', 209),
(3052, 'Bandar Negeri Suoh', 209),
(3053, 'Batu Brak', 209),
(3054, 'Batu Ketulis', 209),
(3055, 'Belalau', 209),
(3056, 'Gedung Surian', 209),
(3057, 'Kebun Tebu', 209),
(3058, 'Lumbok Seminung', 209),
(3059, 'Pagar Dewa', 209),
(3060, 'Sekincau', 209),
(3061, 'Sukau', 209),
(3062, 'Sumber Jaya', 209),
(3063, 'Suoh', 209),
(3064, 'Way Tenong', 209),
(3065, 'Bakauheni', 210),
(3066, 'Jati Agung', 210),
(3067, 'Kalianda', 210),
(3068, 'Katibung', 210),
(3069, 'Merbau Mataram', 210),
(3070, 'Natar', 210),
(3071, 'Palas', 210),
(3072, 'Penengahan', 210),
(3073, 'Sidomulyo', 210),
(3074, 'Tanjung Bintang', 210),
(3075, 'Tanjung Sari', 210),
(3076, 'Way Panji', 210),
(3077, 'Way Sulan', 210),
(3078, 'Anak Ratu Aji', 211),
(3079, 'Anak Tuha', 211),
(3080, 'Bandar Mataram', 211),
(3081, 'Bandar Surabaya', 211),
(3082, 'Bangun Rejo', 211),
(3083, 'Bekri', 211),
(3084, 'Bumi Nabung', 211),
(3085, 'Bumi Ratu Nuban', 211),
(3086, 'Gunung Sugih', 211),
(3087, 'Kalirejo', 211),
(3088, 'Kota Gajah', 211),
(3089, 'Padang Ratu', 211),
(3090, 'Pubian', 211),
(3091, 'Punggur', 211),
(3092, 'Putra Rumbia', 211),
(3093, 'Rumbia', 211),
(3094, 'Selagai Lingga', 211),
(3095, 'Sendang Agung', 211),
(3096, 'Seputih Agung', 211),
(3097, 'Seputih Banyak', 211),
(3098, 'Seputih Mataram', 211),
(3099, 'Seputih Raman', 211),
(3100, 'Seputih Surabaya', 211),
(3101, 'Terbanggi Besar', 211),
(3102, 'Terusan Nunyai', 211),
(3103, 'Trimurjo', 211),
(3104, 'Way Pangubuan', 211),
(3105, 'Way Seputih', 211),
(3106, 'Bandar Sribawono', 212),
(3107, 'Batanghari', 212),
(3108, 'Batanghari Nuban', 212),
(3109, 'Braja Slebah', 212),
(3110, 'Bumi Agung', 212),
(3111, 'Gunung Pelindung', 212),
(3112, 'Labuhan Maringgai', 212),
(3113, 'Marga Sekampung', 212),
(3114, 'Margatiga', 212),
(3115, 'Mataram Baru', 212),
(3116, 'Melinting', 212),
(3117, 'Metro Kibang', 212),
(3118, 'Pasir Sakti', 212),
(3119, 'Pekalongan', 212),
(3120, 'Purbolinggo', 212),
(3121, 'Raman Utara', 212),
(3122, 'Sekampung', 212),
(3123, 'Sekampung Udik', 212),
(3124, 'Waway Karya', 212),
(3125, 'Way Bungur (Purbolinggo Utara)', 212),
(3126, 'Way Jepara', 212),
(3127, 'Abung Barat', 213),
(3128, 'Abung Kunang', 213),
(3129, 'Abung Pekurun', 213),
(3130, 'Abung Selatan', 213),
(3131, 'Abung Semuli', 213),
(3132, 'Abung Surakarta', 213),
(3133, 'Abung Tengah', 213),
(3134, 'Abung Timur', 213),
(3135, 'Abung Tinggi', 213),
(3136, 'Blambangan Pagar', 213),
(3137, 'Bukit Kemuning', 213),
(3138, 'Bunga Mayang', 213),
(3139, 'Hulu Sungkai', 213),
(3140, 'Kotabumi', 213),
(3141, 'Kotabumi Selatan', 213),
(3142, 'Kotabumi Utara', 213),
(3143, 'Muara Sungkai', 213),
(3144, 'Sungkai Barat', 213),
(3145, 'Sungkai Jaya', 213),
(3146, 'Sungkai Selatan', 213),
(3147, 'Sungkai Tengah', 213),
(3148, 'Sungkai Utara', 213),
(3149, 'Tanjung Raja', 213),
(3150, 'Mesuji', 214),
(3151, 'Mesuji Timur', 214),
(3152, 'Panca Jaya', 214),
(3153, 'Rawa Jitu Utara', 214),
(3154, 'Simpang Pematang', 214),
(3155, 'Tanjung Raya', 214),
(3156, 'Way Serdang', 214),
(3157, 'Metro Barat', 215),
(3158, 'Metro Pusat', 215),
(3159, 'Metro Selatan', 215),
(3160, 'Metro Timur', 215),
(3161, 'Metro Utara', 215),
(3162, 'Gedong Tataan', 216),
(3163, 'Kedondong', 216),
(3164, 'Marga Punduh', 216),
(3165, 'Negeri Katon', 216),
(3166, 'Padang Cermin', 216),
(3167, 'Punduh Pidada', 216),
(3168, 'Tegineneng', 216),
(3169, 'Way Khilau', 216),
(3170, 'Way Lima', 216),
(3171, 'Bengkunat', 217),
(3172, 'Bengkunat Belimbing', 217),
(3173, 'Karya Penggawa', 217),
(3174, 'Krui Selatan', 217),
(3175, 'Lemong', 217),
(3176, 'Ngambur', 217),
(3177, 'Pesisir Selatan', 217),
(3178, 'Pesisir Tengah', 217),
(3179, 'Pesisir Utara', 217),
(3180, 'Pulau Pisang', 217),
(3181, 'Way Krui', 217),
(3182, 'Adi Luwih', 218),
(3183, 'Gading Rejo', 218),
(3184, 'Pagelaran Utara', 218),
(3185, 'Pardasuka', 218),
(3186, 'Pringsewu', 218),
(3187, 'Air Naningan', 219),
(3188, 'Bandar Negeri Semuong', 219),
(3189, 'Bulok', 219),
(3190, 'Cukuh Balak', 219),
(3191, 'Gisting', 219),
(3192, 'Gunung Alip', 219),
(3193, 'Kelumbayan', 219),
(3194, 'Kelumbayan Barat', 219),
(3195, 'Kota Agung (Kota Agung Pusat)', 219),
(3196, 'Kota Agung Barat', 219),
(3197, 'Kota Agung Timur', 219),
(3198, 'Limau', 219),
(3199, 'Pematang Sawa', 219),
(3200, 'Pugung', 219),
(3201, 'Pulau Panggung', 219),
(3202, 'Semaka', 219),
(3203, 'Sumberejo', 219),
(3204, 'Talang Padang', 219),
(3205, 'Ulubelu', 219),
(3206, 'Banjar Agung', 220),
(3207, 'Banjar Baru', 220),
(3208, 'Banjar Margo', 220),
(3209, 'Dente Teladas', 220),
(3210, 'Gedung Aji', 220),
(3211, 'Gedung Aji Baru', 220),
(3212, 'Gedung Meneng', 220),
(3213, 'Menggala', 220),
(3214, 'Menggala Timur', 220),
(3215, 'Meraksa Aji', 220),
(3216, 'Penawar Aji', 220),
(3217, 'Penawar Tama', 220),
(3218, 'Rawa Pitu', 220),
(3219, 'Rawajitu Selatan', 220),
(3220, 'Rawajitu Timur', 220),
(3221, 'Gunung Agung', 221),
(3222, 'Gunung Terang', 221),
(3223, 'Lambu Kibang', 221),
(3224, 'Tulang Bawang Tengah', 221),
(3225, 'Tulang Bawang Udik', 221),
(3226, 'Tumijajar', 221),
(3227, 'Way Kenanga', 221),
(3228, 'Bahuga', 222),
(3229, 'Banjit', 222),
(3230, 'Baradatu', 222),
(3231, 'Blambangan Umpu', 222),
(3232, 'Buay Bahuga', 222),
(3233, 'Gunung Labuhan', 222),
(3234, 'Kasui', 222),
(3235, 'Negara Batin', 222),
(3236, 'Negeri Agung', 222),
(3237, 'Negeri Besar', 222),
(3238, 'Pakuan Ratu', 222),
(3239, 'Rebang Tangkas', 222),
(3240, 'Way Tuba', 222),
(3241, 'Baguala', 223),
(3242, 'Leitimur Selatan', 223),
(3243, 'Nusaniwe (Nusanive)', 223),
(3244, 'Sirimau', 223),
(3245, 'Teluk Ambon', 223),
(3246, 'Airbuaya', 224),
(3247, 'Batabual', 224),
(3248, 'Fena Leisela', 224),
(3249, 'Lilialy', 224),
(3250, 'Lolong Guba', 224),
(3251, 'Namlea', 224),
(3252, 'Teluk Kaiely', 224),
(3253, 'Waeapo', 224),
(3254, 'Waelata', 224),
(3255, 'Waplau', 224),
(3256, 'Fena Fafan', 225),
(3257, 'Kepala Madan', 225),
(3258, 'Leksula', 225),
(3259, 'Namrole', 225),
(3260, 'Waesama', 225),
(3261, 'Aru Selatan', 226),
(3262, 'Aru Selatan Timur', 226),
(3263, 'Aru Selatan Utara', 226),
(3264, 'Aru Tengah', 226),
(3265, 'Aru Tengah Selatan', 226),
(3266, 'Aru Tengah Timur', 226),
(3267, 'Aru Utara', 226),
(3268, 'Aru Utara Timur Batuley', 226),
(3269, 'Pulau-Pulau Aru', 226),
(3270, 'Sir-Sir', 226),
(3271, 'Damer', 227),
(3272, 'Dawelor Dawera', 227),
(3273, 'Kepulauan Romang', 227),
(3274, 'Kisar Utara', 227),
(3275, 'Mdona Hyera/Hiera', 227),
(3276, 'Moa Lakor', 227),
(3277, 'Pulau Lakor', 227),
(3278, 'Pulau Letti (Leti Moa Lakor)', 227),
(3279, 'Pulau Masela', 227),
(3280, 'Pulau Pulau Babar', 227),
(3281, 'Pulau Pulau Terselatan', 227),
(3282, 'Pulau Wetang', 227),
(3283, 'Pulau-Pulau Babar Timur', 227),
(3284, 'Wetar', 227),
(3285, 'Wetar Barat', 227),
(3286, 'Wetar Timur', 227),
(3287, 'Wetar Utara', 227),
(3288, 'Amahai', 228),
(3289, 'Banda', 228),
(3290, 'Kota Masohi', 228),
(3291, 'Leihitu', 228),
(3292, 'Leihitu Barat', 228),
(3293, 'Nusa Laut', 228),
(3294, 'Pulau Haruku', 228),
(3295, 'Salahutu', 228),
(3296, 'Saparua', 228),
(3297, 'Saparua Timur', 228),
(3298, 'Seram Utara', 228),
(3299, 'Seram Utara Barat', 228),
(3300, 'Seram Utara Timur Kobi', 228),
(3301, 'Seram Utara Timur Seti', 228),
(3302, 'Tehoru', 228),
(3303, 'Teluk Elpaputih', 228),
(3304, 'Telutih', 228),
(3305, 'Teon Nila Serua', 228),
(3306, 'Hoat Sorbay', 229),
(3307, 'Kei Besar', 229),
(3308, 'Kei Besar Selatan', 229),
(3309, 'Kei Besar Selatan Barat', 229),
(3310, 'Kei Besar Utara Barat', 229),
(3311, 'Kei Besar Utara Timur', 229),
(3312, 'Kei Kecil', 229),
(3313, 'Kei Kecil Barat', 229),
(3314, 'Kei Kecil Timur', 229),
(3315, 'Kei Kecil Timur Selatan', 229),
(3316, 'Manyeuw', 229),
(3317, 'Kormomolin', 230),
(3318, 'Molu Maru', 230),
(3319, 'Nirunmas', 230),
(3320, 'Selaru', 230),
(3321, 'Tanimbar Selatan', 230),
(3322, 'Tanimbar Utara', 230),
(3323, 'Wer Maktian', 230),
(3324, 'Wer Tamrian', 230),
(3325, 'Wuar Labobar', 230),
(3326, 'Yaru', 230),
(3327, 'Amalatu', 231),
(3328, 'Elpaputih', 231),
(3329, 'Huamual', 231),
(3330, 'Huamual Belakang', 231),
(3331, 'Inamosol', 231),
(3332, 'Kairatu', 231),
(3333, 'Kairatu Barat', 231),
(3334, 'Kepulauan Manipa', 231),
(3335, 'Seram Barat', 231),
(3336, 'Taniwel', 231),
(3337, 'Taniwel Timur', 231),
(3338, 'Bula', 232),
(3339, 'Bula Barat', 232),
(3340, 'Gorom Timur', 232),
(3341, 'Kian Darat', 232),
(3342, 'Kilmury', 232),
(3343, 'Pulau Gorom', 232),
(3344, 'Pulau Panjang', 232),
(3345, 'Seram Timur', 232),
(3346, 'Siritaun Wida Timur', 232),
(3347, 'Siwalalat', 232),
(3348, 'Teluk Waru', 232),
(3349, 'Teor', 232),
(3350, 'Tutuk Tolu', 232),
(3351, 'Wakate', 232),
(3352, 'Werinama', 232),
(3353, 'Kur Selatan', 233),
(3354, 'Pulau Dullah Selatan', 233),
(3355, 'Pulau Dullah Utara', 233),
(3356, 'Pulau Tayando Tam', 233),
(3357, 'Pulau-Pulau Kur', 233),
(3358, 'Ibu', 234),
(3359, 'Ibu Selatan', 234),
(3360, 'Ibu Utara', 234),
(3361, 'Jailolo', 234),
(3362, 'Jailolo Selatan', 234),
(3363, 'Loloda', 234),
(3364, 'Sahu', 234),
(3365, 'Sahu Timur', 234),
(3366, 'Bacan', 235),
(3367, 'Bacan Barat', 235),
(3368, 'Bacan Barat Utara', 235),
(3369, 'Bacan Selatan', 235),
(3370, 'Bacan Timur', 235),
(3371, 'Bacan Timur Selatan', 235),
(3372, 'Bacan Timur Tengah', 235),
(3373, 'Gane Barat', 235),
(3374, 'Gane Barat Selatan', 235),
(3375, 'Gane Barat Utara', 235),
(3376, 'Gane Timur', 235),
(3377, 'Gane Timur Selatan', 235),
(3378, 'Gane Timur Tengah', 235),
(3379, 'Kasiruta Barat', 235),
(3380, 'Kasiruta Timur', 235),
(3381, 'Kayoa', 235),
(3382, 'Kayoa Barat', 235),
(3383, 'Kayoa Selatan', 235),
(3384, 'Kayoa Utara', 235),
(3385, 'Kepulauan Botanglomang', 235),
(3386, 'Kepulauan Joronga', 235),
(3387, 'Makian Barat (Pulau Makian)', 235),
(3388, 'Mandioli Selatan', 235),
(3389, 'Mandioli Utara', 235),
(3390, 'Obi', 235),
(3391, 'Obi Barat', 235),
(3392, 'Obi Selatan', 235),
(3393, 'Obi Timur', 235),
(3394, 'Obi Utara', 235),
(3395, 'Pulau Makian', 235),
(3396, 'Patani', 236),
(3397, 'Patani Barat', 236),
(3398, 'Patani Utara', 236),
(3399, 'Pulau Gebe', 236),
(3400, 'Weda', 236),
(3401, 'Weda Selatan', 236),
(3402, 'Weda Tengah', 236),
(3403, 'Weda Utara', 236),
(3404, 'Kota Maba', 237),
(3405, 'Maba', 237),
(3406, 'Maba Selatan', 237),
(3407, 'Maba Tengah', 237),
(3408, 'Maba Utara', 237),
(3409, 'Wasile', 237),
(3410, 'Wasile Selatan', 237),
(3411, 'Wasile Tengah', 237),
(3412, 'Wasile Timur', 237),
(3413, 'Wasile Utara', 237),
(3414, 'Galela', 238),
(3415, 'Galela Barat', 238),
(3416, 'Galela Selatan', 238),
(3417, 'Galela Utara', 238),
(3418, 'Kao', 238),
(3419, 'Kao Barat', 238),
(3420, 'Kao Teluk', 238),
(3421, 'Kao Utara', 238),
(3422, 'Loloda Kepulauan', 238),
(3423, 'Loloda Utara', 238),
(3424, 'Malifut', 238),
(3425, 'Tobelo', 238),
(3426, 'Tobelo Barat', 238),
(3427, 'Tobelo Selatan', 238),
(3428, 'Tobelo Tengah', 238),
(3429, 'Tobelo Timur', 238),
(3430, 'Tobelo Utara', 238),
(3431, 'Mangoli Barat', 239),
(3432, 'Mangoli Selatan', 239),
(3433, 'Mangoli Tengah', 239),
(3434, 'Mangoli Timur', 239),
(3435, 'Mangoli Utara', 239),
(3436, 'Mangoli Utara Timur', 239),
(3437, 'Sanana', 239),
(3438, 'Sanana Utara', 239),
(3439, 'Sulabesi Barat', 239),
(3440, 'Sulabesi Selatan', 239),
(3441, 'Sulabesi Tengah', 239),
(3442, 'Sulabesi Timur', 239),
(3443, 'Morotai Jaya', 240),
(3444, 'Morotai Selatan', 240),
(3445, 'Morotai Selatan Barat', 240),
(3446, 'Morotai Timur', 240),
(3447, 'Morotai Utara', 240),
(3448, 'Lede', 241),
(3449, 'Tabona', 241),
(3450, 'Taliabu Barat', 241),
(3451, 'Taliabu Barat Laut', 241),
(3452, 'Taliabu Selatan', 241),
(3453, 'Taliabu Timur', 241),
(3454, 'Taliabu Timur Selatan', 241),
(3455, 'Taliabu Utara', 241),
(3456, 'Moti (Pulau Moti)', 242),
(3457, 'Pulau Batang Dua', 242),
(3458, 'Pulau Hiri', 242),
(3459, 'Pulau Ternate', 242),
(3460, 'Ternate Selatan (Kota)', 242),
(3461, 'Ternate Tengah (Kota)', 242),
(3462, 'Ternate Utara (Kota)', 242),
(3463, 'Oba', 243),
(3464, 'Oba Selatan', 243),
(3465, 'Oba Tengah', 243),
(3466, 'Oba Utara', 243),
(3467, 'Tidore', 243),
(3468, 'Tidore (Pulau Tidore)', 243),
(3469, 'Tidore Selatan', 243),
(3470, 'Tidore Timur', 243),
(3471, 'Tidore Utara', 243),
(3472, 'Arongan Lambalek', 244),
(3473, 'Bubon', 244),
(3474, 'Johan Pahlawan', 244),
(3475, 'Kaway XVI', 244),
(3476, 'Meureubo', 244),
(3477, 'Pante Ceureumen (Pantai Ceuremen)', 244),
(3478, 'Panton Reu', 244),
(3479, 'Samatiga', 244),
(3480, 'Sungai Mas', 244),
(3481, 'Woyla', 244),
(3482, 'Woyla Barat', 244),
(3483, 'Woyla Timur', 244),
(3484, 'Babah Rot', 245),
(3485, 'Blang Pidie', 245),
(3486, 'Jeumpa', 245),
(3487, 'Kuala Batee', 245),
(3488, 'Lembah Sabil', 245),
(3489, 'Manggeng', 245),
(3490, 'Setia', 245),
(3491, 'Susoh', 245),
(3492, 'Tangan-Tangan', 245),
(3493, 'Baitussalam', 246),
(3494, 'Blank Bintang', 246),
(3495, 'Darul Imarah', 246),
(3496, 'Darul Kamal', 246),
(3497, 'Darussalam', 246),
(3498, 'Indrapuri', 246),
(3499, 'Ingin Jaya', 246),
(3500, 'Kota Cot Glie (Kuta Cot Glie)', 246),
(3501, 'Kota Jantho', 246),
(3502, 'Kota Malaka (Kuta Malaka)', 246),
(3503, 'Krueng Barona Jaya', 246),
(3504, 'Kuta Baro', 246),
(3505, 'Lembah Seulawah', 246),
(3506, 'Leupung', 246),
(3507, 'Lhoknga', 246),
(3508, 'Lhoong', 246),
(3509, 'Mantasiek (Montasik)', 246),
(3510, 'Mesjid Raya', 246),
(3511, 'Peukan Bada', 246),
(3512, 'Pulo Aceh', 246),
(3513, 'Seulimeum', 246),
(3514, 'Simpang Tiga', 246),
(3515, 'Suka Makmur', 246),
(3516, 'Darul Hikmah', 247),
(3517, 'Indra Jaya', 247),
(3518, 'Jaya', 247),
(3519, 'Keude Panga', 247),
(3520, 'Krueng Sabee', 247),
(3521, 'Pasie Raya', 247),
(3522, 'Sampoiniet', 247),
(3523, 'Setia Bakti', 247),
(3524, 'Teunom', 247),
(3525, 'Bakongan', 248),
(3526, 'Bakongan Timur', 248),
(3527, 'Kluet Selatan', 248),
(3528, 'Kluet Tengah', 248),
(3529, 'Kluet Timur', 248),
(3530, 'Kluet Utara', 248),
(3531, 'Kota Bahagia', 248),
(3532, 'Labuhan Haji', 248),
(3533, 'Labuhan Haji Barat', 248),
(3534, 'Labuhan Haji Timur', 248),
(3535, 'Meukek', 248),
(3536, 'Pasie Raja', 248),
(3537, 'Sama Dua', 248),
(3538, 'Sawang', 248),
(3539, 'Tapak Tuan', 248),
(3540, 'Trumon', 248),
(3541, 'Trumon Tengah', 248),
(3542, 'Trumon Timur', 248),
(3543, 'Danau Paris', 249),
(3544, 'Gunung Meriah (Mariah)', 249),
(3545, 'Kota Baharu', 249),
(3546, 'Kuala Baru', 249),
(3547, 'Pulau Banyak', 249),
(3548, 'Pulau Banyak Barat', 249),
(3549, 'Simpang Kanan', 249),
(3550, 'Singkil', 249),
(3551, 'Singkil Utara', 249),
(3552, 'Singkohor', 249),
(3553, 'Suro Makmur', 249),
(3554, 'Banda Mulia', 250),
(3555, 'Bandar Pusaka', 250),
(3556, 'Bendahara', 250),
(3557, 'Karang Baru', 250),
(3558, 'Kejuruan Muda', 250),
(3559, 'Kota Kuala Simpang', 250),
(3560, 'Manyak Payed', 250),
(3561, 'Rantau', 250),
(3562, 'Sekerak', 250),
(3563, 'Seruway', 250),
(3564, 'Tamiang Hulu', 250),
(3565, 'Tenggulun', 250),
(3566, 'Atu Lintang', 251),
(3567, 'Bebesen', 251),
(3568, 'Bies', 251),
(3569, 'Bintang', 251),
(3570, 'Celala', 251),
(3571, 'Jagong Jeget', 251),
(3572, 'Kebayakan', 251),
(3573, 'Ketol', 251),
(3574, 'Kute Panang', 251),
(3575, 'Linge', 251),
(3576, 'Lut Tawar', 251),
(3577, 'Pegasing', 251),
(3578, 'Rusip Antara', 251),
(3579, 'Silih Nara', 251),
(3580, 'Babul Makmur', 252),
(3581, 'Babul Rahmah', 252),
(3582, 'Babussalam', 252),
(3583, 'Badar', 252),
(3584, 'Bambel', 252),
(3585, 'Bukit Tusam', 252),
(3586, 'Darul Hasanah', 252),
(3587, 'Deleng Pokhisen', 252),
(3588, 'Ketambe', 252),
(3589, 'Lawe Alas', 252),
(3590, 'Lawe Bulan', 252),
(3591, 'Lawe Sigala-Gala', 252),
(3592, 'Lawe Sumur', 252),
(3593, 'Leuser', 252),
(3594, 'Semadam', 252),
(3595, 'Tanah Alas', 252),
(3596, 'Banda Alam', 253),
(3597, 'Birem Bayeun', 253),
(3598, 'Darul Aman', 253),
(3599, 'Darul Falah', 253),
(3600, 'Darul Iksan (Ihsan)', 253),
(3601, 'Idi Rayeuk', 253),
(3602, 'Idi Timur', 253),
(3603, 'Idi Tunong', 253),
(3604, 'Indra Makmur', 253),
(3605, 'Julok', 253),
(3606, 'Madat', 253),
(3607, 'Nurussalam', 253),
(3608, 'Pante Bidari', 253),
(3609, 'Peudawa', 253),
(3610, 'Peunaron', 253),
(3611, 'Peureulak', 253),
(3612, 'Peureulak Barat', 253),
(3613, 'Peureulak Timur', 253),
(3614, 'Rantau Selamat', 253),
(3615, 'Ranto Peureulak', 253),
(3616, 'Serbajadi', 253),
(3617, 'Simpang Jernih', 253),
(3618, 'Simpang Ulim', 253),
(3619, 'Baktiya', 254),
(3620, 'Baktiya Barat', 254),
(3621, 'Banda Baro', 254),
(3622, 'Cot Girek', 254),
(3623, 'Dewantara', 254),
(3624, 'Geuredong Pase', 254),
(3625, 'Kuta Makmur', 254),
(3626, 'Langkahan', 254),
(3627, 'Lapang', 254),
(3628, 'Lhoksukon', 254),
(3629, 'Matangkuli', 254),
(3630, 'Meurah Mulia', 254),
(3631, 'Muara Batu', 254),
(3632, 'Nibong', 254),
(3633, 'Nisam', 254),
(3634, 'Nisam Antara', 254),
(3635, 'Paya Bakong', 254),
(3636, 'Pirak Timur', 254),
(3637, 'Samudera', 254),
(3638, 'Seunuddon (Seunudon)', 254),
(3639, 'Simpang Kramat (Keramat)', 254),
(3640, 'Syamtalira Aron', 254),
(3641, 'Syamtalira Bayu', 254),
(3642, 'Tanah Jambo Aye', 254),
(3643, 'Tanah Luas', 254),
(3644, 'Tanah Pasir', 254),
(3645, 'Baiturrahman', 255),
(3646, 'Banda Raya', 255),
(3647, 'Jaya Baru', 255),
(3648, 'Kuta Alam', 255),
(3649, 'Kuta Raja', 255),
(3650, 'Lueng Bata', 255),
(3651, 'Meuraxa', 255),
(3652, 'Syiah Kuala', 255),
(3653, 'Ulee Kareng', 255),
(3654, 'Bener Kelipah', 256),
(3655, 'Bukit', 256),
(3656, 'Gajah Putih', 256),
(3657, 'Mesidah', 256),
(3658, 'Permata', 256),
(3659, 'Pintu Rime Gayo', 256),
(3660, 'Syiah Utama', 256),
(3661, 'Timang Gajah', 256),
(3662, 'Wih Pesam', 256),
(3663, 'Ganda Pura', 257),
(3664, 'Jangka', 257),
(3665, 'Jeunieb', 257),
(3666, 'Juli', 257),
(3667, 'Kota Juang', 257),
(3668, 'Kuala', 257),
(3669, 'Kuta Blang', 257),
(3670, 'Makmur', 257),
(3671, 'Pandrah', 257),
(3672, 'Peudada', 257),
(3673, 'Peulimbang (Plimbang)', 257),
(3674, 'Peusangan', 257),
(3675, 'Peusangan Selatan', 257),
(3676, 'Peusangan Siblah Krueng', 257),
(3677, 'Samalanga', 257),
(3678, 'Simpang Mamplam', 257),
(3679, 'Blang Jerango', 258),
(3680, 'Banda Sakti', 259),
(3681, 'Blang Mangat', 259),
(3682, 'Muara Dua', 259),
(3683, 'Muara Satu', 259),
(3684, 'Beutong', 260),
(3685, 'Beutong Ateuh Banggalang', 260),
(3686, 'Darul Makmur', 260),
(3687, 'Kuala Pesisir', 260),
(3688, 'Seunagan', 260),
(3689, 'Seunagan Timur', 260),
(3690, 'Suka Makmue', 260),
(3691, 'Tadu Raya', 260),
(3692, 'Tripa Makmur', 260),
(3693, 'Batee', 261),
(3694, 'Delima', 261),
(3695, 'Geumpang', 261),
(3696, 'Glumpang Baro', 261),
(3697, 'Glumpang Tiga (Geulumpang Tiga)', 261),
(3698, 'Grong Grong', 261),
(3699, 'Indrajaya', 261),
(3700, 'Kembang Tanjong', 261),
(3701, 'Keumala', 261),
(3702, 'Kota Sigli', 261),
(3703, 'Mane', 261),
(3704, 'Mila', 261),
(3705, 'Muara Tiga', 261),
(3706, 'Mutiara', 261),
(3707, 'Mutiara Timur', 261),
(3708, 'Padang Tiji', 261),
(3709, 'Peukan Baro', 261),
(3710, 'Pidie', 261),
(3711, 'Sakti', 261),
(3712, 'Tangse', 261),
(3713, 'Tiro/Truseb', 261),
(3714, 'Titeue', 261),
(3715, 'Bandar Baru', 262),
(3716, 'Bandar Dua', 262),
(3717, 'Jangka Buya', 262),
(3718, 'Meurah Dua', 262),
(3719, 'Meureudu', 262),
(3720, 'Panteraja', 262),
(3721, 'Trienggadeng', 262),
(3722, 'Ulim', 262),
(3723, 'Alapan (Alafan)', 264),
(3724, 'Salang', 264),
(3725, 'Simeuleu Barat', 264),
(3726, 'Simeuleu Tengah', 264),
(3727, 'Simeuleu Timur', 264),
(3728, 'Simeulue Cut', 264),
(3729, 'Teluk Dalam', 264),
(3730, 'Teupah Barat', 264),
(3731, 'Teupah Selatan', 264),
(3732, 'Teupah Tengah', 264),
(3733, 'Longkib', 265),
(3734, 'Penanggalan', 265),
(3735, 'Rundeng', 265),
(3736, 'Simpang Kiri', 265),
(3737, 'Sultan Daulat', 265),
(3738, 'Asakota', 266),
(3739, 'Mpunda', 266),
(3740, 'Raba', 266),
(3741, 'Rasanae Barat', 266),
(3742, 'Rasanae Timur', 266),
(3743, 'Ambalawi', 266),
(3744, 'Belo', 266),
(3745, 'Bolo', 266),
(3746, 'Donggo', 266),
(3747, 'Lambitu', 266),
(3748, 'Lambu', 266),
(3749, 'Langgudu', 266),
(3750, 'Madapangga', 266),
(3751, 'Monta', 266),
(3752, 'Palibelo', 266),
(3753, 'Parado', 266),
(3754, 'Sanggar', 266),
(3755, 'Sape', 266),
(3756, 'Soromandi', 266),
(3757, 'Wawo', 266),
(3758, 'Wera', 266),
(3759, 'Woha', 266),
(3760, 'Dompu', 267),
(3761, 'Hu u', 267),
(3762, 'Kempo', 267),
(3763, 'Kilo', 267),
(3764, 'Manggalewa', 267),
(3765, 'Pajo', 267),
(3766, 'Pekat', 267),
(3767, 'Woja', 267),
(3768, 'Batu Layar', 268),
(3769, 'Gerung', 268),
(3770, 'Labuapi', 268),
(3771, 'Lembar', 268),
(3772, 'Lingsar', 268),
(3773, 'Narmada', 268),
(3774, 'Sekotong', 268),
(3775, 'Batukliang', 269),
(3776, 'Batukliang Utara', 269),
(3777, 'Janapria', 269),
(3778, 'Jonggat', 269),
(3779, 'Kopang', 269),
(3780, 'Praya', 269),
(3781, 'Praya Barat', 269),
(3782, 'Praya Barat Daya', 269),
(3783, 'Praya Tengah', 269),
(3784, 'Praya Timur', 269),
(3785, 'Pringgarata', 269),
(3786, 'Pujut', 269),
(3787, 'Aikmel', 270),
(3788, 'Jerowaru', 270),
(3789, 'Keruak', 270),
(3790, 'Masbagik', 270),
(3791, 'Montong Gading', 270),
(3792, 'Pringgabaya', 270),
(3793, 'Pringgasela', 270),
(3794, 'Sakra', 270),
(3795, 'Sakra Barat', 270),
(3796, 'Sakra Timur', 270),
(3797, 'Sambalia (Sambelia)', 270),
(3798, 'Selong', 270),
(3799, 'Sembalun', 270),
(3800, 'Sikur', 270),
(3801, 'Suela (Suwela)', 270),
(3802, 'Sukamulia', 270),
(3803, 'Suralaga', 270),
(3804, 'Terara', 270),
(3805, 'Wanasaba', 270),
(3806, 'Gangga', 271),
(3807, 'Kayangan', 271),
(3808, 'Pemenang', 271),
(3809, 'Ampenan', 272),
(3810, 'Cakranegara', 272),
(3811, 'Mataram', 272),
(3812, 'Sandubaya (Sandujaya)', 272),
(3813, 'Sekarbela', 272),
(3814, 'Selaparang (Selaprang)', 272),
(3815, 'Alas', 273),
(3816, 'Alas Barat', 273),
(3817, 'Batulanteh', 273),
(3818, 'Buer', 273),
(3819, 'Empang', 273),
(3820, 'Labangka', 273),
(3821, 'Labuhan Badas', 273),
(3822, 'Lantung', 273),
(3823, 'Lape (Lape Lopok)', 273),
(3824, 'Lenangguar', 273),
(3825, 'Lopok', 273),
(3826, 'Lunyuk', 273),
(3827, 'Maronge', 273),
(3828, 'Moyo Hilir', 273),
(3829, 'Moyo Hulu', 273),
(3830, 'Moyo Utara', 273),
(3831, 'Orong Telu', 273),
(3832, 'Plampang', 273),
(3833, 'Rhee', 273),
(3834, 'Ropang', 273),
(3835, 'Sumbawa', 273),
(3836, 'Tarano', 273),
(3837, 'Unter Iwes (Unterwiris)', 273),
(3838, 'Utan', 273),
(3839, 'Brang Ene', 274),
(3840, 'Brang Rea', 274),
(3841, 'Jereweh', 274),
(3842, 'Maluk', 274),
(3843, 'Poto Tano', 274),
(3844, 'Sateluk (Seteluk)', 274),
(3845, 'Sekongkang', 274),
(3846, 'Taliwang', 274),
(3847, 'Alor Barat Daya', 275),
(3848, 'Alor Barat Laut', 275),
(3849, 'Alor Selatan', 275),
(3850, 'Alor Tengah Utara', 275),
(3851, 'Alor Timur', 275),
(3852, 'Alor Timur Laut', 275),
(3853, 'Kabola', 275),
(3854, 'Lembur', 275),
(3855, 'Mataru', 275),
(3856, 'Pantar', 275),
(3857, 'Pantar Barat', 275),
(3858, 'Pantar Barat Laut', 275),
(3859, 'Pantar Tengah', 275),
(3860, 'Pantar Timur', 275),
(3861, 'Pulau Pura', 275),
(3862, 'Pureman', 275),
(3863, 'Teluk Mutiara', 275),
(3864, 'Atambua Barat', 276),
(3865, 'Atambua Kota', 276),
(3866, 'Atambua Selatan', 276),
(3867, 'Kakuluk Mesak', 276),
(3868, 'Lamaknen', 276),
(3869, 'Lamaknen Selatan', 276),
(3870, 'Lasiolat', 276),
(3871, 'Nanaet Duabesi', 276),
(3872, 'Raihat', 276),
(3873, 'Raimanuk', 276),
(3874, 'Tasifeto Barat', 276),
(3875, 'Tasifeto Timur', 276),
(3876, 'Detukeli', 277),
(3877, 'Detusoko', 277),
(3878, 'Ende', 277),
(3879, 'Ende Selatan', 277),
(3880, 'Ende Tengah', 277),
(3881, 'Ende Timur', 277),
(3882, 'Ende Utara', 277),
(3883, 'Kelimutu', 277),
(3884, 'Lepembusu Kelisoke', 277),
(3885, 'Lio Timur', 277),
(3886, 'Maukaro', 277),
(3887, 'Maurole', 278),
(3888, 'Nangapanda', 278),
(3889, 'Ndona', 278),
(3890, 'Ndona Timur', 278),
(3891, 'Ndori', 278),
(3892, 'Pulau Ende', 278),
(3893, 'Wewaria', 278),
(3894, 'Wolojita', 278),
(3895, 'Wolowaru', 278),
(3896, 'Adonara', 279),
(3897, 'Adonara Barat', 279),
(3898, 'Adonara Tengah', 279),
(3899, 'Adonara Timur', 279),
(3900, 'Demon Pagong', 279),
(3901, 'Ile Boleng', 280),
(3902, 'Ile Bura', 280),
(3903, 'Ile Mandiri', 280),
(3904, 'Kelubagolit', 280),
(3905, 'Larantuka', 280),
(3906, 'Lewolema', 280),
(3907, 'Solor Barat', 280),
(3908, 'Solor Selatan', 280),
(3909, 'Solor Timur', 280),
(3910, 'Tanjung Bunga', 280),
(3911, 'Titehena', 280),
(3912, 'Witihama', 280),
(3913, 'Wotan Ulumando', 280),
(3914, 'Wulanggitang', 280),
(3915, 'Alak', 281),
(3916, 'Kelapa Lima', 281),
(3917, 'Kota Lama', 281),
(3918, 'Kota Raja', 281),
(3919, 'Maulafa', 281),
(3920, 'Oebobo', 281),
(3921, 'Amabi Oefeto', 281),
(3922, 'Amabi Oefeto Timur', 281),
(3923, 'Amarasi', 281),
(3924, 'Amarasi Barat', 281),
(3925, 'Amarasi Selatan', 281),
(3926, 'Amarasi Timur', 281),
(3927, 'Amfoang Barat Daya', 281),
(3928, 'Amfoang Barat Laut', 281),
(3929, 'Amfoang Selatan', 281),
(3930, 'Amfoang Tengah', 281),
(3931, 'Amfoang Timur', 281),
(3932, 'Amfoang Utara', 281),
(3933, 'Fatuleu', 281),
(3934, 'Fatuleu Barat', 281),
(3935, 'Fatuleu Tengah', 281),
(3936, 'Kupang Barat', 281),
(3937, 'Kupang Tengah', 281),
(3938, 'Kupang Timur', 281),
(3939, 'Nekamese', 281),
(3940, 'Semau', 281),
(3941, 'Semau Selatan', 281),
(3942, 'Sulamu', 281),
(3943, 'Taebenu', 281),
(3944, 'Takari', 281),
(3945, 'Atadei', 282),
(3946, 'Buyasuri', 282),
(3947, 'Ile Ape', 282),
(3948, 'Ile Ape Timur', 282),
(3949, 'Lebatukan', 282),
(3950, 'Naga Wutung', 282),
(3951, 'Nubatukan', 282),
(3952, 'Omesuri', 282),
(3953, 'Wulandoni', 282),
(3954, 'Botin Leobele', 283),
(3955, 'Io Kufeu', 283),
(3956, 'Kobalima', 283),
(3957, 'Kobalima Timur', 283),
(3958, 'Laenmanen', 283),
(3959, 'Malaka Barat', 283),
(3960, 'Malaka Tengah', 283),
(3961, 'Malaka Timur', 283),
(3962, 'Rinhat', 283),
(3963, 'Sasitamean', 283),
(3964, 'Weliman', 283),
(3965, 'Wewiku', 283),
(3966, 'Cibal', 284),
(3967, 'Cibal Barat', 284),
(3968, 'Langke Rembong', 284),
(3969, 'Lelak', 284),
(3970, 'Rahong Utara', 284),
(3971, 'Reok', 284),
(3972, 'Reok Barat', 284),
(3973, 'Ruteng', 284),
(3974, 'Satar Mese', 284),
(3975, 'Satar Mese Barat', 284),
(3976, 'Wae Rii', 284),
(3977, 'Boleng', 285),
(3978, 'Komodo', 285),
(3979, 'Kuwus', 285),
(3980, 'Lembor', 285),
(3981, 'Lembor Selatan', 285),
(3982, 'Macang Pacar', 285),
(3983, 'Mbeliling', 285),
(3984, 'Ndoso', 285),
(3985, 'Sano Nggoang', 285),
(3986, 'Welak', 285),
(3987, 'Borong', 286),
(3988, 'Elar', 286),
(3989, 'Elar Selatan', 286),
(3990, 'Kota Komba', 286),
(3991, 'Lamba Leda', 286),
(3992, 'Poco Ranaka', 286),
(3993, 'Poco Ranaka Timur', 286),
(3994, 'Rana Mese', 286),
(3995, 'Sambi Rampas', 286),
(3996, 'Aesesa', 287),
(3997, 'Aesesa Selatan', 287),
(3998, 'Boawae', 287),
(3999, 'Keo Tengah', 287),
(4000, 'Mauponggo', 287),
(4001, 'Nangaroro', 287),
(4002, 'Wolowae', 287),
(4003, 'Aimere', 288),
(4004, 'Bajawa', 288),
(4005, 'Bajawa Utara', 288),
(4006, 'Golewa', 288),
(4007, 'Golewa Barat', 288),
(4008, 'Golewa Selatan', 288),
(4009, 'Inerie', 288),
(4010, 'Jerebuu', 288),
(4011, 'Riung', 288),
(4012, 'Riung Barat', 288),
(4013, 'Soa', 288),
(4014, 'Wolomeze (Riung Selatan)', 288),
(4015, 'Landu Leko', 289),
(4016, 'Lobalain', 289),
(4017, 'Ndao Nuse', 289),
(4018, 'Pantai Baru', 289),
(4019, 'Rote Barat', 289),
(4020, 'Rote Barat Daya', 289),
(4021, 'Rote Barat Laut', 289),
(4022, 'Rote Selatan', 289),
(4023, 'Rote Tengah', 289),
(4024, 'Rote Timur', 289),
(4025, 'Hawu Mehara', 290),
(4026, 'Raijua', 290),
(4027, 'Sabu Barat', 290),
(4028, 'Sabu Liae', 290),
(4029, 'Sabu Tengah', 290),
(4030, 'Sabu Timur', 290),
(4031, 'Alok', 291),
(4032, 'Alok Barat', 291),
(4033, 'Alok Timur', 291),
(4034, 'Bola', 291),
(4035, 'Doreng', 291),
(4036, 'Hewokloang', 291),
(4037, 'Kangae', 291),
(4038, 'Kewapante', 291),
(4039, 'Koting', 291),
(4040, 'Lela', 291),
(4041, 'Magepanda', 291),
(4042, 'Mapitara', 291),
(4043, 'Mego', 291),
(4044, 'Nelle (Maumerei)', 291),
(4045, 'Nita', 291),
(4046, 'Paga', 291),
(4047, 'Palue', 291),
(4048, 'Talibura', 291),
(4049, 'Tana Wawo', 291),
(4050, 'Waiblama', 291),
(4051, 'Waigete', 291),
(4052, 'Kota Waikabubak', 292),
(4053, 'Lamboya', 292),
(4054, 'Lamboya Barat', 292),
(4055, 'Loli', 292),
(4056, 'Tana Righu', 292),
(4057, 'Wanokaka', 292),
(4058, 'Kodi', 293),
(4059, 'Kodi Balaghar', 293),
(4060, 'Kodi Bangedo', 293),
(4061, 'Kodi Utara', 293),
(4062, 'Kota Tambolaka', 293),
(4063, 'Loura (Laura)', 293),
(4064, 'Wewewa Barat', 293),
(4065, 'Wewewa Selatan', 293),
(4066, 'Wewewa Tengah (Wewera Tengah)', 293),
(4067, 'Wewewa Timur', 293),
(4068, 'Wewewa Utara', 293),
(4069, 'Katiku Tana', 294),
(4070, 'Katikutana Selatan', 294),
(4071, 'Mamboro', 294),
(4072, 'Umbu Ratu Nggay', 294),
(4073, 'Umbu Ratu Nggay Barat', 294),
(4074, 'Haharu', 295),
(4075, 'Kahaunguweti (Kahaungu Eti)', 295),
(4076, 'Kambata Mapambuhang', 295),
(4077, 'Kambera', 295),
(4078, 'Kanatang', 295),
(4079, 'Karera', 295),
(4080, 'Katala Hamu Lingu', 295),
(4081, 'Kota Waingapu', 295),
(4082, 'Lewa', 295),
(4083, 'Lewa Tidahu', 295),
(4084, 'Mahu', 295),
(4085, 'Matawai Lappau (La Pawu)', 295),
(4086, 'Ngadu Ngala', 295),
(4087, 'Nggaha Oriangu', 295),
(4088, 'Paberiwai', 295),
(4089, 'Pahunga Lodu', 295),
(4090, 'Pandawai', 295),
(4091, 'Pinupahar (Pirapahar)', 295),
(4092, 'Rindi', 295),
(4093, 'Tabundung', 295),
(4094, 'Umalulu', 295),
(4095, 'Wula Waijelu', 295),
(4096, 'Amanatun Selatan', 296),
(4097, 'Amanatun Utara', 296),
(4098, 'Amanuban Barat', 296),
(4099, 'Amanuban Selatan', 296),
(4100, 'Amanuban Tengah', 296),
(4101, 'Amanuban Timur', 296),
(4102, 'Boking', 296),
(4103, 'Fatukopa', 296),
(4104, 'Fatumnasi', 296),
(4105, 'Fautmolo', 296),
(4106, 'Kie', 296),
(4107, 'Kok Baun', 296),
(4108, 'Kolbano', 296),
(4109, 'Kot Olin', 296),
(4110, 'Kota Soe', 296),
(4111, 'Kualin', 296),
(4112, 'Kuanfatu', 296),
(4113, 'Kuatnana', 296),
(4114, 'Mollo Barat', 296),
(4115, 'Mollo Selatan', 296),
(4116, 'Mollo Tengah', 296),
(4117, 'Mollo Utara', 296),
(4118, 'Noebana', 296),
(4119, 'Noebeba', 296),
(4120, 'Nunbena', 296),
(4121, 'Nunkolo', 296),
(4122, 'Oenino', 296),
(4123, 'Polen', 296),
(4124, 'Santian', 296),
(4125, 'Tobu', 296),
(4126, 'Toianas', 296),
(4127, 'Biboki Anleu', 297),
(4128, 'Biboki Feotleu', 297),
(4129, 'Biboki Moenleu', 297),
(4130, 'Biboki Selatan', 297),
(4131, 'Biboki Tan Pah', 297),
(4132, 'Biboki Utara', 297),
(4133, 'Bikomi Nilulat', 297),
(4134, 'Bikomi Selatan', 297),
(4135, 'Bikomi Tengah', 297),
(4136, 'Bikomi Utara', 297),
(4137, 'Insana', 297),
(4138, 'Insana Barat', 297),
(4139, 'Insana Fafinesu', 297),
(4140, 'Insana Tengah', 297),
(4141, 'Insana Utara', 297),
(4142, 'Kota Kefamenanu', 297),
(4143, 'Miomafo Barat', 297),
(4144, 'Miomafo Tengah', 297),
(4145, 'Miomafo Timur', 297),
(4146, 'Musi', 297),
(4147, 'Mutis', 297),
(4148, 'Naibenu', 297),
(4149, 'Noemuti', 297),
(4150, 'Noemuti Timur', 297),
(4151, 'Agats', 298),
(4152, 'Akat', 298),
(4153, 'Atsy / Atsj', 298),
(4154, 'Ayip', 298),
(4155, 'Betcbamu', 298),
(4156, 'Der Koumur', 298),
(4157, 'Fayit', 298),
(4158, 'Jetsy', 298);
INSERT INTO `data_kecamatan` (`id_kec`, `nama_kec`, `id_kab`) VALUES
(4159, 'Joerat', 298),
(4160, 'Kolf Braza', 298),
(4161, 'Kopay', 298),
(4162, 'Pantai Kasuari', 298),
(4163, 'Safan', 298),
(4164, 'Sawa Erma', 298),
(4165, 'Sirets', 298),
(4166, 'Suator', 298),
(4167, 'Suru-suru', 298),
(4168, 'Unir Sirau', 298),
(4169, 'Aimando Padaido', 299),
(4170, 'Andey', 299),
(4171, 'Biak Barat', 299),
(4172, 'Biak Kota', 299),
(4173, 'Biak Timur', 299),
(4174, 'Biak Utara', 299),
(4175, 'Bondifuar', 299),
(4176, 'Bruyadori', 299),
(4177, 'Numfor Barat', 299),
(4178, 'Numfor Timur', 299),
(4179, 'Oridek', 299),
(4180, 'Orkeri', 299),
(4181, 'Padaido', 299),
(4182, 'Poiru', 299),
(4183, 'Samofa', 299),
(4184, 'Swandiwe', 299),
(4185, 'Warsa', 299),
(4186, 'Yawosi', 299),
(4187, 'Yendidori', 299),
(4188, 'Ambatkwi (Ambatkui)', 300),
(4189, 'Arimop', 300),
(4190, 'Bomakia', 300),
(4191, 'Firiwage', 300),
(4192, 'Fofi', 300),
(4193, 'Iniyandit', 300),
(4194, 'Jair', 300),
(4195, 'Kawagit', 300),
(4196, 'Ki', 300),
(4197, 'Kombay', 300),
(4198, 'Kombut', 300),
(4199, 'Kouh', 300),
(4200, 'Mandobo', 300),
(4201, 'Manggelum', 300),
(4202, 'Mindiptana', 300),
(4203, 'Ninati', 300),
(4204, 'Sesnuk', 300),
(4205, 'Subur', 300),
(4206, 'Waropko', 300),
(4207, 'Yaniruma', 300),
(4208, 'Bowobado', 301),
(4209, 'Kapiraya', 301),
(4210, 'Tigi', 301),
(4211, 'Tigi Barat', 301),
(4212, 'Tigi Timur', 301),
(4213, 'Dogiyai', 302),
(4214, 'Kamu', 302),
(4215, 'Kamu Selatan', 302),
(4216, 'Kamu Timur', 302),
(4217, 'Kamu Utara (Ikrar/Ikrat)', 302),
(4218, 'Mapia', 302),
(4219, 'Mapia Barat', 302),
(4220, 'Mapia Tengah', 302),
(4221, 'Piyaiye (Sukikai)', 302),
(4222, 'Sukikai Selatan', 302),
(4223, 'Agisiga', 303),
(4224, 'Biandoga', 303),
(4225, 'Hitadipa', 303),
(4226, 'Homeyo', 303),
(4227, 'Sugapa', 303),
(4228, 'Tomosiga', 303),
(4229, 'Ugimba', 303),
(4230, 'Wandai', 303),
(4231, 'Abepura', 304),
(4232, 'Heram', 304),
(4233, 'Jayapura Selatan', 304),
(4234, 'Jayapura Utara', 304),
(4235, 'Muara Tami', 304),
(4236, 'Airu', 304),
(4237, 'Demta', 304),
(4238, 'Depapre', 304),
(4239, 'Ebungfau (Ebungfa)', 304),
(4240, 'Gresi Selatan', 304),
(4241, 'Kaureh', 304),
(4242, 'Kemtuk', 304),
(4243, 'Kemtuk Gresi', 304),
(4244, 'Nambluong', 304),
(4245, 'Nimbokrang', 304),
(4246, 'Nimboran', 304),
(4247, 'Ravenirara', 304),
(4248, 'Sentani', 304),
(4249, 'Sentani Barat', 304),
(4250, 'Sentani Timur', 304),
(4251, 'Unurum Guay', 304),
(4252, 'Waibu', 304),
(4253, 'Yapsi', 304),
(4254, 'Yokari', 304),
(4255, 'Asologaima (Asalogaima)', 305),
(4256, 'Asolokobal', 305),
(4257, 'Asotipo', 305),
(4258, 'Bolakme', 305),
(4259, 'Bpiri', 305),
(4260, 'Bugi', 305),
(4261, 'Hubikiak', 305),
(4262, 'Hubikosi (Hobikosi)', 305),
(4263, 'Ibele', 305),
(4264, 'Itlay Hisage', 305),
(4265, 'Koragi', 305),
(4266, 'Kurulu', 305),
(4267, 'Libarek', 305),
(4268, 'Maima', 305),
(4269, 'Molagalome', 305),
(4270, 'Muliama', 305),
(4271, 'Musatfak', 305),
(4272, 'Napua', 305),
(4273, 'Pelebaga', 305),
(4274, 'Piramid', 305),
(4275, 'Pisugi', 305),
(4276, 'Popugoba', 305),
(4277, 'Siepkosi', 305),
(4278, 'Silo Karno Doga', 305),
(4279, 'Taelarek', 305),
(4280, 'Tagime', 305),
(4281, 'Tagineri', 305),
(4282, 'Trikora', 305),
(4283, 'Usilimo', 305),
(4284, 'Wadangku', 305),
(4285, 'Walaik', 305),
(4286, 'Walelagama', 305),
(4287, 'Wame', 305),
(4288, 'Wamena', 305),
(4289, 'Welesi', 305),
(4290, 'Wesaput', 305),
(4291, 'Wita Waya', 305),
(4292, 'Wollo (Wolo)', 305),
(4293, 'Wouma', 305),
(4294, 'Yalengga', 305),
(4295, 'Arso', 306),
(4296, 'Arso Timur', 306),
(4297, 'Senggi', 306),
(4298, 'Skanto', 306),
(4299, 'Towe', 306),
(4300, 'Waris', 306),
(4301, 'Web', 306),
(4302, 'Angkaisera', 307),
(4303, 'Kepulauan Ambai', 307),
(4304, 'Kosiwo', 307),
(4305, 'Poom', 307),
(4306, 'Pulau Kurudu', 307),
(4307, 'Pulau Yerui', 307),
(4308, 'Raimbawi', 307),
(4309, 'Teluk Ampimoi', 307),
(4310, 'Windesi', 307),
(4311, 'Wonawa', 307),
(4312, 'Yapen Barat', 307),
(4313, 'Yapen Selatan', 307),
(4314, 'Yapen Timur', 307),
(4315, 'Yapen Utara', 307),
(4316, 'Awina', 308),
(4317, 'Ayumnati', 308),
(4318, 'Balingga', 308),
(4319, 'Balingga Barat', 308),
(4320, 'Bruwa', 308),
(4321, 'Buguk Gona', 308),
(4322, 'Dimba', 308),
(4323, 'Gamelia', 308),
(4324, 'Gelok Beam', 308),
(4325, 'Goa Balim', 308),
(4326, 'Gollo', 308),
(4327, 'Guna', 308),
(4328, 'Gupura', 308),
(4329, 'Karu', 308),
(4330, 'Kelulome', 308),
(4331, 'Kolawa', 308),
(4332, 'Kuly Lanny', 308),
(4333, 'Kuyawage', 308),
(4334, 'Lannyna', 308),
(4335, 'Makki', 308),
(4336, 'Melagi', 308),
(4337, 'Melagineri', 308),
(4338, 'Milimbo', 308),
(4339, 'Mokoni', 308),
(4340, 'Muara', 308),
(4341, 'Nikogwe', 308),
(4342, 'Niname', 308),
(4343, 'Nogi', 308),
(4344, 'Pirime', 308),
(4345, 'Poga', 308),
(4346, 'Tiom', 308),
(4347, 'Tiom Ollo', 308),
(4348, 'Tiomneri', 308),
(4349, 'Wano Barat', 308),
(4350, 'Wereka', 308),
(4351, 'Wiringgambut', 308),
(4352, 'Yiginua', 308),
(4353, 'Yiluk', 308),
(4354, 'Yugungwi', 308),
(4355, 'Benuki', 309),
(4356, 'Mamberamo Hilir/Ilir', 309),
(4357, 'Mamberamo Hulu', 309),
(4358, 'Mamberamo Tengah', 309),
(4359, 'Mamberamo Tengah Timur', 309),
(4360, 'Rufaer', 309),
(4361, 'Sawai', 309),
(4362, 'Waropen Atas', 309),
(4363, 'Eragayam', 310),
(4364, 'Ilugwa', 310),
(4365, 'Kelila', 310),
(4366, 'Kobakma', 310),
(4367, 'Megabilis (Megambilis)', 310),
(4368, 'Assue', 311),
(4369, 'Bamgi', 311),
(4370, 'Citakmitak', 311),
(4371, 'Edera', 311),
(4372, 'Haju', 311),
(4373, 'Kaibar', 311),
(4374, 'Minyamur', 311),
(4375, 'Nambioman Bapai (Mambioman)', 311),
(4376, 'Obaa', 311),
(4377, 'Passue', 311),
(4378, 'Passue Bawah', 311),
(4379, 'Syahcame', 311),
(4380, 'Ti Zain', 311),
(4381, 'Venaha', 311),
(4382, 'Yakomi', 311),
(4383, 'Animha', 312),
(4384, 'Elikobal', 312),
(4385, 'Ilyawab', 312),
(4386, 'Jagebob', 312),
(4387, 'Kaptel', 312),
(4388, 'Kimaam', 312),
(4389, 'Kurik', 312),
(4390, 'Malind', 312),
(4391, 'Merauke', 312),
(4392, 'Muting', 312),
(4393, 'Naukenjerai', 312),
(4394, 'Ngguti', 312),
(4395, 'Okaba', 312),
(4396, 'Semangga', 312),
(4397, 'Sota', 312),
(4398, 'Tabonji', 312),
(4399, 'Tanah Miring', 312),
(4400, 'Tubang', 312),
(4401, 'Ulilin', 312),
(4402, 'Waan', 312),
(4403, 'Agimuga', 313),
(4404, 'Alama', 313),
(4405, 'Amar', 313),
(4406, 'Hoya', 313),
(4407, 'Iwaka', 313),
(4408, 'Jila', 313),
(4409, 'Jita', 313),
(4410, 'Kuala Kencana', 313),
(4411, 'Kwamki Narama', 313),
(4412, 'Mimika Barat', 313),
(4413, 'Mimika Barat Jauh', 313),
(4414, 'Mimika Barat Tengah', 313),
(4415, 'Mimika Baru', 313),
(4416, 'Mimika Tengah', 313),
(4417, 'Mimika Timur', 313),
(4418, 'Mimika Timur Jauh', 313),
(4419, 'Tembagapura', 313),
(4420, 'Wania', 313),
(4421, 'Dipa', 314),
(4422, 'Makimi', 314),
(4423, 'Menou', 314),
(4424, 'Moora', 314),
(4425, 'Nabire', 314),
(4426, 'Nabire Barat', 314),
(4427, 'Napan', 314),
(4428, 'Siriwo', 314),
(4429, 'Teluk Kimi', 314),
(4430, 'Teluk Umar', 314),
(4431, 'Uwapa', 314),
(4432, 'Wanggar', 314),
(4433, 'Wapoga', 314),
(4434, 'Yaro (Yaro Kabisay)', 314),
(4435, 'Yaur', 314),
(4436, 'Dal', 315),
(4437, 'Embetpen', 315),
(4438, 'Gearek', 315),
(4439, 'Geselma (Geselema)', 315),
(4440, 'Inikgal', 315),
(4441, 'Iniye', 315),
(4442, 'Kegayem', 315),
(4443, 'Kenyam', 315),
(4444, 'Kilmid', 315),
(4445, 'Kora', 315),
(4446, 'Koroptak', 315),
(4447, 'Krepkuri', 315),
(4448, 'Mam', 315),
(4449, 'Mapenduma', 315),
(4450, 'Mbua (Mbuga)', 315),
(4451, 'Mbua Tengah', 315),
(4452, 'Mbulmu Yalma', 315),
(4453, 'Mebarok', 315),
(4454, 'Moba', 315),
(4455, 'Mugi', 315),
(4456, 'Nenggeagin', 315),
(4457, 'Nirkuri', 315),
(4458, 'Paro', 315),
(4459, 'Pasir Putih', 315),
(4460, 'Pija', 315),
(4461, 'Wosak', 315),
(4462, 'Wusi', 315),
(4463, 'Wutpaga', 315),
(4464, 'Yal', 315),
(4465, 'Yenggelo', 315),
(4466, 'Yigi', 315),
(4467, 'Aradide', 316),
(4468, 'Bibida', 316),
(4469, 'Bogobaida', 316),
(4470, 'Dumadama', 316),
(4471, 'Ekadide', 316),
(4472, 'Kebo', 316),
(4473, 'Paniai Barat', 316),
(4474, 'Paniai Timur', 316),
(4475, 'Yatamo', 316),
(4476, 'Aboy', 317),
(4477, 'Alemsom', 317),
(4478, 'Awinbon', 317),
(4479, 'Batani', 317),
(4480, 'Batom', 317),
(4481, 'Bime', 317),
(4482, 'Borme', 317),
(4483, 'Eipumek', 317),
(4484, 'Iwur (Okiwur)', 317),
(4485, 'Jetfa', 317),
(4486, 'Kalomdol', 317),
(4487, 'Kawor', 317),
(4488, 'Kiwirok', 317),
(4489, 'Kiwirok Timur', 317),
(4490, 'Mofinop', 317),
(4491, 'Murkim', 317),
(4492, 'Nongme', 317),
(4493, 'Ok Aom', 317),
(4494, 'Okbab', 317),
(4495, 'Okbape', 317),
(4496, 'Okbemtau', 317),
(4497, 'Okbibab', 317),
(4498, 'Okhika', 317),
(4499, 'Oklip', 317),
(4500, 'Oksamol', 317),
(4501, 'Oksebang', 317),
(4502, 'Oksibil', 317),
(4503, 'Oksop', 317),
(4504, 'Pamek', 317),
(4505, 'Pepera', 317),
(4506, 'Serambakon', 317),
(4507, 'Tarup', 317),
(4508, 'Teiraplu', 317),
(4509, 'Weime', 317),
(4510, 'Agadugume', 318),
(4511, 'Beoga', 318),
(4512, 'Doufu', 318),
(4513, 'Gome', 318),
(4514, 'Ilaga', 318),
(4515, 'Pogoma', 318),
(4516, 'Sinak', 318),
(4517, 'Wangbe', 318),
(4518, 'Dagai', 319),
(4519, 'Dokome', 319),
(4520, 'Fawi', 319),
(4521, 'Gubume', 319),
(4522, 'Gurage', 319),
(4523, 'Ilamburawi', 319),
(4524, 'Ilu', 319),
(4525, 'Irimuli', 319),
(4526, 'Kalome', 319),
(4527, 'Kiyage', 319),
(4528, 'Lumo', 319),
(4529, 'Mewoluk', 319),
(4530, 'Molanikime', 319),
(4531, 'Mulia', 319),
(4532, 'Nioga', 319),
(4533, 'Nume', 319),
(4534, 'Pagaleme', 319),
(4535, 'Taganombak', 319),
(4536, 'Tingginambut', 319),
(4537, 'Torere', 319),
(4538, 'Waegi', 319),
(4539, 'Wanwi', 319),
(4540, 'Yambi', 319),
(4541, 'Yamo', 319),
(4542, 'Yamoneri', 319),
(4543, 'Apawer Hulu', 320),
(4544, 'Bonggo', 320),
(4545, 'Bonggo Timur', 320),
(4546, 'Pantai Barat', 320),
(4547, 'Pantai Timur', 320),
(4548, 'Pantai Timur Bagian Barat', 320),
(4549, 'Sarmi', 320),
(4550, 'Sarmi Selatan', 320),
(4551, 'Sarmi Timur', 320),
(4552, 'Tor Atas', 320),
(4553, 'Kepulauan Aruri', 321),
(4554, 'Supiori Barat', 321),
(4555, 'Supiori Selatan', 321),
(4556, 'Supiori Timur', 321),
(4557, 'Supiori Utara', 321),
(4558, 'Airgaram', 322),
(4559, 'Anawi', 322),
(4560, 'Aweku', 322),
(4561, 'Bewani', 322),
(4562, 'Biuk', 322),
(4563, 'Bogonuk', 322),
(4564, 'Bokondini', 322),
(4565, 'Bokoneri', 322),
(4566, 'Danime', 322),
(4567, 'Dow', 322),
(4568, 'Dundu (Ndundu)', 322),
(4569, 'Egiam', 322),
(4570, 'Geya', 322),
(4571, 'Gika', 322),
(4572, 'Gilubandu (Gilumbandu/Gilimbandu)', 322),
(4573, 'Goyage', 322),
(4574, 'Gundagi (Gudage)', 322),
(4575, 'Kai', 322),
(4576, 'Kamboneri', 322),
(4577, 'Kanggime (Kanggima )', 322),
(4578, 'Karubaga', 322),
(4579, 'Kembu', 322),
(4580, 'Kondaga (Konda)', 322),
(4581, 'Kuari', 322),
(4582, 'Li Anogomma', 322),
(4583, 'Nabunage', 322),
(4584, 'Nelawi', 322),
(4585, 'Numba', 322),
(4586, 'Nunggawi (Munggawi)', 322),
(4587, 'Panaga', 322),
(4588, 'Poganeri', 322),
(4589, 'Telenggeme', 322),
(4590, 'Timori', 322),
(4591, 'Umagi', 322),
(4592, 'Wakuwo', 322),
(4593, 'Wari (Taiyeve)', 322),
(4594, 'Wenam', 322),
(4595, 'Wina', 322),
(4596, 'Wonoki (Woniki)', 322),
(4597, 'Wugi', 322),
(4598, 'Wunin (Wumin)', 322),
(4599, 'Yuko', 322),
(4600, 'Yuneri', 322),
(4601, 'Demba', 323),
(4602, 'Inggerus', 323),
(4603, 'Kirihi', 323),
(4604, 'Masirei', 323),
(4605, 'Oudate', 323),
(4606, 'Risei Sayati', 323),
(4607, 'Soyoi Mambai', 323),
(4608, 'Urei Faisei', 323),
(4609, 'Waropen Bawah', 323),
(4610, 'Wonti', 323),
(4611, 'Amuma', 324),
(4612, 'Anggruk', 324),
(4613, 'Bomela', 324),
(4614, 'Dekai', 324),
(4615, 'Dirwemna (Diruwena)', 324),
(4616, 'Duram', 324),
(4617, 'Endomen', 324),
(4618, 'Hereapini (Hereanini)', 324),
(4619, 'Hilipuk', 324),
(4620, 'Hogio (Hugio)', 324),
(4621, 'Holuon', 324),
(4622, 'Kabianggama (Kabianggema)', 324),
(4623, 'Kayo', 324),
(4624, 'Kona', 324),
(4625, 'Koropun (Korupun)', 324),
(4626, 'Kosarek', 324),
(4627, 'Kurima', 324),
(4628, 'Kwelemdua (Kwelamdua)', 324),
(4629, 'Kwikma', 324),
(4630, 'Langda', 324),
(4631, 'Lolat', 324),
(4632, 'Musaik', 324),
(4633, 'Nalca', 324),
(4634, 'Ninia', 324),
(4635, 'Nipsan', 324),
(4636, 'Obio', 324),
(4637, 'Panggema', 324),
(4638, 'Pasema', 324),
(4639, 'Pronggoli (Proggoli)', 324),
(4640, 'Puldama', 324),
(4641, 'Samenage', 324),
(4642, 'Sela', 324),
(4643, 'Seredela (Seredala)', 324),
(4644, 'Silimo', 324),
(4645, 'Soba', 324),
(4646, 'Sobaham', 324),
(4647, 'Soloikma', 324),
(4648, 'Sumo', 324),
(4649, 'Suntamon', 324),
(4650, 'Suru Suru', 324),
(4651, 'Talambo', 324),
(4652, 'Tangma', 324),
(4653, 'Ubahak', 324),
(4654, 'Ubalihi', 324),
(4655, 'Ukha', 324),
(4656, 'Walma', 324),
(4657, 'Werima', 324),
(4658, 'Wusuma', 324),
(4659, 'Yahuliambut', 324),
(4660, 'Yogosem', 324),
(4661, 'Abenaho', 325),
(4662, 'Apalapsili', 325),
(4663, 'Benawa', 325),
(4664, 'Elelim', 325),
(4665, 'Welarek', 325),
(4666, 'Arguni', 326),
(4667, 'Bomberay', 326),
(4668, 'Fakfak', 326),
(4669, 'Fakfak Barat', 326),
(4670, 'Fakfak Tengah', 326),
(4671, 'Fakfak Timur', 326),
(4672, 'Fakfak Timur Tengah', 326),
(4673, 'Furwagi', 326),
(4674, 'Kayauni', 326),
(4675, 'Kokas', 326),
(4676, 'Kramongmongga', 326),
(4677, 'Mbahamdandara', 326),
(4678, 'Pariwari', 326),
(4679, 'Teluk Patipi', 326),
(4680, 'Tomage', 326),
(4681, 'Wartutin', 326),
(4682, 'Buruway', 327),
(4683, 'Kaimana', 327),
(4684, 'Kambraw (Kamberau)', 327),
(4685, 'Teluk Arguni Atas', 327),
(4686, 'Teluk Arguni Bawah (Yerusi)', 327),
(4687, 'Teluk Etna', 327),
(4688, 'Yamor', 327),
(4689, 'Manokwari Barat', 328),
(4690, 'Manokwari Selatan', 328),
(4691, 'Manokwari Timur', 328),
(4692, 'Manokwari Utara', 328),
(4693, 'Masni', 328),
(4694, 'Prafi', 328),
(4695, 'Sidey', 328),
(4696, 'Tanah Rubuh', 328),
(4697, 'Warmare', 328),
(4698, 'Dataran Isim', 329),
(4699, 'Momi Waren', 329),
(4700, 'Neney', 329),
(4701, 'Oransbari', 329),
(4702, 'Ransiki', 329),
(4703, 'Tahota', 329),
(4704, 'Aifat', 330),
(4705, 'Aifat Selatan', 330),
(4706, 'Aifat Timur', 330),
(4707, 'Aifat Timur Jauh', 330),
(4708, 'Aifat Timur Selatan', 330),
(4709, 'Aifat Timur Tengah', 330),
(4710, 'Aifat Utara', 330),
(4711, 'Aitinyo', 330),
(4712, 'Aitinyo Barat', 330),
(4713, 'Aitinyo Raya', 330),
(4714, 'Aitinyo Tengah', 330),
(4715, 'Aitinyo Utara', 330),
(4716, 'Ayamaru', 330),
(4717, 'Ayamaru Barat', 330),
(4718, 'Ayamaru Jaya', 330),
(4719, 'Ayamaru Selatan', 330),
(4720, 'Ayamaru Selatan Jaya', 330),
(4721, 'Ayamaru Tengah', 330),
(4722, 'Ayamaru Timur', 330),
(4723, 'Ayamaru Timur Selatan', 330),
(4724, 'Ayamaru Utara', 330),
(4725, 'Ayamaru Utara Timur', 330),
(4726, 'Mare', 330),
(4727, 'Mare Selatan', 330),
(4728, 'Anggi', 331),
(4729, 'Anggi Gida', 331),
(4730, 'Catubouw', 331),
(4731, 'Didohu', 331),
(4732, 'Hingk', 331),
(4733, 'Membey', 331),
(4734, 'Minyambaouw', 331),
(4735, 'Sururey', 331),
(4736, 'Taige', 331),
(4737, 'Testega', 331),
(4738, 'Ayau', 332),
(4739, 'Batanta Selatan', 332),
(4740, 'Batanta Utara', 332),
(4741, 'Kepulauan Ayau', 332),
(4742, 'Kepulauan Sembilan', 332),
(4743, 'Kofiau', 332),
(4744, 'Kota Waisai', 332),
(4745, 'Meos Mansar', 332),
(4746, 'Misool (Misool Utara)', 332),
(4747, 'Misool Barat', 332),
(4748, 'Misool Selatan', 332),
(4749, 'Misool Timur', 332),
(4750, 'Salawati Barat', 332),
(4751, 'Salawati Tengah', 332),
(4752, 'Salawati Utara (Samate)', 332),
(4753, 'Supnin', 332),
(4754, 'Teluk Mayalibit', 332),
(4755, 'Tiplol Mayalibit', 332),
(4756, 'Waigeo Barat', 332),
(4757, 'Waigeo Barat Kepulauan', 332),
(4758, 'Waigeo Selatan', 332),
(4759, 'Waigeo Timur', 332),
(4760, 'Waigeo Utara', 332),
(4761, 'Warwabomi', 332),
(4762, 'Klaurung', 333),
(4763, 'Maladum Mes', 333),
(4764, 'Malaimsimsa', 333),
(4765, 'Sorong', 333),
(4766, 'Sorong Barat', 333),
(4767, 'Sorong Kepulauan', 333),
(4768, 'Sorong Kota', 333),
(4769, 'Sorong Manoi', 333),
(4770, 'Sorong Timur', 333),
(4771, 'Sorong Utara', 333),
(4772, 'Aimas', 333),
(4773, 'Beraur', 333),
(4774, 'Klabot', 333),
(4775, 'Klamono', 333),
(4776, 'Klaso', 333),
(4777, 'Klawak', 333),
(4778, 'Klayili', 333),
(4779, 'Makbon', 333),
(4780, 'Mariat', 333),
(4781, 'Maudus', 333),
(4782, 'Mayamuk', 333),
(4783, 'Moisegen', 333),
(4784, 'Salawati', 333),
(4785, 'Salawati Selatan', 333),
(4786, 'Sayosa', 333),
(4787, 'Seget', 333),
(4788, 'Segun', 333),
(4789, 'Fokour', 334),
(4790, 'Inanwatan (Inawatan)', 334),
(4791, 'Kais (Matemani Kais)', 334),
(4792, 'Kokoda', 334),
(4793, 'Kokoda Utara', 334),
(4794, 'Konda', 334),
(4795, 'Matemani', 334),
(4796, 'Moswaren', 334),
(4797, 'Saifi', 334),
(4798, 'Sawiat', 334),
(4799, 'Seremuk', 334),
(4800, 'Teminabuan', 334),
(4801, 'Wayer', 334),
(4802, 'Abun', 335),
(4803, 'Amberbaken', 335),
(4804, 'Amberbaken Barat', 335),
(4805, 'Ases', 335),
(4806, 'Bamusbama', 335),
(4807, 'Bikar', 335),
(4808, 'Fef', 335),
(4809, 'Ireres', 335),
(4810, 'Kasi', 335),
(4811, 'Kebar', 335),
(4812, 'Kebar Selatan', 335),
(4813, 'Kebar Timur', 335),
(4814, 'Kwesefo', 335),
(4815, 'Kwoor', 335),
(4816, 'Manekar', 335),
(4817, 'Mawabuan', 335),
(4818, 'Miyah', 335),
(4819, 'Miyah Selatan', 335),
(4820, 'Moraid', 335),
(4821, 'Mpur', 335),
(4822, 'Mubrani', 335),
(4823, 'Sausapor', 335),
(4824, 'Selemkai', 335),
(4825, 'Senopi', 335),
(4826, 'Syujak', 335),
(4827, 'Tinggouw', 335),
(4828, 'Tobouw', 335),
(4829, 'Wilhem Roumbouts', 335),
(4830, 'Yembun', 335),
(4831, 'Aranday', 336),
(4832, 'Aroba', 336),
(4833, 'Babo', 336),
(4834, 'Bintuni', 336),
(4835, 'Biscoop', 336),
(4836, 'Dataran Beimes', 336),
(4837, 'Fafurwar (Irorutu)', 336),
(4838, 'Kaitaro', 336),
(4839, 'Kamundan', 336),
(4840, 'Kuri', 336),
(4841, 'Manimeri', 336),
(4842, 'Masyeta', 336),
(4843, 'Mayado', 336),
(4844, 'Merdey', 336),
(4845, 'Moskona Barat', 336),
(4846, 'Moskona Selatan', 336),
(4847, 'Moskona Timur', 336),
(4848, 'Moskona Utara', 336),
(4849, 'Sumuri (Simuri)', 336),
(4850, 'Tembuni', 336),
(4851, 'Tomu', 336),
(4852, 'Tuhiba', 336),
(4853, 'Wamesa (Idoor)', 336),
(4854, 'Weriagar', 336),
(4855, 'Kuri Wamesa', 337),
(4856, 'Naikere (Wasior Barat)', 337),
(4857, 'Nikiwar', 337),
(4858, 'Rasiei', 337),
(4859, 'Roon', 337),
(4860, 'Roswar', 337),
(4861, 'Rumberpon', 337),
(4862, 'Soug Jaya', 337),
(4863, 'Teluk Duairi (Wasior Utara)', 337),
(4864, 'Wamesa', 337),
(4865, 'Wasior', 337),
(4866, 'Wondiboy (Wasior Selatan)', 337),
(4867, 'Bantan', 338),
(4868, 'Bengkalis', 338),
(4869, 'Mandau', 338),
(4870, 'Pinggir', 338),
(4871, 'Rupat', 338),
(4872, 'Rupat Utara', 338),
(4873, 'Siak Kecil', 338),
(4874, 'Bukit Kapur', 339),
(4875, 'Dumai Barat', 339),
(4876, 'Dumai Kota', 339),
(4877, 'Dumai Selatan', 339),
(4878, 'Dumai Timur', 339),
(4879, 'Medang Kampai', 339),
(4880, 'Sungai Sembilan', 339),
(4881, 'Batang Tuaka', 340),
(4882, 'Concong', 340),
(4883, 'Enok', 340),
(4884, 'Gaung', 340),
(4885, 'Gaung Anak Serka', 340),
(4886, 'Kateman', 340),
(4887, 'Kempas', 340),
(4888, 'Kemuning', 340),
(4889, 'Keritang', 340),
(4890, 'Kuala Indragiri', 340),
(4891, 'Mandah', 340),
(4892, 'Pelangiran', 340),
(4893, 'Pulau Burung', 340),
(4894, 'Reteh', 340),
(4895, 'Sungai Batang', 340),
(4896, 'Teluk Belengkong', 340),
(4897, 'Tembilahan', 340),
(4898, 'Tembilahan Hulu', 340),
(4899, 'Tempuling', 340),
(4900, 'Batang Cenaku', 341),
(4901, 'Batang Gansal', 341),
(4902, 'Batang Peranap', 341),
(4903, 'Kelayang', 341),
(4904, 'Kuala Cenaku', 341),
(4905, 'Lirik', 341),
(4906, 'Lubuk Batu Jaya', 341),
(4907, 'Pasir Penyu', 341),
(4908, 'Peranap', 341),
(4909, 'Rakit Kulim', 341),
(4910, 'Rengat', 341),
(4911, 'Rengat Barat', 341),
(4912, 'Seberida', 341),
(4913, 'Sungai Lala', 341),
(4914, 'Bangkinang', 342),
(4915, 'Bangkinang Kota', 342),
(4916, 'Gunung Sahilan', 342),
(4917, 'Kampar', 342),
(4918, 'Kampar Kiri', 342),
(4919, 'Kampar Kiri Hilir', 342),
(4920, 'Kampar Kiri Hulu', 342),
(4921, 'Kampar Kiri Tengah', 342),
(4922, 'Kampar Timur', 342),
(4923, 'Kampar Utara', 342),
(4924, 'Koto Kampar Hulu', 342),
(4925, 'Kuok', 342),
(4926, 'Perhentian Raja', 342),
(4927, 'Rumbio Jaya', 342),
(4928, 'Salo', 342),
(4929, 'Siak Hulu', 342),
(4930, 'Tambang', 342),
(4931, 'Tapung', 342),
(4932, 'Tapung Hilir', 342),
(4933, 'Tapung Hulu', 342),
(4934, 'XIII Koto Kampar', 342),
(4935, 'Merbau', 343),
(4936, 'Pulaumerbau', 343),
(4937, 'Rangsang', 343),
(4938, 'Rangsang Barat', 343),
(4939, 'Rangsang Pesisir', 343),
(4940, 'Tasik Putri Puyu', 343),
(4941, 'Tebing Tinggi Barat', 343),
(4942, 'Tebing Tinggi Timur', 343),
(4943, 'Benai', 344),
(4944, 'Cerenti', 344),
(4945, 'Gunung Toar', 344),
(4946, 'Hulu Kuantan', 344),
(4947, 'Inuman', 344),
(4948, 'Kuantan Hilir', 344),
(4949, 'Kuantan Hilir Seberang', 344),
(4950, 'Kuantan Mudik', 344),
(4951, 'Kuantan Tengah', 344),
(4952, 'Logas Tanah Darat', 344),
(4953, 'Pangean', 344),
(4954, 'Pucuk Rantau', 344),
(4955, 'Sentajo Raya', 344),
(4956, 'Singingi', 344),
(4957, 'Singingi Hilir', 344),
(4958, 'Lima Puluh', 345),
(4959, 'Marpoyan Damai', 345),
(4960, 'Payung Sekaki', 345),
(4961, 'Pekanbaru Kota', 345),
(4962, 'Rumbai', 345),
(4963, 'Rumbai Pesisir', 345),
(4964, 'Sail', 345),
(4965, 'Senapelan', 345),
(4966, 'Tampan', 345),
(4967, 'Tenayan Raya', 345),
(4968, 'Bandar Petalangan', 346),
(4969, 'Bandar Sei Kijang', 346),
(4970, 'Bunut', 346),
(4971, 'Kerumutan', 346),
(4972, 'Kuala Kampar', 346),
(4973, 'Langgam', 346),
(4974, 'Pangkalan Kerinci', 346),
(4975, 'Pangkalan Kuras', 346),
(4976, 'Pangkalan Lesung', 346),
(4977, 'Pelalawan', 346),
(4978, 'Teluk Meranti', 346),
(4979, 'Ukui', 346),
(4980, 'Bagan Sinembah', 347),
(4981, 'Bangko Pusaka (Pusako)', 347),
(4982, 'Batu Hampar', 347),
(4983, 'Kubu Babussalam', 347),
(4984, 'Pasir Limau Kapas', 347),
(4985, 'Pekaitan', 347),
(4986, 'Pujud', 347),
(4987, 'Rantau Kopar', 347),
(4988, 'Rimba Melintang', 347),
(4989, 'Sinaboi (Senaboi)', 347),
(4990, 'Tanah Putih', 347),
(4991, 'Tanah Putih Tanjung Melawan', 347),
(4992, 'Bangun Purba', 348),
(4993, 'Bonai Darussalam', 348),
(4994, 'Kabun', 348),
(4995, 'Kepenuhan', 348),
(4996, 'Kepenuhan Hulu', 348),
(4997, 'Kunto Darussalam', 348),
(4998, 'Pagaran Tapah Darussalam', 348),
(4999, 'Pendalian IV Koto', 348),
(5000, 'Rambah', 348),
(5001, 'Rambah Hilir', 348),
(5002, 'Rambah Samo', 348),
(5003, 'Rokan IV Koto', 348),
(5004, 'Tambusai', 348),
(5005, 'Tambusai Utara', 348),
(5006, 'Tandun', 348),
(5007, 'Ujung Batu', 348),
(5008, 'Bunga Raya', 349),
(5009, 'Dayun', 349),
(5010, 'Kandis', 349),
(5011, 'Kerinci Kanan', 349),
(5012, 'Koto Gasib', 349),
(5013, 'Lubuk Dalam', 349),
(5014, 'Mempura', 349),
(5015, 'Minas', 349),
(5016, 'Pusako', 349),
(5017, 'Sabak Auh', 349),
(5018, 'Siak', 349),
(5019, 'Sungai Apit', 349),
(5020, 'Sungai Mandau', 349),
(5021, 'Tualang', 349),
(5022, 'Banggae', 350),
(5023, 'Banggae Timur', 350),
(5024, 'Malunda', 350),
(5025, 'Pamboang', 350),
(5026, 'Sendana', 350),
(5027, 'Tammeredo Sendana', 350),
(5028, 'Tubo (Tubo Sendana)', 350),
(5029, 'Ulumunda', 350),
(5030, 'Aralle', 351),
(5031, 'Balla', 351),
(5032, 'Bambang', 351),
(5033, 'Buntumalangka', 351),
(5034, 'Mamasa', 351),
(5035, 'Mambi', 351),
(5036, 'Mehalaan', 351),
(5037, 'Messawa', 351),
(5038, 'Nosu', 351),
(5039, 'Pana', 351),
(5040, 'Rantebulahan Timur', 351),
(5041, 'Sesenapadang', 351),
(5042, 'Sumarorong', 351),
(5043, 'Tabulahan', 351),
(5044, 'Tanduk Kalua', 351),
(5045, 'Tawalian', 351),
(5046, 'Bonehau', 352),
(5047, 'Kalukku', 352),
(5048, 'Kalumpang', 352),
(5049, 'Kep. Bala Balakang', 352),
(5050, 'Mamuju', 352),
(5051, 'Papalang', 352),
(5052, 'Sampaga', 352),
(5053, 'Simboro dan Kepulauan', 352),
(5054, 'Tapalang', 352),
(5055, 'Tapalang Barat', 352),
(5056, 'Tommo', 352),
(5057, 'Budong-Budong', 353),
(5058, 'Karossa', 353),
(5059, 'Pangale', 353),
(5060, 'Tobadak', 353),
(5061, 'Topoyo', 353),
(5062, 'Bambaira', 354),
(5063, 'Bambalamotu', 354),
(5064, 'Baras', 354),
(5065, 'Bulu Taba', 354),
(5066, 'Dapurang', 354),
(5067, 'Duripoku', 354),
(5068, 'Lariang', 354),
(5069, 'Pasangkayu', 354),
(5070, 'Pedongga', 354),
(5071, 'Sarjo', 354),
(5072, 'Sarudu', 354),
(5073, 'Tikke Raya', 354),
(5074, 'Alu (Allu)', 355),
(5075, 'Anreapi', 355),
(5076, 'Balanipa', 355),
(5077, 'Bulo', 355),
(5078, 'Campalagian', 355),
(5079, 'Limboro', 355),
(5080, 'Luyo', 355),
(5081, 'Mapilli', 355),
(5082, 'Matakali', 355),
(5083, 'Matangnga', 355),
(5084, 'Polewali', 355),
(5085, 'Tapango', 355),
(5086, 'Tinambung', 355),
(5087, 'Tubbi Taramanu (Tutar/Tutallu)', 355),
(5088, 'Wonomulyo', 355),
(5089, 'Bantaeng', 356),
(5090, 'Bissappu', 356),
(5091, 'Eremerasa', 356),
(5092, 'Gantarang Keke (Gantareng Keke)', 356),
(5093, 'Pajukukang', 356),
(5094, 'Sinoa', 356),
(5095, 'Tompobulu', 356),
(5096, 'Uluere', 356),
(5097, 'Balusu', 357),
(5098, 'Barru', 357),
(5099, 'Mallusetasi', 357),
(5100, 'Pujananting', 357),
(5101, 'Soppeng Riaja', 357),
(5102, 'Tanete Riaja', 357),
(5103, 'Tanete Rilau', 357),
(5104, 'Ajangale', 358),
(5105, 'Amali', 358),
(5106, 'Awangpone', 358),
(5107, 'Barebbo', 358),
(5108, 'Bengo', 358),
(5109, 'Bontocani', 358),
(5110, 'Cenrana', 358),
(5111, 'Cina', 358),
(5112, 'Dua Boccoe', 358),
(5113, 'Kahu', 358),
(5114, 'Kajuara', 358),
(5115, 'Lamuru', 358),
(5116, 'Lappariaja', 358),
(5117, 'Libureng', 358),
(5118, 'Palakka', 358),
(5119, 'Patimpeng', 358),
(5120, 'Ponre', 358),
(5121, 'Salomekko', 358),
(5122, 'Sibulue', 358),
(5123, 'Tanete Riattang', 358),
(5124, 'Tanete Riattang Barat', 358),
(5125, 'Tanete Riattang Timur', 358),
(5126, 'Tellu Limpoe', 358),
(5127, 'Tellu Siattinge', 358),
(5128, 'Tonra', 358),
(5129, 'Ulaweng', 358),
(5130, 'Bonto Bahari', 359),
(5131, 'Bontotiro', 359),
(5132, 'Bulukumba (Bulukumpa)', 359),
(5133, 'Gantorang/Gantarang (Gangking)', 359),
(5134, 'Hero Lange-Lange (Herlang)', 359),
(5135, 'Kajang', 359),
(5136, 'Kindang', 359),
(5137, 'Rilau Ale', 359),
(5138, 'Ujung Bulu', 359),
(5139, 'Ujung Loe', 359),
(5140, 'Alla', 360),
(5141, 'Anggeraja', 360),
(5142, 'Baraka', 360),
(5143, 'Baroko', 360),
(5144, 'Bungin', 360),
(5145, 'Buntu Batu', 360),
(5146, 'Cendana', 360),
(5147, 'Curio', 360),
(5148, 'Enrekang', 360),
(5149, 'Maiwa', 360),
(5150, 'Malua', 360),
(5151, 'Masalle', 360),
(5152, 'Bajeng', 361),
(5153, 'Bajeng Barat', 361),
(5154, 'Barombong', 361),
(5155, 'Biringbulu', 361),
(5156, 'Bontolempangang', 361),
(5157, 'Bontomarannu', 361),
(5158, 'Bontonompo', 361),
(5159, 'Bontonompo Selatan', 361),
(5160, 'Bungaya', 361),
(5161, 'Manuju', 361),
(5162, 'Pallangga', 361),
(5163, 'Parangloe', 361),
(5164, 'Pattallassang', 361),
(5165, 'Somba Opu (Upu)', 361),
(5166, 'Tinggimoncong', 361),
(5167, 'Tombolo Pao', 361),
(5168, 'Arungkeke', 362),
(5169, 'Bangkala', 362),
(5170, 'Bangkala Barat', 362),
(5171, 'Binamu', 362),
(5172, 'Bontoramba', 362),
(5173, 'Kelara', 362),
(5174, 'Tamalatea', 362),
(5175, 'Tarowang', 362),
(5176, 'Turatea', 362),
(5177, 'Benteng', 363),
(5178, 'Bontoharu', 363),
(5179, 'Bontomanai', 363),
(5180, 'Bontomatene', 363),
(5181, 'Bontosikuyu', 363),
(5182, 'Buki', 363),
(5183, 'Pasilambena', 363),
(5184, 'Pasimarannu', 363),
(5185, 'Pasimassunggu', 363),
(5186, 'Pasimasunggu Timur', 363),
(5187, 'Takabonerate', 363),
(5188, 'Bajo', 364),
(5189, 'Bajo Barat', 364),
(5190, 'Basse Sangtempe Utara', 364),
(5191, 'Bassesang Tempe (Bastem)', 364),
(5192, 'Belopa', 364),
(5193, 'Belopa Utara', 364),
(5194, 'Bua', 364),
(5195, 'Bua Ponrang (Bupon)', 364),
(5196, 'Kamanre', 364),
(5197, 'Lamasi', 364),
(5198, 'Lamasi Timur', 364),
(5199, 'Larompong', 364),
(5200, 'Larompong Selatan', 364),
(5201, 'Latimojong', 364),
(5202, 'Ponrang', 364),
(5203, 'Ponrang Selatan', 364),
(5204, 'Suli', 364),
(5205, 'Suli Barat', 364),
(5206, 'Walenrang', 364),
(5207, 'Walenrang Barat', 364),
(5208, 'Walenrang Timur', 364),
(5209, 'Walenrang Utara', 364),
(5210, 'Angkona', 365),
(5211, 'Burau', 365),
(5212, 'Kalaena', 365),
(5213, 'Malili', 365),
(5214, 'Mangkutana', 365),
(5215, 'Nuha', 365),
(5216, 'Tomoni', 365),
(5217, 'Tomoni Timur', 365),
(5218, 'Towuti', 365),
(5219, 'Wasuponda', 365),
(5220, 'Wotu', 365),
(5221, 'Baebunta', 366),
(5222, 'Bone-Bone', 366),
(5223, 'Limbong', 366),
(5224, 'Malangke', 366),
(5225, 'Malangke Barat', 366),
(5226, 'Mappedeceng', 366),
(5227, 'Masamba', 366),
(5228, 'Rampi', 366),
(5229, 'Sabbang', 366),
(5230, 'Seko', 366),
(5231, 'Sukamaju', 366),
(5232, 'Tana Lili', 366),
(5233, 'Biring Kanaya', 367),
(5234, 'Bontoala', 367),
(5235, 'Makassar', 367),
(5236, 'Mamajang', 367),
(5237, 'Manggala', 367),
(5238, 'Mariso', 367),
(5239, 'Panakkukang', 367),
(5240, 'Rappocini', 367),
(5241, 'Tallo', 367),
(5242, 'Tamalanrea', 367),
(5243, 'Tamalate', 367),
(5244, 'Ujung Pandang', 367),
(5245, 'Ujung Tanah', 367),
(5246, 'Wajo', 367),
(5247, 'Bantimurung', 368),
(5248, 'Bontoa (Maros Utara)', 368),
(5249, 'Camba', 368),
(5250, 'Lau', 368),
(5251, 'Mallawa', 368),
(5252, 'Mandai', 368),
(5253, 'Maros Baru', 368),
(5254, 'Marusu', 368),
(5255, 'Moncongloe', 368),
(5256, 'Simbang', 368),
(5257, 'Tanralili', 368),
(5258, 'Tompu Bulu', 368),
(5259, 'Turikale', 368),
(5260, 'Bara', 369),
(5261, 'Mungkajang', 369),
(5262, 'Telluwanua', 369),
(5263, 'Wara', 369),
(5264, 'Wara Barat', 369),
(5265, 'Wara Selatan', 369),
(5266, 'Wara Timur', 369),
(5267, 'Wara Utara', 369),
(5268, 'Balocci', 370),
(5269, 'Bungoro', 370),
(5270, 'Labakkang', 370),
(5271, 'Liukang Kalmas (Kalukuang Masalima)', 370),
(5272, 'Liukang Tangaya', 370),
(5273, 'Liukang Tupabbiring', 370),
(5274, 'Liukang Tupabbiring Utara', 370),
(5275, 'Mandalle', 370),
(5276, 'Marang (Ma Rang)', 370),
(5277, 'Minasa Tene', 370),
(5278, 'Pangkajene', 370),
(5279, 'Segeri', 370),
(5280, 'Tondong Tallasa', 370),
(5281, 'Bacukiki', 371),
(5282, 'Bacukiki Barat', 371),
(5283, 'Ujung', 371),
(5284, 'Batulappa', 372),
(5285, 'Cempa', 372),
(5286, 'Duampanua', 372),
(5287, 'Lanrisang', 372),
(5288, 'Mattiro Bulu', 372),
(5289, 'Mattiro Sompe', 372),
(5290, 'Paleteang', 372),
(5291, 'Patampanua', 372),
(5292, 'Suppa', 372),
(5293, 'Tiroang', 372),
(5294, 'Watang Sawitto', 372),
(5295, 'Baranti', 373),
(5296, 'Dua Pitue', 373),
(5297, 'Kulo', 373),
(5298, 'Maritengngae', 373),
(5299, 'Panca Lautan (Lautang)', 373),
(5300, 'Panca Rijang', 373),
(5301, 'Pitu Raise/Riase', 373),
(5302, 'Pitu Riawa', 373),
(5303, 'Watang Pulu', 373),
(5304, 'Wattang Sidenreng (Watang Sidenreng)', 373),
(5305, 'Bulupoddo', 374),
(5306, 'Sinjai Barat', 374),
(5307, 'Sinjai Borong', 374),
(5308, 'Sinjai Selatan', 374),
(5309, 'Sinjai Tengah', 374),
(5310, 'Sinjai Timur', 374),
(5311, 'Sinjai Utara', 374),
(5312, 'Citta', 375),
(5313, 'Donri-Donri', 375),
(5314, 'Ganra', 375),
(5315, 'Lalabata', 375),
(5316, 'Lili Rilau', 375),
(5317, 'Liliraja (Lili Riaja)', 375),
(5318, 'Mario Riawa', 375),
(5319, 'Mario Riwawo', 375),
(5320, 'Galesong', 376),
(5321, 'Galesong Selatan', 376),
(5322, 'Galesong Utara', 376),
(5323, 'Mangara Bombang', 376),
(5324, 'Mappakasunggu', 376),
(5325, 'Patallassang', 376),
(5326, 'Polombangkeng Selatan (Polobangkeng)', 376);

-- --------------------------------------------------------

--
-- Table structure for table `data_kewarganegaraan`
--

CREATE TABLE `data_kewarganegaraan` (
  `kewarganegaraan` varchar(10) NOT NULL,
  `nm_wil` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kewarganegaraan`
--

INSERT INTO `data_kewarganegaraan` (`kewarganegaraan`, `nm_wil`) VALUES
('A', 'United Arab Emirates'),
('AD', 'Andorra'),
('AF', 'Afghanistan'),
('AG', 'Antigua And Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albania'),
('AM', 'Armenia'),
('AN', 'Netherlands Antilles'),
('AO', 'Angola'),
('AQ', 'Antarctica'),
('AR', 'Argentina'),
('AS', 'American Samoa'),
('AT', 'Austria'),
('AU', 'Australia'),
('AW', 'Aruba'),
('AX', 'Aland Islands'),
('AZ', 'Azerbaijan'),
('B', 'Belgium'),
('BA', 'Bosnia And Herzegovina'),
('BB', 'Barbados'),
('BD', 'Bangladesh'),
('BF', 'Burkina Faso'),
('BG', 'Bulgaria'),
('BH', 'Bahrain'),
('BI', 'Burundi'),
('BJ', 'Benin'),
('BL', 'Saint Bartelemey'),
('BM', 'Bermuda'),
('BN', 'Brunei Darussalam'),
('BO', 'Bolivia'),
('BQ', 'Bonaire, Saint Eustatius and Saba'),
('BR', 'Brazil'),
('BS', 'Bahamas'),
('BT', 'Bhutan'),
('BV', 'Bouvet Island'),
('BW', 'Botswana'),
('BY', 'Belarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Cocos (Keeling) Islands'),
('CD', 'Congo, The Democratic Republic Of The'),
('CF', 'Central African Republic'),
('CG', 'Congo'),
('CH', 'Switzerland'),
('CI', 'Cote D''Ivoire'),
('CK', 'Cook Islands'),
('CL', 'Chile'),
('CM', 'Cameroon'),
('CN', 'China'),
('CO', 'Colombia'),
('CR', 'Costa Rica'),
('CS', 'Serbia And Montenegro'),
('CU', 'Cuba'),
('CV', 'Cape Verde'),
('CW', 'Curacao'),
('CX', 'Christmas Island'),
('CY', 'Cyprus'),
('CZ', 'Czech Republic'),
('D', 'Germany'),
('DJ', 'Djibouti'),
('DK', 'Denmark'),
('DM', 'Dominica'),
('DO', 'Dominican Republic'),
('DZ', 'Algeria'),
('E', 'Estonia'),
('EC', 'Ecuador'),
('EG', 'Egypt'),
('EH', 'Western Sahara'),
('ER', 'Eritrea'),
('ES', 'Spain'),
('ET', 'Ethiopia'),
('FI', 'Finland'),
('FJ', 'Fiji'),
('FK', 'Falkland Islands (Malvinas)'),
('FM', 'Micronesia, Federated States Of'),
('FO', 'Faroe Islands'),
('FR', 'France'),
('G', 'Georgia'),
('GA', 'Gabon'),
('GB', 'United Kingdom'),
('GD', 'Grenada'),
('GF', 'French Guiana'),
('GG', 'Guernsey'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Greenland'),
('GM', 'Gambia'),
('GN', 'Guinea'),
('GP', 'Guadeloupe'),
('GQ', 'Equatorial Guinea'),
('GR', 'Greece'),
('GS', 'South Georgia And The South Sandwich Islands'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinea-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong Kong'),
('HM', 'Heard Island And Mcdonald Islands'),
('HN', 'Honduras'),
('HR', 'Croatia'),
('HT', 'Haiti'),
('HU', 'Hungary'),
('I', 'Ireland'),
('ID', 'Indonesia                     '),
('IL', 'Israel'),
('IM', 'Isle Of Man'),
('IN', 'India'),
('IO', 'British Indian Ocean Territory'),
('IQ', 'Iraq'),
('IR', 'Iran, Islamic Republic Of'),
('IS', 'Iceland'),
('IT', 'Italy'),
('J', 'Jersey'),
('JM', 'Jamaica'),
('JO', 'Jordan'),
('JP', 'Japan'),
('K', 'Kenya'),
('KG', 'Kyrgyzstan'),
('KH', 'Cambodia'),
('KI', 'Kiribati'),
('KM', 'Comoros'),
('KN', 'Saint Kitts And Nevis'),
('KP', 'Korea, Democratic People''S Republic Of'),
('KR', 'Korea, Republic Of'),
('KW', 'Kuwait'),
('KY', 'Cayman Islands'),
('KZ', 'Kazakhstan'),
('LA', 'Lao People''S Democratic Republic'),
('LB', 'Lebanon'),
('LC', 'Saint Lucia'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Liberia'),
('LS', 'Lesotho'),
('LT', 'Lithuania'),
('LU', 'Luxembourg'),
('LV', 'Latvia'),
('LY', 'Libyan Arab Jamahiriya'),
('M', 'Montenegro'),
('MA', 'Morocco'),
('MC', 'Monaco'),
('MD', 'Moldova, Republic Of'),
('MF', 'Saint Martin'),
('MG', 'Madagascar'),
('MH', 'Marshall Islands'),
('MK', 'Macedonia, The Former Yugoslav Republic Of'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolia'),
('MO', 'Macao'),
('MP', 'Northern Mariana Islands'),
('MQ', 'Martinique'),
('MR', 'Mauritania'),
('MS', 'Montserrat'),
('MT', 'Malta'),
('MU', 'Mauritius'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexico'),
('MY', 'Malaysia'),
('MZ', 'Mozambique'),
('N', 'Niger'),
('NA', 'Namibia'),
('NC', 'New Caledonia'),
('NF', 'Norfolk Island'),
('NG', 'Nigeria'),
('NI', 'Nicaragua'),
('NL', 'Netherlands'),
('NO', 'Norway'),
('NP', 'Nepal'),
('NR', 'Nauru'),
('NU', 'Niue'),
('NZ', 'New Zealand'),
('OM', 'Oman'),
('P', 'Peru'),
('PA', 'Panama'),
('PF', 'French Polynesia'),
('PG', 'Papua New Guinea'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Poland'),
('PM', 'Saint Pierre And Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Puerto Rico'),
('PS', 'Palestinian Territory, Occupied'),
('PT', 'Portugal'),
('PW', 'Palau'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('R', 'Reunion'),
('RO', 'Romania'),
('RS', 'Serbia'),
('RU', 'Russian Federation'),
('RW', 'Rwanda'),
('S', 'Sweden'),
('SA', 'Saudi Arabia'),
('SB', 'Solomon Islands'),
('SC', 'Seychelles'),
('SD', 'Sudan'),
('SG', 'Singapore'),
('SH', 'Saint Helena'),
('SI', 'Slovenia'),
('SJ', 'Svalbard And Jan Mayen'),
('SK', 'Slovakia'),
('SL', 'Sierra Leone'),
('SM', 'San Marino'),
('SN', 'Senegal'),
('SO', 'Somalia'),
('SR', 'Suriname'),
('SS', 'South Sudan'),
('ST', 'Sao Tome And Principe'),
('SV', 'El Salvador'),
('SX', 'Sint Maarten'),
('SY', 'Syrian Arab Republic'),
('SZ', 'Swaziland'),
('TC', 'Turks And Caicos Islands'),
('TD', 'Chad'),
('TF', 'French Southern Territories'),
('TG', 'Togo'),
('TH', 'Thailand'),
('TJ', 'Tajikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkmenistan'),
('TN', 'Tunisia'),
('TO', 'Tonga'),
('TR', 'Turkey'),
('TT', 'Trinidad And Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taiwan, Province Of China'),
('TZ', 'Tanzania, United Republic Of'),
('UA', 'Ukraine'),
('UG', 'Uganda'),
('UM', 'United States Minor Outlying Islands'),
('US', 'United States'),
('UY', 'Uruguay'),
('UZ', 'Uzbekistan'),
('V', 'Venezuela'),
('VA', 'Holy See (Vatican City State)'),
('VC', 'Saint Vincent And The Grenadines'),
('VG', 'Virgin Islands, British'),
('VI', 'Virgin Islands, U.S.'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis And Futuna'),
('WS', 'Samoa'),
('Y', 'Yemen'),
('YT', 'Mayotte'),
('ZA', 'South Africa'),
('ZM', 'Zambia'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `data_pekerjaan`
--

CREATE TABLE `data_pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `nm_pekerjaan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='id_pekerjaan	nm_pekerjaan';

--
-- Dumping data for table `data_pekerjaan`
--

INSERT INTO `data_pekerjaan` (`id_pekerjaan`, `nm_pekerjaan`) VALUES
(1, 'Tidak bekerja'),
(2, 'Nelayan'),
(3, 'Petani'),
(4, 'Peternak'),
(5, 'PNS/TNI/Polri'),
(6, 'Karyawan Swasta'),
(7, 'Pedagang Kecil'),
(8, 'Pedagang Besar'),
(9, 'Wiraswasta'),
(10, 'Wirausaha'),
(11, 'Buruh'),
(12, 'Pensiunan'),
(98, 'Sudah Meninggal'),
(99, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `data_penghasilan`
--

CREATE TABLE `data_penghasilan` (
  `id_penghasilan` int(11) NOT NULL,
  `nm_penghasilan` varchar(50) DEFAULT '0',
  `batas_bawah` int(11) DEFAULT '0',
  `batas_atas` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='id_penghasilan	nm_penghasilan	batas_bawah	batas_atas';

--
-- Dumping data for table `data_penghasilan`
--

INSERT INTO `data_penghasilan` (`id_penghasilan`, `nm_penghasilan`, `batas_bawah`, `batas_atas`) VALUES
(11, '< Rp. 500.000', 0, 0),
(12, '500.000 - 1.000.000', 0, 0),
(13, '1.000.000 - 2 .000.000', 0, 0),
(14, '2.000.0000 - 5.000.000', 0, 0),
(16, ' > 20 jt', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_transportasi`
--

CREATE TABLE `data_transportasi` (
  `id_alat_transport` int(11) NOT NULL,
  `nm_alat_transport` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_transportasi`
--

INSERT INTO `data_transportasi` (`id_alat_transport`, `nm_alat_transport`) VALUES
(1, 'Jalan kaki'),
(2, 'Kendaraan pribadi'),
(3, 'Angkutan umum/bus/pete-pete'),
(4, 'Mobil/bus antar jemput'),
(5, 'Kereta api'),
(6, 'Ojek'),
(7, 'Andong/bendi/sado/dokar/delman/becak'),
(8, 'Perahu penyeberangan/rakit/getek'),
(11, 'Kuda'),
(12, 'Sepeda'),
(13, 'Sepeda motor'),
(14, 'Mobil pribadi'),
(99, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `data_wilayah`
--

CREATE TABLE `data_wilayah` (
  `id` int(11) NOT NULL,
  `id_wil` varchar(50) NOT NULL,
  `nm_wil` varchar(50) NOT NULL,
  `id_induk_wilayah` varchar(50) DEFAULT NULL,
  `id_level_wil` int(11) NOT NULL,
  `status_error` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_wilayah`
--

INSERT INTO `data_wilayah` (`id`, `id_wil`, `nm_wil`, `id_induk_wilayah`, `id_level_wil`, `status_error`) VALUES
(7428, '', 'Bali\r', NULL, 0, 0),
(7429, '', 'Bangka Belitung\r', NULL, 0, 0),
(7430, '', 'Banten\r', NULL, 0, 0),
(7431, '', 'Bengkulu\r', NULL, 0, 0),
(7432, '', 'DI Yogyakarta\r', NULL, 0, 0),
(7433, '', 'DKI Jakarta\r', NULL, 0, 0),
(7434, '', 'Gorontalo\r', NULL, 0, 0),
(7435, '', 'Jambi\r', NULL, 0, 0),
(7436, '', 'Jawa Barat\r', NULL, 0, 0),
(7437, '', 'Jawa Tengah', NULL, 0, 0),
(7438, '', 'Jawa Timur\r', NULL, 0, 0),
(7439, '', 'Kalimantan Barat\r', NULL, 0, 0),
(7440, '', 'Kalimantan Selatan\r', NULL, 0, 0),
(7441, '', 'Kalimantan Tengah\r', NULL, 0, 0),
(7442, '', 'Kalimantan Timur\r', NULL, 0, 0),
(7443, '', 'Kalimantan Utara\r', NULL, 0, 0),
(7444, '', 'Kepulauan Riau\r', NULL, 0, 0),
(7445, '', 'Lampung\r', NULL, 0, 0),
(7446, '', 'Maluku\r', NULL, 0, 0),
(7447, '', 'Maluku Utara\r', NULL, 0, 0),
(7448, '', 'Nanggroe Aceh Darussalam (NAD)\r', NULL, 0, 0),
(7449, '', 'Nusa Tenggara Barat (NTB)\r', NULL, 0, 0),
(7450, '', 'Nusa Tenggara Timur (NTT)\r', NULL, 0, 0),
(7451, '', 'Papua\r', NULL, 0, 0),
(7452, '', 'Papua Barat\r', NULL, 0, 0),
(7453, '', 'Riau\r', NULL, 0, 0),
(7454, '', 'Sulawesi Barat\r', NULL, 0, 0),
(7455, '', 'Sulawesi Selatan\r', NULL, 0, 0),
(7456, '', 'Sulawesi Tengah\r', NULL, 0, 0),
(7457, '', 'Sulawesi Tenggara\r', NULL, 0, 0),
(7458, '', 'Sulawesi Utara\r', NULL, 0, 0),
(7459, '', 'Sumatera Barat\r', NULL, 0, 0),
(7460, '', 'Sumatera Selatan\r', NULL, 0, 0),
(7461, '', 'Sumatera Utara\r', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_cuti_detailpengajuan`
--

CREATE TABLE `tb_cuti_detailpengajuan` (
  `id_detaikpengajuancuti` int(11) NOT NULL,
  `id_pengajuancuti` int(11) DEFAULT NULL,
  `semester` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_cuti_pengajuan`
--

CREATE TABLE `tb_cuti_pengajuan` (
  `id_pengajuancuti` int(11) NOT NULL,
  `semester` char(5) NOT NULL,
  `tgl_pengajuan` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_mahasiswa` int(11) DEFAULT NULL,
  `nama_orangtua` varchar(50) DEFAULT NULL,
  `alasan_cuti` varchar(50) DEFAULT NULL,
  `pengajuan_ke` int(11) DEFAULT NULL,
  `transkrip_nilai` varchar(50) DEFAULT NULL,
  `status` enum('0','1','2','3','4','5','6','7') DEFAULT '1' COMMENT '1.Draft, 2. Menunggu Verifikasi Baaku, 3. Menunggu Persetujuan Ka Prodi, 4. Menunggu Pembayaran, 5. Pembuatan Surat, 6. Surat Sudah Jadi, 7. Surat Sudah Diambil Mahasiswa',
  `tgl_disetujuikaprodi` date DEFAULT NULL,
  `catatan_kaprodi` text,
  `tgl_diverifikasibaaku` date DEFAULT NULL,
  `catatan_baaku` text,
  `bukti_pembayaran` varchar(50) DEFAULT NULL,
  `tgl_pembayaran` date DEFAULT NULL,
  `surat_ijin` varchar(50) DEFAULT NULL,
  `tgl_suratjadi` date DEFAULT NULL,
  `tgl_suratdiambil` date DEFAULT NULL,
  `nama_pengambil` varchar(50) DEFAULT NULL,
  `id_kaprodi` int(11) DEFAULT NULL,
  `id_dekan` int(11) DEFAULT NULL,
  `status_verifikasi` enum('NULL','Terima','Tolak') DEFAULT 'NULL',
  `formulir` varchar(20) DEFAULT NULL,
  `transkip` varchar(20) DEFAULT NULL,
  `khs` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_cuti_setbiaya`
--

CREATE TABLE `tb_cuti_setbiaya` (
  `id_cuti_setbiaya` int(11) NOT NULL,
  `nama_biaya_cuti` varchar(30) NOT NULL,
  `biaya_normal` float NOT NULL,
  `biaya_terlambat` float NOT NULL,
  `status_setbiaya` enum('Aktif','Tidak') NOT NULL DEFAULT 'Tidak',
  `tgl_setting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_cuti_setbiaya_detail`
--

CREATE TABLE `tb_cuti_setbiaya_detail` (
  `id_detail_setbiaya` int(11) NOT NULL,
  `id_cuti_setbiaya` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `id_dosen` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `nidn` varchar(20) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `nama_dosen` varchar(50) DEFAULT NULL,
  `gelar_depan` varchar(4) DEFAULT NULL,
  `gelar_belakang` varchar(20) DEFAULT NULL,
  `jabatan_akademik` enum('Tenaga Pengajar','Asisten Ahli','Lektor','Lektor Kepala','Profesor') DEFAULT NULL,
  `golongan_kepangkatan` enum('III A','III B','III C','III D','IV A','IV B','IV C','IV D','IV E') DEFAULT NULL,
  `agama` int(11) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jk` enum('P','W') NOT NULL DEFAULT 'P',
  `ikatan_kerja` enum('Dosen Tetap','Dosen Tidak Tetap','Dosen Dengan Perjanjian Kerja','Dosen PNS DPK') NOT NULL DEFAULT 'Dosen Tetap',
  `status_aktif` enum('Aktif','Tidak Aktif','Cuti','Ijin Belajar','Tugas Belajar','Tugas di Instansi Lain') NOT NULL DEFAULT 'Aktif',
  `pendidikan_terakhir` enum('D3','D4','S1','S2','S3') DEFAULT NULL,
  `bidang_ilmu` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dosen`
--

INSERT INTO `tb_dosen` (`id_dosen`, `id_prodi`, `nidn`, `nik`, `nama_dosen`, `gelar_depan`, `gelar_belakang`, `jabatan_akademik`, `golongan_kepangkatan`, `agama`, `tempat_lahir`, `tgl_lahir`, `jk`, `ikatan_kerja`, `status_aktif`, `pendidikan_terakhir`, `bidang_ilmu`, `password`, `last_login`) VALUES
(1, 19, '0217128303', '022100101', 'Agus Mulyanto', NULL, ', MT', 'Asisten Ahli', 'III B', 1, 'Sukadadi', '1983-12-17', 'P', 'Dosen Dengan Perjanjian Kerja', 'Aktif', 'S2', 'Ilmu Komputer', '202cb962ac59075b964b07152d234b70', NULL),
(2, 20, '0229818210', '021983137', 'Angga', '', ', M.M', 'Tenaga Pengajar', 'III A', 1, 'Gedung MEneng', '1983-12-17', 'P', 'Dosen Tetap', 'Aktif', 'S2', 'Manajemen', '202cb962ac59075b964b07152d234b70', '2019-07-22 08:30:01'),
(4, 5, '0208273787', '029182998', 'Jupriyadi', NULL, ', MT', 'Asisten Ahli', 'III B', 1, 'Wonosobo', '1983-08-07', 'P', 'Dosen Tetap', 'Aktif', 'S2', 'Informatika', '202cb962ac59075b964b07152d234b70', '2019-07-22 08:33:50'),
(11, 2, '02182376138', '0271827', 'Imam Ahmad', '', 'M.Kom.', 'Asisten Ahli', 'III B', 1, 'Aceh', '1987-06-16', 'P', 'Dosen Tetap', 'Aktif', 'S2', 'Ilmu Komputer', '39af29938573252f2803c3756e495f90', '2019-11-06 10:37:15'),
(14, 19, '0182378237', '028918321', 'Agus Mulyanto', 'Dr.', 'M.T', 'Lektor', 'III B', 1, 'sdsd', '2017-10-12', 'P', 'Dosen Tetap', 'Aktif', 'S3', 'Ilmu Komputer', '202cb962ac59075b964b07152d234b70', NULL),
(15, 21, '02019282910', 'admin', 'Angga', '', 'MM', 'Tenaga Pengajar', 'III A', 1, 'Lampung', '2017-10-11', 'P', 'Dosen Tetap', 'Aktif', 'S2', 'Ilmu Ekonomi', '202cb962ac59075b964b07152d234b70', NULL),
(16, 5, '192192821', 'purwono', 'Purwono Prasetyawan', '', 'MT', 'Asisten Ahli', 'III B', 1, 'Lamsel', '1989-07-14', 'P', 'Dosen Tetap', 'Aktif', 'S2', 'Teknik Elektro', '202cb962ac59075b964b07152d234b70', NULL),
(17, 2, '10312148', '10312148', 'toni', 'Prof', 'S.Kom', 'Profesor', 'IV E', 1, 'xyz', '2018-04-04', 'P', 'Dosen Tidak Tetap', 'Aktif', 'S3', 'Coding', 'ab392d69282f3d70cc687c9439824d58', '2019-11-04 10:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen_bimbingan`
--

CREATE TABLE `tb_dosen_bimbingan` (
  `id_bimbingan` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `jenis_bimbingan` enum('Laporan PKL','Skripsi','PA') DEFAULT NULL,
  `no_sk` varchar(20) DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `tgl_sidang` date DEFAULT NULL,
  `status` enum('Selesai','Sedang Jalan','Dialihkan') DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen_file`
--

CREATE TABLE `tb_dosen_file` (
  `id_file` int(11) NOT NULL,
  `jenis_file` enum('Ijazah','Transkrip Nilai','SK Pangkat','SK Serdos','SK JAPUNG','Identitas','Lainnya') NOT NULL DEFAULT 'Lainnya',
  `nama_file` varchar(50) NOT NULL,
  `file` varchar(50) DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `keterangan` text NOT NULL,
  `tgl_upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_dosen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen_fungsional`
--

CREATE TABLE `tb_dosen_fungsional` (
  `id_fungsional` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `jabatan_fungsional` varchar(50) NOT NULL,
  `no_sk` varchar(50) DEFAULT NULL,
  `tmt_sk` date DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen_mengajar`
--

CREATE TABLE `tb_dosen_mengajar` (
  `id_ngajar` int(11) NOT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `id_prodi` int(11) DEFAULT NULL,
  `semester` enum('Ganjil','Genap','Semester Pendek') DEFAULT NULL,
  `kode_matkul` varchar(10) DEFAULT NULL,
  `nama_matkul` varchar(50) DEFAULT NULL,
  `kelas` varchar(30) DEFAULT NULL,
  `file_sk` varchar(50) DEFAULT NULL,
  `file_absen` varchar(50) DEFAULT NULL,
  `file_form_kontrol` varchar(50) DEFAULT NULL,
  `file_kontrak` varchar(50) DEFAULT NULL,
  `file_soaluas` varchar(50) DEFAULT NULL,
  `file_rps` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen_pangkat`
--

CREATE TABLE `tb_dosen_pangkat` (
  `id_pangkat` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `pangkat` varchar(50) NOT NULL,
  `no_sk` varchar(50) DEFAULT NULL,
  `tgl_sk` date DEFAULT NULL,
  `lama_tahun` int(11) DEFAULT NULL,
  `lama_bulan` int(11) DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen_pendidikan`
--

CREATE TABLE `tb_dosen_pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `jenjang` enum('D3','S1','S2','S3','Lainnya') NOT NULL DEFAULT 'S2',
  `nama_sekolah` varchar(50) DEFAULT NULL,
  `gelar` varchar(20) DEFAULT NULL,
  `tgl_ijasah` date DEFAULT NULL,
  `file_ijasah` varchar(50) DEFAULT NULL,
  `file_transkrip` varchar(50) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen_sertifikasi`
--

CREATE TABLE `tb_dosen_sertifikasi` (
  `id_sertifikasi` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `nama_sertifikasi` varchar(100) DEFAULT NULL,
  `bidang_studi` varchar(100) DEFAULT NULL,
  `no_sk` varchar(100) DEFAULT NULL,
  `lembaga_pensertifikasi` varchar(100) DEFAULT NULL,
  `th_sertifikasi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_fakultas`
--

CREATE TABLE `tb_fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `kode_fakultas` char(10) NOT NULL,
  `nama_fakultas` varchar(100) NOT NULL,
  `namafak_English` varchar(100) NOT NULL,
  `singkatan` varchar(8) NOT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_fakultas`
--

INSERT INTO `tb_fakultas` (`id_fakultas`, `kode_fakultas`, `nama_fakultas`, `namafak_English`, `singkatan`, `logo`, `keterangan`) VALUES
(1, 'FTIK', 'Fakultas Teknik Dan Ilmu Komputer', 'Faculty of Engineering and Computer Sciences', 'FTIK', 'LogoFTIK2.jpg', '<p>Fakultas Teknik</p>\r\n'),
(3, 'FEB', 'Fakultas Ekonomi Dan Bisnis', 'Faculty of Economic and Business', 'FEB', 'LogoFTIK2.jpg', 'FEB\r\n'),
(4, 'FSIP', 'Fakultas Sastra dan Ilmu Pendidikan', 'Faculty of Engineering and Computer Sciences', 'FSIP', 'LogoFTIK2.jpg', 'FSIP Aja\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tb_gedung`
--

CREATE TABLE `tb_gedung` (
  `id_gedung` int(11) NOT NULL,
  `kode_gedung` varchar(30) NOT NULL,
  `nama_gedung` varchar(100) NOT NULL,
  `foto_gedung` varchar(100) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gedung`
--

INSERT INTO `tb_gedung` (`id_gedung`, `kode_gedung`, `nama_gedung`, `foto_gedung`, `keterangan`) VALUES
(10, 'GDG FSIP', 'Gedung B', 'F_sadsa1.jpg', 'Gedung untuk FSIP'),
(12, 'REKTORAT', 'Gedung REKTORAT', '15349771_1330941753617946_105056530721048606_n41.jpg', 'xssdsd');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwalharian`
--

CREATE TABLE `tb_jadwalharian` (
  `id_jadwalharian` int(11) NOT NULL,
  `id_ruangan` int(11) NOT NULL,
  `tgl_penggunaan` datetime DEFAULT NULL,
  `tgl_selesai` datetime DEFAULT NULL,
  `nama_peminjam` varchar(50) NOT NULL,
  `waktu_mulai` enum('7.10','8.00','9.00','10.00','11.00','12.00','13.00','14.00','15.00','16.00','17.00','18.00','19.00','20.00','21.00') NOT NULL,
  `waktu_selesai` enum('7.10','8.00','9.00','10.00','11.00','12.00','13.00','14.00','15.00','16.00','17.00','18.00','19.00','20.00','21.00') NOT NULL,
  `keperluan` text NOT NULL,
  `tgl_pinjam` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwalsemester`
--

CREATE TABLE `tb_jadwalsemester` (
  `id_jadwalsmt` int(11) NOT NULL,
  `id_ruangan` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `hari` enum('senin','selasa','rabu','kamis','jum''at','sabtu','minggu') NOT NULL,
  `jam` enum('7.10','9.00','11.00','13.00','15.00','17.00','19.00') NOT NULL DEFAULT '7.10',
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal_pembekalanpkl`
--

CREATE TABLE `tb_jadwal_pembekalanpkl` (
  `id_jadwal` int(11) NOT NULL,
  `hari` varchar(20) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `pukul` time DEFAULT NULL,
  `id_ujipembekalan` int(11) DEFAULT NULL,
  `id_kelompok` int(11) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `id_ruangan` int(11) DEFAULT NULL,
  `status_jadwal` enum('true','false') NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jadwal_pembekalanpkl`
--

INSERT INTO `tb_jadwal_pembekalanpkl` (`id_jadwal`, `hari`, `tanggal`, `pukul`, `id_ujipembekalan`, `id_kelompok`, `id_dosen`, `id_ruangan`, `status_jadwal`) VALUES
(2, 'Kamis', '2019-07-26', '11:00:00', 1, 1, 11, 3, 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jadwal_pembekalanulangpkl`
--

CREATE TABLE `tb_jadwal_pembekalanulangpkl` (
  `id_jadwal_ulang` int(11) NOT NULL,
  `hari` varchar(25) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `pukul` time DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `id_ujipembekalan` int(11) DEFAULT NULL,
  `id_periode` int(11) NOT NULL,
  `kuota` int(11) DEFAULT NULL,
  `id_ruangan` int(11) NOT NULL,
  `aktif` enum('true','false') NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jadwal_pembekalanulangpkl`
--

INSERT INTO `tb_jadwal_pembekalanulangpkl` (`id_jadwal_ulang`, `hari`, `tanggal`, `pukul`, `id_dosen`, `id_ujipembekalan`, `id_periode`, `kuota`, `id_ruangan`, `aktif`) VALUES
(2, 'Minggu', '2019-09-29', '11:00:00', 17, 1, 1, 20, 3, 'false');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelompok_pembekalanpkl`
--

CREATE TABLE `tb_kelompok_pembekalanpkl` (
  `id_kelompok` int(11) NOT NULL,
  `nama_kelompok` varchar(25) DEFAULT NULL,
  `id_prodi` int(11) DEFAULT NULL,
  `id_periode` int(11) DEFAULT NULL,
  `kuota` int(11) DEFAULT NULL,
  `jenis_kelompok` enum('SUSULAN','KELOMPOK') NOT NULL DEFAULT 'KELOMPOK'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelompok_pembekalanpkl`
--

INSERT INTO `tb_kelompok_pembekalanpkl` (`id_kelompok`, `nama_kelompok`, `id_prodi`, `id_periode`, `kuota`, `jenis_kelompok`) VALUES
(1, 'IF-SESI-1-2019', 19, 1, 35, 'KELOMPOK');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelompok_pembekalanpkl_detail`
--

CREATE TABLE `tb_kelompok_pembekalanpkl_detail` (
  `id_kel_detail` int(11) NOT NULL,
  `id_kelompok` int(11) DEFAULT NULL,
  `id_mhs` int(11) DEFAULT NULL,
  `ket` enum('SUSULAN','KELOMPOK') NOT NULL DEFAULT 'KELOMPOK'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelompok_pembekalanpkl_detail`
--

INSERT INTO `tb_kelompok_pembekalanpkl_detail` (`id_kel_detail`, `id_kelompok`, `id_mhs`, `ket`) VALUES
(2, 1, 11, 'KELOMPOK'),
(3, 1, 15, 'KELOMPOK'),
(4, 1, 14, 'KELOMPOK');

-- --------------------------------------------------------

--
-- Table structure for table `tb_khs_cetak`
--

CREATE TABLE `tb_khs_cetak` (
  `id_pengajuancetakkhs` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `semester` char(5) NOT NULL,
  `tgl_pengajuan` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0' COMMENT '0:Pengajuan;  1. Telah bayar 2: Proses Pencetakan 3:Berkas Siap Diambil 4:berkas sudah diambil 5:Permohonan di tolak',
  `tgl_pembayaran` datetime DEFAULT NULL,
  `file_pembayaran` varchar(50) DEFAULT NULL,
  `tgl_penolakan` datetime DEFAULT NULL,
  `alasan_penolakan` varchar(100) DEFAULT NULL,
  `tgl_ambil` datetime DEFAULT NULL,
  `nama_pengambil` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_khs_cetak`
--

INSERT INTO `tb_khs_cetak` (`id_pengajuancetakkhs`, `id_mhs`, `semester`, `tgl_pengajuan`, `status`, `tgl_pembayaran`, `file_pembayaran`, `tgl_penolakan`, `alasan_penolakan`, `tgl_ambil`, `nama_pengambil`) VALUES
(1, 11, '20171', '2018-03-28 12:53:21', '0', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_khs_cetakdetail`
--

CREATE TABLE `tb_khs_cetakdetail` (
  `id_detailcetakkhs` int(11) NOT NULL,
  `id_pengajuancetakkhs` int(11) NOT NULL,
  `jeniscetak` enum('KHS','Transkrip Nilai') NOT NULL,
  `semester` char(5) DEFAULT NULL,
  `jml_cetak` int(11) DEFAULT '0',
  `filecetak` varchar(50) DEFAULT NULL,
  `tgl_upload` datetime DEFAULT NULL,
  `id_userupload` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_khs_cetakdetail`
--

INSERT INTO `tb_khs_cetakdetail` (`id_detailcetakkhs`, `id_pengajuancetakkhs`, `jeniscetak`, `semester`, `jml_cetak`, `filecetak`, `tgl_upload`, `id_userupload`) VALUES
(1, 1, 'KHS', '20171', 1, NULL, NULL, NULL),
(2, 1, 'KHS', '20172', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_khs_setbiaya`
--

CREATE TABLE `tb_khs_setbiaya` (
  `id_khs_setbiaya` int(11) NOT NULL,
  `nama_biaya_khs` varchar(50) NOT NULL,
  `biaya_khs` float NOT NULL DEFAULT '0',
  `biaya_transkrip` float NOT NULL DEFAULT '0',
  `status` enum('Aktif','Tidak') NOT NULL DEFAULT 'Tidak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_khs_setbiaya`
--

INSERT INTO `tb_khs_setbiaya` (`id_khs_setbiaya`, `nama_biaya_khs`, `biaya_khs`, `biaya_transkrip`, `status`) VALUES
(1, 'Biaya Cetak KHS tahun 2017', 15000, 25000, 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_khs_setbiaya_detail`
--

CREATE TABLE `tb_khs_setbiaya_detail` (
  `id_khs_setbiaya_detail` int(11) NOT NULL,
  `id_khs_setbiaya` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_khs_setbiaya_detail`
--

INSERT INTO `tb_khs_setbiaya_detail` (`id_khs_setbiaya_detail`, `id_khs_setbiaya`, `id_prodi`) VALUES
(1, 1, 19),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kurikulum`
--

CREATE TABLE `tb_kurikulum` (
  `id_kurikulum` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `nama_kurikulum` varchar(100) NOT NULL,
  `semester_berlaku` enum('Ganjil','Genap') NOT NULL DEFAULT 'Ganjil',
  `tahun_kur` year(4) NOT NULL,
  `jml_skswajib` int(11) DEFAULT '0',
  `jml_skspilihan` int(11) DEFAULT '0',
  `keterangan` text,
  `aktif` enum('ya','tidak') NOT NULL DEFAULT 'tidak',
  `dok_kurikulum` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kurikulum`
--

INSERT INTO `tb_kurikulum` (`id_kurikulum`, `id_prodi`, `nama_kurikulum`, `semester_berlaku`, `tahun_kur`, `jml_skswajib`, `jml_skspilihan`, `keterangan`, `aktif`, `dok_kurikulum`) VALUES
(1, 2, 'Kurikulum 2015-2020', 'Ganjil', 2015, 134, 10, '<p>Testing</p>\r\n', 'tidak', 'Kurikulum 2017.zip'),
(6, 2, 'Kurikulum 2010', 'Ganjil', 2001, 134, 12, '', 'tidak', 'Kurikulum 2017.zip'),
(7, 3, 'Kurikulum 2017-2022', 'Ganjil', 2017, 134, 0, NULL, 'ya', 'Kurikulum 2017.zip'),
(8, 2, 'Kurikulum 2010', 'Ganjil', 2010, 130, 14, '<p>sadasdasd</p>\r\n', 'ya', 'file_Kurikulum_2010.pdf'),
(9, 19, 'Kurikulum 2017', 'Ganjil', 2017, 134, 12, '<p>asdasdsad</p>\r\n', 'ya', 'file_Kurikulum_2017.pdf'),
(10, 19, 'Kurikulum 2018', 'Ganjil', 2018, 136, 8, '<p>sadsadasd</p>\r\n', 'tidak', '15349771_1330941753617946_105056530721048606_n1.jpg'),
(11, 19, 'Kurikulum 2010', 'Ganjil', 2010, 132, 14, '<p>sadasdsdd</p>\r\n', 'ya', 'file_Kurikulum_2010.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kurmatkul`
--

CREATE TABLE `tb_kurmatkul` (
  `id_matakuliah` int(11) NOT NULL,
  `kode_mtk` varchar(10) NOT NULL,
  `id_prodi` int(11) DEFAULT NULL,
  `nama_mtk` varchar(50) NOT NULL,
  `nama_mtk_eng` varchar(50) DEFAULT NULL,
  `singkatan_mtk` varchar(20) DEFAULT NULL,
  `sksteori_mtk` int(11) NOT NULL DEFAULT '0',
  `skspraktikum_mtk` int(11) NOT NULL DEFAULT '0',
  `skspraktek_lapangan` int(11) NOT NULL DEFAULT '0',
  `skssimulasi_mtk` int(11) NOT NULL DEFAULT '0',
  `syarat_mtk` int(11) DEFAULT NULL,
  `syarat_sks` int(11) DEFAULT NULL,
  `deskripsi_mtk_indo` text,
  `deskripsi_mtk_eng` text,
  `kelompok_mk` enum('A','B','C','D','E','F','G','H') DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kurmatkul`
--

INSERT INTO `tb_kurmatkul` (`id_matakuliah`, `kode_mtk`, `id_prodi`, `nama_mtk`, `nama_mtk_eng`, `singkatan_mtk`, `sksteori_mtk`, `skspraktikum_mtk`, `skspraktek_lapangan`, `skssimulasi_mtk`, `syarat_mtk`, `syarat_sks`, `deskripsi_mtk_indo`, `deskripsi_mtk_eng`, `kelompok_mk`, `keterangan`) VALUES
(3, 'AK172005', 21, 'Pengembangan Pribadi', 'Caracter Building', 'PP', 2, 0, 0, 0, NULL, NULL, '-', '-', 'A', NULL),
(4, 'FTIK172001', 19, 'Ilmu Rekayasa ', 'Engineering Sciences', 'IR', 2, 0, 0, 0, NULL, NULL, '', '', 'B', NULL),
(12, 'MJ 1021', 20, 'Pengantar Manajemen', 'Manajemen Introductions', 'PM', 2, 1, 0, 0, NULL, NULL, '-', '-', 'C', NULL),
(13, 'MJ 1002', 20, 'Ilmu Economi', 'Economic Sciences', 'IE', 2, 0, 0, 0, NULL, NULL, '-', '-', 'F', NULL),
(14, 'IF 10', 3, 'PBO', 'PBO', 'PBO', 2, 0, 0, 0, NULL, NULL, 'adsf', '', 'H', NULL),
(15, 'IF 11', 3, 'PBD', 'PBD', 'PBD', 2, 0, 0, 0, NULL, NULL, 'PBD', '', 'G', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kur_matkulprodi`
--

CREATE TABLE `tb_kur_matkulprodi` (
  `id_matkulprodi` int(11) NOT NULL,
  `id_kurikulum` int(11) NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `st` enum('1','0') DEFAULT '0',
  `file_rps` varchar(200) DEFAULT NULL,
  `file_rpp` varchar(200) DEFAULT NULL,
  `semester` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14') DEFAULT NULL,
  `kategori` enum('A','B','C','D') DEFAULT 'A' COMMENT 'A:Wajib; B:Pilihan; Wajib Peminatan;  D:Pilihan Peminatan;  S:Skripsi/TA/Desertasi'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `angkatan` year(4) NOT NULL,
  `npm` char(9) NOT NULL,
  `nik_mhs` int(11) DEFAULT NULL,
  `nama_mhs` varchar(50) DEFAULT NULL,
  `status_masuk` enum('Baru','Pindahan') NOT NULL DEFAULT 'Baru',
  `status_aktif` enum('Aktif','Tidak Aktif') DEFAULT 'Aktif',
  `tempatlahir_mhs` varchar(30) DEFAULT NULL,
  `tgllahir_mhs` date DEFAULT NULL,
  `jk` enum('L','P') DEFAULT NULL,
  `agama` int(11) DEFAULT NULL,
  `kewarganegaraan` enum('WNA','WNI') DEFAULT 'WNI',
  `negara` varchar(10) DEFAULT NULL,
  `npwp` varchar(50) DEFAULT NULL,
  `alamat_tinggal` varchar(200) DEFAULT NULL,
  `kel_tinggal` varchar(50) DEFAULT NULL,
  `rt` varchar(4) DEFAULT NULL,
  `rw` varchar(4) DEFAULT NULL,
  `kec_tinggal` int(11) DEFAULT NULL,
  `kode_pos_tiggal` varchar(10) DEFAULT NULL,
  `kota_tinggal` int(11) DEFAULT NULL,
  `prov_tinggal` int(11) DEFAULT NULL,
  `jenis_tinggal` int(11) DEFAULT NULL,
  `alat_transportasi` int(11) DEFAULT NULL,
  `nik_ayah` varchar(25) DEFAULT NULL,
  `nama_ayah` varchar(50) DEFAULT NULL,
  `tgl_lahir_ayah` date DEFAULT NULL,
  `telp_ayah` varchar(30) DEFAULT NULL,
  `pendidikan_ayah` int(11) DEFAULT NULL,
  `pekerjaan_ayah` int(11) DEFAULT NULL,
  `penghasilan_ayah` int(11) DEFAULT NULL,
  `nik_ibu` varchar(25) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `tgl_lahir_ibu` date DEFAULT NULL,
  `telp_ibu` varchar(30) DEFAULT NULL,
  `pendidikan_ibu` int(11) DEFAULT NULL,
  `pekerjaan_ibu` int(11) DEFAULT NULL,
  `penghasilan_ibu` int(11) DEFAULT NULL,
  `nik_wali` varchar(25) DEFAULT NULL,
  `nama_wali` varchar(50) DEFAULT NULL,
  `tgl_lahir_wali` date DEFAULT NULL,
  `telp_wali` varchar(30) DEFAULT NULL,
  `pendidikan_wali` int(11) DEFAULT NULL,
  `pekerjaan_wali` int(11) DEFAULT NULL,
  `penghasilan_wali` int(11) DEFAULT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `no_ijazah` varchar(30) DEFAULT NULL,
  `nama_smta` varchar(50) DEFAULT NULL,
  `jenis_smta` enum('SMA','SMK','MA','Lainnya') DEFAULT NULL,
  `status_smta` enum('Negeri') DEFAULT NULL,
  `thn_dftr_smta` year(4) DEFAULT NULL,
  `thn_lls_smta` varchar(9) DEFAULT NULL,
  `jrsan_smta` varchar(30) DEFAULT NULL,
  `alamat_smta` varchar(200) DEFAULT NULL,
  `kec_smta` int(11) DEFAULT NULL,
  `kab_smta` int(11) DEFAULT NULL,
  `prov_smta` int(11) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `foto_profil` varchar(50) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id_mhs`, `id_prodi`, `angkatan`, `npm`, `nik_mhs`, `nama_mhs`, `status_masuk`, `status_aktif`, `tempatlahir_mhs`, `tgllahir_mhs`, `jk`, `agama`, `kewarganegaraan`, `negara`, `npwp`, `alamat_tinggal`, `kel_tinggal`, `rt`, `rw`, `kec_tinggal`, `kode_pos_tiggal`, `kota_tinggal`, `prov_tinggal`, `jenis_tinggal`, `alat_transportasi`, `nik_ayah`, `nama_ayah`, `tgl_lahir_ayah`, `telp_ayah`, `pendidikan_ayah`, `pekerjaan_ayah`, `penghasilan_ayah`, `nik_ibu`, `nama_ibu`, `tgl_lahir_ibu`, `telp_ibu`, `pendidikan_ibu`, `pekerjaan_ibu`, `penghasilan_ibu`, `nik_wali`, `nama_wali`, `tgl_lahir_wali`, `telp_wali`, `pendidikan_wali`, `pekerjaan_wali`, `penghasilan_wali`, `nisn`, `no_ijazah`, `nama_smta`, `jenis_smta`, `status_smta`, `thn_dftr_smta`, `thn_lls_smta`, `jrsan_smta`, `alamat_smta`, `kec_smta`, `kab_smta`, `prov_smta`, `password`, `foto_profil`, `last_login`) VALUES
(11, 19, 2017, '17212006', 2147483647, 'Beni', 'Baru', 'Aktif', 'Bandar Lampung', '1990-08-20', 'L', 1, 'WNI', 'Indonesia', '', 'askdsdj', 'jsjdhasjdh', '12', '12', 3140, '1211212', 378, 10, 3, 13, '', '', '0000-00-00', '', 7, 3, 14, '', 'Sutinah', '0000-00-00', '', 5, 3, 13, '', '', '0000-00-00', '', 23, 5, 15, '', '', '', '', '', 0000, '', '', '', 3241, 359, 10, '202cb962ac59075b964b07152d234b70', NULL, '2019-11-15 14:06:17'),
(12, 19, 2016, '172837812', 18278373, 'Bagus', 'Baru', 'Aktif', NULL, NULL, NULL, NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(14, 19, 2015, '17212009', NULL, 'Riski', 'Baru', 'Aktif', 'Lampung', '1983-07-12', 'L', 1, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, '2019-11-02 07:39:26'),
(15, 19, 2016, '17212010', NULL, 'Veny', 'Baru', 'Aktif', 'Lampung', '1984-07-12', 'P', 1, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, '2019-11-04 14:05:18'),
(16, 19, 2014, '17212011', NULL, 'Beni', 'Baru', 'Aktif', 'Lampung', '1985-07-12', 'L', 1, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(40, 4, 0000, '18111112', NULL, 'patoni2', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(41, 5, 0000, '18111113', NULL, 'patoni3', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(42, 3, 0000, '18111114', NULL, 'patoni4', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(43, 4, 0000, '18111115', NULL, 'patoni5', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(44, 5, 0000, '18111116', NULL, 'patoni6', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(45, 3, 0000, '18111117', NULL, 'patoni7', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(46, 4, 0000, '18111118', NULL, 'patoni8', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(47, 5, 0000, '18111119', NULL, 'patoni9', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(48, 3, 0000, '18111120', NULL, 'patoni10', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(49, 4, 0000, '18111121', NULL, 'patoni11', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(50, 5, 0000, '18111122', NULL, 'patoni12', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(51, 3, 0000, '18111123', NULL, 'patoni13', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(52, 4, 0000, '18111124', NULL, 'patoni14', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(53, 5, 0000, '18111125', NULL, 'patoni15', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(54, 3, 0000, '18111126', NULL, 'patoni16', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(55, 4, 0000, '18111127', NULL, 'patoni17', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(56, 5, 0000, '18111128', NULL, 'patoni18', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(57, 3, 0000, '18111129', NULL, 'patoni19', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(58, 4, 0000, '18111130', NULL, 'patoni20', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(59, 5, 0000, '18111131', NULL, 'patoni21', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(60, 3, 0000, '18111132', NULL, 'patoni22', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, '2019-06-20 11:01:57'),
(66, 3, 0000, '18111111', NULL, 'patoni1', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(67, 4, 0000, '10311372', NULL, 'Eva Yuniati', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(68, 5, 0000, '14311088', NULL, 'Okti Yunita Syahputri', 'Baru', 'Aktif', NULL, NULL, '', NULL, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL),
(70, 3, 2014, '14311115', NULL, 'Joko Trilaksono', 'Baru', 'Aktif', 'bdl', '2018-04-03', 'L', 1, 'WNI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa_berkas`
--

CREATE TABLE `tb_mahasiswa_berkas` (
  `id_berkasmhs` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `jenis_berkas` enum('KK','IjasahSMA','KTP','AkteLahir','Lainnya') DEFAULT NULL,
  `nama_berkas` varchar(100) NOT NULL,
  `file_berkas` varchar(100) NOT NULL,
  `status` enum('Draft','Disetujui','Ditolak','Menunggu') DEFAULT 'Draft',
  `keterangan` text,
  `tgl_upload` datetime DEFAULT CURRENT_TIMESTAMP,
  `tgl_pengajuan` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa_berkas`
--

INSERT INTO `tb_mahasiswa_berkas` (`id_berkasmhs`, `id_mhs`, `jenis_berkas`, `nama_berkas`, `file_berkas`, `status`, `keterangan`, `tgl_upload`, `tgl_pengajuan`) VALUES
(3, 11, 'IjasahSMA', 'Ijasah SMA n1 Bandarlampung', '2457840d903f52d6824ab0247b62c731.jpg', 'Disetujui', 'd', '2018-03-09 00:38:50', '2018-03-08 07:14:44'),
(4, 11, 'AkteLahir', 'Akte Kelahiran', '', 'Ditolak', 'sdfdsf', '2018-03-09 00:38:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa_ormawa`
--

CREATE TABLE `tb_mahasiswa_ormawa` (
  `id_mhsormawa` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `id_ormawa` int(11) NOT NULL,
  `nama_keanggotaan` varchar(50) DEFAULT NULL,
  `keanggotaan` enum('Ketua','Wakil Ketua','Sekertaris','Bendahara','Kepala Bidang','Koordinator','Anggota') NOT NULL DEFAULT 'Anggota',
  `keterangan_mhsormawa` text,
  `tahun` year(4) DEFAULT NULL,
  `file_mhsormawa` varchar(100) DEFAULT NULL,
  `status_mhsormawa` enum('Draft','Disetujui','Ditolak','Menunggu') NOT NULL DEFAULT 'Draft',
  `tgl_pengajuan` datetime DEFAULT NULL,
  `tgl_persetujuan` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa_ormawa`
--

INSERT INTO `tb_mahasiswa_ormawa` (`id_mhsormawa`, `id_mhs`, `id_ormawa`, `nama_keanggotaan`, `keanggotaan`, `keterangan_mhsormawa`, `tahun`, `file_mhsormawa`, `status_mhsormawa`, `tgl_pengajuan`, `tgl_persetujuan`) VALUES
(3, 11, 2, 'asdasd', 'Ketua', '', 2019, '68fa3b8be162bca50d1a2e23355b354c.pdf', 'Disetujui', '2018-03-16 12:15:16', '2018-03-16 12:15:16'),
(5, 11, 3, 'Ketua Umum', 'Ketua', 'd', 2008, '70e52ad0312abce943be10ac251b7c45.jpg', 'Menunggu', '2018-03-17 07:14:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa_prestasi`
--

CREATE TABLE `tb_mahasiswa_prestasi` (
  `id_prestasimhs` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `nama_prestasi` varchar(100) NOT NULL,
  `level` enum('Lokal','Regional','Nasional','Internasional') NOT NULL,
  `capaian` enum('Juara 1','Juara 2','Juara 3','Harapan 1','Harapan 2','Harapan 3','Peserta','Penghargaan') NOT NULL,
  `keterangan` text,
  `tahun` year(4) DEFAULT NULL,
  `file_sertifikat` varchar(100) DEFAULT NULL,
  `foto_kegiatan` varchar(100) DEFAULT NULL,
  `status` enum('Draft','Disetujui','Ditolak','Menunggu') NOT NULL DEFAULT 'Draft',
  `tgl_pengajuan` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_mahasiswa_prestasi`
--

INSERT INTO `tb_mahasiswa_prestasi` (`id_prestasimhs`, `id_mhs`, `nama_prestasi`, `level`, `capaian`, `keterangan`, `tahun`, `file_sertifikat`, `foto_kegiatan`, `status`, `tgl_pengajuan`) VALUES
(4, 11, 'Juara Nasional', 'Lokal', 'Juara 1', 's', 2017, '029c17af06a6200a5d88e3c9b378b081.jpg', '1a1df835af2469162d8377e7dd2dda75.jpg', 'Draft', '0000-00-00 00:00:00'),
(5, 66, 'dede', 'Lokal', 'Juara 1', 'dede', 2018, 'bca0adf75c1449c1c97143a7392543ee.pdf', '29fb248606fe261d050b920fb15caea5.pdf', 'Disetujui', '2018-04-03 09:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matakuliah_prasyarat_pkl`
--

CREATE TABLE `tb_matakuliah_prasyarat_pkl` (
  `id_makul_pkl` int(11) NOT NULL,
  `nama_makul` varchar(50) DEFAULT NULL,
  `id_prodi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_matakuliah_prasyarat_pkl`
--

INSERT INTO `tb_matakuliah_prasyarat_pkl` (`id_makul_pkl`, `nama_makul`, `id_prodi`) VALUES
(1, 'Bahasa Indonesia', 19),
(2, 'Pengembangan Kepribadian', 19),
(3, 'Skdfjskj', 19);

-- --------------------------------------------------------

--
-- Table structure for table `tb_matauji_pembekalan_pkl`
--

CREATE TABLE `tb_matauji_pembekalan_pkl` (
  `id_ujipembekalan` int(11) NOT NULL,
  `nama_matauji` varchar(50) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `id_prodi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_matauji_pembekalan_pkl`
--

INSERT INTO `tb_matauji_pembekalan_pkl` (`id_ujipembekalan`, `nama_matauji`, `grade`, `id_prodi`) VALUES
(1, 'Computer Network', 75, 19);

-- --------------------------------------------------------

--
-- Table structure for table `tb_matkulkurikulum`
--

CREATE TABLE `tb_matkulkurikulum` (
  `id_matkulkurikulum` int(11) NOT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `id_kurikulum` int(11) NOT NULL,
  `jenis` enum('A','B','C','D','S') NOT NULL DEFAULT 'A' COMMENT 'A:WAJIB; B:Pilihan; C:Wajib Peminatan; D:Pilihan Peminatan; S:Tugas akhir/Skripsi/Tesis/Disertasi',
  `st` enum('Y','T') NOT NULL DEFAULT 'T',
  `semester_mtk` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','Pilihan') NOT NULL,
  `file_rps` varchar(100) DEFAULT NULL,
  `file_sap` varchar(100) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_matkulkurikulum`
--

INSERT INTO `tb_matkulkurikulum` (`id_matkulkurikulum`, `id_matakuliah`, `id_kurikulum`, `jenis`, `st`, `semester_mtk`, `file_rps`, `file_sap`, `keterangan`) VALUES
(13, 4, 9, 'A', 'Y', '1', 'file_rps946.pdf', 'file_rps948.pdf', NULL),
(19, 13, 9, 'A', 'Y', '1', 'file_rps9134.docx', '', NULL),
(20, 15, 7, 'A', 'Y', '1', '', '', NULL),
(21, 14, 7, 'A', 'Y', '1', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai_prasyarat_pkl`
--

CREATE TABLE `tb_nilai_prasyarat_pkl` (
  `id_nilai_prasyarat` int(11) NOT NULL,
  `id_makul_pkl` int(11) DEFAULT NULL,
  `nilai` varchar(20) DEFAULT NULL,
  `id_pkl` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai_prasyarat_pkl`
--

INSERT INTO `tb_nilai_prasyarat_pkl` (`id_nilai_prasyarat`, `id_makul_pkl`, `nilai`, `id_pkl`) VALUES
(1, 1, 'A', '20190620120331'),
(2, 2, 'A', '20190620120331'),
(3, 3, 'B', '20190620120331'),
(7, 1, 'B', '20190621114534'),
(8, 2, 'A', '20190621114534'),
(9, 3, 'A', '20190621114534'),
(10, 1, 'B', '20190626061714'),
(11, 2, 'A', '20190626061714'),
(12, 3, 'A', '20190626061714');

-- --------------------------------------------------------

--
-- Table structure for table `tb_notifikasi`
--

CREATE TABLE `tb_notifikasi` (
  `id_notifikasi` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `judul_notif` varchar(100) DEFAULT NULL,
  `isi_notifikasi` text,
  `status` enum('0','1') DEFAULT '0',
  `link` varchar(200) DEFAULT NULL,
  `tgl_notif` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_notifikasi`
--

INSERT INTO `tb_notifikasi` (`id_notifikasi`, `id_user`, `judul_notif`, `isi_notifikasi`, `status`, `link`, `tgl_notif`) VALUES
(4, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/cA%3D%3D', '2018-03-18 18:39:41'),
(5, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/cA%3D%3D', '2018-03-18 19:15:21'),
(6, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/cA%3D%3D', '2018-03-18 19:34:40'),
(7, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/cA%3D%3D', '2018-03-18 19:48:29'),
(8, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/cA%3D%3D', '2018-03-18 19:48:41'),
(9, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/cA%3D%3D', '2018-03-18 19:48:56'),
(10, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/cA%3D%3D', '2018-03-18 19:51:39'),
(11, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/cA%3D%3D', '2018-03-18 19:51:58'),
(12, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/bg%3D%3D', '2018-03-18 19:53:27'),
(13, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/cA%3D%3D', '2018-03-19 07:36:41'),
(14, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/bg%3D%3D', '2018-03-19 07:39:13'),
(15, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/bg%3D%3D', '2018-03-20 11:34:39'),
(16, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/cA%3D%3D', '2018-03-20 12:15:45'),
(17, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/bg%3D%3D', '2018-03-20 18:20:12'),
(18, 65, 'Permohonan ST', 'Bapak Jupriyadi Saya Telah Mengajukan ST, Mohon untuk di Periksa dan di setujui !', '1', 'Dosen/Stkaprodi', '2018-03-20 19:08:23'),
(19, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/bg%3D%3D', '2018-03-20 19:20:03'),
(20, 65, 'Permohonan ST', 'Bapak Jupriyadi Saya Telah Mengajukan ST, Mohon untuk di Periksa dan di setujui !', '1', 'Dosen/Stkaprodi/permohonanst/', '2018-03-20 19:24:31'),
(21, 65, 'Permohonan ST', 'Bapak Jupriyadi Saya Telah Mengajukan ST, Mohon untuk di Periksa dan di setujui !', '1', 'Dosen/Stkaprodi/permohonanst', '2018-03-20 19:25:44'),
(22, 65, 'Permohonan ST', 'Bapak Jupriyadi Saya Telah Mengajukan ST, Mohon untuk di Periksa dan di setujui !', '1', 'Dosen/Stkaprodi/permohonanst', '2018-03-25 09:13:04'),
(23, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/aIU%3D', '2018-03-25 09:13:53'),
(24, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/aIU%3D', '2018-03-25 11:38:59'),
(25, 65, 'Permohonan ST', 'Bapak Jupriyadi Saya Telah Mengajukan ST, Mohon untuk di Periksa dan di setujui !', '1', 'Dosen/Stkaprodi/permohonanst', '2018-03-27 08:14:39'),
(26, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '1', 'Mahasiswa/St/st_pengajuan_detail/aIY%3D', '2018-03-27 08:19:49'),
(27, 65, 'Input Nilai ST', 'Bapak Jupriyadi Saya Telah Input Nilai ST, Mohon untuk di Periksa dan di validasi !', '0', 'Dosen/Stkaprodi/ValidasiNilai', '2018-03-27 08:25:46'),
(28, 54, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '0', 'Mahasiswa/St/st_pengajuan_detail/aIY%3D', '2018-03-28 04:29:07'),
(29, 75, 'Permohonan ST', 'Bapak Purwono Prasetyawan Saya Telah Mengajukan ST, Mohon untuk di Periksa dan di setujui !', '0', 'Dosen/Stkaprodi/permohonanst', '2018-04-03 09:17:33'),
(30, 124, 'Persetujuan ST', 'Permohonan ST Anda Telah Disetujui Kaprodi', '0', 'Mahasiswa/St/st_pengajuan_detail/aIc%3D', '2018-04-03 09:18:23'),
(31, 75, 'Input Nilai ST', 'Bapak Purwono Prasetyawan Saya Telah Input Nilai ST, Mohon untuk di Periksa dan di validasi !', '0', 'Dosen/Stkaprodi/ValidasiNilai', '2018-04-03 09:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ormawa`
--

CREATE TABLE `tb_ormawa` (
  `id_ormawa` int(11) NOT NULL,
  `nama_ormawa` varchar(50) DEFAULT NULL,
  `kelompok` enum('BEM','CLUB','HIMA','KELOMPOK BELAJAR','KOMUNITAS','SENAT','UKM') NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Tidak Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ormawa`
--

INSERT INTO `tb_ormawa` (`id_ormawa`, `nama_ormawa`, `kelompok`, `status`) VALUES
(1, 'HIMA TI', 'HIMA', 'Aktif'),
(2, 'BEM FTIK', 'BEM', 'Aktif'),
(3, 'UKM Robotik', 'UKM', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pejabatpkl`
--

CREATE TABLE `tb_pejabatpkl` (
  `id_pj` int(11) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `periode` varchar(9) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Tidak Aktif',
  `sk_pjpkl` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pejabatpkl`
--

INSERT INTO `tb_pejabatpkl` (`id_pj`, `id_fakultas`, `id_dosen`, `periode`, `status`, `sk_pjpkl`) VALUES
(4, 1, 11, '2019-2021', 'Aktif', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pejabat_dekan`
--

CREATE TABLE `tb_pejabat_dekan` (
  `id_dekan` int(11) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `periode` varchar(9) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Tidak Aktif',
  `sk_dekan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pejabat_dekan`
--

INSERT INTO `tb_pejabat_dekan` (`id_dekan`, `id_fakultas`, `id_dosen`, `periode`, `status`, `sk_dekan`) VALUES
(1, 1, 14, '2017-2020', 'Aktif', 'file1g7FEjT7h_2017-2020'),
(3, 1, 4, '2025-2028', 'Tidak Aktif', 'file1BpMHf8NH_2025-2028');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pejabat_kaprodi`
--

CREATE TABLE `tb_pejabat_kaprodi` (
  `id_kaprodi` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `periode` varchar(9) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Tidak Aktif',
  `sk_kaprodi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pejabat_kaprodi`
--

INSERT INTO `tb_pejabat_kaprodi` (`id_kaprodi`, `id_prodi`, `id_dosen`, `periode`, `status`, `sk_kaprodi`) VALUES
(4, 19, 4, '2017-2020', 'Aktif', 'file19WedqSicg_2017-2020.pdf'),
(6, 3, 16, '2017-2020', 'Aktif', 'file3ZZSbE4Bp_2017-2020');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengajuan_seminar`
--

CREATE TABLE `tb_pengajuan_seminar` (
  `id_pengajuanseminar` int(6) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `kd_perusahaan` char(7) NOT NULL,
  `status` enum('diajukan','disetujui','ditolak','') NOT NULL,
  `tanggal_seminar` date NOT NULL,
  `pukul_seminar` time NOT NULL,
  `id_ruangan` int(11) NOT NULL,
  `id_dosenpenguji` int(11) NOT NULL,
  `gen_kelompok` varchar(20) NOT NULL,
  `validasi_seminar` enum('diajukan','disetujui','ditolak','') NOT NULL DEFAULT 'diajukan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengajuan_seminar`
--

INSERT INTO `tb_pengajuan_seminar` (`id_pengajuanseminar`, `id_mhs`, `tanggal_pengajuan`, `kd_perusahaan`, `status`, `tanggal_seminar`, `pukul_seminar`, `id_ruangan`, `id_dosenpenguji`, `gen_kelompok`, `validasi_seminar`) VALUES
(4, 11, '2019-11-04', 'PT001', 'diajukan', '2019-11-06', '11:00:00', 3, 0, '20191104055213', 'diajukan'),
(5, 15, '2019-11-04', 'PT001', 'diajukan', '2019-11-06', '11:00:00', 3, 0, '20191104055213', 'diajukan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_periode_pkl`
--

CREATE TABLE `tb_periode_pkl` (
  `id_periode` int(11) NOT NULL,
  `semester` char(5) DEFAULT NULL,
  `nama_periode` varchar(30) DEFAULT NULL,
  `tgl_mulai_pkl` date DEFAULT NULL,
  `tgl_selesai_pkl` date DEFAULT NULL,
  `status_pkl` enum('Non-Aktif','Aktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_periode_pkl`
--

INSERT INTO `tb_periode_pkl` (`id_periode`, `semester`, `nama_periode`, `tgl_mulai_pkl`, `tgl_selesai_pkl`, `status_pkl`) VALUES
(1, '20192', 'asdf', '2019-07-01', '2019-11-06', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_perusahaan`
--

CREATE TABLE `tb_perusahaan` (
  `kd_perusahaan` char(7) NOT NULL,
  `nama_perusahaan` varchar(100) DEFAULT NULL,
  `alamat` varchar(1000) DEFAULT NULL,
  `telpon` varchar(30) DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kabupaten` varchar(50) DEFAULT NULL,
  `kode_pos` varchar(10) DEFAULT NULL,
  `nama_user` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_perusahaan`
--

INSERT INTO `tb_perusahaan` (`kd_perusahaan`, `nama_perusahaan`, `alamat`, `telpon`, `kecamatan`, `kabupaten`, `kode_pos`, `nama_user`) VALUES
('PT001', 'PT FINANSIA MULTI FINANCE', 'Jalan Jend. Sudirman No. 3A Enggal', '(0721) 259621, 259625', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT002', 'PT PERUSAHAAN PERDAGANGAN INDONESIA (PERSERO)', 'Jalan Jend. Sudirman No. 22 Enggal', '(0721) 266959', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT003', 'DINAS PARIWISATA DAN EKONOMI KREATIF PROVINSI LAMPUNG', 'Jalan Jend. Sudirman No. 29 Enggal', '(0721) 261430', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT004', 'PT ASURANSI JASTAN', 'Jalan Jend. Sudirman No. 82 Enggal', '-', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT005', 'PT TELEKOMUNIKASI INDONESIA, TBK.', 'Jalan Majapahit No. 14', '0721-261680', 'Enggal', 'Bandarlampung', '35118', 'Kiki'),
('PT006', 'CV MITRA FARM', 'Jalan Cendana II No. 7 Pahoman', '-', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT007', 'KANTOR PERPUSTAKAAN DAN ARSIP DAERAH KOTA BANDAR LAMPUNG', 'Jalan Prof. M. Yamin No. 33 Rawa Laut', '(0721) 252590', 'Pahoman ', 'Bandarlampung', '0', 'admin'),
('PT008', 'PT POS INDONESIA (PERSERO)', 'Jalan KH. Ahmad Dahlan No. 21 ', '(0721) 267049, 253014', 'Pahoman ', 'Bandarlampung', '0', 'admin'),
('PT009', 'KOPERASI SIMPAN PINJAM KOPDIT MEKAR SAI', 'Jalan Ir. H. Juanda No. 75 ', '082380775557', 'Pahoman ', 'Bandarlampung', '0', 'admin'),
('PT010', 'PT AL- IJARAH INDONESIA FINANCE', 'Jalan Gajah Mada Perum Gading Jaya No. 58 F ', '(0721) 241010 ', 'Kotabaru ', 'Bandarlampung', '0', 'admin'),
('PT011', 'PT GRAHA ABDI PERSADA', 'Jalan Gajah Mada Perum Taman Gading Jaya Blok A1 No. 2 ', '(0721) 256497', 'Kotabaru ', 'Bandarlampung', '0', 'admin'),
('PT012', 'PT ASURANSI INDRAPURA \n\n', 'Jalan Gajah Mada No. 85 ', '(0721) 240005  ', 'Kotabaru ', 'Bandarlampung', '0', 'admin'),
('PT013', 'RUMAH SAKIT GRAHA HUSADA', 'Jalan Gajah Mada No. 6 GH', '(0721) 240000', 'Kotabaru ', 'Bandarlampung', '0', 'admin'),
('PT014', 'PURWA CARAKA MUSIC STUDIO', 'Jalan Dr. Harun 1 No. 67 ', '-', 'Kotabaru ', 'Bandarlampung', '0', 'admin'),
('PT015', 'PT ROHTO LABORATORIES INDONESIA', 'Jalan Dr. Harun 2 No. 60 Kotabaru', '085269417678', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT016', 'PT GLOBAL FUTURINDO', 'Jalan Hayam Wuruk No. 25447 ', '(0721) 261757', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT017', 'PT GRENCOFE PREMIUM INDONESIA', 'Jalan Hayam Wuruk No. 28 ', '-', 'Kedamaian ', 'Bandarlampung', '0', 'admin'),
('PT018', 'BADAN PUSAT STATISTIK KOTA BANDARLAMPUNG', 'Jalan Sutan Syahrir No. 30', '(0721) 255980', 'Pahoman', 'Bandarlampung', '0', 'Yepi'),
('PT019', 'DHARMA WANITA PERSATUAN PROVINSI LAMPUNG', 'Jalan Way Ngarip No. 1 ', '(0721) 245990', 'Pahoman ', 'Bandarlampung', '0', 'admin'),
('PT020', 'RADIO REPUBLIK INDONESIA', 'Jalan Jend. Gatot Subroto No. 26', '(0721) 265772', 'Pahoman', 'Bandarlampung', '0', 'Yepi'),
('PT021', 'PT SUCOFINDO (PERSERO)', 'Jalan Gatot Subroto No. 121', '(0721) 474660', 'Garuntang', 'Bandarlampung', '0', 'Silvi'),
('PT022', 'BALAI BESAR WILAYAH SUNGAI MESUJI SEKAMPUNG', 'Jalan Gatot Subroto No. 57 ', '(0721) 480722', 'Garuntang ', 'Bandarlampung', '0', 'admin'),
('PT023', 'DINAS PENGAIRAN DAN PEMUKIMAN PROVINSI LAMPUNG', 'Jalan Gatot Subroto No. 50 ', '(0721) 482210, 482402', 'Garuntang ', 'Bandarlampung', '0', 'admin'),
('PT024', 'DINAS TENAGA KERJA DAN TRANSMIGRASI PROVINSI LAMPUNG', 'Jalan Gatot Subroto No. 28', '(0721) 252605', 'Tanjung Karang', 'Bandarlampung', '0', 'Yepi'),
('PT025', 'PT MANDIRI MULTI MEGAH', 'Jalan Pandawa II No. 26 ', '', 'Garuntang ', 'Bandarlampung', '0', 'admin'),
('PT026', 'PT SUMATERA BAHTERA RAYA', 'Jalan Yos Sudarso   ', '(0721) 473049', 'Garuntang ', 'Bandarlampung', '0', 'admin'),
('PT027', 'PT SUMBER KARYA BERSAMA', 'Jalan Pandawa 2 No. 25 CV Kota Agung', '(0721) 476201', 'Garuntang ', 'Bandarlampung', '0', 'admin'),
('PT028', 'PT SASCO INDONESIA', 'Jalan Ki Agus Anang No.19 Desa Kuasa Ketapang', '(0721) 31101', 'Garuntang ', 'Bandarlampung', '0', 'admin'),
('PT029', 'KAROSERI NEW ABC', 'Jalan Yos Sudarso No. 170 ', '(0721) 482647', 'Sukaraja ', 'Bandarlampung', '0', 'admin'),
('PT030', 'RUMAH SAKIT URIP SUMOHARJO', 'Jalan Urip Sumoharjo No. 200 ', '(0721) 707264', 'Gunung Sulah ', 'Bandarlampung', '0', 'admin'),
('PT031', 'PT ACOSYS', 'Jalan Urip Sumoharjo No. 20 B-C', '(0721) 788190', 'Gunung Sulah', 'Bandarlampung', '0', 'admin'),
('PT032', 'SKH HALUAN LAMPUNG', 'Jalan Pulau Morotai No. 99 ', '(0721) 773368', 'Wayhalim ', 'Bandarlampung', '0', 'admin'),
('PT033', 'PT HM SAMPOERNA TBK.', 'Jalan Arif Rahman Hakim No. 5', '-', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT034', 'SEKOLAH TUNAS MEKAR INDONESIA', 'Jalan Arief Rahman Hakim No. 30', '-', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT035', 'PT ABI PUTRA MAKMUR SENTOSA', 'Jalan Urip Sumoharjo Perum Puri Kencana Blok KA3', '(0721) 707264', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT036', 'RUMAH SAKIT IMANUEL', 'Jalan Soekarno Hatta By Pass ', '(0721) 704900', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT037', 'INSTITUT AGAMA ISLAM NEGERI (IAIN)', 'Jalan Letkol H. Endro Suratmin ', '(0721) 780887, 703531', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT038', 'KANTOR KPU BANDAR LAMPUNG', 'Jalan Pulau Sebesi No. 90 ', '-', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT039', 'PT CAKRA GUNA KARYA NUSA', 'Jalan Ryacudu Perum Korpri C8 No. 1', '(0721) 712309', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT040', 'POLSEK SUKARAME', 'Jalan Letjen Ryacudu No. 1 Korpri', '-', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT041', 'TVRI LAMPUNG', 'Jalan Way Huwi Sukarame Bandarlampung', '(0721) 7624191, 7624193', 'Sukarame', 'Bandarlampung', '0', 'admin'),
('PT042', 'PT MANDIRI TUNAS FINANCE', 'Jalan P. Antasari No. 110', '-', 'Sukarame', 'Bandarlampung', '0', 'Yepi'),
('PT043', 'PT BATAVIA PROSPERINDO FINANCE TBK', 'Jalan P. Antasari No. 96 K', '(0721)  260311', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT044', 'PT SIMPUR MOTOR LESTARI', 'Jalan P. Antasari No. 56-57 Kalibalau', '(0721)  781641', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT045', 'UPT DINAS PENDIDIKAN KEC. KEDAMAIAN', 'Jalan P. Antasari Gg. Waru I No. 40 ', '081369289570', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT046', 'BANK LAMPUNG CABANG PEMBANTU ANTASARI', 'Jalan P. Antasari No. 35 A', '(0721)  487175', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT047', 'BAHANA ANTASARI', 'Jalan P. Antasari No. 138 ', '-', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT048', 'PT MEGA FINANCE CABANG BANDARLAMPUNG', 'Jalan Ridwan Rais No. 2C Antasari', '-', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT049', 'PT BINA KERJA CEMERLANG', 'Jalan Nusa Jaya No. 2 ', '(0721) 708208', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT050', 'PT SINAR NIAGA SEJAHTERA', 'Jalan Tembesu Kav. 5 Campang Raya', '-', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT051', 'PT TOPJAYA SARANA UTAMA', 'Jalan Tembesu IV No. 19-20 Campang Raya', '-', 'Sukarame ', 'Bandarlampung', '0', 'admin'),
('PT052', 'PT EVERBRIGHT', 'Jalan Raya Soekarno Hatta Km. 7 No. 3 Ketapang', '(0721) 9013401, 9013405', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT053', 'PT SENTRA PROFIT INTERMITRA ', 'Jalan Soekarno Hatta Bypass  ', '(0721) 269801', 'Kalibalau ', 'Bandarlampung', '0', 'admin'),
('PT054', 'CV BINTANG LIMA', 'Jalan Haji Said No. 27A ', '081279479669', 'Sukabumi ', 'Bandarlampung', '0', 'admin'),
('PT055', 'PT PASARAYA LIFE INSURANCE', 'Jalan P. Tirtayasa No. 206 A', '-', 'Sukabumi ', 'Bandarlampung', '0', 'admin'),
('PT057', 'EMERSIA HOTEL & RESORT', 'Jalan WR. Monginsidi No. 70 ', '(0721) 258258', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT058', 'BADAN PERENCANAAN PEMBANGUNAN (BAPPEDA) KOTA BANDAR LAMPUNG', 'Jalan Dr. Susilo No. 2', '(0721) 485458', 'Teluk Betung', 'Bandarlampung', '0', 'Tyas'),
('PT059', 'PT BANK BUKOPIN TBK.', 'Jalan WR. Monginsidi No. 18 ', '(0721) 258258', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT060', 'BANK LAMPUNG', 'Jalan WR. Monginsidi No. 182 ', '(0721) 487175, 489127', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT061', 'DINAS PERPUSTAKAAN DAN KEARSIPAN PROVINSI LAMPUNG', 'Jalan WR. Monginsidi No. 144', '(0721) 252590', 'Teluk Betung', 'Bandarlampung', '0', 'Tyas'),
('PT062', 'DINAS KEBUDAYAAN DAN PARIWISATA KOTA BANDARLAMPUNG', 'Jalan WR. Monginsidi No. 120 ', '(0721) 475290', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT063', 'JASA RAHARJA CABANG LAMPUNG', 'Jalan WR. Monginsidi No. 220 A', '(0721) 487522', 'Teluk Betung Utara', 'Bandarlampung', '0', 'Tyas'),
('PT064', 'KPRI SAPTAWA', 'Jalan WR. Monginsidi No. 219 ', '(0721) 484202', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT065', 'UPTD BPKB DINAS PENDIDIKAN DAN KEBUDAYAAN PROVINSI LAMPUNG', 'Jalan Cut Mutia No. 23 ', '(0721) 701455, 702147', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT066', 'KANWIL KEMENTRIAN AGAMA', 'Jalan Cut Mutia No. 27 ', '(0721) 481533', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT067', 'PERUM BULOG KANTOR DIVRE LAMPUNG', 'Jalan Cut Mutia No. 29', '(0721) 487947', 'Teluk Betung', 'Bandarlampung', '0', 'Tyas'),
('PT068', 'DINAS PERHUBUNGAN PROVINSI LAMPUNG', 'Jalan Cut Mutia No. 76 ', '(0721) 470209', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT069', 'DINAS PERDAGANGAN PROVINSI LAMPUNG', 'Jalan Cut Mutia No. 23 B', '(0721)  487311', 'Teluk Betung', 'Bandarlampung', '0', 'Yepi'),
('PT070', 'KANTOR IMIGRASI KELAS I BANDAR LAMPUNG', 'Jalan Cut Mutia Gg. Hj. Haniah No. 3', '(0721) 482828', 'Teluk Betung Utara', 'Bandarlampung', '0', 'Silvi'),
('PT071', 'PT AGRICOMPUTRA CITRA OPTIMA', 'Jalan P. Diponegoro No. 27 ', '(0721) 486710', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT072', 'PT ASURANSI JIWA BRINGIN JIWA SEJAHTERA', 'Jalan P. Diponegoro No. 122 ', '-', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT073', 'PT BANK BUKOPIN TBK', 'Jalan P. Diponegoro No. 18/179 ', '-', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT074', 'PT SARANA LAMPUNG VENTURA', 'Jalan P. Diponegoro No. 69A Gulak Galik', '(0721) 473714, 473715', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT075', 'PT JASARAHARJA PUTERA', 'Jalan P. Diponegoro No. 59 B/C', '(0721) 8014081, 8014082', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT076', 'PT LANG JAYA MAKMUR BERSAMA', 'Jalan Pajajaran No. 20D  ', '(0721) 789559', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT077', 'DINAS KEPENDUDUKAN DAN CATATAN SIPIL', 'Jalan Dr. Susilo No. A1 ', '(0721) 264009', 'Pahoman ', 'Bandarlampung', '0', 'admin'),
('PT078', 'UPTD BALAI KESEHATAN DAN LABORATORIUM PROVINSI LAMPUNG', 'Jalan Dr. Sam Ratulangi No. 103', '(0721) 252412', 'penengahan', 'bandarlampung', '0', 'Yepi'),
('PT079', 'DINAS KOMUNIKASI DAN INFORMATIKA BANDARLAMPUNG', 'Jalan Dr. Susilo No. 2 ', '(0721) 260295', 'Pahoman ', 'Bandarlampung', '0', 'admin'),
('PT080', 'DINAS PENDAPATAN DAERAH PROVINSI LAMPUNG', 'Jalan Hasanudin No. 45', '', '', 'Bandarlampung', '0', 'Yepi'),
('PT081', 'PT GARUDA INDONESIA TBK.', 'Jalan Dr. Susilo No. 21A ', '(0721) 242737', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT082', 'AJB BUMIPUTERA 1912', 'Jalan MS. Batubara No. 32 ', '-', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT083', 'ASURANSI BUMI PUTRA', 'Jalan MS. Batubara Gg. Kamboja No. 35 Kupang Teba', '(0721) 489891', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT084', 'DINAS PENDAPATAN PROVINSI LAMPUNG', 'Jalan Hasanudin No 45.B Gunung Mas', '(0721) 482181', 'Teluk Betung Utara', 'Bandarlampung', '0', 'admin'),
('PT956', 'PT MUNDI KENCANA UTAMA', 'Jalan Teuku Umar No 74 A', '', 'penengahan', 'bandar lampung', '', 'Yepi'),
('PT086', 'DINAS PENDIDIKAN DAN KEBUDAYAAN PROVINSI LAMPUNG', 'Jalan Dr. Warsito No. 72 ', '(0721) 482359', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT087', 'POLDA LAMPUNG', 'Jalan Dr. Warsito No. 1 ', '-', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT088', 'BADAN PERTANAHAN NASIONAL (BPN) PROVINSI LAMPUNG', 'Jalan Basuki Rahmat', '(0721) 486571, 486219', 'Teluk Betung', 'Bandarlampung', '0', 'Silvi'),
('PT089', 'BADAN PUSAT STATISTIK PROVINSI LAMPUNG', 'Jalan Basuki Rahmat No. 54', '(0721) 482909', 'Teluk Betung', 'Bandarlampung', '0', 'Yepi'),
('PT090', 'BPKP PERWAKILAN PROVINSI LAMPUNG', 'Jalan Basuki Rahmat No. 33 ', '(0721) 483129', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT091', 'DINAS SOSIAL PROVINSI LAMPUNG', 'Jalan Basuki Rahmat No. 72 ', '(0721) 481600', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT092', 'DPRD KOTA BANDAR LAMPUNG', 'Jalan Basuki Rahmat No. 21 ', '(0721) 475293', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT093', 'DINAS PERTAMBANGAN DAN ENERGI PROVINSI LAMPUNG', 'Jalan Basuki Rahmat Gg. Beringin II No. 12', '(0721) 486889', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT094', 'DIREKTORAT JENDERAL PAJAK KANTOR PELAYANAN PAJAK PRATAMA', 'Jalan P. Emir M. Noer No. 5A', '(0721) 485673', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT095', 'KANWIL DJP BENGKULU DAN LAMPUNG BIDANG P2 HUMAS', 'Jalan P. Emir M. Noer No. 5A', '-', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT096', 'PENGADILAN TATA USAHA NEGARA', 'Jalan P. Emir M. Noer No. 27 Durian Payung', '(0721) 258325, 258320', 'Teluk Betung', 'Bandarlampung', '0', 'Silvi'),
('PT550', 'PT BANK CENTRAL ASIA.TBK.', 'Jalan Yos Sudarso No 100', '0721-486205', 'Teluk Betung', 'Bandarlampung', '35225', 'Ayu'),
('PT098', 'PT ADI SARANA ARMADA TBK. (ASSA CAR RENTAL)', 'Jalan P. Emir M. Noer No. 57', '-', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT099', 'PT ADITYA SARANA GRAHA', 'Jalan P. Emir M. Noer Blok B No. 11', '-', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT100', 'BANK BRI CABANG TELUK BETUNG', 'Jalan Laksamana Malahayati No. 78', '(0721) 471425', 'Teluk Betung', 'Bandarlampung', '0', 'Silvi'),
('PT101', 'PT AXA FINANCIAL', 'Jalan Laks. Malahayati No. 30 ', '-', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT102', 'PT PHILIA CITRA SEJAHTERA', 'Jalan Cumi-cumi No. 12  ', '-', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT103', 'PT LAUTAN TEDUH INTERNIAGA', 'Jalan Ikan Tenggiri No. 24 ', '(0721) 482181', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT104', 'PT SINAR MAS MULTIFINANCE', 'Jalan Ikan Hiu No. 3 ', '-', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT105', 'CV KRAKATAU LESTARI', 'Jalan Dr. Cipto Mangunkusumo No. 37', '(0721) 484678', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT106', 'UD DWI SUSANTI', 'Jalan RE. Martadinata Gg. Pekonlam No. 21', '08137986400/082183162752', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT107', 'POLDA LAMPUNG', 'Jalan Wr. Supratman No. 1 ', '-', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT108', 'BALAI BESAR BUDIDAYA PERIKANAN LAUT LAMPUNG', 'Jalan Yos Sudarso Desa Hanura ', '(0721) 4001379', 'Padang Cermin', 'Pesawaran', '0', 'admin'),
('PT109', 'PT POS INDONESIA (PERSERO) KCP HANURA', 'Jalan Raya Way Rantai Hanura ', '-', 'Padang Cermin', 'Pesawaran', '0', 'admin'),
('PT110', 'PT PRABU TIRTA JAYA LESTARI', 'Jalan W.A. Rahman No. 21 ', '(0721) 7475535, 08877198989', 'Teluk Betung', 'Bandarlampung', '0', 'admin'),
('PT111', 'RUMAH SAKIT DKT', 'Jalan Dr. Rifai No. 7 ', '-', 'Penengahan ', 'Bandarlampung', '0', 'admin'),
('PT112', 'UPTD BALAI LABORATURIUM PROVINSI LAMPUNG', 'Jalan Dr. Samratulangi No. 103 ', '(0721) 701455, 702147', 'Penengahan ', 'Bandarlampung', '0', 'admin'),
('PT113', 'PT NEURAL TECHNOLOGIES INDONESIA', 'Jalan Dr. Rivai No. 6 ', '-', 'Penengahan ', 'Bandarlampung', '0', 'admin'),
('PT114', 'PALANG MERAH INDONESIA PROVINSI LAMPUNG', 'Jalan Dr. Samratulangi No. 105 Penengahan Bandar Lampung', '(0721) 703020', 'Penengahan', 'Bandarlampung', '0', 'Yepi'),
('PT115', 'AJB BUMI PUTRA 1912 CABANG TANJUNG KARANG', 'Jalan Raden Intan No. 95', '(0721) 25877', 'Tanjung Karang', 'Bandarlampung', '0', 'Silvi'),
('PT116', 'HOTEL GRAND ANUGERAH ', 'Jalan Raden Intan No. 132 ', '(0721) 266999', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT117', 'KANWIL DJKN LAMPUNG DAN BENGKULU', 'Jalan Raden Intan No. 121 ', '-', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT118', 'PT ASTRA INTERNASIONAL TBK.', 'Jalan Raden Intan No. 61 A', '(0721) 252000', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT119', 'PT ASURANSI JIWASRAYA (PERSERO)', 'Jalan Raden Intan No. 67 ', '(0721) 252279', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT120', 'PT TUNAS DWIPA MATRA', 'Jalan Raden Intan No. 65 ', '(0721) 261446', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT121', 'FAMILY COMPUTER & NOTEBOOK', 'Mall Simpur Center Lt. 3 Jalan Jendral Suprapto No 54', '(0721) 7184511', 'Tanjung Karang', 'Bandarlampung', '0', 'Kiki'),
('PT122', 'PT TIGA SATU CYBER NETWORK', 'Jalan Brigjen Katamso   ', '(0721) 7327775', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT123', 'DE GREEN CITY HOTEL ', 'Jalan Let. Jend. Suprapto No. 19', '(0721) 260006', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT124', 'BUKIT RANDU HOTEL & RESTORAN', 'Jalan Kamboja No. 42036 A', '(0721) 241333', 'Kebun Jeruk', 'Bandarlampung', '0', 'admin'),
('PT125', 'PT PESONA PUTRA PERKASA', 'Jalan M.H. Thamrin No. 74A Gotong Royong', '-', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT126', 'PT RINDANG TIGASATUPRATAMA', 'Jalan Nusa Indah I No. 2 Gotong Royong', '(0721) 252506', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT127', 'POLRESTA BANDARLAMPUNG', 'Jalan MT. Haryono No. 15 ', '-', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT128', 'LEMBAGA BAHASA INGGRIS BANDAR LAMPUNG', 'Jalan RA. Kartini No. 40 ', '-', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT129', 'PT ANDALAS CITRA INDOTAMA (CITRA KREDIT)', 'Jalan R.A. Kartini No. 4A Palapa', '(0721) 262592', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT130', 'UPT SANGGAR KEGIATAN BELAJAR LAMPUNG', 'Jalan R.A. Kartini Gg. Duane No. 2', '(0721) 252759', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT131', 'AJB BUMI PUTERA 1912 SYARIAH', 'Jalan P. Emir M. Nur Blok A No. 2', '-', 'Palapa ', 'Bandarlampung', '0', 'admin'),
('PT132', 'JNE CABANG BANDARLAMPUNG', 'Jalan Tamin No. 29  ', '(0721) 7913982', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT133', 'NOTARIS FAHRUL ROZI, S.H.', 'Jalan Sisingamangaraja No. 261  ', '-', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT134', 'PT MANDA DEBBY CYBER', 'Jalan Sisingamangaraja No. 40 Kelurahan Sukajawa', '(0721) 5600502', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT135', 'KECAMATAN KEMILING', 'Jalan Teuku Cik Ditiro No. 1', '(0721) 273188', 'Kemiling ', 'Bandarlampung', '0', 'admin'),
('PT136', 'SEKOLAH POLISI NEGARA KEMILING', 'Jalan Nada Lestari Wana Asri', '-', 'Kemiling', 'Bandarlampung', '0', 'Yepi'),
('PT137', 'CV TITIPAN KILAT (TIKI)', 'Jalan Nusantara No. 2  ', '(0721) 774336', 'Wayhalim ', 'Bandarlampung', '0', 'admin'),
('PT138', 'RADAR TV', 'Jalan Sultan Agung No. 18 ', '(0721) 785666', 'Wayhalim ', 'Bandarlampung', '0', 'admin'),
('PT139', 'PT TIGA SERANGKAI INTERNATIONAL', 'Jalan Sultan Agung No. 44 ', '(0721) 772068', 'Wayhalim ', 'Bandarlampung', '0', 'admin'),
('PT773', 'INDOMOBIL NISSAN DATSUN LAMPUNG', 'Jalan Z.A. Pagaralam No. 6 Labuhan Ratu', '', 'Kedaton', 'Bandarlampung', '', 'Silvi'),
('PT141', 'PT CIOMAS ADISATWA \n', 'Jalan Sultan Agung Kompleks Office Park', '-', 'Wayhalim ', 'Bandarlampung', '0', 'admin'),
('PT142', 'KANTOR KECAMATAN WAY HALIM', 'Jalan Griya Utama No. 3 ', '-', 'Way Halim', 'Bandarlampung', '0', 'admin'),
('PT143', 'CV TEGAR JAYA', 'Jalan Sultan Haji Gang Batin Ulangan 3 No. 47', '-', 'Kota Sepang', 'Bandarlampung', '0', 'admin'),
('PT144', 'CV WIRAJASA MULTI TEKNIK', 'Jalan Pajajaran No. 151  ', '-', 'Wayhalim ', 'Bandarlampung', '0', 'admin'),
('PT145', 'PT SARANA MAJU SENTOSA', 'Jalan Alam Flora Blok D6 No. 5', '(0721) 704271', 'Wayhalim ', 'Bandarlampung', '0', 'admin'),
('PT146', 'PT SINAR SOSRO', 'Jalan Soekarno Hatta Labuhan Dalam (By Pass)', '(0721) 782222, 705555', 'Tanjung Senang ', 'Bandarlampung', '0', 'admin'),
('PT147', 'PT YOBEL IRENE MEDIA', 'Jalan Turi Raya Gg. Perintis ', '(0721) 773331', 'Tanjung Senang', 'Bandarlampung', '0', 'admin'),
('PT148', 'CV PENAMAS', 'Jalan Soekarno Hatta No. 298 B', '(0721) 771919', 'Tanjung Senang', 'Bandarlampung', '0', 'admin'),
('PT149', 'CV MITRA PERSADA MAS', 'Jalan Soekarno Hatta No. 2 ', '(0721) 707241', 'Wayhalim ', 'Bandarlampung', '0', 'admin'),
('PT150', 'JNE EXPRESS ACROSS NATIONS ', 'Jalan Terusan Ratu Dibalau  ', '085266479864', 'Jatimulyo ', 'Lampung Selatan', '0', 'admin'),
('PT151', 'KOPERASI KARYAWAN RUWA JURAI PTPN VII', 'Jalan Teuku Umar No. 300 ', '(0721) 702233, 787023', 'Kedaton ', 'Bandarlampung', '0', 'admin'),
('PT152', 'PT PERKEBUNAN NUSANTARA VII (PERSERO)', 'Jalan Teuku Umar No. 300', '(0721) 702233', 'Kedaton', 'Bandarlampung', '0', 'Silvi'),
('PT153', 'BANK MANDIRI SYARIAH KCP KEDATON \n', 'Jalan Teuku Umar No. 34B ', '(0721) 789600', 'Kedaton ', 'Bandarlampung', '0', 'admin'),
('PT562', 'BALAI DESA MEKAR KARYA', 'Jalan Merdeka No 1', '', 'Waway RAYA', 'Lampung Timur', '', 'Ayu'),
('PT155', 'PT FEDERAL INTERNATIONAL FINANCE', 'Jalan Teuku Umar No. 67', '(0721) 773355', 'Kedaton', 'Bandarlampung', '0', 'Yepi'),
('PT156', 'PT JAMKRINDO (JAMINAN KREDIT INDONESIA)', 'Jalan Teuku Umar No. 10 E-F', '(0721) 778511', 'Kedaton', 'Bandarlampung', '', 'Silvi'),
('PT157', 'PT KERETA API INDONESIA (PERSERO)', 'Jalan Teuku Umar No. 23 ', '(0721) 263142', 'Kedaton ', 'Bandarlampung', '0', 'admin'),
('PT158', 'PT SIMPUR MOTOR LESTARI CABANG TVS KEDATON', 'Jalan Teuku Umar No. 16A ', '(0721) 781641', 'Kedaton ', 'Bandarlampung', '0', 'admin'),
('PT159', 'GRIYA COMPUTER', 'Jalan Teuku Umar No. 55 ', '(0721) 780974, 705660', 'Tanjung Karang', 'Bandarlampung', '0', 'admin'),
('PT160', 'PT TRIMBA ENGINEERING', 'Jalan Mangga Pasar Gintung Tanjung Karang Pusat Bandarlampung', '-', 'Tanjung Karang Pusat', 'Bandarlampung', '0', 'Yepi'),
('PT161', 'RUMAH SAKIT ADVENT', 'Jalan Teuku Umar No. 48 ', '(0721) 703459', 'Kedaton ', 'Bandarlampung', '0', 'admin'),
('PT162', 'PERUM PEGADAIAN CABANG KEDATON\n', 'Jalan Teuku Umar No. 19 ', '(0721) 707334', 'Kedaton ', 'Bandarlampung', '0', 'admin'),
('PT163', 'PT CITRA KEDATON ABADI\n', 'Jalan Teuku Umar No. 95 ', '(0721) 786555', 'Kedaton ', 'Bandarlampung', '0', 'admin'),
('PT164', 'PT BUNDA ASRI LESTARI', 'Jalan Teuku Umar No. 90 C', '-', 'Kedaton ', 'Bandarlampung', '0', 'admin'),
('PT165', 'PT BOSINDO CAHAYA ANUGERAH', 'Jalan ZA. Pagaralam Gang PU No. 88BB', '(0721) 785330', 'Segala Mider', 'Bandarlampung', '0', 'admin'),
('PT166', 'DINAS PETERNAKAN & KESEHATAN HEWAN', 'Jalan Z.A. Pagaralam No. 2 ', '(0721) 702189, 701055', 'Labuhan Ratu', 'Bandarlampung', '0', 'admin'),
('PT167', 'BALAI PENGKAJIAN TEKNOLOGI PERTANIAN LAMPUNG', 'Jalan Z.A. Pagaralam No. 1A', '(0721) 780660, 701354', 'Rajabasa', 'Bandarlampung', '0', 'Kiki'),
('PT168', 'PUSKOPDIT CARAKA UTAMA LAMPUNG', 'Jalan Z.A. Pagar Alam Komplek No. 47', '(0721) 789351', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT169', 'BALAI KONSERVASI SDA LAMPUNG', 'Jalan Z.A. Pagar Alam No.1B ', '(0721) 703882', 'Kedaton ', 'Bandarlampung', '0', 'admin'),
('PT170', 'AJB BUMI PUTRA 112 CABANG KEDATON', 'Jalan Z.A Pagar Alam No.23D ', '-', 'Kedaton ', 'Bandarlampung', '0', 'admin'),
('PT171', 'SMK NEGERI 2 BANDAR LAMPUNG', 'Jalan Prof. Dr. Soemantri Brojonegoro', '0721 701966', 'Gedung Meneng', 'Bandarlampung', '0', 'admin'),
('PT172', 'UNIVERSITAS LAMPUNG', 'Jalan Prof. Dr. Soemantri Brojonegoro No. 1', '(0721) 701609, 702673', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT173', 'BIDANG KONSULTASI DAN BANTUAN HUKUM (BKBH) FAKULTAS HUKUM UNILA', 'Jalan Prof. Dr. Soemantri Brojonegoro ', '(0721) 780958', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT174', 'PT POS INDONESIA KANTOR POS UNILA', 'Jalan Prof. Dr. Soemantri Brojonegoro ', '(0721) 253014', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT175', 'DINAS BINA MARGA PROVINSI LAMPUNG', 'Jalan Z.A Pagar Alam KM. 11', '(0721) 702684', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT176', 'BPJS KESEHATAN', 'Jalan Z.A. Pagar Alam No. 35', '(0721) 700444', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT177', 'PT PLN (PERSERO) DISTRIBUSI LAMPUNG', 'Jalan ZA. Pagaralam No. 5 Rajabasa', '(0721) 774868', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT178', 'DINAS PERTANIAN TANAMAN PANGAN DAN HORTIKULTURA PROVINSI LAMPUNG', 'Jalan ZA. Pagaralam No. 1 Rajabasa', '(0721) 780660, 701354', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT179', 'UPTD BALAI LATIHAN KERJA (BLK)', 'Jalan Pagar Alam No. 127 ', '(0721) 701366', 'Kedaton ', 'Bandarlampung', '0', 'admin'),
('PT180', 'PT IRTANAZ OBC', 'Jalan Untung Suropati No. 25 ', '(0721) 8013561, 082183483636', 'Labuhan Ratu', 'Bandarlampung', '0', 'admin'),
('PT181', 'PT MITRA MAKMUR SEJATI UTAMA LOGISTIC ', 'Jalan Untung Suropati No. 205 ', '(0721) 269803, 082880294557 ', 'Kedaton ', 'Bandarlampung', '0', 'admin'),
('PT182', 'BALAI PELATIHAN PERTANIAN LAMPUNG', 'Jalan Raden Gunawan Hajimena, Kotak Pos 8', '(0721) 703570', 'Rajabasa', 'Bandarlampung', '0', 'Tyas'),
('PT183', 'PT PLN (PERSERO) SEKTOR PEMBANGKITAN BANDARLAMPUNG', 'Jalan Raden Gunawan II No. 4', '(0721) 704385', 'Pramuka Rajabasa', 'Bandarlampung', '0', 'admin'),
('PT184', 'RUMAH SAKIT BHAYANGKARA', 'Jalan Pramuka No. 88  ', '(0721) 706402', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT185', 'DIREKTORAT LALU LINTAS POLDA LAMPUNG', 'Jalan Pramuka No. 21', '-', 'Rajabasa', 'Bandarlampung', '0', 'Silvi'),
('PT186', 'UNIVERSITAS MALAHAYATI', 'Jalan Pramuka No. 27  ', '(0721) 271112', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT187', 'UPTD BALAI PELATIHAN KESEHATAN PROVINSI LAMPUNG', 'Jalan Soekarno-Hatta No. 7  ', '(0721) 787277', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT188', 'PUSPA WISATA (PUSPA GRUP)', 'Jalan Soekarno Hatta No. 3 ', '(0721) 783111, 783272', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT189', 'BALAI RISET DAN STANDARISASI INDUSTRI', 'Jalan Soekarno-Hatta Km. 1  ', '(0721) 706353', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT190', 'PT MASA KINI MANDIRI LAMPUNG POST', 'Jalan Soekarno Hatta 108  ', '(0721) 783693', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT191', 'PT ROXY PRAMESWARI TBK', 'Jalan Soekarno Hatta No. 8 ', '-', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT192', 'PERUM DAMRI', 'Jalan Kapt. Abdul Haq No. 28', '(0721) 703241', 'Rajabasa ', 'Bandarlampung', '0', 'admin'),
('PT193', 'PT LIONEL ARIKANOMI KONSTRUKSI', 'Jalan Ratu Dibalau No. 10 ', '-', 'Tanjung Senang', 'Bandarlampung', '0', 'admin'),
('PT194', 'WEEKEND CORP', 'Jalan Ratu Dibalau No. 164 ', '-', 'Tanjung Senang', 'Bandarlampung', '0', 'admin'),
('PT195', 'BADAN PENDIDIKAN DAN LATIHAN DAERAH PROVINSI LAMPUNG', 'Jalan Raya Hajimena   ', '(0721) 774279', 'Natar ', 'Lampung Selatan', '0', 'admin'),
('PT196', 'DEPOT JAMU CAK UMAR', 'Jalan Branti Raya No. 662 A', '-', 'Natar ', 'Lampung Selatan', '0', 'admin'),
('PT197', 'KANTOR PELAYANAN PAJAK PRATAMA NATAR', 'Jalan Raya Candimas KM. 24,5 ', '(0721) 91581', 'Natar ', 'Lampung Selatan', '0', 'admin'),
('PT198', 'PD CITRA TRADIA FOOD ', 'Jalan Raya Srimulyo No. 12 ', '081215318999', 'Natar ', 'Lampung Selatan', '0', 'admin'),
('PT199', 'PT ALTRAK 1978', 'Jalan Raya Natar Pemanggilan No. 78', '(0721) 789976, 789978, 774288', 'Natar ', 'Lampung Selatan', '0', 'admin'),
('PT200', 'PT ARISTA AUTO PRIMA', 'Jalan Raya Hajimena No. 40 ', '(0721) 8011212', 'Natar ', 'Lampung Selatan', '0', 'admin'),
('PT201', 'PT AUTO 2000', 'Jalan Raya Haji Mena No. 2000', '(0721) 782000', 'Natar ', 'Lampung Selatan', '0', 'admin'),
('PT202', 'PT BUKIT ASAM (PERSERO) TBK. UNIT PENGUSAHAAN BRIKET  ', 'Jalan Raya Natar Km. 16 No. 39 Desa Pemanggilan', '(0721) 783558', 'Natar ', 'Lampung Selatan', '0', 'admin'),
('PT203', 'PT KONVERTA MITRA ABADI', 'Jalan Lintas Sumetra KM 29 No. 178 Desa Banjar Negeri', '(0721) 7696056, 7696058', 'Natar ', 'Lampung Selatan', '0', 'admin'),
('PT204', 'PT ANDALL HASA PRIMA\n', 'Jalan Raya Hajimena No. 6 ', '(0721) 784985', 'Natar ', 'Lampung Selatan', '0', 'admin'),
('PT205', 'PT PERKEBUNAN NUSANTARA VII (PERSERO) UNIT USAHA REJOSARI', 'Jalan Raya No. 71 A Pewa Kebun', '(0725) 7400027', 'Rejosari', 'Lampung Selatan', '0', 'Silvi'),
('PT206', 'BANDAR UDARA RADEN INTAN II', 'Jalan H. Alamsyah Ratu Prawiranegara Km. 28', '(0721) 7697115', 'Branti ', 'Lampung Selatan', '0', 'admin'),
('PT207', 'KANTOR UPBU RADIN INTEN II LAMPUNG', 'Jalan H. Alamsyah Ratu Prawiranegara Km. 29', '-', 'Branti ', 'Lampung Selatan', '0', 'admin'),
('PT208', 'PT SRIWIJAYA AIR', 'JL. JENDRAL SUDIRMAN NO. 5 BANDAR LAMPUNG', '(0721) 268318', '', '', '0', 'Yepi'),
('PT209', 'CV SUMBER MULIA BERKAH ABADI', 'Jalan Mangga No. 53  ', '(0721) 8020139, 081279618118 ', 'Tanjung Bintang', 'Lampung Selatan', '0', 'admin'),
('PT210', 'MTS AL-IKHLAS ', 'Jalan Veteran Jatibaru No. 6 ', '-', 'Tanjung Bintang', 'Lampung Selatan', '0', 'admin'),
('PT211', 'PT INDOKOM CITRA PERSADA', 'Jalan Ir. Sutami KM. 9 ', '-', 'Tanjung Bintang', 'Lampung Selatan', '0', 'admin'),
('PT212', 'PT TRITEGUH MANUNGGAL SEJATI', 'Jalan Ir. Sutami Km. 12 ', '-', 'Tanjung Bintang', 'Lampung Selatan', '0', 'admin'),
('PT213', 'UPT BPML LIPI LAMPUNG ', 'Jalan Ir Sutami Km.15  ', '(0721) 350055', 'Tanjung Bintang', 'Lampung Selatan', '0', 'admin'),
('PT214', 'PT SRIWIJAYA PANGANINDO PRIMA LESTARI\n', 'Jalan Ir. Sutami Km. 15 Desa Sindang Sari ', '(0721) 350700', 'Tanjung Bintang', 'Lampung Selatan', '0', 'admin'),
('PT215', 'PT CENTRAL PERTIWI BAHARI', 'Jalan Ir. Sutami KM 16 Sindangsari', '0721 351310', 'Tanjung Bintang', 'Lampung Selatan', '0', 'Silvi'),
('PT216', 'PT COCA COLA BOTTLING INDONESIA', 'Jalan Raya Panjang Sribawono Km. 13,5', '-', 'Tanjung Bintang', 'Lampung Selatan', '0', 'admin'),
('PT217', 'PT PERKEBUNAN NUSANTARA VII (PERSERO) UNIT USAHA BERGEN', 'Jalan Ir. Sutami Desa Kertosari Kec.', '(0721) 7558808', 'Tanjung Sari', 'Lampung Selatan', '0', 'admin'),
('PT218', 'PT JAYA CITRA NUSANTARA', 'Jalan Ir. Sutami No. 7 ', '-', 'Way Laga ', 'Bandarlampung', '0', 'admin'),
('PT219', 'PT PERKEBUNAN NUSANTARA VII (PERSERO) UNIT KEDATON', 'Desa Way Galih Kecamatan', '(0721) 707775, 707353', 'Tanjung Bintang', 'Lampung Selatan', '0', 'Silvi'),
('PT220', 'UPK KECAMATAN TANJUNG BINTANG', 'Jalan Raya Serdang Kec.  ', '-', 'Tanjung Bintang', 'Lampung Selatan', '0', 'admin'),
('PT221', 'PENGELOLA KEGIATAN UPK-PNPM MPDTANJUNG BINTANG', 'Jalan Raya Serdang IV A ', '081274642233', 'Tanjung Bintang', 'Lampung Selatan', '0', 'admin'),
('PT222', 'CV DEKSINDO INSPEKTAMA LAMPUNG', 'Jalan Hi. Agus Salim No. 87', '-', 'Waylunik Panjang', 'Bandarlampung', '0', 'admin'),
('PT223', 'PT LAUTAN UTAMA BERLIAN MOTOR', 'Jalan Hi. Agus Salim No. 29', '(0721) 341111', 'Waylunik Panjang', 'Bandarlampung', '0', 'admin'),
('PT224', 'CV BUMI WARAS', 'Jalan Laks. Yos Sudarso No. 29', '(0721) 31243', 'Waylunik Panjang', 'Bandarlampung', '0', 'admin'),
('PT225', 'PT SEMEN BATU RAJA (PERSERO) TBK', 'Jalan Yos Sudarso KM. 7 ', '(0721) 31718', 'Panjang ', 'Bandarlampung', '0', 'admin'),
('PT226', 'PT DUTA NUSANTARA TERPADU', 'Jalan Teluk Ambon No. 20 B', '(0721) 341269, 32555, 3680555', 'Pidada Panjang', 'Bandarlampung', '0', 'admin'),
('PT957', 'PT PERSADA LAMPUNG RAYA', 'JALAN RAYA NATAR KM. 14', '', '', 'lampung selatan', '', 'Yepi'),
('PT958', 'PT PGAS TELEKOMUNIKASI NUSANTARA', 'Jalan Sam Ratulangi No. 17', '', '', 'tanjung karang', '', 'Yepi'),
('PT228', 'PT TRIO KENCANA ABADI', 'Jalan Yos Sudarso No. 180 ', '(0721) 31256, 33300', 'Panjang ', 'Bandarlampung', '0', 'admin'),
('PT229', 'PT PELABUHAN INDONESIA II (PERSERO) CABANG PANJANG', 'Jalan Yos Sudarso No. 337 ', '(0721) 31146, 31149', 'Panjang ', 'Bandarlampung', '0', 'admin'),
('PT230', 'DIREKTORAT JENDERAL BEA CUKAI\n\n', 'Jalan Yos Sudarso   ', '(0721) 342358', 'Pelabuhan Panjang', 'Bandarlampung', '0', 'admin'),
('PT231', 'KOPERASI TENAGA KERJA BONGKAR MUAT (TKBM) PELABUHAN PANJANG', 'Jalan Yos Sudarso Km.7  ', '(0721) 31474, 33104', 'Panjang ', 'Bandarlampung', '0', 'admin'),
('PT232', 'PT PERTAMINA (PERSERO)', 'Jalan Sumatra No. 01B  ', '(0721) 31207', 'Pelabuhan Panjang', 'Bandarlampung', '0', 'admin'),
('PT233', 'PT PERTAMINA PATRA NIAGA', 'Jalan Sumatra No. 143  ', '-', 'Pelabuhan Panjang', 'Bandarlampung', '0', 'admin'),
('PT234', 'PT HANJUNG INDONESIA', 'Jalan Raya Soekarno Hatta Km 11,5', '-', 'Srengsem Panjang', 'Bandarlampung', '0', 'admin'),
('PT235', 'PT BUKIT ASAM (PERSERO) TBK. UNIT PELABUHAN TARAHAN', 'Jalan Soekarno Hatta Km. 15 ', '(0721) 31545', 'Tarahan ', 'Bandarlampung', '0', 'admin'),
('PT236', 'PT DAYA RADAR UTAMA  ', 'Jalan Raya Soekarno Hatta Km. 15', '(0721) 31132', 'Srengsem Panjang', 'Bandarlampung', '0', 'admin'),
('PT237', 'PT JUANG JAYA ABADI ALAM ', 'Jalan Raya Trans Sumatera Km. 40', '(0721) 7693061', 'Sidomulyo ', 'Lampung Selatan', '0', 'admin'),
('PT238', 'PT PLN (PERSERO) SEKTOR PEMBANGKITAN TARAHAN', 'Jalan Lintas Sumatera KM. 15 ', '(0721) 341815, 341816', 'Tarahan ', 'Lampung Selatan', '0', 'admin'),
('PT239', 'PT SORENTO NUSANTARA', 'Jalan Raya Bakauheni Km. 20 ', '(0721) 33325, 341654', 'Tarahan ', 'Lampung Selatan', '0', 'admin'),
('PT240', 'PT SWI JETTY NUSANTARA', 'Jalan Soekarno Hatta KM. 18 Tri Tunggal', '-', 'Katibung ', 'Lampung Selatan', '0', 'admin'),
('PT241', 'PT SUMBER INDAH PERKASA', 'Jalan Raya Tarahan Bakauheni Km. 17 Dusun Sukamaju Desa Rangai', '(0721) 341779', 'Tritunggal ', 'Lampung Selatan', '0', 'admin'),
('PT242', 'KANTOR SATPOL PP KABUPATEN LAMPUNG SELATAN', 'Jalan Mustafa Kemal No. 26 Kalianda', '(0727) 322144', 'Kalianda ', 'Lampung Selatan', '0', 'admin'),
('PT243', 'PT SUGAR LABINTA', 'Jalan Dadirejo No. 45 Desa Malang Sari', '082880191112 - 116', 'Tanjung Sari ', 'Lampung Selatan', '0', 'admin'),
('PT244', 'SMK DEWANTARA CANDIPURO', 'Jalan Raya Sidoluhur Candipuro Sidoasri Candipuro', '-', 'Candipuro ', 'Lampung Selatan', '0', 'admin'),
('PT245', 'PT PLN (PERSERO) DISTRIBUSI LAMPUNG AREA METRO', 'Jalan Alamsyah Ratu Prawiranegara No. 99', '(0725) 45699', 'Kauman ', 'Metro', '0', 'admin'),
('PT246', 'TOKO OBAT WIRA JAYA ', 'Jalan Soekarno Hatta 16B Metro ', '085783990921', 'Metro ', 'Metro', '0', 'admin'),
('PT247', 'PT TELEKOMUNIKASI INDONESIA, TBK.', 'Jalan Tulang Bawang No. 12', '-', 'Metro', 'Metro', '0', 'Kiki'),
('PT248', 'KANTOR BPJS  CABANG METRO', 'Jalan AH. Nasution No. 123 D', '(0725) 45276', 'Metro ', 'Metro', '0', 'admin'),
('PT249', 'AHASS BHINEKA MOTOR METRO', 'Jalan Jendaral Sudirman No. 747 ', '(0725) 7850000', 'Metro Pusat ', 'Kota Metro', '0', 'admin'),
('PT250', 'BPJS KABUPATEN PESAWARAN\n', 'Jalan Jend. Ahmad Yani  Gedong', '082280022161', 'Gedong Tataan', 'Pesawaran', '0', 'admin'),
('PT251', 'KLINIK RAWAT INAP RIDHO HUSADA PESAWARAN', 'Jalan Sendang No. 91 Desa Bagelen', '(0721) 944365/085769906999', 'Gedong Tataan', 'Pesawaran', '0', 'Silvi'),
('PT252', 'DINAS KOMUNIKASI DAN INFORMATIKA PESAWARAN', 'Jalan Raya Kedondong Binong Desa Way Layap', '-', 'Gedong Tataan', 'Pesawaran', '0', 'admin'),
('PT253', 'PT PERKEBUNAN NUSANTARA VII (PERSERO) UNIT USAHA WAY BERULU', 'Desa Kebagusan', '(0721) 94537, 081379609423', 'Gedong Tataan', 'Pesawaran', '0', 'Silvi'),
('PT254', 'PT SO GOOD FOOD', 'Jalan Raya Negeri Sakti KM. 12', '(0721) 895636', 'Gedong Tataan', 'Pesawaran', '0', 'admin'),
('PT255', 'KECAMATAN TEGINENENG', 'Jalan Sutan Sakti No. 17 Desa Trimulyo', '-', 'Tegineneng ', 'Pesawaran', '0', 'admin'),
('PT256', 'KOPERASI KREDIT UBEKA ALB GENTIARAS', 'Jalan Kesehatan No. 70 Pringsewu ', '(0729) 21704', 'Pringsewu ', 'Lampung Selatan', '0', 'admin'),
('PT257', 'BP3K', 'Jalan Desa Gemaripah Pagelaran Pringsewu ', '-', 'Pagelaran Pringsewu', 'Lampung Selatan', '0', 'admin'),
('PT258', 'BADAN PUSAT STATISTIK KABUPATEN PRINGSEWU', 'Jalan Jend. Ahmad Yani Sidoharjo Pringsewu', '(0729) 333237', 'Pringsewu ', 'Lampung Selatan', '0', 'admin'),
('PT259', 'PLAZA TELKOM CABANG PRINGSEWU ', 'Jalan Jend. Sudirman Pringsewu  ', '-', 'Pringsewu ', 'Lampung Selatan', '0', 'admin'),
('PT260', 'BANK LAMPUNG CABANG PRINGSEWU', 'Jalan Jend. Ahmad Yani No. 12', '(0729) 21373, 21372', 'Pringsewu ', 'Lampung Selatan', '0', 'admin'),
('PT261', 'ADIRA FINANCE', 'Jalan Ahmad Yani No. 21-22 Pringsewu', '0729 21195', 'Pringsewu ', 'Lampung Selatan', '0', 'admin'),
('PT262', 'PT INDOALUMINIUM INTIKARSA INDUSTRI', 'Jalan Infeksi Raya Km 24 Cianda', '', 'Mekar Cibitung', 'Bekasi', '0', 'admin'),
('PT263', 'PT BUKIT BERLIAN', 'Jalan Sultan Iskandar Muda No. 8', '', 'Kebayoran Lama', 'Jakarta Selatan', '0', 'admin'),
('PT264', 'PT DAME ALAM SEJAHTERA', 'Jalan Raya Proklamasi Kaceot II Kecamatan', '', 'Kerawang Barat', 'Karawang', '0', 'admin'),
('PT265', 'PT SINTEK INDONESIA POWER', 'Jalan Bangau No. 6 TGI Sukajadi', '', 'Baturaja Sumatera', 'Selatan', '0', 'admin'),
('PT266', 'PT PERKEBUNAN NUSANTARA VII (PERSERO) UNIT USAHA TRIKORA', 'Jalan Trikora    ', '', 'Jati Agung', 'Lampung Selatan', '0', 'admin'),
('PT267', 'SMA NEGERI 1 JATI AGUNG', 'Jalan Raya Margomulyo   Agung', '', 'Jati Agung', 'Lampung Selatan', '0', 'admin'),
('PT268', 'PT BANK RAKYAT INDONESIA', 'Jalan Jendral Sudirman No. 400 Kotabumi', '', 'Kotabumi ', 'Lampung Utara', '0', 'admin'),
('PT269', 'DINAS PEKERJAAN UMUM, PERTAMBANGAN DAN ENERGI', 'Jalan Kusuma II/95 Pasar Krui ', '', 'Pesisir Barat', 'Lampung Barat', '0', 'admin'),
('PT270', 'KANTOR PELAYANAN PERBENDAHARAAN NEGARA LIWA', 'Jalan Raden Intan  Way Mengaku Liwa', '(0728) 21635', 'Way Mengaku Liwa', 'Lampung Barat', '0', 'Silvi'),
('PT271', 'PENGADILAN AGAMA KRUI', 'Jalan Mawar No. 10  ', '', 'Way Mengaku Liwa', 'Lampung Barat', '0', 'admin'),
('PT272', 'PT LAUTAN TEDUH CABANG SUMBER JAYA', 'Jalan Raya Lintas Liwa No. 69/70, Tugusari', '', 'Sumber Jaya', 'Lampung Barat', '0', 'admin'),
('PT273', 'SMK NEGERI 1 LIWA', 'Jalan KH. Ahmad Dahlan No. 142', '', 'Padang Dalom Balik Bukit', 'Lampung Barat', '0', 'admin'),
('PT274', 'LABANDO ELEKTRONIK ', 'Jalan Negara Yukum Jaya  ', '', 'Yukum Jaya', 'Lampung Tengah', '0', 'admin'),
('PT275', 'POLRES LAMPUNG TENGAH ', 'Jalan Raya Gunung Sugih No. 1', '', 'Gunung Sugih ', 'Lampung Tengah', '0', 'admin'),
('PT276', 'PT PERKEBUNAN NUSANTARA VII (PERSER) UNIT USAHA BEKRI', 'Jalan Raya Wates Dusun Sinar Banten', '', 'Bekri', 'Lampung Tengah', '0', 'Silvi'),
('PT277', 'BAITUL MAAL WATTAMWIL (BMT) MENTARI', 'Jalan Pasar Merapi  Seputih Mataram', '', 'Seputih Mataram', 'Lampung Tengah', '0', 'admin'),
('PT278', 'CV BANK TATA ARTA', 'Jalan Raya Pasar Baru Rumbia ', '', 'Rumbia ', 'Lampung Tengah', '0', 'admin'),
('PT279', 'ISTANA MOTOR II', 'Jalan Raya Pasar Mandala Banjar Agung', '', 'Seputih Mataram ', 'Lampung Tengah', '0', 'admin'),
('PT280', 'JNE BANDAR JAYA', 'Jalan Proklamator Bandarjaya   ', '', 'Bandarjaya ', 'Lampung Tengah', '0', 'admin'),
('PT281', 'KANTOR KECAMATAN SEPUTIH AGUNG', 'Jalan Raya Doro Arum  ', '', 'Seputih Agung ', 'Lampung Tengah', '0', 'admin'),
('PT282', 'KANTOR KECAMATAN SEPUTIH RAMAN', 'Jalan Raya Seputih Raman No. 132', '', 'Seputih Raman ', 'Lampung Tengah', '0', 'admin'),
('PT283', 'KOPERASI JASA KEUANGAN SYARIAH BMT SEPAKAT', 'Jalan Raya Sendang Agung  ', '', 'Sendang Agung ', 'Lampung Tengah', '0', 'admin'),
('PT284', 'KOPERASI JASA KEUANGAN SYARIAH BMT SURYA ABADI', 'Jalan Pasar Seputih Raman  ', '', 'Seputih Raman ', 'Lampung Tengah', '0', 'admin'),
('PT285', 'KOPERASI KREDIT BUNGA TANJUNG', 'TANJUNG MAS PAYUNG BATU', '', 'PUBIAN', 'LAMPUNG TENGAH', '0', 'Yepi'),
('PT286', 'KSP SAFANA SYARIAH', 'Jalan Jati Datar Bandar Mataram ', '', 'Bandar Mataram', 'Lampung Tengah', '0', 'admin'),
('PT287', 'PUSKESMAS WATES', 'Jalan Raya Lintas Sumatra Wates ', '-', 'Wates ', 'Lampung Tengah', '0', 'admin'),
('PT288', 'PT BANK RAKYAT INDONESIA (PERSERO) TBK BRI UNIT SEPUTIH BANYAK', 'Jalan Raya Tanjung Harapan  ', '', 'Seputih Banyak ', 'Lampung Tengah', '0', 'admin'),
('PT289', 'PT CHAPUTRA BUANA MADANI', 'Jalan Teratai    ', '', 'Bandarjaya Barat ', 'Lampung Tengah', '0', 'admin'),
('PT290', 'PT COCA COLA AMATIL INDONESIA DC BANDAR JAYA', 'Jalan Proklamator Raya No. 104 Seputih Jaya', '', 'Gunung Sugih ', 'Lampung Tengah', '0', 'admin'),
('PT291', 'PT SEJAHTERA HARMONI MOTOR', 'Jalan Raya Seputih Jaya Bandarjaya ', '', 'Bandarjaya ', 'Lampung Tengah', '0', 'admin'),
('PT292', 'SAUDARA MOTOR AHASS 1974', 'Jalan Raden Masa No. 5 Kurnia Mataram', '', 'Seputih Mataram ', 'Lampung Tengah', '0', 'admin'),
('PT293', 'SMK NEGERI 1 SEPUTIH AGUNG', 'Jalan Raya Dono Arum Seputih Agung', '', 'Seputih Agung', 'Lampung Tengah', '0', 'admin'),
('PT294', 'SMK NEGERI 2 TERBANGGI BESAR', 'Jalan Ahmad Yani No. 3 ', '', 'Terbanggi Besar ', 'Lampung Tengah', '0', 'admin'),
('PT295', 'KOPERASI SIMPAN PINJAM ARTHA JAYA   ', 'Jalan Raya Seputih Raman Simpang R1', '', 'Seputih Raman ', 'Lampung Tengah', '0', 'admin'),
('PT296', 'PT GREAT GIANT PINEAPPLE LAMPUNG', 'Jalan Raya Arah Menggala KM 77', '(0725) 7573001', 'Terbanggi Besar', 'Lampung Tengah', '0', 'Silvi'),
('PT297', 'PT BPR LABUHAN DANA SENTOSA', 'Jalan Raya Pasar Sribawono  ', '', 'Mataram Baru ', 'Lampung Timur', '0', 'admin'),
('PT298', 'PT TUNAS DWIPA MATRA CABANG SIDOREJO', 'Jalan Desa Sidorejo   ', '', 'Sekampung Udik ', 'Lampung Timur', '0', 'admin'),
('PT299', 'PT NUSANTARA TROPICAL FARM', 'Jalan Taman Nasional   ', '', 'Way Kambas ', 'Lampung Timur', '0', 'admin'),
('PT300', 'AJB BUMIPUTERA 1912 CABANG KOTABUMI\n', 'Jalan H. Alamsyah RPN 270 Kelapa 7', '', 'Kotabumi ', 'Lampung Utara', '0', 'admin'),
('PT301', 'BANK BRI CABANG KOTABUMI ', 'Jalan Jend. Sudirman No. 20 Kotabumi', '', 'Kotabumi ', 'Lampung Utara', '0', 'admin'),
('PT302', 'KANTOR PELAYANAN PAJAK PRATAMA KOTABUMI', 'Jalan Ahmad Akuan 337 Rejosari', '(0724) 21957', 'Kotabumi', 'Lampung Utara', '0', 'Silvi'),
('PT303', 'PT BPR EKA BUMI ARTHA CABANG KOTABUMI', 'Jalan Jendral Sudirman No. 11 ', '', 'Kotabumi ', 'Lampung Utara', '0', 'admin'),
('PT304', 'PT PERKEBUNAN NUSANTARA VII (PERSERO) UNIT USAHA BUNGA MAYANG', 'Desa Negara Tulang Bawang', '', 'Sungkai Selatan', 'Lampung Utara', '0', 'Silvi'),
('PT305', 'PT CENTRAL PERTIWI BAHARI', 'Jalan Poros  Dente Teladas ', '', 'Dente Teladas', 'Tulang Bawang', '0', 'admin'),
('PT306', 'PT TEGUH BAKTI WIBAWA PERSADA', 'Jalan Lintas Timur Unit 2 ', '', 'Lintas Timus ', 'Tulang Bawang', '0', 'admin'),
('PT307', 'RUMAH SAKIT PENAWAR MEDIKA', 'Jalan Lintas Timur   ', '', 'Lintas Timus Sumatera ', 'Tulang Bawang', '0', 'admin'),
('PT308', 'PT BUMI DIPA', 'Jalan Bumi Dipasena Rawajitu Timur', '085658872750', 'Rawajitu Timur', 'Tulang Bawang', '0', 'Silvi'),
('PT309', 'PT PEMUKASAKTI MANISINDAH', 'Desa Gunung Waras  Pakuan Ratu', '', 'Pakuan Ratu', 'Way Kanan', '0', 'admin'),
('PT310', 'DINAS PENDAPATAN, PENGELOLAAN KEUANGAN DAN ASET (DINAS P2KA)', 'Jalan Widana Alidukie No. 2 ', '', 'Blambangan Umpu ', 'Way Kanan', '0', 'admin'),
('PT311', 'DINAS TANAMAN PANGAN DAN HORTIKULTURA', 'Jalan Jend. A. Yani Komplek Perkantoran', '', 'Kota Agung', 'Tanggamus', '0', 'admin'),
('PT312', 'SMK MUHAMMADIYAH GISTING', 'Jalan Irigasi Gisting Bawah  ', '', 'Gisting ', 'Tanggamus', '0', 'admin'),
('PT313', 'PT TELEKOMUNIKASI INDONESIA, TBK.', 'Jalan Raden Intan No. 2', '', 'Talang Padang', 'Tanggamus', '0', 'Kiki'),
('PT314', 'KANTOR UNIT PENYELENGGARAAN PELABUHAN KELAS III KOTA AGUNG', 'Jalan Samudera    ', '', 'Kotaagung ', 'Tanggamus', '0', 'admin'),
('PT315', 'PT PERKEBUNAN NUSANTARA VII (PERSERO) PEKON TANGKIT SERDANG', 'Desa Pekon Tangkit Serdang', '', 'Pugung', 'Tanggamus', '0', 'Silvi'),
('PT316', 'POLSEK NATAR', 'Jl. Jendral Alamsyah Ratu Prawira Negara Natar 110', '0', 'Natar', 'Lampung Selatan', '0', 'Tyas'),
('PT317', 'PT LAMBANG JAYA', 'Jalan Raya Hajimena Km. 14 No. 165', '0721 703898', 'Natar', 'Lampung Selatan', '', 'Silvi'),
('PT318', 'DIREKTORAT LALU LINTAS', 'Jalan Pramuka No. 21', '0', 'Rajabasa', 'Bandarlampung', '0', 'Tyas'),
('PT319', 'CAFE CINEMA XXI', 'Jalan Sultan Agung No. 1 Cafe Boemi Kedaton Mall Lt. 3', '0721 80152584', 'Kedaton', 'bandarlampung', '351111', 'Tyas'),
('PT320', 'PT INTISEL PRODAKTIFAKOM', 'Jalan Arief Rahman Hakim Gg. Rahayu No. 55A', '0', 'Way Halim', 'Bandarlampung', '0', 'Tyas'),
('PT321', 'PT TELEKOMUNIKASI INDONESIA, TBK.', 'Jalan Sultan Agung', '', 'Way Halim', 'Bandarlampung', '', 'Kiki'),
('PT326', 'PT KAISAR AYUDIA ZYY', 'Jalan P. Tirtayasa No. 109', '0721 7627009', 'Sukabumi', 'bandarlampung', '', 'Tyas'),
('PT322', 'SURYA MAXIMA PHOTOGRAPHY', 'Jalan Purnawirawan No 56', '', 'Gedung Meneng', 'Bandarlampung', '0', 'Kiki'),
('PT323', 'PT BANK TABUNGAN PENSIUN NEGARA (PERSERO), TBK.', 'Jalan Jendral Sudirman No 88E', '', 'Pringsewu', 'Tanggamus', '0', 'Kiki'),
('PT324', 'PT TELEKOMUNIKASI INDONESIA, TBK.', 'Jalan R.A. Kartini No 1', '(0721) 261400', 'Tanjung Karang Pusat', 'Bandarlampung', '0', 'Yepi'),
('PT325', 'LP2M ARAY', 'Jalan Material No 17a Serengsengsawah', '', 'Jagakarsa', 'Jakarta Selatan', '', 'Kiki'),
('PT327', 'PT PEGADAIAN SYARIAH', 'Jalan Wolter Mongonsidi No. 6E', '0721 240886', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT328', 'KECAMATAN NATAR', 'Jalan Jend. Hi. Alamsyah Ratu Perwira No. 88 Merak Batin', '0721 91108', 'natar', 'lampung Selatan', '35362', 'Tyas'),
('PT329', 'KPRI RAGOM GAWI', 'Jalan Dr. Susilo No. 7', '0721 261542', 'Pahoman', 'bandarlampung', '', 'Tyas'),
('PT513', 'BADAN PUSAT STATISTIK PESAWARAN', 'Jalan Ahmad Yani No 119 Kutoarjo', '0721-94711', 'Gedong Tataan', 'Pesawaran', '35371', 'Ayu'),
('PT331', 'PT KARYA MANDIRI MULTI PERKASA', 'Jalan Pramuka No. 888Z', '0721 8011114', 'Raja Basa', 'Bandarlampung', '', 'Tyas'),
('PT332', 'KEMENTRIAN AGAMA KANTOR KOTA BANDARLAMPUNG', 'P. Emir M Noor No. 81', '0721 486922', 'Teluk Betung Utara', 'Bandarlampung', '', 'Tyas'),
('PT333', 'PT PLN DISTRIBUSI LAMPUNG AREA TANJUNGKARANG', 'Pangeran Diponegoro No. 14 Bandarlampung', '(0721) 261625', 'Tanjung Karang Pusat', 'bandarlampung', '', 'Ayu'),
('PT334', 'KANTOR PELAYANAN PAJAK PRATAMA TANJUNG KARANG', 'Dr. Susilo No. 19 Sumur Batu', '0721 261977', 'Teluk Betung Utara', 'Bandarlampung', '', 'Tyas'),
('PT335', 'CV BASIC COMPUTER', 'Jalan Teuku Umar No. 37 E', '0721 773589', 'Kedaton', 'Bandarlampung', '', 'Tyas'),
('PT336', 'DINAS KOMUNIKASI DAN INFORMATIKA PROVINSI LAMPUNG', 'Jalan Wolter Monginsidi No. 69', '0721 481107', 'Teluk Betung', 'Bandarlampung', '', 'Yepi'),
('PT337', 'ACER CUSTOMER SERVICE', 'Jalan Teuku Umar No. 157', '0721 705430', 'Kedaton', 'bandarlampung', '', 'Tyas'),
('PT338', 'DINAS KEHUTANAN PROVINSI LAMPUNG', 'Jalan Hi. Zainal Abidin Pagaralam', '0721 703177', 'Raja Basa', 'Bandarlampung', '', 'Tyas'),
('PT339', 'LAMPUNG EXPRESS PLUS', 'Jalan Urip Sumoharjo No 88', '0721-771613/7543088', 'Sukarame', 'Bandarlampung', '', 'Silvi'),
('PT340', 'PT MULTI MANDIRI MEGAH', 'Jalan Gatot Subroto Pandawa II No. 26 Garuntang', '0721 488046', 'TELUK Betung', 'Bandarlampung', '', 'Tyas'),
('PT341', 'PT SLARA NIAGA PRIMA', 'Jalan Perum Bumi Bahtera Indah Blok 04 No. 18 -19', '0721 785 281', 'Campang Raya', 'Bandarlampung', '', 'Tyas'),
('PT342', 'PT TRANS LOGISTIK UTAMA', 'Jalan Raya Panjang', '0721 342902', 'Panjang', 'Bandarlampung', '', 'Tyas'),
('PT343', 'CHAMPION BODY REPAIR', 'Jalan Kayu Manis No. 55', '', 'Way Halim', 'Bandarlampung', '', 'Tyas'),
('PT344', 'PERCETAKAN ABDY', 'Jalan  Manti II Gg. Sarni Kampung Baru', '', 'Raja Basa', 'Bandarlampung', '', 'Tyas'),
('PT345', 'KANTOR KECAMATAN TELUK BETUNG UTARA', 'Jalan Drs. Warsito No. 46', '', 'Teluk Betung Utara', 'Bandarlampung', '', 'Kiki'),
('PT346', 'KANTOR PELAYANAN PAJAK PRATAMA', 'Jalan Dr. No. 19 Sumur Batu', '0721 261977', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT347', 'RSUD ABDUL MOELOEK', 'Jalan Dr. Riva''i No. 6', '0721 703312', 'tanjung karang', 'Bandarlampung', '', 'Tyas'),
('PT348', 'KANTOR NOTARIS & PPAT', 'Jalan Tembusan Imam Bonjol No. 33', '', 'negeri sakti', 'pesawaran', '', 'Tyas'),
('PT349', 'BAHTERA MOTOR', 'Jalan Kartini No 15', '0721-268393', 'Tanjung Karang', 'Bandarlampung', '', 'Kiki'),
('PT350', 'PT THE NIELSEN COMPANY INDONESIA', 'Jalan Ratu Dibalau Perum Bumi Citra Blok B2', '082184047892', 'Tanjung Senang', 'Bandarlampung', '', 'Kiki'),
('PT351', 'KEDATON KOMPUTER', 'Jalan Teuku Umar No. 16 D', '0721 707324', 'Kedaton', 'Bandarlampung', '', 'Kiki'),
('PT352', 'DITLANTAS POLDA LAMPUNG', 'Jalan Pramuka No 21', '', 'Raja Basa', 'Bandarlampung', '', 'Kiki'),
('PT353', 'KOREM 043 GARUDA HITAM', 'Jalan Teuku Umar No. 84', '(0721) 702074', 'TANJUNG Karang', 'Bandarlampung', '', 'Yepi'),
('PT656', 'BANK LAMPUNG KANTOR CABANG PEMBANTU GEDONG TATAAN', 'Jalan Jend. Ahmad Yani', '(0721) 95219', 'Gedong Tataan', 'Pesawaran', '', 'Silvi'),
('PT355', 'BADAN PENGAWASAN KEUANGAN DAN PEMBANGUNAN PROVINSI LAMPUNG', 'Jalan Basuki Rahmat No. 33', '', 'Teluk Betung', 'Bandarlampung', '', 'Kiki'),
('PT356', 'PT MAHKOTA PANGAN CITRA RASA (HOLLAND BAKERY)', 'Jalan Raden Intan No. 120 B Cab. Mall Bomie Keaton  Lt. 1', '', 'Kedaton', 'Bandarlampung', '', 'Tyas'),
('PT357', 'PT PERDANA ADHI LESTARI', 'Jalan Soekarno Hatta No. 100', '', 'Sukabumi', 'Bandarlampung', '', 'Kiki'),
('PT358', 'KESEKRETARIATAN  DAERAH PROVINSI LAMPUNG', 'Jalan Wolter Moanginsidi No 69', '', 'Teluk Betung', 'Bandarlampung', '', 'Kiki'),
('PT359', 'SMK NEGERI 1 GADING REJO', 'Jalan Tegalsari No. 001', '072194858', 'Gading Rejo', 'Pringsewu', '35372', 'Kiki'),
('PT474', 'PT TRI TEGUH MANUNGGAL SEJATI', 'Jalan Ir. Sutami Km. 6 Campang Raya', '(0721) 351442', 'Tanjung Karang Timur', 'Bandarlampung', '', 'Silvi'),
('PT361', 'PENGADILAN AGAMA TANJUNG KARANG KELAS IA', 'Jalan Untung Suropati No. 02', '0721 708629', 'Labuhan Ratu', 'Bandarlampung', '0', 'Kiki'),
('PT362', 'CV HARAKINDO', 'Jalan Sentot Alibasya No 1 Harapan Jaya', '0721 772539', 'Sukarame', 'Bandarlampung', '0', 'Kiki'),
('PT363', 'KANTOR KECAMATAN NATAR', 'Jalan Merak Batin', '0', 'Natar', 'Lampung Selatan', '35362', 'Kiki'),
('PT364', 'CV SHAHNAZ', 'Jalan Ridwan Rais No. 22', '', 'Kedamaian', 'Bandarlampung', '', 'Tyas'),
('PT365', 'KANWIL KEMENTRIAN HUKUM DAN HAM', 'JALAN WPLTER MONGINSIDI', '', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT366', 'PT ASURANSI JIWA SYARIAH ALAMIN', 'Jalan Sultan Agung No. 20', '', 'Way Halim', 'Bandarlampung', '', 'Tyas'),
('PT367', 'PT ASURANSI UMUM BUMIPUTERA MUDA', 'Jalan diponegoro No. 11', '', 'Enggal', 'Bandarlampung', '', 'Tyas'),
('PT368', 'DEPARTEMEN PU DIREKTORAT JEMDRAL SUMBER DAYA AIR', 'Jalan Gatot Subroto No. 57', '', 'Pahoman', 'Bandarlampung', '', 'Tyas'),
('PT369', 'SMK NEGERI 7 BANDAR LAMPUNG', 'Jalan Pendidikan', '', 'Sukarame', 'Bandarlampung', '', 'Tyas'),
('PT370', 'PT BUDI BERLIAN MOTOR', 'JL. Mulya, No. 168', '', 'Sidomulyo', 'Lampung Selatan', '', 'Tyas');
INSERT INTO `tb_perusahaan` (`kd_perusahaan`, `nama_perusahaan`, `alamat`, `telpon`, `kecamatan`, `kabupaten`, `kode_pos`, `nama_user`) VALUES
('PT371', 'PT JAPFA COMFEED INDONESIA', 'Jalan Ir. Sutami KM. 18,2', '', 'TANJUNG BINTANG', 'Lampung Selatan', '', 'Tyas'),
('PT372', 'PT KALIGUMA TRANSINDO', 'jalan Soekarno hatta km 14', '', 'Panjang', 'Bandarlampung', '', 'Tyas'),
('PT373', 'PT KURNIA ABADI JAYA', 'Jalan Soekarno Hatta Bukit Kencana 3 No. 8', '', 'Sukarame', 'Bandarlampung', '', 'Tyas'),
('PT99912', 'LPMP LAMPUNG', 'Jl. Gatot Subroto No. 44 A Pahoman Bandar Lampung', '0721-262384', '', '', '', 'Yepi'),
('PT375', 'AGEN TIKI (TITIPAN KILAT)', 'Jalan P. Tirtayasa No. 9', '', 'Sukabumi', 'Bandarlampung', '', 'Tyas'),
('PT376', 'CV R.A. KARYA TRUSS', 'Jalan Karimun Jawa No. 102 E', '', 'Sukarame', 'Bandarlampung', '', 'Tyas'),
('PT377', 'PT INDOMARCO PRISMATAMA', 'Jalan Tembesu No. 8', '', 'Campang Raya', 'Bandarlampung', '', 'Tyas'),
('PT378', 'PT MAHKOTA PANGAN CITRA RASA (HOLLAND BAKERY)', 'Jalan Raden Intan No. 120 B', '', 'Tanjung Karang Pusat', 'Bandarlampung', '', 'Tyas'),
('PT379', 'KEMENTRIAN PEKERJAAN UMUM DAN PERUMAHAN RAKYAT', 'Jalan Gatot Subroto No. 57', '(0721) 4888529', 'garuntang', 'Bandarlampung', '', 'Yepi'),
('PT380', 'MEGA AUTO CENTRAL FINANCE', 'Jalan Gajah Mada No. 53 A/B', '', 'Kota Baru', 'Bandarlampung', '', 'Tyas'),
('PT381', 'ECAYO YAMAHA MUSIC', 'Jalan Sultan Agung No. 15 - 16', '', 'Way Halim', 'Bandarlampung', '', 'Tyas'),
('PT382', 'CV PANCA SUKSES MAKMUR', 'Jalan Soekarno hatta No. 9 Bypass', '', '', 'bandarlampung', '', 'Tyas'),
('PT383', 'LAMPUNG EKSPRESS PLUS', 'Jalan Urip SumoharjoNo. 88', '0811798335', 'Sukarame', 'Bandarlampung', '', 'Ayu'),
('PT384', 'KANTOR WALIKOTA BANDAR LAMPUNG', 'Jalan Dr. Susilo No. 2', '', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT385', 'PERGURUAN KRISTEN METHODIST INDONESIA " IMMANUEL"', 'Jalan Dr. Susilo No. 6', '', 'Pahoman', 'Bandarlampung', '', 'Tyas'),
('PT386', 'UPTD MUSEUM NEGERI PROVINSI LAMPUNG "RUWAI JURAI"', 'Jalan ZA. Pagaralam No. 64', '0721 783688', 'gedung meneng', 'Bandar Lampung', '', 'Tyas'),
('PT387', 'KOSPIN JASA KANTOR CABANG BANDARLAMPUNG', 'Jalan Jendral Sudirman No. 1 A - B', '0721 240592', 'Enggal', 'Bandarlampung', '', 'Tyas'),
('PT388', 'BADAN KEPEGAWAIAN DAERAH KOTA BANDARLAMPUNG', 'Jalan Dr. Susilo No. 2', '0721 254756', 'Pahoman', 'Bandarlampung', '', 'Tyas'),
('PT389', 'KANTOR WILAYAH KEMENTRIAN AGAMA PROVINSI LAMPUNG', 'Jalan Cut Mutia No. 27 Bandarlampung', '0721 481533', 'Teluk Betung', 'Bandarlampung', '', 'Yepi'),
('PT390', 'CV RAHMAD JAYA', 'Jalan Tulang Bawang No. 128', '', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT391', 'KEJAKSAAN TINGGI LAMPUNG', 'Jalan Wolter Monginsidi No. 226', '', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT392', 'PT POROS LAMPUNG GLOBAL', 'Jalan Dempo No. 23', '0721 701102', 'Labuhan Ratu', 'Bandarlampung', '', 'Tyas'),
('PT393', 'TELKOM INDONESIA', 'Jalan Majapahit No. 14', '0721 256410', 'Enggal', 'Bandarlampung', '', 'Tyas'),
('PT394', 'PT ADAMAS MANGGALA PERKASA', 'Jalan Kartini No. 138', '0721 263220', 'tanjung karang', 'Bandarlampung', '', 'Yepi'),
('PT395', 'KLINIK UROLOGI HUBBAKA', 'Jalan Kemuning 1 No. 35 Pahoman', '0721 8016888', 'Pahoman', 'Bandarlampung', '', 'Tyas'),
('PT396', 'BANK MAU (BPRS MITRA AGRO USAHA)', 'Jalan Hayam Wuruk No. 95', '0721 258479', 'Sawah Lama', 'Bandarlampung', '', 'Tyas'),
('PT397', 'PT CAHAYA MURNI INDOLAMPUNG FURNITE MANUFACTURING & TRADING', 'Jalan Ir. Sutami Km. 12 No. 8 Sukanegara', '0721 351111', '', 'Tanjung Bintang', '', 'Tyas'),
('PT398', 'TEGAR TV', 'Jalan ZA. Pagaralam No. 14', '0721 788585', 'Labuhan Ratu', 'Bandarlampung', '', 'Tyas'),
('PT399', 'HOTEL GRAND ANUGRAH BANDARLAMPUNG', 'Jalan Raden Intan No. 132', '', '', 'BandarLampung', '', 'Tyas'),
('PT400', 'RADAR LAMPUNG', 'Jalan Sultan Agung No. 18', '(0721) 782306, 787987', 'Labuhan Ratu', 'Bandarlampung', '', 'Silvi'),
('PT401', 'LIGA ALUMUNIUM', 'Jalan Pangeran  Antasari No. 317', '082181931858', 'Sukabumi', 'Bandarlampung', '', 'Tyas'),
('PT402', 'PT NIELSEN', 'Jalan Ratu Dibalau Perum Citra Bumi Permai Blok B2', '0721 772985', '', 'Bandarlampung', '', 'Tyas'),
('PT403', 'PT MATAHARI PUTRA PRIMA (HYPERMART)', 'Jalan R.A.. Kartini No. 21', '0721 253367', 'Tanjung Karang', 'Bandarlampung', '', 'Tyas'),
('PT404', 'DIREKTORAT RESERSE NARKOBA POLDA LAMPUNG', 'Jalan Wr. Supratman No. 28', '', '', 'Bandarlampung', '', 'Tyas'),
('PT405', 'PT ASURANSI UMUM BUMI PUTERA MUDA 1967', 'Jalan Diponegoro No. 11 A – B', '', 'Enggal', 'Bandarlampung', '', 'Tyas'),
('PT406', 'PENGADILAN AGAMA KELAS I TANJUNG KARANG', 'Jalan Untung Suropati No. 2', '0721 708629', 'kedaton', 'Bandarlampung', '', 'Yepi'),
('PT407', 'KOPERASI PEGAWAI TELKOM LAMPUNG', 'Jalan Pagar Alam No. 27', '0721 780525', 'Kedaton', 'Bandarlampung', '', 'Tyas'),
('PT408', 'CV RUANG KREASINDO SUKAMENANTI', 'Jalan Badak Ujung No. 02', '', 'kedaton', 'Bandarlampung', '', 'Tyas'),
('PT409', 'PT ANUGRAH PLASINDO ABADI', 'Jalan Rajawali No. 88 Candimas', '0721 91388', 'Natar', 'Lampung Selatan', '', 'Tyas'),
('PT410', 'PT MULTI EKSPRESS TRANSINDO', 'Jalan Sultan Haji No. 21', '0721 264140', 'kedaton', 'Bandarlampung', '', 'Tyas'),
('PT411', 'PT MATAHARI SAKTI', 'Jalan Tembesu Blok 8 A No. 27  Komplek Pergudangan Campang Raya', '', '', 'Bandarlampung', '', 'Tyas'),
('PT412', 'PT GRAHALOKA HEALTHCARE', 'Jalan P. Mangkubumi (Komplek Perum Mangkubumi Residence) Blok D No. 4 Segala Mider Kel. Gunung Agung', '0721 8016313', 'Langkapura', 'Bandarlampung', '', 'Tyas'),
('PT413', 'SMP SWASTA NUSANTARA', 'Jalan Dokter Harun Gang Gelatik No. 16', '0721 262109', '', 'Bandarlampung', '', 'Tyas'),
('PT414', 'PT KEONG NUSANTARA ABADI', 'Jalan Raya Branti Km. 18 Desa Bumisari, RK II', '0721 91276', 'natar', 'Lampung Selatan', '', 'Tyas'),
('PT415', 'PT SUNGAI BUDI GROUP', 'Jalan Ikan Kakap No. 91', '13311213', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT416', 'PT BANK MUAMALAT', 'Jalan Raden Intan No. 92 C-D', '0721 242123', '', 'Bandarlampung', '', 'Tyas'),
('PT417', 'RS BHAYANGKARA POLDA LAMPUNG', 'Jalan Pramuka No. 88', '', 'Rajabasa', 'Bandarlampung', '', 'Tyas'),
('PT418', 'GLAMOROUS ART WORK', 'Jalan Nuri No. 28 Perumahan Wana Asri', '0721 272717', 'Langkapura', 'Bandarlampung', '', 'Tyas'),
('PT419', 'PT MITRA MUDA REKSA MANDIRI', 'Jalan Pramuka No. 15', '0721 271574', 'Kemiling', 'Bandarlampung', '', 'Tyas'),
('PT420', 'SMP KRISTEN PENABUR', 'Jalan Perintis Kemerdekaan No. 7', '0721 269623', 'Kotabaru', 'Bandarlampung', '', 'Tyas'),
('PT421', 'PT FASTFOOD INDONESIA.TBK (KFC CHANDRA LAMPUNG )', 'Jalan Pemuda Hayam Wuruk No. 1', '0721 262322', '', 'Bandarlampung', '', 'Tyas'),
('PT422', 'PT BPR LAMPUNG BINA SEJAHTERA', 'Jalan Wolter Monginsidi No. 105', '0721 486752', 'Teluk Betung Utara', 'Bandarlampung', '', 'Tyas'),
('PT423', 'PT PERKEBUNAN NUSANTARA VII (DANA PENSIUN PERKEBUNAN)', 'Jalan Teuku Umar No. 300', '0721 700828', 'kedaton', 'Bandarlampung', '', 'Silvi'),
('PT424', 'PT MASULA AGUNG GARBHAMAS', 'Jalan P. Tirtayasa Km 6 Campang Raya', '0721 351170', '', 'Bandarlampung', '', 'Tyas'),
('PT425', 'PT PERTAMINA (PERSERO) TBBM', 'Jalan Yos Sudarso Komplek Pelabuhan Panjang', '0721 31207', '', 'Bandar Lampung', '', 'Tyas'),
('PT426', 'DINAS TATA KOTA BANDARLAMPUNG', 'Jalan Dr. Susilo No. 2', '0721 262528', 'Pahoman', 'Bandarlampung', '', 'Tyas'),
('PT427', 'PT ISTANA LAMPUNG RAYA HONDA LAMPUNG RAYA', 'Jalan Raden Intan No. 168', '0721 255000', 'tanjung karang', 'Bandarlampung', '', 'Tyas'),
('PT428', 'PT INDO HELMET GALLERY', 'Jalan Urip Sumoharjo No. 15a', '0721 772923', '', 'Bandarlampung', '', 'Tyas'),
('PT429', 'RUMAH SAKIT IMMANUEL BANDAR LAMPUNG', 'Jalan Soekarno – Hatta No. 1', '0721 704900', '', 'Bandarlampung', '', 'Tyas'),
('PT430', 'BADAN PUSAT STATISTIK PRINGSEWU', 'Jalan Raya Gadingrejo Km. 33 Wonodadi Gading Rejo', '(0729) 333237', 'Gading Rejo', '', '', 'Ayu'),
('PT431', 'KEMENTERIAN AGAMA BANDAR LAMPUNG', 'Jalan Cut Meutia No. 27 Teluk Betung Bandarlampung', '(0721) 481533', 'Teluk Betung', 'Bandarlampung', '', 'Ayu'),
('PT432', 'KANTOR PELAYANAN PAJAK PRATAMA KEDATON', 'Jalan Dr. Susilo No. 41 Bandar Lampung', '(0721) 262574', '', 'bandarlampung', '', 'Ayu'),
('PT433', 'PT PHILLIPS SEAFOODS INDONESIA', 'Jalan Ir. Sutami Km. 7 Tanjung Karang Timur Bandarlampung', '', 'Tanjung Karang Timur', 'Bandar lampung', '', 'Ayu'),
('PT434', 'SMA TAMAN SISWA CABANG TELUK BETUNG', 'Jalan WR. Supratman No.74 Teluk Betung Utara Bandarlampung', '(0721) 475448', 'Teluk Betung Utara', 'Bandarlampung', '', 'Ayu'),
('PT435', 'DINAS KELAUTAN DAN PERIKANAN KOTA BANDARLAMPUNG', 'Jalan  Drs. Warsito No. 54 Teluk Betung Bandarlampung', '(0721) 484531', 'Teluk Betung', 'Bandarlampung', '', 'Ayu'),
('PT436', 'BADAN PENANAMAN MODAL DAN PELAYANAN PERIZINAN TERPADU DAERAH', 'Jalan Cut Mutia No. 25 Bandarlampung', '(0721) 482372)', '', 'Bandarlampung', '', 'Ayu'),
('PT437', 'KOPERASI TIGA SEHAT (KTS)', 'Jalan Cut Mutia No. 40 Teluk Betung Utara Bandarlampung', '(0721) 473214', 'Teluk Betung Utara', 'Bandarlampung', '', 'Ayu'),
('PT438', 'CV PUTRA PRATAMA', 'Jalan Pramuka Bukit Alam Permai I Blok B No. 14 A Rajabasa Bandarlampung', '(0721) 8011139', 'Raja Basa', 'Bandarlampung', '', 'Ayu'),
('PT439', 'CREDIT UNION ARTHA MANDIRI', 'Jalan KH. Gholib Gang Cempaka RT 08 Lingkungan V Pringsewu Utara', '(0729) 23301', 'Pringsewu', 'Pringsewu', '', 'Ayu'),
('PT440', 'KUMON', 'Jalan Zainal Abidin Pagar Alam Labuhan Ratu Bandarlmapung', '(0721) 773300', 'Labuhan Ratu', 'Bandarlampung', '', 'Ayu'),
('PT441', 'PT SARANA KENCANA MULYA', 'Jalan Gatot Subroto No. 62 Tanjung Karang', '0721 482265', 'Tanjung Karang', 'Bandarlampung', '', 'Tyas'),
('PT795', 'DEWAN PENGURUS KORPRI UNIT SEKRETARIAT PESAWARAN', 'Jalan Jendral Ahmad Yani', '', 'Gedong Tataan', 'Pesawaran', '', 'Silvi'),
('PT443', 'PT ALISAN CATUR ADHI RAJASA', 'Jalan Raya Hajimena No. 88', '', 'Natar', 'Lampung Selatan', '', 'Tyas'),
('PT444', 'KANTOR GUBERNUR BIRO ASET DAN PERLENGKAPAN', 'Jalan Wolter Mongonsidi No. 6 -9', '', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT445', 'BANK LAMPUNG KARTINI', 'Jalan RA. Kartini Blok E No. 99 Tanjung Karang Bandarlampung', '', 'Tanjung Karang', 'Bandarlampung', '', 'Tyas'),
('PT446', 'DPD ASOSIASI PELKSANAAN KONSTRUKSI NASIONAL', 'Jalan way Ketibung Sumur Batu Teluk Betung Bandarlampung', '', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT447', 'BPR BANK PASAR', 'Jalan Raden Intan Blok A No. 6', '', 'Enggal', 'Bandarlampung', '', 'Tyas'),
('PT448', 'CV LAMPUNG HELMET GALLERY', 'Jalan Urip Sumoharjo No. 15 A Kedaton  Bandarlampung', '', 'Kedaton', 'Bandarlampung', '', 'Tyas'),
('PT449', 'PT SURYA ANNISA KECANA', 'Jalan Cut Myak Dien No. 65 E Palapa Tanjung Karang Pusat', '', 'Palapa', 'Bandarlampung', '', 'Tyas'),
('PT450', 'PT MANDIRI ABADI JAYA UTOMO', 'Jalan Letjend Ryacudu No. 15 Jalur Dua Korpri Sukarame 1', '', 'Sukarame', 'Bandarlampung', '', 'Tyas'),
('PT451', 'CV KARYA HIDUP SENTOSA', 'Jalan Raden Intan 159 Lampung', '', 'Tanjung Karang', 'Bandarlampung', '', 'Tyas'),
('PT452', 'PT WAHANA KARYA', 'Jalan Ryacudu Blok D7 No. 16 Korpri', '', 'Sukarame', 'Bandarlampung', '', 'Tyas'),
('PT453', 'PT SUCI KARYA BADINUSA', 'Jalan Dr. Harun No. 08 Kota Baru Bandarlampung', '', 'Tanjung Karang Timur', 'Bandarlampung', '', 'Tyas'),
('PT454', 'KOPERASI KARYAWAN BATUBARA TARAHAN (PT BUKIT ASAM, TBK.)', 'Jalan Raya Baauheni KM. 15', '', 'panjang', 'bandarlampung', '', 'Tyas'),
('PT455', 'BANK SEJAHTERA', 'Jalan Wolter Monginsidi No. 105', '', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT456', 'KPP PRATAMA TANJUNG KARANG', 'Jalan Dr. Susilo No. 19 Sumur Batu', '(0721) 261977', 'Teluk Betung', 'Bandarlampung', '-', 'Ayu'),
('PT457', 'PT ADHI KARYA (PERSERO) TBK PROYEK PLTU LAMPUNG', 'Jalan Soekarno-Hatta Km 16 Tarahan Lampung Selatan', '', '', '', '', 'Tyas'),
('PT772', 'BRI KCP UNIT PULAU PANGGUNG', 'Dusun Tekad No. 60', '', 'Talang Padang', 'Tanggamus', '', 'Silvi'),
('PT459', 'LEMBAGA PEMASYARAKATAN KELAS 1 RAJABASA', 'Jalan Pramuka No. 12', '', '', 'Bandarlampung', '', 'Tyas'),
('PT460', 'RAJA MARCHENDISE', 'Jalan Zainal Abidin Pagar Alam', '', 'Kedaton', 'Bandarlampung', '-', 'Ayu'),
('PT461', 'DINAS PERINDUSTRIAN', 'Jalan Cut Meutia No. 44', '', '', 'Bandarlampung', '', 'Tyas'),
('PT462', 'PT SWEET INDO LAMPUNG', 'Jalan Km. 108 Astra Ksetra', '(0725) 565717', 'MENGgala', 'TULANG Bawang', '', 'Silvi'),
('PT593', 'PT BANK BRI UNIT ANTASARI', 'Jalan Pangeran Antasari No. 125 D', '(0721) 266363', '', 'Bandarlampung', '', 'Silvi'),
('PT463', 'PT ASTRA INTERNASIONAL TBK. DAIHATSU CABANG BANDAR JAYA', 'Jalan Proklamator No. 81-D Seputih Jaya', '(0725) 26222', 'Bandar Jaya', 'Lampung Tengah', '', 'Silvi'),
('PT464', 'KANTOR BPJS LAMPUNG', 'Jalan Zainal Abidin Pagar Alam No. 35', '(0721) 700444', 'Rajabasa', 'Bandarlampung', '', 'Silvi'),
('PT465', 'KOPERASI PEGAWAI REPUBLIK INDONESIA ANDAN JEJAMA PESAWARAN', 'Jalan Mesium Transmigrasi', '085357259446', 'Gedong Tataan', 'Lampung Selatan', '', 'Silvi'),
('PT466', 'RUMAH SAKIT PERTAMINA BINTANG AMIN', 'Jalan Pramuka No. 27', '(0721) 273601', 'Kemiling', 'Bandarlampung', '', 'Silvi'),
('PT467', 'KOPDIT MEKARSARI', 'Jalan Ir. Juanda No. 75', '(0721) 259212', 'Pahoman', 'Bandarlampung', '', 'Silvi'),
('PT468', 'BANK BRI CABANG ENGGAL', 'Jalan Jenderal Sudirman No. 23', '(0721) 259340', 'Pahoman', 'Bandarlampung', '', 'Silvi'),
('PT469', 'CV LAMPUNG ROBUSTA COFFEE', 'Jalan Wala Abadi No. 5 Way Laga', '(0721) 350703', 'Sukabumi', 'Bandarlampung', '', 'Silvi'),
('PT470', 'BALAI PEMANTAPAN KAWASAN HUTAN WILAYAH XX BANDARLAMPUNG', 'Jalan Raden Gunawan No. 41', '(0721) 7911021', 'Rajabasa', 'Bandarlampung', '', 'Silvi'),
('PT471', 'PT RINDANG TIGA SATU PRATAMA', 'Jalan Nusa Indah I No. 26 Sumur Batu', '(0721) 252506', 'Teluk Betung', 'Bandarlampung', '', 'Silvi'),
('PT472', 'PT INDOKOM SAMUDRA PERSADA', 'Jalan Ir. Sutami Km 12.5 Sukanegara', '(0721) 350837', 'Tanjung Bintang', 'Lampung Selatan', '', 'Silvi'),
('PT473', 'PT SINARMAS', 'Jalan Raya Tarahan Km. 17 Desa Rangai Tri Tunggal', '(0721) 341779', 'Katibung', 'Lampung Selatan', '', 'Silvi'),
('PT475', 'PT GARUDA FOOD PUTRA PUTRI JAYA', 'Jalan Ir. Sutami Km. 6 Campang Raya', '(0721) 351442', 'Tanjung Karang Timur', 'Bandarlampung', '', 'Silvi'),
('PT476', 'PT BUMI MENARA INTERNUSA', 'Jalan Ir. Sutami KM 12 Desa Lematang', '(0721) 350155', 'Tanjung Bintang', 'Lampung Selatan', '', 'Silvi'),
('PT572', 'KANTOR PEMASARAN PT SEQUISLIFE', 'Jalan Wolter Monginsidi No. 283', '(0721) 263996', 'Tanjung Karang', 'Bandarlampung', '', 'Silvi'),
('PT478', 'D’PREMIER 9', 'Jalan Gajah Mada No. 14', '082233184999', 'Tanjung Karang', 'Bandarlampung', '', 'Silvi'),
('PT479', 'KOMPAS TV LAMPUNG', 'Jalan Darussalam No 64 Langkapura', '0721-7694228', 'Kemiling', 'Bandarlampung', '', 'Ayu'),
('PT480', 'PT JASA ASURANSI INDONESIA', 'Jalan Raden Intan No 84', '0721-240840', 'Tanjung Karang', 'Bandarlampung', '', 'Ayu'),
('PT481', 'PT AGRI LESTARI NUSANTARA', 'Jalan Ir. Sutami Km. 7', '', 'Campang Raya', 'Bandarlampung', '', 'Ayu'),
('PT482', 'PT BHANDA GRAHA REKSA (PERSERO)', 'Jalan Soekarno Hatta Km. 11 Serengsem', '', 'Panjang', 'Bandarlampung', '', 'Yepi'),
('PT483', 'PT PLN (PERSERO)', 'Jalan Gatot Subroto No 30', '', 'Pahoman', 'Bandarlampung', '', 'Ayu'),
('PT484', 'BADAN PEMBERDAYAAN MASYARAKAT DAN PEMERINTAHAN DESA (BPMPD)', '?', '', '?', 'Bandarlampung', '', 'Ayu'),
('PT485', 'SMP MUTIARA BANGSA', 'Jalan Hi. Komarudin', '081278570202', 'Rajabasa', 'Bandarlampung', '', 'Ayu'),
('PT486', 'PT KEPUH KENCANA ARUM', '?', '', '?', '?', '', 'Ayu'),
('PT487', 'SMP NEGERI 31 BANDARLAMPUNG', 'Jalan Jendral Ryacudu No 108', '0721350198', 'Campang Raya', 'Bandarlampung', '', 'Ayu'),
('PT488', 'CV MICRODATA INDONESIA', 'Jalan Puri Maera Kaca No. 19', '(0721) 5614429', 'Way Halim', 'Bandarlampung', '', 'Yepi'),
('PT489', 'DINAS PEKERJAAN UMUM KOTA METRO', 'Jalan Pagar Alam No 09', '0725-46025', 'Metro', 'Metro', '', 'Ayu'),
('PT490', 'TOKO BUKU FAJAR AGUNG', 'Jalan Raden Intan', '0721252860', 'Tanjung Karang', 'Bandarlampung', '', 'Ayu'),
('PT491', 'KEMENTERIAN AGAMA REPUBLIK INDONESIA', 'Jalan Cut Mutia No. 27', '0721 481533', 'teluk betung', 'Bandarlampung', '', 'Tyas'),
('PT492', 'BANK LAMPUNG CABANG PEMBANTU SUDIRMAN', 'Jalan Jendral Sudirman No 2 B, Enggal', '(0721) 242942', 'Tanjung Karang', 'Bandarlampung', '', 'Silvi'),
('PT493', 'BADAN PERTANAHAN NASIONAL (BPN) KOTA BANDARLAMPUNG', 'Jalan Dr. Warsito No 5', '072-486217', 'Teluk Betung', 'Bandarlampung', '', 'Ayu'),
('PT494', 'THE 7TH HOTEL', 'Jalan Rasuna Said No.18 Gulak Galik', '0721-8017777', 'Teluk Betung Utara', 'Bandarlampung', '', 'Ayu'),
('PT495', 'PT ARISTA AUTO PRIMA', 'Jalan Letjend Alamsyah Ratu Rawira No. 99', '(0721) 8013800', 'Natar', 'Lampung Selatan', '', 'Tyas'),
('PT496', 'BADAN NARKOTIKA NASIONAL PROVINSI LAMPUNG', 'Jalan Griya Mustika No 07-08', '(0721) 770229', 'Way Halim', 'Bandarlampung', '35135', 'Yepi'),
('PT497', 'OTORITAS JASA KEUANGAN', 'Jalan Way Sekampung No 3', '', 'Pahoman', 'Bandarlampung', '', 'Ayu'),
('PT498', 'KANTOR NOTARIS DINI ISABELLA, S.H., MKN.', 'Jalan WR. Supratman No 90', '085358005600', 'Teluk Betung', 'Bandarlampung', '', 'Yepi'),
('PT499', 'SMK GAJAH MADA', 'Jalan Soekarno Hatta No 1', '', 'Tanjung Senang', 'Bandarlampung', '', 'Ayu'),
('PT500', 'PTPN VII', 'Jalan Pramuka No. 11/24', '', 'Rajabasa', 'Bandarlampung', '', 'Tyas'),
('PT501', 'DAPENBUN CABANG PTPN VII', 'Jalan Teuku Umar No. 300', '', 'Kedaton', 'Bandarlampung', '', 'Tyas'),
('PT502', 'PT SIGER JAYA ABADI', 'Jalan Raya Tanjung Bintang No. 99', '', '', 'Lampung Selatan', '', 'Yepi'),
('PT503', 'PT WILRIKA CITRA MANDIRI', 'Jalan Laksamana Yos Sudarso No 48 Way Lunik', '', 'Teluk Betung', 'Bandarlampung', '35244', 'Ayu'),
('PT504', 'PT PRIMA LANGGENG DIAN AGUNG', 'Jalan Yos Sudarso No. 2 Kuala', '', 'Teluk Betung Selatan', 'Bandarlampung', '', 'Tyas'),
('PT505', 'ULPK BALAI BESAR POM LAMPUNG', 'Jalan Dr. Susilo No. 105', '', 'Teluk Betung Utara', 'Bandarlampung', '', 'Tyas'),
('PT506', 'PT TELKOM CABANG KOTABUMI', 'Jalan Jenderal Sudirman No. 63 Tanjung Aman', '', 'kota bumi', 'lampung Utara', '', 'Tyas'),
('PT507', 'SAMSAT TANGGAMUS', 'Jalan Ir. Juanda', '', 'Kota Agung', 'Tanggamus', '', 'Tyas'),
('PT508', 'SMK TRI SUKSES', 'Jalan Serbajadi II', '', 'Natar', 'Lampung Selatan', '', 'Ayu'),
('PT509', 'PT PRIMA CITRA MEDIA', 'Jalan Pulau Batam IV', '', 'Way Halim', 'Bandarlampung', '', 'Tyas'),
('PT604', 'BPJS KESEHATAN CABANG KOTABUMI', 'Jalan Dahlia No. 117 A', '0724 - 22658', 'Kota Bumi', 'Lampung Utara', '34512', 'Tyas'),
('PT511', 'PT PTPN VII DISTRIK BUNGA MAYANG', 'Jalan Desa Negara Tulang Bawang', '', 'Bunga Mayang', 'Lampung Utara', '', 'Tyas'),
('PT512', 'PT LOUIS DREYFUS COMPANY', 'Jalan Soekarno Hatta Km 10 RT 23 LK II Waylunik', '', 'panjang', 'Bandarlampung', '', 'Tyas'),
('PT514', 'SMA MUHAMMADIYAH 2 BANDARLAMPUNG', 'Jalan Teuku Umar No. 14 Labuhan Ratu', '', 'kedaton', 'Bandarlampung', '', 'Tyas'),
('PT515', 'KONSULTAN MANAJEMEN WILAYAH OVERSIGHT CONSULTAN', 'Jalan Griya Sentosa No. 4 Perum Way Halim', '(0721) 704874', '', 'Bandarlampung', '', 'Yepi'),
('PT516', 'ASURANSI JIWA BUMI PUTERA METRO', 'Jalan Jendral Sudirman No. 132 Ganjar Agung', '(0725) 41912', '', 'Metro', '', 'Silvi'),
('PT517', 'RAHMAT AGUNG DIGITAL PRINTING', 'Jalan Jenderal Sudirman Daya Asri Tumijajar', '', '', 'Bandarlampung', '', 'Tyas'),
('PT518', 'KSP KOPDIT MEKAR SAI', 'Jalan Ir. Juanda No. 75 Pahoman', '', '', 'Bandarlampung', '', 'Tyas'),
('PT519', 'SMA NEGERI 1 PUNDUH PIDADA', 'Jalan Rakito Arifin Maja', '085384537774', 'Punduh Pedada', 'Pesawaran', '35145', 'Ayu'),
('PT520', 'CV FAJAR WISATA', 'Jalan Arif Rahman Hakim 09 BTN 3', '0721-782267', 'Way Halim', 'Bandarlampung', '', 'Yepi'),
('PT521', 'DINAS KOPERASI UMKM PERINDUSTRIAN DAN PERDAGANGAN', 'Jalan Cut Mutia No 23B', '0721-487310', 'Teluk Betung', 'Bandarlampung', '', 'Ayu'),
('PT522', 'HOTEL NUSANTARA', 'Jalan Soekarno Hatta No. 50 Sukabumi Indah', '', '', 'Bandarlampung', '', 'Tyas'),
('PT523', 'PT WIJAYA KARYA BETON.TBK', 'Jalan Lintas Sumatra Km 35 Tegineneng', '', '', 'Pesawaran', '', 'Tyas'),
('PT524', 'PT GUNUNG MADU PLANTATIONS (GMP)', 'Jl. Gatot Subroto No.108 Gunung Batin', '', '', 'Lampung Tengah', '', 'Tyas'),
('PT525', 'PT PETROSIDA GRESIK', 'Jalan Tembesu 3 Gudang No. 7', '', '', 'Bandarlampung', '', 'Tyas'),
('PT526', 'PT ANDALL HASA PRIMA', 'Jalan Raya Hajimena No. 6', '', 'Natar', 'Lampung Selatan', '', 'Tyas'),
('PT527', 'PT SHARP ELECTRONICS INDONESIA (SEID)', 'Jalan Tembesu No 1', '', 'Tanjung Karang Timur', 'Bandarlampung', '', 'Ayu'),
('PT528', 'PT CITRA PERMATA UTAMA', 'Jalan Lintas Sumatera', '082377031455', 'sidomulyo', 'Lampung Selatan', '', 'Yepi'),
('PT529', 'INSPEKTORAT BANDARLAMPUNG', 'Jalan Dr. Susilo No. 02', '', 'Pahoman', 'Bandarlampung', '', 'Tyas'),
('PT530', 'PT GRAHA BIRU 47 ASOSIASI PENGACARA SYARI''AH INDONESIA', 'Jalan Way Sekampung Gang Pusri No. 2', '0721 5600069', 'teluk betung Utara', 'bandarlampung', '', 'Yepi'),
('PT531', 'RUMAH SAKIT ISLAM ASY-SYIFAA BANDARLAMPUNG', 'Jalan Lintas Sumatra Km 65 Yukum Jaya', '', 'terbanggi Besar', 'Lampung Tengah', '', 'Tyas'),
('PT532', 'ASOKA LUXURY HOTEL', 'Jalan Pulau Marotai No. 16', '', '', 'Bandarlampung', '', 'Tyas'),
('PT533', 'HOTEL AMALIA', 'Jalan Raden Intan No. 55', '', '', 'Bandarlampung', '', 'Tyas'),
('PT534', 'PT BESS FINANCE', 'Jalan P. Diponegoro No. 8/814 Kelurahan Gulak Galik', '082281031278', 'Teluk Betung Utara', 'Bandarlampung', '', 'Silvi'),
('PT535', 'PT TATA WAHANA', 'Jalan Let. Jendral Ryacudu Blok D7 Bo. 16Korpri Raya', '', 'Sukarame', 'Bandarlampung', '', 'Tyas'),
('PT536', 'CV DANENDRA MEGA PRATAMA', 'Jalan Tupai No 101', '0721-778586', 'Kedaton', 'Bandarlampung', '35121', 'Ayu'),
('PT537', 'PT NEUTRAL TECHNOLOGIES INDONESIA', 'Jalan Halimun Raya No 37', '', 'Jakarta', 'Jakarta', '', 'Ayu'),
('PT538', 'CV CAHAYA VARIASI AUDIO MOBIL', 'Jalan Jendral  Sudirman No. 1 A-B', '(0721) 7376829', '', 'BANDARLAMPUNG', '', 'Yepi'),
('PT539', 'PT WANA ARTHALIFE', 'Jalan Gatot Subroto No. 161', '(0721) 474954', 'Teluk Betung', 'Bandarlampung', '', 'Silvi'),
('PT540', 'PT PENERBIT ERLANGGA', 'Jalan Arief Rahman Hakim No. 66', '(0721) 774005', 'Sukabumi', 'Bandarlampung', '', 'Silvi'),
('PT541', 'PT CIOMAS ADISATWA', 'Jalan Pattimura No. 7', '(0721) 481817', 'Teluk Betung Utara', 'Bandarlampung', '', 'Silvi'),
('PT542', 'PT MAA ACTIVE ADIPERKASA (SPORT STATION)', 'Jalan Pemuda Hayam Wuruk No 1', '0721-269981', 'Tanjung Karang Pusat', 'Bandarlampung', '', 'Ayu'),
('PT543', 'BANDARA RADEN INTEN II', 'Jalan H. Alamsyah Ratu Prawiranegara KM 28 Branti Raya', '(0721) 7697114', 'Natar', 'Lampung Selatan', '', 'Silvi'),
('PT544', 'USAHA DAGANG AHMAD HERIYADI', 'Jalan Ridwan Rais Gg. Astri', '081274778111', 'Kedamaian', 'Bandarlampung', '', 'Silvi'),
('PT545', 'ALAM PRIMA KOMPUTER', 'Jalan Diponegoro No 121 Sumur Batu', '0721-486163', 'Teluk Betung', 'Bandarlampung', '', 'Ayu'),
('PT546', 'ELENDRA TOUR & TRAVEL', 'Jalan Sultan Agung No. 32', '(0721) 704737', 'Way Halim', 'Bandarlampung', '', 'Yepi'),
('PT547', 'PDAM WAY RILAU', 'Jalan P. Emir M. Noer No. 11A', '(0721) 483855', 'Teluk Betung Utara', 'Bandarlampung', '', 'Silvi'),
('PT548', 'PT ASTRA INTERNATIONAL (ISUZU)', 'Jalan Raya Hajimena Km. 14', '(0721) 781000', 'Natar', 'Lampung Selatan', '', 'Silvi'),
('PT549', 'PT DINAMIKA MAJU BERSAMA', 'Jalan Lintas Sumatera Kampung Cugah', '0724-91511', 'Baradatu', 'Way Kanan', '', 'Ayu'),
('PT551', 'RUMAH SAKIT MUTIARA PUTRI', 'Jalan Hos Cokroaminoto No. 96', '(0721) 252999', 'Pahoman', 'Bandarlampung', '', 'Silvi'),
('PT552', 'PT JUANG JAYA ABDI ALAM', 'Jalan Kota Dalam', '(0721) 7693061', 'Sidomulyo', 'Lampung Selatan', '', 'Silvi'),
('PT553', 'PT PERKEBUNAN NUSANTARA VII UNIT USAHA WAY LIMA', 'Desa Cipadang', '(0721) 702233', 'Gedong Tataan', 'Pesawaran', '', 'Silvi'),
('PT554', 'BANK INDONESIA CABANG LAMPUNG', 'Jalan Hasanuddin No. 38', '(0721) 480017', 'Teluk Betung', 'Bandarlampung', '', 'Silvi'),
('PT555', 'PT SOUTH EAST ASIA PIPE INDUSTRIES (SEAPI)', 'Jalan Lintas Pantai Timur Bakau Keramat Desa Sumur', '0727331234', 'Ketapang', 'Lampung Selatan', '35592', 'Ayu'),
('PT556', 'PT CHAROEN POKPHAND INDONESIA', 'Jalan Ir. Sutami Km. 15 Desa Rejomulyo', '(0721) 350440', 'Tanjung Bintang', 'Lampung Selatan', '', 'Silvi'),
('PT557', 'PT ACOSYS GLOBAL DATA', 'Jalan Perwira No. 25', '(0721) 788190, 784455', 'Rajabasa', 'Bandarlampung', '', 'Yepi'),
('PT790', 'PT LAUTAN BERLIAN UTAMA MOTOR', 'Jalan KH. Moch. Salim No. 29 Way Lunik', '(0721) 341111', 'Teluk Betung', 'Bandarlampung', '', 'Silvi'),
('PT559', 'BAPPEDA KABUPATEN PESAWARAN', 'Jalan Raya Kedondong Desa Way Layap', '(0721) 8032017', 'Gedong Tataan', 'Pesawaran', '', 'Silvi'),
('PT560', 'CHANDRA SUPERSTORE', 'Jalan Hayam Wuruk No. 1', '(0721) 269814', 'Kedamaian', 'Bandarlampung', '', 'Silvi'),
('PT561', 'BALAI PENGELOLAAN DAERAH ALIRAN SUNGAI WAY SEPUTIH WAY SEKAMPUNG', 'Jalan Z.A. Pagar Alam Komplek Dinas Kehutanan', '(0721) 781247', 'Rajabasa', 'Bandarlampung', '', 'Silvi'),
('PT563', 'SMA MUHAMMADIYAH 1 SEKAMPUNG UDIK', 'Jalan Baru Mengandungsari', '08287066652', 'Sekampung Udik', 'Lampung Timur', '34183', 'Ayu'),
('PT564', 'TRIBUN LAMPUNG', 'Jalan Z.A. Pagar Alam No. 83', '(0721) 704777', 'Gedung Meneng', 'Bandarlampung', '', 'Silvi'),
('PT565', 'SLARA KOMPUTER', 'Jalan Teratai No 8', '0721-702365', 'Kedaton', 'Bandarlampung', '', 'Ayu'),
('PT566', 'PT TELKOM AKSES', 'Jalan Sultan Haji No. 1', '085788868411', 'Kedaton', 'Bandarlampung', '', 'Silvi'),
('PT567', 'CV SEHATI', 'Jalan M. Saleh No. 15 Klones Bukit kemuning', '', 'Bukit Kemuning', 'Lampung Utara', '', 'Tyas'),
('PT568', 'BINA MARGA PROYEK', 'Jalan Wr. Monginsidi No. 220', '', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT569', 'HOTEL LE''MANS', 'Jalan Lintas Timur Simpang 5', '(0726) 7721010', 'Banjar Agung', 'Tulang Bawang', '', 'Yepi'),
('PT570', 'BADAN KETAHANAN PANGAN KAB. TANGGAMUS', 'Jalan R. Suprapto Komplek Perkantoran Pemda', '(0722) 21814', 'Kota Agung', 'Tanggamus', '35384', 'Silvi'),
('PT605', 'CV TECHNINDO STEEL', 'Jalan Lintas Sumatera Km. 30 Tanjungan', '081379804088', 'Tanjung Bintang', 'lampung Selatan', '', 'Silvi'),
('PT573', 'BANK MANDIRI SYARIAH', 'Jalan Diponegoro No. 189', '(0721) 258960', 'Teluk Betung', 'Bandarlampung', '', 'Silvi'),
('PT626', 'PT ARSADE INTI GASINDO', 'Jalan Pangeran Tirtayasa Kp. Beringin Km. 12 No. 22', '(0721) 351170', 'sukabumi', 'bandarlampung', '', 'Silvi'),
('PT575', 'KANTOR WILAYAH KEMENTRIAN HUKUM DAN HAM', 'Jalan Wolter Monginsidi No. 184', '(0721) 485427', 'Teluk Betung', 'Bandarlampung', '', 'Silvi'),
('PT576', 'PT ROXY PRAMESWARI LAMPUNG', 'Jalan Ir. Soekarno Hatta No. 8', '085279735312, 081225139988', 'Rajabasa', 'Bandarlampung', '', 'Silvi'),
('PT577', 'PT TIGA RAKSA', 'Jalan Tembesu No. 12 Desa', '-', 'Campang Raya', 'Bandarlampung', '', 'Silvi'),
('PT578', 'PT BAHANA CAHAYA SEJATI', 'Jalan Zainal Abidin Pagar Alam No. 11', '(0721) 788108', 'Rajabasa', 'Bandarlampung', '', 'Silvi'),
('PT579', 'PEGADAIAN CPP KEDATON', 'Jalan Teuku Umar No.19', '(0721) 2707334', 'Kedaton', 'Bandarlampung', '', 'Silvi'),
('PT580', 'SATUAN POLISI PAMONG PRAJA', 'Jalan Dr. Susilo No. 2', '(0721) 267126', 'Teluk Betung', 'Bandarlampung', '', 'Silvi'),
('PT581', 'PT ALISAN CATUR ADHIRAJASA', 'Raya Haji Mena No. 88 A', '(0721) 788666', 'Natar', 'Lampung Selatan', '', 'Yepi'),
('PT582', 'PT TRAKTOR NUSANTARA', 'Jalan Pemanggilan No. 39 A', '(0721) 788683', 'Natar', 'Lampung Selatan', '', 'Silvi'),
('PT583', 'PT CJ CHEILJEDANG FEED LAMPUNG', 'Jalan Ir. Sutami Km.12 Sukanegara', '(0721) 350158', 'Tanjung Bintang', 'Lampung Selatan', '', 'Silvi'),
('PT584', 'BANK BTPN', 'Jalan Wolter Monginsidi No. 80-88 Sumur Batu', '(0721) 489253', 'Teluk Betung Barat', 'Bandarlampung', '', 'Silvi'),
('PT585', 'PT CENTRAL PROTEINA PRIMA TBK', 'Jalan Yos Sudarso No. 257 Garuntang Teluk Betung Selatan Bandarlampung', '082880091377', 'teluk Betung', 'bandarlampung', '', 'Silvi'),
('PT586', 'PT PERKEBUNAN NUSANTARA VII', 'Jalan Teuku Umar No. 300', '0721 - 702233', 'Kedaton', 'Bandarlampung', '35141', 'Tyas'),
('PT588', 'KANTOR PELAYANAN PEMBENDAHARAAN NEGARA (KPPN)', 'Jalan Jenderal Gatot Subroto No. 91', '(0721) 261717', 'Kedamaian', 'Bandarlampung', '', 'Silvi'),
('PT775', 'BUMI PUTERA BANDAR JAYA', 'Jalan Proklamator No. 145 Bandar Jaya Barat', '(0725) 25146', 'Terbanggi Besar', 'Lampung Tengah', '', 'Silvi'),
('PT589', 'PT PUPUK SRIWIJAYA', 'Jalan Way Sekampung Gg. Pusri II No. 3', '(0721)  264796', 'Pahoman', 'Bandarlampung', '', 'Silvi'),
('PT590', 'BIRO PERLENGKAPAN DAN ASET DAERAH PEMPROV LAMPUNG', 'Jalan Wolter Monginsidi No. 69', '(0721) 481166', 'TELUK Betung', 'BAndarlampung', '', 'Silvi'),
('PT591', 'PT COCA COLA AMATIL TANJUNG BINTANG', 'Jalan Ir. Sutami Km. 12 Sukanegara', '(0721) 350040', 'Tanjung Bintang', 'Lampung Selatan', '', 'Silvi'),
('PT592', 'SAMPOERNA TELEKOMUNIKASI TBK.', 'Jalan Raden Intan 144/88', '(0721) 252604', 'Enggal', 'bandarlampung', '', 'Silvi'),
('PT594', 'PT BANK BRI KC METRO', 'Jalan Jendral Sudirman No. 73 Metro', '(0725) 474770', 'Metro', 'Metro', '', 'Silvi'),
('PT595', 'BANK BTN', 'Jalan Wolter Monginsidi No. 80-88 Sumur Batu', '(0721) 489253', 'Teluk Betung', 'Bandarlampung', '', 'Silvi'),
('PT596', 'BULOG DIVISI REGIONAL LAMPUNG', 'Jalan Cut Meutia No. 29', '(0721) 487947', 'Teluk Betung', 'Bandarlampung', '', 'Silvi'),
('PT771', 'BANK SYARIAH MANDIRI', 'Jalan Diponegoro No. 11 C, Enggal', '(0721) 258960', 'Tanjung Karang', 'Bandarlampung', '', 'Silvi'),
('PT598', 'PT RUBBER JAYA LAMPUNG', 'Jalan Ir. Sutami Km. 11 Desa Lematang', '(0721) 350810', 'Tanjung Bintang', 'lampung Selatan', '', 'Silvi'),
('PT599', 'DINAS PERINDUSTRIAN BANDAR LAMPUNG', 'Jalan Cut Meutia No. 44', '(0721) 474331', 'teluk Betung', 'bandarlampung', '', 'Silvi'),
('PT600', 'AJB BUMI PUTRA 1912 CABANG KOTABUMI', 'Jalan Alamsyah Ratu Prawira Negara No. 132', '(0724) 21300 / 085766649512', 'Kota Bumi', 'Lampung Utara', '', 'Silvi'),
('PT601', 'KANTOR PELAYANAN KEKAYAAN NEGARA DAN LELANG', 'Jalan Basuki Rahmat No. 12', '0721 474735', 'Teluk Betung', 'Bandarlampung', '', 'Yepi'),
('PT602', 'PT PLN DISTRIBUSI LAMPUNG AREA METRO RAYON BANDAR JAYA', 'Jalan Indra Putra Subing No. 1', '0725 27207', 'Bandar Jaya', 'Lampung Tengah', '', 'Tyas'),
('PT603', 'KOPERASI SIMPAN PINJAM DAN PEMBIAYAAN BMT L-RISMA', 'Jalan raya Simpang Agung', '', '', 'Lampung Tengah', '', 'Yepi'),
('PT606', 'ORMAS BPP-P3UW LAMPUNG', 'Bumi Dipasena', '081272906423', 'Rawa Jitu Timur', 'tulang Bawang', '', 'Silvi'),
('PT607', 'PT RIZKA TAMA LINE', 'Jl. Kom.L. Yos Sudarso No. 12', '(0721) 341355 / 31262', 'panjang selatan', 'bandarlampung', '', 'Silvi'),
('PT608', 'DIREKTORAT JENDRAL PAJAK KANTOR WILAYAH DJP BENGKULU DAN LAMPUNG', 'Jalan Pangeran Emir M. Noor No. 5 A', '(0721) 260536', 'Teluk Betung Utara', 'bandarlampung', '', 'Yepi'),
('PT609', 'PT BMT MUAMALAT SEJAHTERA', 'Jalan Tanjung Intan', '081373439175', 'purbolinggo', 'lampung Timur', '', 'Silvi'),
('PT610', 'JNE EXPRESS KANTOR CAB. UTAMA', 'Jalan Imam Bonjol No. 351', '085266561131', 'Langkapura', '', '', 'Silvi'),
('PT611', 'PTPN VII KEDATON (WAY GALIH)', 'Desa Way Galih Tromol Pos No.70 Lampung Selatan', '(0721) 705546', 'tanjung bintang', 'lampung Selatan', '', 'Silvi'),
('PT612', 'DINAS TANAMAN PANGAN DAN HORTIKULTURA LAMPUNG', 'Jalan Zainal Abidin Pagaralam No. 1', '(0721) 780660', 'RAJa Basa', 'BANdarlampung', '', 'Silvi'),
('PT613', 'BADAN PENELITIAN DAN PENGEMBANGAN INDUSTRI BALAI RISET DAN STANDARISASI INDUSTRI BANDARLAMPUNG', 'Jalan Bay Pass Soekarno-Hatta Km. 1', '(0721) 706353', 'Raja Basa', 'Bandarlampung', '', 'admin'),
('PT614', 'KELURAHAN DESA PAMULIHAN', 'Jalan Pemuda No. 02 Way Sulan', '0', 'Way Sulan', 'Lampung Selatan', '0', 'admin'),
('PT615', 'UPTD BALAI PSDA WILAYAH II SEPUTIH - SEKAMPUNG', 'Jalan Z.A. Pagar Alam No. 42', '(0725) 41496', 'Metro', 'Metro', '0', 'admin'),
('PT616', 'SMKN 2 BANDAR LAMPUNG', 'Jalan Prof. Sumantri Brojonegoro', '(0721) 701966', 'Raja Basa', 'Bandarlampung', '', 'admin'),
('PT617', 'PTPN 7 WAY BERULU', 'Jalan Way Berulu Desa Kebagusan', '(0721) 94537', 'Gedung Tataan', 'Pesawaran', '', 'admin'),
('PT618', 'SMA NEGERI 2 PRINGSEWU', 'Jalan Mekarsari No. 288', '81377774561', 'Rejo Sari', 'Pringsewu', '', 'admin'),
('PT619', 'SMK NEGERI 1 GEDONG TATAAN', 'Jalan Veltran II Dam C', '81377774561', 'Gedung Tataan', 'Pesawaran', '0', 'admin'),
('PT620', 'BADAN KESATUAN BANGSA DAN  POLITIK DAERAH PROVINSI LAMPUNG', 'Jalan Basuki Rahmat No. 21 Teluk Betung Utara, Bandarlampung', '(0721) 481544', 'Teluk Betung Utara', 'Bandarlampung', '', 'admin'),
('PT621', 'KANTOR WILAYAH LAMPUNG', 'Jalan RW. Monginsidi No. 184', '(0721) 484527', 'Teluk Betung', 'Bandarlampung', '', 'admin'),
('PT622', 'KANTOR CAMAT KETAPANG', 'Jalan Lintas Timur Ketapang', '085776905500', 'Bangunrejo', 'Lampung Selatan', '0', 'Yepi'),
('PT623', 'DIRJEN SUMBER DAYA AIR BALAI BESAR WILAYAH SUNGAI MESUJI SEKAMPUNG', 'Jalan Gatot Subroto No. 57', '(0721) 480722', 'pahoman', 'bandarlampung', '', 'Silvi'),
('PT624', 'CV SUMBER MULYA BERKAH ABADI', 'Jalan Mangga No. 53', '(0721) 802139', 'tanjung bintang', 'lampung Selatan', '', 'Silvi'),
('PT625', 'PT GOLDEN COMMUNICATION', 'Jalan Teuku Umar No. 10 G Penengahan', '0721 712888', 'Kedaton', 'Bandarlampung', '', 'Tyas'),
('PT627', 'ADIRA FINANCE CABANG BANDAR JAYA', 'Jalan Proklamator Raya, Terbaggi Besar', '(0725) 25980', 'Bandar Jaya', 'Lampung Tengah', '', 'Silvi'),
('PT794', 'PT HOLCIM INDONESIA, TBK.', 'Rangai Tri Tunggal', '', 'Katibung', 'Lampung Selatan', '', 'Silvi'),
('PT628', 'PT MITA UTAMA PRIMA', 'Jalan Teuku Umar No. 3 KEDATON BANDAR LAMPUNG', '', '', '', '', 'Yepi'),
('PT629', 'UNIT PELAKSANA TEKNIK DINAS PENDIDIKAN KECAMATAN RUMIJAJAR', 'Jalan Jendral Sudirman No. 1', '0821 7540 4686', 'Murnijaya', 'Tulang Bawang Barat', '', 'Tyas'),
('PT630', 'CV PANGERAN LAMPUNG', 'JL. PULAU BURU NO. 44 WAY HALIM PERMAI', '(0721) 700042', 'WAY HAlim', 'BANdarlampung', '', 'Yepi'),
('PT631', 'CV PRIMA CITRA MEDIA', 'JL. PULAU BATAM IV', '-', 'WAY HAlim', 'BANdarlampung', '', 'Yepi'),
('PT632', 'CV SRIKANDI MAKMUR', 'JL. ARIF RAHMAN HAKIM KOMPLEK FOODCITY-RUKO NO. 6', '(0721) 773428', 'WAY Halim', 'BAndarlampung', '', 'Yepi'),
('PT633', 'DINAS PERHUBUNGAN KOTA BANDARLAMPUNG', 'JL. BASUKI RAHMAT NO. 34', '(0721) 471633', 'Teluk Betung', 'Bandarlampung', '', 'Yepi'),
('PT634', 'GRAPARI TELKOMSEL', 'JL. PANGERAN ANTASARI VILLA CITRA BLOK RE 1-111', '(0721) 253811', 'SUKARAME', 'BANDARLAMPUNG', '', 'Yepi'),
('PT635', 'KANTOR KEMENTRIAN AGAMA KAB. LAMPUNG BARAT', 'JL. MAWAR NO. 7 WAY MENGAKU', '(0728) 21062', 'LIWA', 'LAMPUNG BARAT', '', 'Yepi'),
('PT636', 'KOMANDO RESORT MILITER 043/GARUDA HITAM', 'JL. PROKLAMATOR NO. 165 BANDAR JAYA', '', '', '', '', 'Yepi'),
('PT637', 'KOPKAR "DWI KARYA"', 'JL. RAYA ARAH MENGGALA KM 77', '(0725) 7573021', 'TERBANGGI BESAR', 'LAMPUNG TENGAH', '', 'Yepi'),
('PT638', 'KPU KAB. LAMPUNG TENGAH', 'JL. PROKLAMATOR NO. 165 BANDAR JAYA', '', '', '', '', 'Yepi'),
('PT639', 'KUPAS TUNTAS', 'JL. TURI RAYA GG. PERINTIS NO. 24', '(0721) 773331', 'TANJUNG SENANG', 'BANDAR LAMPUNG', '', 'Yepi'),
('PT640', 'NURSA TOUR', 'JL. PANGLIMA POLIM NO.1 BANDAR LAMPUNG', '(0721) 785724', '', '', '', 'Yepi'),
('PT641', 'KANTOR PEMERINTAH DAERAH PESAWARAN', 'JL. RAYA KEDONDONG WAY LAYAP', '', 'GEDONG TATAAN', 'PESAWARAN', '', 'Yepi'),
('PT642', 'PT GIGA PRIMA LESTARI', 'JL. ALAM GAYA NO. 42 BTN II', '(0721) 773106', 'WAY HALIM', 'BANdarlampung', '', 'Yepi'),
('PT643', 'PT PLN PERSERO DISTRIBUSI LAMPUNG AREA TANJUNG KARANG RAYON TELUK BETUNG', 'JL. BASUKI RAHMAT NO. 02 TELUK BETUNG BANDARLAMPUNG', '(0721) 474806', 'teluk Betung', 'bandarlampung', '', 'Tyas'),
('PT644', 'PT PURNA ARENA YUDHA', 'JL. SIMPANG WAY TUBA LAMPUNG', '(0721) 256460', '', '', '', 'Yepi'),
('PT645', 'BUKIT RANDU HOTEL & RESTAURANT', 'Jalan Kamboja No. 1-2 A Kebun Jeruk Bandarlampung', '(0721) 241333', '', '', '', 'Yepi'),
('PT646', 'PT PLN (PERSERO) RAYON KALIANDA', 'jl. raya bakauheni km. 05 Lampung Selatan', '(0721) 321123', '', '', '', 'Yepi'),
('PT647', 'PT ASDP CABANG BAKAUHENI', 'JL. PELABUHAN BAKAUHENI LAMPUNG SELATAN', '(0727) 331032', '', '', '', 'Yepi'),
('PT648', 'PT PLTU SEBALANG (PERSERO) DISTRIBUSI LAMPUNG', 'DESA TARAHAN KETIBUNG LAMPUNG SELATAN', '08117237557', '', '', '', 'Yepi'),
('PT649', 'KANTOR NOTARIS -PPAT SUJONO PARYONO', 'JL. TEUKU UMAR NO.36 KEDATON BANDAR LAMPUNG', '(0721) 771958', '', '', '', 'Yepi'),
('PT650', 'DINAS SOSIAL KOTA BANDAR LAMPUNG', 'JL. PANGLIMA POLIM NO. 1 GEDONG AIR BANDAR LAMPUNG', '(0721) 704928', '', '', '', 'Yepi'),
('PT651', 'PT UTAMA MITRA NUANSA MUDA', 'JL. PRAMUKA RAJABASA PERMAI BLOK S NO. 12 BANDAR LAMPUNG', '08129412255', '', '', '', 'Yepi'),
('PT652', 'UNIT PENYELENGGARA BANDAR UDARA RADIN INTAN II LAMPUNG', 'JL. H. ALAMSYAH RP BRANTI NATAR LAMPUNG SELATAN', '(0721) 7697115', '', '', '', 'Yepi'),
('PT653', 'BADAN PUSAT STATISTIK KOTA METRO', 'JL. AR. PRAWIRANEGARA METRO', '(0725) 41758', '', '', '', 'Yepi'),
('PT657', 'BALAI PENYULUHAN  PERTANIAN PERIKANAN DAN KEHUTANAN (BP3K) KECAMATAN KELUMBAIAN BARAT', 'Jalan Lintas Pertiwi Repong Pekon Lengkukai Tanggamus', '', '', '', '', 'Silvi'),
('PT655', 'DINAS PENGAIRAN DAN PEMUKIMAN UPTD BALAI PENGELOLAAN SUMBER DAYA AIR WILAYAH II', 'Jalan Z.A. Pagar Alam No. 42', '', 'Metro', 'Metro', '', 'Yepi'),
('PT658', 'PUSAT DASKRIMTI KEJAKSAAN AGUNG RI', 'JL. SULTAN HASANUDDIN NO. 1 KEBAYORAN BARU JAKARTA SELATAN', '(021) 7221269', '', '', '', 'Silvi'),
('PT659', 'SMK 2 MEI 87 PRINGSEWU', 'JL. SATRIA NO. 124 PRINGSEWU BARAT', '(0729) 21503', '', '', '', 'Yepi'),
('PT774', 'KANTOR KECAMATAN ABUNG TINGGI', 'Jalan Abdul Gafar, Desa Ulak Rengas', '', 'Abung Tinggi', 'Lampung Utara', '', 'Silvi'),
('PT661', 'PT WIJAYA KARYA BETON', 'Jalan Lintas Sumatra Km 35 Tegineneng, Pesawaran', '''0725 41318', '', '', '', 'Tyas'),
('PT662', 'PENGADILAN NEGERI KELAS IA TANJUNG KARANG', 'Jalan Wolter Monginsidi No. 27', '0721 - 482826', '', 'Bandar Lampung', '', 'Tyas'),
('PT663', 'PT FIKA ABADI MANDIRI', 'Jalan P. Legundi No. 1', '0721 - 707598', 'sukabumi', 'Bandarlampung', '', 'Tyas'),
('PT664', 'PT DWI PUTRA MAKMUR', 'JALAN YOS SUDARSO NO. 3', '0721 - 80708001', 'panjang', 'Bandarlampung', '', 'Tyas'),
('PT665', 'PT DUNIA BARU AIRCON', 'Jalan Sokarno Hatta No. 9', '0721 5611999', '', 'Bandarlampung', '', 'Tyas'),
('PT666', 'CV BASIC ANEKA', 'Jalan Soemant Brojonegoro jalur 2 unila', '085100422876', '', 'Bandarlampung', '', 'Tyas'),
('PT667', 'BALAI BESAR PENGAWAS OBAT DAN MAKANAN', 'Jalan Dr. Susilo 103 - 105', '0721 - 252212', '', 'Bandarlampung', '', 'Tyas'),
('PT668', 'PT INTI BHARU MAS', 'Jalan Tembesu Raya No. 9 Gudang Bulog', '0721 - 7699066', '', 'Bandarlampung', '', 'Tyas'),
('PT669', 'AJB BUMI PUTRA 1912 CAB. TELUK BETUNG', 'Jalan Mayur Salim Batu Bara No. 23 Kupang Teba', '', 'Teluk Betung', 'bandarlampung', '', 'Tyas'),
('PT670', 'CV 3 PILAR', 'Jalan Tembesu 4 No. 12', '082182144418', 'Kedaton', 'Bandarlampung', '', 'Silvi'),
('PT671', 'AHASS TUNAS MOTOR', 'Jalan Ikan Tenggiri No. 54', '', 'teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT672', 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL PEMERINTAH KABUPATEN PRINGSEWU', 'Komplek Perkantoran Pemerintah Kabupaten Pringsewu', '', 'Pringsewu', '', '', 'Yepi'),
('PT673', 'HORISON LAMPUNG', 'Jalan Kartini No 88 Bandar Lampung 35111', '(0721) 8030515', 'TANJUNG Karang', 'Bandarlampung', '', 'Yepi'),
('PT674', 'LAMPUNG MEGA TELEVISI', 'Jalan Raden Imba No. 39', '(62-721) 472108', 'Kemiling', 'Bandarlampung', '', 'Yepi'),
('PT675', 'PT SAMPOERNA TELEKOMUNIKASI INDONESIA', 'Jalan Gajah Mada No 39 Kotabaru Bandar Lampung', '(0721) 241157', 'WAY HAlim', 'Bandarlampung', '', 'Yepi'),
('PT676', 'BTPT LAMPUNG', 'Jalan Hi.Z.A. Pagar Alam No 1A Rajabasa Bandar Lampung', '(0721) 781776', 'rajabasa', 'Bandarlampung', '', 'Yepi'),
('PT677', 'DINAS PERINDUSTRIAN PROVINSI LAMPUNG', 'Jalan Cut Meutia No 44 Teluk Betung Bandarlampung', '(0721) 470305', 'Teluk Betung', 'Bandarlampung', '', 'Yepi'),
('PT678', 'BALAI BESAR PENGAWAS OBAT DAN MAKANAN BANDAR LAMPUNG', 'Jalan Dr. Susilo No 105', '(0721) 252212', 'Pahoman', 'Bandarlampung', '', 'Yepi'),
('PT679', 'HARIAN JAWA POS GROUP RAKYAT LAMPUNG', 'Jalan Sultan Haji No 4 Sepang Jaya Kedaton Bandar Lampung', '(0721) 786014', 'Kedaton', 'Bandarlampung', '', 'Yepi'),
('PT680', 'CV DUNIA KOMPUTER', 'Jalan Teuku Umar No 2B Kedaton Bandar Lampung', '(0721) 701980', 'Kedaton', 'Bandarlampung', '', 'Yepi'),
('PT681', 'PT APLIKANUSA LINTAS ARTA', 'Jalan Wolter Monginsidi No 6 C Bandar Lampung', '', 'Teluk Betung', 'Bandarlampung', '', 'Yepi'),
('PT682', 'GROWING HOPE', 'Perum Palmsville Residence Blok A1-A3 Way Halim Bandar Lampung', '', 'Way Halim', 'Bandarlampung', '', 'Yepi'),
('PT683', 'KECAMATAN BUMI WARAS', 'Jalan Ikan Manyung No. 1 Sukaraja', '0721 - 476093', 'Teluk Betung', 'bandarlampung', '', 'Tyas'),
('PT684', 'PT SUMBER BUANA DWIABADI', 'Jalan Tembesu No. 18 Campang Raya Sokarno Hatta KM. 9', '', 'tanjung karang timur', 'Bandarlampung', '', 'Tyas'),
('PT685', 'PT FINANSIA MULTI FINANCE CAB. METRO', 'Jalan Yos Sudarso No. 3', '', '', 'Metro', '', 'Tyas'),
('PT686', 'PT WAHANA RAHARDJA', 'Jalan Ikan Tenggiri No. 51', '0721 4847875', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT687', 'PT KARYA ADI FASILITY', 'Jalan Turi Raya Gg. Kelapa Warna No. 83', '085758905254', 'Tanjung Senang', 'Bandarlampung', '', 'Tyas'),
('PT688', 'CV SUMBER BUMI', 'Jalan Branti Raya, Pejambon KM. 4', '0721 782108', '', 'Pesawaran', '', 'Tyas'),
('PT689', 'LAMPUNG NEWS PAPER', 'Jalan Gatot Subroto No. 16', '0721 266597', 'Pahoman', 'Bandarlampung', '', 'Tyas'),
('PT690', 'PT WAHANA SEMESTA LAMSEL(RADAR LAMPUNG SELATAN)', 'Jalan Gatot Subroto', '', 'Pahoman', 'Bandarlampung', '', 'Tyas'),
('PT691', 'CV DEMANGAN', 'Jalan P. Legundi No. 9', '081500403944', 'Sukarame', 'Bandarlampung', '', 'Tyas'),
('PT692', 'CV TUNAS BARU ELEKTRIK', 'Jalan H. Said Perum Servitia Blok F No. 2-3 Kota Baru', '0721 251774', '', 'Bandarlampung', '', 'Tyas'),
('PT693', 'GLOBAL PROPERTY LAMPUNG', 'Jalan M Nur II No. 37', '0721 788544', 'Sepang Jaya', 'Bandarlampung', '', 'Tyas'),
('PT99911', 'PERUM JAMKRINDO', 'Jl. Teuku Umar No. 10 E-F Kedaton, Bandar Lampung 35141', '0721-778511', '', '', '', 'Yepi'),
('PT695', 'PT FPG INSURANCE INDONESIA', 'Jalan Gajah Mada No 85', '', 'Kota baru', 'Bandar Lampung', '', 'Tyas'),
('PT696', 'PUSAT KOPERASI KREDIT CARAKA UTAMA', 'Jalan Z.A. Pagar Alam Ruko No 4 Rajabasa Bandar Lampung', '789351', 'Raja Basa', 'Bandarlampung', '', 'Yepi'),
('PT697', 'BANK BNI SYARIAH', 'JALAN JEND. SUDIRMAN NO.62', '0721 242528', 'Tanjung Karang', 'BANDARLAMPUNG', '', 'Tyas'),
('PT698', 'PT BFI FINANCE INDONESIA', 'JALAN GAJAH MADA NO. 55', '', 'Kota Baru', 'Bandar Lampung', '', 'Tyas'),
('PT699', 'PT PLN PERSERO RAYON SUTAMI', 'jalan satria tanjung bintang', '', '', 'Lampung Selatan', '', 'Tyas'),
('PT700', 'PT BPR SYARIAH KOTABUMI', 'Jalan Jalan ZA. Pagar Alam No. 25 D', '', '', 'Bandar Lampung', '', 'Tyas'),
('PT701', 'PT SINAR WALUYO', 'Jalan Jendral Sudirman No. 94', '0721 253800', 'Pahoman', 'Bandarlampung', '', 'Tyas'),
('PT702', 'MASTER FRIED CHICKEN & BURGER', 'Jalan Ternate No. 64 Jagabaya II', '081278017700', '', 'Bandarlampung', '', 'Tyas'),
('PT703', 'KANTOR ADVOKAT DAN PENASIHAN HUKUM SULTAN SYAHRIR DAN PATERS', 'Jalan Ikan Hiu Blok A No. 3', '', 'TELUK Betung', 'Bandarlampung', '', 'Tyas'),
('PT704', 'PT COCA - COLA AMATIL INDONESIA', 'Jalan Tembesu No. 3', '', 'Campang Raya', 'Bandarlampung', '0721 35004', 'Tyas'),
('PT705', 'PD PASIFIC PUTRA', 'Jalan Soekarno Hatta BK III No. 182', '0721 8011499', '', 'Bandarlampung', '', 'Tyas'),
('PT706', 'INTEGRATED SYSTEM', 'Jalan Kartini No. 52', '0721 251558', 'Tanjung karang', 'Bandarlampung', '', 'Tyas'),
('PT707', 'MK BARU PRINTING', 'JALAN TEUKU UMAR NO. 25/17A', '', 'tanjung karang', 'Bandarlampung', '', 'Tyas'),
('PT708', 'PT LAMPUNG MEDIA GRAFIKA', 'Jalan Z.A. Pagaralam No. 83', '', 'Gedung Meneng', 'Bandarlampung', '', 'Tyas'),
('PT709', 'LPP RRI', 'Jalan Jend. Gatot Subroto No. 26', '', 'Pahoman', 'Bandarlampung', '', 'Tyas'),
('PT710', 'JASA ASURANSI PUTERA INSURANCE', 'Jalan P. Dipenogoro No. 59 Sumur Batu', '', 'Teluk Betung Utara', 'Bandarlampung', '', 'Tyas'),
('PT711', 'AJB BUMI PUTERA', 'Jalan Urip Sumoharjo No. 22A', '', 'Kedaton', 'Bandarlampung', '', 'Tyas'),
('PT712', 'PT ASTRA INTERNATIONAL', 'Jalan A. Yani No. 1 Tanjung Karang', '', '', '', '', 'Tyas'),
('PT713', 'PT ASMI HIDAYAT', 'Jalan WR. Supratman Gang Pegadaian No. 12', '', 'teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT714', 'PT SUN LIFE FINANCIAL SYARIAH', 'Jalan Jendral Sudirman No. 68 D Rawa Laut', 'D', 'Enggal', 'Bandarlampung', '', 'Yepi'),
('PT715', 'KEMENTRIAN KOMUNIKASI DAN INFORMATIKA LOKA MONITOR SPEKTRUM FREKUENSI RADIO', 'Jalan Kramat Jaya Km 14 No. 19 Hajimena', '', 'hajimena', 'Lampung Selatan', '', 'Tyas'),
('PT716', 'PT BINTANG TOEDJOE', 'Jalan Tembesu Raya No. 20 Campang Raya', '', '', 'Bandar Lampung', '', 'Tyas'),
('PT717', 'PT NUTRIFOOD INDONESIA', 'Jalan Soekarno Hatta No. 100', '', '', 'Bandar Lampung', '', 'Tyas'),
('PT718', 'PERGURUAN ISLAM PERKEMAS', 'Jalan Ikan Kerapu No. 13', '', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT719', 'BMT METRO MADANI', 'Jalan Jatimulyo No. 99', '', 'Jati Agung', '', '', 'Tyas'),
('PT720', 'TOKO BUKU AMANAH', 'Jalan Raden Intan Komplek Ruko Pasar Bawah No. 05', '', '', 'Bandar Lampung', '', 'Tyas'),
('PT721', 'RSUD DR. A. DADI TJOKRODIPO', 'JALAN BASUKI RAHMAT NO. 73', '', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT722', 'MTS NURUL ISLAM WAYHUI', 'Jalan P. Damar Gang Madrasah No. 101 Wayhui', '', '', '', '', 'Tyas'),
('PT723', 'PT GRAHA SENTRAMULYA', 'Jalan Gajah mada Perum Taman Gading Jaya Blok A-1 No. 2 Kotabaru', '(0721) 256497', 'Tanjung Karang Pusat', 'Bandarlampung', '', 'Yepi'),
('PT724', 'A.P.A KONVEKSI', 'Jalan Z.A. Pagaralam No. 10', '', 'kedaton', 'Bandarlampung', '', 'Tyas'),
('PT725', 'PT FORTUNA MEGAH PERKASA', 'DESA PARDASUKA KEC. KATIBUNG', '', '', '', '', 'Tyas'),
('PT726', 'UNIVERSITAS ISLAM NEGERI RADEN INTAN LAMPUNG', 'Jalan Letnan Kolonel H. Endro Suratmin', '', 'Sukarame', 'Bandarlampung', '', 'Yepi'),
('PT727', 'KECAMATAN LABUHAN RATU PROVINSI LAMPUNG', 'Jalan Soekarno Hatta No. 9 Labuhan Ratu Bandar Lampung', '(0721) 703362', 'Rajabasa', 'Bandarlampung', '', 'Yepi'),
('PT728', 'PT AGRICON PUTRA CITRA OPTIMA', 'JALAN WIJAYA KUSUMA NO. 25 RAWALAUT', '', '', '', '', 'Tyas'),
('PT729', 'PT MARGA NUSANTARA JAYA', 'Jalan Pulau Bacan No. 6/15A Jagabaya II', '', '', '', '', 'Tyas'),
('PT730', 'POLITEKNIK KESHATAN TANJUNG KARANG', 'Jalan Soekarno - Hatta No. 6 Bandar Lampung', '(0721) 783852', 'Tanjung Karang', 'Bandarlampung', '', 'Yepi'),
('PT731', 'PT KERETA API INDONESIA (PERSERO) DIVRE IV TANJUNG KARANG', 'Jalan Teuku Umar No. 23 Bandar Lampung', '(0721) 2563142', 'Tanjung Karang', 'Bandarlampung', '', 'Yepi'),
('PT732', 'PT JASAPRIMA INDOKENCANA', 'Jalan Ikan Mas No. 6 Tanjung Bintang Lampung Selatan', '(0721) 351057', 'Tanjung Bintang', 'Lampung Selatan', '', 'Yepi'),
('PT733', 'PT MEDIATAMA AMRITA DIGITAL', 'Jalan Daussalam No. 64 Kel. Langkapura Baru Bandar Lampung', '', 'Tanjung Karang', 'Bandarlampung', '', 'Yepi'),
('PT734', 'PT BANK RAKYAT INDONESIA (PERSERO) TBK KANTOR WILAYAH', 'Jalan Raden Intan No. 51 Bandar Lampung', '(0721) 259340', 'Tanjung Karang', 'Bandarlampung', '', 'Yepi'),
('PT735', 'BELITANG STAMPEL', 'Jalan Z.A. Pagaralam', '', 'Kedaton', 'Bandarlampung', '', 'Tyas'),
('PT736', 'PT BUKIT ASAM (PERSRO) TBK.', 'Jalan Soekarno hatta Km. 15 Panjang -Bandar Lampung', '(0721) 31545', 'Panjang', 'Bandarlampung', '', 'Yepi'),
('PT737', 'DIAZ PROMOSI', 'Jalan Imam Bonjol Gedung Air Bandar Lampung', '', 'Kemiling', 'bandarlampung', '', 'Yepi'),
('PT738', 'SRIWIJAYA AIR', 'Jalan Jend. Sudirman 5-A', '', '', '', '', 'Tyas'),
('PT739', 'PT ASURANSI FGP INDONESIA', 'JALAN P. DIPONEGORO NO. 07 GOLAK BALIK TELUK BETUNG UTARA', '', '', '', '', 'Tyas'),
('PT740', 'PT PELANGI SEJAHTERA', 'Jalan Tulang Bawang No. 4 Enggal', '', '', '', '', 'Tyas'),
('PT741', 'CLIPAN FINANCE', 'JALAN JEND. SUDIRMAN NO. 42', '', 'Enggal', 'Bandarlampung', '', 'Yepi'),
('PT742', 'PERCETAKAN DETUDE', 'Jalan Dr. Samratulangi Satri I Penengahan', '', '', '', '', 'Tyas'),
('PT743', 'KANTOR KELURAHAN LANGKAPURA BARU', 'Jalan H. Abdul Wais Kec. Langkapura', '', '', '', '', 'Tyas'),
('PT744', 'PT MANDALA LINTAS NUSA', 'Jalan Cut Nyak Dien No. 39B \nBandarlampung', '(0721) 240654', 'Tanjung Karang', 'Bandarlampung', '', 'Yepi'),
('PT745', 'PT JALUR NUGRAHA EKAKURIR (JNE) AGEN KIMAJA', 'Jalan Kimaja No. 89 Bandarlampung', '', 'way halim', 'bandarlampung', '', 'Yepi'),
('PT746', 'PT GRAHA RAKYAT', 'Jalan Sultan Haji No. 4', '', 'Sepang Jaya', 'Bandarlampung', '', 'Tyas'),
('PT747', 'PT MUSTIKA RATU', 'JALAN TEMBESU NO. 8A/25 CAMPANG RAYA', '', '', '', '', 'Tyas'),
('PT748', 'PT GEMILANG AGRO AGRAMIN', 'Jalan Pangeran Antasari Perumahan Villa Citra I Blok. O No. 8', '', '', '', '', 'Tyas'),
('PT749', 'KONSULTAN PAJAK JOHANES', 'Jalan PRM Kota Karang Blok D No.1', '', '', '', '', 'Tyas'),
('PT750', 'DINAS PERPUSTAKAAN DAN KEARSIPAN', 'Jalan Prof. Nyamin No. 33', '', '', '', '', 'Tyas'),
('PT751', 'KONSULTAN PAJAK JOHANES', 'JALAN PRM KOTA KARANG BLOK D NO.1', '', '', '', '', 'Tyas'),
('PT752', 'PT SANSER', 'JALAN RADEN GUNAWAN I HAJIMENA', '', '', 'LAMPUNG SELATAN', '', 'Tyas'),
('PT753', 'SMK  2 MEI', 'Jalan Abdul Muis No.18, Gedong Meneng', '+62 721 703852', 'Raja Basa', 'Bandarlampung', '', 'Tyas'),
('PT754', 'SMK 2 MEI', 'JL. ABDUL MUIS NO.18, GEDONG MENENG', '+62 721 703852', 'Raja Basa', 'Bandarlampung', '', 'Tyas'),
('PT755', 'TOKO CITRA ABADI', 'Jalan KH. Hasyim Ashari No. 61', '', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT756', 'PAHALA KENCANA EXPRESS', 'Jalan Pangeran Antasari Ruko No. 86', '', 'Kedamaian', 'Bandarlampung', '', 'Tyas'),
('PT757', 'EZY COPY CENTER', 'Jalan Bumi Manti II Kampung Baru', '', '', '', '', 'Tyas'),
('PT758', 'TOKO RULLY MART', 'Jalan Imam Bonjol No. 529', '0721 270823', 'kemiling', 'Bandarlampung', '', 'Tyas'),
('PT759', 'JNE SULTAN AGUNG II', 'Jalan Sultan Agung No. 39', '', 'kedaton', 'bandarlampung', '', 'Tyas'),
('PT760', 'PT BINTANG BUANA JAYA', 'Jalan Tamin - Balai Desa No. 28/34 Sukajawa Tanjung Karang Barat', '0721 780650', '', 'Bandar Lampung', '', 'Tyas'),
('PT761', 'CV AN-NUR PERSADA NUSANTARA', 'JALAN SOEMANTRI BROJONEGORO UNILA', '', '', '', '', 'Tyas'),
('PT762', 'PENGADILAN TINGGI AGAMA BANDAR LAMPUG', 'Basuki Rahmat  No. 24, Sumur Putri', '+62 721 489813', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT763', 'LEMBAGA PENJAMINAN MUTU PENDIDIKAN', 'Jalan Gatot Subroto No. 44 A', '', 'Pahoman', 'Bandarlampung', '', 'Tyas');
INSERT INTO `tb_perusahaan` (`kd_perusahaan`, `nama_perusahaan`, `alamat`, `telpon`, `kecamatan`, `kabupaten`, `kode_pos`, `nama_user`) VALUES
('PT764', 'SIMPUR POULTRY SHOP', 'Jalan Jend. Suprapto 152 - 154 Bandar lampung', '(0721) 701744', 'tanjung karang', 'Bandarlampung', '', 'Yepi'),
('PT765', 'CV FAJAR LESTARI', 'Jalan H. Agus Anang Kmp. Ketapang No. 2 Kuala Panjang', '', 'Panjang', 'Bandarlampung', '', 'Tyas'),
('PT766', 'RETINA DESIGN & PRINTING', 'Jalan Pisang No. 85 Pasir Gintung', '(0721) 263953', 'Tanjung Karang', 'Bandarlampung', '', 'Yepi'),
('PT767', 'KOPERASI KARYAWAN TERATAI LAMPUNG', 'Jalan Ir. Sutami Km. 8,5 Campang raya Tanjung Karang Timur', '(0721) 350336', 'Tanjung Karang Timur', 'Bandarlampung', '', 'Yepi'),
('PT770', 'BANK PASAR INDUK BRI', 'Jalan Tamin No. 12 D', '', 'Tanjung Karang', 'Bandarlampung', '', 'Silvi'),
('PT769', 'PT BANK RAKYAT INDONESIA (PERSERO) TBK. KANTOR WILAYAH', 'Jalan Raden Intan No. 51', '(0721) 266363', 'Tanjung Karang', 'Bandarlampung', '', 'Tyas'),
('PT776', 'GINK TECHNOLOGY', 'Jalan Way Pangubuan No. 16', '', 'Pahoman', '', '', 'Tyas'),
('PT777', 'G - HOTEL SYARIAH', 'Jalan Urip Sumoharjo No. 182 Gunung Sulah', '(0721) 8014455', 'Way Halim', 'Bandarlampung', '', 'Yepi'),
('PT778', 'PT INDAH LOGISTIK CARGO', 'Jalan Soekarno Hatta No. 2 H', '', 'Kedaton', 'Bandarlampung', '', 'Yepi'),
('PT779', 'KAYLA COMPUTER', 'Jalan Imam Bonjol Km. 11 No. 72', '(0721) 272090', 'Kemiling', 'Bandarlampung', '', 'Yepi'),
('PT780', 'CV SARANA SUKSES', 'Jalan P. Tirtayasa', '(0721) 350757', 'Sukabumi', 'Bandarlampung', '', 'Yepi'),
('PT781', 'DINAS TANAMAN PANGAN DAN HOLTIKULTURA PROVINSI LAMPUNG', 'Jalan Hi. Zainal Abidin Pagar Alam No. 1', '(0721) 780660', 'Raja Basa', 'Bandarlampung', '', 'Yepi'),
('PT782', 'POLDA PROVINSI LAMPUNG', 'Jalan Wr. Supratman No. 7', '', 'Teluk Betung', 'Bandarlampung', '', 'Yepi'),
('PT783', 'KODAM II SRIWIJAYA KOMANDO RESORT MILITER 043 GARUDA HITAM', 'Jalan Teuku Umar No. 85', '', 'Kedaton', 'Bandarlampung', '', 'Yepi'),
('PT784', 'NIKO FURNITURE', 'Jalan Imam Bonjol No. 102 E Ratulangi', '(0721) 7424361', 'Kemiling', 'Bandarlampung', '', 'Yepi'),
('PT785', 'PT SATRIA DUTA PERKASA', 'Soekarno Hatta Jalan Teluk Lampung No. 11 Pidada III', '(0721) 31923', 'Panjang', 'Bandarlampung', '', 'Yepi'),
('PT826', 'PT FIF GROUP', 'Jalan Teuku Umar No. 67', '', 'Kedaton', 'Bandarlampung', '', 'Yepi'),
('PT970', 'DINAS PERDAGANGAN PROVINSI LAMPUNG', 'Jalan Cut Mutia No. 28 B', '', '', 'bandarlampung', '', 'Yepi'),
('PT786', 'PT TELKOMSEL BRANCH LAMPUNG', 'Jalan P. Antasari Komp. Villa Citra Blok RE I-III Bandar Lampung', '(0721) 253811', 'way halim', 'Bandarlampung', '', 'Yepi'),
('PT787', 'SMK PGRI 2 BANDARLAMPUNG', 'Jalan Khairil Anwar No. 79', '(0721) 251701', 'Tanjung Karang Pusat', 'Bandarlampung', '', 'Yepi'),
('PT788', 'PT PLN (PERSERO) SEKTOR PEMBANGKIT SEBALANG', 'Jalan Lintas Sumatera Km. 22 Dusun Sebalang Desa Tarahan Kec. Ketibung Lampung Selatan', '08117205044', 'ketibung', 'Lampung Selatan', '35551', 'Yepi'),
('PT789', 'PENGADILAN NEGERI MENGGALA', 'Jalan Cemara Kompleks Perkantoran PEMDA', '(0721) 21670', 'Menggala', 'Tulang Bawang', '', 'Silvi'),
('PT791', 'SMA YADIKA BANDARLAMPUNG', 'Jalan Soekarno Hatta, Labuhan Dalam', '(0721) 772760', 'Rajabasa', 'Bandarlampung', '', 'Silvi'),
('PT792', 'PT TELKOMSEL PALAPA', 'Jalan Cut Nyak Dien No. 78 Palapa', '08117471777', 'Tanjung Karang Pusat', 'Bandarlampung', '', 'Silvi'),
('PT793', 'KPRI ANDAN JEJAMA PESAWARAN', 'Jalan Museium Transmigrasi', '085357259446', 'Gedong Tataan', 'Pesawaran', '', 'Silvi'),
('PT796', 'PENGADILAN AGAMA KELAS 1A', 'Jalan Untung Suropati No. 2 Kampung Baru', '(0721) 708629', 'Kedaton', 'Bandarlampung', '', 'Silvi'),
('PT797', 'KOPERASI SYARIAH BERSINAR BTM LAMPUNG TENGAH', 'Jalan Merdeka No. 5', '', 'Bandar Jaya', 'Lampung Tengah', '', 'Silvi'),
('PT798', 'PT ASURANSI FPG', 'Jalan Diponegoro, Kupang Teba', '(0721) 5603494 / 5603495', 'Teluk Betung Utara', 'Bandarlampung', '', 'Silvi'),
('PT799', 'DINAS PEMUDA DAN OLAHRAGA PROVINSI LAMPUNG', 'Jalan Hasannudin Gang Kantor Pos No. 26', '', 'Teluk Betung', '', '', 'Tyas'),
('PT800', 'PERGURUAN ISLAM AL KHAIRIYAH', 'Jalan Drs Alimudin Umar Gang Hasmar No. 1', '', '', '', '', 'Tyas'),
('PT801', 'PTPN VII UNIT USAHA KEDATON', 'Way Galih Kecataman Tanjung Bintang', '', '', '', '', 'Tyas'),
('PT802', 'DINAS PEKERJAAN UMUM DAN PENATAAN RUANG', 'Jalan Jend. Ahmad Yani No. 09 Komplek Pemda', '', '', '', '', 'Tyas'),
('PT803', 'HOTEL WIDARA ASRI', 'Jalan KH. Ahmad Dahlan No. 97 Kupang Raya', '', 'Teluk Betung Utara', 'Bandarlampung', '', 'Tyas'),
('PT804', 'SMK NUSANTARA TULANG BAWANG', 'Komplek Masjid Miftahul Jannah Pasar Unit II Banjar Agung Tulang Bawang', '', 'Banjar Agung', 'TULANG BAWANG', '', 'Yepi'),
('PT805', 'PT MITRA MANAJEMEN BISNIS SOLUSINDO (MMBS)', 'Jalan Gajah Mada No. 17', '', 'Pahoman', 'Bandarlampung', '', 'Yepi'),
('PT806', 'SMP IT DAARUL’ILMI', 'Perum BKP Blok A No. 37', '', 'Kemiling', 'Bandarlampung', '', 'Yepi'),
('PT807', 'CV PRIMAMEDIA ADICITRA', 'Jalan Kamboja No. 56', '', 'Enggal', 'Bandarlampung', '', 'Yepi'),
('PT808', 'PT BACH MULTI GLOBAL LAMPUNG', 'Jalan M.K. Baginda RT. 05 RW. 05 No. 9 Bandarlampung', '', '', '', '', 'Yepi'),
('PT809', 'CHANDRA’S TAILOR', 'Jalan Teuku Umar No. 37B', '', 'kedaton', 'Bandarlampung', '', 'Yepi'),
('PT810', 'SMK NEGERI 3 METRO', 'Jalan Kemiri Iringmulyo 15A', '', 'Metro', '', '', 'Yepi'),
('PT811', 'PT ASTRA INTERNASIONAL TBK', 'Jalan RA. Rasyid Labuhan Dalam Tanjung Seneng', '', '', 'Bandar lampung', '', 'Tyas'),
('PT812', 'PT WOO TEKH INDONESIA', 'Jalan ZA Pagaralam Gang PU No. 57', '', 'Kedaton', 'Bandarlampung', '', 'Tyas'),
('PT813', 'THE MAGNOLIA FLORAL CAFÉ', 'Jalan Jendral Sudirman No. 108 G/H', '', 'Pahoman', 'Bandarlampung', '', 'Tyas'),
('PT814', 'UD MITRAINDO TEKNIK', 'Jalan Teuku Umar No. 17 C-D', '(0721) 711177', 'Kedaton', 'Bandarlampung', '', 'Silvi'),
('PT815', 'GRAHA PENA RADAR LAMPUNG', 'Jalan Sultan Agung No. 18', '(0721) 787987', 'Kedaton', 'Bandarlampung', '', 'Silvi'),
('PT816', 'FIF GROUP SEPUTIH AGUNG', 'Jalan Armed', '', 'Seputih Agung', 'Lampung Tengah', '', 'Silvi'),
('PT817', 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL KABUPATEN PRINGSEWU', 'Komplek Perkantoran Pemerintahan Kabupaten', '', 'Pringsewu', 'pringsewu', '', 'Yepi'),
('PT818', 'PT BANK SYARIAH MANDIRI AREA LAMPUNG', 'Jalan Diponogoro No. 189 Bandar Lampung', '', 'teluk betung', 'Bandarlampung', '', 'Yepi'),
('PT819', 'PT BANGUN INDO BUMI LESTARI', 'Jalan Nusantara No. 12 Labuhan Ratu', '', 'Kedaton', 'Bandarlampung', '', 'Yepi'),
('PT820', 'VENTURA STUDIOS', 'Jalan Sultan Haji No. 30 Kedaton Bandar Lampung', '', 'kedaton', 'Bandarlampung', '', 'Yepi'),
('PT821', 'PT OLAM INDONESIA (COCOA)', 'Jalan KI.H. Agus Anang No. 36/22 Way Lunik Bandar Lampung', '', 'teluk Betung', 'bandarlampung', '', 'Yepi'),
('PT822', 'PT LAMPUNG ANDALAS SHIPBULDING & ENGINERING', 'Jalan Raya Bakauheni Km. 16 Tarahan - Lampung Selatan', '', 'bakauheni', 'Lampung Selatan', '', 'Yepi'),
('PT959', 'DINAS KOMUNIKASI, INFORMATIKA DAN STATISTIK PROVINSI LAMPUNG', 'Jalan RW. Mongonsidi', '', 'Teluk Betung', 'Bandarlampung', '', 'Yepi'),
('PT824', 'PT ASTRA INTERNATIONAL TBK DAIHATSU CABANG LAMPUNG', 'Jalan Jendral Ahmad Yani No. 1 Tanjung Karang Pusat', '', '', '', '', 'Tyas'),
('PT825', 'PT ASSA RENT', 'JALAN PANGERAN EMIR M. NOER NO. 57 PALAPA', '', '', '', '', 'Tyas'),
('PT827', 'PT CITRA VAN TITIPAN KILAT(TIKI)', 'Jalan Nusantara No. 2', '', 'Way Halim', 'Bandarlampung', '', 'Tyas'),
('PT828', 'SMP NEGERI 5 BANDAR LAMPUNG', 'Jalan Beo No. 134 Tanjungagung Raya', '', 'Kedamaian', 'Bandarlampung', '', 'Yepi'),
('PT829', 'PT DELTA ABADI NUSANTARA L.', 'Jalan Soekarno Hatta No. 259', '', 'panjang', 'Bandarlampung', '', 'Yepi'),
('PT830', 'AJB BUMI PUTERA 1912 UNIT LAYANAN ADMINISTRASI MENGGALA', 'Jalan Lintas Timur No. 100', '', 'Menggala', 'Tulang Bawang', '', 'Yepi'),
('PT831', 'PT PRANA KURNIA PRATAMA', 'Jalan Onta No. 54', '', 'Kedaton', 'Bandarlampung', '', 'Yepi'),
('PT832', 'DINAS PEKERJAAN UMUM DAN PENATAAN RUANG PROVINSI LAMPUNG', 'Jalan Hi. Z.A. Pagar Alam Km. 11', '', 'Raja Basa', 'Bandarlampung', '', 'Yepi'),
('PT833', 'KPP PRATAMA NATAR', 'Jalan Raya Candimas KM. 24,5', '', 'Natar', 'Lampung Selatan', '', 'Yepi'),
('PT834', 'KOMISI PENYIARAN DAERAH LAMPUNG', 'Jalan Bougenvile No. 6', '', 'Pahoman', 'Bandarlampung', '', 'Yepi'),
('PT835', 'KODIM 041', 'Jalan Imam Bonjol', '', 'Kemiling', 'Bandarlampung', '', 'Tyas'),
('PT836', 'LAMPUNG DIESEL', 'Jalan Raden Intan No. 15', '', '', '', '', 'Tyas'),
('PT837', 'KOPDIT SEJAHTERA', 'Jalan Teuku Umar No. 300', '', 'Kedaton', 'Bandarlampung', '', 'Yepi'),
('PT838', 'YAMAHA LAUTAN TEDUH SRIBAWONO', 'Jalan Raya Simpang Sribhawono No.12', '082183645557', 'Bandar Sribawono', 'Lampung Timur', '', 'Silvi'),
('PT839', 'PT WASKITA KARYA (PERSERO)', 'Sabah Balau', '', 'Tanjung Bintang', 'Lampung Selatan', '', 'Yepi'),
('PT840', 'SD AL AZHAR 2 BANDAR LAMPUNG', 'Jalan Gn Tanggamus Raya No. 34 Perumnas', '(0721) 771483', 'Way Halim', 'Bandarlampung', '', 'Yepi'),
('PT841', 'SALSABILA PRINT TEKNIK', 'Jalan Teluk Bone Gang Teluk Pandan No. 43', '', 'Teluk Betung', 'Bandarlampung', '', 'Yepi'),
('PT842', 'PT TRIJAYA ABADI MANDIRI', 'Jalan Letjen Suprapto Cempaka Putih', '', 'jakarta', 'jakarta', '', 'Yepi'),
('PT843', 'PT TIKI JALUR NUGRAHA EKAKURIR (JNE)', 'Jalan Imam Bonjol No. 351', '', 'kemiling', 'bandarlampung', '', 'Yepi'),
('PT844', 'SOFTWARE HOUSE LAMPUNG', 'Jalan Sultan Haji No. 48 Ruko C Kota Sepang', '085380653338', 'kota sepang', 'Bandarlampung', '', 'Tyas'),
('PT845', 'SMA YP. UNILA', 'Jalan Jend. R. Suprapto No. 88', '(0721) 254502', 'tanjung karang', 'Bandarlampung', '', 'Yepi'),
('PT846', 'PT PLN (PERSERO) DISTRIBUSI LAMPUNG AREA TANJUNG KARANG', 'Jalan Pangeran Diponogoro No. 14', '(0721) 263206', 'TELUk Betung', 'Bandarlampung', '', 'Tyas'),
('PT847', 'YAYASAN NURUL HUDA LAMPUNG', 'Jalan Serbajadi Pemanggilan', '(0721) 780472', 'natar', 'lampung Selatan', '', 'Yepi'),
('PT848', 'SMK NEGERI 1 BANDAR LAMPUNG', 'Jalan P. Morotai No. 33 Jagabaya III', '', 'way halim', 'bandarlampung', '', 'Tyas'),
('PT849', 'SABLON CORETAN 13', 'Jalan Nawawi Perum Nunyai Indah Permai No. 8', '', 'raja Basa', 'bandarlampung', '', 'Tyas'),
('PT850', 'ANT CELULAR', 'jalan imam bonjol no. 39', '085279791072', 'kemiling', 'bandarlampung', '', 'Tyas'),
('PT851', '1000 KARYA', 'bandarlampung', '', 'sukarame', 'bandarlampung', '', 'Tyas'),
('PT852', 'PT BANGUNINDO BUMI LESTARI', 'JALAN UNTUNG SUROPATI', '', 'LABUHAN RATU', 'bandarlampung', '', 'Tyas'),
('PT853', 'DINAS PEKERJAAN UMUM DAN PERUMAHAN RAKYAT BINA MARGA', 'Jalan Dr Cipto Mangunkusumo No. 54', '', 'teluk Betung utara', 'Bandarlampung', '', 'Tyas'),
('PT854', 'PT BINA SARANA DINAMIKA', 'Jalan Griya Persada Blok II A No. 1', '', 'way halim', 'Bandarlampung', '', 'Tyas'),
('PT855', 'CV METRO MOTOR', 'Jalan P. Antasari No. 122', '', '', 'bandarlampung', '', 'Tyas'),
('PT856', 'PT BINTANG KHARISMA JAYA', 'Jalan Raya Soekarno Hatta No. 5A', '(0721) 770410', 'tanjung senang', 'bandarlampung', '', 'Yepi'),
('PT857', 'PERCETAKAN A1 PRINTING', 'Jalan Pisang No. 1', '085273871008', 'Tanjung Karang', 'bandarlampung', '', 'Yepi'),
('PT858', 'NEGORO TRUSS', 'Jalan Urip Sumoharjo No. 209 AB', '082374052261', 'sukarame', 'bandarlampung', '', 'Yepi'),
('PT859', 'KOMISI INFORMASI PROVINSI LAMPUNG', 'Jalan Basuki Rahmat No. 29', '', 'teluk Betung', 'bandarlampung', '', 'Yepi'),
('PT860', 'BADAN KEPEGAWAIAN DAERAH PROVINSI LAMPUNG', 'Jalan Drs. Warsito No. 35', '', 'teluk Betung', 'bandarlampung', '', 'Yepi'),
('PT861', 'PENGADILAN TATA USAHA NEGARA BANDARLAMPUNG', 'Jalan Pangeran Emir M. Noer No. 27', '', '', 'bandarlampung', '', 'Yepi'),
('PT862', 'PT ASURANSI FPG INDONESIA', 'Jalan Gajah Mada No. 85', '', '', 'Bandarlampung', '', 'Yepi'),
('PT863', 'JASARAHARJA PUTERA INSURANCE', 'Jalan Diponogoro No. 59', '', '', 'Bandarlampung', '', 'Yepi'),
('PT864', 'BNP3TKI', 'Jalan Untung Suropati No. 21 A', '', '', 'Bandarlapung', '', 'Yepi'),
('PT865', 'BUMI PUTERA', 'Jalan Raden Intan No. 95', '', 'tanjung karang', 'bandarlampung', '', 'Yepi'),
('PT866', 'KANTOR POS BANDARLAMPUNG', 'Jalan Kyai H. Ahmad Dahlan No. 21', '', 'enggal', 'bandarlampung', '', 'Yepi'),
('PT867', 'JAYA KOMPUTER', 'Jalan Brigjen Katamso Mall Simpur Center Lt 3', '', '', 'bandarlampung', '', 'Yepi'),
('PT868', 'KEMENTRIAN KEUANGAN REPUBLIK INDONESIA', 'Jalan Dr. Susilo No. 19', '', '', 'bandarlapung', '', 'Yepi'),
('PT869', 'PT ALAM KARYA ABADI', 'Jalan Sultan Haji No 97', '', 'sepang Jaya', 'bandarlampung', '', 'Yepi'),
('PT870', 'YAYASAN ABDI KARYA (YADIKA)', 'Jalan Soekarno Hatta', '', '', 'bandarlampung', '', 'Yepi'),
('PT871', 'DINAS TANAMAN PANGAN DAN HORTIKULTURA PROVINSI LAMPUNG', 'Jalan Hi. Zaenal Abidin  Pagar Alam No. 1', '', 'raja Basa', 'bandarlampung', '', 'Yepi'),
('PT872', 'CV. JAYA TECHNOLOGY', 'Jalan Arief Hakim No. 51', '', '', 'Bandarlampung', '', 'Yepi'),
('PT873', 'PT ASTRA DAIHATSU', 'Jalan Bhakti Utama', '', '', 'bandarlampung', '', 'Yepi'),
('PT874', 'KANTOR IMIGRASI KELAS I BANDARLAMPUNG', 'Jalan Hj. Haniah No. 3 Cut Mutia', '', '', 'Bandarlampung', '', 'Yepi'),
('PT875', 'AJB BUMIPUTERA 1912 ULA TELUK BETUNG', 'Jalan Salim Batubara No.23', '', 'Teluk Betung', 'bandarlampung', '', 'Yepi'),
('PT876', 'DIREKTORAT LALU LINTAS LAMPUNG', 'Jalan Pramuka No. 21', '', 'Rajabasa', 'Bandarlampung', '', 'Yepi'),
('PT877', 'LAMPUNG EKSPRES PLUS', 'Jalan Urip Sumoharjo No. 88', '', 'Sukarame', 'Bandarlampung', '', 'Yepi'),
('PT878', 'PENGADILAN NEGERI TANJUNG KARANG KELAS I A', 'Jalan R.W. Monginsidi No. 27', '', 'Teluk Betung', 'Bandarlampung', '', 'Yepi'),
('PT879', 'BINA ERA SATRIATAMA NETWORK', 'Jalan Diponogoro No. 177', '', '', 'Bandarlampung', '', 'Yepi'),
('PT880', 'PT TIKI JALUR NUGRAHA EKAKURIR KANTOR CABANG BANDAR LAMPUNG', 'Jalan Imam Bonjol No. 351', '', '', 'Bandarlampung', '', 'Yepi'),
('PT881', 'BPJS KETENAGAKERJAAN KANTOR CABANG BANDARLAMPUNG', 'Jalan Dr. Warsito No. 4', '', 'Teluk Betung', 'Bandarlampung', '', 'Yepi'),
('PT882', 'KANTOR KESEHATAN PELABUHAN KELAS II PANJANG', 'Jalan Soekarno Hatta No. 112', '', 'Rajabasa', 'Bandarlampung', '', 'Yepi'),
('PT883', 'CV. PUTRA KOMPUTER', 'Jalan Teuku Cik Ditiro Gang Melati No. 9 Beringin Raya', '', 'Kemiling', 'bandarlampung', '', 'Yepi'),
('PT884', 'SMK PELITA', 'Gedong Tataan', '(0721) 94092', 'sukaraja', 'Pesawaran', '35371', 'Tyas'),
('PT885', 'HACCANDRA RADIO NETRWORK', 'Jalan Sultan Agung Blok N No. 1', '', 'Wayhalim Permai', 'Bandarlampung', '', 'Yepi'),
('PT886', 'ARIES CELL', 'Jalan Ratu Dibalau No. 24', '', 'Tanjung Seneng', 'Bandrlampung', '', 'Yepi'),
('PT887', 'PT PATOK EMAS', 'Jalan Ratu Dibalau No. 90 D', '', 'Way Kandis', 'Bandarlampung', '', 'Yepi'),
('PT888', 'SEKOLAH POLISI NEGARA LAMPUNG', 'Jalan Untung Suropati 1', '', 'Kemiling', 'Bandarlampung', '', 'Yepi'),
('PT889', 'RADIO REPUBLIK INDONESIA BANDARLAMPUNG', 'Jalan Gatot Subroto No. 26', '', 'pahoman', 'bandarlampung', '', 'Yepi'),
('PT890', 'BPJS KESEHATAN BANDARLAMPUNG', 'Jl. Zainal Abidin Pagar Alam No.35', '', 'raja Basa', 'bandarlampung', '', 'Yepi'),
('PT891', 'PT BANK PEMBIAYAAN RAKYAT SYARIAH MITRA AGRO USAHA', 'Jalan Hayam Wuruk No. 95 Sawah Lama', '', 'tanjung karang timur', 'bandarlampung', '', 'Yepi'),
('PT892', 'KEPOLISISAN NEGARA REPUBLIK INDONESIA DAERAH LAMPUNG RESOR KOTA BANDARLAMPUNG', 'Jalan. M.T. Haryono 15', '', 'teluk Betung', 'Bandarlampung', '', 'Yepi'),
('PT893', 'DINAS TENAGA KERJA DAN IMIGRASI PROVINSI LAMPUNG', 'Jalan Gatot Subroto No. 28 Tanjung karang Bandarlampung', '', 'tanjung karang', 'bandarlampung', '', 'Yepi'),
('PT894', 'ASOKA LUXURY HOTEL LAMPUNG', 'Gang Cinta Damai No. 16B Jagabaya III Wayhalim', '', 'way halim', 'bandarlampung', '', 'Yepi'),
('PT895', 'PT PELABUHAN INDONESIA II (PERSERO) CABANG PELABUHAN PANJANG', 'Jalan Yos Sudarso No. 337 Panjang Bandarlampung', '', 'panjang', 'bandarlampung', '', 'Yepi'),
('PT896', 'KEMENTRIAN KOMUNIKASI DAN INFORMATIKA BALAI MONITOR SPEKTRUM FREKUENSI RADIO KELAS II LAMPUNG', 'Jalan Kramat Jaya KM 14 No. 9 Hajimena Lampung', '', 'natar', 'lampung Selatan', '', 'Yepi'),
('PT897', 'OTORITAS JASA KEUANGAN PROVINSI LAMPUNG', 'Jalan Way Sekampung No. 9 Bandarlampung', '', 'tanjung karang timur', 'Bandarlampung', '', 'Yepi'),
('PT898', 'UNIVERSITAS LAMPUNG UPT. TEKNOLOGI INFORMASI DAN KOMUNIKASI', 'Jalan Soemantri Brojonegoro No. 1 Gedong Meneng Bnadarlampung', '', 'raja Basa', 'Bandarlampung', '', 'Yepi'),
('PT899', 'DINAS PARIWISATA PROVINSI LAMPUNG', 'Jalan Jend Sudirman No. 29 Bandarlampung', '', 'tanjung karang timur', 'bandarlampung', '', 'Yepi'),
('PT900', 'KANTOR KEMENTRIAN AGAMA KOTA BANDAR LAMPUNG', 'Jalan P.Emir M Noor No. 81 Teluk Betung Utara Bandarlampung', '', 'teluk Betung utara', 'Bandarlampung', '', 'Yepi'),
('PT901', 'PT TELEKOMUNIKASI INDONESIA TBK', 'Jalan Majapahit No. 14', '', 'enggal', 'Bandarlampung', '', 'Yepi'),
('PT902', 'PT ARTABOGA CEMERLANG', 'Campang Raya Tembesu No. 29', '', 'campang Raya', 'bandarlampung', '', 'Yepi'),
('PT903', 'PERCETAKAN PANCAR', 'Jalan Bumi Manti 1 No. 1', '', 'kampung Baru', 'bandarlampung', '', 'Yepi'),
('PT904', 'PT MUKTI PANEL INDUSTRI', 'Jalan Lintas Sumatera KM 45', '', 'Bumi Ratu Nuban', 'Lampung Tengah', '', 'Tyas'),
('PT905', 'PENGADILAN TINGGI TANJUNG KARANG', 'Jalan Cut Mutia No. 42', '', 'teluk Betung', 'bandarlampung', '', 'Yepi'),
('PT906', 'BADAN PERENCANAAN PEMBANGUNAN DAERAH PROVINSI LAMPUNG', 'Jalan RW. Monginsidi No. 223', '', 'TELUK Betung', 'BANDARlampung', '', 'Yepi'),
('PT907', 'UD HOME ACCU', 'Jlan Pulau Legundi No. 318', '', 'sukarame', 'bandarlampung', '', 'Yepi'),
('PT908', 'BADAN PENDAPATAN DAERAH PROVINSI LAMPUNG', 'Jl. Pramuka No. 01 Rajabasa Bandar Lampung', '', '', 'bandarlampung', '', 'Yepi'),
('PT909', 'PT SUMBER SARILAUT PERKASA', 'Jalan RE Martadinata', '', 'Teluk Betung', 'bandarlampung', '', 'Yepi'),
('PT910', 'PT ZIRAQ GOLDY HOLIDAYS', 'Jalan Untung Suropati Komplek Ruko Blok A9', '', 'LABUHAN RAtu', 'BANDARLAMPUNG', '', 'Yepi'),
('PT911', 'KEMENTERIAN PEKERJAAN UMUM DANPERUMAHAN RAKYAT DIREKTORAT JENDERAL BINA MARGA', 'jalan WR Mongonsidi No. 220', '', 'teluk Betung', 'bandarlampung', '', 'Yepi'),
('PT912', 'KEMENTERIAN PEKERJAAN UMUM DAN PERUMAHAN RAKYAT DIREKTORAT JENDERAL BINA MARGA', 'Jalan W.R. Mongonsidi No. 220 T', '', 'teluk Betung', 'bandarlampung', '', 'Yepi'),
('PT913', 'CV MAYER CENTURY', 'Jalan Ratu Dibalau', '', '', 'BANDARLAMPUNG', '', 'Yepi'),
('PT914', 'SMA IT DARUL ILMI', 'Jalan BKP Raya Gang Persada II Blok A No. 37', '', 'kemiling', 'bandarlampung', '', 'Yepi'),
('PT915', 'PT NIPSEA PAINT AND CHEMICALS', 'Jalan Moch Salim No. 39 Way Lunik', '', 'Teluk Betung', 'Bandarlampung', '', 'Tyas'),
('PT916', 'WIDI MANDIRI', 'Jalan Pulau Morotai No.1A-B, Jagabaya III', '0896-7200-2000', 'Way Halim', 'Bandarlampung', '35122', 'Tyas'),
('PT917', 'KOPERASI PEGAWAI REPUBLIK INDONESIA BETIK GAWI KOTA BANDAR LAMPUNG', 'Jalan Wolter Monginsidi 22', '0721) 251780', 'Teluk Betung', 'Bandarlampung', '35116', 'Tyas'),
('PT918', 'SMA IT DAARUL ILMI', 'Jalan Persada II Blok A No.37 BKP Kemiling Permai', '', 'Kemiling', 'Bandarlampung', '35152', 'Tyas'),
('PT919', 'BALAI BESAR PENGAWASAN OBAT DAN MAKANAN', 'Jalan Dr. Susilo No. 105', '(0721) 252212', 'Pahoman', 'Bandarlampung', '35228', 'Tyas'),
('PT920', 'MEGA CENTRAL FINANCE BANDAR LAMPUNG', 'Jl. Gajah Mada No.53 D', '', 'KOTA BAru', 'BANDARLAMPUNG', '', 'Yepi'),
('PT921', 'RUMAH MAKAN BUDI RAHAYU', 'Jalan WR Mongonsidi No. 60', '', 'Gotong Royong', 'bandarlampung', '', 'Yepi'),
('PT922', 'DUA JURAI.CO', 'Jalan Dr. Harun II Perumahan Gading Jaya II', '', 'tanjung karang timur', 'bandarlampung', '', 'Yepi'),
('PT923', 'INDOSAT OREDOO', 'Jalan Wolter Mongonsidi No. 47', '', 'teluk Betung', 'bandarlampung', '', 'Yepi'),
('PT924', 'KANTOR POLISI SEKTOR TANJUNG KARANG BARAT', 'Jalan Bung Tomo No. 12', '', 'tanjung karang barat', 'bandarlampung', '', 'Yepi'),
('PT925', 'PERWAKILAN BKKBN PROVINSI LAMPUNG', 'Jalan Abdi Negara No.3, Gulak Galik, Tlk. Betung Utara', '', 'Teluk Betung', 'Bandarlampung', '35214', 'Tyas'),
('PT926', 'CV PESONA REZEKIPLUS', 'JALAN R.A. KARTINI NO. 48/54 TANJUNG KARANG PUSAT BANDARLAMPUNG', '', 'Tanjung Karang', '', '', 'Tyas'),
('PT927', 'BALAI KARANTINA PERTANIAN KELAS I', 'Jalan Soekarno Hatta Km. 20 Way Laga - Bandarlampung', '', '', '', '', 'Yepi'),
('PT928', 'DINAS CIPTA KARYA DAN PENGELOLAAN SUMBER DAYA AIR PROVINSI LAMPUNG', 'JALAN GATOT SUBROTO NO. 50', '', 'Panjang', 'bandarlampung', '', 'Yepi'),
('PT929', 'BMKG KELAS I RADIN INTEN II', 'Jalan Raya Branti', '', '', '', '', 'Yepi'),
('PT930', 'DINAS PARIWISATA KOTA BANDAR LAMPUNG', 'JALAN WOLTER MONGONSIDI NO. 120', '', 'Teluk Betung', '', '', 'Yepi'),
('PT931', 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA PROVINSI LAMPUNG', 'JALAN BERINGIN II NO. 39', '', 'teluk Betung', 'bandarlampung', '', 'Yepi'),
('PT932', 'DINAS TENAGA KERJA DAN TRASMIGRASI PROVINSI LAMPUNG', 'Jalan Gatot Subroto No. 28', '', 'tanjung karang', 'tanjung karang', '', 'Yepi'),
('PT933', 'HOLLAND BAKERY LAMPUNG', 'JALAN URIP SUMOHARJO No. 200', '', 'way halim', 'bandarlampung', '', 'Yepi'),
('PT934', 'KANTOR KECAMATAN LANGKAPURA BARU', 'Jalan Flamboyan Blok C Bukit Bilabong', '', '', '', '', 'Yepi'),
('PT935', 'SMK PALAPA BANDAR LAMPUNG', 'Jalan Cut Nyak Dien No.87', '', 'palapa', 'bandarlampung', '', 'Yepi'),
('PT936', 'HOTEL HORISON LAMPUNG', 'Jalan Kartini No 88', '', '', 'bandar lampung', '', 'Yepi'),
('PT937', 'KODIM 0411/LT LAMPUNG TENGAH', 'Jalan A. Yani No. 60', '', '', 'Kota Metro', '', 'Yepi'),
('PT938', 'JASA RAHARJA PUTERA', 'Jalan Diponogoro No. 59', '', '', 'bandar lampung', '', 'Yepi'),
('PT939', 'PT BANK RAKYAT INDONESIA (PERSERO) TBK', 'JALAN RADEN INTAN NO. 51 BANDARLAMPUNG', '', '', '', '', 'Yepi'),
('PT940', 'JNE LAMPUNG', 'JALAN IMAM BONJOL NO. 351', '', '', 'Bandar Lampung', '', 'Yepi'),
('PT941', 'KANTOR DPRD PROVINSI LAMPUNG', 'Jalan Wolter Mongonsidi No. 70', '', '', 'bandar lampung', '', 'Yepi'),
('PT942', 'PT LAMPUNG MITRA MEDIA', 'Jalan Putri Balau No. 153', '', '', '', '', 'Yepi'),
('PT943', 'KANTOR KESYAHBANDARAN DAN OTORITAS PELABUHAN KELAS I PANJANG', 'Jalan Yos Sudarso', '', '', 'bandar lampung', '', 'Yepi'),
('PT944', 'KANTOR PELAYANAN PERBENDAHARAAN NEGARA BANDAR LAMPUNG', 'JALAN GATOT SUBROTO NO. 91', '', '', 'Bandar Lampung', '', 'Yepi'),
('PT945', 'KANTOR PERTANAHAN KOTA BANDARLAMPUNG', 'JALAN Drs. Warsito No. 5', '', '', 'bandar lampung', '', 'Yepi'),
('PT946', 'KANTOR WILAYAH KEMENTERIAN AGAMA PROVINSI LAMPUNG', 'JALAN CUT MEUTHIA NO. 27', '', '', 'bandar lampung', '', 'Yepi'),
('PT947', 'KECAMATAN LANGKAPURA BANDAR LAMPUNG', 'Jalan Flamboyan Blok C Bukit Bilabong', '', '', 'bandar lampung', '', 'Yepi'),
('PT948', 'KEMENTERIAN HUKUM DAN HAM KANTOR WILAYAH LAMPUNG', 'Jalan RW. Mongonsidi No. 185', '', '', 'bandar lampung', '', 'Yepi'),
('PT960', 'PT SETIABUDI ABADI LESTARI', 'JALAN PADANG NO. 5', '', '', 'BANDARLAMPUNG', '', 'Tyas'),
('PT950', 'KSPPS BMT AL HANIF', 'JALAN RATU DIBALAU NO. 9A', '', 'way kandis', 'bandarlampung', '', 'Yepi'),
('PT951', 'MA MADARIJUL ULUM', 'JALAN WA RAHMAN TELUK BETUNG UTARA', '', '', 'bandar lampung', '', 'Yepi'),
('PT952', 'PT BINA BUANA RAYA', 'JALAN JATI NO. 2', '', 'tanjung raya', 'bandar lampung', '', 'Yepi'),
('PT953', 'PT SINAR PEMATANG MULIA', 'JALAN RAYA HAJIMENA KM. 14', '', 'Natar', 'Lampung Selatan', '', 'Yepi'),
('PT954', 'SEKRETARIAN DPRD TULANG BAWANG BARAT', 'Jalan Lintas Sumatera', '', 'bandar dewa', 'Tulang Bawang', '', 'Tyas'),
('PT955', 'TOKO FASHION GIRL SIMPUR CENTER', 'Jalan Brigjend Katamso No. 1 Blok F Lantai 2', '', 'Tanjung Karang', 'Bandarlampung', '', 'Yepi'),
('PT961', 'PT WATERINDEX TIRTA LESTARI', 'Jalan Soekarno Hatta Gg. Tembesu No1', '0721 78114', '', 'Bandarlampung', '', 'Tyas'),
('PT962', 'PT BPR UTOMO MANUNGGAL SEJAHTERA LAMPUNG (UTOMO BANK)', 'JALAN RADEN INTAN NO. 93 TANJUNG KARANG', '', 'TANJUNG KARANG', 'Bandarlampung', '', 'Tyas'),
('PT963', 'DINAS PEKERJAAN UMUM KOTA BANDAR LAMPUNG', 'Jalan Pulau Sebesi No. 68', '', '', 'BANDARLAMPUNG', '', 'Tyas'),
('PT964', 'KEMENTRIAN KELAUTAN DAN PERIKANAN', 'Jalan Yos Sudarso Desa Hanura', '', 'padang Cermin', '', '', 'Tyas'),
('PT965', 'PT MEGA JAYA PERKASA MAKMUR', 'Jalan H. Moh Ali Desa Pemanggilan', '', '', '', '', 'Yepi'),
('PT966', 'LEMBAGA PENJAMINAN MUTU PENDIDIKAN LAMPUNG', 'Jalan Gatot Subroto No. 44', '', 'pahoman', 'bandarlampung', '', 'Yepi'),
('PT967', 'DINAS PERKEBUNAN DAN PETERNAKAN PROVINSI LAMPUNG', 'Jalan Basuki Rahmat No. 8', '', 'teluk Betung', 'bandarlampung', '', 'Yepi'),
('PT968', 'PT SAMUDERA LAMPUNG LOGISTIK', 'jalan laksamana yos sudarso no. 88 A', '', 'teluk betung', 'bandarlampung', '', 'Yepi'),
('PT969', 'PT SUMBER TRADA MOTOR', 'JALAN A.YANI NO. 44', '', '', 'bandarlampung', '', 'Yepi'),
('PT971', 'BADAN PEMERIKSA KEUANGAN RI PERWAKILAN PROVINSI LAMPUNG', 'Jalan P. Emir M. Noor No. 11 B, Kelurahan Sumur Putr', '', 'Teluk Betung Utara', 'Bandarlampung', '35211', 'Yepi'),
('PT972', 'KEMKOMINFO BALAI MONITORING SPEKTRUM FREKUENSI RADIO KELAS II LAMPUNG', 'JALAN KRAMAT JAYA KM. 14 NO. 9 HAJIMENA', '', '', 'lampung selatan', '', 'Yepi'),
('PT973', 'PT PUSPA JAYA TRASPORT', 'Jalan Soekarno Hatta No. 8', '', 'labuhan ratu', 'bandarlampung', '', 'Yepi'),
('PT974', 'KEMENTRIAN AGAMA REPUBLIK INDONESIA', 'JALAN CUT MUTIA NO. 27', '', 'teluk Betung', 'bandarlampung', '', 'Yepi'),
('PT975', 'PT BPR UTOMO SEJAHTERA LAMPUNG (UTOMO BANK)', 'JALAN RADEN INTAN N0. 93', '', 'tanjung karang', 'bandarlampung', '', 'Yepi'),
('PT976', 'PT AKR TRANSPORTASI INDONESIA', 'Jalan Sumatera Komplek Pelindo II', '', 'panjang', 'bandarlampung', '', 'Yepi'),
('PT977', 'KOMISI PEMILIHAN UMUM PROVINSI LAMPUNG', 'Jalan Gajah Mada No. 87', '', '', 'bandarlampung', '', 'Yepi'),
('PT978', 'KANTOR KELURAHAN PELITA', 'Jalan Jenderal Suprapto No.2', '', 'enggal', 'bandarlampung', '', 'Yepi'),
('PT979', 'MAKO SATBRIMOB POLDA LAMPUNG', 'Jalan KS tubun No. 38', '', 'pahoman', 'bandarlampung', '', 'Yepi'),
('PT980', 'BPJS KETENAGAKERJAAN LAMPUNG TENGAH', 'Jalan Negara Yukum Jaya', '', '', 'lampung tengah', '', 'Yepi'),
('PT981', 'DINAS KOMUNIKASI DAN INFORMATIKA', 'JALAN MUSTAFA KEMAL', '', '', 'kalianda', '', 'Yepi'),
('PT982', 'CV GLOBAL JAYA', 'Jalan Teuku umar No. 10-11', '', 'Kedaton', 'Bandarlampung', '', 'Yepi'),
('PT983', 'DIREKTORAT JENDERAL BEA DAN CUKAI', 'Jalan Cut Meutia No. 48', '', '', 'bandarlampung', '', 'Yepi'),
('PT984', 'PT ANDAGLOS GLOBAL TEKNOLOGI', 'Jalan Pramuka Sentral Bisnis Kemiling Blok R3 No. 7', '', '', 'bandarlampung', '', 'Yepi'),
('PT985', 'KONSULTAN PAJAK DAN KUASA HUKLUM PENGADILAN PAJAK TETEN DHARMAWAN DAN REKAN', 'Jalan Hayam Wuruk No. 115 A', '', '', 'Bandarlampung', '', 'Yepi'),
('PT986', 'BIRO JASA ALFA MOTOR', 'Jalan Kimaja Blok A3/14 Ruko Perumnas Wayhalim', '', 'Way Halim', 'bandarlampung', '', 'Yepi'),
('PT987', 'KEPOLISIAN NEGARA REBUBLIK INDONESIA DAERAH LAMPUNG RESOR KOTA BANDAR LAMPUNG', 'Jalan MT. Haryono 15', '', '', 'bandarlampung', '', 'Yepi'),
('PT988', 'PT KARYA SUKSES PRIMA', 'Jalan Ridwan Rais Gang Karya No. 1', '', 'Kedamaian', 'Bandarlampung', '', 'Yepi'),
('PT989', 'PT NABASA JAYA', 'Jalan Wolter Mongonsidi No. 24 B', '', '', 'Bandarlampung', '', 'Yepi'),
('PT990', 'RUMAH SAKIT PERTAMINA BINTANG AMIN LAMPUNG', 'Jalan Pramuka No. 27', '', '', 'Bandarlampung', '', 'Yepi'),
('PT991', 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL PEMERINTAH KABUPATEN  PESAWARAN', 'Jalan Raya Kedondong, Way Layap', '', 'Gedong Tataan', 'Pesawaran', '', 'Yepi'),
('PT992', 'PT PALAPA MEDIA INDONESIA', 'Jalan Palapa Blok A No. 1', '', '', 'Bandarlampung', '', 'Yepi'),
('PT993', 'RUMAH SAKIT BHAYANGKARA LAMPUNG', 'Jalan Pramuka No. 88', '', 'Pramuka', 'bandarlampung', '', 'Yepi'),
('PT994', 'SMK BLK BANDARLAMPUNG', 'Jalan Sentot Ali Basya No. 4', '', 'sukarame', 'bandarlampung', '', 'Yepi'),
('PT995', 'PT MITRA MUDA ANUGRAH', 'Jalan Agung Permai 1 Bok C14 No. 4 Jakarta', '', '', '', '', 'Yepi'),
('PT996', 'CV SYSCOMINDO', 'Perum Sriwijaya II Blok A No. 15', '', '', 'BANDARLAMPUNG', '', 'Yepi'),
('PT997', 'CV NUSA CENDANA', 'Jalan Cipto Mangunkusumo No. 87', '', '', 'Bandarlampung', '', 'Yepi'),
('PT998', 'CV MATRIX', 'Jalan Pulau Sebesi Sukarame Bandarlampung', '(0721) 5611536', '', '', '', 'Mumun'),
('PT999', 'SUMBER REZEQI GOLD AND DIAMOND', 'Jalan Hayam Wuruk No. 9 Bandar Lampung', '087770095231', '', '', '', 'Mumun'),
('PT99900', 'BATAS DATA BARU', NULL, NULL, NULL, NULL, NULL, NULL),
('PT99901', 'PT JASA RAHARJA (PERSERO)', 'Jalan Wolter Monginsidi No. 220 A', '0721-487522', '', '', '', 'Yepi'),
('PT99902', 'DROPSHIP BANDARLAMPUNG', 'Jalan Pulau Bangka Bandar Lampung', '', '', '', '', 'Yepi'),
('PT99903', 'PT METRACO INDONESIA INDAH', 'Jalan Yos Sudarso No. 50 C Panjang, Bandar Lampung', '0721-342484', '', '', '', 'Yepi'),
('PT99904', 'PT CHANDRA PERDANA ABADI', 'Jalan Hayam Wuruk Pemuda No. 1 Bandar Lampung', '0721-269814', '', '', '', 'Yepi'),
('PT99905', 'PT PLN (PERSERO) UPDK', 'Jalan Raden Gunawan II No. 4 Rajabasa, Bandarlampung', '0721-704385, 781156', '', '', '', 'Yepi'),
('PT99906', 'KPU KOTA BANDAR LAMPUNG', 'Jl. Pulau Sebesi No.90, Sukarame, Kota Bandar Lampung', '', '', '', '', 'Yepi'),
('PT99907', 'BAPPEDA PROVINSI LAMPUNG', 'Jl. RW. Mongonsidi No. 223 Teluk Betung Bandar Lampung', '0721-485458, 486711', '', '', '', 'Yepi'),
('PT99908', 'KEMENTRIAN AGRARIA DAN TATA RUANG PROVINSI LAMPUNG', 'Jl. Drs. Warsito No. 5 Bandar Lampung, 35215', '0721-486217', '', '', '', 'Yepi'),
('PT99909', 'PT. POS INDONESIA', 'Jalan Kyai Ahmad Dahlan Bandar Lampung', '', '', '', '', 'Yepi'),
('PT99910', 'PT. TASPEN (PERSERO) CAB. BANDAR LAMPUNG', 'Jl. Drs. Warsito No. 3 Teluk Betung Bandar Lampung', '0721-488934, 488935', '', '', '', 'Yepi'),
('PT99913', 'BKD KOTA BANDAR LAMPUNG', 'Jl. Doktor Susilo No. 2 Bandar Lampung', '0721-254756', '', '', '35214', 'Yepi'),
('PT99914', 'KSPPS BTM BIMU LAMPUNG', 'Jalan Pulau Tegal No. 17 Sukarame Bandar Lampung', '0721-8011229', '', '', '', 'Yepi'),
('PT99915', 'KPU PROVINSI LAMPUNG', 'Jl. Gajah Mada No. 87 Tanjung karang Bandar Lampung', '0721-250960', '', '', '', 'Yepi'),
('PT99916', 'PT. GOLDEN SARI', 'Jl. Ikan Hiu No. 97 Bandar Lampung', '', '', '', '', 'Yepi'),
('PT99917', 'TIKI JNE EXPRES', 'Jalan Imam Bonjol No. 351 Kel. Langkapura Bandar Lampung', '0721-8600018', '', '', '', 'Yepi'),
('PT99918', 'KANTOR IMIGRASI KELAS 1 BANDARLAMPUNG', 'Jalan HJ. Haniah No. 3 Cut Mutia Bandar Lampung', '0721-482828', '', '', '', 'Yepi'),
('PT99919', 'PT. GEMILANG MULIA SENTOSA', 'Jl. Nusa Indah Raya No. 8 Sukarame Bandar Lampung', '0852-6931-2018', '', '', '', 'Yepi'),
('PT99920', 'KARYA MUDA USAHA GROUP', 'Jalan RA. Basyid No. 5 Labuhan Dalam, Tanjung Senang, Bandar Lampung', '0721-5615264', '', '', '', 'Yepi'),
('PT99921', 'PT. MANDALA MULTIFINANCE TBK.', 'Jalan Hasanudin No. 3 A-D Bandar Lampung', '', '', '', '', 'Yepi'),
('PT99922', 'BADAN PUSAT STATISTIK KOTA BANDAR LAMPUNG', 'Jl. Sutan Syahrir No. 30 Pahoman Bandar Lampung 35215', '0721-255980', '', '', '', 'Yepi'),
('PT99923', 'KOREM 043/GATAM BANDARLAMPUNG', 'Jalan Teuku Umar No.85 Bandar Lampung', '', '', '', '', 'Yepi'),
('PT99924', 'PT PLN (PERSERO) UID LAMPUNG', 'Jalan Z.A. Pagar Alam No. 05 Bandar Lampung', '0721-774868', '', '', '', 'Yepi'),
('PT99925', 'LPP RRI BANDAR LAMPUNG', 'Jalan Gatot Subroto No. 26 Pahoman Bandar Lampung 35213', '0721-265772', '', '', '', 'Yepi'),
('PT99926', 'PRINTING SHELTER SIMPUR CENTER', 'Jalan Jendral Brigjend Katamso No. 02 Tanjung Karang Enggal, Bandar Lampung', '', '', '', '', 'Yepi'),
('PT99927', 'PT. SINAR LAMPUNG SEJAHTERA', 'Jalan Pangeran Tirtayasa No. 8 Sukabumi - Bandar Lampung', '0721- 351561, 350658', '', '', '', 'Yepi'),
('PT99928', 'BANK CITRA', 'Jalan Proklamator No. 8 D Bandarjaya, Lampung Tengah', '', '', '', '', 'Yepi'),
('PT99929', 'PT. INDOMARCO PRISMATAMA', 'Jalan Tembesu No. 8 Campang Raya Bandar Lampung', '0721-7699123', '', '', '', 'Yepi'),
('PT99930', 'CV. LAUT SELATAN JAYA', 'Jalan Laksamana Malahayati No. 58 Teluk Betung Bandar Lampung,', '0721-487720, 487721', '', '', '35224', 'Yepi'),
('PT99931', 'TOKO SUMBER MAKMUR', 'Jalan Baru no. 55/56 Bandar Lampung', '', '', '', '', 'Yepi'),
('PT99932', 'BADAN PUSAT STATISTIK KABUPATEN PESAWARAN', 'Jalan Jend. Ahmad Yani No. 19 Kutoarjo, Gedung Tataan', '', '', 'Pesawaran.', '', 'Yepi'),
('PT99933', 'LOUDIGITAL', 'Jalan Cut Nyak Dien No. 40 Palapa Durian Payung, Tanjung Karang Pusat, Bandar Lampung', '', '', '', '', 'Yepi'),
('PT99934', 'BKIPM LAMPUNG', 'Jalan Soekarno Hatta No. 91', '', '', '', '', 'Yepi'),
('PT99935', 'FIF GROUP', 'Jalan Sultan Badarudin Kel. Gedong Air Bandar Lampung', '', '', '', '', 'Yepi'),
('PT99936', 'PERUSAHAAN DAERAH AIR MINUM " WAY RILAU"', 'Jalan Pangeran Emir M. Noer No. 11 A Bandar Lampung', '0721-483855', '', '', '', 'Yepi'),
('PT99937', 'SUSHI MART', 'Bandar Lampung', '', '', '', '', 'Yepi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pkl`
--

CREATE TABLE `tb_pkl` (
  `id_pkl` varchar(15) NOT NULL,
  `kd_perusahaan` char(7) DEFAULT NULL,
  `id_mhs` int(11) DEFAULT NULL,
  `ipk` char(5) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `file_transkrip` varchar(50) DEFAULT NULL,
  `tgl_apply_perusahaan` datetime DEFAULT NULL,
  `tgl_pengajuan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `validasi_syarat` enum('setujui','tolak') DEFAULT NULL,
  `validasi_pj` enum('setuju','tolak','menunggu') DEFAULT NULL,
  `alasan` text,
  `surat_pengantar` enum('sudah jadi','belum jadi','sudah diambil') DEFAULT NULL,
  `file_surat_pengantar` varchar(50) DEFAULT NULL,
  `file_surat_balasan` varchar(50) DEFAULT NULL,
  `status_balasan` enum('Diterima','Ditolak') DEFAULT NULL,
  `nomor_surat` varchar(100) DEFAULT NULL,
  `id_periode` int(11) DEFAULT NULL,
  `pengambil_surat` varchar(100) DEFAULT NULL,
  `tanggal_ambil` date DEFAULT NULL,
  `atribut_pkl` enum('sudah','belum') NOT NULL DEFAULT 'belum',
  `atribut_tanggal` date DEFAULT NULL,
  `id_dosenpembimbing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pkl`
--

INSERT INTO `tb_pkl` (`id_pkl`, `kd_perusahaan`, `id_mhs`, `ipk`, `sks`, `file_transkrip`, `tgl_apply_perusahaan`, `tgl_pengajuan`, `validasi_syarat`, `validasi_pj`, `alasan`, `surat_pengantar`, `file_surat_pengantar`, `file_surat_balasan`, `status_balasan`, `nomor_surat`, `id_periode`, `pengambil_surat`, `tanggal_ambil`, `atribut_pkl`, `atribut_tanggal`, `id_dosenpembimbing`) VALUES
('20190620120331', 'PT001', 11, '3.13', 108, NULL, NULL, '2019-10-31 03:23:40', 'setujui', 'setuju', 'sdfsfsd', 'sudah diambil', 'PENGANTAR_20190627152706.pdf', 'BALASAN_20190704091316.pdf', 'Diterima', 'tis/343/serw', 1, 'Beni', '2019-07-04', 'sudah', '2019-09-16', 11),
('20190621114534', 'PT261', 14, '2.9', 101, 'TRANSKRIP_20190621114534.pdf', NULL, '2019-11-01 02:16:29', 'setujui', 'setuju', 'xyz\r\n', 'belum jadi', NULL, NULL, 'Diterima', NULL, 1, NULL, NULL, 'sudah', '2019-09-16', 17),
('20190626061714', 'PT001', 15, '3.4', 105, 'TRANSKRIP_20190626061714.pdf', NULL, '2019-10-31 03:23:40', 'setujui', 'setuju', NULL, 'sudah diambil', 'PENGANTAR_20190627152706.pdf', 'BALASAN_20190704091316.pdf', 'Diterima', 'tis/343/serw', 1, 'Beni', '2019-07-04', 'sudah', '2019-09-16', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tb_prodi`
--

CREATE TABLE `tb_prodi` (
  `id_prodi` int(11) NOT NULL,
  `kode_prodiDIKTI` varchar(20) NOT NULL,
  `nama_prodi` varchar(50) NOT NULL,
  `nama_prodi_Eng` varchar(50) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `jenjang` enum('S3','S2','S1','D3') NOT NULL,
  `keterangan` text,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_prodi`
--

INSERT INTO `tb_prodi` (`id_prodi`, `kode_prodiDIKTI`, `nama_prodi`, `nama_prodi_Eng`, `id_fakultas`, `jenjang`, `keterangan`, `aktif`) VALUES
(2, '0927187', 'Sistem Informasi', 'Information System', 1, 'S1', '', 'Ya'),
(3, '0210289', 'Teknologi Informasi', 'Information Technology', 1, 'S1', '', 'Ya'),
(4, '02391837', 'Teknik Komputer', 'Computer Engineering', 1, 'S1', '-\r\n', 'Ya'),
(5, '0293717', 'Teknik Elektro', 'Electrical Engineering', 1, 'S1', '', 'Ya'),
(9, '0293812', 'Teknik Sipil', 'Civil Engineering', 1, 'S1', '', 'Ya'),
(16, '', 'Teknik Komputer', '', 1, 'D3', '', 'Ya'),
(17, '', 'Sistem Informasi Akuntansi', '', 1, 'D3', '', 'Ya'),
(18, '0293177', 'Sistem Informasi', 'Information System', 1, 'D3', '', 'Tidak'),
(19, '0283616', 'Informatika', 'Informatics', 1, 'S1', '', 'Ya'),
(20, '021836223', 'Manajemen', 'Management', 3, 'S1', '-', 'Ya'),
(21, '0326372323', 'Akuntansi', 'Accounting', 3, 'S1', '', 'Ya'),
(22, '', 'Sastra Inggris', '', 4, 'S1', '\r\n', 'Ya'),
(23, '', 'Pendidikan Bahasa Inggris', '', 4, 'S1', '', 'Ya'),
(24, '', 'Pendidikan Olahraga', '', 4, 'S1', '', 'Ya'),
(25, '', 'Pendidikan Matematika', '', 4, 'S1', '', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prodiakreditasi`
--

CREATE TABLE `tb_prodiakreditasi` (
  `id_akreditasi` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `mulai_berlaku` date NOT NULL,
  `akhir_berlaku` date NOT NULL,
  `sertifikat_akreditasi` varchar(100) DEFAULT NULL,
  `tampilkan` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `keterangan` text,
  `file_borangprodi` varchar(100) DEFAULT NULL,
  `file_evaluasidiri` varchar(100) DEFAULT NULL,
  `file_borangfak` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ruangan`
--

CREATE TABLE `tb_ruangan` (
  `id_ruangan` int(11) NOT NULL,
  `id_gedung` int(11) NOT NULL,
  `nama_ruangan` varchar(20) DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL,
  `jenis` enum('Kelas','Lab','BAAK','Rapat','Auditorium','Presentasi','Ruang Dosen','Ruang Pimpinan','Lainnya') DEFAULT 'Kelas',
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ruangan`
--

INSERT INTO `tb_ruangan` (`id_ruangan`, `id_gedung`, `nama_ruangan`, `kapasitas`, `jenis`, `keterangan`) VALUES
(3, 10, 'R 201 B', 40, 'Kelas', ''),
(6, 10, ' R203 B', 50, 'Kelas', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_semester`
--

CREATE TABLE `tb_semester` (
  `semester` char(5) NOT NULL,
  `nama_semester` enum('Ganjil','SP Ganjil','Genap','SP Genap') NOT NULL DEFAULT 'Ganjil',
  `waktu_kuliah` enum('Reguler','Extensi','Sabtu-Minggu') NOT NULL DEFAULT 'Reguler',
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_akhirbayar` date NOT NULL,
  `aktif` enum('Aktif','Tidak','Proses') NOT NULL DEFAULT 'Tidak',
  `lock` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_semester`
--

INSERT INTO `tb_semester` (`semester`, `nama_semester`, `waktu_kuliah`, `tgl_mulai`, `tgl_selesai`, `tgl_akhirbayar`, `aktif`, `lock`) VALUES
('20171', 'Ganjil', 'Reguler', '2018-02-01', '2018-09-02', '2018-02-05', 'Tidak', 1),
('20172', 'Genap', 'Reguler', '2018-02-19', '2018-07-01', '2018-02-12', 'Tidak', 1),
('20181', 'Ganjil', 'Reguler', '2018-09-10', '2019-01-30', '2018-09-04', 'Tidak', 1),
('20192', 'Genap', 'Reguler', '2019-08-01', '2020-01-31', '2019-07-31', 'Aktif', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_sidangskripsi`
--

CREATE TABLE `tb_sidangskripsi` (
  `id_SidangSkripsi` int(11) NOT NULL,
  `npm` varchar(9) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `id_dosenKetua` int(11) NOT NULL,
  `tgl_sidang` date NOT NULL,
  `jam_sidang` enum('07:10','09:00','11:00','13:00','15:00','17:00','19:00','21:00','23:00') DEFAULT NULL,
  `id_dosenUtama` int(11) NOT NULL,
  `id_ruangan` int(11) NOT NULL,
  `judul_skripsi` varchar(250) NOT NULL,
  `nomor_sk` varchar(30) NOT NULL,
  `tgl_sk` date DEFAULT NULL,
  `TA` varchar(9) NOT NULL,
  `id_dosenpembacaSK` int(11) DEFAULT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sidangskripsi`
--

INSERT INTO `tb_sidangskripsi` (`id_SidangSkripsi`, `npm`, `nama_mhs`, `id_prodi`, `id_dosenKetua`, `tgl_sidang`, `jam_sidang`, `id_dosenUtama`, `id_ruangan`, `judul_skripsi`, `nomor_sk`, `tgl_sk`, `TA`, `id_dosenpembacaSK`, `keterangan`) VALUES
(1, '13312507', 'Bayu', 2, 4, '2017-11-25', '09:00', 11, 3, 'Perancangan Game Pengenalan Aksara Lampung', '0157/FTIK-S1.I/B.6.5/XI/2017', '2017-11-24', '2016/2017', 2, 'sadsadsda'),
(3, '14312001', 'Angga Kesuma  jaya', 2, 4, '2017-11-28', '13:00', 4, 6, 'SMIQA : Swamedikasi Interaktive Question Answering System', '0158/FTIK-S1.I/B.6.5/XI/2017', '2017-11-25', '2016/2017', 0, 'sasas'),
(30, '14310983', 'Handoko', 2, 14, '2017-11-28', '07:10', 11, 6, 'Android', '0177 /FTIK-S1.I/B.6.5/XI/2017', '2017-11-24', '2016/2017', 0, ''),
(31, '143123004', 'Umam', 19, 14, '2017-11-28', '19:00', 11, 3, 'Android IoT', '0170/FTIK-S1.I/B.6.5/XI/201', '2017-11-24', '2016/2017', 0, ''),
(32, '14312005', 'Wini', 19, 4, '2017-11-24', '09:00', 1, 6, 'IoT', '0198 /FTIK-S1.I/B.6.5/XI/201', '2017-11-24', '2017/2018', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_skripsi_kompre`
--

CREATE TABLE `tb_skripsi_kompre` (
  `id_kompre` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_pengajuan_judul` int(11) NOT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  `judul_final` varchar(200) DEFAULT NULL,
  `tahun_akademik` varchar(10) NOT NULL,
  `tgl_kompre` date DEFAULT NULL,
  `waktu_sidang` varchar(8) NOT NULL,
  `id_ruangan` int(11) NOT NULL,
  `id_dosen_penguji` int(11) NOT NULL,
  `tgl_create` datetime DEFAULT CURRENT_TIMESTAMP,
  `status_pengajuan` enum('0','1','2','3','4','5') DEFAULT '0',
  `no_sk_kompre` varchar(25) NOT NULL,
  `tgl_sk` date NOT NULL,
  `file_sk` varchar(50) DEFAULT NULL,
  `nilai_penguji` double DEFAULT NULL,
  `persentase_penguji` int(11) DEFAULT NULL,
  `file_nilai_penguji` varchar(50) DEFAULT NULL,
  `file_catatan_penguji` varchar(50) DEFAULT NULL,
  `nilai_pembimbing` double DEFAULT NULL,
  `persentase_pembimbing` int(11) DEFAULT NULL,
  `file_nilai_pembimbing` varchar(50) DEFAULT NULL,
  `file_catatan_pembimbing` varchar(50) DEFAULT NULL,
  `file_pesertasidang` varchar(50) DEFAULT NULL,
  `file_beritaacara` varchar(50) DEFAULT NULL,
  `file_pernyataan_revisi` varchar(50) DEFAULT NULL,
  `status_lulus` enum('Belum Sidang','Lulus','Tidak Lulus') DEFAULT 'Belum Sidang',
  `nilai_akhir` double DEFAULT NULL,
  `nilai_huruf_mutu` enum('A','B','Tidak Lulus') DEFAULT NULL,
  `abstrak` text,
  `file_skripsi_pdf` varchar(50) DEFAULT NULL,
  `file_skripsi_doc` varchar(50) DEFAULT NULL,
  `file_skripsi_bab1` varchar(50) DEFAULT NULL,
  `file_skripsi_bab2` varchar(50) DEFAULT NULL,
  `file_skripsi_bab3` varchar(50) DEFAULT NULL,
  `file_skripsi_bab4` varchar(50) DEFAULT NULL,
  `file_skripsi_bab5` varchar(50) DEFAULT NULL,
  `file_skripsi_pustaka` varchar(50) DEFAULT NULL,
  `file_paper` varchar(50) DEFAULT NULL,
  `file_program` varchar(50) DEFAULT NULL,
  `ipk_akhir` double DEFAULT NULL,
  `judul_final_eng` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_skripsi_kompre`
--

INSERT INTO `tb_skripsi_kompre` (`id_kompre`, `id_semester`, `id_pengajuan_judul`, `no_telp`, `judul_final`, `tahun_akademik`, `tgl_kompre`, `waktu_sidang`, `id_ruangan`, `id_dosen_penguji`, `tgl_create`, `status_pengajuan`, `no_sk_kompre`, `tgl_sk`, `file_sk`, `nilai_penguji`, `persentase_penguji`, `file_nilai_penguji`, `file_catatan_penguji`, `nilai_pembimbing`, `persentase_pembimbing`, `file_nilai_pembimbing`, `file_catatan_pembimbing`, `file_pesertasidang`, `file_beritaacara`, `file_pernyataan_revisi`, `status_lulus`, `nilai_akhir`, `nilai_huruf_mutu`, `abstrak`, `file_skripsi_pdf`, `file_skripsi_doc`, `file_skripsi_bab1`, `file_skripsi_bab2`, `file_skripsi_bab3`, `file_skripsi_bab4`, `file_skripsi_bab5`, `file_skripsi_pustaka`, `file_paper`, `file_program`, `ipk_akhir`, `judul_final_eng`) VALUES
(46, 0, 28, NULL, 'indo1', '', NULL, '', 0, 2, '2018-04-02 11:58:01', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.45, 'eng1'),
(47, 0, 29, NULL, 'indo2', '', NULL, '', 0, 4, '2018-04-02 11:58:01', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.22, 'eng2'),
(48, 0, 30, NULL, 'indo3', '', NULL, '', 0, 1, '2018-04-02 11:58:02', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'eng3'),
(49, 0, 31, NULL, 'indo4', '', NULL, '', 0, 2, '2018-04-02 11:58:02', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.45, 'eng4'),
(50, 0, 32, NULL, 'indo5', '', NULL, '', 0, 4, '2018-04-02 11:58:02', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.22, 'eng5'),
(51, 0, 33, NULL, 'indo6', '', NULL, '', 0, 1, '2018-04-02 11:58:02', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'eng6'),
(52, 0, 34, NULL, 'indo7', '', NULL, '', 0, 2, '2018-04-02 11:58:02', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.45, 'eng7'),
(53, 0, 35, NULL, 'indo8', '', NULL, '', 0, 4, '2018-04-02 11:58:03', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.22, 'eng8'),
(54, 0, 36, NULL, 'indo9', '', NULL, '', 0, 1, '2018-04-02 11:58:03', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'eng9'),
(55, 0, 37, NULL, 'indo10', '', NULL, '', 0, 2, '2018-04-02 11:58:03', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.45, 'eng10'),
(56, 0, 38, NULL, 'indo11', '', NULL, '', 0, 4, '2018-04-02 11:58:03', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.22, 'eng11'),
(57, 0, 39, NULL, 'indo12', '', NULL, '', 0, 1, '2018-04-02 11:58:03', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'eng12'),
(58, 0, 40, NULL, 'indo13', '', NULL, '', 0, 2, '2018-04-02 11:58:04', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.45, 'eng13'),
(59, 0, 41, NULL, 'indo14', '', NULL, '', 0, 4, '2018-04-02 11:58:04', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.22, 'eng14'),
(60, 0, 42, NULL, 'indo15', '', NULL, '', 0, 1, '2018-04-02 11:58:04', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'eng15'),
(61, 0, 43, NULL, 'indo16', '', NULL, '', 0, 2, '2018-04-02 11:58:04', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.45, 'eng16'),
(62, 0, 44, NULL, 'indo17', '', NULL, '', 0, 4, '2018-04-02 11:58:05', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.22, 'eng17'),
(63, 0, 45, NULL, 'indo18', '', NULL, '', 0, 1, '2018-04-02 11:58:05', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'eng18'),
(64, 0, 46, NULL, 'indo19', '', NULL, '', 0, 2, '2018-04-02 11:58:05', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.45, 'eng19'),
(65, 0, 47, NULL, 'indo20', '', NULL, '', 0, 4, '2018-04-02 11:58:05', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.22, 'eng20'),
(66, 0, 48, NULL, 'indo21', '', NULL, '', 0, 1, '2018-04-02 11:58:05', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'eng21'),
(67, 0, 49, NULL, 'indo22', '', NULL, '', 0, 1, '2018-04-02 11:58:05', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'eng22'),
(68, 0, 50, NULL, 'indo1', '', NULL, '', 0, 2, '2018-04-02 13:22:38', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.45, 'eng1'),
(69, 0, 51, NULL, 'Perancangan Sistem Informasi Penjadwalan Pemberitaan Menggunakan Program Delphi pada Kasi Pemberitaan Radio Republik Indonesia Bandar Lampung', '', NULL, '', 0, 4, '2018-04-02 16:31:37', '0', '', '0000-00-00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Belum Sidang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3.33, 'Scheduling Information Reporting System Design Using the Delphi Program on Radio News Cashie Indonesia Republic Bandar Lampung');

-- --------------------------------------------------------

--
-- Table structure for table `tb_skripsi_pengajuanjudul`
--

CREATE TABLE `tb_skripsi_pengajuanjudul` (
  `id_pengajuan_judul` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `id_semester` int(11) NOT NULL,
  `id_skripsi_setbiaya` int(11) DEFAULT NULL,
  `id_sk_skripsi` int(11) NOT NULL,
  `ipk_sementar` double DEFAULT NULL,
  `sks_sementara` int(11) DEFAULT NULL,
  `judul_1` varchar(200) NOT NULL,
  `penjelasan_1` text NOT NULL,
  `tempat_penelitian1` varchar(100) DEFAULT NULL,
  `judul_2` varchar(200) DEFAULT NULL,
  `penjelasan_2` text,
  `tempat_penelitian2` varchar(100) DEFAULT NULL,
  `status_pengajuan` enum('0','1','2','3','4','5','6') DEFAULT '0' COMMENT '0: Draft Pengajuan; 1:Judul Diajukan; 2:Sudah Bayar; 3:Judul Diterima; 4: judul Ditolak; 5: SK Telah Jadi; 6: SK Telah Diambil',
  `tgl_pengajuan` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ket_pengajuanprodi` text,
  `tgl_disetujui` datetime DEFAULT NULL,
  `judul_acc` enum('Judul 1','Judul 2') DEFAULT NULL,
  `file_buktisdhpkl` varchar(50) DEFAULT NULL,
  `file_transkrip` varchar(50) DEFAULT NULL,
  `file_buktibayarsem_aktif` varchar(50) DEFAULT NULL,
  `file_buktibayar_skripsi` varchar(50) DEFAULT NULL,
  `id_dosen_pembimbing` int(11) DEFAULT NULL,
  `sumber_judul` enum('Usulan Mahasiswa','Dosen Pembimbing') NOT NULL DEFAULT 'Usulan Mahasiswa',
  `id_dosenpengusul` int(11) DEFAULT NULL,
  `perubahan_judul` int(11) DEFAULT '0',
  `perubahan_pembimbing` int(11) DEFAULT '0',
  `sidang_proposal` enum('Sudah','Belum','Ngulang') DEFAULT 'Belum',
  `sidang_skripsi` enum('Sudah','Belum','Ngulang') DEFAULT 'Belum',
  `thn_wisuda` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_skripsi_pengajuanjudul`
--

INSERT INTO `tb_skripsi_pengajuanjudul` (`id_pengajuan_judul`, `id_mhs`, `id_semester`, `id_skripsi_setbiaya`, `id_sk_skripsi`, `ipk_sementar`, `sks_sementara`, `judul_1`, `penjelasan_1`, `tempat_penelitian1`, `judul_2`, `penjelasan_2`, `tempat_penelitian2`, `status_pengajuan`, `tgl_pengajuan`, `ket_pengajuanprodi`, `tgl_disetujui`, `judul_acc`, `file_buktisdhpkl`, `file_transkrip`, `file_buktibayarsem_aktif`, `file_buktibayar_skripsi`, `id_dosen_pembimbing`, `sumber_judul`, `id_dosenpengusul`, `perubahan_judul`, `perubahan_pembimbing`, `sidang_proposal`, `sidang_skripsi`, `thn_wisuda`) VALUES
(28, 16, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(29, 40, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(30, 41, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(31, 42, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(32, 43, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(33, 44, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(34, 45, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(35, 46, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(36, 47, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(37, 48, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(38, 49, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(39, 50, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(40, 51, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(41, 52, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(42, 53, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(43, 54, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(44, 55, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(45, 56, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(46, 57, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(47, 58, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(48, 59, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(49, 60, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 11:58:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(50, 66, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 13:22:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(51, 67, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 16:31:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL),
(52, 70, 0, NULL, 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '0', '2018-04-02 16:31:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'Usulan Mahasiswa', NULL, 0, 0, 'Belum', 'Belum', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_skskripsi`
--

CREATE TABLE `tb_skskripsi` (
  `id_sk_skripsi` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `nomor_sk` varchar(50) NOT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `tahun` year(4) DEFAULT NULL,
  `ta` varchar(9) DEFAULT NULL,
  `tgl_dibuat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_sk` date DEFAULT NULL,
  `id_dosenpenandatangan` int(11) NOT NULL,
  `keterangan` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_skskripsi_detail`
--

CREATE TABLE `tb_skskripsi_detail` (
  `id_detailsk` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_pengajuanjudul` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_staff`
--

CREATE TABLE `tb_staff` (
  `id_staff` int(11) NOT NULL,
  `id_divisi` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nik` char(12) NOT NULL,
  `nama_staff` varchar(50) DEFAULT NULL,
  `pendidikan_terakhirStaff` enum('SD','SMP','SMTA','D1','D2','D3','D4','S1','S2','S3') DEFAULT 'SMTA',
  `jurusan_pendidikan` varchar(30) DEFAULT NULL,
  `gelar_depan` varchar(20) DEFAULT NULL,
  `gelar_belakang` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `ikatan_kerja` enum('Karyawan Tetap','Karyawan Tidak Tetap','Karyawan Honorer','Karyawan Harian') DEFAULT NULL,
  `status_aktifStaff` enum('Aktif','Tidak Aktif','Cuti','Mengundurkan Diri','Dikeluarkan','Ijin Belajar','Tugas Belajar') DEFAULT NULL,
  `golongan` enum('I A','I B','I C','I D','II A','II B','II C','II D','III A','III B','III C','III D','IV A','IV B','IV C','IV D','IV E') DEFAULT NULL,
  `tgl_masukkerja` date DEFAULT NULL,
  `agama` enum('Islam','Protestan','Katolik','Hindu','Budha','Kong Hu Cu') DEFAULT 'Islam',
  `jk` enum('Pria','Wanita') DEFAULT NULL,
  `alamat_tinggal` varchar(200) DEFAULT NULL,
  `no_hp` varchar(25) DEFAULT NULL,
  `e_mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_staff`
--

INSERT INTO `tb_staff` (`id_staff`, `id_divisi`, `id_user`, `nik`, `nama_staff`, `pendidikan_terakhirStaff`, `jurusan_pendidikan`, `gelar_depan`, `gelar_belakang`, `tempat_lahir`, `tgl_lahir`, `ikatan_kerja`, `status_aktifStaff`, `golongan`, `tgl_masukkerja`, `agama`, `jk`, `alamat_tinggal`, `no_hp`, `e_mail`) VALUES
(2, 1, 67, 'keuangan', 'aksajasjk', 'S1', 'sadd', '', 'ST', 'sdsd', '1992-02-21', 'Karyawan Tetap', 'Aktif', 'I A', '2017-03-30', 'Islam', 'Pria', 'wsewe ', '087123673567', 'JWSJDSDH@SJDJSDH.COM'),
(3, 3, 68, 'tuftik', 'Vita Saptarini', 'S1', 'SI', '', 'S.Kom', 'BDL', '1986-02-02', 'Karyawan Tetap', 'Aktif', 'II D', '2007-02-28', 'Islam', 'Pria', '-  ', '082367362736', 'ahssahgs@hsgdhsd.com'),
(6, 8, 70, 'perpustakaan', 'Rahmad Iqbal', 'S2', 'Perpustakaan', '', 'MT', 'Palembang', '1989-06-20', 'Karyawan Tetap', 'Aktif', 'III B', '2015-04-01', 'Islam', 'Pria', 'wsuwei ', '092788372387', 'asjhsjasdh@jshd.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_staff_divisi`
--

CREATE TABLE `tb_staff_divisi` (
  `id_divisi` int(11) NOT NULL,
  `nama_divisi` varchar(30) NOT NULL,
  `status_aktif` enum('Aktif','Tidak Aktif') DEFAULT 'Tidak Aktif',
  `keterangan` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_staff_divisi`
--

INSERT INTO `tb_staff_divisi` (`id_divisi`, `nama_divisi`, `status_aktif`, `keterangan`) VALUES
(1, 'Keuangan', 'Aktif', '   Yang mengelola Keuangan1'),
(3, 'TU FTIK', 'Aktif', ' -'),
(4, 'TU FEB', 'Aktif', ' '),
(5, 'TU FSIP', 'Aktif', ' '),
(6, 'Kepegawaian', 'Aktif', ' '),
(7, 'Kerumah Tanggaan', 'Aktif', ' '),
(8, 'Perpustakaan', 'Aktif', ' '),
(9, 'Kesekertariatan', 'Aktif', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_st_dokumen`
--

CREATE TABLE `tb_st_dokumen` (
  `id_dokumen` int(11) NOT NULL,
  `nama_dokumen` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `id_prodi` int(11) NOT NULL,
  `file_dokumen` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_st_dokumen`
--

INSERT INTO `tb_st_dokumen` (`id_dokumen`, `nama_dokumen`, `status`, `id_prodi`, `file_dokumen`) VALUES
(1, 'Test', '0', 3, 'BERKAS_ST_Test_3.pdf'),
(2, 'asdfjkl;', '1', 3, 'BERKAS_ST_asdfjkl;_.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_st_pengajuan`
--

CREATE TABLE `tb_st_pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_st_setbiaya` int(11) NOT NULL,
  `semester` char(5) NOT NULL,
  `status_pengajuan` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `status_pembayaran` enum('belum','sudah') NOT NULL DEFAULT 'belum',
  `dok_cek_matkul` varchar(120) DEFAULT NULL,
  `dok_srt_permohonan_mhs` varchar(120) DEFAULT NULL,
  `dok_srt_rekomen_dsn` varchar(120) DEFAULT NULL,
  `dok_slip_pembayaran_mhs` varchar(120) DEFAULT NULL,
  `dok_transkrip_mhs` varchar(120) NOT NULL,
  `dok_slip_bayaran_st` varchar(120) NOT NULL,
  `dok_sk_bimbingan_skripsi` varchar(100) NOT NULL,
  `alasan_tolak` varchar(100) NOT NULL,
  `tgl_pengajuan` datetime NOT NULL,
  `tgl_pembayaran` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `no_invoice` varchar(20) DEFAULT NULL,
  `tgl_disetujuikaprodi` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_st_pengajuan`
--

INSERT INTO `tb_st_pengajuan` (`id_pengajuan`, `id_mahasiswa`, `id_st_setbiaya`, `semester`, `status_pengajuan`, `status_pembayaran`, `dok_cek_matkul`, `dok_srt_permohonan_mhs`, `dok_srt_rekomen_dsn`, `dok_slip_pembayaran_mhs`, `dok_transkrip_mhs`, `dok_slip_bayaran_st`, `dok_sk_bimbingan_skripsi`, `alasan_tolak`, `tgl_pengajuan`, `tgl_pembayaran`, `tgl_selesai`, `no_invoice`, `tgl_disetujuikaprodi`) VALUES
(11, 11, 12, '20171', '3', 'sudah', '17212006_1522149272_sc_form_makul.pdf', NULL, '17212006_1522149260_sc_rekomendasi.pdf', NULL, '', '17212006_1522149627_slipbayar.jpg', '17212006_1522149249_sc_bimbingan.pdf', '-', '2018-03-27 08:14:39', '2018-03-28 04:30:55', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00'),
(12, 66, 12, '20172', '3', 'sudah', '18111111_1522757847_sc_form_makul.pdf', NULL, '18111111_1522757840_sc_rekomendasi.pdf', NULL, '', '18111111_1522758143_slipbayar.pdf', '18111111_1522757831_sc_bimbingan.pdf', 'asdf', '2018-04-03 09:17:33', '2018-04-03 09:23:33', '0000-00-00 00:00:00', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_st_pengajuan_detail`
--

CREATE TABLE `tb_st_pengajuan_detail` (
  `id_pengajuan_detail` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `id_matakuliah` int(11) NOT NULL,
  `alasan` varchar(200) DEFAULT NULL,
  `surat_tugasdosen` varchar(200) DEFAULT NULL,
  `nomor_surat` varchar(30) DEFAULT NULL,
  `tgl_surat` date NOT NULL,
  `n_tugas` float NOT NULL,
  `file_tugas` varchar(100) DEFAULT NULL,
  `n_quiz` float NOT NULL,
  `file_quiz` varchar(100) DEFAULT NULL,
  `n_uts` float NOT NULL,
  `file_uts` varchar(100) DEFAULT NULL,
  `n_uas` float NOT NULL,
  `file_uas` varchar(100) DEFAULT NULL,
  `bobot_n_tugas` tinyint(4) NOT NULL,
  `bobot_n_quiz` tinyint(4) NOT NULL,
  `bobot_n_uts` tinyint(4) NOT NULL,
  `bobot_n_uas` tinyint(4) NOT NULL,
  `n_hurufmutu` enum('A','B','C','D','E') DEFAULT NULL,
  `file_nilai` varchar(100) DEFAULT NULL,
  `tgl_inputnilai` datetime DEFAULT NULL,
  `status_nilai` enum('0','1','2','3') DEFAULT '0',
  `tgl_disetujuikaprodi` datetime DEFAULT NULL,
  `cat_kaprodi` varchar(200) DEFAULT NULL,
  `status_rekapgaji` enum('0','1') NOT NULL DEFAULT '0',
  `tgl_rekapgaji` datetime NOT NULL,
  `lock` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_st_pengajuan_detail`
--

INSERT INTO `tb_st_pengajuan_detail` (`id_pengajuan_detail`, `id_pengajuan`, `id_dosen`, `id_matakuliah`, `alasan`, `surat_tugasdosen`, `nomor_surat`, `tgl_surat`, `n_tugas`, `file_tugas`, `n_quiz`, `file_quiz`, `n_uts`, `file_uts`, `n_uas`, `file_uas`, `bobot_n_tugas`, `bobot_n_quiz`, `bobot_n_uts`, `bobot_n_uas`, `n_hurufmutu`, `file_nilai`, `tgl_inputnilai`, `status_nilai`, `tgl_disetujuikaprodi`, `cat_kaprodi`, `status_rekapgaji`, `tgl_rekapgaji`, `lock`) VALUES
(47, 12, 4, 3, NULL, '', '', '0000-00-00', 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, 0, 0, 0, NULL, NULL, NULL, '0', NULL, NULL, '0', '0000-00-00 00:00:00', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_st_setbiaya`
--

CREATE TABLE `tb_st_setbiaya` (
  `id_st_setbiaya` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `biaya` int(11) NOT NULL,
  `status` enum('aktif','tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_st_setbiaya`
--

INSERT INTO `tb_st_setbiaya` (`id_st_setbiaya`, `nama`, `biaya`, `status`) VALUES
(12, 'Biaya ST 2017-2018', 150000, 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_st_setbiaya_detail`
--

CREATE TABLE `tb_st_setbiaya_detail` (
  `id_st_stbiaya_detail` int(11) NOT NULL,
  `id_st_setbiaya` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_st_setbiaya_detail`
--

INSERT INTO `tb_st_setbiaya_detail` (`id_st_stbiaya_detail`, `id_st_setbiaya`, `id_prodi`) VALUES
(172, 12, 21),
(173, 12, 20),
(174, 12, 23),
(175, 12, 25),
(176, 12, 24),
(177, 12, 22),
(178, 12, 19),
(179, 12, 2),
(180, 12, 5),
(181, 12, 4),
(182, 12, 9),
(183, 12, 3),
(184, 12, 18),
(185, 12, 17),
(186, 12, 16);

-- --------------------------------------------------------

--
-- Table structure for table `tb_suket_kuliah`
--

CREATE TABLE `tb_suket_kuliah` (
  `id_suket_kuliah` int(11) NOT NULL,
  `id_mhs` int(11) DEFAULT NULL,
  `semester` char(5) DEFAULT NULL,
  `nomor_surat` varchar(20) NOT NULL,
  `nama_ortu` varchar(50) DEFAULT NULL,
  `pekerjaan_ortu` varchar(50) DEFAULT NULL,
  `instansi` varchar(100) DEFAULT NULL,
  `keperluan` enum('Tunjangan Pensiun','Tunjangan Gaji Orangtua','Pengurusan BPJS Kesehatan','Pengurusan BPJS Ketenagakerjaan','Pengurusan ASKES','Beasiswa','Program Keluarga Harapan (PKH)','Melamar Pekerjaan','Buka Rekening','Lomba','Lainnya') DEFAULT NULL,
  `keterangan_pengajuan` text,
  `status` enum('0','1','2','3','4','5') DEFAULT '1' COMMENT '0. Ditolak, 1. Menunggu di proses, 2. Surat telah jadi, 3. Surat sdh diambil, 4. Proses Seslasi',
  `alasan_tolak` varchar(100) DEFAULT NULL,
  `tgl_pengajuan` datetime DEFAULT CURRENT_TIMESTAMP,
  `tgl_selesai` date DEFAULT NULL,
  `tgl_padasurat` date DEFAULT NULL,
  `file_surat_kuliah` varchar(100) DEFAULT NULL,
  `ambil` varchar(50) NOT NULL,
  `tgl_ambil` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_suket_kuliah`
--

INSERT INTO `tb_suket_kuliah` (`id_suket_kuliah`, `id_mhs`, `semester`, `nomor_surat`, `nama_ortu`, `pekerjaan_ortu`, `instansi`, `keperluan`, `keterangan_pengajuan`, `status`, `alasan_tolak`, `tgl_pengajuan`, `tgl_selesai`, `tgl_padasurat`, `file_surat_kuliah`, `ambil`, `tgl_ambil`) VALUES
(20, 11, '20172', 'SK.0001/KULIAH/INF/2', 'Ponirin', 'PNS', 'PEMDA LAMTIM', 'Tunjangan Gaji Orangtua', 'x', '4', 'keterangan harus sesuai', '2018-03-28 04:20:56', '2018-04-05', '2018-04-05', 'SUKET_KULIAH_SK_0001_KULIAH_INF_2018.pdf', 'asdf', '2018-04-09 04:17:51'),
(22, 12, '20172', 'SK.0002/KULIAH/INF/2', 'Ponirin', 'Dagang', 'DI Pasar', 'Beasiswa', 'y', '3', 'asdf', '2018-03-28 04:52:19', '2018-04-09', '2018-04-09', 'SUKET_KULIAH_SK_0002_KULIAH_INF_2.pdf', 'Beni', '2018-04-05 07:01:25'),
(23, 66, '20172', '', NULL, NULL, NULL, 'Beasiswa', 'asdf', '0', 'asdf', '2018-04-05 13:55:08', NULL, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_suket_lulus`
--

CREATE TABLE `tb_suket_lulus` (
  `id_surat_lulus` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `nomor_surat` varchar(30) NOT NULL,
  `alasan` text NOT NULL,
  `status` enum('0','1','2','3','4') NOT NULL DEFAULT '1',
  `semester` char(5) NOT NULL,
  `tgl_lulus` date NOT NULL,
  `keperluan` varchar(200) DEFAULT NULL,
  `tgl_pengajuan` date NOT NULL,
  `ambil` varchar(50) NOT NULL,
  `tgl_ambil` datetime DEFAULT CURRENT_TIMESTAMP,
  `tgl_surat` date DEFAULT NULL,
  `file_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_suket_lulus`
--

INSERT INTO `tb_suket_lulus` (`id_surat_lulus`, `id_mhs`, `nomor_surat`, `alasan`, `status`, `semester`, `tgl_lulus`, `keperluan`, `tgl_pengajuan`, `ambil`, `tgl_ambil`, `tgl_surat`, `file_surat`) VALUES
(1, 12, 'SK.0001/LULUS/INF/2', 'asdf', '2', '20172', '2018-04-05', 'Melamar Pekerjaan', '2018-04-05', 'asdf', '2018-04-09 04:42:21', '2018-04-09', 'SUKET_LULUS_SK_0001_LULUS_INF_2.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ujian_pembekalanpkl`
--

CREATE TABLE `tb_ujian_pembekalanpkl` (
  `id_ujian` int(11) NOT NULL,
  `id_ujipembekalan` int(11) DEFAULT NULL,
  `id_kelompok` int(11) DEFAULT NULL,
  `id_mhs` int(11) DEFAULT NULL,
  `nilai` char(4) DEFAULT NULL,
  `keterangan` enum('LULUS','TIDAK LULUS') DEFAULT NULL,
  `status_ujian` enum('UJIAN ULANG','UJIAN AWAL') NOT NULL DEFAULT 'UJIAN AWAL',
  `tanggal_penilaian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_periode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ujian_pembekalanpkl`
--

INSERT INTO `tb_ujian_pembekalanpkl` (`id_ujian`, `id_ujipembekalan`, `id_kelompok`, `id_mhs`, `nilai`, `keterangan`, `status_ujian`, `tanggal_penilaian`, `id_periode`) VALUES
(4, 1, 1, 11, '60', 'TIDAK LULUS', 'UJIAN AWAL', '2019-09-19 02:48:27', 1),
(5, 1, 1, 15, '80', 'LULUS', 'UJIAN AWAL', '2019-09-19 02:48:27', 1),
(6, 1, 1, 14, '75', 'LULUS', 'UJIAN AWAL', '2019-09-19 02:48:27', 1),
(7, 1, 0, 11, '80', 'LULUS', 'UJIAN ULANG', '2019-11-04 04:10:43', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_ujian_pembekalanulangpkl`
--

CREATE TABLE `tb_ujian_pembekalanulangpkl` (
  `id_ujian_ulang` int(11) NOT NULL,
  `id_jadwal_ulang` int(11) DEFAULT NULL,
  `id_mhs` int(11) DEFAULT NULL,
  `nilai` char(4) DEFAULT NULL,
  `keterangan` enum('LULUS','TIDAK LULUS') DEFAULT NULL,
  `status_ujian_ulang` enum('sudah terlaksana','belum terlaksana') NOT NULL DEFAULT 'belum terlaksana'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ujian_pembekalanulangpkl`
--

INSERT INTO `tb_ujian_pembekalanulangpkl` (`id_ujian_ulang`, `id_jadwal_ulang`, `id_mhs`, `nilai`, `keterangan`, `status_ujian_ulang`) VALUES
(5, 2, 11, NULL, NULL, 'sudah terlaksana');

-- --------------------------------------------------------

--
-- Table structure for table `tb_wisuda`
--

CREATE TABLE `tb_wisuda` (
  `id_wisuda` int(11) NOT NULL,
  `nama_wisuda` varchar(100) NOT NULL,
  `tgl_wisuda` date DEFAULT NULL,
  `biaya_wisuda` decimal(10,0) DEFAULT NULL,
  `biaya_undangan` decimal(10,0) DEFAULT NULL,
  `tatib_wisuda` text,
  `lokasi_wisuda` varchar(200) DEFAULT NULL,
  `keterangan` text,
  `status` enum('Aktif','Tidak Aktif') DEFAULT 'Tidak Aktif',
  `pj_wisuda` varchar(50) DEFAULT NULL,
  `tahun_wisuda` year(4) DEFAULT NULL,
  `no_sk_wisuda` varchar(25) DEFAULT NULL,
  `tgl_sk_wisuda` date DEFAULT NULL,
  `no_sk_teladan` varchar(25) DEFAULT NULL,
  `tgl_sk_teladan` date DEFAULT NULL,
  `nama_rektor_di_sk` varchar(50) DEFAULT NULL,
  `file_sk_kepanitiaan` varchar(50) DEFAULT NULL,
  `file_sk_wisuda` varchar(50) DEFAULT NULL,
  `file_sk_teladan` varchar(50) DEFAULT NULL,
  `file_anggaran` varchar(50) DEFAULT NULL,
  `file_susunanacara` varchar(50) DEFAULT NULL,
  `stok_undangan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_wisuda`
--

INSERT INTO `tb_wisuda` (`id_wisuda`, `nama_wisuda`, `tgl_wisuda`, `biaya_wisuda`, `biaya_undangan`, `tatib_wisuda`, `lokasi_wisuda`, `keterangan`, `status`, `pj_wisuda`, `tahun_wisuda`, `no_sk_wisuda`, `tgl_sk_wisuda`, `no_sk_teladan`, `tgl_sk_teladan`, `nama_rektor_di_sk`, `file_sk_kepanitiaan`, `file_sk_wisuda`, `file_sk_teladan`, `file_anggaran`, `file_susunanacara`, `stok_undangan`) VALUES
(2, 'WISUDA 2018', '2018-03-31', '1600000', '200000', 'DEDE', 'GSG UNILA', '-', 'Aktif', '-', 2018, '', '0000-00-00', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, 98);

-- --------------------------------------------------------

--
-- Table structure for table `tb_wisuda_daftar`
--

CREATE TABLE `tb_wisuda_daftar` (
  `id_daftarwisuda` int(11) NOT NULL,
  `id_peserta_yudisium` int(11) NOT NULL,
  `tgl_daftar` datetime DEFAULT CURRENT_TIMESTAMP,
  `foto_ijasah` varchar(100) DEFAULT NULL,
  `judul_skripsi_indo` varchar(200) DEFAULT NULL,
  `judul_skripsi_eng` varchar(200) DEFAULT NULL,
  `ipk` varchar(10) DEFAULT NULL,
  `file_buktibayar` varchar(100) DEFAULT NULL,
  `status_bayar` enum('Sudah','Belum') DEFAULT 'Belum',
  `id_user_validasibayaran` int(11) DEFAULT NULL COMMENT 'User Yang Mevalidasi Slip Pembayaran',
  `hadir_yudisium` enum('Ya','Tidak') DEFAULT 'Ya',
  `ambil_undangan` enum('Sudah','Belum') DEFAULT 'Belum',
  `tgl_ambil_undangan` datetime DEFAULT NULL,
  `nama_pengambil_undangan` varchar(50) DEFAULT NULL,
  `id_user_undangan` int(11) DEFAULT NULL COMMENT 'User Yang  Melayanai Pengambilan Undangan',
  `hadir_wisuda` enum('Ya','Tidak') DEFAULT 'Ya',
  `pesan_undangan` enum('Ya','Tidak') DEFAULT 'Tidak',
  `jml_undangan` int(11) DEFAULT NULL,
  `pengambilan_toga` enum('Sudah','Belum') DEFAULT 'Belum',
  `nama_pengambil_toga` varchar(100) DEFAULT NULL,
  `tgl_ambil_toga` datetime DEFAULT NULL,
  `baju_toga` enum('Belum Diambil','Sudah Diambil') DEFAULT 'Belum Diambil',
  `topi_toga` enum('Belum Diambil','Sudah Diambil') DEFAULT 'Belum Diambil',
  `medali_toga` enum('Belum Diambil','Sudah Diambil') DEFAULT 'Belum Diambil',
  `slendang_toga` enum('Belum Diambil','Sudah Diambil') DEFAULT 'Belum Diambil',
  `id_user_toga` int(11) DEFAULT NULL COMMENT 'User Yang Melayani Pengambilan Toga',
  `status_dok_lulusan` enum('Belum Daftar Yudisium','Proses Pembuatan','Belum Tandatangan','Sudah Jadi dan Bisa di Ambil','Sudah Diambil') DEFAULT 'Belum Daftar Yudisium',
  `status_ijazah` enum('Sudah Diambil','Belum Diambil') DEFAULT 'Belum Diambil',
  `status_transkrip` enum('Belum Diambil','Sudah Diambil') DEFAULT 'Belum Diambil',
  `status_sertiifkat_combase` enum('Belum Diambil','Sudah Diambil') DEFAULT 'Belum Diambil',
  `status_sertifikat_pelatihan` enum('Belum Diambil','Sudah Diambil') DEFAULT 'Belum Diambil',
  `status_foto_wisuda` enum('Belum Diambil','Sudah Diambil') DEFAULT 'Belum Diambil',
  `foto_wisuda` varchar(100) NOT NULL,
  `tgl_pengambilan_doklulusan` datetime DEFAULT NULL,
  `pengambil_doklulusan` enum('Mahasiswa','Diwakilkan') DEFAULT NULL,
  `nama_pengambil_doklulusan` varchar(50) DEFAULT NULL,
  `file_suratkuasa_doklulusan` varchar(50) DEFAULT NULL,
  `id_user_pengambilan_doklulusan` int(11) DEFAULT NULL COMMENT 'User Yang Melayani Pengambilan Ijasah',
  `file_skripsi` varchar(200) DEFAULT NULL,
  `file_jurnal` varchar(200) DEFAULT NULL,
  `status_perpustakaan` enum('0','1') NOT NULL DEFAULT '0',
  `status_request_undangan` enum('Sudah','Belum') NOT NULL DEFAULT 'Belum',
  `timer` datetime NOT NULL,
  `tgl_validasi_pembayaran` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_wisuda_daftar`
--

INSERT INTO `tb_wisuda_daftar` (`id_daftarwisuda`, `id_peserta_yudisium`, `tgl_daftar`, `foto_ijasah`, `judul_skripsi_indo`, `judul_skripsi_eng`, `ipk`, `file_buktibayar`, `status_bayar`, `id_user_validasibayaran`, `hadir_yudisium`, `ambil_undangan`, `tgl_ambil_undangan`, `nama_pengambil_undangan`, `id_user_undangan`, `hadir_wisuda`, `pesan_undangan`, `jml_undangan`, `pengambilan_toga`, `nama_pengambil_toga`, `tgl_ambil_toga`, `baju_toga`, `topi_toga`, `medali_toga`, `slendang_toga`, `id_user_toga`, `status_dok_lulusan`, `status_ijazah`, `status_transkrip`, `status_sertiifkat_combase`, `status_sertifikat_pelatihan`, `status_foto_wisuda`, `foto_wisuda`, `tgl_pengambilan_doklulusan`, `pengambil_doklulusan`, `nama_pengambil_doklulusan`, `file_suratkuasa_doklulusan`, `id_user_pengambilan_doklulusan`, `file_skripsi`, `file_jurnal`, `status_perpustakaan`, `status_request_undangan`, `timer`, `tgl_validasi_pembayaran`) VALUES
(49, 49, '2018-04-02 11:58:01', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Belum Daftar Yudisium', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 50, '2018-04-02 11:58:01', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Belum Daftar Yudisium', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 51, '2018-04-02 11:58:02', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Belum Daftar Yudisium', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 52, '2018-04-02 11:58:02', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Belum Daftar Yudisium', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 53, '2018-04-02 11:58:02', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Belum Daftar Yudisium', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 54, '2018-04-02 11:58:02', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Belum Daftar Yudisium', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 55, '2018-04-02 11:58:03', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Belum Daftar Yudisium', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 56, '2018-04-02 11:58:03', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Belum Daftar Yudisium', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 57, '2018-04-02 11:58:03', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Belum Daftar Yudisium', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 58, '2018-04-02 11:58:03', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Belum Daftar Yudisium', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 59, '2018-04-02 11:58:03', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 60, '2018-04-02 11:58:04', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 61, '2018-04-02 11:58:04', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 62, '2018-04-02 11:58:04', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 63, '2018-04-02 11:58:04', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 64, '2018-04-02 11:58:04', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 65, '2018-04-02 11:58:05', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 66, '2018-04-02 11:58:05', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 67, '2018-04-02 11:58:05', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 68, '2018-04-02 11:58:05', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 69, '2018-04-02 11:58:05', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 70, '2018-04-02 11:58:05', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 71, '2018-04-02 13:45:51', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Belum Daftar Yudisium', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'F_18111111.jpeg', NULL, NULL, NULL, NULL, NULL, 'IJ_18111111.pdf', 'FBB_18111111.pdf', '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 72, '2018-04-02 16:31:37', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'F_10311372.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 73, '2018-04-02 16:31:38', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 74, '2018-04-02 16:31:38', NULL, NULL, NULL, NULL, NULL, 'Belum', NULL, 'Ya', 'Belum', NULL, NULL, NULL, 'Ya', 'Tidak', 0, 'Belum', NULL, NULL, 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', NULL, 'Proses Pembuatan', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', 'Belum Diambil', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'Belum', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_wisuda_dok_lulusan`
--

CREATE TABLE `tb_wisuda_dok_lulusan` (
  `id_dok_lulusan` int(11) NOT NULL,
  `id_wisuda` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  `foto_wisuda` varchar(50) DEFAULT NULL,
  `file_ijasah` varchar(50) DEFAULT NULL,
  `file_ijasah_legalisir` varchar(50) DEFAULT NULL,
  `file_transkrip_asli` varchar(50) DEFAULT NULL,
  `file_transkrip_legalisir` varchar(50) DEFAULT NULL,
  `file_ser_combase_asli` varchar(50) DEFAULT NULL,
  `file_ser_combase_legalisir` varchar(50) DEFAULT NULL,
  `file_ser_pelatihan_asli` varchar(50) DEFAULT NULL,
  `file_ser_pelatihan_legalisir` varchar(50) DEFAULT NULL,
  `file_skpi_asli` varchar(50) DEFAULT NULL,
  `file_skpi_legalisir` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_wisuda_dok_lulusan`
--

INSERT INTO `tb_wisuda_dok_lulusan` (`id_dok_lulusan`, `id_wisuda`, `id_mhs`, `foto_wisuda`, `file_ijasah`, `file_ijasah_legalisir`, `file_transkrip_asli`, `file_transkrip_legalisir`, `file_ser_combase_asli`, `file_ser_combase_legalisir`, `file_ser_pelatihan_asli`, `file_ser_pelatihan_legalisir`, `file_skpi_asli`, `file_skpi_legalisir`) VALUES
(1, 2, 16, NULL, 'IJAZAH_ASLI_17212011.pdf', 'IJAZAH_LEGALISIR_17212011.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_wisuda_yudisium`
--

CREATE TABLE `tb_wisuda_yudisium` (
  `id_yudisium` int(11) NOT NULL,
  `id_wisuda` int(11) NOT NULL,
  `tgl_yudisium` date NOT NULL,
  `nama_yudisium` varchar(50) NOT NULL,
  `keterangan` text,
  `status` enum('Aktif','Non-Aktif') DEFAULT NULL,
  `tgl_mulai_daftar` date DEFAULT NULL,
  `tgl_akhir_daftar` date DEFAULT NULL,
  `nama_rektor` varchar(50) DEFAULT NULL,
  `no_sk_yudisium_kopertis` varchar(25) DEFAULT NULL,
  `tgl_sk_yudisium_kopertis` date DEFAULT NULL,
  `file_sk_yudisium_kopertis` varchar(50) DEFAULT NULL,
  `file_surat_pengantar_kopertis` varchar(50) DEFAULT NULL,
  `no_sk_terbaik` varchar(25) DEFAULT NULL,
  `tgl_sk_terbaik` date DEFAULT NULL,
  `file_sk_terbaik` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_wisuda_yudisium`
--

INSERT INTO `tb_wisuda_yudisium` (`id_yudisium`, `id_wisuda`, `tgl_yudisium`, `nama_yudisium`, `keterangan`, `status`, `tgl_mulai_daftar`, `tgl_akhir_daftar`, `nama_rektor`, `no_sk_yudisium_kopertis`, `tgl_sk_yudisium_kopertis`, `file_sk_yudisium_kopertis`, `file_surat_pengantar_kopertis`, `no_sk_terbaik`, `tgl_sk_terbaik`, `file_sk_terbaik`) VALUES
(2, 2, '2018-03-13', 'YUDISIUM 1', '-', 'Aktif', '2018-03-01', '2018-03-10', '-', '', '0000-00-00', 'SK_YUDISIUM_KOPERTIS_2.pdf', NULL, '', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_wisuda_yudisium_peserta`
--

CREATE TABLE `tb_wisuda_yudisium_peserta` (
  `id_peserta_yudisium` int(11) NOT NULL,
  `id_yudisium` int(11) NOT NULL,
  `id_skyudisium_fak` int(11) NOT NULL,
  `id_mhs` int(11) DEFAULT NULL,
  `ipk` double DEFAULT NULL,
  `tgl_masuk_kuliah` date DEFAULT NULL,
  `tgl_lulus` date DEFAULT NULL,
  `terbaik` enum('0','1','2','3') DEFAULT '0' COMMENT '0:peserta biasa; 1: Terbaik 1; 2: Terbaik 2; 3:Terbaik 3',
  `teladan` enum('0','1','2','3') DEFAULT '0' COMMENT '0:peserta biasa; 1: Teladan 1; 2: Teladan 2; 3:Teladan 3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_wisuda_yudisium_peserta`
--

INSERT INTO `tb_wisuda_yudisium_peserta` (`id_peserta_yudisium`, `id_yudisium`, `id_skyudisium_fak`, `id_mhs`, `ipk`, `tgl_masuk_kuliah`, `tgl_lulus`, `terbaik`, `teladan`) VALUES
(49, 2, 2, 16, NULL, NULL, '2018-03-01', '0', '0'),
(50, 2, 2, 40, NULL, NULL, '2018-03-02', '0', '0'),
(51, 2, 2, 41, NULL, NULL, '2018-03-03', '0', '0'),
(52, 2, 2, 42, NULL, NULL, '2018-03-01', '0', '0'),
(53, 2, 2, 43, NULL, NULL, '2018-03-02', '0', '0'),
(54, 2, 2, 44, NULL, NULL, '2018-03-03', '0', '0'),
(55, 2, 2, 45, NULL, NULL, '2018-03-01', '0', '0'),
(56, 2, 2, 46, NULL, NULL, '2018-03-02', '0', '0'),
(57, 2, 2, 47, NULL, NULL, '2018-03-03', '0', '0'),
(58, 2, 2, 48, NULL, NULL, '2018-03-01', '0', '0'),
(59, 2, 2, 49, NULL, NULL, '2018-03-02', '0', '0'),
(60, 2, 2, 50, NULL, NULL, '2018-03-03', '0', '0'),
(61, 2, 2, 51, NULL, NULL, '2018-03-01', '0', '0'),
(62, 2, 2, 52, NULL, NULL, '2018-03-02', '0', '0'),
(63, 2, 2, 53, NULL, NULL, '2018-03-03', '0', '0'),
(64, 2, 2, 54, NULL, NULL, '2018-03-01', '0', '0'),
(65, 2, 2, 55, NULL, NULL, '2018-03-02', '0', '0'),
(66, 2, 2, 56, NULL, NULL, '2018-03-03', '0', '0'),
(67, 2, 2, 57, NULL, NULL, '2018-03-01', '0', '0'),
(68, 2, 2, 58, NULL, NULL, '2018-03-02', '0', '0'),
(69, 2, 2, 59, NULL, NULL, '2018-03-03', '0', '0'),
(70, 2, 2, 60, NULL, NULL, '2018-03-01', '0', '0'),
(71, 2, 2, 66, NULL, NULL, '2018-03-01', '0', '0'),
(72, 2, 2, 67, NULL, NULL, '0000-00-00', '0', '0'),
(73, 2, 2, 68, NULL, NULL, '0000-00-00', '0', '0'),
(74, 2, 2, 70, NULL, NULL, '0000-00-00', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_wisuda_yudisium_skfak`
--

CREATE TABLE `tb_wisuda_yudisium_skfak` (
  `id_skyudisium_fak` int(11) NOT NULL,
  `id_yudisium` int(11) NOT NULL,
  `id_fakultas` int(11) DEFAULT NULL,
  `id_dosen_dekan` int(11) DEFAULT NULL,
  `no_sk_yudisium` varchar(25) DEFAULT NULL,
  `tgl_sk_yudisium` date DEFAULT NULL,
  `file_sk_yudisium` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_wisuda_yudisium_skfak`
--

INSERT INTO `tb_wisuda_yudisium_skfak` (`id_skyudisium_fak`, `id_yudisium`, `id_fakultas`, `id_dosen_dekan`, `no_sk_yudisium`, `tgl_sk_yudisium`, `file_sk_yudisium`) VALUES
(2, 2, 1, 14, 'SKDJS', '2018-03-31', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_groups_aksesprodi`
--
ALTER TABLE `b_groups_aksesprodi`
  ADD PRIMARY KEY (`id_user_aksesprodi`),
  ADD KEY `aksesprodi` (`id_prodi`),
  ADD KEY `UserAksesProdi` (`Id_GroupUser`);

--
-- Indexes for table `b_groupusers`
--
ALTER TABLE `b_groupusers`
  ADD PRIMARY KEY (`Id_GroupUser`);

--
-- Indexes for table `b_modulgroup`
--
ALTER TABLE `b_modulgroup`
  ADD PRIMARY KEY (`id_modulgroup`),
  ADD KEY `groupmodul` (`id_modul`),
  ADD KEY `groupuser` (`Id_GroupUser`);

--
-- Indexes for table `b_moduls`
--
ALTER TABLE `b_moduls`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `b_users`
--
ALTER TABLE `b_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `UsernameU` (`username`),
  ADD KEY `GroupUsers` (`Id_GroupUser`);

--
-- Indexes for table `data_agama`
--
ALTER TABLE `data_agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `data_jenis_tinggal`
--
ALTER TABLE `data_jenis_tinggal`
  ADD PRIMARY KEY (`id_jns_tinggal`);

--
-- Indexes for table `data_jenjang_pendidikan`
--
ALTER TABLE `data_jenjang_pendidikan`
  ADD PRIMARY KEY (`id_jenj_didik`);

--
-- Indexes for table `data_kabupaten`
--
ALTER TABLE `data_kabupaten`
  ADD PRIMARY KEY (`id_kab`);

--
-- Indexes for table `data_kecamatan`
--
ALTER TABLE `data_kecamatan`
  ADD PRIMARY KEY (`id_kec`);

--
-- Indexes for table `data_kewarganegaraan`
--
ALTER TABLE `data_kewarganegaraan`
  ADD PRIMARY KEY (`kewarganegaraan`);

--
-- Indexes for table `data_pekerjaan`
--
ALTER TABLE `data_pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `data_penghasilan`
--
ALTER TABLE `data_penghasilan`
  ADD PRIMARY KEY (`id_penghasilan`);

--
-- Indexes for table `data_transportasi`
--
ALTER TABLE `data_transportasi`
  ADD PRIMARY KEY (`id_alat_transport`);

--
-- Indexes for table `data_wilayah`
--
ALTER TABLE `data_wilayah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_induk_wilayah` (`id_induk_wilayah`),
  ADD KEY `id_wil` (`id_wil`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_cuti_detailpengajuan`
--
ALTER TABLE `tb_cuti_detailpengajuan`
  ADD PRIMARY KEY (`id_detaikpengajuancuti`),
  ADD KEY `id_pengajuancuti` (`id_pengajuancuti`),
  ADD KEY `id_semester` (`semester`);

--
-- Indexes for table `tb_cuti_pengajuan`
--
ALTER TABLE `tb_cuti_pengajuan`
  ADD PRIMARY KEY (`id_pengajuancuti`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_kaprodi` (`id_kaprodi`),
  ADD KEY `semesterpengajuancuti` (`semester`);

--
-- Indexes for table `tb_cuti_setbiaya`
--
ALTER TABLE `tb_cuti_setbiaya`
  ADD PRIMARY KEY (`id_cuti_setbiaya`);

--
-- Indexes for table `tb_cuti_setbiaya_detail`
--
ALTER TABLE `tb_cuti_setbiaya_detail`
  ADD PRIMARY KEY (`id_detail_setbiaya`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_cuti_setbiaya` (`id_cuti_setbiaya`);

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`id_dosen`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `agamdosen` (`agama`);

--
-- Indexes for table `tb_dosen_bimbingan`
--
ALTER TABLE `tb_dosen_bimbingan`
  ADD PRIMARY KEY (`id_bimbingan`);

--
-- Indexes for table `tb_dosen_file`
--
ALTER TABLE `tb_dosen_file`
  ADD PRIMARY KEY (`id_file`),
  ADD KEY `filedosen` (`id_dosen`);

--
-- Indexes for table `tb_dosen_fungsional`
--
ALTER TABLE `tb_dosen_fungsional`
  ADD PRIMARY KEY (`id_fungsional`);

--
-- Indexes for table `tb_dosen_mengajar`
--
ALTER TABLE `tb_dosen_mengajar`
  ADD PRIMARY KEY (`id_ngajar`);

--
-- Indexes for table `tb_dosen_pangkat`
--
ALTER TABLE `tb_dosen_pangkat`
  ADD PRIMARY KEY (`id_pangkat`);

--
-- Indexes for table `tb_dosen_pendidikan`
--
ALTER TABLE `tb_dosen_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `tb_dosen_sertifikasi`
--
ALTER TABLE `tb_dosen_sertifikasi`
  ADD PRIMARY KEY (`id_sertifikasi`);

--
-- Indexes for table `tb_fakultas`
--
ALTER TABLE `tb_fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `tb_gedung`
--
ALTER TABLE `tb_gedung`
  ADD PRIMARY KEY (`id_gedung`);

--
-- Indexes for table `tb_jadwalharian`
--
ALTER TABLE `tb_jadwalharian`
  ADD PRIMARY KEY (`id_jadwalharian`);

--
-- Indexes for table `tb_jadwalsemester`
--
ALTER TABLE `tb_jadwalsemester`
  ADD PRIMARY KEY (`id_jadwalsmt`);

--
-- Indexes for table `tb_jadwal_pembekalanpkl`
--
ALTER TABLE `tb_jadwal_pembekalanpkl`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `tb_jadwal_pembekalanulangpkl`
--
ALTER TABLE `tb_jadwal_pembekalanulangpkl`
  ADD PRIMARY KEY (`id_jadwal_ulang`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_kelompok_pembekalanpkl`
--
ALTER TABLE `tb_kelompok_pembekalanpkl`
  ADD PRIMARY KEY (`id_kelompok`);

--
-- Indexes for table `tb_kelompok_pembekalanpkl_detail`
--
ALTER TABLE `tb_kelompok_pembekalanpkl_detail`
  ADD PRIMARY KEY (`id_kel_detail`),
  ADD KEY `id_kelompok` (`id_kelompok`);

--
-- Indexes for table `tb_khs_cetak`
--
ALTER TABLE `tb_khs_cetak`
  ADD PRIMARY KEY (`id_pengajuancetakkhs`),
  ADD KEY `semester` (`semester`),
  ADD KEY `id_mhs` (`id_mhs`);

--
-- Indexes for table `tb_khs_cetakdetail`
--
ALTER TABLE `tb_khs_cetakdetail`
  ADD PRIMARY KEY (`id_detailcetakkhs`),
  ADD KEY `id_pengajuancetakkhs` (`id_pengajuancetakkhs`);

--
-- Indexes for table `tb_khs_setbiaya`
--
ALTER TABLE `tb_khs_setbiaya`
  ADD PRIMARY KEY (`id_khs_setbiaya`);

--
-- Indexes for table `tb_khs_setbiaya_detail`
--
ALTER TABLE `tb_khs_setbiaya_detail`
  ADD PRIMARY KEY (`id_khs_setbiaya_detail`),
  ADD KEY `id_khs_setbiaya` (`id_khs_setbiaya`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indexes for table `tb_kurikulum`
--
ALTER TABLE `tb_kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`),
  ADD KEY `kurprodi` (`id_prodi`);

--
-- Indexes for table `tb_kurmatkul`
--
ALTER TABLE `tb_kurmatkul`
  ADD PRIMARY KEY (`id_matakuliah`),
  ADD KEY `mtkprdoi` (`id_prodi`);

--
-- Indexes for table `tb_kur_matkulprodi`
--
ALTER TABLE `tb_kur_matkulprodi`
  ADD PRIMARY KEY (`id_matkulprodi`),
  ADD KEY `id_kurikulum` (`id_kurikulum`),
  ADD KEY `id_matakuliah` (`id_matakuliah`),
  ADD KEY `id_prodi` (`id_prodi`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id_mhs`),
  ADD UNIQUE KEY `npm` (`npm`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `agamamhs` (`agama`),
  ADD KEY `tinggalmhs` (`jenis_tinggal`),
  ADD KEY `transportmhs` (`alat_transportasi`);

--
-- Indexes for table `tb_mahasiswa_berkas`
--
ALTER TABLE `tb_mahasiswa_berkas`
  ADD PRIMARY KEY (`id_berkasmhs`),
  ADD KEY `berkasmhs` (`id_mhs`);

--
-- Indexes for table `tb_mahasiswa_ormawa`
--
ALTER TABLE `tb_mahasiswa_ormawa`
  ADD PRIMARY KEY (`id_mhsormawa`),
  ADD KEY `ormawamhs` (`id_mhs`),
  ADD KEY `ormawakegiatan` (`id_ormawa`);

--
-- Indexes for table `tb_mahasiswa_prestasi`
--
ALTER TABLE `tb_mahasiswa_prestasi`
  ADD PRIMARY KEY (`id_prestasimhs`),
  ADD KEY `prestasimhs` (`id_mhs`);

--
-- Indexes for table `tb_matakuliah_prasyarat_pkl`
--
ALTER TABLE `tb_matakuliah_prasyarat_pkl`
  ADD PRIMARY KEY (`id_makul_pkl`);

--
-- Indexes for table `tb_matauji_pembekalan_pkl`
--
ALTER TABLE `tb_matauji_pembekalan_pkl`
  ADD PRIMARY KEY (`id_ujipembekalan`);

--
-- Indexes for table `tb_matkulkurikulum`
--
ALTER TABLE `tb_matkulkurikulum`
  ADD PRIMARY KEY (`id_matkulkurikulum`),
  ADD KEY `id_matakuliah` (`id_matakuliah`),
  ADD KEY `id_kurikulum` (`id_kurikulum`);

--
-- Indexes for table `tb_nilai_prasyarat_pkl`
--
ALTER TABLE `tb_nilai_prasyarat_pkl`
  ADD PRIMARY KEY (`id_nilai_prasyarat`);

--
-- Indexes for table `tb_notifikasi`
--
ALTER TABLE `tb_notifikasi`
  ADD PRIMARY KEY (`id_notifikasi`);

--
-- Indexes for table `tb_ormawa`
--
ALTER TABLE `tb_ormawa`
  ADD PRIMARY KEY (`id_ormawa`);

--
-- Indexes for table `tb_pejabatpkl`
--
ALTER TABLE `tb_pejabatpkl`
  ADD PRIMARY KEY (`id_pj`),
  ADD KEY `dosendekan` (`id_dosen`),
  ADD KEY `dekanfakultas` (`id_fakultas`);

--
-- Indexes for table `tb_pejabat_dekan`
--
ALTER TABLE `tb_pejabat_dekan`
  ADD PRIMARY KEY (`id_dekan`),
  ADD KEY `dosendekan` (`id_dosen`),
  ADD KEY `dekanfakultas` (`id_fakultas`);

--
-- Indexes for table `tb_pejabat_kaprodi`
--
ALTER TABLE `tb_pejabat_kaprodi`
  ADD PRIMARY KEY (`id_kaprodi`),
  ADD KEY `pejabatprodi` (`id_prodi`),
  ADD KEY `pjbtprd` (`id_dosen`);

--
-- Indexes for table `tb_pengajuan_seminar`
--
ALTER TABLE `tb_pengajuan_seminar`
  ADD PRIMARY KEY (`id_pengajuanseminar`);

--
-- Indexes for table `tb_periode_pkl`
--
ALTER TABLE `tb_periode_pkl`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indexes for table `tb_perusahaan`
--
ALTER TABLE `tb_perusahaan`
  ADD PRIMARY KEY (`kd_perusahaan`);

--
-- Indexes for table `tb_pkl`
--
ALTER TABLE `tb_pkl`
  ADD PRIMARY KEY (`id_pkl`);

--
-- Indexes for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`id_prodi`),
  ADD KEY `prodifak` (`id_fakultas`);

--
-- Indexes for table `tb_prodiakreditasi`
--
ALTER TABLE `tb_prodiakreditasi`
  ADD PRIMARY KEY (`id_akreditasi`),
  ADD KEY `akreditasiprodi` (`id_prodi`);

--
-- Indexes for table `tb_ruangan`
--
ALTER TABLE `tb_ruangan`
  ADD PRIMARY KEY (`id_ruangan`),
  ADD KEY `ruanggedung` (`id_gedung`);

--
-- Indexes for table `tb_semester`
--
ALTER TABLE `tb_semester`
  ADD PRIMARY KEY (`semester`);

--
-- Indexes for table `tb_sidangskripsi`
--
ALTER TABLE `tb_sidangskripsi`
  ADD PRIMARY KEY (`id_SidangSkripsi`),
  ADD KEY `pembimbing` (`id_dosenKetua`),
  ADD KEY `penguji` (`id_dosenUtama`),
  ADD KEY `ruangsidang` (`id_ruangan`),
  ADD KEY `prodisidang` (`id_prodi`),
  ADD KEY `dosenpembacaSK` (`id_dosenpembacaSK`);

--
-- Indexes for table `tb_skripsi_kompre`
--
ALTER TABLE `tb_skripsi_kompre`
  ADD PRIMARY KEY (`id_kompre`);

--
-- Indexes for table `tb_skripsi_pengajuanjudul`
--
ALTER TABLE `tb_skripsi_pengajuanjudul`
  ADD PRIMARY KEY (`id_pengajuan_judul`),
  ADD KEY `id_skjudul` (`id_sk_skripsi`),
  ADD KEY `pengajuansjudulmhs` (`id_mhs`),
  ADD KEY `semesterpengajuanjudul` (`id_semester`),
  ADD KEY `biayaskripsi` (`id_skripsi_setbiaya`);

--
-- Indexes for table `tb_skskripsi`
--
ALTER TABLE `tb_skskripsi`
  ADD PRIMARY KEY (`id_sk_skripsi`);

--
-- Indexes for table `tb_skskripsi_detail`
--
ALTER TABLE `tb_skskripsi_detail`
  ADD PRIMARY KEY (`id_detailsk`);

--
-- Indexes for table `tb_staff`
--
ALTER TABLE `tb_staff`
  ADD PRIMARY KEY (`id_staff`);

--
-- Indexes for table `tb_staff_divisi`
--
ALTER TABLE `tb_staff_divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `tb_st_dokumen`
--
ALTER TABLE `tb_st_dokumen`
  ADD PRIMARY KEY (`id_dokumen`);

--
-- Indexes for table `tb_st_pengajuan`
--
ALTER TABLE `tb_st_pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `pengajuan_biaya` (`id_st_setbiaya`),
  ADD KEY `pengajuan_mahasiswa` (`id_mahasiswa`),
  ADD KEY `pengajuan_periode` (`semester`);

--
-- Indexes for table `tb_st_pengajuan_detail`
--
ALTER TABLE `tb_st_pengajuan_detail`
  ADD PRIMARY KEY (`id_pengajuan_detail`),
  ADD KEY `detail_pengajuan` (`id_pengajuan`),
  ADD KEY `dosenst` (`id_dosen`),
  ADD KEY `matkulst` (`id_matakuliah`);

--
-- Indexes for table `tb_st_setbiaya`
--
ALTER TABLE `tb_st_setbiaya`
  ADD PRIMARY KEY (`id_st_setbiaya`);

--
-- Indexes for table `tb_st_setbiaya_detail`
--
ALTER TABLE `tb_st_setbiaya_detail`
  ADD PRIMARY KEY (`id_st_stbiaya_detail`),
  ADD KEY `setdetailbiayast` (`id_st_setbiaya`),
  ADD KEY `detsetbiayast` (`id_prodi`);

--
-- Indexes for table `tb_suket_kuliah`
--
ALTER TABLE `tb_suket_kuliah`
  ADD PRIMARY KEY (`id_suket_kuliah`),
  ADD KEY `suketmhs` (`id_mhs`),
  ADD KEY `semester` (`semester`);

--
-- Indexes for table `tb_suket_lulus`
--
ALTER TABLE `tb_suket_lulus`
  ADD PRIMARY KEY (`id_surat_lulus`),
  ADD KEY `suketlulus` (`id_mhs`),
  ADD KEY `smtsuketlulus` (`semester`);

--
-- Indexes for table `tb_ujian_pembekalanpkl`
--
ALTER TABLE `tb_ujian_pembekalanpkl`
  ADD PRIMARY KEY (`id_ujian`);

--
-- Indexes for table `tb_ujian_pembekalanulangpkl`
--
ALTER TABLE `tb_ujian_pembekalanulangpkl`
  ADD PRIMARY KEY (`id_ujian_ulang`);

--
-- Indexes for table `tb_wisuda`
--
ALTER TABLE `tb_wisuda`
  ADD PRIMARY KEY (`id_wisuda`);

--
-- Indexes for table `tb_wisuda_daftar`
--
ALTER TABLE `tb_wisuda_daftar`
  ADD PRIMARY KEY (`id_daftarwisuda`),
  ADD KEY `pesertadaftar` (`id_peserta_yudisium`);

--
-- Indexes for table `tb_wisuda_dok_lulusan`
--
ALTER TABLE `tb_wisuda_dok_lulusan`
  ADD PRIMARY KEY (`id_dok_lulusan`),
  ADD KEY `dok_lulusanwisuda` (`id_wisuda`);

--
-- Indexes for table `tb_wisuda_yudisium`
--
ALTER TABLE `tb_wisuda_yudisium`
  ADD PRIMARY KEY (`id_yudisium`),
  ADD KEY `yudisium_wisuda` (`id_wisuda`);

--
-- Indexes for table `tb_wisuda_yudisium_peserta`
--
ALTER TABLE `tb_wisuda_yudisium_peserta`
  ADD PRIMARY KEY (`id_peserta_yudisium`),
  ADD KEY `pesertayudisium` (`id_yudisium`),
  ADD KEY `sk_yudisiumpeserta` (`id_skyudisium_fak`);

--
-- Indexes for table `tb_wisuda_yudisium_skfak`
--
ALTER TABLE `tb_wisuda_yudisium_skfak`
  ADD PRIMARY KEY (`id_skyudisium_fak`),
  ADD KEY `sk_yudisium` (`id_yudisium`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_groups_aksesprodi`
--
ALTER TABLE `b_groups_aksesprodi`
  MODIFY `id_user_aksesprodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=669;
--
-- AUTO_INCREMENT for table `b_groupusers`
--
ALTER TABLE `b_groupusers`
  MODIFY `Id_GroupUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `b_modulgroup`
--
ALTER TABLE `b_modulgroup`
  MODIFY `id_modulgroup` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=911;
--
-- AUTO_INCREMENT for table `b_moduls`
--
ALTER TABLE `b_moduls`
  MODIFY `id_modul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `b_users`
--
ALTER TABLE `b_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `data_agama`
--
ALTER TABLE `data_agama`
  MODIFY `id_agama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `data_jenis_tinggal`
--
ALTER TABLE `data_jenis_tinggal`
  MODIFY `id_jns_tinggal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `data_jenjang_pendidikan`
--
ALTER TABLE `data_jenjang_pendidikan`
  MODIFY `id_jenj_didik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `data_kabupaten`
--
ALTER TABLE `data_kabupaten`
  MODIFY `id_kab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;
--
-- AUTO_INCREMENT for table `data_kecamatan`
--
ALTER TABLE `data_kecamatan`
  MODIFY `id_kec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5327;
--
-- AUTO_INCREMENT for table `data_pekerjaan`
--
ALTER TABLE `data_pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `data_penghasilan`
--
ALTER TABLE `data_penghasilan`
  MODIFY `id_penghasilan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `data_transportasi`
--
ALTER TABLE `data_transportasi`
  MODIFY `id_alat_transport` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `data_wilayah`
--
ALTER TABLE `data_wilayah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7462;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_cuti_detailpengajuan`
--
ALTER TABLE `tb_cuti_detailpengajuan`
  MODIFY `id_detaikpengajuancuti` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_cuti_pengajuan`
--
ALTER TABLE `tb_cuti_pengajuan`
  MODIFY `id_pengajuancuti` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_cuti_setbiaya`
--
ALTER TABLE `tb_cuti_setbiaya`
  MODIFY `id_cuti_setbiaya` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_cuti_setbiaya_detail`
--
ALTER TABLE `tb_cuti_setbiaya_detail`
  MODIFY `id_detail_setbiaya` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tb_dosen_bimbingan`
--
ALTER TABLE `tb_dosen_bimbingan`
  MODIFY `id_bimbingan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_dosen_file`
--
ALTER TABLE `tb_dosen_file`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_dosen_fungsional`
--
ALTER TABLE `tb_dosen_fungsional`
  MODIFY `id_fungsional` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_dosen_mengajar`
--
ALTER TABLE `tb_dosen_mengajar`
  MODIFY `id_ngajar` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_dosen_pangkat`
--
ALTER TABLE `tb_dosen_pangkat`
  MODIFY `id_pangkat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_dosen_pendidikan`
--
ALTER TABLE `tb_dosen_pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_dosen_sertifikasi`
--
ALTER TABLE `tb_dosen_sertifikasi`
  MODIFY `id_sertifikasi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_fakultas`
--
ALTER TABLE `tb_fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_gedung`
--
ALTER TABLE `tb_gedung`
  MODIFY `id_gedung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_jadwalharian`
--
ALTER TABLE `tb_jadwalharian`
  MODIFY `id_jadwalharian` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_jadwalsemester`
--
ALTER TABLE `tb_jadwalsemester`
  MODIFY `id_jadwalsmt` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_jadwal_pembekalanpkl`
--
ALTER TABLE `tb_jadwal_pembekalanpkl`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_jadwal_pembekalanulangpkl`
--
ALTER TABLE `tb_jadwal_pembekalanulangpkl`
  MODIFY `id_jadwal_ulang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_kelompok_pembekalanpkl`
--
ALTER TABLE `tb_kelompok_pembekalanpkl`
  MODIFY `id_kelompok` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_kelompok_pembekalanpkl_detail`
--
ALTER TABLE `tb_kelompok_pembekalanpkl_detail`
  MODIFY `id_kel_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_khs_cetak`
--
ALTER TABLE `tb_khs_cetak`
  MODIFY `id_pengajuancetakkhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_khs_cetakdetail`
--
ALTER TABLE `tb_khs_cetakdetail`
  MODIFY `id_detailcetakkhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_khs_setbiaya`
--
ALTER TABLE `tb_khs_setbiaya`
  MODIFY `id_khs_setbiaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_khs_setbiaya_detail`
--
ALTER TABLE `tb_khs_setbiaya_detail`
  MODIFY `id_khs_setbiaya_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_kurikulum`
--
ALTER TABLE `tb_kurikulum`
  MODIFY `id_kurikulum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb_kurmatkul`
--
ALTER TABLE `tb_kurmatkul`
  MODIFY `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tb_kur_matkulprodi`
--
ALTER TABLE `tb_kur_matkulprodi`
  MODIFY `id_matkulprodi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `tb_mahasiswa_berkas`
--
ALTER TABLE `tb_mahasiswa_berkas`
  MODIFY `id_berkasmhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_mahasiswa_ormawa`
--
ALTER TABLE `tb_mahasiswa_ormawa`
  MODIFY `id_mhsormawa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_mahasiswa_prestasi`
--
ALTER TABLE `tb_mahasiswa_prestasi`
  MODIFY `id_prestasimhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_matakuliah_prasyarat_pkl`
--
ALTER TABLE `tb_matakuliah_prasyarat_pkl`
  MODIFY `id_makul_pkl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_matauji_pembekalan_pkl`
--
ALTER TABLE `tb_matauji_pembekalan_pkl`
  MODIFY `id_ujipembekalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_matkulkurikulum`
--
ALTER TABLE `tb_matkulkurikulum`
  MODIFY `id_matkulkurikulum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tb_nilai_prasyarat_pkl`
--
ALTER TABLE `tb_nilai_prasyarat_pkl`
  MODIFY `id_nilai_prasyarat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_notifikasi`
--
ALTER TABLE `tb_notifikasi`
  MODIFY `id_notifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tb_ormawa`
--
ALTER TABLE `tb_ormawa`
  MODIFY `id_ormawa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_pejabatpkl`
--
ALTER TABLE `tb_pejabatpkl`
  MODIFY `id_pj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_pejabat_dekan`
--
ALTER TABLE `tb_pejabat_dekan`
  MODIFY `id_dekan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_pejabat_kaprodi`
--
ALTER TABLE `tb_pejabat_kaprodi`
  MODIFY `id_kaprodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_pengajuan_seminar`
--
ALTER TABLE `tb_pengajuan_seminar`
  MODIFY `id_pengajuanseminar` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_periode_pkl`
--
ALTER TABLE `tb_periode_pkl`
  MODIFY `id_periode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tb_prodiakreditasi`
--
ALTER TABLE `tb_prodiakreditasi`
  MODIFY `id_akreditasi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_ruangan`
--
ALTER TABLE `tb_ruangan`
  MODIFY `id_ruangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_sidangskripsi`
--
ALTER TABLE `tb_sidangskripsi`
  MODIFY `id_SidangSkripsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `tb_skripsi_kompre`
--
ALTER TABLE `tb_skripsi_kompre`
  MODIFY `id_kompre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `tb_skripsi_pengajuanjudul`
--
ALTER TABLE `tb_skripsi_pengajuanjudul`
  MODIFY `id_pengajuan_judul` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `tb_skskripsi`
--
ALTER TABLE `tb_skskripsi`
  MODIFY `id_sk_skripsi` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_skskripsi_detail`
--
ALTER TABLE `tb_skskripsi_detail`
  MODIFY `id_detailsk` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_staff`
--
ALTER TABLE `tb_staff`
  MODIFY `id_staff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_staff_divisi`
--
ALTER TABLE `tb_staff_divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tb_st_dokumen`
--
ALTER TABLE `tb_st_dokumen`
  MODIFY `id_dokumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_st_pengajuan`
--
ALTER TABLE `tb_st_pengajuan`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_st_pengajuan_detail`
--
ALTER TABLE `tb_st_pengajuan_detail`
  MODIFY `id_pengajuan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tb_st_setbiaya`
--
ALTER TABLE `tb_st_setbiaya`
  MODIFY `id_st_setbiaya` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tb_st_setbiaya_detail`
--
ALTER TABLE `tb_st_setbiaya_detail`
  MODIFY `id_st_stbiaya_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
--
-- AUTO_INCREMENT for table `tb_suket_kuliah`
--
ALTER TABLE `tb_suket_kuliah`
  MODIFY `id_suket_kuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tb_suket_lulus`
--
ALTER TABLE `tb_suket_lulus`
  MODIFY `id_surat_lulus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_ujian_pembekalanpkl`
--
ALTER TABLE `tb_ujian_pembekalanpkl`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_ujian_pembekalanulangpkl`
--
ALTER TABLE `tb_ujian_pembekalanulangpkl`
  MODIFY `id_ujian_ulang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_wisuda`
--
ALTER TABLE `tb_wisuda`
  MODIFY `id_wisuda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_wisuda_daftar`
--
ALTER TABLE `tb_wisuda_daftar`
  MODIFY `id_daftarwisuda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `tb_wisuda_dok_lulusan`
--
ALTER TABLE `tb_wisuda_dok_lulusan`
  MODIFY `id_dok_lulusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_wisuda_yudisium`
--
ALTER TABLE `tb_wisuda_yudisium`
  MODIFY `id_yudisium` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_wisuda_yudisium_peserta`
--
ALTER TABLE `tb_wisuda_yudisium_peserta`
  MODIFY `id_peserta_yudisium` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `tb_wisuda_yudisium_skfak`
--
ALTER TABLE `tb_wisuda_yudisium_skfak`
  MODIFY `id_skyudisium_fak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `b_groups_aksesprodi`
--
ALTER TABLE `b_groups_aksesprodi`
  ADD CONSTRAINT `aksesprodi` FOREIGN KEY (`id_prodi`) REFERENCES `tb_prodi` (`id_prodi`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `grpprodistaff` FOREIGN KEY (`Id_GroupUser`) REFERENCES `b_groupusers` (`Id_GroupUser`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `b_modulgroup`
--
ALTER TABLE `b_modulgroup`
  ADD CONSTRAINT `groupmodul` FOREIGN KEY (`id_modul`) REFERENCES `b_moduls` (`id_modul`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `grpmodul` FOREIGN KEY (`Id_GroupUser`) REFERENCES `b_groupusers` (`Id_GroupUser`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `b_users`
--
ALTER TABLE `b_users`
  ADD CONSTRAINT `grpuser` FOREIGN KEY (`Id_GroupUser`) REFERENCES `b_groupusers` (`Id_GroupUser`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_cuti_detailpengajuan`
--
ALTER TABLE `tb_cuti_detailpengajuan`
  ADD CONSTRAINT `pengajuancuti` FOREIGN KEY (`id_pengajuancuti`) REFERENCES `tb_cuti_pengajuan` (`id_pengajuancuti`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `smtcuti` FOREIGN KEY (`semester`) REFERENCES `tb_semester` (`semester`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_cuti_setbiaya_detail`
--
ALTER TABLE `tb_cuti_setbiaya_detail`
  ADD CONSTRAINT `detailbiayacuti` FOREIGN KEY (`id_cuti_setbiaya`) REFERENCES `tb_cuti_setbiaya` (`id_cuti_setbiaya`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `prodiCuti` FOREIGN KEY (`id_prodi`) REFERENCES `tb_prodi` (`id_prodi`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD CONSTRAINT `agamdosen` FOREIGN KEY (`agama`) REFERENCES `data_agama` (`id_agama`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_dosen_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `tb_prodi` (`id_prodi`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_dosen_file`
--
ALTER TABLE `tb_dosen_file`
  ADD CONSTRAINT `filedosen` FOREIGN KEY (`id_dosen`) REFERENCES `tb_dosen` (`id_dosen`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_khs_cetak`
--
ALTER TABLE `tb_khs_cetak`
  ADD CONSTRAINT `tb_khs_cetak_ibfk_1` FOREIGN KEY (`semester`) REFERENCES `tb_semester` (`semester`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_khs_cetak_ibfk_2` FOREIGN KEY (`id_mhs`) REFERENCES `tb_mahasiswa` (`id_mhs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_khs_cetakdetail`
--
ALTER TABLE `tb_khs_cetakdetail`
  ADD CONSTRAINT `tb_khs_cetakdetail_ibfk_1` FOREIGN KEY (`id_pengajuancetakkhs`) REFERENCES `tb_khs_cetak` (`id_pengajuancetakkhs`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_khs_setbiaya_detail`
--
ALTER TABLE `tb_khs_setbiaya_detail`
  ADD CONSTRAINT `tb_khs_setbiaya_detail_ibfk_1` FOREIGN KEY (`id_khs_setbiaya`) REFERENCES `tb_khs_setbiaya` (`id_khs_setbiaya`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_khs_setbiaya_detail_ibfk_2` FOREIGN KEY (`id_prodi`) REFERENCES `tb_prodi` (`id_prodi`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_kurikulum`
--
ALTER TABLE `tb_kurikulum`
  ADD CONSTRAINT `kurprodi` FOREIGN KEY (`id_prodi`) REFERENCES `tb_prodi` (`id_prodi`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_kurmatkul`
--
ALTER TABLE `tb_kurmatkul`
  ADD CONSTRAINT `mtkprdoi` FOREIGN KEY (`id_prodi`) REFERENCES `tb_prodi` (`id_prodi`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_kur_matkulprodi`
--
ALTER TABLE `tb_kur_matkulprodi`
  ADD CONSTRAINT `tb_kur_matkulprodi_ibfk_1` FOREIGN KEY (`id_kurikulum`) REFERENCES `tb_kurikulum` (`id_kurikulum`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_kur_matkulprodi_ibfk_2` FOREIGN KEY (`id_matakuliah`) REFERENCES `tb_kurmatkul` (`id_matakuliah`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_kur_matkulprodi_ibfk_3` FOREIGN KEY (`id_prodi`) REFERENCES `tb_prodi` (`id_prodi`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD CONSTRAINT `agamamhs` FOREIGN KEY (`agama`) REFERENCES `data_agama` (`id_agama`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `prodimhs` FOREIGN KEY (`id_prodi`) REFERENCES `tb_prodi` (`id_prodi`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_mahasiswa_berkas`
--
ALTER TABLE `tb_mahasiswa_berkas`
  ADD CONSTRAINT `berkasmhs` FOREIGN KEY (`id_mhs`) REFERENCES `tb_mahasiswa` (`id_mhs`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_mahasiswa_ormawa`
--
ALTER TABLE `tb_mahasiswa_ormawa`
  ADD CONSTRAINT `ormawakegiatan` FOREIGN KEY (`id_ormawa`) REFERENCES `tb_ormawa` (`id_ormawa`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ormawamhs` FOREIGN KEY (`id_mhs`) REFERENCES `tb_mahasiswa` (`id_mhs`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_mahasiswa_prestasi`
--
ALTER TABLE `tb_mahasiswa_prestasi`
  ADD CONSTRAINT `prestasimhs` FOREIGN KEY (`id_mhs`) REFERENCES `tb_mahasiswa` (`id_mhs`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_matkulkurikulum`
--
ALTER TABLE `tb_matkulkurikulum`
  ADD CONSTRAINT `tb_matkulkurikulum_ibfk_1` FOREIGN KEY (`id_matakuliah`) REFERENCES `tb_kurmatkul` (`id_matakuliah`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_matkulkurikulum_ibfk_2` FOREIGN KEY (`id_kurikulum`) REFERENCES `tb_kurikulum` (`id_kurikulum`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_pejabat_dekan`
--
ALTER TABLE `tb_pejabat_dekan`
  ADD CONSTRAINT `dekanfakultas` FOREIGN KEY (`id_fakultas`) REFERENCES `tb_fakultas` (`id_fakultas`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `dosendekan` FOREIGN KEY (`id_dosen`) REFERENCES `tb_dosen` (`id_dosen`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_pejabat_kaprodi`
--
ALTER TABLE `tb_pejabat_kaprodi`
  ADD CONSTRAINT `pejabatprodi` FOREIGN KEY (`id_prodi`) REFERENCES `tb_prodi` (`id_prodi`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `pjbtprd` FOREIGN KEY (`id_dosen`) REFERENCES `tb_dosen` (`id_dosen`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD CONSTRAINT `prodifak` FOREIGN KEY (`id_fakultas`) REFERENCES `tb_fakultas` (`id_fakultas`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_prodiakreditasi`
--
ALTER TABLE `tb_prodiakreditasi`
  ADD CONSTRAINT `akreditasiprodi` FOREIGN KEY (`id_prodi`) REFERENCES `tb_prodi` (`id_prodi`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_ruangan`
--
ALTER TABLE `tb_ruangan`
  ADD CONSTRAINT `ruanggedung` FOREIGN KEY (`id_gedung`) REFERENCES `tb_gedung` (`id_gedung`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_sidangskripsi`
--
ALTER TABLE `tb_sidangskripsi`
  ADD CONSTRAINT `pembimbing` FOREIGN KEY (`id_dosenKetua`) REFERENCES `tb_dosen` (`id_dosen`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `penguji` FOREIGN KEY (`id_dosenUtama`) REFERENCES `tb_dosen` (`id_dosen`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `prodisidang` FOREIGN KEY (`id_prodi`) REFERENCES `tb_prodi` (`id_prodi`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `ruangsidang` FOREIGN KEY (`id_ruangan`) REFERENCES `tb_ruangan` (`id_ruangan`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_skripsi_pengajuanjudul`
--
ALTER TABLE `tb_skripsi_pengajuanjudul`
  ADD CONSTRAINT `pengajuansjudulmhs` FOREIGN KEY (`id_mhs`) REFERENCES `tb_mahasiswa` (`id_mhs`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_st_pengajuan`
--
ALTER TABLE `tb_st_pengajuan`
  ADD CONSTRAINT `mhssst` FOREIGN KEY (`id_mahasiswa`) REFERENCES `tb_mahasiswa` (`id_mhs`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `stsetbiaya` FOREIGN KEY (`id_st_setbiaya`) REFERENCES `tb_st_setbiaya` (`id_st_setbiaya`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_st_pengajuan_detail`
--
ALTER TABLE `tb_st_pengajuan_detail`
  ADD CONSTRAINT `detpengajuanst` FOREIGN KEY (`id_pengajuan`) REFERENCES `tb_st_pengajuan` (`id_pengajuan`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `dosenst` FOREIGN KEY (`id_dosen`) REFERENCES `tb_dosen` (`id_dosen`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `matkulst` FOREIGN KEY (`id_matakuliah`) REFERENCES `tb_kurmatkul` (`id_matakuliah`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_st_setbiaya_detail`
--
ALTER TABLE `tb_st_setbiaya_detail`
  ADD CONSTRAINT `detsetbiayast` FOREIGN KEY (`id_prodi`) REFERENCES `tb_prodi` (`id_prodi`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `detstsetbiaya` FOREIGN KEY (`id_st_setbiaya`) REFERENCES `tb_st_setbiaya` (`id_st_setbiaya`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_suket_kuliah`
--
ALTER TABLE `tb_suket_kuliah`
  ADD CONSTRAINT `tb_suket_kuliah_ibfk_1` FOREIGN KEY (`id_mhs`) REFERENCES `tb_mahasiswa` (`id_mhs`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_suket_kuliah_ibfk_2` FOREIGN KEY (`semester`) REFERENCES `tb_semester` (`semester`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_wisuda_daftar`
--
ALTER TABLE `tb_wisuda_daftar`
  ADD CONSTRAINT `pesertadaftar` FOREIGN KEY (`id_peserta_yudisium`) REFERENCES `tb_wisuda_yudisium_peserta` (`id_peserta_yudisium`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_wisuda_dok_lulusan`
--
ALTER TABLE `tb_wisuda_dok_lulusan`
  ADD CONSTRAINT `dok_lulusanwisuda` FOREIGN KEY (`id_wisuda`) REFERENCES `tb_wisuda` (`id_wisuda`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_wisuda_yudisium`
--
ALTER TABLE `tb_wisuda_yudisium`
  ADD CONSTRAINT `yudisium_wisuda` FOREIGN KEY (`id_wisuda`) REFERENCES `tb_wisuda` (`id_wisuda`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_wisuda_yudisium_peserta`
--
ALTER TABLE `tb_wisuda_yudisium_peserta`
  ADD CONSTRAINT `pesertayudisium` FOREIGN KEY (`id_yudisium`) REFERENCES `tb_wisuda_yudisium` (`id_yudisium`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `sk_yudisiumpeserta` FOREIGN KEY (`id_skyudisium_fak`) REFERENCES `tb_wisuda_yudisium_skfak` (`id_skyudisium_fak`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tb_wisuda_yudisium_skfak`
--
ALTER TABLE `tb_wisuda_yudisium_skfak`
  ADD CONSTRAINT `sk_yudisium` FOREIGN KEY (`id_yudisium`) REFERENCES `tb_wisuda_yudisium` (`id_yudisium`) ON DELETE NO ACTION ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
