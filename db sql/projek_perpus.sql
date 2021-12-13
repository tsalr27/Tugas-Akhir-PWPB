-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Des 2021 pada 04.51
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projek_perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_biaya_denda`
--

CREATE TABLE `tbl_biaya_denda` (
  `id_biaya_denda` int(11) NOT NULL,
  `harga_denda` varchar(255) NOT NULL,
  `stat` varchar(255) NOT NULL,
  `tgl_tetap` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_biaya_denda`
--

INSERT INTO `tbl_biaya_denda` (`id_biaya_denda`, `harga_denda`, `stat`, `tgl_tetap`) VALUES
(9, '1000', 'Aktif', '2021-12-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` int(11) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_rak` int(11) NOT NULL,
  `sampul` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `penerbit` varchar(255) DEFAULT NULL,
  `pengarang` varchar(255) DEFAULT NULL,
  `thn_buku` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `jml` int(11) DEFAULT NULL,
  `tgl_masuk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `buku_id`, `id_kategori`, `id_rak`, `sampul`, `isbn`, `title`, `penerbit`, `pengarang`, `thn_buku`, `isi`, `jml`, `tgl_masuk`) VALUES
(9, 'BK001', 5, 2, 'b3db56b25b8cb810cc694d0f640ee0ab.jpg', '978-623-310-013-7', 'Dikta dan Hukum', 'Asoka Aksara x Loveable', 'Dhia\'an Farah', '2021', '', 400, '2021-11-22 05:29:25'),
(10, 'BK0010', 4, 1, '9cab1b82cb70a6f8a293dd241f8977ca.jpg', '978-602-52054-5-3', 'Pernah Tenggelam', 'Alfatih Press', 'Fuadh Nai\'m', '2019', '', 500, '2021-11-22 05:38:08'),
(11, 'BK0011', 5, 2, '59cf4140d20e17993cd4bc117680b361.jpg', '978-602-03-7837-4', 'Hujan Bulan Juni', 'PT Gramedia Pustaka Utama', 'Sapardi Djoko Damono', '2015', '', 200, '2021-11-22 05:41:35'),
(12, 'BK0012', 5, 2, 'f11226ac1a2b37debaf3d96aca2fa068.jpg', '978-602-03-3160-7', 'Daun Yang Jatuh Tak Pernah Membenci Angin', 'PT Gramedia Pustaka Utama', 'Tereliye', '2016', '', 500, '2021-11-22 05:44:45'),
(13, 'BK0013', 5, 2, 'bbe1a0fe122b9742cb8d74d8e1b80fb3.jpg', '978603751310', '5 cm', 'PT Gramedia Widiasarana Indonesia', 'Donny Dhirgantoro', '2005', '', 200, '2021-11-22 05:48:47'),
(14, 'BK0014', 5, 2, 'f8e89abe87f9d15f19a80aa9163ea29a.jpg', '978-602-220-262-2', 'Ananta Prahadi', 'PT Bukune Kreatif Cipta', 'Risa Saraswati', '2018', '', 300, '2021-11-22 05:52:14'),
(15, 'BK0015', 5, 2, '6750e388c81e5a67a1268d7883026263.jpg', '978-979-794-535-0', 'Konspirasi Alam Semesta', 'Mediakita', 'Fiersa Besari', '2017', '', 800, '2021-11-22 05:55:16'),
(16, 'BK0016', 5, 2, '4118bcafec3e67809cccea9ee6e00b64.jpg', '978-979-794-548-0', 'Jatuh dan Cinta', 'Mediakita', 'Boy Candra', '2017', '', 600, '2021-11-22 05:57:24'),
(17, 'BK0017', 5, 2, 'a00b63a282f7cf2552f6913b43a1e002.jpg', '978-602-7742-12-3', 'Her Sunny Side', 'Penerbit Haru', 'Koshigaya Osamu', '2013', '', 200, '2021-11-22 06:03:55'),
(18, 'BK0018', 4, 1, '49edf72804ffac6d5fdef3d1c9bcfdde.jpg', '978-623-7778-45-5', 'Seni Berdamai dengan Diri Sendiri', 'Bright Publisher', 'Claudia Sabrina', '2020', '', 600, '2021-11-22 06:13:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_denda`
--

CREATE TABLE `tbl_denda` (
  `id_denda` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `denda` varchar(255) NOT NULL,
  `lama_waktu` int(11) NOT NULL,
  `tgl_denda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_denda`
--

INSERT INTO `tbl_denda` (`id_denda`, `pinjam_id`, `denda`, `lama_waktu`, `tgl_denda`) VALUES
(7, 'PJ0013', '0', 0, '2021-11-22'),
(8, 'PJ0016', '0', 0, '2021-11-28'),
(9, 'PJ0014', '0', 0, '2021-11-28'),
(10, 'PJ0022', '0', 0, '2021-11-28'),
(12, 'PJ0025', '0', 12, '2021-12-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(4, 'Nonfiksi'),
(5, 'Fiksi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id_login` int(11) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_bergabung` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_login`
--

INSERT INTO `tbl_login` (`id_login`, `anggota_id`, `user`, `pass`, `level`, `nama`, `tempat_lahir`, `tgl_lahir`, `jenkel`, `alamat`, `telepon`, `email`, `tgl_bergabung`, `foto`) VALUES
(2, 'AG002', 'mark', '202cb962ac59075b964b07152d234b70', 'Petugas', 'Mark Lee', 'Surabaya', '1999-08-02', 'Laki-Laki', 'Surabaya', '08123123185', 'leemark@gmail.com', '2021-11-21', 'user_1637531526.jpg'),
(5, 'AG005', 'alline2120', '202cb962ac59075b964b07152d234b70', 'Anggota', 'alline rasya putri', 'Bandung', '2000-11-22', 'Perempuan', 'jl. anggrek biru no.27', '081234526790', 'allinerasyap@gmail.com', '2021-11-22', 'user_1637543944.jpg'),
(6, 'AG006', 'Ou', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Gita Nur Ajizah ', 'Cirebon', '2005-07-09', 'Perempuan', 'Sumatra barat', '08523576459', 'gitaaaanur6@gmail.com', '2021-11-22', 'user_1637543916.png'),
(7, 'AG007', 'Toyol', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Dwi Eka Rahmawati', 'Malang', '2004-04-10', 'Perempuan', 'Jl. Bima RT 7 / RW 1', '085815520244', 'dwiekarahmawati339@gmail.com', '2021-11-22', 'user_1637544309.png'),
(8, 'AG008', 'Welcome11', '202cb962ac59075b964b07152d234b70', 'Anggota', 'DELIA FATIKA SARI', 'MALANG', '2004-11-30', 'Perempuan', 'Wagir, Lemah duwur', '08117299637', 'deliaaa@gmail.com', '2021-11-22', 'user_1637544602.PNG'),
(9, 'AG009', 'haisyygg_', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Venti Anggita', 'Malang', '2004-02-07', 'Perempuan', 'Tambaksari Rt 02 Rw 01, Jatisari,Pakisaji,Malang', '081292512626', 'anggitaventi1@gmail.com', '2021-11-22', 'user_1637544791.jpg'),
(10, 'AG0010', 'chasa_lyct', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Acha', 'Malang', '2005-04-16', 'Perempuan', 'Malang', '089516081580', 'Acha16@gmail.com', '2021-11-22', 'user_1637544921.jpg'),
(11, 'AG0011', 'Agustinver ', '202cb962ac59075b964b07152d234b70', 'Anggota', 'Vernanda Agustin', 'Malang', '2004-08-26', 'Perempuan', 'Jl. Mendalan Wetan RT 18 RW 06 Ds. Mendalanwangi', '089515434455', 'vernandaagustin08@gmail.com', '2021-11-22', 'user_1637545117.png'),
(12, 'AG0012', 'triska', '202cb962ac59075b964b07152d234b70', 'Petugas', 'Triska Amiliya Putri', 'Malang', '2004-08-27', 'Perempuan', 'Kecamatan Wagir, Kabupaten Malang, Jawa Timur', '0895368109815', 'triskatriskaamelia@gmail.com', '2021-11-29', 'user_1638173766.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pinjam`
--

CREATE TABLE `tbl_pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `pinjam_id` varchar(255) NOT NULL,
  `anggota_id` varchar(255) NOT NULL,
  `buku_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `tgl_pinjam` varchar(255) NOT NULL,
  `lama_pinjam` int(11) NOT NULL,
  `tgl_balik` varchar(255) NOT NULL,
  `tgl_kembali` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pinjam`
--

INSERT INTO `tbl_pinjam` (`id_pinjam`, `pinjam_id`, `anggota_id`, `buku_id`, `status`, `tgl_pinjam`, `lama_pinjam`, `tgl_balik`, `tgl_kembali`) VALUES
(13, 'PJ0013', 'AG006', 'BK0015', 'Di Kembalikan', '2021-11-22', 2, '2021-11-24', '2021-11-22'),
(14, 'PJ0014', 'AG008', 'BK001', 'Di Kembalikan', '2021-11-22', 7, '2021-11-29', '2021-11-28'),
(15, 'PJ0014', 'AG008', 'BK0017', 'Di Kembalikan', '2021-11-22', 7, '2021-11-29', '2021-11-28'),
(16, 'PJ0016', 'AG009', 'BK0016', 'Di Kembalikan', '2021-11-22', 6, '2021-11-28', '2021-11-28'),
(18, 'PJ0018', 'AG007', 'BK0012', 'Dipinjam', '2021-11-28', 6, '2021-12-04', '0'),
(22, 'PJ0022', 'AG005', 'BK0014', 'Di Kembalikan', '2021-11-28', 0, '2021-11-28', '2021-11-28'),
(23, 'PJ0023', 'AG006', 'BK001', 'Dipinjam', '2021-11-29', 3, '2021-12-02', '0'),
(24, 'PJ0023', 'AG006', 'BK0013', 'Dipinjam', '2021-11-29', 3, '2021-12-02', '0'),
(25, 'PJ0025', 'AG009', 'BK001', 'Di Kembalikan', '2021-11-29', 2, '2021-12-01', '2021-12-13'),
(26, 'PJ0025', 'AG009', 'BK0014', 'Di Kembalikan', '2021-11-29', 2, '2021-12-01', '2021-12-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` int(11) NOT NULL,
  `nama_rak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `nama_rak`) VALUES
(1, 'Rak Buku 1'),
(2, 'Rak Buku 2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  ADD PRIMARY KEY (`id_biaya_denda`);

--
-- Indeks untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `tbl_denda`
--
ALTER TABLE `tbl_denda`
  ADD PRIMARY KEY (`id_denda`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  ADD PRIMARY KEY (`id_pinjam`);

--
-- Indeks untuk tabel `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_biaya_denda`
--
ALTER TABLE `tbl_biaya_denda`
  MODIFY `id_biaya_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tbl_denda`
--
ALTER TABLE `tbl_denda`
  MODIFY `id_denda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tbl_rak`
--
ALTER TABLE `tbl_rak`
  MODIFY `id_rak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
