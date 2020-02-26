-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Feb 2020 pada 01.22
-- Versi Server: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nkit_pmii`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE IF NOT EXISTS `anggota` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `no_anggota` varchar(16) DEFAULT NULL,
  `tanggal_gabung` date DEFAULT NULL,
  `id_pengguna` int(11) DEFAULT NULL,
  `nik` varchar(26) DEFAULT NULL,
  `nama` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(32) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `telepon` varchar(13) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `desa` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kabupaten` varchar(255) DEFAULT NULL,
  `asal_kampus` varchar(255) DEFAULT NULL,
  `fakultas` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  `bulan_mapaba` varchar(255) DEFAULT NULL,
  `tahun_mapaba` year(4) DEFAULT NULL,
  `motivasi` text,
  `status_anggota` enum('Aktif','Pasif','Suspend') NOT NULL DEFAULT 'Aktif',
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id`, `created_at`, `updated_at`, `status`, `no_anggota`, `tanggal_gabung`, `id_pengguna`, `nik`, `nama`, `email`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `telepon`, `alamat`, `desa`, `kecamatan`, `kabupaten`, `asal_kampus`, `fakultas`, `prodi`, `bulan_mapaba`, `tahun_mapaba`, `motivasi`, `status_anggota`, `foto`) VALUES
(1, '2020-02-19 17:21:36', '2020-02-26 06:48:25', 0, '6303190001', '2010-02-19', 1, '630340520219900004', 'Fathul Hafidh', 'havid.aide@gmail.com', 'Laki-laki', 'Jakarta', '2012-01-04', '082153278782', 'Komp. Al Icwhan Jl. Cahaya II no. 27 RT/RW:06/03', 'Guntung Paikat', 'Banjarbaru Selatan', 'Banjarbaru', 'Universitas Islam Kalimantan Muhammad Arsyad Al Banjari', 'Fakultas Teknologi Informasi', 'Teknik Informatika', 'Januari', 2003, '  Maka nikmat Tuhanmu yang manakah yang kamu dustakan  ', 'Aktif', 'avatar-dZJXX.jpg'),
(4, '2020-02-25 10:16:46', '2020-02-26 06:11:49', 1, '121', '2020-02-25', 2, '2344455', 'budi and', 'i@i', 'Laki-laki', 'jakarte', '1992-02-05', '088675655546', 'jsdsad', 'k', 'l', 'm', 'STMIK Banjarbaru', 'o', 'p', 'q', 0000, '            s            ', 'Pasif', 'avatar-HRVl7.jpg'),
(5, '2020-02-25 11:16:31', '2020-02-25 11:16:31', 1, '9009003', '2020-02-25', 3, '6329390002', 'Samsudin', 'udin@gmail.com', 'Laki-laki', NULL, '2003-09-01', '08343943949', 'Jl. Secawan madu no 44', 'Sungai Paring', 'Martapura', 'Martapura', 'IAIN Antasari', 'Tarbiah', 'Pendidikan ', 'Maret', 2018, 'Hidup Nyaman', 'Aktif', NULL),
(6, '2020-02-25 12:00:07', '2020-02-25 12:00:07', 1, '901212001', '2020-02-25', 4, '902323203', 'mamat', 'mat@mail.net', 'Laki-laki', NULL, '1999-02-25', '09232129001', 'Jl. Kasuari', 'Aluh-aluh', 'Gambut', 'Gambut Raya', 'Universitasi Islam Kalimantan', 'FSI', 'Hukum Syariah', 'Juni', 2017, 'Tidur nyenyak', 'Aktif', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE IF NOT EXISTS `berita` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `tanggal_berita` date DEFAULT NULL,
  `judul_berita` varchar(255) DEFAULT NULL,
  `link` year(4) DEFAULT NULL,
  `id_kategori` year(4) DEFAULT NULL,
  `isi_berita` text,
  `publish` varchar(54) DEFAULT NULL,
  `id_anggota` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumen`
--

