-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 23 Agu 2017 pada 21.49
-- Versi Server: 10.1.25-MariaDB-1~xenial
-- PHP Version: 7.0.22-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplous_data`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_agama`
--

CREATE TABLE `md_agama` (
  `id` int(10) NOT NULL,
  `nama_agama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_daftargolongandokter`
--

CREATE TABLE `md_daftargolongandokter` (
  `id` int(10) NOT NULL,
  `kode` int(10) NOT NULL,
  `golongan_dokter` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_daftarinstalasi`
--

CREATE TABLE `md_daftarinstalasi` (
  `id` int(10) NOT NULL,
  `nama_instalasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_daftarpasien`
--

CREATE TABLE `md_daftarpasien` (
  `id` int(10) NOT NULL,
  `rm` int(10) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_daftarpegawai`
--

CREATE TABLE `md_daftarpegawai` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` text NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_daftarpoli`
--

CREATE TABLE `md_daftarpoli` (
  `id` int(10) NOT NULL,
  `nama_poli` varchar(100) DEFAULT NULL,
  `kode_poli` int(10) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_daftarrujuk`
--

CREATE TABLE `md_daftarrujuk` (
  `id` int(10) NOT NULL,
  `kode` int(10) NOT NULL,
  `nama_perujuk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_daftarspesialisasi`
--

CREATE TABLE `md_daftarspesialisasi` (
  `id` int(10) NOT NULL,
  `kode` int(10) NOT NULL,
  `nama_spesialisasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_diagnosa`
--

CREATE TABLE `md_diagnosa` (
  `id` int(10) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `topik` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_ef_mapusertransfer`
--

CREATE TABLE `md_ef_mapusertransfer` (
  `id` int(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `lokasipetugas` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_ef_masterobat`
--

CREATE TABLE `md_ef_masterobat` (
  `id` int(7) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `namabarang` text NOT NULL,
  `kemasan` text NOT NULL,
  `kodesatuankecil` text NOT NULL,
  `materialgroup` int(10) NOT NULL,
  `hargaterakhir` int(10) NOT NULL,
  `isi` text NOT NULL,
  `formularium` text NOT NULL,
  `dpho` text NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `isirestricted` int(10) NOT NULL,
  `stokbarang` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `md_ef_masterobat`
--

INSERT INTO `md_ef_masterobat` (`id`, `kode`, `namabarang`, `kemasan`, `kodesatuankecil`, `materialgroup`, `hargaterakhir`, `isi`, `formularium`, `dpho`, `keterangan`, `isirestricted`, `stokbarang`) VALUES
(1, '1000101', 'COROFLEX BLUE 4,0 X 16 MM', 'pcskemasan', 'PCS', 0, 8712000, '0', 'Lain Lain', '0', '0', 0, 2001),
(2, '1000102', 'COROFLEX BLUE 4,0 X 19 MM', 'pcskemasan', 'PCS', 0, 8712000, '0', 'Lain Lain', '0', '0', 0, 2002),
(3, '1000103', 'COROFLEX BLUE 2,75 X 13 MM', 'pcskemasan', 'PCS', 0, 8712000, '0', 'Lain Lain', '0', '0', 0, 2003),
(4, '1000104', 'COROFLEX 2,75 X 25 MM', 'pcskemasan', 'PCS', 0, 137500, '0', 'Lain Lain', '0', '0', 0, 2004),
(5, '1000105', 'COROFLEX BLUE 2,75 X 30 MM', 'pcskemasan', 'PCS', 0, 8712000, '0', 'Lain Lain', '0', '0', 0, 2005),
(6, '1000106', 'COROFLEX BLUE 2,5 X 33 MM', 'pcskemasan', 'PCS', 0, 8712000, '0', 'Lain Lain', '0', '0', 0, 2006),
(7, '1000107', 'COROFLEX BLUE 2,5 X 28 MM', 'pcskemasan', 'PCS', 0, 8712000, '0', 'Lain Lain', '0', '0', 0, 2007),
(8, '1000108', 'COROFLEX BLUE 2,5 X 16 MM', 'pcskemasan', 'PCS', 0, 8712000, '0', 'Lain Lain', '0', '0', 0, 2008),
(9, '1000109', 'SENSIA S (SES 01)', 'pcskemasan', 'PCS', 0, 15089197, '0', 'Lain Lain', '0', '0', 0, 2009),
(10, '1000110', 'SEQUENT PLEASE (UMUM)', 'pcskemasan', 'PCS', 0, 19133297, '0', 'Lain Lain', '0', '0', 0, 2010),
(11, '1000111', 'BIOMATRIX 2,25X18MM', 'pcskemasan', 'PCS', 0, 18750000, '0', 'Lain Lain', '0', '0', 0, 2011),
(12, '1000112', 'BIOMATRIX3,5X28MM', 'pcskemasan', 'PCS', 0, 18750000, '0', 'Lain Lain', '0', '0', 0, 2012),
(13, '1000113', 'BIOMATRIX 2,75X28MM', 'pcskemasan', 'PCS', 0, 20573438, '0', 'Lain Lain', '0', '0', 0, 2013),
(14, '1000114', 'BIOMATRIX 2,5X24MM', 'pcskemasan', 'PCS', 0, 20573438, '0', 'Lain Lain', '0', '0', 0, 2014),
(15, '1000115', 'BIOMATRIX 2,5X14MM', 'pcskemasan', 'PCS', 0, 20573438, '0', 'Lain Lain', '0', '0', 0, 2015),
(16, '1000116', 'BIOMATRIX 2,25X28MM', 'pcskemasan', 'PCS', 0, 20573438, '0', 'Lain Lain', '0', '0', 0, 2016),
(17, '1000117', 'AMAZONIA PAX 2.5 x 28', 'pcskemasan', 'PCS', 0, 11192500, '0', 'Lain Lain', '0', '0', 0, 2017),
(18, '1000118', 'EPOCH 525 P 20', 'pcskemasan', 'PCS', 0, 721875, '0', 'Lain Lain', '0', '0', 0, 2018),
(19, '1000119', 'AMAZONIA CROCO STENT 2,25 X 16', 'pcskemasan', 'PCS', 0, 9528750, '0', 'Lain Lain', '0', '0', 0, 2019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_ef_paketobat`
--

CREATE TABLE `md_ef_paketobat` (
  `id` int(10) NOT NULL,
  `namapaket` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL,
  `listobat` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_eri_bor`
--

CREATE TABLE `md_eri_bor` (
  `id` int(10) NOT NULL,
  `id_ruang` varchar(100) NOT NULL,
  `no_kasur` int(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `status_kamar` varchar(100) NOT NULL,
  `no_pengisi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_eri_gedung`
--

CREATE TABLE `md_eri_gedung` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_eri_kelas`
--

CREATE TABLE `md_eri_kelas` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_eri_lantai`
--

CREATE TABLE `md_eri_lantai` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_eri_ruangok`
--

CREATE TABLE `md_eri_ruangok` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_eri_ruangrawat`
--

CREATE TABLE `md_eri_ruangrawat` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gedung` varchar(100) NOT NULL,
  `lantai` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_et_mastertindakan`
--

CREATE TABLE `md_et_mastertindakan` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `kriteria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_fasilitaspenunjang`
--

CREATE TABLE `md_fasilitaspenunjang` (
  `id` int(10) NOT NULL,
  `kode_penunjang` int(10) NOT NULL,
  `nama_penunjang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_kecamatan`
--

CREATE TABLE `md_kecamatan` (
  `id` int(10) NOT NULL,
  `kode_kecamatan` int(10) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_kelurahan`
--

CREATE TABLE `md_kelurahan` (
  `id` int(10) NOT NULL,
  `kode_kelurahan` int(10) NOT NULL,
  `nama_kelurahan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_kota`
--

CREATE TABLE `md_kota` (
  `id` int(10) NOT NULL,
  `kode_provinsi` varchar(10) NOT NULL,
  `kode_kota` varchar(10) NOT NULL,
  `nama_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_negara`
--

CREATE TABLE `md_negara` (
  `id` int(10) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `negara` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_pekerjaan`
--

CREATE TABLE `md_pekerjaan` (
  `id` int(10) NOT NULL,
  `nama_pekerjaan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_penjamin`
--

CREATE TABLE `md_penjamin` (
  `id` int(10) NOT NULL,
  `kode_penjamin` int(10) NOT NULL,
  `nama_penjamin` varchar(100) NOT NULL,
  `status` int(1) DEFAULT '0',
  `jenis_pelayanan` varchar(100) NOT NULL,
  `rujukan` int(1) NOT NULL DEFAULT '0',
  `kode_alias` varchar(100) NOT NULL,
  `jenis_kontrak` int(1) NOT NULL DEFAULT '0',
  `masa_berlaku` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `file_kontrak` varchar(400) NOT NULL,
  `administrasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_provinsi`
--

CREATE TABLE `md_provinsi` (
  `id` int(10) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_tindakan`
--

CREATE TABLE `md_tindakan` (
  `id` int(10) NOT NULL,
  `kode` int(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kodeicd9` varchar(200) NOT NULL,
  `namaicd9` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_trf_akom`
--

CREATE TABLE `md_trf_akom` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `harga` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_trf_humasequipment`
--

CREATE TABLE `md_trf_humasequipment` (
  `id` int(10) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `bahan_alat` varchar(100) NOT NULL,
  `jasa_rumah_sakit` int(100) NOT NULL,
  `jasa_pelayanan` int(100) NOT NULL,
  `total` int(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_trf_igd`
--

CREATE TABLE `md_trf_igd` (
  `kode` int(10) NOT NULL,
  `tindakan` varchar(100) NOT NULL,
  `jp` int(100) NOT NULL,
  `js` int(100) NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_trf_penunjang`
--

CREATE TABLE `md_trf_penunjang` (
  `kode` int(10) NOT NULL,
  `tindakan` varchar(100) NOT NULL,
  `total_umum` int(100) NOT NULL,
  `total_khusus` int(100) NOT NULL,
  `total_executive` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_trf_ranap`
--

CREATE TABLE `md_trf_ranap` (
  `kode` int(10) NOT NULL,
  `tindakan` varchar(100) NOT NULL,
  `svip` int(100) NOT NULL,
  `vip` int(100) NOT NULL,
  `kelas_1` int(100) NOT NULL,
  `kelas_2` int(100) NOT NULL,
  `kelas_3` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `md_trf_tarifrajal`
--

CREATE TABLE `md_trf_tarifrajal` (
  `kode` int(10) NOT NULL,
  `tindakan` varchar(100) NOT NULL,
  `total_umum` int(100) NOT NULL,
  `total_khusus` int(100) NOT NULL,
  `total_executive` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `md_agama`
--
ALTER TABLE `md_agama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_daftargolongandokter`
--
ALTER TABLE `md_daftargolongandokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_daftarinstalasi`
--
ALTER TABLE `md_daftarinstalasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_daftarpasien`
--
ALTER TABLE `md_daftarpasien`
  ADD PRIMARY KEY (`rm`);

--
-- Indexes for table `md_daftarpegawai`
--
ALTER TABLE `md_daftarpegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_daftarpoli`
--
ALTER TABLE `md_daftarpoli`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_daftarrujuk`
--
ALTER TABLE `md_daftarrujuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_diagnosa`
--
ALTER TABLE `md_diagnosa`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `md_ef_masterobat`
--
ALTER TABLE `md_ef_masterobat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_eri_bor`
--
ALTER TABLE `md_eri_bor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_eri_gedung`
--
ALTER TABLE `md_eri_gedung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_eri_kelas`
--
ALTER TABLE `md_eri_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_eri_lantai`
--
ALTER TABLE `md_eri_lantai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_eri_ruangok`
--
ALTER TABLE `md_eri_ruangok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_eri_ruangrawat`
--
ALTER TABLE `md_eri_ruangrawat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_et_mastertindakan`
--
ALTER TABLE `md_et_mastertindakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_kecamatan`
--
ALTER TABLE `md_kecamatan`
  ADD PRIMARY KEY (`kode_kecamatan`);

--
-- Indexes for table `md_kelurahan`
--
ALTER TABLE `md_kelurahan`
  ADD PRIMARY KEY (`kode_kelurahan`);

--
-- Indexes for table `md_kota`
--
ALTER TABLE `md_kota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_pekerjaan`
--
ALTER TABLE `md_pekerjaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_penjamin`
--
ALTER TABLE `md_penjamin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_tindakan`
--
ALTER TABLE `md_tindakan`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `md_trf_akom`
--
ALTER TABLE `md_trf_akom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_trf_humasequipment`
--
ALTER TABLE `md_trf_humasequipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `md_trf_igd`
--
ALTER TABLE `md_trf_igd`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `md_trf_penunjang`
--
ALTER TABLE `md_trf_penunjang`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `md_trf_ranap`
--
ALTER TABLE `md_trf_ranap`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `md_trf_tarifrajal`
--
ALTER TABLE `md_trf_tarifrajal`
  ADD PRIMARY KEY (`kode`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
