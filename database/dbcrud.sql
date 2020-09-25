-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25 Sep 2020 pada 17.51
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcrud`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'redhat123', 'Automation Testing');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `isi_berita` text NOT NULL,
  `tgl_berita` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `isi_berita`, `tgl_berita`) VALUES
(0, 'dd', 'dd', '2013-01-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `komentar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `buku_tamu`
--

INSERT INTO `buku_tamu` (`nama`, `email`, `komentar`) VALUES
('Redo Kusuma', 'crackcray@yahoo.co.id', 'lumayan'),
('th', 'redokusuma@ymail.com', 'karutt nianan sanak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(5) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `tpt_lahir` varchar(60) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kelamin` varchar(15) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `foto` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id_guru`, `nip`, `nama`, `tpt_lahir`, `tgl_lahir`, `kelamin`, `agama`, `jabatan`, `foto`) VALUES
(7, '1233455667', 'redo', '', '0000-00-00', 'LAKI-LAKI', 'ISLAM', 'Wali Kelas', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(5) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `kelamin` varchar(15) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama`, `kelamin`, `agama`, `alamat`) VALUES
(38, 'redo', 'LAKI-LAKI', 'ISLAM', 'Sawah Lebar'),
(39, 'REDO KUSUMA', 'LAKI-LAKI', 'ISLAM', 'Meranti 3'),
(41, 'pt pt', '', '', 'piyungan'),
(42, 'mmm', '', '', 'kkk');

-- --------------------------------------------------------

--
-- Struktur dari tabel `teknisi`
--

CREATE TABLE `teknisi` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `pelanggan` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kontak` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `jam` time NOT NULL,
  `ket` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `teknisi`
--

INSERT INTO `teknisi` (`id`, `nama`, `pelanggan`, `alamat`, `kontak`, `telp`, `tgl`, `jam`, `ket`) VALUES
(1, 'aan', 'pt putri', 'jogja', '', '08995477796', '2015-04-08', '10:00:00', '100k'),
(7, 'Widodo', 'pt putri', 'yky', 'p', 'yky', '2015-04-15', '10:00:00', ''),
(8, 'Wintolo', 'p', 'k', '', '789', '2015-04-22', '00:00:00', ''),
(10, 'Anton', 'kkk', '', '', '', '0000-00-00', '00:00:00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `teknisi1`
--

CREATE TABLE `teknisi1` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `teknisi1`
--

INSERT INTO `teknisi1` (`id`, `nama`) VALUES
(1, 'Widodo'),
(2, 'Anton Nugroho'),
(5, 'wintolo'),
(6, 'aan zuniarto');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `kontak` varchar(35) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sn` varchar(35) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `telp`, `kontak`, `type`, `sn`, `tgl`) VALUES
(17, 'Fauzi ', 'Bogor', '123456789', '123456789', 'Matrix Series', '123456789', '2020-09-03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user1`
--

CREATE TABLE `user1` (
  `id` int(5) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `telp` varchar(25) NOT NULL,
  `kontak` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user1`
--

INSERT INTO `user1` (`id`, `nama`, `alamat`, `telp`, `kontak`) VALUES
(11, 'Fauzi', 'Bogor', '123456789', '123456789'),
(13, 'Wawan', 'Cimanggu', '123456789', '1234567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `teknisi`
--
ALTER TABLE `teknisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teknisi1`
--
ALTER TABLE `teknisi1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `teknisi`
--
ALTER TABLE `teknisi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `teknisi1`
--
ALTER TABLE `teknisi1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `user1`
--
ALTER TABLE `user1`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