CREATE TABLE IF NOT EXISTS `dokumen` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `id_anggota` int(11) DEFAULT NULL,
  `jenis_dokumen` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `file_bukti` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_berita`
--

CREATE TABLE IF NOT EXISTS `kategori_berita` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `nama_kategori` date DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `publish` varchar(54) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_soal`
--

CREATE TABLE IF NOT EXISTS `kategori_soal` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `kategori` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `opsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_wawancara`
--

CREATE TABLE IF NOT EXISTS `kategori_wawancara` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `nama_kategori` int(11) DEFAULT NULL,
  `bobot` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `opsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keterampilan`
--

CREATE TABLE IF NOT EXISTS `keterampilan` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `id_anggota` int(11) DEFAULT NULL,
  `tanggal_bukti` date DEFAULT NULL,
  `nama_keterampilan` varchar(32) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `file_bukti` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keterampilan`
--

INSERT INTO `keterampilan` (`id`, `created_at`, `updated_at`, `status`, `id_anggota`, `tanggal_bukti`, `nama_keterampilan`, `keterangan`, `file_bukti`) VALUES
(1, '2020-02-26 08:07:01', '2020-02-26 08:07:01', 0, 6, '2010-02-05', 'Mengendarai Roda 4', 'memiliki SIM A', 'test.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE IF NOT EXISTS `pendaftaran` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `no_pendaftaran` varchar(16) DEFAULT NULL,
  `tanggal_daftar` varchar(255) DEFAULT NULL,
  `nik` varchar(26) DEFAULT NULL,
  `nama` varchar(32) DEFAULT NULL,
  `jenis_kelamin` varchar(32) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `desa` varchar(255) DEFAULT NULL,
  `kecamatan` varchar(255) DEFAULT NULL,
  `kabupaten` varchar(255) DEFAULT NULL,
  `asal_kampus` varchar(255) DEFAULT NULL,
  `fakultas` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  `bulan_mapaba` varchar(255) DEFAULT NULL,
  `tahun_mapaba` year(4) DEFAULT NULL,
  `telpon` varchar(13) DEFAULT NULL,
  `motivasi` text,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE IF NOT EXISTS `pendidikan` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `id_anggota` int(11) DEFAULT NULL,
  `tanggal_ijazah` date DEFAULT NULL,
  `nama_pendidikan` varchar(32) DEFAULT NULL,
  `jenjang_pendidikan` varchar(32) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `file_bukti` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `created_at`, `updated_at`, `status`, `id_anggota`, `tanggal_ijazah`, `nama_pendidikan`, `jenjang_pendidikan`, `keterangan`, `file_bukti`) VALUES
(1, '2020-02-26 07:51:17', '2020-02-26 07:51:17', 0, 6, '2009-09-17', 'SDN 1 Kelayan', 'SD', NULL, 'test.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengalaman`
--

CREATE TABLE IF NOT EXISTS `pengalaman` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `id_anggota` int(11) DEFAULT NULL,
  `tanggal_bukti` date DEFAULT NULL,
  `nama_kegiatan` varchar(32) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `file_bukti` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengalaman`
--

INSERT INTO `pengalaman` (`id`, `created_at`, `updated_at`, `status`, `id_anggota`, `tanggal_bukti`, `nama_kegiatan`, `keterangan`, `file_bukti`) VALUES
(1, '2020-02-26 08:09:32', '2020-02-26 08:09:32', 0, 6, '2018-02-04', 'Bakti Sosial', 'Galang Dana bantuan kebakaran Kotabaru', 'test.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `user` varchar(16) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` varchar(32) DEFAULT NULL,
  `opsi` varchar(32) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `created_at`, `updated_at`, `status`, `user`, `password`, `level`, `opsi`) VALUES
