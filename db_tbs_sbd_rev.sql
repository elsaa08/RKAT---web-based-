-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2022 at 05:41 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tbs_sbd_rev`
--

-- --------------------------------------------------------

--
-- Table structure for table `iku`
--

CREATE TABLE `iku` (
  `kode_iku` int(11) NOT NULL,
  `nama_iku` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `iku`
--

INSERT INTO `iku` (`kode_iku`, `nama_iku`) VALUES
(111, 'Rasio Dosen dan Mahasiswa'),
(112, 'Persentase mata kuliah yang mengunakan pembelajaran daring (blended learning)'),
(113, 'Persentase lulusan bersertifikat kompetensi'),
(114, 'Persentase keterserapan lulusan'),
(115, 'Presentasi kelulusan mahasiswa PPG'),
(116, 'Jumlah kelas berbahasa pengantar internasional'),
(117, 'Persentase jumlah mahasiswa asing'),
(118, 'Persentase mahasiswa yang mengikuti student mobility'),
(119, 'Presentase prodi yang menerapkan pembelajaran Merdeka Belajar'),
(121, 'Persentase dosen yang memperoleh rekognisi internasional'),
(122, 'Jumlah dosen yang mengikuti lecturer exchange/visiting scholar'),
(123, 'Persentase dosen asing'),
(124, 'Persentase dosen baru yang mengikuti program pekerti'),
(211, 'Jumlah jurnal terbitan UPI yang terakreditasi/terindeks nasional'),
(212, 'Jumlah jurnal UPI yang terindeks oleh lembaga bereputasi'),
(213, 'Jumlah penelitian yang didanai'),
(214, 'Jumlah sitasi per-dosen'),
(215, 'Jumlah artikel hasil penelitian yang dipublikasikan pada jurnal bereputasi'),
(216, 'Jumlah keluaran penelitian yang berhasil mendapat rekognisi internasional atau diterapkan oleh masya'),
(217, 'Jumlah mahasiswa yang terlibat dalam penelitian'),
(221, 'Jumlah Produk Inovasi'),
(222, 'Jumlah Pusat Unggulan Iptek'),
(223, 'Jumlah program teaching industry'),
(224, 'Jumlah pameran/konser/pertunjukan IPTEK, seni dan budaya, serta penyelenggaraan forum ilmiah'),
(231, 'Jumlah Hak Kekayaan Intelektual'),
(311, 'Jumlah mahasiswa yang terlibat dalam PkM dosen'),
(312, 'Presentase dana Pengabdian kepada Masyarakat'),
(313, 'Jumlah bantuan sosial Program Corporate Social Responsibility (CSR)'),
(321, 'Jumlah luaran hasil PkM yang berhasil mendapat rekognisi internasional atau diterapkan oleh masyarak'),
(411, 'Jumlah kelompok mahasiswa yang didanai pada Program Kreativitas Mahasiswa (PKM)'),
(412, 'Jumlah mahasiswa yang berprestasi'),
(421, 'Presentase alokasi dana kegiatan kemahasiswaan'),
(422, 'Jumlah mahasiswa yang memperoleh beasiswa'),
(423, 'Persentase mahasiswa dan lulusan yang memperoleh layanan bimbingan karir /Career Development Centre '),
(424, 'Jumlah mahasiswa dan/atau lulusan yang menjadi wirausaha'),
(425, 'Persentase lulusan yang mendapatkan pekerjaan kurang dari 3 bulan'),
(426, 'Jumlah lulusan yang bekerja pada lembaga internasional'),
(427, 'Persentase lulusan yang melanjutkan studi'),
(428, 'Jumlah lembaga eksternal yang bekerjasama dalam pengembangan mahasiswa dan/atau lulusan'),
(429, 'Persentase pengguna lulusan yang puas terhadap kinerja lulusan'),
(431, 'Jumlah mahasiswa yang terlibat dalam kegiatan Ormawa dan UKM yang memperkuat kemajemukan dan keberag'),
(432, 'Jumlah Kegiatan single event dan multievent yang diikuti Ormawa dan UKM'),
(433, 'Jumlah Pelatih/Pembina Ormawa dan UKM yang telah tersertifikasi'),
(511, 'Persentase dosen berkualifikasi Doktor'),
(512, 'Persentase dosen dengan jabatan Guru Besar'),
(513, 'Presentase dosen dengan jabatan Lektor Kepala'),
(514, 'Persentase pegawai yang menjadi anggota asosiasi profesi'),
(515, 'Persentase dosen yang memiliki sertifikat kompetensi'),
(516, 'Persentase dosen tetap yang berasal dari kalangan praktisi profesional, dunia industri, atau dunia k'),
(517, 'Persentase tenaga kependidikan yang meningkat karirnya'),
(518, 'Persentase tenaga fungsional tertentu'),
(519, 'Jumlah sumber daya manusia yang memperoleh penghargaan/award'),
(521, 'Persentase sistem informasi manajemen terintegrasi untuk menunjang smart campus'),
(522, 'Indeks kepuasan mahasiswa terhadap sarana dan prasarana'),
(523, 'Jumlah laboratorium terakreditasi dan mendukung inovasi'),
(524, 'Ranking Universitas di GreenMetric'),
(525, 'Akreditasi Perpustakaan'),
(526, 'Akreditasi Arsip Universitas'),
(527, 'Akreditasi UPT Layanan Kesehatan'),
(528, 'Akreditasi Museum Pendidikan Nasional'),
(529, 'Persentase fasilitas ramah difabel'),
(531, 'Jumlah IGU'),
(532, 'Opini Penilaian Laporan Keuangan oleh Akuntan Publik'),
(533, 'Nilai Kinerja Anggaran atas RKA-K/L'),
(534, 'Predikat Sistem Akuntabilitas Kinerja Instansi Pemerintah (SAKIP)'),
(611, 'Jumlah kerja sama'),
(612, 'Indeks kepuasan pelayanan'),
(613, 'Tingkat kelengkapan laporan PDDIKTI'),
(614, 'Tingkat pengetahuan dan pemahaman tentang aturan/regulasi dan kepemimpinan di Perguruan Tinggi'),
(615, 'Pemeringkatan keterbukaan informasi publik'),
(621, 'Peringkat akreditasi Perguruan Tinggi dari BAN- PT'),
(622, 'Persentase prodi terakreditasi unggul pada level nasional'),
(623, 'Jumlah prodi terakreditasi Internasional'),
(624, 'Peringkat/Kluster universitas pada pemeringkatan perguruan tinggi nasional'),
(625, 'Peringkat di QS World University Ranking'),
(626, 'Peringkat di QS World University Ranking by Subject in Education'),
(627, 'Peringkat di QS Asian University Ranking'),
(628, 'Rating pada QS Star'),
(631, 'Jumlah unit akademik dan non akademik'),
(632, 'Jumlah Center of Excellence/pusat keunggulan yang dikembangkan (pendidikan khusus, pendidikan vokasi'),
(633, 'Jumlah dosen yang mengajar di sekolah'),
(1110, 'Tingkat keketatan peminat (calon mahasiswa baru)'),
(1111, 'Persentase kelulusan mahasiswa tepat waktu'),
(4210, 'Jumlah kegiatan kemahasiswaan yang melibatkan lulusan'),
(5110, 'Persentase anggaran kesejahteraan pegawai yang dibayarkan'),
(5210, 'Persentase unit yang menerapkan smart office'),
(5211, 'Jumlah laboratorium microteaching'),
(5212, 'Jumlah smart classroom'),
(5213, 'Kapasitas asrama mahasiswa'),
(5214, 'Fasilitas seni dan budaya');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `kode_iku` int(11) NOT NULL,
  `kode_kegiatan` int(11) NOT NULL,
  `kegiatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`kode_iku`, `kode_kegiatan`, `kegiatan`) VALUES
