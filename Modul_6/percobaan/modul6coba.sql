-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Nov 2019 pada 17.45
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modul6coba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `kode_gudang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `kode_gudang`) VALUES
(111, 'Buku', 4121),
(112, 'Pensil', 4121),
(113, 'penggaris', 4122);

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kode_buku` int(11) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `kode_jenis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kode_buku`, `nama_buku`, `kode_jenis`) VALUES
(115, 'melting me softy pat 2r', 113);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gudang`
--

CREATE TABLE `gudang` (
  `kode_gudang` int(11) NOT NULL,
  `nama_gudang` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gudang`
--

INSERT INTO `gudang` (`kode_gudang`, `nama_gudang`, `lokasi`) VALUES
(4121, 'Bagus', 'pemalang'),
(4122, 'Sinar', 'petarukan'),
(4124, 'Sempurna', 'comal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_buku`
--

CREATE TABLE `jenis_buku` (
  `kode_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `keterangan_jenis` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_buku`
--

INSERT INTO `jenis_buku` (`kode_jenis`, `nama_jenis`, `keterangan_jenis`) VALUES
(111, 'ABC', 'kosong'),
(112, 'DEF', 'ada'),
(113, 'GHI', 'ada');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD KEY `kode_gudang` (`kode_gudang`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`),
  ADD KEY `kode_jenis` (`kode_jenis`);

--
-- Indeks untuk tabel `gudang`
--
ALTER TABLE `gudang`
  ADD PRIMARY KEY (`kode_gudang`);

--
-- Indeks untuk tabel `jenis_buku`
--
ALTER TABLE `jenis_buku`
  ADD PRIMARY KEY (`kode_jenis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
