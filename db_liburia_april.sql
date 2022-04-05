-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 05, 2022 at 03:36 PM
-- Server version: 10.5.12-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u552166918_liburia`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `fullname`, `username`, `email`, `photo`, `password`, `created_at`, `updated_at`) VALUES
(15, 'admin123', 'admin123', 'admin123@gmail.com', '', '$2y$10$jnTQm/7dgXmrroZivZXmY.VzhnpxGc5xBbccvHroU/jL4vuiwOYkC', '2021-11-09 19:19:34', '2021-11-09 19:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `adminss`
--

CREATE TABLE `adminss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ajakteman_rencana_liburan`
--

CREATE TABLE `ajakteman_rencana_liburan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rencana_liburan_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pengirim_ajakan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_penerima_ajakan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_ajakan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ajakteman_rencana_liburan`
--

INSERT INTO `ajakteman_rencana_liburan` (`id`, `rencana_liburan_id`, `body`, `id_pengirim_ajakan`, `id_penerima_ajakan`, `status_ajakan`, `created_at`, `updated_at`) VALUES
(1, '1', 'WAH! Ada ajakan liburan bareng dari dape1234', '13', '14', 'PENDING', '2022-01-16 07:12:23', '2022-01-16 07:12:23'),
(2, '1', 'WAH! Ada ajakan liburan bareng dari dape1234', '13', '12', 'DITERIMA', '2022-01-16 08:29:57', '2022-01-19 09:26:38'),
(3, '2', 'WAH! Ada ajakan liburan bareng dari dape1234', '13', '12', 'DITERIMA', '2022-01-16 23:32:21', '2022-01-19 09:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `photo`, `isi`, `created_at`, `updated_at`) VALUES
(6, 'Pantai Manggar Segarasari, Wisata Bahari Favorit di Balikpapan', '1642963485_manggar.jpg', 'Wisata pantai merupakan salah satu destinasi liburan yang tidak ada matinya, dan masih terus menjadi favorit bagi banyak orang. Salah satu pantai di Balikpapan yang juga amat populer didatangi para wisatawan yaitu Pantai Manggar Segarasari. Wisata bahari ini merupakan wisata andalan Balikpapan yang telah dikelola oleh pemerintah kota. Setiap hari pantai satu ini dipenuhi pengunjung dari warga lokal maupun luar daerah, terlebih di akhir pekan. Manggar Segarasari sejatinya bernama asli Pantai Segarasari, namun masyarakat sekitar sering menyebutnya dengan Pantai Manggar lantaran letaknya yang berada di kawasan Manggar, Balikpapan Timur. Pantai satu ini memiliki luas kurang lebih 13 ribu meter persegi, dengan hamparan air laut yang jernih dan pasir putih kecoklatan yang begitu lembut.  Di pantai Manggar, pengunjung tidak hanya akan disuguhkan keindahan pantai, tapi juga bisa melihat ikon dari kota Balikpapan yaitu berupa patung beruang madu. Tidak jauh dari patung beruang madu tersebut, juga terdapat cagar budaya bunker Jepang. Bunker ini merupakan sarana pertahanan yang berguna untuk berlindung serta memata matai musuh milik tentara Jepang, ketika menduduki kota Balikpapan pada kisaran tahun 1942 hingga 1945.  Bunker Jepang ini telah resmi ditetapkan sebagai cagar budaya oleh pemkot Balikpapan sejak tahun 2010 silam, melalui Surat Keputusan Walikota Balikpapan tentang penetapan cagar budaya sebagai objek bersejarah dan objek wisata milik kota Balikpapan. Hingga saat ini bunker Jepang yang merupakan cagar budaya tersebut, menjadi salah satu daya tarik yang mendongkrak jumlah pengunjung dari waktu ke waktu.  Pantai Manggar Segarasari ini tidak pernah sepi akan pengunjung, bahkan Data Unit Pelaksanaan Teknis Dinas atau UPTD Dinas Pariwisata Pantai Manggar mencatat bahwa jumlah kunjungan rata rata sejumlah 3 hingga 5 ribu orang tiap pekannya. Lokasi pantai satu ini memang memiliki potensi yang ideal sebagai kawasan wisata, karena luas wilayah pantai memiliki kontur lantai yang berpotensi untuk melakukan pengembangan sarana dan prasarana wisata. Karena telah dikelola oleh pemerintah dan telah ditetapkan untuk beroperasi sebagai kawasan wisata, Pantai Manggar Segarasari memiliki fasilitas yang cukup memadai. Saat pertama kali tiba di lokasi, Anda akan langsung berjumpa dengan patung beruang madu yang merupakan ikon kota Balikpapan. Anda bisa menggunakan patung tersebut sebagai latar belakang dalam swafoto, hal ini akan membuktikan Anda telah berkunjung ke kota Balikpapan. Jika Anda datang ke sini saat siang hari dan cuaca sedang cerah, maka lazuardi langit menambah semua pemandangan indah yang ada menjadi lebih sempurna. Sedangkan jika Anda berkunjung di sore hari, maka lembayung senja akan memberikan sebuah pemandangan eksotis dan membangun suasana yang romantis. Sehingga sangat cocok untuk dinikmati bersama dengan orang tersayang.  Di Pantai Manggar Segarasari ini terdapat sejumlah fasilitas yang bisa Anda nikmati, seperti watersport, banana boat, jet ski, serta berbagai alat pelampung yang disewakan untuk anak anak hingga orang dewasa. Ombak pantai yang cukup tenang memang memungkinkan pengunjung untuk berenang, oleh sebab itu banyak persewaan alat pelampung di tepi pantai yang bisa Anda temukan.', '2022-01-23 10:44:45', '2022-01-23 10:44:45'),
(7, 'Bukit Alpha, Bukit Teletubbies di Balikpapan', '1642963565_bukit.jpg', 'Pernah nonton serial anak yang bernama Teletubbies ? Pada serial TV tersebut, teletubbies tinggal di area perbukitan hijau yang nampak indah dan permai. Ternyata untuk bisa menikmati bukit dengan pemandangan yang serupa tak perlu pergi jauh jauh ke luar negeri lagi. Karena cukup dengan mendatangi Bukit Alpha yang terletak di Kelurahan Manggar ini, Anda akan mendapatkan pemandangan perbukitan hijau yang membentang luas.  Bukit yang sempat menjadi tren di tahun 2015 ini, dikenal sebagai salah satu tempat yang memiliki spot foto yang instagramable. Karena di destinasi ini menawarkan pemandangan berupa hamparan perbukitan hijau dengan udara yang sejuk. Bukit yang populer di kalangan anak muda ini, juga menyuguhkan hamparan ilalang hijau yang sangat cocok digunakan sebagai salah satu spot foto kekinian wajar jika wisata ini menjadi salah satu lokasi favorit prewedding. Bukit Alpha berada di Kelurahan Manggar, Kecamatan Balikpapan Timur, Kota Balikpapan, Kalimantan Timur. Lebih tepatnya terletak di dekat Tempat Pembuangan Sampah Akhir Balikpapan. Meski dekat dengan TPA, tetapi ketika berada di destinasi ini tidak tercium aroma tak sedap yang dimunculkan oleh tempat pembuangan sampah tersebut. Namun Anda akan mencium aroma segar dan asri yang disuguhkan pada destinasi wisata ini.  Jalan untuk menuju ke destinasi wisata Balikpapan ini tidak seperti lokasi wisata pada umumnya. Karena jalanannya masih cenderung bergelombang, sehingga terdapat kemungkinan Anda akan sedikit memakan waktu yang cukup lama untuk bisa sampai ke bukit. Apabila Anda berangkat dari pusat kota Balikpapan, maka jarak tempuhnya sekitar 20 kilometer ke lokasi wisata ini.  Namun Anda tak perlu khawatir, sebab semua rasa lelah selama perjalanan tersebut akan terbayar dengan pemandangan nan cantik dari atas Bukit Alpha ini. Bagi Anda yang ingin berkunjung ke Bukit Alpha namun tidak memiliki kendaraan yang mumpuni untuk menaklukan medan jalan tersebut, Anda bisa menyewa mobil yang memiliki kemampuan untuk melewati jalanan tak beraspal. Bahkan Anda juga bisa menggunakan kendaraan umum menuju ke lokasi ini. Sementara pada sore harinya di perbukitan ini akan terdapat pemandangan menjelang matahari terbenam yang indah. Meski tak ada pengelola yang merawat wisata ini, tetapi Anda masih bisa menikmati segala keindahan serta panorama yang disuguhkan tersebut sepuasnya. Asalkan Anda tetap menjaga kebersihan Bukit Alpha ini agar tetap terjaga kelestarian dan kesejukkannya.  Disarankan pula untuk datang ke destinasi disaat musim kemarau, karena jika Anda datang ketika musim hujan dikhawatikan jalanan menuju ke lokasi wisata ini akan berlumpur. Oleh karena itu demi menjaga keselamatan Anda, lebih baik berkunjung disaat musim kemarau saja. Para wisatawan yang datang ke tempat wisata ini mayoritas datang ketika waktu pagi ataupun sore hari, mengingat kedua waktu tersebut sinar matahari yang menyinari bukit ini tidak terlalu terik. Di destinasi wisata ini hanya menghadirkan hiburan berupa wisata alam saja. Meskipun begitu Anda tetap bisa menikmati keindahan bukit ini dengan puas sambil melepaskan kepenatan selama satu minggu beraktivitas. Dulu di tempat ini ramai berbagai penjual yang menawarkan sajian kuliner khas serta camilan untuk para pengunjung, namun kini tak seramai dulu. Tetapi Anda tak perlu khawatir karena masih terdapat beberapa kedai yang buka.  Bagi Anda yang ingin berkunjung ke Bukit Alpha ini diwajibkan untuk membawa bekal untuk berjaga jaga apabila kelaparan. Sementara untuk lahan parkir kendaraan masih belum tersedia, sehingga para pengunjung memarkirkan kendaraan mereka di dekat pemukiman penduduk yang berada di bawah bukit. Untuk jarak dari tempat parkir menuju bukit sangat dekat, yaitu hanya beberapa langkah saja Anda sudah bisa melihat puncaknya yang hijau.  Meski tak memiliki fasilitas yang memadai, tetapi banyak para pengunjung yang datang kesini untuk menikmati serta menghilangkan penat dari hiruk pikuk perkotaan. Bahkan banyak wisatawan yang datang kesini untuk mengabadikan fotonya dengan pemandangan padang rumput yang membentang luas, seolah olah sedang berada di luar negeri. Karena pemandangan yang indah tersebut jarang ditemukan di perkotaan.  Sepanjang mata memandang, Anda akan disuguhkan dengan rerumputan nan hijau dan langit yang biru. Bagi Anda yang bosan memandang bangunan di perkotaan, maka tempat wisata ini sangat membantu untuk menghilangkan penat selama seharian bekerja. Menariknya lagi disini, Anda bisa menjumpai beberapa kambing ataupun sapi yang sedang digembala. Adanya pemandangan tersebut, menjadi suatu daya tarik tersendiri yang dimiliki oleh Bukit Alpha ini.', '2022-01-23 10:46:05', '2022-01-23 10:46:05'),
(8, 'Kebun Raya Balikpapan, Wisata Edukasi Terbaik di Kalimantan', '1642963628_kebun.jpg', 'Berkunjung ke kota Balikpapan mungkin menjemukan, karena kotanya padat dan suhu udara panas. Jejeran kendaraan besar membuat kepala lebih cepat pening, dan stres. Ditambah lagi urusan pekerjaan yang belum selesai, menambah beban isi kepala. Maka dari itu anda butuh rileksasi sebentar, tidak perlu menunggu waktu liburan. Kebun Raya Balikpapan bisa menjadi alternatif, anda bisa mengunjunginya setelah pulang kerja atau aktivitas lain.  Kebun Raya seluas 309 hektar ini diresmikan pada 20 Agustus 2014. Sejak 6 tahun berdiri masih menjadi tempat favorit bagi warga Balikpapan. Dan kini dinobatkan menjadi salah satu Kebun Raya terluas se-Indonesia. Lokasi Kebun Raya masih satu bagian kawasan dengan Hutan Lindung Sungai Wain. Jarak dari kota ke Kebun Raya hanya mencapai 13 kilometer, jadi tidak heran apabila pengunjung ramai tanpa henti.  Bagi anda yang sudah mempunyai anak, atau ada adik yang usia pertumbuhan. Solusi liburan ke Kebun Raya Balikpapan bisa menjadi alternatif. Kebun Raya yang dibagun dengan dana lebih dari 30 milyar ini, dilengkapi dengan berbagai fasilitas. Mulai dari pendopo, restoran, gazebo, taman bermain, dan guest house. Fasilitas-fasilitas tersebut senantiasa disempurnakan, dan dikembangkan. Mengingat trafik pengunjung yang naik setiap harinya, apalagi musim liburan.  Terdapat rumah singgah serta rumah adat khas Dayak, untuk wisata edukasi wisatawan. Anda dan keluarga dapat mempelajari bagaimana kebudayaan Kalimantan. Terkadang dijadikan tempat pertemuan, oleh perusahaan atau organisasi tertentu. Sebab ruang pendopo cukup memadai, untuk menampung sekitar 50 peserta meeting. Selain itu taman bermain biasa dibuat tempat outbond anak-anak sekolah. Pihak pengelola melengkapinya dengan permainan khas anak-anak. Jika berada di kota Balikpapan tidak lupa mampir ke Kebun Raya, jaraknya tidak sampai 1 jam perjalanan. Apalagi untuk anda yang ingin melepas penat sebentar, setelah sibuk dengan padatnya aktivitas. Udara kawasan sejuk dan terasa alami meskipun berada di tengah kota. Pengunjung juga bisa melakukan beragam aktivitas, terutama untuk wisata edukatif. Sambil berlibur juga mengenalkan beragam tumbuhan edemik dari Kalimantan.  Share', '2022-01-23 10:47:08', '2022-01-23 10:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `artikels`
--

CREATE TABLE `artikels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundling_tiket`
--

CREATE TABLE `bundling_tiket` (
  `id` int(255) NOT NULL,
  `tempat_wisata_id` varchar(255) NOT NULL,
  `nama_bundling` varchar(255) NOT NULL,
  `detail_bundling` varchar(2555) NOT NULL,
  `foto_bundling` varchar(255) NOT NULL,
  `harga_bundling` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bundling_tiket`