(112, 1121, 'Penyusunan panduan dan pedoman akademik dan kemahasiswaan untuk mahasiswa baru'),
(112, 1122, 'Pengembangan pembelajaran dengan memanfaatkan SPOT UPI'),
(112, 1123, 'Pengembangan model pembelajaran digital'),
(112, 1124, 'Pelaksanaan hibah e-learning'),
(112, 1125, 'Pengembangan mata kuliah daring'),
(112, 1126, 'Pengembangan perangkat pembelajaran Hybrid MKDU dan MKDK'),
(113, 1131, 'Pelaksanaan uji sertifikasi kompetensi'),
(113, 1132, 'Pelatihan persiapan uji kompetensi mahasiswa'),
(113, 1133, 'Penguatan kemampuan berbahasa asing bagi mahasiswa'),
(114, 1141, 'Pengembangan KBK'),
(114, 1142, 'Pelaksanaan Audit Mutu Internal (AMI) dan Perangkingan Program Studi'),
(114, 1143, 'Pengembangan kurikulum'),
(114, 1144, 'Pengembangan SAP, silabus, bahan ajar, dan buku ajar'),
(115, 1151, 'Pelaksanaan dan monitoring kegiatan PPG'),
(115, 1152, 'Penyusunan kebijakan mutu dan manual mutu PPG'),
(115, 1153, 'Penyusunan regulasi keuangan dan POB pengelolaan PPG'),
(115, 1154, 'Penyusunan petunjuk teknis penyelenggaraan akademik PPG'),
(115, 1155, 'Penyusunan POB seleksi penerimaan PPG, POB proses pelaksanaan PPG, POB ujian dan kelulusan PPG'),
(115, 1156, 'Pengembangan program pendidikan profesi'),
(115, 1157, 'Pelaksanaan program PPG vokasi'),
(116, 1161, 'Penyelenggaraan sandwich program bagi mahasiswa bersama universitas mitra di luar negeri'),
(117, 1171, 'Penyelenggaraan inbound/outbound student exchange'),
(117, 1172, 'Penyelenggaraan Kegiatan Kemahasiswaan bagi Para Mahasiswa Internasional'),
(118, 1181, 'Pengembangan dan implementasi program credit transfer'),
(118, 1182, 'Penyelenggaraan program double degree'),
(118, 1183, 'Penyelenggaraan gelar bersama (joint degree) dengan perguruan tinggi di luar negeri'),
(118, 1184, 'Penyeleggaraan program twinning'),
(118, 1185, 'Peningkatan program mahasiswa ke luar negeri'),
(119, 1191, 'Pelaksanaan KKN'),
(119, 1192, 'Pelaksanaan PPL'),
(119, 1193, 'Pelaksanaan PPL luar negeri'),
(119, 1194, 'Peningkatan mutu pelaksanaan PPL mahasiswa Dik dan Non-Dik'),
(119, 1195, 'Workshop model Kuliah Kerja Nyata Tematik'),
(119, 1196, 'Kuliah Kerja Nyata Tematik'),
(119, 1197, 'Pengembangan model Kuliah Kerja Nyata Tematik dan Kewirausahaan'),
(119, 1198, 'Perkuliahan dari dosen tamu dalam negeri'),
(121, 1211, 'Dosen terekognisi internasional'),
(122, 1221, 'Lecturer exchange'),
(122, 1222, 'Penyelenggaraan visiting scholar'),
(122, 1223, 'Penyelenggaraan visiting profesor'),
(123, 1231, 'Pengadaan dosen tamu (guest lecture) untuk peningkatan kapasitas riset dan pembelajaran jangka panjang'),
(123, 1232, 'Rekrutmen dosen asing'),
(123, 1233, 'Perkuliahan dari dosen tamu luar negeri'),
(124, 1241, 'Applied approach bagi dosen muda'),
(211, 2111, 'Bantuan penyelenggaraan dan pemrosesan hasil seminar nasional'),
(211, 2112, 'Pembinaan dan pengelolaan jurnal ilmiah nasional terakreditasi Dikti'),
(211, 2113, 'Penyelenggaraan seminar/konferensi nasional'),
(211, 2114, 'Peningkatan kualitas jurnal online fakultas, kampus daerah, lembaga,\r\ndan UPT'),
(211, 2115, 'Pelatihan pengelola jurnal melalui pemanfaatan Open Jurnal System (OJS) rujukan Dikti'),
(211, 2116, 'Fasilitasi pengelolaan jurnal ilmiah nasional terakreditasi dan/atau terindeks (termasuk antologi)'),
(211, 2117, 'Pengembangan jurnal nasional terakreditasi'),
(211, 2118, 'Peningkatan kapasitas pengelola jurnal Pengabdian Kepada Masyarakat (Abmas)'),
(211, 2119, 'Penguatan Jurnal Penelitan Pendidikan (Jurnal terakreditasi Nasional) dan Abmas (Media Pengabdian kepada Masyarakat)'),
(211, 21110, 'Publikasi ilmiah melalui jurnal kehumasan'),
(212, 2121, 'Pengelolaan dan penerbitan jurnal internasional'),
(212, 2122, 'Bantuan penyelenggaraan dan pemrosesan proceeding seminar/konferensi internasional terindeks'),
(212, 2123, 'Fasilitasi pengelolaan jurnal ilmiah internasional'),
(212, 2124, 'Penyelenggaraan seminar/konferensi internasional terindeks'),
(212, 2125, 'Penyelenggaraan joint conference'),
(212, 2126, 'Pengembangan jurnal internasional bereputasi'),
(212, 2127, 'Fasilitasi dosen mengikuti seminar internasional'),
(212, 2128, 'Operasionalisasi jurnal terindeks scopus dan lain-lain'),
(213, 2131, 'Pelatihan penulisan artikel ilmiah nasional'),
(213, 2132, 'Royalti Penulis Buku'),
(213, 2133, 'Penelitian bersama dengan lembaga mitra luar negeri'),
(213, 2134, 'Penulisan artikel bersama dengan peneliti universitas atau lembaga profesional dalam negeri'),
(213, 2135, 'Penulisan artikel bersama dengan peneliti universitas atau lembaga profesional luar negeri'),
(213, 2136, 'Penguatan jejaring kerjasama bidang riset'),
(213, 2137, 'Pengorganisasian dokumen kinerja penelitian'),
(213, 2138, 'Insentif publikasi pada jurnal nasional terindeks Dikti'),
(213, 2139, 'Penelitian penguatan kompetensi'),
(213, 21310, 'Anugerah Inovasi Hasil Penelitian'),
(213, 21311, 'Joint research'),
(213, 21312, 'Pelaksanaan riset oleh dosen dan tenaga kependidikan dengan jabatan fungsional tertentu'),
(213, 21313, 'Penelitian Berorientasi HKI'),
(213, 21314, 'Implementasi Hasil Riset Tingkat Kesiapan Teknologi di atas Tujuh (TKT>7)'),
(213, 21315, 'Pelaksanaan riset oleh KBK'),
(213, 21316, 'Penelitian Teaching Innovation'),
(213, 21317, 'Pelaksanaan riset oleh pusat kajian'),
(213, 21318, 'Penelitian Pembinaan dan Afirmasi'),
(213, 21319, 'Penelitian Peningkatan Mutu Pembelajaran'),
(213, 21320, 'Penelitian kebijakan untuk peningkatan kapasitas manajemen pimpinan universitas'),
(213, 21321, 'Penelitian Pengembangan Kelompok Bidang Ilmu'),
(213, 21322, 'Workshop Pengembangan Kompetensi Karya Ilmiah Dosen'),
(213, 21323, 'Penelitian Unggulan UPI'),
(213, 21324, 'Insentif bagi penulis yang dimuat pada media cetak/online'),
(213, 21325, 'Penelitian Kolaborasi Dosen dan Sekolah Laboratorium'),
(213, 21326, 'Insentif peraih paten produk unggulan'),
(213, 21327, 'Penelitian Penguatan Kelompok dan Rumpun Keilmuan (Guru Besar)'),
(213, 21328, 'Pelatihan/Workshop/lokakarya metodologi penelitian'),
(213, 21329, 'Penelitian untuk tenaga fungsional tertentu'),
(213, 21330, 'Bantuan penulisan proposal penelitian'),
(213, 21331, 'Penelitian Tenaga Kependidikan (Laboran)'),
(213, 21332, 'Seminar hasil penelitian'),
(213, 21333, 'Seleksi, Monitoring dan Evaluasi Penelitian Dana UPI dan Kemenristekdikti'),
(213, 21334, 'Dukungan dana penelitian yang bersumber dari Kemenristekdikti'),
(213, 21335, 'Penelitian yang bersumber dari Kemenristekdikti'),
(213, 21336, 'Hibah penelitian'),
(214, 2141, 'Pelatihan/workshop penulisan buku'),
(214, 2142, 'Insentif keikutsertaan seminar dan atau bantuan penyiapan publikasi pada proceeding terindeks'),
(214, 2143, 'Insentif publikasi pada jurnal internasional terindeks scopus'),
(214, 2144, 'Fasilitasi dosen mengikuti seminar nasional'),
(214, 2145, 'Insentif publikasi proceeding terindeks scopus'),
(214, 2146, 'Pelatihan penulisan artikel ilmiah internasional'),
(214, 2147, 'Penelusuran indeks sitasi dosen'),
(214, 2148, 'Bantuan untuk persiapan publikasi pada jurnal internasional terindeks scopus'),
(214, 2149, 'Penulisan buku ber-ISBN'),
(214, 21410, 'Pelatihan pengelolaan jurnal ilmiah nasional'),
(217, 2171, 'Pelatihan penulisan proposal penelitian bagi mahasiswa yang berdaya nasional'),
(217, 2172, 'Pelatihan penulisan artikel bagi mahasiswa'),
(217, 2173, 'Kolaborasi penelitian dosen dan mahasiswa'),
(217, 2174, 'Hibah Kompetisi Penelitian Mahasiswa'),
(217, 2175, 'Fasilitasi Publikasi karya ilmiah Mahasiswa'),
(221, 2211, 'Implementasi hasil penelitian untuk inovasi dan pengembangan PBM'),
(221, 2212, 'Pengembangan model dan teknologi pembelajaran'),
(221, 2213, 'Pengembangan pusat inovasi teknologi pendidikan'),
(221, 2214, 'Pengembangan taman sains'),
(221, 2215, 'Pengembangan STEM'),
(221, 2216, 'Learning Innovation: Pengembangan Sumber Belajar Hybrid Learning MKDF)'),
(222, 2221, 'Redisain roadmap riset pusat kajian'),
(222, 2222, 'Pengembangan pusat kajian'),
(222, 2223, 'Lokakarya penyusunan proposal riset unggulan'),
(222, 2224, 'Pengembangan roadmap riset KBK'),
(222, 2225, 'Pengembangan Program Pusat-pusat LPPM'),
(222, 2227, 'Program Penguatan Sentra HKI UPI'),
(222, 2228, 'Meningkatkan produktivitas keluaran riset Pusat Kajian (PK) dan Kelompok Bidang Keilmuan (KBK)'),
(222, 2229, 'Program unit pengelola inovasi hasil penelitian'),
(223, 2231, 'Teaching Industry dan Inovasi Industri Perguruan Tinggi'),
(224, 2241, 'Fasilitasi pergelaran dan pameran karya seni dosen'),
(224, 2242, 'Pelaksanaan pameran/pertunjukan/pagelaran/work shop seni'),
(224, 2243, 'Pelaksanaan pementasan Bandung Isola Performing Arts Festival'),
(231, 2311, 'Fasilitasi pengusulan HKI dan insentif peraih HKI'),
(231, 2312, 'Pengembangan Rencana Induk Penelitian universitas'),
(231, 2313, 'Pelatihan drafting paten'),
(231, 2314, 'Hibah kompetitif penulisan buku ajar'),
(311, 3111, 'Penyusunan Rencana Induk Pengabdian kepada Mayarakat (PkM)'),
(311, 3112, 'Lokakarya penyusunan dan pengembangan roadmap PkM prodi'),
(311, 3113, 'Revisi penyusunan Renstra Pengabdian kepada Masyarakat (PkM)'),
(311, 3114, 'Penguatan roadmap penelitian KBK departemen/prodi'),
(311, 3115, 'Pelaksanaan PkM oleh mahasiswa'),
(311, 3116, 'PkM dosen melibatkan mahasiswa'),
(312, 3121, 'Pengabdian kepada Masyarakat yang bersumber dari Kemenristekdikti'),
(312, 3122, 'Seminar nasional dan bazar hasil penelitian dan pengabdian masyarakat'),
(312, 3123, 'Program Pengabdian kepada Masyarakat berbasis Kewirausahaan'),
(312, 3124, 'Program Pengabdian kepada Masyarakat Pengembangan Desa Binaan berbasis Kemitraan (PPM Desa Binaan)'),
(312, 3125, 'Program Pengabdian kepada Mayarakat berbasis Kepakaran Bidang Ilmu'),
(312, 3126, 'Seleksi, Monitoring dan Evaluasi Pengabdian kepada Masyarakat'),
(312, 3127, 'Hibah Pengabdian kepada Masyarakat (PkM)'),
(312, 3128, 'Pengabdian kepada Masyarakat berbasis hasil Penelitian'),
(312, 3129, 'Bantuan penulisan proposal pengabdian kepada masyarakat'),
(313, 3131, 'Bantuan sosial Program Corporate Social Responsibility (CSR)'),
(321, 3211, 'Pameran produk pendidikan, penelitian, dan pengabdian kepada masyarakat serta produk industri berskala nasional'),
(321, 3212, 'Seminar/workshop/sosialisasi hasil PkM dengan berbagai pihak'),
(411, 4111, 'Seleksi dan Monev Program Kreativitas Mahasiswa (PKM)'),
(412, 4121, 'Fasilitasi program pembinaan dan pengembangan minat dan bakat'),
(412, 4122, 'Penyelenggaraan Pekan Olahraga dan Seni Mahasiswa (PORSEMA) UPI'),
(412, 4123, 'Pembinaan program penalaran mahasiswa'),
(412, 4124, 'Fasilitasi dan atau memotivasi peningkatan prestasi mahasiswa dalam berbagai kegiatan kemahasiswaan, tingkat regional dan nasional (MTQ)'),
(412, 4125, 'Sosialisasi dan seleksi pekan ilmiah mahasiswa'),
(412, 4126, 'Fasilitasi keikutsertaaan pada kejuaraan, kegiatan ilmiah, festival, dan seni tingkat nasional'),
(412, 4127, 'Fasilitasi keikutsertaaan pada kejuaraan, kegiatan ilmiah, festival, dan seni tingkat internasional'),
(412, 4128, 'Persiapan, pembinaan, dan keikutsertaan mahasiswa UPI pada PIMNAS'),
(412, 4129, 'Pemilihan mahasiswa berprestasi'),
(412, 41210, 'Pembinaan kegiatan ilmiah mahasiswa'),
(412, 41211, 'Penghargaan mahasiswa berprestasi dalam bidang akademik, keagamaan, seni budaya dan olah raga'),
(421, 4211, 'Pengokohan kehidupan beragama bagi mahasiswa'),
(421, 4212, 'Implementasi kegiatan dari iuran kemahasiswaan'),
(421, 4213, 'Bantuan operasional UKM, minat bakat dan penalaran'),
(422, 4221, 'Seleksi dan validasi penerima beasiswa'),
(422, 4222, 'Bantuan Biaya Pendidikan Peningkatan Prestasi Akademik (BBP-PPA)'),
(422, 4223, 'Bantuan biaya pendidikan/beasiswa bagi mahasiswa tidak mampu dan bantuan pembinaan bagi mahasiswa berprestasi'),
(422, 4224, 'Penjaringan beasiswa dari berbagai pihak'),
(423, 4231, 'Pemutakhiran database alumni'),
(423, 4232, 'Pelaksanaan tracer study'),
(423, 4233, 'Pembekalan Calon Alumni'),
(423, 4234, 'Fasilitasi program psikotes'),
(423, 4235, 'Pelaksanaan bimbingan karir'),
(424, 4241, 'Pengembangan Kewirausahaan Mahasiswa'),
(425, 4251, 'Optimalisasi Career Development Centre (CDC)'),
(425, 4252, 'Penyelenggaraaan UPI job fair'),
(426, 4261, 'Penyelenggaraan bimbingan kepribadian, karir dan sosial bagi mahasiswa dan calon wisudawan'),
(427, 4271, 'Penyelenggaraan pameran pendidikan'),
(428, 4281, 'Kerja sama dan pemberdayaan alumni'),
(429, 4291, 'Peningkatan kemitraan dengan pengguna lulusan'),
(431, 4311, 'Pembinaan mahasiswa melalui KOMDIS'),
(431, 4312, 'Fasilitasi Kegiatan Unit Kegiatan Mahasiswa (UKM) dan Organisasi Kemahasiswaan (Ormawa)'),
(432, 4321, 'Bantuan operasional kegiatan ormawa'),
(433, 4331, 'Peningkatan kapasitas dosen pembimbing/pembina UKM, BEM, dan Ormawa'),
(511, 5111, 'Bantuan penyelesaian studi'),
(511, 5112, 'Bantuan bagi dosen yang melakukan pendidikan lanjut'),
(512, 5121, 'Penilaian calon guru besar (peer group)'),
(512, 5122, 'Pengokohan bidang kepakaran guru besar'),
(512, 5123, 'Percepatan pengusulan guru besar bagi yang sudah memenuhi syarat'),
(512, 5124, 'Pelaksanaan pengukuhan guru besar'),
(513, 5131, 'Validasi karya tulis ilmiah untuk kenaikan jabatan fungsional dosen'),
(513, 5132, 'Pelatihan ToT dosen terkait kompetensi'),
(514, 5141, 'Kerja sama prodi dengan asosiasi profesi'),
(514, 5142, 'Kerja sama prodi dengan asosiasi profesi non-guru'),
(515, 5151, 'Pelatihan dosen di luar negeri'),
(515, 5152, 'Peningkatan kemampuan akademik dosen muda'),
(515, 5153, 'Fasilitasi kegiatan sertifikasi dosen'),
(515, 5154, 'Kerja sama sertifikasi dosen UPI sebagai PTPS'),
(515, 5155, 'Bantuan Pendidikan dan pelatihan pegawai'),
(515, 5156, 'Pelantikan dan pengambilan sumpah PNS dan sumpah jabatan'),
(515, 5157, 'Pelaksanaan sidang kepegawaian (Baperjakat, PAK Dosen, Laboran, Pustakawan, PTP, BINAP)'),
(515, 5158, 'Analisis Beban Kinerja (ABK)'),
(515, 5159, 'Bantuan test dan kursus bahasa asing bagi dosen'),
(515, 51510, 'Pemberian bantuan biaya pendidikan lanjut bagi tenaga kependidikan'),
(515, 51511, 'Ujian Dinas Tk. I, Ujian Penyesuaian Kenaikan Pangkat, dan Ujian Presentasi Peningkatan Pendidikan'),
(515, 51512, 'Pembinaan motivasi dan peningkatan kinerja pegawai'),
(515, 51513, 'Penyusunan kurikulum diklat pegawai (dosen, tenaga kependidikan)'),
(515, 51514, 'Penguatan kemampuan berbahasa asing bagi pegawai'),
(515, 51515, 'Peningkatan kompetensi dosen'),
(515, 51516, 'Pengukuran kinerja pegawai'),
(515, 51517, 'Peningkatan kompetensi tenaga kependidikan'),
(515, 51518, 'Pelaksanaan ujian presentasi peningkatan pendidikan'),
(515, 51519, 'Pendataan dan penyerahan Penghargaan Satyalancana Karya Satya, Karya Bhakti Satya, dan Purnabakti'),
(515, 51520, 'Pendidikan dan pelatihan/bimbingan teknis anggota SAI'),
(515, 51521, 'Penyusunan pengadaan kebutuhan pegawai (formasi)'),
(515, 51522, 'Peningkatan kapasitas SDM reviewer melalui pelatihan bersertifikasi nasional'),
(515, 51523, 'Diklat prajabatan bagi pegawai baru UPI (Pegawai Tetap UPI)'),
(515, 51524, 'Pelatihan pengadaan barang dan jasa'),
(515, 51525, 'Pelatihan Aplikasi SPSE'),
(515, 51526, 'Bantuan biaya pencetakan buku karya dosen'),
(515, 51527, 'Penulisan buku berbahasa asing'),
(515, 51528, 'Pembinaan pengelola jurnal'),
(517, 5171, 'Rekrutmen pejabat UPI / Assesment'),
(518, 5181, 'Pelatihan teknis dan fungsional tenaga kependidikan'),
(519, 5191, 'Pemilihan dan pemberian penghargaan pegawai berprestasi'),
(519, 5192, 'Monitoring dan evaluasi kinerja pegawai menggunakan sistem BKD'),
(521, 5211, 'Pengembangan sistem informasi manajemen terintegrasi'),
(521, 5212, 'Pengembangan direktori kepakaran dosen'),
(521, 5213, 'Pengadaan renewal license firewall'),
(521, 5214, 'Pemutakhiran database kepakaran dosen'),
(521, 5215, 'Peningkatan Sistem Informasi Manajemen Terintegrasi melalui Basis Data Terpusat'),
(521, 5216, 'Perluasan infrastruktur akses internet Universitas Pendidikan Indonesia'),
(521, 5217, 'Penyusunan sistem pendapatan laporan keuangan'),
(521, 5218, 'Pengembangan sistem manajemen sarana prasarana'),
(521, 5219, 'Pengembangan sistem output riset'),
(521, 52110, 'Pengembangan Mobile Learning System'),
(521, 52111, 'Pengolahan dan pengembangan sistem aplikasi penggajian'),
(521, 52112, 'Penyempurnaan sistem informasi Insentif Berbasis Kinerja (IBK)'),
(521, 52113, 'Pengembangan Sistem Pajak'),
(521, 52114, 'Pengembangan sistem e-reporting'),
(521, 52115, 'Peningkatan kualitas konten pembelajaran online'),
(521, 52116, 'Peningkatan Sistem Akademik Terintegrasi (SISTER)'),
(521, 52117, 'Pengembangan e-office'),
(521, 52118, 'Pengembangan sistem integrasi audit'),
(521, 52119, 'Koordinasi pemutakhiran data dan informasi terkoneksi dengan PDDIKTI'),
(521, 52120, 'Pengembangan sistem e-planning'),
(521, 52121, 'Pengadaan sistem SINTAG'),
(521, 52122, 'Pengembangan Sistem Usaha dan Kerjasama (SIMPUL dan SIMPEL)'),
(521, 52123, 'Pengembangan aplikasi/website unit kerja'),
(521, 52124, 'Sistem Informasi Kemahasiswaan (SIKMAWA)'),
(521, 52125, 'Pengembangan Sistem Informasi Manajemen Kurikulum dan Pembelajaran'),
(522, 5221, 'Survey layanan sarana dan prasarana UKM dan Ormawa'),
(522, 5222, 'Pengadaan sarana dan prasarana kegiatan kemahasiswaan'),
(522, 5223, 'Penyusunan rencana induk (master plan) tata ruang kampus UPI'),
(522, 5224, 'Pengadaan infrastruktur jaringan'),
(522, 5225, 'Penilaian kebutuhan sarana dan prasarana pembelajaran'),
(522, 5226, 'Pemeliharaan infrastruktur jaringan'),
(522, 5227, 'Pembangunan gedung PKM'),
(523, 5231, 'Pengadaan peralatan laboratorium'),
(523, 5232, 'Pengadaan sarana dan prasarana pembelajaran'),
(523, 5233, 'Pemeliharaan peralatan laboratorium'),
(523, 5234, 'Pemeliharaan ruangan laboratorium'),
(523, 5235, 'Pengadaan peralatan laboratorium program studi baru'),
(523, 5236, 'Pengadaan alat dan bahan praktikum'),
(523, 5237, 'Pelaksanaan kunjungan/studi lapangan'),
(524, 5241, 'Partisipasi GreenMetric World University Rankings on Sustainability'),
(525, 5251, 'Peningkatan fungsi perpustakaan sebagai teaching library'),
(525, 5252, 'Dijitasi koleksi'),
(525, 5253, 'Pemeliharaan dan perbaikan bahan pustaka'),
(525, 5254, 'Langganan jurnal ilmiah berbasis IT / Web / e-journal'),
(525, 5255, 'Pengadaan Akses Turnitin'),
(525, 5256, 'Pengadaan buku perpustakaan pusat dan kampus daerah'),
(525, 5257, 'Shelving koleksi perpustakaan'),
(525, 5258, 'Langganan jurnal ilmiah cetak'),
(525, 5259, 'Pengadaan RFID'),
(525, 5260, 'Stock opname koleksi perpustakaan'),
(526, 5261, 'Pengadaan sarana dan prasarana kearsipan'),
(526, 5262, 'Pengembangan sistem kearsipan'),
(526, 5263, 'Pemeliharaan sarana dan prasarana kearsipan'),
(526, 5264, 'Pendampingan penerapan sistem pengelolaan arsip'),
(526, 5265, 'Khasanah kearsipan tentang ketokohan pimpinan'),
(526, 5266, 'Penyusunan pedoman pengelolaan arsip statis'),
(526, 5267, 'Akreditasi Kearsipan'),
(526, 5268, 'Penataan arsip'),
(526, 5269, 'Revisi instrumen pengelolaan arsip dinamis'),
(526, 52610, 'Penelusuran arsip statis UPI'),
(526, 52611, 'Workshop arsip elektronik di lingkungan UPI'),
(526, 52612, 'Pengembangan sistem input daftar arsip universitas'),
(527, 5271, 'Pengadaan obat-obatan'),
(527, 5272, 'Pengadaan peralatan medis'),
(527, 5273, 'Penyuluhan kesehatan'),
(527, 5274, 'Promosi layanan poliklinik'),
(527, 5275, 'Akreditasi Klinik'),
(528, 5281, 'Peningkatan layanan museum'),
(528, 5282, 'Penambahan Konten Museum Pendidikan Nasional'),
(528, 5283, 'Promosi konten museum pendidikan indonesia'),
(529, 5291, 'Pengembangan sarana dan prasarana bagi mahasiswa berkebutuhan khusus'),
(531, 5311, 'Penyusunan peraturan pengelolaan sarana prasarana'),
(531, 5312, 'Perintisan kerja sama usaha komersial'),
(531, 5313, 'Operasional toko isola'),
(531, 5314, 'Pengembangan unit usaha universitas'),
(531, 5315, 'Penjajagan kerja sama kelembagaan dengan badan usaha swasta / milik negara'),
(531, 5316, 'Penggalian potensi kerja sama usaha'),
(531, 5317, 'Pelaksanaan rekonsiliasi aset'),
(531, 5318, 'Penyusunan peraturan kerja sama usaha'),
(531, 5319, 'Penyusunan peraturan pengelolaan unit usaha'),
(531, 53110, 'Kerja sama ke Kabupaten/Kota dan badan usaha lainnya'),
(531, 53111, 'Pengolahan data dan validasi pembayaran biaya pendidikan'),
(531, 53112, 'Pengembangan regulasi unit usaha di Kampus UPI di Daerah'),
(531, 53113, 'Koordinasi dan operasionalisasi kepanitiaan pengadaan, penghapusan, pemeliharaan dan pembangunan'),
(531, 53114, 'Operasional Layanan Pusat Psikologi Terapan (P2T)'),
(531, 53115, 'Operasional day care'),
(531, 53116, 'Pengelolaan perparkiran'),
(531, 53117, 'Pengadaan tanah'),
(531, 53118, 'Sosialisasi peraturan kerja sama dan IGU'),
(532, 5321, 'Pelaksanaan praktikum'),
(532, 5322, 'Penyusunan dan sosialisasi peraturan turunan BM UPI'),
(532, 5323, 'Evaluasi pendapatan, belanja, dan saldo rekening'),
(532, 5324, 'Pengadaan Kantor Akuntan Publik (KAP)'),
(532, 5325, 'Reviu COA dan kebijakan akuntansi UPI'),
(532, 5326, 'Pendampingan audit KAP dan auditor eksternal'),
(532, 5327, 'Penyusunan tindak lanjut audit'),
(532, 5328, 'Penyusunan standar harga barang dan jasa, dan standar biaya pemeliharaan, rehab, dan taman'),
(532, 5329, 'Penguatan Sistem Pengendalian Internal (SPI) antar perguruan tinggi'),
(532, 53210, 'Pengembangan Prosedur Operasional Baku Audit Internal'),
(532, 53211, 'Penyusunan standar biaya layanan minimum'),
(532, 53212, 'Penyusunan laporan keuangan universitas'),
(532, 53213, 'Penyusunan Standar Biaya Umum (SBU) UPI'),
(532, 53214, 'Monitoring dan evaluasi Anggaran'),
(532, 53215, 'Penatausahaan BM UPI'),
(532, 53216, 'Penghitungan piutang SPP'),
(532, 53217, 'Audit interim keuangan'),
(532, 53218, 'Audit pengadaan barang/jasa dan pemeriksaan fisik BMU'),
(532, 53219, 'Penyusunan laporan keuangan pajak perorangan dan badan'),
(532, 53220, 'Rekonsiliasi keuangan'),
(532, 53221, 'Penyusunan revisi pagu'),
(532, 53222, 'Audit penutupan kas universitas'),
(532, 53223, 'Sosialisasi perpajakan'),
(532, 53224, 'Reviu laporan keuangan universitas'),
(532, 53225, 'Penyusunan Laporan Pajak Perorangan dan Badan'),
(532, 53226, 'Monitoring dan Evaluasi Pajak'),
(532, 53227, 'Audit pengelolaan dana penelitian universitas'),
(532, 53228, 'Monitoring Evaluasi dan Implementasi SINTAG dan Pengelolaan SINTAG'),
(532, 53229, 'Perhitungan prediksi penerimaan'),
(532, 53230, 'Audit pengelolaan keuangan universitas'),
(532, 53231, 'Sosialisasi Chart of Account'),
(532, 53232, 'Audit kinerja pengelolaan Sumber Daya Manusia (SDM)'),
(532, 53233, 'Penentuan besaran UKT dari berbagai jalur masuk'),
(532, 53234, 'Audit pendapatan dan belanja Income Generating Unit (IGU)'),
(532, 53235, 'Audit penglolaan dana abadi dan unit usaha UPI'),
(532, 53236, 'Audit tujuan tertentu pengelolaan keuangan pada unit kerja'),
(532, 53237, 'Penyusunan laporan fiskal'),
(532, 53238, 'Penghitungan Standar Satuan Biaya Operasional Pendidikan Tinggi (SSBOPTN) dan Tarif Biaya Pendidikan pada PTN BH'),
(611, 6111, 'Peningkatan kerja sama dengan berbagai lembaga di luar negeri'),
(611, 6112, 'Peningkatan kerja sama dengan berbagai lembaga di dalam negeri'),
(611, 6113, 'Koordinasi sekretariat bersama PTN bh'),
(611, 6114, 'Dana Pendamping Pengelolaan ADB/PHLN'),
(611, 6115, 'Peningkatan jaringan kerja sama Kampus UPI di Daerah dengan berbagai lembaga'),
(611, 6116, 'Implementasi kerja sama luar negeri dengan berbagai pihak'),
(611, 6117, 'Implementasi kerja sama dalam negeri dengan berbagai pihak'),
(611, 6118, 'Kerja sama dengan sekolah mitra'),
(611, 6119, 'Monitoring dan evaluasi kerja sama kelembagaan dengan berbagai lembaga di luar negeri'),
(611, 61110, 'Monitoring dan evaluasi kerja sama kelembagaan dengan berbagai lembaga di dalam negeri'),
(611, 61111, 'Penyusunan Proposal Hibah dari berbagai Instansi/Mitra UPI'),
(611, 61112, 'Keikutsertaan dalam kegiatan KONASPI'),
(611, 61113, 'Bantuan implementasi kerja sama riset dan publikasi dengan lembaga di luar negeri'),
(611, 61114, 'Koordinasi dengan lembaga pendidikan tinggi, lembaga negara, dan dunia industri'),
(611, 61115, 'Memperkuat network dengan media massa, perguruan tinggi dan lembaga/institusi lain'),
(611, 61116, 'Keikutsertaan dalam LPTK Cup'),
(611, 61117, 'Peningkatan program Senat Akademik'),
(611, 61118, 'Pengembangan kerja sama seni dan budaya dengan lembaga internasional di luar negeri'),
(611, 61119, 'Kerja sama publikasi kegiatan UPI dengan stasiun televisi'),
(611, 61120, 'Pelaksanaan temu awal dengan lembaga mitra'),
(611, 61121, 'Operasional kegiatan ASTEN'),
(611, 61122, 'Partisipasi dalam Consortium of Asia Pacific Education Universities (CAPEU)'),
(611, 61123, 'Pelaksanaan UAS CBT MKU-MKDK'),
(611, 61124, 'Pertemuan/ Koordinasi SPI PTNBH'),
(611, 61125, 'Penganugerahan doktor honouris causa'),
(611, 61126, 'Penyelenggaraan kuliah umum/eminence lecture'),
(612, 6121, 'Pemberian bantuan sosial'),
(612, 6122, 'Audit kehadiran pegawai'),
(612, 6123, 'Penyelenggaraan penerimaan mahasiswa baru'),
(612, 6124, 'Pengembangan prosedur dan sistem pengelolaan keuangan'),
(612, 6125, 'Penyusunan rencana pendapatan dan belanja'),
(612, 6126, 'Operasional kegiatan insidental'),
(612, 6127, 'Perjalanan dinas'),
(612, 6128, 'Pengelola operator SINTAG'),
(612, 6129, 'Bantuan internal dan eksternal kegiatan universitas'),
(612, 61210, 'Audit pengelolaan BPPTNBH'),
(612, 61211, 'Penyelarasan Kelompok MKU, MKKU, MKDP dan MKPBS Kurikulum UPI'),
(612, 61212, 'Pelaksanaan bimbingan akademik'),
(612, 61213, 'Survey Kepuasan Mahasiswa terhadap layanan kegiatan kemahasiswaan'),
(612, 61214, 'Implementasi program dana kesehatan mahasiswa'),
(612, 61215, 'Pelaksanaan pekan olah raga dan Art and sport performance day'),
(612, 61216, 'Pembangunan gedung parkir'),
(612, 61217, 'Pemeliharaan gedung dan bangunan'),
(612, 61218, 'Pengadaan bahan habis pakai dan operasional perkantoran'),
(612, 61219, 'Penyelesaian masalah hukum'),
(612, 61220, 'Koordinasi pelaksanaan pengamanan kegiatan kampus'),
(612, 61221, 'Bantuan kegiatan keagamaan'),
(612, 61222, 'Sosialisasi bimbingan tesis dan disertasi'),
(612, 61223, 'Pelaksanaan tes kebugaran dosen dan tenaga kependidikan'),
(612, 61224, 'Pemeliharaan kebersihan dan keindahan kampus'),
(612, 61225, 'Pengadaan peralatan listrik, air, telepon, internet, dan ME lainnya'),
(612, 61226, 'Koordinasi pengamanan lingkungan dengan TNI dan Polri'),
(612, 61227, 'Pengadaan Cinderamata'),
(612, 61228, 'Peningkatan kualitas penyelenggaraan tutorial keagamaan'),
(612, 61229, 'Peningkatan kegiatan keagamaan'),
(612, 61230, 'Pelaksanaan MOKAKU'),
(612, 61231, 'Pelatihan dosen pembimbing akademik'),
(612, 61232, 'Layanan jasa bank mahasiswa baru'),
(612, 61233, 'Pelaksanaan medical check up bagi pimpinan universitas'),
(612, 61234, 'Pemeliharaan peralatan pendidikan dan perkantoran'),
(612, 61235, 'Langganan daya dan jasa'),
(612, 61236, 'Pengadaan barang cetakan'),
(612, 61237, 'Pembinaan kesamaptaan tenaga satuan pengamanan'),
(612, 61238, 'Pembuatan buku kumpulan surat keputusan rektor'),
(612, 61239, 'Pelaksanaan tasyakur bi nimah'),
(612, 61240, 'Pelaksanaan pembekalan perkuliahan awal tahun'),
(612, 61241, 'Pengadaan jas almamater mahasiswa'),
(612, 61242, 'Optimalisasi Ikatan Orangtua Mahasiswa (IKOM)'),
(612, 61243, 'Pelaksanaan kegiatan olah raga rutin pegawai'),
(612, 61244, 'Pemeliharaan kendaraan dinas'),
(612, 61245, 'Operasional kendaraan dinas dan operasional'),
(612, 61246, 'Pengadaan mebeulair'),
(612, 61247, 'Peningkatan program MWA'),
(612, 61248, 'Pencetakan agenda dan kalender'),
(612, 61249, 'Pelaksanaan perkuliahan'),
(612, 61250, 'Penyelenggaraan, perlombaan, dan peringatan dalam rangka hari besar nasional'),
(612, 61251, 'Pemeliharaan jaringan listrik dan air'),
(612, 61252, 'Pengadaan jasa Cleaning service'),
(612, 61253, 'Pengadaan peralatan kerumahtanggaan'),
(612, 61254, 'Peningkatan kegiatan tridharma (layanan manajemen universitas)'),
(612, 61255, 'Pengadaan peralatan pendidikan dan perkantoran'),
(612, 61256, 'Pembinaan dan penyelenggaraan NUDC'),
(612, 61257, 'Pemeliharaan sarana dan prasarana lainnya'),
(612, 61258, 'Layanan kerumahtanggaan universitas'),
(612, 61259, 'Pengadaan pakaian seragam/dinas'),
(612, 61260, 'Pembinaan dan penyelenggaraan KDMI'),
(612, 61261, 'Pengolahan air (WTP)'),
(612, 61262, 'Pengadaan kendaraan dinas'),
(612, 61263, 'Penyediaan keperluan operasional dan kerumahtanggaan kantor'),
(612, 61264, 'Pengadaan pakaian dan peralatan penunjang petugas keamanan'),
(612, 61265, 'Peringatan dies natalis'),
(612, 61266, 'Pelaksanaan UTS/UAS'),
(612, 61267, 'Pengamanan sarana dan prasarana kampus'),
(612, 61268, 'Pengadaan peralatan sanitasi dan kebersihan'),
(612, 61269, 'Pembahasan anggaran dan penyusunan Rencana Kerja dan Anggaran (RKA)'),
(612, 61270, 'Pengadaan perangkat keras ICT'),
(612, 61271, 'Peningkatan pengelolaan sarana dan prasarana kampus pusat dan daerah'),
(612, 61272, 'Operasional TC Serang'),
(612, 61273, 'Pengadaan Kalender Universitas'),
(612, 61274, 'Penataan sarana dan prasarana pendukung kampus'),
(612, 61275, 'Pengadaan Cinderamata tingkat Universitas'),
(612, 61276, 'Workshop evaluasi mandiri penilaian maturitas Sistem Pengendalian Intern Pemerintah (SPIP)'),
(612, 61277, 'Pelaksanaaan Temu Civitas Akademika (TCA)'),
(612, 61278, 'Pengadaan Lisensi berbagai Software'),
(612, 61279, 'Pengolahan dan pencetakan ijazah, transkrip nilai, dan SKPI/SKM'),
(612, 61280, 'Pelaksanaan wisuda'),
(612, 61281, 'Pelepasan wisudawan'),
(612, 61282, 'Pengadaan peralatan perparkiran'),
(612, 61283, 'Penyusunan jadwal perkuliahan'),
(612, 61284, 'Penyusunan kalender akademik'),
(612, 61285, 'Penyusunan/pengembangan POB'),
(612, 61286, 'Koordinasi dan monitoring pelaksanaan perkuliahan, praktikum, dan ujian'),
(612, 61287, 'Pengadaan buku teks'),
(612, 61288, 'Survey kepuasan mahasiswa'),
(612, 61289, 'Sertifikasi ISO'),
(612, 61290, 'Penyelenggaraan dan pengelolaan perkuliahan MKDP'),
(612, 61291, 'Penyelenggaraan dan pengelolaan perkuliahan MKU Olahraga'),
(612, 61292, 'Penyelenggaraan dan pengelolaan perkuliahan MKU'),
(612, 61293, 'Penyusunan buku pedoman penyelenggaraan pendidikan, pedoman penulisan karya ilmiah, dan pedoman kemahasiswaan UPI untuk mahasiswa baru'),
(612, 61294, 'Lokakarya/pelatihan peningkatan keterampilan (upgrading) mengelola SIAK bagi operator SIAK'),
(612, 61295, 'Monitoring dan evaluasi implementasi kurikulum UPI'),
(612, 61296, 'Pengembangan petunjuk teknis penyelenggaraan program unggulan di SPs'),
(612, 61297, 'Verifikasi data mahasiswa baru program Diploma 3, Sarjana, Magister, dan Doktor'),
(612, 61298, 'Pencetakan ijazah dan transkrip akademik'),
(613, 6131, 'Pendataan mahasiswa yang teregistrasi'),
(614, 6141, 'Penyusunan dan sosialisasi rencana induk kepegawaian'),
(614, 6142, 'Peningkatan kapasitas akademik pimpinan universitas'),
(614, 6143, 'Penyusunan dan penyempurnaan peraturan pengelolaan pegawai beserta peraturan turunannya'),
(614, 6144, 'Kajian dan analisis peraturan terkait tata kelola UPI'),
(614, 6145, 'Rapat dinas kelembagaan'),
(614, 6146, 'Monitor dan Evaluasi (Monev) RKAT'),
(614, 6147, 'Penyusunan, reviu dan revisi Renstra'),
(614, 6148, 'Penyusunan bahan kajian tentang tata kelola dan perencanaan universitas'),
(614, 6149, 'Validasi implementasi RKAT unit kerja'),
(614, 61410, 'Pendampingan dan pembahasan RKAT unit kerja'),
(614, 61411, 'Reviu ToR dan RAB RKAT Penugasan Unit Kerja'),
(614, 61412, 'Penyusunan RKAT'),
(614, 61413, 'Penyusunan Revisi RKAT'),
(614, 61414, 'Kajian evaluasi SOTK UPI'),
(614, 61415, 'Workshop penyusunan Indikator Kinerja Utama (IKU) universitas dan unit kerja'),
(614, 61416, 'Workshop Penyusunan Program dan Kegiatan BPPTN BH Unit Kerja'),
(614, 61417, 'Rapat rutin/koordinasi/komisi/pokja'),
(614, 61418, 'Sosialisasi dan Implementasi Ketentuan Perundang-undangan'),
(614, 61419, 'Evaluasi fungsi perencanaan dan pengembangan'),
(614, 61420, 'Penyusunan Dokumen Usulan Rencana Program dana APBN'),
(614, 61421, 'Sidang/pleno MWA'),
(614, 61422, 'Penyusunan pedoman implementasi RKAT UPI tahun 2020'),
(614, 61423, 'Kajian kelembagaaan terkait berbagai peraturan perundangan dan kebijakan pemerintah'),
(614, 61424, 'Penyusunan pedoman penyusunan RKAT UPI'),
(614, 61425, 'Sosiaisasi pedoman implementasi RKAT'),
(614, 61426, 'Revisi buku Pedoman Implementasi RKAT'),
(1111, 11111, 'Pelaksanaan seminar proposal'),
(1111, 11112, 'Pelaksanaan ujian komprehensif'),
(1111, 11113, 'Pelaksanaan ujian sidang'),
(1111, 11114, 'Penyelenggaraan perkuliahan semester padat'),
(4210, 42101, 'Pembinaan alumni dan ikatan alumni'),
(5110, 51101, 'Pembayaran Gaji dan tunjangan PNS'),
(5110, 51102, 'Asuransi kesehatan PT dan PTT (BPJS)'),
(5110, 51103, 'Pembayaran gaji dan tunjangan PT dan PTT'),
(5110, 51104, 'Dana kesejahteraan bagi purnabakti PT dan PTT'),
(5110, 51105, 'Pembayaran gaji ke-13 dan/atau ke- 14 PT dan PTT'),
(5110, 51106, 'Pembayaran Insentif Berbasis Kinerja (IBK)'),
(5110, 51107, 'Pembayaran tunjangan tugas tambahan'),
(5110, 51108, 'Pembayaran uang makan PT dan PTT'),
(5110, 51109, 'Asuransi BPJS untuk pegawai non PNS'),
(5110, 511010, 'Pembayaran tunjangan pejabat perbendaharaan dan pengelola keuangan'),
(5110, 511011, 'Pembayaran honorarium pejabat dan panitia pengadaan barang dan jasa'),
(5110, 511012, 'Pembayaran Insentif keagamaan'),
(5110, 511013, 'Lembur pegawai'),
(5110, 511014, 'Bingkisan Hari Raya'),
(5110, 511015, 'Pembayaran honorarium pengelola asrama/dormitory'),
(5110, 511016, 'Pembayaran jasa layanan medis'),
(5110, 511017, 'Pembayaran honorarium pengawas, penyusun soal, dan pemeriksa UTS dan UAS'),
(5110, 511018, 'Pembayaran honorarium dosen luar biasa'),
(5110, 511019, 'Fasilitasi dan honorarium dosen pendidikan Bahasa Korea'),
(5110, 511020, 'Insentif kegiatan khusus'),
(5110, 511021, 'Pembayaran honorarium pengelola IBK'),
(5110, 511022, 'Pembayaran honorarium pengelola akademik (SKM, GKM, Pembina Kemahasiswaan, dan Kepala Lab.)'),
(5110, 511023, 'Pembayaran honorarium pengelola/tim kepegawaian'),
(5210, 52101, 'Pengadaan bandwith internet'),
(5210, 52102, 'Pengadaan Virtual Machine Server'),
(5210, 52103, 'Pengadaan server'),
(5211, 521101, 'Pengembangan laboratorium'),
(5212, 521201, 'Pembangunan gedung perkuliahan'),
(5212, 521202, 'Pengembangan smart classroom untuk meningkatkan kualitas pembelajaran'),
(5213, 52131, 'Operasional dan manajemen asrama'),
(5213, 52132, 'Pembinaan warga asrama'),
(5214, 52141, 'Perancangan gedung fasilitas seni dan budaya');

