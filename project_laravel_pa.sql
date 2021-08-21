-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Agu 2021 pada 15.45
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_laravel_pa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id` int(10) NOT NULL,
  `email` varchar(35) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` varchar(500) NOT NULL,
  `name` varchar(35) NOT NULL,
  `jabatan` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id`, `email`, `username`, `password`, `name`, `jabatan`, `timestamp`) VALUES
(9, 'admin@gmail.com', 'admin', '$2y$10$Vz2ih9Fg95iCz5Edp6juieWJjmNsK7m4PW7uEyXGKyTueJ4X2IQca', 'ADMIN', 'ADMIN', '2021-08-18 13:45:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_cerai`
--

CREATE TABLE `data_cerai` (
  `id_cerai` varchar(50) NOT NULL,
  `id_pernikahan` text NOT NULL,
  `id_suami` int(10) DEFAULT NULL,
  `id_istri` int(10) DEFAULT NULL,
  `nama_suami` text DEFAULT NULL,
  `nama_istri` text DEFAULT NULL,
  `tgl_cerai` text DEFAULT NULL,
  `tgl_sidang` datetime DEFAULT NULL,
  `pengadilan` text DEFAULT NULL,
  `no_sk` text DEFAULT NULL,
  `sebab` text DEFAULT NULL,
  `cerai_ke` int(10) DEFAULT NULL,
  `validasi` text NOT NULL,
  `id_user` int(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_istri`
--

CREATE TABLE `data_istri` (
  `id_istri` int(10) NOT NULL,
  `nama` text DEFAULT NULL,
  `ttl` text DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `warga_negara` text DEFAULT NULL,
  `agama` text DEFAULT NULL,
  `pekerjaan` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `pendidikan` text DEFAULT NULL,
  `pernikahan_ke` text DEFAULT NULL,
  `status_nikah` text DEFAULT NULL,
  `bukti` text DEFAULT NULL,
  `no_surat` text DEFAULT NULL,
  `nama_ayah` text DEFAULT NULL,
  `wn_ayah` text DEFAULT NULL,
  `agama_ayah` text NOT NULL,
  `pekerjaan_ayah` text DEFAULT NULL,
  `alamat_ayah` text DEFAULT NULL,
  `nama_ibu` text NOT NULL,
  `wn_ibu` text NOT NULL,
  `agama_ibu` text DEFAULT NULL,
  `pekerjaan_ibu` text DEFAULT NULL,
  `alamat_ibu` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_penghulu`
--

CREATE TABLE `data_penghulu` (
  `id_penghulu` int(11) NOT NULL,
  `nama_penghulu` text DEFAULT NULL,
  `jabatan` text DEFAULT NULL,
  `kecamatan` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pernikahan`
--

CREATE TABLE `data_pernikahan` (
  `id_pernikahan` varchar(50) NOT NULL,
  `id_suami` text DEFAULT NULL,
  `id_istri` text DEFAULT NULL,
  `nama_suami` text DEFAULT NULL,
  `nama_istri` text DEFAULT NULL,
  `id_wali` text DEFAULT NULL,
  `id_penghulu` text DEFAULT NULL,
  `id_saksi` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `mas_kawin` text DEFAULT NULL,
  `pembayaran` text DEFAULT NULL,
  `tgl_akad` text DEFAULT NULL,
  `tgl_pelatihan` datetime NOT NULL,
  `id_user` text DEFAULT NULL,
  `validasi` varchar(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_rujuk`
--

CREATE TABLE `data_rujuk` (
  `id_rujuk` varchar(50) DEFAULT NULL,
  `id_cerai` text DEFAULT NULL,
  `id_pernikahan` text DEFAULT NULL,
  `id_suami` int(10) DEFAULT NULL,
  `id_istri` int(10) DEFAULT NULL,
  `tgl_rujuk` text DEFAULT NULL,
  `tgl_sidang` datetime DEFAULT NULL,
  `rujuk_ke` int(10) DEFAULT NULL,
  `validasi` text NOT NULL,
  `id_user` int(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_saksi`
--

CREATE TABLE `data_saksi` (
  `id_saksi` int(10) NOT NULL,
  `nama_saksi` text DEFAULT NULL,
  `jenis_kelamin` text DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `ttl` text DEFAULT NULL,
  `warga_negara` text DEFAULT NULL,
  `agama` text DEFAULT NULL,
  `pekerjaan` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `aktif` text DEFAULT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_suami`
--

CREATE TABLE `data_suami` (
  `id_suami` int(10) NOT NULL,
  `nama` text DEFAULT NULL,
  `ttl` text DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `warga_negara` text DEFAULT NULL,
  `agama` text DEFAULT NULL,
  `pekerjaan` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `pendidikan` text DEFAULT NULL,
  `pernikahan_ke` text DEFAULT NULL,
  `status_nikah` text DEFAULT NULL,
  `bukti` text DEFAULT NULL,
  `no_surat` text DEFAULT NULL,
  `nama_ayah` text DEFAULT NULL,
  `wn_ayah` text DEFAULT NULL,
  `agama_ayah` text DEFAULT NULL,
  `pekerjaan_ayah` text DEFAULT NULL,
  `alamat_ayah` text DEFAULT NULL,
  `nama_ibu` text DEFAULT NULL,
  `wn_ibu` text DEFAULT NULL,
  `agama_ibu` text DEFAULT NULL,
  `pekerjaan_ibu` text DEFAULT NULL,
  `alamat_ibu` text DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_wali`
--

CREATE TABLE `data_wali` (
  `id_wali` int(10) NOT NULL,
  `nama_wali` text DEFAULT NULL,
  `bin` text DEFAULT NULL,
  `status_wali` text DEFAULT NULL,
  `hubungan` text DEFAULT NULL,
  `ttl` text DEFAULT NULL,
  `warga_negara` text DEFAULT NULL,
  `agama` text DEFAULT NULL,
  `pekerjaan` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `aktif` text DEFAULT NULL,
  `id_user` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_wali`
--

INSERT INTO `data_wali` (`id_wali`, `nama_wali`, `bin`, `status_wali`, `hubungan`, `ttl`, `warga_negara`, `agama`, `pekerjaan`, `alamat`, `aktif`, `id_user`) VALUES
(1, 'Zaipuddin', 'Ahmad', 'Orangtua', 'Ayah', 'Bulukumba', 'Indonesia', 'ISLAM', 'PEGAWAI KOPERASI', 'Jl.Bakti Adi Guna', 'Aktif', 6),
(2, 'Budianto', 'Kasim', 'Orangtua', 'Ayah', 'Bulukumba', 'INA', 'ISLAM', 'asdsa', 'asdsad', '-', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_nikah`
--

CREATE TABLE `detail_nikah` (
  `id_pernikahan` text DEFAULT NULL,
  `id_saksi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_istri`
--
ALTER TABLE `data_istri`
  ADD PRIMARY KEY (`id_istri`);

--
-- Indeks untuk tabel `data_penghulu`
--
ALTER TABLE `data_penghulu`
  ADD PRIMARY KEY (`id_penghulu`);

--
-- Indeks untuk tabel `data_pernikahan`
--
ALTER TABLE `data_pernikahan`
  ADD PRIMARY KEY (`id_pernikahan`);

--
-- Indeks untuk tabel `data_saksi`
--
ALTER TABLE `data_saksi`
  ADD PRIMARY KEY (`id_saksi`);

--
-- Indeks untuk tabel `data_suami`
--
ALTER TABLE `data_suami`
  ADD PRIMARY KEY (`id_suami`);

--
-- Indeks untuk tabel `data_wali`
--
ALTER TABLE `data_wali`
  ADD PRIMARY KEY (`id_wali`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `data_istri`
--
ALTER TABLE `data_istri`
  MODIFY `id_istri` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_penghulu`
--
ALTER TABLE `data_penghulu`
  MODIFY `id_penghulu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_saksi`
--
ALTER TABLE `data_saksi`
  MODIFY `id_saksi` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_suami`
--
ALTER TABLE `data_suami`
  MODIFY `id_suami` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_wali`
--
ALTER TABLE `data_wali`
  MODIFY `id_wali` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