(1, '2020-02-19 21:09:14', '2020-02-19 21:09:14', 0, 'udin', '202cb962ac59075b964b07152d234b70', '1', 'apalah'),
(3, '2020-02-25 11:16:31', '2020-02-25 11:16:31', 1, 'din', '123', '2', 'Anggota'),
(4, '2020-02-25 12:00:07', '2020-02-25 12:00:07', 1, 'mat', '123', '2', 'Anggota');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periode_jabatan`
--

CREATE TABLE IF NOT EXISTS `periode_jabatan` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `no_sk` varchar(64) DEFAULT NULL,
  `tanggal_sk` date DEFAULT NULL,
  `tahun_mulai` year(4) DEFAULT NULL,
  `tahun_selesai` year(4) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `level_jabatan` int(11) DEFAULT NULL,
  `id_anggota` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE IF NOT EXISTS `soal` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `id_kategori` int(11) DEFAULT NULL,
  `pertanyaan` varchar(255) DEFAULT NULL,
  `a` varchar(255) DEFAULT NULL,
  `b` varchar(255) DEFAULT NULL,
  `c` varchar(255) DEFAULT NULL,
  `d` varchar(255) DEFAULT NULL,
  `e` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `opsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tes_tertulis`
--

CREATE TABLE IF NOT EXISTS `tes_tertulis` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `id_pendaftaran` int(11) DEFAULT NULL,
  `nik` varchar(26) DEFAULT NULL,
  `jumlah_benar` int(11) DEFAULT NULL,
  `jumlah_salah` int(11) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `opsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tes_tertulis`
--

INSERT INTO `tes_tertulis` (`id`, `created_at`, `updated_at`, `status`, `id_pendaftaran`, `nik`, `jumlah_benar`, `jumlah_salah`, `nilai`, `opsi`) VALUES
(1, '2020-02-26 07:12:32', '2020-02-26 07:12:32', 0, 99, '902323203', 6, 4, 60, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tes_wawancara`
--

CREATE TABLE IF NOT EXISTS `tes_wawancara` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `id_pendaftaran` int(11) DEFAULT NULL,
  `nik` varchar(26) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `opsi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tes_wawancara`
--

INSERT INTO `tes_wawancara` (`id`, `created_at`, `updated_at`, `status`, `id_pendaftaran`, `nik`, `nilai`, `opsi`) VALUES
(1, '2020-02-26 07:13:06', '2020-02-26 07:13:06', 0, 99, '902323203', 87, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tes_wawancara_detail`
--

CREATE TABLE IF NOT EXISTS `tes_wawancara_detail` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '0',
  `id_tes_wawancara` int(11) DEFAULT NULL,
  `nama_kategori` varchar(255) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tes_wawancara_detail`
--

INSERT INTO `tes_wawancara_detail` (`id`, `created_at`, `updated_at`, `status`, `id_tes_wawancara`, `nama_kategori`, `nilai`) VALUES
(1, '2020-02-26 07:14:07', '2020-02-26 07:14:07', 0, 1, 'Kepribadian', 88),
(2, '2020-02-26 07:14:07', '2020-02-26 07:14:07', 0, 1, 'Penampilan', 80),
(3, '2020-02-26 07:14:24', '2020-02-26 07:14:24', 0, 1, 'Kepemimpinan', 65);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumen`
--
ALTER TABLE `dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_soal`
--
ALTER TABLE `kategori_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_wawancara`
--
ALTER TABLE `kategori_wawancara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keterampilan`
--
ALTER TABLE `keterampilan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengalaman`
--
ALTER TABLE `pengalaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `periode_jabatan`
--
ALTER TABLE `periode_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tes_tertulis`
--
ALTER TABLE `tes_tertulis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tes_wawancara`
--
ALTER TABLE `tes_wawancara`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tes_wawancara_detail`
--
ALTER TABLE `tes_wawancara_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dokumen`
--
ALTER TABLE `dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kategori_soal`
--
ALTER TABLE `kategori_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kategori_wawancara`
--
ALTER TABLE `kategori_wawancara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `keterampilan`
--
ALTER TABLE `keterampilan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pengalaman`
--
ALTER TABLE `pengalaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `periode_jabatan`
--
ALTER TABLE `periode_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tes_tertulis`
--
ALTER TABLE `tes_tertulis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tes_wawancara`
--
ALTER TABLE `tes_wawancara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tes_wawancara_detail`
--
ALTER TABLE `tes_wawancara_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