--

INSERT INTO `bundling_tiket` (`id`, `tempat_wisata_id`, `nama_bundling`, `detail_bundling`, `foto_bundling`, `harga_bundling`, `created_at`, `updated_at`) VALUES
(1, '1', 'Paket Bundling 1', 'Paket Bundling 1 yang sudah termasuk :\n- Tiket Masuk Pantai\n- Tiket Parkir\n- Tiket Toilet\n- ATV\n- Gazebo Kayu\n- Es Kelapa Muda', '[\"http:\\/\\/127.0.0.1:8000\\/storage\\/wisata\\/1642222289_atv.jpg\",\"http:\\/\\/127.0.0.1:8000\\/storage\\/wisata\\/1642222289_eskelapamuda.jpg\",\"http:\\/\\/127.0.0.1:8000\\/storage\\/wisata\\/1642222289_gazebo.JPG\"]', '50000', '2022-01-14 20:51:29', '2022-01-14 20:51:29'),
(2, '1', 'Paket Bundling 2', 'Paket Bundling 2 yang sudah termasuk :\n- Tiket Masuk Pantai 2 Orang\n- Tiket Parkir\n- Tiket Toilet  2 Orang\n- ATV\n- Gazebo Kayu\n- Es Kelapa Muda 2 Orang', '[\"http:\\/\\/127.0.0.1:8000\\/storage\\/wisata\\/1642222541_atv.jpg\",\"http:\\/\\/127.0.0.1:8000\\/storage\\/wisata\\/1642222541_eskelapamuda.jpg\",\"http:\\/\\/127.0.0.1:8000\\/storage\\/wisata\\/1642222541_gazebo.JPG\"]', '80000', '2022-01-14 20:55:41', '2022-01-14 20:55:41'),
(3, '2', 'Paket Bundling 1', 'Paket Bundling 1 yang sudah termasuk :\n- Tiket Masuk \n- Penyeberangan Jembatan \n- Tiket Parkir\n- Gazebo Kayu\n- Minuman Dingin', '[\"http:\\/\\/127.0.0.1:8000\\/storage\\/wisata\\/1642222713_es teh dingin.jpg\",\"http:\\/\\/127.0.0.1:8000\\/storage\\/wisata\\/1642222713_jembatan bengkirai.jpg\"]', '35000', '2022-01-14 20:58:33', '2022-01-14 20:58:33');

