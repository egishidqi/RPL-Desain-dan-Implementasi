-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Mar 2022 pada 16.32
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digibrary`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `nm_anggota` varchar(100) NOT NULL,
  `alamat_anggota` text NOT NULL,
  `tmptlahir_anggota` varchar(10) NOT NULL,
  `tgl_lahir_anggota` date NOT NULL,
  `jns_klmn_anggota` char(1) NOT NULL,
  `telp_anggota` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `announceinfo`
--

CREATE TABLE `announceinfo` (
  `id_AnnounceInfo` int(6) NOT NULL,
  `nama_AI` varchar(10) NOT NULL,
  `isi_AI` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kd_Buku` varchar(10) NOT NULL,
  `judul_Buku` varchar(100) NOT NULL,
  `klasifikasi_Buku` varchar(100) NOT NULL,
  `jenis_Buku` varchar(20) NOT NULL,
  `subjek_Buku` varchar(20) NOT NULL,
  `jmlKoleksi_Buku` int(5) NOT NULL,
  `informasil_lainnya` varchar(1000) NOT NULL,
  `nmpengarang_Buku` varchar(100) NOT NULL,
  `jnspengarang_Buku` varchar(10) NOT NULL,
  `penyunting_Buku` varchar(20) NOT NULL,
  `penerjemah_Buku` varchar(20) NOT NULL,
  `nmpenerbit_Buku` varchar(50) NOT NULL,
  `kotaterbit_Buku` varchar(20) NOT NULL,
  `thnterbit_Buku` varchar(4) NOT NULL,
  `hrgsewa_Buku` varchar(20) NOT NULL,
  `dendahrn_buku` varchar(20) NOT NULL,
  `jnsirkulasi_buku` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `denda`
--

CREATE TABLE `denda` (
  `id_denda` int(5) NOT NULL,
  `jml_denda` double NOT NULL,
  `tglinput_denda` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `username` varchar(10) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `jmlPinjam_Dosen` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `dataAnggota` text NOT NULL,
  `dataBuku` text NOT NULL,
  `dataPeminjaman` text NOT NULL,
  `dataPengembalian` text NOT NULL,
  `dataDenda` text NOT NULL,
  `dataPenggantian` text NOT NULL,
  `dataAnnounceInfo` text NOT NULL,
  `dataSendMessage` text NOT NULL,
  `bulanLaporan` varchar(9) NOT NULL,
  `semesterLaporan` varchar(9) NOT NULL,
  `tahunLaporan` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(10) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `username` varchar(10) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `jmlPinjam_Mahasiswa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `username` varchar(10) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `jmlPinjam_Masyarakat` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `username` varchar(10) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `jmlPinjam_Pegawai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_Peminjaman` int(6) NOT NULL,
  `kd_Buku` varchar(10) NOT NULL,
  `id_anggota` varchar(10) NOT NULL,
  `tgl_Peminjaman` date NOT NULL,
  `stts_Peminjaman` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_Pengembalian` int(6) NOT NULL,
  `kd_Buku` varchar(10) NOT NULL,
  `id_anggota` varchar(10) NOT NULL,
  `tgl_Pengembalian` date NOT NULL,
  `tgl_Realisasi` date NOT NULL,
  `keterlambatan` int(5) NOT NULL,
  `denda` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penggantian`
--

CREATE TABLE `penggantian` (
  `kd_Buku` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sendmessage`
--

CREATE TABLE `sendmessage` (
  `id_SendMessage` int(6) NOT NULL,
  `name_SM` varchar(10) NOT NULL,
  `email_SM` varchar(20) NOT NULL,
  `isi_SM` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `staffperpus`
--

CREATE TABLE `staffperpus` (
  `username` varchar(10) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `nm_Staff` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `announceinfo`
--
ALTER TABLE `announceinfo`
  ADD PRIMARY KEY (`id_AnnounceInfo`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kd_Buku`);

--
-- Indeks untuk tabel `denda`
--
ALTER TABLE `denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_Peminjaman`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_Pengembalian`);

--
-- Indeks untuk tabel `penggantian`
--
ALTER TABLE `penggantian`
  ADD PRIMARY KEY (`kd_Buku`);

--
-- Indeks untuk tabel `sendmessage`
--
ALTER TABLE `sendmessage`
  ADD PRIMARY KEY (`id_SendMessage`);

--
-- Indeks untuk tabel `staffperpus`
--
ALTER TABLE `staffperpus`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