-- --------------------------------------------------------

--
-- Table structure for table `mak`
--

CREATE TABLE `mak` (
  `kode` int(11) NOT NULL,
  `nama_mak` varchar(255) NOT NULL,
  `program` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mak`
--

INSERT INTO `mak` (`kode`, `nama_mak`, `program`) VALUES
(511001, 'Belanja Gaji Pegawai PNS', 1),
(511002, 'Belanja Pembulatan Gaji PNS', 1),
(511003, 'Belanja Gaji Pegawai Non PNS', 1),
(511004, 'Honorarium Pejabat Perbendaharaan/Pengelola Keuangan/Pelaksana Pengadaan Barang&Jasa', 1),
(511005, 'Honorarium Kegiatan/Kepanitiaan/Tim (OB)', 1),
(511006, 'Honorarium Kegiatan/Kepanitiaan/Tim (OK)', 1),
(511007, 'Honorarium Narasumber/Moderator/Keynote Speaker, Pengajar Diklat, Tutor, Perumus Hasil, dan sejenisnya', 1),
(511008, 'Honorarium Kegiatan Audit Internal', 1),
(511009, 'Honorarium Pendampingan Audit Eksternal', 1),
(511010, 'Honorarium Pengembangan Bahan Ajar/Rencana Pembelajaran Semester', 1),
(511011, 'Honorarium Publikasi Video Pembelajaran', 1),
(511012, 'Honorarium Asesor', 1),
(511013, 'Honorarium Pembimbing Akademik/Tugas Akhir dan Penguji', 1),
(511014, 'Honorarium Pelaksanaan Ujian/Ujian Tulis', 1),
(511015, 'Honorarium Mahasiswa Paruh Waktu', 1),
(511016, 'Honorarium Kegiatan Reviuwer Proposal/Pelaksanaan Penelitian/Pengabdian', 1),
(511017, 'Honorarium Penelitian dan Bantuan Penulisan Proposal Penelitian', 1),
(511018, 'Honorarium Kegiatan KKN dan PKL', 1),
(511019, 'Upah Pekerja Harian Lepas', 1),
(512001, 'Tunjangan Suami/Istri PNS', 1),
(512002, 'Tunjangan Anak PNS', 1),
(512003, 'Tunjangan Suami/Istri Non PNS', 1),
(512004, 'Tunjangan Anak Non PNS', 1),
(512005, 'Tunjangan Jabatan Struktural', 1),
(512006, 'Tunjangan Jabatan Fungsional', 1),
(512007, 'Tunjangan PPh PNS', 1),
(512008, 'Tunjangan PPh Non PNS', 1),
(512009, 'Tunjangan Beras PNS', 1),
(512010, 'Tunjangan Umum PNS', 1),
(512011, 'Tunjangan Profesi Dosen', 1),
(512012, 'Tunjangan Kehormatan Profesor', 1),
(512013, 'Tunjangan Tugas Tambahan', 1),
(512014, 'Insentif Sidang/Uang Saku Rapat', 1),
(512015, 'Insentif Berbasis Kinerja', 1),
(512016, 'Insentif Sopir/Pembantu Sopir', 1),
(512017, 'Insentif Publikasi Karya Ilmiah/Penulisan Buku/Haki', 1),
(512018, 'Insentif Keagamaan', 1),
(512019, 'Insentif Penghargaan Pegawai', 1),
(512020, 'Insentif Kelebihan Mengajar', 1),
(513001, 'Penghargaan Purna Bakti', 1),
(513002, 'Iuran Asuransi Pegawai', 1),
(513003, 'Iuran Dana Pensiun Pegawai', 1),
(514001, 'Biaya Perawatan Kecelakaan Kerja', 1),
(514002, 'Belanja Santunan Pegawai', 1),
(514003, 'Belanja Bingkisan Hari Raya', 1),
(514004, 'Pengembalian Kelebihan Pemotongan Pajak Penghasilan Pegawai', 1),
(515001, 'Belanja Pengembangan Pegawai (Seminar, Pendidikan dan Pelatihan, Sertifikasi, dan Sejenisnya)', 1),
(515002, 'Belanja Bantuan Studi Lanjut/Penyelesaian Studi Pegawai', 1),
(515003, 'Belanja Bantuan Keanggotaan Profesi', 1),
(516001, 'Uang Makan Pegawai PNS', 1),
(516002, 'Uang Makan Pegawai Non PNS', 1),
(517001, 'Uang Lembur Pegawai PNS', 1),
(517002, 'Uang Lembur Pegawai Non PNS', 1),
(518001, 'Insentif Tenaga Kesehatan/Relawan/Petugas Khusus Untuk Penanganan COVID 19', 1),
(521001, 'Belanja Keperluan Perkantoran', 2),
(521002, 'Belanja Pengadaan Bahan Makanan', 2),
(521003, 'Belanja Penambah Daya Tahan Tubuh', 2),
(521004, 'Belanja Pengiriman Surat Dinas', 2),
(521005, 'Belanja Bahan / Bahan Praktikum', 2),
(521006, 'Belanja Barang Persediaan', 2),
(521007, 'Belanja Penelitian', 2),
(521008, 'Belanja Administrasi Bank dan Pajak', 2),
(521009, 'Belanja Barang Operasional Lainnya', 2),
(521010, 'Belanja Operasional Aktivitas/Pembelajaran Daring', 2),
(521011, 'Belanja Pengadaan Sarana/Prasarana Daring', 2),
(521012, 'Belanja Alat dan Bahan Kesehatan', 2),
(522001, 'Belanja Langganan Listrik', 2),
(522002, 'Belanja Langganan Telepon', 2),
(522003, 'Belanja Langganan Air', 2),
(522004, 'Belanja Langganan Internet', 2),
(522005, 'Belanja Langganan Daya dan Jasa Lainnya', 2),
(522006, 'Belanja Jasa Konsultan', 2),
(522007, 'Belanja Sewa', 2),
(522008, 'Belanja Jasa Lainnya', 2),
(523001, 'Belanja Pemeliharaan Gedung dan Bangunan', 2),
(523002, 'Belanja Pemeliharaan Peralatan dan Mesin', 2),
(523003, 'Belanja Pemeliharaan Jalan, Irigasi, dan Jaringan', 2),
(523004, 'Belanja Asuransi', 2),
(523005, 'Belanja Pemeliharaan Lainnya', 2),
(524001, 'Belanja Perjalanan Dinas dalam Kota', 2),
(524002, 'Belanja Perjalanan Dinas Luar Kota', 2),
(524003, 'Belanja Paket Meeting dalam Kota', 2),
(524004, 'Belanja Paket Meeting Luar Kota', 2),
(524005, 'Belanja Perjalanan Dinas Luar Negeri', 2),
(525001, 'Belanja Honorarium Kegiatan Pengadaan Barang Habis Pakai', 2),
(526001, 'Belanja Denda', 2),
(526002, 'Belanja Hadiah', 2),
(526003, 'Belanja Barang Lain-Lain', 2),
(526004, 'Pengembalian SSBP', 2),
(526005, 'Pengembalian SSPB', 2),
(526006, 'Pengembalian Kelebihan Penerimaan Pendapatan Pendidikan', 2),
(526007, 'Belanja Denda Pajak', 2),
(526008, 'Belanja Kompensasi Kerugian Kerjasama', 2),
(527001, 'Belanja Penambah Daya Tahan Tubuh Penanganan COVID-19', 2),
(527002, 'Belanja Bahan Makanan Penanganan COVID-19', 2),
(527003, 'Belanja Obat-Obatan Untuk Penanganan COVID-19', 2),
(527004, 'Belanja Alat dan Bahan Kesehatan Penanganan COVID-19', 2),
(527005, 'Belanja Jasa Penanganan COVID-19', 2),
(527006, 'Belanja Pemulasaran Jenazah Penanganan COVID-19', 2),
(527007, 'Belanja Pemeriksan Medis/Laboratorium Penanganan COVID-19', 2),
(531001, 'Belanja Modal Pengadaan Tanah', 3),
(531002, 'Belanja Modal Pematangan/Penyiapan Tanah', 3),
(531003, 'Belanja Modal Honorarium Pengadaan Tanah', 3),
(531004, 'Belanja Modal Tanah Lainnya', 3),
(532001, 'Belanja Modal Pengadaan Peralatan dan Mesin', 3),
(532002, 'Belanja Modal Penambahan Nilai Peralatan dan Mesin', 3),
(532003, 'Belanja Modal Honorarium Pengadaan Peralatan dan Mesin', 3),
(532004, 'Belanja Modal Peralatan dan Mesin Lainnya', 3),
(533001, 'Belanja Modal Pengadaan Gedung dan Bangunan', 3),
(533002, 'Belanja Modal Penambahan Nilai Gedung dan Bangunan', 3),
(533003, 'Belanja Modal Honorarium Pengadaan Gedung dan Bangunan', 3),
(533004, 'Belanja Modal Perencanaan Gedung dan Bangunan', 3),
(533005, 'Belanja Modal Pengawasan Gedung dan Bangunan', 3),
(533006, 'Belanja Modal Gedung dan Bangunan Lainnya', 3),
(534001, 'Belanja Modal Pengadaan Jalan, Irigasi, dan Jaringan', 3),
(534002, 'Belanja Modal Penambahan Nilai Jalan, Irigasi, dan Jaringan', 3),
(534003, 'Belanja Modal Honorarium Pengadaan Jalan, Irigasi, dan Jaringan', 3),
(534004, 'Belanja Modal Perencanaan Jalan, Irigasi dan Jaringan', 3),
(534005, 'Belanja Modal Pengawasan Jalan, Irigasi dan Jaringan', 3),
(534006, 'Belanja Modal Jalan, Irigasi, dan Jaringan Lainnya', 3),
(535001, 'Belanja Pengadaan Barang Modal Lainnya', 3),
(535002, 'Belanja Modal Penambahan Nilai Barang Modal Lainnya', 3),
(535003, 'Belanja Modal Honorarium Pengadaan Barang Modal Lainnya', 3),
(535004, 'Belanja Modal Lainnya', 3),
(536101, 'Belanja Modal Investasi Jangka Pendek Deposito', 3),
(536102, 'Belanja Modal Investasi Jangka Pendek Surat Berharga Negara', 3),
(536103, 'Belanja Modal Bagian Lancar Investasi Non Permanen', 3),
(536104, 'Belanja Modal Investasi Jangka Pendek Sekolah Laboratorium', 3),
(536199, 'Belanja Modal Investasi Jangka Pendek Lainnya', 3),
(536201, 'Belanja Modal Investasi Surat Berharga', 3),
(536202, 'Belanja Modal Investasi Jangka Panjang Non Permanen Lainnya', 3),
(536203, 'Belanja Modal Investasi Pada Anak Perusahaan', 3),
(536299, 'Belanja Modal Investasi Jangka PanjangPermanen Lainnya', 3),
(541001, 'Belanja Pembayaran Bunga/Bagi Hasil Kewajiban Jangka Pendek', 4),
(541002, 'Belanja Pembayaran Bunga/Bagi Hasil Kewajiban Jangka Panjang', 4),
(551001, 'Belanja Subsidi Sekolah Laboratorium Percontohan', 5),
(561001, 'Hibah Penelitian dan Pengabdian Masyarakat', 6),
(562001, 'Hibah Kepada Masyarakat', 6),
(563001, 'Hibah Akreditasi', 6),
(564001, 'Bantuan Pengelolaan Jurnal', 6),
(564002, 'Bantuan Persiapan Publikasi Jurnal', 6),
(564003, 'Hibah Penulisan Buku', 6),
(571001, 'Beasiswa Mahasiswa', 7),
(571002, 'Bantuan Kegiatan Kemahasiswaan', 7),
(571003, 'Bantuan/Santunan Mahasiswa', 7),
(571004, 'Bantuan Kewirausahaan Mahasiswa', 7),
(571005, 'Bantuan Kesehatan Mahasiswa', 7),
(571006, 'Bantuan Operasional Perkuliahan Daring Untuk Mahasiswa', 7),
(571007, 'Bantuan Biaya Pendidikan UPI', 7),
(572001, 'Penghargaan Prestasi Mahasiswa', 7),
(573001, 'Bantuan Masyarakat', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pagu`
--

CREATE TABLE `pagu` (
  `tahun_pagu` year(4) NOT NULL,
  `besar_pagu` int(11) NOT NULL,
  `pagu_terpakai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pagu`
--

INSERT INTO `pagu` (`tahun_pagu`, `besar_pagu`, `pagu_terpakai`) VALUES
(2021, 200000000, 20075000),
(2022, 1000000000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `id_program` int(11) NOT NULL,
  `nama_program` varchar(255) NOT NULL,
  `tahun_pagu` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`id_program`, `nama_program`, `tahun_pagu`) VALUES
(1, 'Belanja Pegawai', 2021),
(2, 'Belanja Barang', 2021),
(3, 'Belanja Modal', 2021),
(4, 'Belanja Pembayaran Kewajiban', 2021),
(5, 'Belanja Subsidi', 2021),
(6, 'Belanja Hibah', 2021),
(7, 'Belanja Bantuan Dan Penghargaan', 2021);

-- --------------------------------------------------------

--
-- Table structure for table `rkat`
--

CREATE TABLE `rkat` (
  `id` int(11) NOT NULL,
  `kode_iku` int(11) NOT NULL,
  `kode_kegiatan` int(11) NOT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `kode_mak` int(11) NOT NULL,
  `kode_sbu` int(11) NOT NULL,
  `dana_terpakai` int(11) NOT NULL,
  `spj` int(11) NOT NULL,
  `tahun_pagu` year(4) DEFAULT NULL,
  `id_program` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rkat`
--

INSERT INTO `rkat` (`id`, `kode_iku`, `kode_kegiatan`, `deskripsi`, `kode_mak`, `kode_sbu`, `dana_terpakai`, `spj`, `tahun_pagu`, `id_program`) VALUES
(1, 121, 1211, 'Test gofur goblok', 511004, 11, 20000000, 1, 2021, 1),
(7, 621, 1211, 'test', 536299, 11, 50000, 1, 2021, 1),
(8, 5214, 521202, 'test123', 573001, 110211, 25000, 1, 2021, 2);

--
-- Triggers `rkat`
--
DELIMITER $$
CREATE TRIGGER `pagu_bertambah` AFTER UPDATE ON `rkat` FOR EACH ROW BEGIN
 	UPDATE pagu SET
    pagu.pagu_terpakai=pagu.pagu_terpakai+NEW.dana_terpakai
    WHERE tahun_pagu=NEW.tahun_pagu;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `sisa_program` AFTER UPDATE ON `rkat` FOR EACH ROW BEGIN
	UPDATE sub_program SET sisa = sisa - NEW.dana_terpakai
    WHERE id_program = NEW.id_program AND tahun = NEW.tahun_pagu;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sbu`
--

CREATE TABLE `sbu` (
  `kode_sbu` int(11) NOT NULL,
  `uraian` varchar(255) NOT NULL,
  `tarif` int(11) NOT NULL,
  `kode_mak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sbu`
--

INSERT INTO `sbu` (`kode_sbu`, `uraian`, `tarif`, `kode_mak`) VALUES
(11, 'Pengguna Anggaran (PA)', 27280000, 511004),
(12, 'KUASA PENGGUNA ANGGARAN (KPA)', 56330000, 511004),
(13, 'ATASAN LANGSUNG BENDAHARA', 31190000, 511004),
(14, 'BENDAHARA PENERIMA DAN PENGELUARAN', 25590000, 511004),
(15, 'PEJABAT PENANDATANGAN SURAT PERINTAH MEMBAYAR (PPSPM)', 27880000, 511004),
(16, 'PEJABAT PEMBUAT KOMITMEN (PPK)', 54650000, 511004),
(17, 'BENDAHARA PENGELUARAN PEMBANTU (BPP) / PETUGAS PENGELOLA ADMINISTRASI BELANJA PEGAWAI (PPABP)', 24890000, 511004),
(18, 'STAF PENGGUNA ANGGARAN', 15130000, 511004),
(19, 'PENGADMINISTRASI KEUANGAN (YANG MEMBANTU BPP/PPABP)', 18036000, 511004),
(21, 'HONORARIUM KEGIATAN AKREDITASI NASIONAL', 40100000, 511006),
(22, 'HONORARIUM KEGIATAN AKREDITASI INTERNASIONAL', 26600000, 511006),
(23, 'HONORARIUM KEGIATAN ISO', 11500000, 511006),
(24, 'HONORARIUM KEGIATAN PPG', 2330000, 511007),
(25, 'HONORARIUM PIU', 19250000, 511005),
(26, 'HONORARIUM KEGIATAN PENYUSUNAN LAPORAN KINERJA/LAPORAN TAHUNAN/TENGAH\r\nTAHUNAN/LAPORAN KEUANGAN/STANDAR UNIVERSITAS/PENYUSUNAN RKAT/PENYUSUNAN DAN PENETAPAN PAGU/PENYUSUNAN STANDAR BIAYA UMUM (SBU)/PENYUSUNAN PENETAPAN UKT/PENYUSUNAN KURIKULUM/PENYUSUNAN ', 21550000, 511006),
(27, 'HONORARIUM TIM PELAKSANA KEGIATAN', 3750000, 511005),
(28, 'PENGELOLA KERJASAMA', 1000000, 511006),
(29, 'HONORARIUM PANITIA ACARA/KEGIATAN', 5500000, 511006),
(31, 'Uang Lembur Aparatur Sipil Negara (ASN)/PNS/Pegawai Tetap', 75000, 517001),
(32, 'Uang Lembur Pegawai Tidak Tetap', 17000, 517002),
(33, 'Uang Makan Lembur Aparatur Sipil Negara (ASN)/PNS/Pegawai Tetap/ Pegawai Tidak Tetap', 193000, 516001),
(41, 'Rapat di Dalam Kantor (RDK)', 950000, 512014),
(51, 'Honorarium Sidang Tim Penilai Angka Kredit', 300000, 512014),
(52, 'Penilaian Usulan Guru Besar', 4500000, 511006),
(61, 'Rapat Rutin', 300000, 512014),
(62, 'Sidang/Pleno Majelis Wali Amanat', 8100000, 512014),
(71, 'Rapat/Sidang Pleno Senat Akademik. Dewan Guru Besar.\r\ndan Komite Audit', 400000, 512014),
(72, 'Rapat/Sidang Komisi/Raker/Rakor Senat Akademik. Dewan Guru Besar, dan Komite Audit', 250000, 512014),
(73, 'Prosesi Upacara Universitas', 500000, 511006),
(74, 'Staf Sekretariat Rapat/Sidang', 100000, 512014),
(81, 'Berbentuk Box', 65000, 521002),
(82, 'Prasmanan', 105000, 521002),
(83, 'Mengundang Pejabat Tingkat Menteri/Eselon I/Pihak Eksternal/Swasta', 175000, 521002),
(91, 'Pegawai Tidak Tetap', 35000, 516002),
(92, 'Pegawai Tetap', 113000, 516002),
(110, 'HONORARIUM PENGADAAN BARANG DAN JASA', 6680000, 511004),
(111, 'Auditor', 4288000, 511008),
(112, 'Bantuan tenaga ahli auditor SPI', 5210000, 511008),
(113, 'Audit Penjaminan Mutu', 1000000, 511008),
(114, 'Kegiatan Audit Kearsipan', 500000, 511008),
(115, 'Audit Iternal ISO', 500000, 511008),
(121, 'Koordinator', 700000, 511009),
(122, 'Anggota', 500000, 511009),
(131, 'Modul Praktikum', 1000000, 511010),
(132, 'Bahan Ajar sistem pembelajaran online terpadu (SPOT)', 1500000, 511010),
(133, 'Rencana Pembelajaran Semester (RPS)', 500000, 511010),
(134, 'Materi kuliah yang terpublikasi pada website dengan domain internal UPI', 1000000, 511010),
(141, 'Hadir awal waktu', 50000, 512015),
(142, 'Hadir tepat waktu', 35000, 512015),
(151, 'Insentif sopir/pembantu sopir ke luar kota', 1625000, 512016),
(152, 'Biaya Lainnya', 625000, 524002),
(210, 'Layanan Psikotest', 2235000, 511006),
(211, 'KEGIATAN OLAHRAGA', 400000, 511006),
(214, 'Bantuan Akreditasi Nasional', 30000000, 563001),
(223, 'Bantuan Akreditasi Internasional', 100000000, 563001),
(224, 'Pengguna Lulusan/Alumni', 2000000, 511007),
(225, 'Pembimbing Penyiapan Dokumen', 4000000, 511006),
(1011, 'Narasumber/ Pembicara/Pembahas', 5015000, 511007),
(1012, 'Praktisi/Pakar pembicara khusus', 27500000, 511007),
(1013, 'Keynote Speaker', 6400000, 511007),
(1014, 'Praktisi/Pakar pembicara khusus', 15000000, 511007),
(1016, 'Fasilitator', 1850000, 511007),
(1017, 'Panitia Pelaksana Seminar Nasional', 2475000, 511006),
(1021, 'Narasumber /Pembicara /Pembahas', 20873000, 511007),
(1022, 'Keynote Speaker', 29465000, 511007),
(1023, 'Penunjang', 1176000, 511007),
(1024, 'Fasilitator', 2775000, 511007),
(1026, 'Pembaca Doa dan Rohaniawan', 511006, 400000),
(1102, 'PENERIMA HASIL PEKERJAAN', 420000, 511004),
(1523, 'Tol dan parkir wilayah Kota Bandung, Kab. Bandung Barat, dan Kota Cimahi', 50000, 524001),
(2143, 'Pengguna Lulusan/Alumni', 1500000, 511007),
(2144, 'Pembimbing Penyiapan Dokumen', 2500000, 511006),
(10151, 'Sekretaris Sidang/Notulen', 350000, 511006),
(10152, 'Ketua Sidang', 588000, 511007),
(10153, 'Pembawa Acara', 350000, 511006),
(10154, 'Moderator Seminar', 588000, 511007),
(10155, 'Liaision Officer (LO)/Nasional', 200000, 511006),
(10166, 'Uang Pengamanan', 950000, 511006),
(10232, 'Sekretaris Sidang /Notulen', 700000, 511006),
(10233, 'Ketua Sidang', 1176000, 511007),
(10234, 'Pembawa Acara', 729000, 511006),
(10246, 'Reviewer Abstrak', 500000, 511006),
(10251, 'Pelaksana', 6175000, 511006),
(10252, 'Bidang Publikasi Seminar Internasional Proceeding terindek scopus', 29800000, 511006),
(10262, 'Rohaniawan', 1050000, 511006),
(11011, 'HONORARIUM KELOMPOK KERJA PEMILIHAN UNIT KERJA PENGADAAN BARANG (KONSTRUKSI)', 40210000, 533003),
(11012, 'HONORARIUM KELOMPOK KERJA PEMILIHAN UNIT KERJA PENGADAAN BARANG (NON-KONSTRUKSI)', 36380000, 532003),
(11013, 'HONORARIUM KELOMPOK KERJA PEMILIHAN UNIT KERJA PENGADAAN JASA (KONSULTASI DAN JASA LAINNYA)', 30020000, 535003),
(110211, 'PANITIA PEMERIKSA HASIL PEKERJAAN/ PENGADAAN BARANG/ JASA', 23740000, 532003);

-- --------------------------------------------------------

--
-- Table structure for table `sub_program`
--

CREATE TABLE `sub_program` (
  `id` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  `besaran` int(11) NOT NULL,
  `sisa` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `status_update` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_program`
--

INSERT INTO `sub_program` (`id`, `id_program`, `besaran`, `sisa`, `tahun`, `status_update`) VALUES
(10, 1, 600000, 550000, 2021, 1),
(11, 2, 200000, 175000, 2021, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `iku`
--
ALTER TABLE `iku`
  ADD PRIMARY KEY (`kode_iku`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`kode_kegiatan`),
  ADD KEY `kode_iku` (`kode_iku`),
  ADD KEY `kode_iku_2` (`kode_iku`,`kode_kegiatan`,`kegiatan`);

--
-- Indexes for table `mak`
--
ALTER TABLE `mak`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `program` (`program`);

--
-- Indexes for table `pagu`
--
ALTER TABLE `pagu`
  ADD PRIMARY KEY (`tahun_pagu`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`id_program`),
  ADD KEY `tahun_pagu` (`tahun_pagu`);

--
-- Indexes for table `rkat`
--
ALTER TABLE `rkat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_program` (`id_program`),
  ADD KEY `kode_iku` (`kode_iku`),
  ADD KEY `kode_kegiatan` (`kode_kegiatan`),
  ADD KEY `kode_mak` (`kode_mak`),
  ADD KEY `tahun_pagu` (`tahun_pagu`),
  ADD KEY `kode_sbu` (`kode_sbu`);

--
-- Indexes for table `sbu`
--
ALTER TABLE `sbu`
  ADD PRIMARY KEY (`kode_sbu`),
  ADD KEY `kode_sbu` (`kode_sbu`,`uraian`,`tarif`,`kode_mak`);

--
-- Indexes for table `sub_program`
--
ALTER TABLE `sub_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_program` (`id_program`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mak`
--
ALTER TABLE `mak`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=573002;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `id_program` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rkat`
--
ALTER TABLE `rkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_program`
--
ALTER TABLE `sub_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD CONSTRAINT `kegiatan_ibfk_1` FOREIGN KEY (`kode_iku`) REFERENCES `iku` (`kode_iku`);

--
-- Constraints for table `mak`
--
ALTER TABLE `mak`
  ADD CONSTRAINT `mak_ibfk_1` FOREIGN KEY (`program`) REFERENCES `program` (`id_program`);

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`tahun_pagu`) REFERENCES `pagu` (`tahun_pagu`);

--
-- Constraints for table `rkat`
--
ALTER TABLE `rkat`
  ADD CONSTRAINT `rkat_ibfk_1` FOREIGN KEY (`id_program`) REFERENCES `program` (`id_program`),
  ADD CONSTRAINT `rkat_ibfk_2` FOREIGN KEY (`kode_iku`) REFERENCES `iku` (`kode_iku`),
  ADD CONSTRAINT `rkat_ibfk_3` FOREIGN KEY (`kode_kegiatan`) REFERENCES `kegiatan` (`kode_kegiatan`),
  ADD CONSTRAINT `rkat_ibfk_4` FOREIGN KEY (`kode_mak`) REFERENCES `mak` (`kode`),
  ADD CONSTRAINT `rkat_ibfk_6` FOREIGN KEY (`tahun_pagu`) REFERENCES `pagu` (`tahun_pagu`),
  ADD CONSTRAINT `rkat_ibfk_7` FOREIGN KEY (`kode_sbu`) REFERENCES `sbu` (`kode_sbu`);

--
-- Constraints for table `sub_program`
--
ALTER TABLE `sub_program`
  ADD CONSTRAINT `sub_program_ibfk_1` FOREIGN KEY (`id_program`) REFERENCES `program` (`id_program`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