-- --------------------------------------------------------

--
-- Table structure for table `destinasi_rencana_liburan`
--

CREATE TABLE `destinasi_rencana_liburan` (
  `id` int(255) NOT NULL,
  `rencana_liburan_id` varchar(255) DEFAULT NULL,
  `tempat_wisata_id` varchar(255) NOT NULL,
  `tanggal_rencana_liburan` varchar(255) NOT NULL,
  `rencana_durasi_liburan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destinasi_rencana_liburan`
--

INSERT INTO `destinasi_rencana_liburan` (`id`, `rencana_liburan_id`, `tempat_wisata_id`, `tanggal_rencana_liburan`, `rencana_durasi_liburan`, `created_at`, `updated_at`) VALUES
(1, '1', '3', '2022-03-01', '3 Hari', '2022-01-16 07:12:08', '2022-01-16 07:12:08'),
(2, '2', '3', '2022-03-01', '3 Hari', '2022-01-16 23:32:29', '2022-01-16 23:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follower`
--

CREATE TABLE `follower` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `user_yg_difollow_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `follower`
--

INSERT INTO `follower` (`id`, `user_id`, `user_yg_difollow_id`, `created_at`, `updated_at`) VALUES
(2, '6', '1', '2022-01-13 00:21:44', '2022-01-13 00:21:44'),
(3, '6', '2', '2022-01-13 00:32:28', '2022-01-13 00:32:28'),
(4, '15', '12', '2022-01-13 06:54:25', '2022-01-13 06:54:25'),
(5, '15', '13', '2022-01-13 06:54:41', '2022-01-13 06:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `following`
--

CREATE TABLE `following` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_following_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foto_review_tempat_wisata`
--

CREATE TABLE `foto_review_tempat_wisata` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `review_tempat_wisata_id` varchar(255) NOT NULL,
  `foto_detail_review` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foto_review_tempat_wisata`
--

INSERT INTO `foto_review_tempat_wisata` (`id`, `user_id`, `review_tempat_wisata_id`, `foto_detail_review`, `created_at`, `updated_at`) VALUES
(1, '13', '6', '[\"http:\\/\\/127.0.0.1:8000\\/storage\\/review\\/1642351913_es teh dingin.jpg\",\"http:\\/\\/127.0.0.1:8000\\/storage\\/review\\/1642351913_eskelapamuda.jpg\"]', '2022-01-16 08:51:53', '2022-01-16 08:51:53'),
(2, '13', '6', '[\"http:\\/\\/127.0.0.1:8000\\/storage\\/review\\/1642352577_es teh dingin.jpg\",\"http:\\/\\/127.0.0.1:8000\\/storage\\/review\\/1642352577_eskelapamuda.jpg\"]', '2022-01-16 09:02:57', '2022-01-16 09:02:57'),
(3, '13', '7', '[\"http:\\/\\/127.0.0.1:8000\\/storage\\/review\\/1642352699_es teh dingin.jpg\",\"http:\\/\\/127.0.0.1:8000\\/storage\\/review\\/1642352699_eskelapamuda.jpg\"]', '2022-01-16 09:04:59', '2022-01-16 09:04:59'),
(4, '13', '8', '[\"http:\\/\\/127.0.0.1:8000\\/storage\\/review\\/1642609990_es teh dingin.jpg\",\"http:\\/\\/127.0.0.1:8000\\/storage\\/review\\/1642609990_eskelapamuda.jpg\"]', '2022-01-19 08:33:10', '2022-01-19 08:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `foto_tempat_wisata`
--

CREATE TABLE `foto_tempat_wisata` (
  `id` int(255) NOT NULL,
  `foto_tempat_wisata` varchar(255) NOT NULL,
  `tempat_wisata_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_11_09_075316_create_pemesanantiketnew_table', 2),
(10, '2021_11_09_083237_create_admins_table', 3),
(12, '2021_11_10_070222_create_artikels_table', 4),
(13, '2021_12_06_191026_create_follows_table', 4),
(15, '2014_10_12_000000_create_users_table', 5),
(16, '2021_11_10_064019_create_tempat_wisatas_table', 6),
(17, '2022_01_15_055637_create_notifications_table', 7),
(21, '2022_01_15_095226_create_ajakteman_rencana_liburan_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0a132cbd-e9f9-4337-895a-3188a91363da', 'App\\Notifications\\AjakanLiburan', 'App\\User', 14, '{\"rencana_liburan_id\":\"1\",\"body\":\"WAH! Ada ajakan liburan bareng dari dape1234\",\"id_pengirim_ajakan\":13,\"id_penerima_ajakan\":\"14\",\"status_ajakan\":\"PENDING\"}', NULL, '2022-01-16 07:12:23', '2022-01-16 07:12:23'),
('1adbf9d5-bb5e-4a6d-8aeb-6e674f26555b', 'App\\Notifications\\AjakanLiburan', 'App\\User', 13, '{\"rencana_liburan_id\":\"9\",\"body\":\"WAH! Ada ajakan liburan bareng dari dape1234\",\"id_pengirim\":13,\"id_penerima\":\"13\",\"status_ajakan\":\"PENDING\"}', NULL, '2022-01-16 02:08:12', '2022-01-16 02:08:12'),
('21696fec-21d9-4654-a169-9f48f855bee6', 'App\\Notifications\\AjakanLiburan', 'App\\User', 15, '{\"rencana_liburan_id\":\"11\",\"body\":\"WAH! Ada ajakan liburan bareng dari dape1234\",\"id_pengirim_ajakan\":13,\"id_penerima_ajakan\":\"15\",\"status_ajakan\":\"PENDING\"}', NULL, '2022-01-16 06:15:50', '2022-01-16 06:15:50'),
('2333706e-a615-4e0f-960f-5f0269ffa174', 'App\\Notifications\\AjakanLiburan', 'App\\User', 12, '{\"rencana_liburan_id\":\"2\",\"body\":\"WAH! Ada ajakan liburan bareng dari dape1234\",\"id_pengirim_ajakan\":13,\"id_penerima_ajakan\":\"12\",\"status_ajakan\":\"PENDING\"}', NULL, '2022-01-16 23:32:23', '2022-01-16 23:32:23'),
('2f42ef64-7d44-4268-b255-0f958aa0e457', 'App\\Notifications\\AjakanLiburan', 'App\\User', 14, '{\"rencana_liburan_id\":\"1\",\"body\":\"WAH! Ada ajakan liburan bareng dari dape1234\",\"id_pengirim_ajakan\":13,\"id_penerima_ajakan\":\"14\",\"status_ajakan\":\"PENDING\"}', NULL, '2022-01-16 06:41:24', '2022-01-16 06:41:24'),
('3ad0ab6f-39e9-4537-9faf-ce1c3869e11a', 'App\\Notifications\\AjakanLiburan', 'App\\User', 14, '{\"rencana_liburan_id\":\"11\",\"body\":\"WAH! Ada ajakan liburan bareng dari dape1234\",\"id_pengirim_ajakan\":13,\"id_penerima_ajakan\":\"14\",\"status_ajakan\":\"PENDING\"}', NULL, '2022-01-16 06:15:47', '2022-01-16 06:15:47'),
('3e00a4c4-6f7b-44bf-afe3-146eb079b3d4', 'App\\Notifications\\AjakanLiburan', 'App\\User', 13, '{\"rencana_liburan_id\":\"10\",\"body\":\"WAH! Ada ajakan liburan bareng dari dape1234\",\"id_pengirim\":13,\"id_penerima\":\"13\",\"status_ajakan\":\"PENDING\"}', NULL, '2022-01-16 02:08:51', '2022-01-16 02:08:51'),
('428cae5c-6ed9-49ab-aa29-c5a9b5575b3b', 'App\\Notifications\\AjakanLiburan', 'App\\User', 15, '{\"rencana_liburan_id\":\"1\",\"body\":\"WAH! Ada ajakan liburan bareng dari dape1234\",\"id_pengirim_ajakan\":13,\"id_penerima_ajakan\":\"15\",\"status_ajakan\":\"PENDING\"}', NULL, '2022-01-16 06:41:19', '2022-01-16 06:41:19'),
('88c2a885-51e3-4d73-92be-e678a9ca7ded', 'App\\Notifications\\AjakanLiburan', 'App\\User', 13, '{\"rencana_liburan_id\":\"9\",\"body\":\"WAH! Ada ajakan liburan bareng dari dape1234\",\"id_pengirim\":13,\"id_penerima\":\"13\",\"status_ajakan\":\"PENDING\"}', NULL, '2022-01-16 02:08:07', '2022-01-16 02:08:07'),
('c34d41b9-a4a3-4d15-814e-42046203776f', 'App\\Notifications\\AjakanLiburan', 'App\\User', 14, '{\"rencana_liburan_id\":\"1\",\"body\":\"WAH! Ada ajakan liburan bareng dari dape1234\",\"id_pengirim_ajakan\":13,\"id_penerima_ajakan\":\"14\",\"status_ajakan\":\"PENDING\"}', NULL, '2022-01-16 07:09:34', '2022-01-16 07:09:34'),
('ca61a1cf-a2a9-42e0-be52-ffe1f28e3ea3', 'App\\Notifications\\AjakanLiburan', 'App\\User', 12, '{\"rencana_liburan_id\":\"1\",\"body\":\"WAH! Ada ajakan liburan bareng dari dape1234\",\"id_pengirim_ajakan\":13,\"id_penerima_ajakan\":\"12\",\"status_ajakan\":\"PENDING\"}', NULL, '2022-01-16 08:29:57', '2022-01-16 08:29:57'),
('cc1e4d43-3d14-44ed-bea8-e09906c72c6c', 'App\\Notifications\\AjakanLiburan', 'App\\User', 13, '{\"rencana_liburan_id\":\"9\",\"body\":\"WAH! Ada ajakan liburan bareng dari dape1234\",\"id_pengirim\":13,\"id_penerima\":\"13\",\"status_ajakan\":\"PENDING\"}', NULL, '2022-01-16 02:08:12', '2022-01-16 02:08:12'),
('df86b3cb-c8c5-4d6a-b1f8-c6ae6b67e5fe', 'App\\Notifications\\AjakanLiburan', 'App\\User', 13, '{\"rencana_liburan_id\":\"2\",\"body\":\"Ajakan liburan anda telah diterima oleh tabuti123\",\"id_pengirim_ajakan\":12,\"id_penerima_ajakan\":\"13\",\"status_ajakan\":\"DITERIMA\"}', NULL, '2022-01-19 09:23:19', '2022-01-19 09:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0695ccc181d76d073b0a925809bd4d7fcfbac2afcaf94ea16a052ab54f25b90566d48c8ccb5814bf', 12, 14, 'nApp', '[]', 0, '2022-01-14 20:37:01', '2022-01-14 20:37:01', '2023-01-15 04:37:01'),
('113409cebd61b25da7991d6ac70e68a88ff41c928031e4f25b09f2cbcad50c4d942678f9463ef8af', 4, 1, 'nApp', '[]', 0, '2021-10-10 08:57:41', '2021-10-10 08:57:41', '2022-10-10 16:57:41'),
('13654f20b98430a7e328be6d6094fe7deee62dd6dfaa7c8ff8ba7f86d9b9aa5f7d9970297a1aae13', 5, 12, 'nApp', '[]', 0, '2022-01-12 22:48:25', '2022-01-12 22:48:25', '2023-01-13 06:48:25'),
('15cae7271ae11cb67db675ba624277a6a44faf78dc01a864c6c329149d9ed781f268442ae0803dc0', 14, 3, 'nApp', '[]', 0, '2021-10-12 10:04:50', '2021-10-12 10:04:50', '2022-10-12 18:04:50'),
('181d46125363a70878e8baed26bf3ef5ff3c2700e0e30974f56ceca9c267bf08a7edb66fe786d3d7', 9, 1, 'nApp', '[]', 0, '2021-10-12 05:54:29', '2021-10-12 05:54:29', '2022-10-12 13:54:29'),
('1c0327705458cfd94f2ecb4840d898629e1808472a9a0aab7fc8530b63962ebbdaaf5f9574070082', 16, 12, 'nApp', '[]', 0, '2021-12-23 07:49:38', '2021-12-23 07:49:38', '2022-12-23 15:49:38'),
('1cc0389cb6e556c569fb30a56a510a45ddd15a2c171c6dcf5670982855f2bea748557d95d9ffc3f4', 10, 12, 'nApp', '[]', 0, '2022-01-13 01:04:58', '2022-01-13 01:04:58', '2023-01-13 09:04:58'),
('2151a71bdd88e4458c175093b6772c0662cbc0ec12c803026ead688eebe5967be0ae4dc89f66d78a', 3, 1, 'nApp', '[]', 0, '2021-10-10 08:54:31', '2021-10-10 08:54:31', '2022-10-10 16:54:31'),
('2e0f886def0af990ec4944fa9fc0215b76ed61e498efc6a2e4a878b56abd81cb857312076bab119e', 12, 14, 'nApp', '[]', 1, '2022-01-13 01:24:18', '2022-01-13 01:24:18', '2023-01-13 09:24:18'),
('2e553086ad01a4ddf1458f0b1367dff4a445de61cb51170dde2d080b4e411db1804df221e9e851b4', 4, 12, 'nApp', '[]', 0, '2022-01-12 22:48:06', '2022-01-12 22:48:06', '2023-01-13 06:48:06'),
('362f9cb578adac31146ee6f0273e8dac6195d635c67b5879d117d349407ee2255367888f3ba63e04', 10, 1, 'nApp', '[]', 0, '2021-10-12 05:56:18', '2021-10-12 05:56:18', '2022-10-12 13:56:18'),
('405ba052104f701929174a52cf227eac695f4b71a6451b1d3d2026e0d11364a07f1d620ca33f6be0', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:47:22', '2021-10-12 09:47:22', '2022-10-12 17:47:22'),
('4149928ba1226c8dcc599e795616ebacf5032c9feda84601087b5fcdd89467b80153d8bce361ce85', 13, 14, 'nApp', '[]', 0, '2022-01-16 01:21:29', '2022-01-16 01:21:29', '2023-01-16 09:21:29'),
('41b2f521eeb3076586f393dfd5d24b5b79be511163064ae53b6a8075d630fbfaa02097150f90533d', 13, 14, 'nApp', '[]', 0, '2022-01-16 05:39:48', '2022-01-16 05:39:48', '2023-01-16 13:39:48'),
('41f493e5a4d0a64efe988ebe15b481cb25462fc280d406fba22ddca3642d5fe8b162c5e183e2c93e', 7, 12, 'nApp', '[]', 0, '2022-01-13 00:41:18', '2022-01-13 00:41:18', '2023-01-13 08:41:18'),
('43b2794f6458e67bcb75ff6f98d44c4c2d40c8e7cd9266c4db4e6559b48663fafd232958eb8cbf06', 12, 3, 'nApp', '[]', 0, '2021-10-12 09:56:55', '2021-10-12 09:56:55', '2022-10-12 17:56:55'),
('46939d4cc61ad560342910af3237a3c59bfbca88d57f8b05eea679293f818e5c106f6b86744ec3f2', 3, 12, 'nApp', '[]', 0, '2022-01-12 22:47:59', '2022-01-12 22:47:59', '2023-01-13 06:47:59'),
('489f7566f0eed2353ed34aa70de45025ad307d89e799572986dda2d9f74ca4cc587b95b26dde3638', 14, 14, 'nApp', '[]', 0, '2022-01-13 06:52:41', '2022-01-13 06:52:41', '2023-01-13 14:52:41'),
('4941c33521b42dc9ac3feaa69cb7e4e2db55255f6940f1802f4b3f9ce3c6af6225edffcf3e07e15e', 19, 12, 'nApp', '[]', 0, '2021-12-23 07:54:15', '2021-12-23 07:54:15', '2022-12-23 15:54:15'),
('4a80bc273930a80d6f69c6ed4fd2ee21ce481870ff76d042b5fc33fec235bbab1b7ca81da61bcbbf', 13, 14, 'nApp', '[]', 0, '2022-01-20 08:35:07', '2022-01-20 08:35:07', '2023-01-20 16:35:07'),
('511d5dc4bb75e2711721fbde86388c2122fcfc0d44c712e0cf0c8c927355e3e5d576baaf629d619d', 13, 14, 'nApp', '[]', 0, '2022-01-16 23:23:00', '2022-01-16 23:23:00', '2023-01-17 07:23:00'),
('56daa0dfd85b9a9c2ff1dbc2829430eb682cd65a9a70ae73f8947b1e7e92e815b4ba93684a81ee85', 13, 14, 'nApp', '[]', 0, '2022-01-19 20:27:09', '2022-01-19 20:27:09', '2023-01-20 04:27:09'),
('5cb4a32626753304369e64d673c097a39de83f856b3d3a6610ca2c3446794aa736ca60e158e21a86', 12, 14, 'nApp', '[]', 0, '2022-01-13 06:56:19', '2022-01-13 06:56:19', '2023-01-13 14:56:19'),
('60c3bc30ef305105d6c849d10d728434628165dd73fa47af081f04a0647b28e2a2d876114b44e163', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:35:05', '2021-10-12 09:35:05', '2022-10-12 17:35:05'),
('6281b0c33ebe69be09d7b38486718f59d6f7d1c34bbd5cdf156757d38e324c7e31549fdd8c6435f4', 8, 12, 'nApp', '[]', 1, '2022-01-13 01:00:37', '2022-01-13 01:00:37', '2023-01-13 09:00:37'),
('667a19f13ad5a9a3726e826be2f4bfb2ce2a3ecf5a3b5c0737e14a5c7aeabf5c8b65740b58121862', 13, 14, 'nApp', '[]', 0, '2022-01-20 11:00:59', '2022-01-20 11:00:59', '2023-01-20 19:00:59'),
('6c99254a21a32d675880fa9389756db22566f0722fb233bd9ea254121ed2fc93fa4ab12ddb9621b9', 7, 1, 'nApp', '[]', 0, '2021-10-12 05:43:41', '2021-10-12 05:43:41', '2022-10-12 13:43:41'),
('6de0746005824d6ba68f35ad17e1318720e5627c11a9543c7fb03e9f7b26614909eee2106ed52274', 13, 14, 'nApp', '[]', 0, '2022-01-23 11:15:20', '2022-01-23 11:15:20', '2023-01-23 19:15:20'),
('71927ea77f40ba90700d49d1e38c335818d7772ffffa7fc8dcbb976d148363e2f49d2a21b4893da7', 12, 14, 'nApp', '[]', 1, '2022-01-19 09:16:02', '2022-01-19 09:16:02', '2023-01-19 17:16:02'),
('769dc2f3001103d4cf66136cd266a0d93f7fcd0636a87abf00f7db68fb32ab007290305b1f5a2240', 15, 10, 'nApp', '[]', 0, '2021-12-21 23:02:32', '2021-12-21 23:02:32', '2022-12-22 07:02:32'),
('77a1ee84a151d43529702611e9b56d8b0f736b02412da59434d8efb8554dd1e5d7de40444b22f76a', 11, 12, 'nApp', '[]', 0, '2021-12-27 22:42:33', '2021-12-27 22:42:33', '2022-12-28 06:42:33'),
('81b712353eb9519eb78186cc24e1173cbb02c03a9efca606a103f96223251899b5718daf0b98004f', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:33:46', '2021-10-12 09:33:46', '2022-10-12 17:33:46'),
('83d74f0093e8e77047512476f1512288487b7d843ac92b554ed6f34bb9256940ced2d8ce870f7ce6', 24, 12, 'nApp', '[]', 0, '2021-12-27 22:19:16', '2021-12-27 22:19:16', '2022-12-28 06:19:16'),
('83fa76c10b81b79c9f53bd0350d0b8b0c42304561a3e98a23f6c99aee6e23d9455a179d9baf5042e', 12, 14, 'nApp', '[]', 0, '2022-01-13 01:24:46', '2022-01-13 01:24:46', '2023-01-13 09:24:46'),
('85c0697c734bd9a3d38a4e996fafa58c9d843eaa0a4a8023093a4c077ba2ec26c6789e4ccfca001c', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:37:27', '2021-10-12 09:37:27', '2022-10-12 17:37:27'),
('8e0cd5b0906ecf14383790b167fdba9fbb90032da4615ffae6b98a082d8b83aa6f4b22c5f6a8487f', 17, 12, 'nApp', '[]', 0, '2021-12-23 07:51:01', '2021-12-23 07:51:01', '2022-12-23 15:51:01'),
('8e790d370c710e0262f47717dac9d39a2b4b75d1fe945f97d0d2e93ca46019e2795256f96edee1fe', 14, 3, 'nApp', '[]', 0, '2021-10-12 10:04:35', '2021-10-12 10:04:35', '2022-10-12 18:04:35'),
('8f812ba492b1a2a9869d28a2ca95d7e30cedd879fe25fcb33604992ec3191af73009b7267562d6c2', 13, 14, 'nApp', '[]', 0, '2022-01-19 09:30:08', '2022-01-19 09:30:08', '2023-01-19 17:30:08'),
('90a2cea79c0639e67f315b7203f09de7089ef879c5faa36ead1f64674c43654d2305ce4fc07802eb', 22, 12, 'nApp', '[]', 0, '2021-12-23 08:19:17', '2021-12-23 08:19:17', '2022-12-23 16:19:17'),
('9a6a73c974eeb91c6826e0e7380c33b82454fe930b8e22757e5a9e5acab065db7c9e91470bc14026', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:40:41', '2021-10-12 09:40:41', '2022-10-12 17:40:41'),
('9e40074d75f9e054882e88d01548b921e417e71c7312a8644dcbfacddbab3b470753e315755e15cb', 12, 1, 'nApp', '[]', 0, '2021-10-12 09:43:59', '2021-10-12 09:43:59', '2022-10-12 17:43:59'),
('9e9f74178cdce2d9d6c948eedba92740ffd2658ee9010d00825e561db74161a12167aacc525348e7', 5, 1, 'nApp', '[]', 0, '2021-10-12 05:41:07', '2021-10-12 05:41:07', '2022-10-12 13:41:07'),
('a0ffe3a294f7c8f2c563f4c109b90db7cda78134aa71633f2cf8c9d95ded2705822b21b63cf14589', 6, 12, 'nApp', '[]', 1, '2022-01-12 22:55:40', '2022-01-12 22:55:40', '2023-01-13 06:55:40'),
('a768d6785ea4ce6f024c3731670bb7f58d92275b3038a2af7eaf85295d253d9f95cdaf5d85e37874', 13, 14, 'nApp', '[]', 0, '2022-01-23 11:15:39', '2022-01-23 11:15:39', '2023-01-23 19:15:39'),
('ad4c82e3298c9d96ce7ff56dc4cc8dd40aec2cd16697285df3844a1519cde0ede298443181095385', 15, 14, 'nApp', '[]', 1, '2022-01-13 06:53:37', '2022-01-13 06:53:37', '2023-01-13 14:53:37'),
('b10e4d1b25a1fadb044db042211d645accd3292813eb611e5356b0d8f9b63f8cd274ef468e9c5e0a', 13, 14, 'nApp', '[]', 0, '2022-01-19 08:17:15', '2022-01-19 08:17:15', '2023-01-19 16:17:15'),
('b1e57e81aec81c7a4484f9cd318b8c67bed3f5ead461601cd27931056bf8f0c87dd20be7eb7a57aa', 13, 14, 'nApp', '[]', 0, '2022-01-13 06:51:35', '2022-01-13 06:51:35', '2023-01-13 14:51:35'),
('b3df15e932a232850dcad30af1d706c7a57b31f1e1f592977431a7a6f10af8d0077ecb6d030b496d', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:47:24', '2021-10-12 09:47:24', '2022-10-12 17:47:24'),
('b5eef1be3aecf35a0d9b348649d08f2352b23920ec38ca24b3e33988f4911b40278a4f51cc8eae21', 12, 14, 'nApp', '[]', 0, '2022-01-16 00:54:00', '2022-01-16 00:54:00', '2023-01-16 08:54:00'),
('b9efef1de4b4e72f0f28d05c1e84644c19e505957de212bfc003ffcc0e9ab278b27bbd9e93803a71', 13, 14, 'nApp', '[]', 0, '2022-01-19 05:42:59', '2022-01-19 05:42:59', '2023-01-19 13:42:59'),
('c1685c01dc5639102234917d0be45b692cbe67700a2b55cd6c5119291b155e617a17de1598e09416', 8, 1, 'nApp', '[]', 0, '2021-10-12 05:51:15', '2021-10-12 05:51:15', '2022-10-12 13:51:15'),
('c3c4d31ec4d9b494cdcbfeed970d334239669edfbccf2e756079ad6af9ee28e3a5a2880cf154191a', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:40:58', '2021-10-12 09:40:58', '2022-10-12 17:40:58'),
('c443ca0fd2bea0278682703943ae419af6b0d5714293af00beb3427f6f2e526e481ad22afd41c723', 23, 12, 'nApp', '[]', 0, '2021-12-23 08:27:07', '2021-12-23 08:27:07', '2022-12-23 16:27:07'),
('c54f8e9397950ec0c350456feea4e3063a727085830bcb600ae941507a4c6a2a953c04813c7986be', 20, 12, 'nApp', '[]', 0, '2021-12-23 08:02:59', '2021-12-23 08:02:59', '2022-12-23 16:02:59'),
('c868d658fb0b2b4bd0c17a27dfb40e3c93aff9e514655039f2110730d3cc7e1cc5869a63a6e72e02', 21, 12, 'nApp', '[]', 0, '2021-12-23 08:09:42', '2021-12-23 08:09:42', '2022-12-23 16:09:42'),
('c94ec6d24eb084c0e59c1839190f693b45dc929d2ef8d559ae5993d09f3a43438da68d2fdd5be185', 12, 3, 'nApp', '[]', 0, '2021-10-12 09:56:51', '2021-10-12 09:56:51', '2022-10-12 17:56:51'),
('c9546ce458b9389bc868e5e9dd19f76686cca9c3783d1931d6679f51639a16df26cc9239d089dcb4', 9, 12, 'nApp', '[]', 0, '2022-01-13 01:04:54', '2022-01-13 01:04:54', '2023-01-13 09:04:54'),
('d795b09f2b433813a788a5b8c201f85b5dada189014bfd0b549202f7f5c57b3f1ab04989df8f9d54', 11, 14, 'nApp', '[]', 1, '2022-01-13 01:05:58', '2022-01-13 01:05:58', '2023-01-13 09:05:58'),
('da241aba5b507178239328ee24abc7a6476567e0c90a3f91d8a19026d3e0ac738855c7d6eda5fbc9', 11, 12, 'nApp', '[]', 0, '2021-12-27 22:42:31', '2021-12-27 22:42:31', '2022-12-28 06:42:31'),
('db048f0561f65fb1e7b9776927caf3ffc105a01b8a414f16905a81fc07d3bdbd42f4c6dc80fd82ee', 11, 6, 'nApp', '[]', 0, '2021-12-21 22:40:44', '2021-12-21 22:40:44', '2022-12-22 06:40:44'),
('db76d0b20d6e380c708c4441ff16ac4146a6c9c73603eddca2ebacbb2222e22e2b3f44b1ed73a997', 25, 12, 'nApp', '[]', 0, '2021-12-27 22:39:59', '2021-12-27 22:39:59', '2022-12-28 06:39:59'),
('de3d1e13303d6411cdd2b558fb8c955836585ee7c5e52f14bf27b088fd569de6d5609431bebe045e', 11, 12, 'nApp', '[]', 0, '2021-12-27 22:42:58', '2021-12-27 22:42:58', '2022-12-28 06:42:58'),
('e6eb3828a9bb64395d74967c5d9d800fe2c5822b7115cc0631582f7fb4b376f304e892cbb8a30637', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:42:36', '2021-10-12 09:42:36', '2022-10-12 17:42:36'),
('e9de5653a204d6549f7a2e6bd3c1e6dda0adae5e4e903b2101e1657c0926f4ca97b0e848352b42e8', 2, 12, 'nApp', '[]', 0, '2022-01-06 00:51:33', '2022-01-06 00:51:33', '2023-01-06 08:51:33'),
('ec7d48f933d388d13833016ff09d91b5f99a33a6d565709243a8a5f9d1717748b1322e837255d70d', 31, 12, 'nApp', '[]', 0, '2022-01-05 20:23:16', '2022-01-05 20:23:16', '2023-01-06 04:23:16'),
('f4bfd505299851fe1157d926e1ac22d08f5d67a25871f846b36d840d7357133317cd0fff65b514af', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:35:15', '2021-10-12 09:35:15', '2022-10-12 17:35:15'),
('f8cc6eb82248ad448c225d1a7a6932e8417f3300261e1b489a05bcab2d4fc2b0a0a8942ad12e1e3d', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:38:49', '2021-10-12 09:38:49', '2022-10-12 17:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'lF5v25JA9LMeKxGnSJ6Otg4uYlVJjzwrUzZtSAzv', NULL, 'http://localhost', 1, 0, 0, '2021-10-10 08:53:47', '2021-10-10 08:53:47'),
(2, NULL, 'Laravel Password Grant Client', 'WkApEzDhRbDg4GEKWj3XeoyiR1iZM4FFjEbiolGM', 'users', 'http://localhost', 0, 1, 0, '2021-10-10 08:53:47', '2021-10-10 08:53:47'),
(3, NULL, 'Laravel Personal Access Client', '7WapTmEzhkJBVS4rhP83I9YGQ0GIuRtverLR6yHc', NULL, 'http://localhost', 1, 0, 0, '2021-10-12 09:56:18', '2021-10-12 09:56:18'),
(4, NULL, 'Laravel Password Grant Client', 'BBurq7dpkIFjKUAOwOzEKMhcvfRdVUOcZOB0czze', 'users', 'http://localhost', 0, 1, 0, '2021-10-12 09:56:19', '2021-10-12 09:56:19'),
(5, 1, '1', 'JcfEXD3lcZVExoX8GRT2xJbJ4Graydr9maF4T8MK', NULL, 'http://127.0.0.1:8000/auth/callback', 0, 0, 0, '2021-11-09 19:11:05', '2021-11-09 19:11:05'),
(6, NULL, 'Laravel Personal Access Client', 'PD5HDdbx3cMA8HZIIVB5X6GxgpPCZLXFdozezA3b', NULL, 'http://localhost', 1, 0, 0, '2021-12-21 21:53:01', '2021-12-21 21:53:01'),
(7, NULL, 'Laravel Password Grant Client', 'CVyB42Y2AxassmXYRR7SIXVYbKR0Lj7lnYa2IGv1', 'users', 'http://localhost', 0, 1, 0, '2021-12-21 21:53:01', '2021-12-21 21:53:01'),
(8, NULL, 'Laravel Personal Access Client', 'qDjeojLnr1p6YbKvQCs7T4BCmE99GP6nYMDNlOOO', NULL, 'http://localhost', 1, 0, 0, '2021-12-21 22:47:42', '2021-12-21 22:47:42'),
(9, NULL, 'Laravel Password Grant Client', '1bBCEA2IR6O49tscoq9meeCZDTH2mhzfEVVmXuLn', 'users', 'http://localhost', 0, 1, 0, '2021-12-21 22:47:42', '2021-12-21 22:47:42'),
(10, NULL, 'Laravel Personal Access Client', 'FBCJGzeePChdLT9z3NzIN3sV05IhNdZggvKUdfjW', NULL, 'http://localhost', 1, 0, 0, '2021-12-21 22:47:52', '2021-12-21 22:47:52'),
(11, NULL, 'Laravel Password Grant Client', 'BTbJiw2RicOLh4CGawFrQDSP4xxkqmxnPnwKyxcS', 'users', 'http://localhost', 0, 1, 0, '2021-12-21 22:47:52', '2021-12-21 22:47:52'),
(12, NULL, 'Laravel Personal Access Client', 'jgfEvKD4PcrSSsIWg3ylztWwupqbjaTZqyK9UaM5', NULL, 'http://localhost', 1, 0, 0, '2021-12-22 20:08:58', '2021-12-22 20:08:58'),
(13, NULL, 'Laravel Password Grant Client', 'lOqoPjSEQvLYyQSAe3L8oOysKtxD4R7tkPoPxuHs', 'users', 'http://localhost', 0, 1, 0, '2021-12-22 20:08:58', '2021-12-22 20:08:58'),
(14, NULL, 'Laravel Personal Access Client', 'DtAqQMamMXQp7OlWELxysjW5YiWFMAZXWSc5u6s2', NULL, 'http://localhost', 1, 0, 0, '2022-01-13 01:05:55', '2022-01-13 01:05:55'),
(15, NULL, 'Laravel Password Grant Client', 'UzM467Lce9ryMj3q09lT01MmNPzYLa8SFst2M7XF', 'users', 'http://localhost', 0, 1, 0, '2022-01-13 01:05:55', '2022-01-13 01:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-10-10 08:53:47', '2021-10-10 08:53:47'),
(2, 3, '2021-10-12 09:56:19', '2021-10-12 09:56:19'),
(3, 6, '2021-12-21 21:53:01', '2021-12-21 21:53:01'),
(4, 8, '2021-12-21 22:47:42', '2021-12-21 22:47:42'),
(5, 10, '2021-12-21 22:47:52', '2021-12-21 22:47:52'),
(6, 12, '2021-12-22 20:08:58', '2021-12-22 20:08:58'),
(7, 14, '2022-01-13 01:05:55', '2022-01-13 01:05:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rencana_liburan`
--

CREATE TABLE `rencana_liburan` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `nama_rencana` varchar(1000) NOT NULL,
  `deskripsi_rencana` varchar(1000) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rencana_liburan`
--

INSERT INTO `rencana_liburan` (`id`, `user_id`, `nama_rencana`, `deskripsi_rencana`, `created_at`, `updated_at`) VALUES
(1, '13', 'Jalan-jalan sore di Pulau Kemala', 'Mau jalan bareng teman-teman di Pulau Kemala saat Sabtu Petang. Sambil menikmati streetfood dan indahnya kawasan Pulau Kumala dikala petang.', '2022-01-16 07:12:06', '2022-01-16 07:12:06'),
(2, '13', 'asdfasdfasdfJalan-jalan sore di Pulau Kemala', 'asdfasdfMau jalan bareng teman-teman di Pulau Kemala saat Sabtu Petang. Sambil menikmati streetfood dan indahnya kawasan Pulau Kumala dikala petang.', '2022-01-16 23:31:34', '2022-01-16 23:31:34');

-- --------------------------------------------------------

--
-- Table structure for table `review_tempat_wisata`
--

CREATE TABLE `review_tempat_wisata` (
  `id` int(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `tempat_wisata_id` varchar(255) NOT NULL,
  `review` varchar(255) NOT NULL,
  `rating` int(5) NOT NULL,
  `verify_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_tempat_wisata`
--

INSERT INTO `review_tempat_wisata` (`id`, `user_id`, `tempat_wisata_id`, `review`, `rating`, `verify_status`, `created_at`, `updated_at`) VALUES
(1, '2', '', 'seruuuu bangetttt anjim', 5, '', '2022-01-06 02:33:59', '2022-01-06 02:33:59'),
(2, '2', '', 'seruuuu bangetttt anjim', 5, '', '2022-01-06 02:34:00', '2022-01-06 02:34:00'),
(3, '2', '', 'seruuuu bangetttt anjim', 5, '', '2022-01-06 02:34:12', '2022-01-06 02:34:12'),
(4, '2', '', 'seruuuu bangetttt anjim', 5, '', '2022-01-06 02:34:14', '2022-01-06 02:34:14'),
(5, '2', '', 'seruuuu bangetttt anjim', 5, '', '2022-01-06 02:34:23', '2022-01-06 02:34:23'),
(6, '2', '1', 'Pantainya bagus, pasirnya bersih, toilet airnya bersih. Fasilitas juga lengkap, ada mushola, kantin, dan gazebo yang terdapat colokan listrik, sangat berguna untuk mengcharger gadget', 5, 'TELAH TERVERIFIKASI OLEH ADMIN', '2022-01-16 08:48:50', '2022-01-23 11:09:59'),
(7, '13', '6', 'Tempatnya mantapppp!', 5, '', '2022-01-16 08:57:53', '2022-01-16 08:57:53'),
(8, '13', '6', 'Tempatnya mantapppp!', 5, 'TELAH TERVERIFIKASI OLEH ADMIN', '2022-01-19 08:31:45', '2022-01-23 11:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `tempat_wisata`
--

CREATE TABLE `tempat_wisata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fasilitas_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tempat_wisata`
--

INSERT INTO `tempat_wisata` (`id`, `nama_wisata`, `alamat_wisata`, `foto`, `fasilitas_wisata`, `harga_wisata`, `created_at`, `updated_at`) VALUES
(1, 'Pantai Manggar Segarasari', 'Jl. Mulawarman Kelurahan Manggar Balikpapan Selatan', '1641462490_pantaimanggar.jpg', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla, Arena bermain, ATV, Banana Boat', '10000', '2022-01-06 00:42:30', '2022-01-06 01:48:10'),
(2, 'Wisata Bukit Bengkirai', 'Jl Soekarno Hatta Km.45 Samboja', '1641462636_bukitbengkirai.jpg', 'Gazebo, Toilet Umum', '15000', '2022-01-06 01:50:36', '2022-01-06 01:50:36'),
(3, 'Kebun Raya Balikpapan', 'Jl Sei Wain KM.15 Balikpapan Utara', '1641462693_kebunrayabalikpapan.jpg', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla, Teater', '15000', '2022-01-06 01:51:33', '2022-01-06 01:51:33'),
(4, 'Pulau Kumala', 'Jalan K.H. Ahmad Muksin, Tenggarong, Timbau, Kec. Tenggarong, Kabupaten Kutai Kartanegara, Kalimantan Timur 75511', '1641462760_Landmark-pulau-Kumala.jpg', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla, Arena bermain, ATV', '25000', '2022-01-06 01:52:40', '2022-01-06 01:52:40'),
(5, 'Mahakam Lampion Garden', 'Jl Slamet Riyadi Samarinda Ulu', '1641462831_taman-lampion-mahakam-dengan-lampion-bentuk-ikan-640x360.jpg', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla, Arena bermain, ATV', '5000', '2022-01-06 01:53:51', '2022-01-06 01:53:51'),
(6, 'Taman Ladang Budaya Tenggarong', 'Jln. Bachrin, Jl. H.Djafar Seman, Mangkurawang, Kec. Tenggarong, Kabupaten Kutai Kartanegara, Kalimantan Timur 75513', '1641463006_Ladaya_Tenggarong_160404001.jfif', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla, Arena bermain, ATV, Banana Boat', '22000', '2022-01-06 01:56:46', '2022-01-06 01:56:46'),
(7, 'Pantai Tanah Merah Tanjung Harapan', 'Jl. Samboja - Muara Jawa, Handil, Tanjung Harapan, Semboja, Tj. Harapan, Kec. Semboja, Kartanegara, Kalimantan Timur 75276', '1641463265_Pantai_Tanah_Merah_Samboja_3.jpg', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla, Arena bermain, ATV, Banana Boat', '15000', '2022-01-06 02:01:05', '2022-01-06 02:01:05'),
(8, 'Puncak Samarinda', 'Jl. Berambai, Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75124', '1641463345_bangkitkan-ekonomi-ayo-kunjungi-destinasi-wisata.jpg', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla', '5000', '2022-01-06 02:02:25', '2022-01-06 02:02:25'),
(9, 'Mangrove Center Balikpapan', 'Gunung Samarinda, Balikpapan Utara, Gn. Samarinda, Kec. Balikpapan Utara, Kota Balikpapan, Kalimantan Timur 76114', '1641463443_mangrove7-5ae12ab2bde5751a526e8033.jpg', 'Toilet Umum, Musholla, Perahu Kecil', '5000', '2022-01-06 02:04:03', '2022-01-06 02:04:03'),
(10, 'Bukit Kebo Balikpapan', 'Jl Soekarno Hatta KM 8 Karang Joang', '1641463524_whatsapp-image-2021-08-09-at-16.51.08.jpeg', 'Toilet Umum, Musholla, Kantin', '5000', '2022-01-06 02:05:24', '2022-01-06 02:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tempat_wisata_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bundling_tiket_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_tempat_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_pesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `tempat_wisata_id`, `bundling_tiket_id`, `nama_tempat_wisata`, `tanggal_pesan`, `user_id`, `username_pemesan`, `phone_pemesan`, `jumlah_pesan`, `total_harga`, `bukti`, `verify_status`, `created_at`, `updated_at`) VALUES
(1, '', NULL, '', '2021-11-04 15:19:14', '2', '', '', '1', 'Rp. 120.000', NULL, 'LUNAS', NULL, NULL),
(2, '', NULL, '', '2021-11-04 15:19:14', '2', '', '', '1', 'Rp. 59.000', NULL, 'LUNAS', NULL, '2022-01-06 04:15:44'),
(8, '1', NULL, 'Pantai Manggar Segarasari', '24-12-2021', '11', 'nabil', '082255443380', '2', '50000', NULL, 'DITOLAK', '2021-12-28 07:08:31', '2022-01-06 04:20:17'),
(9, '1', NULL, 'Pantai Manggar Segarasari', '24-12-2021', '31', 'nabilbaru123', '08001122556', '2', '50000', NULL, 'DITOLAK', '2022-01-06 04:24:55', '2022-01-06 04:26:34'),
(10, '1', NULL, 'Pantai Manggar Segarasari', '24-12-2021', '31', 'nabilbaru123', '08001122556', '2', '50000', NULL, 'LUNAS', '2022-01-06 04:26:40', '2022-01-06 04:26:44'),
(11, '1', NULL, 'Pantai Manggar Segarasari', '24-12-2021', '31', 'nabilbaru123', '08001122556', '2', '50000', NULL, 'LUNAS', '2022-01-06 04:27:00', '2022-01-06 04:27:10'),
(12, '1', NULL, 'Pantai Manggar Segarasari', '24-12-2021', '31', 'nabilbaru123', '08001122556', '2', '50000', NULL, 'DITOLAK', '2022-01-06 04:27:01', '2022-01-06 04:27:07'),
(13, '1', NULL, 'Pantai Manggar Segarasari', '24-12-2021', '2', 'nabilbaru123', '08001122556', '2', '46846', '1641460965_hello.jpg', 'LUNAS', '2022-01-06 08:52:01', '2022-01-10 06:36:06'),
(14, '1', NULL, 'Pantai Manggar Segarasari', '24-12-2021', '2', 'nabilbaru123', '08001122556', '2', '20000', NULL, 'BELUM DIBAYAR', '2022-01-19 17:34:08', '2022-01-19 17:34:08'),
(15, '1', NULL, 'Pantai Manggar Segarasari', '24-12-2021', '2', 'nabilbaru123', '08001122556', '2', '20000', NULL, 'BELUM DIBAYAR', '2022-01-19 17:34:36', '2022-01-19 17:34:36'),
(16, '1', '1', 'Pantai Manggar Segarasari', '24-12-2021', '2', 'nabilbaru123', '08001122556', '2', '100000', 'http://127.0.0.1:8000/storage/bukti/1642613918_hello.jpg', 'BELUM DIBAYAR', '2022-01-19 17:35:07', '2022-01-19 17:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `phone`, `photo`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Nabil Akbar Pratama Pratama', 'nblakbar10', 'nabilakbarpratama@gmail.com', '+6282255443380', '1641457433_pantaimanggar.jpg', 'asasasas', '2022-01-06 00:22:40', '2022-01-06 00:23:53'),
(2, 'nabilbaru123', 'nabilbaru123', 'nabilpakefoto@gmail.com', '08001122556', '1641459093_komak.jpg', 'nabilbaru123', '2022-01-06 00:51:33', '2022-01-06 00:51:33'),
(6, 'palkon', 'palkon', 'nabilpakefoto@gmail.com', '08001122556', '1642056940_komak.jpg', 'palkon', '2022-01-12 22:55:40', '2022-01-12 22:55:40'),
(7, 'ayylmao', 'ayylmao', 'nabilpakefoto@gmail.com', '08001122556', '1642063278_komak.jpg', 'ayylmao', '2022-01-13 00:41:18', '2022-01-13 00:41:18'),
(8, 'ayylmao1234', 'ayylmao1234', 'nabilpakefoto@gmail.com', '08001122556', '1642064437_komak.jpg', '12345678', '2022-01-13 01:00:37', '2022-01-13 01:00:37'),
(12, 'tabuti123', 'tabuti123', 'nabilpakefoto@gmail.com', '08001122556', NULL, '$2y$10$I3b9ngeQwU8wdebOPJ/9SO/Q3lEfcDLl292XwnSryiX4ivUmqKJNu', '2022-01-13 01:24:18', '2022-01-13 01:24:18'),
(13, 'dape1234', 'editygdelete', 'editygdelete@gmail.com', 'editygdelete', 'http://127.0.0.1:8000/storage/user/1642609729_271994220_957657901816382_2131400758336790120_n.jpg', '$2y$10$M03Y.YYqMlbUm9vuv96/7eOCt3tiBbAd92ZO38ebguVD/Szu2qClu', '2022-01-13 06:51:33', '2022-01-19 08:28:49'),
(14, 'maklogaming', 'maklogaming', 'nabilpakefoto@gmail.com', '08001122556', NULL, '$2y$10$Qhej1O/dEWPOmJH6KAhBPOmW6L4zykOltasfgI0tKgj4tF6vtEcD6', '2022-01-13 06:52:41', '2022-01-13 06:52:41'),
(15, 'adminpk', 'adminpk', 'nabilpakefoto@gmail.com', '08001122556', NULL, '$2y$10$Ja1Ue0d6t9Q65mYGfvjTNOoOwcW3Jz2vFJJY.qIBSXDMyz03fBEXi', '2022-01-13 06:53:37', '2022-01-13 06:53:37'),
(16, 'nandar', 'bruh', 'sadasda', '12345688', NULL, 'test', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `adminss`
--
ALTER TABLE `adminss`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminss_username_unique` (`username`);

--
-- Indexes for table `ajakteman_rencana_liburan`
--
ALTER TABLE `ajakteman_rencana_liburan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikels`
--
ALTER TABLE `artikels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bundling_tiket`
--
ALTER TABLE `bundling_tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinasi_rencana_liburan`
--
ALTER TABLE `destinasi_rencana_liburan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follower`
--
ALTER TABLE `follower`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `following`
--
ALTER TABLE `following`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foto_review_tempat_wisata`
--
ALTER TABLE `foto_review_tempat_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foto_tempat_wisata`
--
ALTER TABLE `foto_tempat_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `rencana_liburan`
--
ALTER TABLE `rencana_liburan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_tempat_wisata`
--
ALTER TABLE `review_tempat_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `adminss`
--
ALTER TABLE `adminss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ajakteman_rencana_liburan`
--
ALTER TABLE `ajakteman_rencana_liburan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `artikels`
--
ALTER TABLE `artikels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundling_tiket`
--
ALTER TABLE `bundling_tiket`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `destinasi_rencana_liburan`
--
ALTER TABLE `destinasi_rencana_liburan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `follower`
--
ALTER TABLE `follower`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `following`
--
ALTER TABLE `following`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `foto_review_tempat_wisata`
--
ALTER TABLE `foto_review_tempat_wisata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `foto_tempat_wisata`
--
ALTER TABLE `foto_tempat_wisata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rencana_liburan`
--
ALTER TABLE `rencana_liburan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `review_tempat_wisata`
--
ALTER TABLE `review_tempat_wisata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
