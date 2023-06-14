-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 04:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `senja2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(3, 'Programming', 'programming', '2023-06-03 06:23:17', '2023-06-03 06:23:17'),
(4, 'Teknologi', 'teknologi', '2023-06-03 06:32:57', '2023-06-03 06:34:17'),
(5, 'Olahraga', 'olahraga', '2023-06-03 13:43:37', '2023-06-03 13:43:37'),
(6, 'Alam', 'alam', '2023-06-05 00:25:06', '2023-06-05 00:25:06'),
(7, 'Kesehatan', 'kesehatan', '2023-06-05 00:27:44', '2023-06-05 00:27:44'),
(8, 'Gaya Hidup', 'gaya-hidup', '2023-06-05 00:29:39', '2023-06-05 00:29:39'),
(9, 'Musik', 'musik', '2023-06-05 00:41:56', '2023-06-05 00:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_07_001528_create_posts_table', 1),
(6, '2023_02_07_001721_create_categories_table', 1),
(7, '2023_02_16_020545_add_is_admin_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(6, 5, 1, 'Argentina Keok Dihajar Indonesia', 'argentina-keok-dihajar-indonesia', 'post-images/bRKzVq8Jn1bkhmuOmZJJHV3zBC8HZQ3oR6rZas8o.jpg', 'Pekan lalu...', '<div>Pekan lalu, dunia sepak bola disuguhkan dengan pertandingan yang penuh kejutan. Timnas bola Indonesia berhasil mencatatkan kemenangan gemilang dengan skor mencolok 8-2 melawan tim nasional Argentina. Kemenangan ini tidak hanya menghebohkan komunitas sepak bola global, tetapi juga mengangkat nama Indonesia sebagai salah satu kekuatan baru dalam dunia sepak bola internasional.<br><br></div><div>Pertandingan tersebut berlangsung di Stadion Utama Gelora Bung Karno yang dipenuhi oleh ribuan suporter yang mendukung kedua tim. Sejak menit awal, timnas Indonesia menampilkan permainan yang agresif dan penuh semangat. Meskipun Argentina memiliki skuad bintang yang dipimpin oleh Lionel Messi, timnas Indonesia berhasil mengendalikan permainan dengan strategi yang brilian.<br><br></div><div>Babak pertama dimulai dengan serangan cepat dari kedua tim. Namun, pada menit ke-10, striker muda Indonesia, Budi Santoso, berhasil mencetak gol pertama setelah memanfaatkan kesalahan pertahanan Argentina. Gol ini memberikan semangat lebih kepada para pemain Indonesia, dan mereka terus melancarkan serangan demi serangan.<br><br></div><div>Tidak butuh waktu lama bagi Indonesia untuk mencetak gol kedua. Pada menit ke-20, gelandang andalan timnas, Andi Pratama, melakukan tendangan keras dari luar kotak penalti yang tak mampu diantisipasi oleh kiper Argentina. Skor 2-0 ini semakin menegaskan dominasi Indonesia dalam pertandingan tersebut.<br><br></div><div>Argentina mencoba membalas dengan serangan-serangan berbahaya, tetapi pertahanan yang solid dari timnas Indonesia berhasil mengatasi setiap ancaman. Pada akhir babak pertama, Indonesia mencetak tiga gol tambahan melalui Sundoro, Suryono, dan Wijaya, membuat skor menjadi 5-0.<br><br></div><div>Di babak kedua, Argentina mencoba bangkit dari ketertinggalan mereka. Lionel Messi memimpin serangan-serangan berbahaya dan pada menit ke-55, berhasil mencetak gol pertama bagi Argentina. Namun, timnas Indonesia tidak terpengaruh oleh gol tersebut dan terus menyerang dengan gencar.<br><br></div><div>Striker Indonesia, Santoso, menjadi bintang pertandingan dengan mencetak hattrick. Gol-golnya yang spektakuler pada menit ke-65, 72, dan 80 semakin memperbesar keunggulan Indonesia. Argentina hanya mampu mencetak satu gol tambahan melalui Paulo Dybala, membuat skor akhir pertandingan 8-2 untuk kemenangan timnas Indonesia.<br><br></div><div>Kemenangan ini merupakan prestasi luar biasa bagi sepak bola Indonesia. Meskipun secara tradisi Argentina dianggap sebagai salah satu tim terbaik di dunia, timnas Indonesia telah membuktikan bahwa mereka juga mampu bersaing dengan kekuatan global. Performa gemilang mereka dalam pertandingan ini menunjukkan kemajuan signifikan yang telah dicapai oleh sepak bola Indonesia dalam beberapa tahun terakhir.<br><br></div>', NULL, '2023-06-05 00:09:29', '2023-06-05 00:09:29'),
(7, 3, 1, 'Gaji Programmer Berapa si?', 'gaji-programmer-berapa-si', 'post-images/CYILsS9I2AO3InwFo1wOXxuwKg0UxPC90tl5jPVs.jpg', 'Jakarta -&...', '<div>Jakarta -<br>&nbsp;<br>&nbsp;Direktur Digital Business PT Telkom Indonesia (Persero) Tbk (Telkom) Muhammad Fajrin Rasyid mengatakan, ekonomi digital Indonesia akan tumbuh Rp 600 triliun menjadi Rp 4.500 triliun dalam 10 tahun dari 2020-2030. Hal itu berdasarkan studi yang dilakukan Temasek dan Google.<br>&nbsp;<br>&nbsp;Sayangnya, prospek positif ini tidak didukung oleh sumber daya manusia yang memadai. Fajrin menyebut cukup sulit menemukan programmer di Indonesia. Alhasil sejumlah perusahaan harus merekrut programmer asal Vietnam dan India.<br>&nbsp;<br>&nbsp;Padahal, programmer diperhitungkan sebagai pekerjaan dengan gaji tinggi. Memangnya berapa rata-rata gaji programmer di Indonesia?<br>&nbsp;<br>&nbsp;Mengutip Glassdoor, Selasa (8/11/2022), estimasi gaji rata-rata programmer di Indonesia mencapai Rp 6,3 juta per bulan. Namun, ada juga programmer yang bisa menerima gaji hingga Rp 17 juta per bulan tergantung level dan tunjangan yang didapat.<br><br>Sementara itu, SalaryExplorer mencatat pendapatan rata-rata programmer di Indonesia adalah Rp 12,8 juta per bulan. Gaji terendahnya Rp 5,8 juta, sementara tertingginya adalah Rp 20,3 juta.<br>&nbsp;<br>&nbsp;Lalu, Indeed memperkirakan gaji rata-rata programmer di Indonesia adalah Rp 7,6 juta per bulan. Estimasi ini berdasarkan laporan yang diperbarui 6 September 2022.<br>&nbsp;<br>Berdasarkan laporan Indeed, kota yang memberi gaji tertinggi untuk programmer adalah Batam, yaitu sebesar Rp 9,7 juta per bulan. Yogyakarta di posisi kedua dengan gaji Rp 9,4 juta per bulan.&nbsp;<br><br>Bogor di posisi ketiga dengan gaji Rp 8,9 juta per bulan. Selanjutnya ada Jakarta dengan gaji Rp 8,2 juta per bulan, dan Surabaya dengan gaji Rp 3,4 juta per bulan.<br><br></div>', NULL, '2023-06-05 00:15:42', '2023-06-05 00:15:42'),
(8, 6, 2, 'Surga Tersembunyi di Kaki Semeru: Keindahan Ranu Kumbolo yang Memukau', 'surga-tersembunyi-di-kaki-semeru-keindahan-ranu-kumbolo-yang-memukau', 'post-images/8nuGo8eiXVxtlSYgVZ9zbDklfY1Rfr2GlrSqz9Bk.jpg', 'Gunung Semeru, gunung tertinggi di Pulau Jawa dan dijuluki \"Mahameru\", bukan hanya dikenal karena keindahan puncaknya yang menawan, tetapi juga karena pesonanya yang terpancar dari kawasan sekitarnya....', '<div>Gunung Semeru, gunung tertinggi di Pulau Jawa dan dijuluki \"Mahameru\", bukan hanya dikenal karena keindahan puncaknya yang menawan, tetapi juga karena pesonanya yang terpancar dari kawasan sekitarnya. Salah satu tempat yang menarik minat para pendaki adalah Ranu Kumbolo, sebuah danau indah yang terletak di ketinggian sekitar 2.400 meter di atas permukaan laut. Keindahan alamnya yang memukau dan panorama yang menakjubkan menjadikan Ranu Kumbolo sebagai surganya para pecinta alam.<br><br></div><div>Perjalanan menuju Ranu Kumbolo dimulai dari desa Tumpang, Malang. Pendakian ini membutuhkan fisik yang cukup kuat karena medannya yang terjal dan tantangan yang cukup berat. Namun, setiap usaha dan perjuangan akan terbayar lunas ketika para pendaki tiba di Ranu Kumbolo.<br><br></div><div>Sesampainya di Ranu Kumbolo, pengunjung akan disuguhkan dengan pemandangan yang begitu memukau. Danau yang luas dengan airnya yang jernih, dikelilingi oleh hamparan padang rumput hijau dan pepohonan yang rimbun, menciptakan suasana yang begitu damai dan menenangkan. Di pagi hari, ketika matahari terbit, warna-warni langit yang indah mencerminkan keindahan danau tersebut. Keheningan danau ini juga mengundang para pendaki untuk beristirahat sejenak, menikmati keindahan alam, dan merenung.<br><br></div><div>Selain pemandangan yang menakjubkan, Ranu Kumbolo juga menawarkan berbagai kegiatan menarik. Para pendaki dapat melakukan aktivitas seperti berkemah di tepi danau, memancing ikan, atau berjalan-jalan di sekitar danau untuk menikmati keindahan alam yang mempesona. Air danau yang jernih juga memungkinkan para pendaki untuk berenang atau sekadar merendam kaki mereka setelah perjalanan yang melelahkan.<br><br></div><div>Ranu Kumbolo juga menjadi persinggahan para pendaki yang ingin mencapai puncak Gunung Semeru. Sebagian pendaki memilih untuk menghabiskan malam di sini sebelum melanjutkan perjalanan menuju puncak di pagi hari. Momen ini memberikan pengalaman yang luar biasa, karena di malam hari langit akan terhampar dengan jutaan bintang yang berkilauan. Kejernihan langit malam di ketinggian ini merupakan pemandangan yang jarang terlihat di perkotaan.<br><br></div><div>Penting untuk mencatat bahwa saat mengunjungi Ranu Kumbolo, kita harus menjaga kelestarian alamnya. Para pengunjung diharapkan untuk menjaga kebersihan dan tidak meninggalkan sampah. Area sekitar danau juga dilindungi, jadi pengunjung harus mematuhi peraturan dan tidak merusak flora dan fauna yang ada.<br><br></div>', NULL, '2023-06-05 00:34:24', '2023-06-08 17:54:33'),
(9, 8, 2, 'Arunika : Makna yang Tersembunyi dalam Sebuah Nama', 'arunika-makna-yang-tersembunyi-dalam-sebuah-nama', 'post-images/qdUKJEjwvrENgWYaUnnVYdusGlhUFkodWQ90i2pG.jpg', 'Di dalam s...', '<div>Di dalam setiap kata atau nama, terkadang terdapat arti dan makna yang tersembunyi. Salah satu kata yang memiliki arti mendalam adalah \"Arunika\". Arunika adalah sebuah nama yang berasal dari bahasa Sanskerta, yang dipakai dalam budaya Hindu di India dan beberapa negara Asia lainnya. Meskipun mungkin tidak begitu umum di Indonesia, nama ini memiliki keindahan dan arti yang menarik.<br><br></div><div>Secara harfiah, Arunika dapat diartikan sebagai \"fajar\" atau \"matahari terbit\" dalam bahasa Sanskerta. Dalam budaya Hindu, matahari terbit dianggap sebagai simbol kebangkitan dan harapan baru. Matahari terbit melambangkan awal yang baru, kemajuan, dan cahaya yang menerangi kegelapan. Oleh karena itu, nama Arunika sering dikaitkan dengan makna positif seperti keberanian, semangat, optimisme, dan energi yang mengalir.<br><br></div><div>Selain itu, Arunika juga sering dikaitkan dengan sifat-sifat seperti kecerdasan, keteguhan, dan kekuatan. Nama ini sering diberikan kepada individu yang memiliki kepribadian yang cerdas, penuh semangat, dan berani menghadapi tantangan. Arunika juga mencerminkan keyakinan pada masa depan yang cerah dan kemampuan untuk mencapai tujuan dengan keteguhan dan dedikasi.<br><br></div><div>Dalam beberapa kebudayaan, nama Arunika juga dikaitkan dengan keindahan dan keanggunan. Keterkaitan dengan matahari terbit juga memberikan konotasi kehangatan dan kasih sayang. Nama Arunika sering kali dikaitkan dengan individu yang memiliki aura yang mempesona dan kehadiran yang menarik perhatian.<br><br></div><div>Dalam dunia yang semakin terkoneksi dan multikultural seperti saat ini, nama-nama dengan akar budaya asing semakin populer. Nama Arunika adalah contoh yang menarik, yang mengandung kekayaan makna dan mengundang perenungan mendalam. Memberikan nama Arunika kepada seseorang juga bisa menjadi bentuk penghormatan terhadap budaya dan warisan tradisional yang memegang makna penting.<br><br></div><div>Pentingnya arti nama tidak hanya terletak pada makna harfiahnya, tetapi juga pada kesan dan simbolik yang melekat di dalamnya. Nama Arunika adalah sebuah perpaduan indah antara keindahan, semangat, dan keyakinan pada masa depan yang cerah. Bagi mereka yang diberi nama Arunika, diharapkan bahwa arti mendalam di balik namanya akan membimbing dan menginspirasi mereka dalam perjalanan hidupnya.<br><br></div>', NULL, '2023-06-05 00:38:48', '2023-06-05 00:38:48'),
(10, 9, 2, 'Coldplay Band Legendaris Dunia, Siap Menggebrak Panggung di Indonesia', 'coldplay-band-legendaris-dunia-siap-menggebrak-panggung-di-indonesia', 'post-images/Fwm0XANBdxjOmnRHOomiCVsrOsL6gOBcS0rASFra.jpg', 'Penggemar musik di Indonesia dapat bersiap-siap untuk pengalaman yang luar biasa karena kabar gembira telah datang. Band legendaris asal Inggris, Coldplay, dikabarkan akan menggelar konser di Indonesi...', '<div>Penggemar musik di Indonesia dapat bersiap-siap untuk pengalaman yang luar biasa karena kabar gembira telah datang. Band legendaris asal Inggris, Coldplay, dikabarkan akan menggelar konser di Indonesia dalam waktu dekat. Penampilan spektakuler dan energik mereka di atas panggung telah memenangkan hati jutaan penggemar di seluruh dunia, dan kini saatnya Indonesia merasakan magisnya kehadiran mereka.<br><br>Coldplay terkenal dengan kombinasi unik antara musik indie rock dan elemen pop yang membuat mereka menjadi salah satu band paling ikonik di dunia musik. Kualitas musik mereka yang konsisten dan lagu-lagu penuh makna telah menciptakan ikatan yang kuat antara band dan penggemar mereka di berbagai belahan dunia.<br><br>Setiap konser Coldplay selalu menjadi peristiwa yang dinantikan dengan antusiasme tinggi. Band ini terkenal karena penampilan panggung yang spektakuler dengan tata panggung yang megah, efek visual yang memukau, dan konsep panggung yang kreatif. Kombinasi antara musik yang memikat, lirik yang mendalam, dan kesan visual yang mempesona menjadikan konser Coldplay sebagai pengalaman yang tak terlupakan.<br><br>Kedatangan Coldplay ke Indonesia akan memberikan penggemar setempat kesempatan langka untuk menyaksikan langsung penampilan mereka. Konser ini diharapkan akan mempertemukan ribuan bahkan jutaan penggemar yang telah lama menanti moment ini. Penggemar akan bisa menyanyikan lagu-lagu hit seperti \"Yellow,\" \"Fix You,\" \"Viva La Vida,\" \"Paradise,\" \"The Scientist,\" dan masih banyak lagi, sambil merasakan kehadiran energik dan karisma para anggota band di panggung.<br><br>Selain kehadiran band itu sendiri, konser Coldplay juga akan menyajikan produksi panggung yang menakjubkan. Efek cahaya, permainan video visual, dan interaksi antara band dan penonton akan menciptakan atmosfer yang magis dan mempesona. Penonton akan merasakan getaran musik dan kegembiraan yang tak tertandingi, dan tentunya momen ini akan menjadi kenangan yang tak terlupakan bagi mereka yang hadir.<br><br>Persiapan untuk konser Coldplay yang diadakan di Indonesia pastinya akan melibatkan banyak aspek logistik dan keamanan untuk menjamin kelancaran acara. Tim penyelenggara akan bekerja keras untuk memastikan bahwa konser ini berjalan dengan sukses dan memenuhi harapan penggemar. Lokasi dan tanggal konser ini juga akan menjadi sorotan besar, karena akan menentukan kapasitas penonton dan kenyamanan selama pertunjukan.<br><br>Para penggemar Coldplay di Indonesia, sambutlah dengan antusiasme dan kegembiraan kedatangan band ini ke tanah air. Persiapkan diri untuk malam yang akan diisi dengan musik yang menggugah, emosi yang meluap, dan momen yang mengesankan. Konser Coldplay di Indonesia akan menjadi sebuah peristiwa musik</div>', NULL, '2023-06-05 00:47:18', '2023-06-06 04:26:00'),
(11, 9, 3, 'Mengenang Kisah Cinta Melalui Lagu \'The One That Got Away\' oleh Katy Perry', 'mengenang-kisah-cinta-melalui-lagu-the-one-that-got-away-oleh-katy-perry', 'post-images/mznDCxBXt11IWjiG49cYazAVNiEhpvKuh4IMDRvI.jpg', 'Lagu memil...', '<div>Lagu memiliki kekuatan yang luar biasa dalam merangkai emosi dan mengenang momen-momen berarti dalam hidup kita. Salah satu lagu yang berhasil menciptakan ikatan emosional dengan pendengarnya adalah \"The One That Got Away\" oleh Katy Perry. Dalam lagu ini, Perry dengan indah mengisahkan tentang cinta yang hilang dan melukai hati, serta kekaguman akan apa yang telah hilang. Mari kita merenung dan menyimak lirik lagu ini yang penuh dengan kehangatan dan rasa kehilangan.<br><br></div><div>Lirik:&nbsp;<br>[Verse 1]&nbsp;<br>Summer after high school, when we first met We\'d make out in your Mustang to Radiohead And on my 18th birthday, we got matching tattoos Used to steal your parents\' liquor and climb to the roof Talk about our future, like we had a clue Never planned that one day, I\'d be losing you<br><br></div><div>[Pre-Chorus]&nbsp;<br>In another life, I would be your girl We\'d keep all our promises, be us against the world In another life, I would make you stay So I don\'t have to say you were the one that got away The one that got away<br><br></div><div>[Chorus]&nbsp;<br>I was June and you were my Johnny Cash Never one without the other, we made a pact Sometimes when I miss you, I put those records on, whoa Someone said you had your tattoo removed Saw you downtown, singing the blues It\'s time to face the music, I\'m no longer your muse But in another life, I would be your girl We\'d keep all our promises, be us against the world In another life, I would make you stay So I don\'t have to say you were the one that got away The one that got away The one, the one, the one<br><br></div><div>[Verse 2]&nbsp;<br>All this money can\'t buy me a time machine, no Can\'t replace you with a million rings, no I should\'ve told you what you meant to me, whoa \'Cause now I pay the price<br><br></div><div>[Pre-Chorus]&nbsp;<br>In another life, I would be your girl We\'d keep all our promises, be us against the world In another life, I would make you stay So I don\'t have to say you were the one that got away The one that got away<br><br></div><div>[Chorus]&nbsp;<br>I was June and you were my Johnny Cash Never one without the other, we made a pact Sometimes when I miss you, I put those records on, whoa Someone said you had your tattoo removed Saw you downtown, singing the blues It\'s time to face the music, I\'m no longer your muse But in another life, I would be your girl We\'d keep all our promises, be us against the world In another life, I would make you stay So I don\'t have to say you were the one that got away The one that got away The one, the one, the one<br><br></div><div>\"The One That Got Away\" adalah lagu yang memikat hati dengan lirik yang menggambarkan kehilangan cinta dan penyesalan. Melalui lagu ini, Katy Perry berhasil mengekspresikan perasaan yang universal dalam hubungan manusia, di mana terkadang kita merindukan apa yang telah hilang<br><br></div>', NULL, '2023-06-05 23:12:45', '2023-06-05 23:12:45'),
(12, 3, 3, 'Pentingnya Pengembangan Website untuk Kesuksesan Bisnis Online', 'pentingnya-pengembangan-website-untuk-kesuksesan-bisnis-online', 'post-images/dBOA7XWWREvOZ8WaqmUboK2bkXi2aV9tUWua2ZI4.jpg', 'Dalam era...', '<div>Dalam era digital saat ini, memiliki kehadiran online yang kuat sangat penting bagi keberhasilan bisnis. Salah satu aspek kunci dari kehadiran online yang efektif adalah pengembangan website yang baik. Website menjadi wajah digital perusahaan dan merupakan platform penting untuk berinteraksi dengan audiens online. Artikel ini akan menjelaskan mengapa pengembangan website menjadi begitu penting dalam konteks bisnis online.<br><br></div><ol><li>Meningkatkan Kredibilitas dan Kepercayaan Pelanggan Sebuah website yang baik dan profesional dapat meningkatkan kredibilitas bisnis Anda. Ketika pelanggan potensial mengunjungi website yang dirancang dengan baik, mereka akan memiliki kesan positif tentang perusahaan Anda. Website yang menampilkan informasi yang akurat, desain yang menarik, dan fungsionalitas yang baik akan membantu membangun kepercayaan pelanggan.<br><br></li><li>Meningkatkan Jangkauan dan Keterjangkauan Melalui website, bisnis Anda dapat mencapai audiens yang lebih luas dan memperluas jangkauan geografis. Dengan adanya internet, pelanggan dapat mengakses website Anda dari mana saja dan kapan saja. Hal ini membuka peluang baru untuk menjual produk atau layanan kepada orang-orang di berbagai lokasi.<br><br></li><li>Memberikan Informasi dan Pelayanan yang Lebih Baik Website adalah platform yang ideal untuk menyediakan informasi terperinci tentang produk atau layanan Anda kepada pelanggan. Dengan menggunakan konten yang relevan dan menarik, Anda dapat menjelaskan fitur produk, memberikan panduan penggunaan, atau menawarkan solusi bagi pelanggan. Selain itu, melalui fitur kontak atau chat, pelanggan dapat berinteraksi langsung dengan bisnis Anda dan mendapatkan pelayanan yang cepat dan efisien.<br><br></li><li>Meningkatkan Strategi Pemasaran Digital Website merupakan elemen kunci dalam strategi pemasaran digital. Dengan mengoptimalkan website Anda untuk mesin pencari (SEO), Anda dapat meningkatkan visibilitas online dan mendapatkan lalu lintas organik yang lebih banyak. Selain itu, website juga menjadi platform untuk mengintegrasikan strategi pemasaran digital lainnya, seperti pemasaran konten, media sosial, atau email marketing. Dengan menggunakan website sebagai landasan, Anda dapat membangun kampanye pemasaran yang lebih efektif dan terukur.<br><br></li><li>Membangun Hubungan dan Keterlibatan dengan Pelanggan Website dapat digunakan untuk membangun hubungan yang kuat dengan pelanggan. Dengan menyediakan blog atau konten informatif lainnya, Anda dapat berbagi pengetahuan, tips, atau berita terkait industri Anda. Selain itu, melalui formulir langganan atau program keanggotaan, Anda dapat mengumpulkan informasi kontak pelanggan dan menjalin komunikasi yang lebih dekat.<br><br></li><li>Mengikuti Perkembangan Teknologi dan Tren Teknologi dan tren dalam dunia digital terus berkembang. Dengan memiliki website yang diperbarui dan responsif, Anda dapat tetap relevan dan berada di garis depan industri Anda. an<br><br></li></ol>', NULL, '2023-06-06 04:35:32', '2023-06-06 04:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `username` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'senja', 'senjaabadi', 'senja@gmail.com', NULL, '$2y$10$g5BK.89AiU4yGMhbOVgvW.sdn7ycZ2QFTcvxGJ8xj1qa5QvJVfEy2', NULL, '2023-06-03 05:44:06', '2023-06-03 05:44:06', 0),
(2, 'arunika', 'arunika', 'arunika@gmail.com', NULL, '$2y$10$.H4zyVqu6MEdUFYsDzDBeOg6/ndnth4pWVISxaRvAvN841/DQPzBi', NULL, '2023-06-05 00:18:14', '2023-06-05 00:18:14', 0),
(3, 'Ciarra', 'ciarra', 'ciarra@gmail.com', NULL, '$2y$10$JopvE2DQgnRBjp3jEmzy6uk9C/bqCSBKDvBxOQwgX5CsJozBlcC8K', NULL, '2023-06-05 23:06:44', '2023-06-05 23:06:44', 0),
(4, 'ilham dermawan', 'ilham', 'ilhamdermawan@gmail.com', NULL, '$2y$10$NNpjBRH8ye5UG200Rp5fvuc9prTQ2y.is/JCFKrxiuXVDmPDrzGY.', NULL, '2023-06-08 18:44:24', '2023-06-08 18:44:24', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
