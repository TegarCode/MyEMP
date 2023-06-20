-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2023 pada 11.14
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_pegawai1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_divisi`
--

CREATE TABLE `data_divisi` (
  `id` int(10) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nama_divisi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data_divisi`
--

INSERT INTO `data_divisi` (`id`, `kode`, `nama_divisi`) VALUES
(3, '001', 'Utama'),
(4, '002', 'Personalia'),
(6, '003', 'Keuangan'),
(7, '004', 'Pemasaran'),
(0, '005', 'Accounting');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id` int(10) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` text NOT NULL,
  `jns_klmn` varchar(20) NOT NULL,
  `tmpt_lhr` text NOT NULL,
  `tgl_lhr` date NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `jabatan` text NOT NULL,
  `id_divisi` varchar(20) NOT NULL,
  `tgl_msk` date NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data_pegawai`
--

INSERT INTO `data_pegawai` (`id`, `nip`, `nama`, `jns_klmn`, `tmpt_lhr`, `tgl_lhr`, `agama`, `alamat`, `email`, `no_telp`, `jabatan`, `id_divisi`, `tgl_msk`, `foto`) VALUES
(9, '2108201001', 'Tegar Oktavianto Simbolon', 'Laki-laki', 'Surabaya', '2002-10-09', 'Islam', 'Jalan Mawar 1', 'tegar123@gmail.com', '089111222333', 'Direktur Utama', '001', '0000-00-00', 'cowo.png'),
(10, '2108201002', 'Radhyana Gayatri Faradilla', 'Perempuan', 'Karanganyar', '2003-06-10', 'Islam', 'Jalan Mawar 1', 'radhyana.gayatri@gmail.com', '085730518581', 'Direktur Personalia', '002', '0000-00-00', 'cewe (2).png'),
(11, '2108201003', 'Annisa Respati Nurcahyengsi', 'Perempuan', 'Wonosobo', '2002-06-13', 'Islam', 'Jalan Pelangi 2', 'annisa123@gmail.com', '085123000123', 'Direktur Keuangan', '003', '0000-00-00', 'cewe (2).png'),
(12, '2108201004', 'Rafi Abdilah Putra Alisia', 'Laki-laki', 'Surabaya', '2003-04-01', 'Islam', 'Jalan Mawar 2', 'raffi123', '0851122334455', 'Direktur Pemasaran', '004', '0000-00-00', 'cowo.png'),
(13, '2108201005', 'Dhavina Oxca Dwiyantie', 'Perempuan', 'Surabaya', '2003-10-13', 'Islam', 'Jalan Pelangi 3', 'dhav123@gmail.com', '087110220333', 'HRD', '002', '0000-00-00', 'cewe (2).png'),
(14, '2108201006', 'Bella Trinanda Tsani', 'Perempuan', 'Surabaya', '2003-02-02', 'Islam', 'Jalan Apel 3', 'bella123@gmai.com', '085720555222', 'Staff Keuangan', '003', '0000-00-00', 'cewe (2).png'),
(15, '2108201007', 'Aisyatuz Zahroh', 'Perempuan', 'Surabaya', '2003-03-20', 'Islam', 'Jalan Melati 3', 'aisyatuz123@gmail.com', '085730512512', 'Marketing', '004', '0000-00-00', 'cewe.png'),
(16, '2108201008', 'Aghis Sufiantoro', 'Laki-laki', 'Surabaya', '2003-09-23', 'Islam', 'Jalan Jeruk 2', 'aghis123@gmail.com', '085123456789', 'Manajer Umum', '001', '0000-00-00', 'cowo.png'),
(17, '2108201009', 'Afridha Lailiyah Hanim', 'Perempuan', 'Sidoarjo', '2003-03-12', 'Islam', 'Jalan Mangga 2', 'afridhaa123@gmail.com', '085730518555', 'Sekretaris Umum', '001', '0000-00-00', 'cewe.png'),
(0, '2108201011', 'Miptah Ramadani', 'Laki-laki', 'Surabaya', '2002-12-12', 'Islam', 'Jalan Semangka 1', 'miptahra123@gmail.com', '089922316565', 'Staff Accounting', '005', '0000-00-00', 'cowo.png'),
(0, '2108201012', 'Nizar Maulana', 'Laki-laki', 'Surabaya', '2002-02-20', 'Islam', 'Jalan Melati 3', 'nizar123@gmail.com', '081234567890', 'Manajer Accounting', '005', '0000-00-00', 'cowo.png'),
(0, '2108201013', 'Ni Made Berliana', 'Perempuan', 'Denpasar', '2003-02-18', 'Hindu', 'Jalan Anggrek 1', 'nimade123@gmail.com', '089321987222', 'Staff Pemasaran', '004', '2023-06-16', 'cewe (2).png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_cuti`
--

CREATE TABLE `tb_cuti` (
  `id_cuti` int(11) NOT NULL,
  `nip` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jeniscuti` varchar(50) DEFAULT NULL,
  `tanggal_awal` date DEFAULT NULL,
  `tanggal_akhir` date DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_cuti`
--

INSERT INTO `tb_cuti` (`id_cuti`, `nip`, `nama`, `jeniscuti`, `tanggal_awal`, `tanggal_akhir`, `status`) VALUES
(1, 67, 'Joni', 'Cuti Menikah', '2023-06-06', '2023-06-30', 'dikonfirmasi'),
(8, 67, 'Joni', 'Cuti Sakit', '2023-06-13', '2023-06-24', 'dikonfirmasi'),
(9, 2108201003, 'Annisa Respati Nurcahyengsi', 'Cuti Melhirkan', '2023-06-14', '2023-07-14', 'dikonfirmasi'),
(10, 2108201003, 'Annisa Respati Nurcahyengsi', 'Cuti Sakit', '2023-06-01', '2023-06-04', 'diajukan'),
(13, 2108201001, 'Rafi Abdilah Putra Alisia', 'Cuti Melhirkan', '2023-06-15', '2023-06-30', 'dikonfirmasi'),
(14, 2108201001, 'Tegar Oktavianto Simbolon', 'Cuti Tahunan', '2023-06-19', '2023-06-21', 'diajukan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `status` enum('Pegawai','Honorer') NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`nip`, `nama`, `alamat`, `no_hp`, `status`, `jabatan`, `foto`) VALUES
('123', 'Agus', 'demak', '087789987654', 'Pegawai', 'Operator', 'Tulips.jpg'),
('1298', 'Sunandar', 'Jakarta', '089987789011', 'Honorer', 'Produksi', 'Penguins.jpg'),
('67', 'joni', 'semarang', '089987789098', 'Honorer', 'ketua', 'Jellyfish.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengguna`
--

CREATE TABLE `tb_pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('Administrator','Sekretaris','Pegawai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_pengguna`
--

INSERT INTO `tb_pengguna` (`id_pengguna`, `nama_pengguna`, `username`, `password`, `level`) VALUES
(8, 'Admin', 'admin', '123', 'Administrator'),
(9, 'Tegar Oktavianto Simbolon', 'tegar123', '1001', 'Pegawai'),
(12, 'Radhyana Gayatri Faradilla', 'radhya123', '1002', 'Pegawai'),
(13, 'Annisa Respati Nurcahyengsi', 'annisa123', '1003', 'Pegawai'),
(14, 'Rafi Abdilah Putra Alisia', 'rafi123', '1004', 'Pegawai'),
(15, 'Dhavina Oxca Dwiyantie', 'dhavina123', '1005', 'Pegawai'),
(16, 'Bella Trinanda Tsani', 'bella123', '1006', 'Pegawai'),
(17, 'Aisyatuz Zahroh', 'aisya123', '1007', 'Pegawai'),
(18, 'Aghis Sufiantoro', 'aghis', '1008', 'Pegawai'),
(19, 'Afridha Lailiyah Hanim', 'afridha123', '1009', 'Pegawai'),
(20, 'Abrila Fatzali', 'abrila123', '1010', 'Pegawai'),
(21, 'Miptah Ramadani', 'miptah123', '1011', 'Pegawai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_profil`
--

CREATE TABLE `tb_profil` (
  `id_profil` int(11) NOT NULL,
  `nama_profil` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `bidang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_profil`
--

INSERT INTO `tb_profil` (`id_profil`, `nama_profil`, `alamat`, `bidang`) VALUES
(1, 'PT PEMWEB JAYA ', 'SURABAYA', 'TECHNOLOGY');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_cuti`
--
ALTER TABLE `tb_cuti`
  ADD PRIMARY KEY (`id_cuti`);

--
-- Indeks untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `tb_profil`
--
ALTER TABLE `tb_profil`
  ADD PRIMARY KEY (`id_profil`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_cuti`
--
ALTER TABLE `tb_cuti`
  MODIFY `id_cuti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_pengguna`
--
ALTER TABLE `tb_pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tb_profil`
--
ALTER TABLE `tb_profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
