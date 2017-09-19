-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 19. September 2017 jam 03:37
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_tour_travel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `apps_kota`
--

CREATE TABLE IF NOT EXISTS `apps_kota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Tempat` varchar(100) NOT NULL,
  `Deskripsi` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `apps_kota`
--

INSERT INTO `apps_kota` (`id`, `Tempat`, `Deskripsi`) VALUES
(1, 'Bandung', 'Bandung merupakan Kota Metropolitan terbesar di Provinsi Jawa Barat, sekaligus menjadi ibu Kota Provinsi. Kota ini terletak 140 km sebelah tenggara Jakarta, dan merupakan kota terbesar di wilayah Pulau Jawa bagian selatan, Bandung juga mempunyai tempat wisata yang menarik sepeti Kawah Putih sehingga banyak dikunjungi wisatawan.'),
(2, 'Yogyakarta', 'Yogyakarta sebagai daerah tujuan wisata nasional ataupun global, beragam titik destinasinyapun bermunculan dan terpublikasi di berbagai media. Yogyakartapun juga mempunyai tempat wisata yang sangat populer seperti Candi Borobudur.'),
(3, 'Bali', 'Bali adalah sebuah provinsi di Indonesia, ibu kota provinsi Bali adlah Denpasar. Bali juga merupakan salah satu pulau di Kepulauan Nusa Tenggara. Pulau Bali merupakan salah satu pulau di Indnesia yang berada dalam gugusan Kepulauan Nusa Tenggara. Pulau ini sebagai Pulau Dewata atau Pulau Seribu Pura, Bali juga terkenal sebagai tujuan parawisata dengan berbagai keunikan-keunikan hasil seni budayanya.'),
(4, 'Lombok', 'Lombok merupakan sebuah Pulau di kepulauan sunda kecil atau Nusatenggara yang terpisahkan oleh selat Lombok di sebelah Barat, dan selat atas di sebelah Timur. Pulau Lombok juga mempunyai berbagai tempat wisata yang menarik.'),
(5, 'Solo', 'Solo merupakan nama Kota yang ada di Provinsi Jawa Tengah, tepatnya berdekatan langsung dengan Kota Magelang dan Yogyakarta, di Solo juga memiliki beragam tempat menarik yang bisa menjadi tempat untuk berlibur. '),
(6, 'Medan', 'Medan terletak pada sejumlah landmark yang akan sarat nilai sejarah. Medan merupakan Provinsi Sumatera utara yang merupakan sebuah kawasan yang memiliki warisan alam paling memikat hingga ke manca negara yakni wisata Danau Toba.\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `apps_pengguna`
--

CREATE TABLE IF NOT EXISTS `apps_pengguna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_id` (`username_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `apps_produk`
--

CREATE TABLE IF NOT EXISTS `apps_produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Paket` varchar(200) NOT NULL,
  `Deskripsi` varchar(2000) NOT NULL,
  `Harga` double NOT NULL,
  `code_paket_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `apps_reservasi_code_paket_id_0645c710_fk_apps_kota_id` (`code_paket_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data untuk tabel `apps_produk`
--

INSERT INTO `apps_produk` (`id`, `Paket`, `Deskripsi`, `Harga`, `code_paket_id`) VALUES
(1, '1.	Bandung Educations, 4 Days 3 Nights', 'Bandung Educations, 4 Days 3 Nights \r\n\r\nProgram Tour : \r\nD1: Tiba di Bandung - Check In Hotel \r\nTiba di Bandara Husen Sastranegara disambut oleh guide kami kemudian diantarkan untuk check in hotel dan Free Program\r\n\r\nD2: Kebun Binatang Bandung - Selasar Sunaryo Art Space Lembang (BLD) \r\nMenikmati makan pagi di Hotel + Kebun Binatang Bandung merupakan tempat wisata yang sering dikunjungi oleh anak-anak + melihat binatang + naik bebek kayuh atau sepeda air + Lunch / Makan Siang + Selasar Sunaryo Art Space yaitu Gallery seni yang memiliki konsep nirmala yang memiliki pemandangan yang cukup indah + menikmati hidangan yang ada di caffe shop + wifi + melihat pertunjukan seni + pustaka selasar + kopi selasar + cinderamata selasar + venue rental + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.  \r\n\r\nD3: Museum Geologi - Jendela Alam (BLD) \r\nMenikmati makan pagi di Hotel + Musium Geologi merupakan museum yang sudah menjadi bangunan bersejarah di Kota Bandung bisa melihat fosil dinosaurus + melihatn fosil ular Museum + melihat tengkorak manusia purba + Lunch / Makan Siang + Jendela Alam merupakan Tempat wisata anak yang sangat cocok dan pas sebagai sarana belajar anak anda sekaligus tempat rekreasi + menikamati keindahan serta kesejukan + tempat bermain mengenal dunia pertanian + sarana belajar dan bermain + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.  \r\n\r\nD4: Transfer Out - Bandara (B) \r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.', 1250000, 1),
(2, '2.	Bandung Dingin, 4 Days 3 Nights', 'Bandung Dingin, 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Bandung - Check In Hotel \r\nTiba di Bandara Husen Sastranegara disambut oleh guide kami kemudian diantarkan untuk check in hotel dan Free Program  \r\n\r\nD2: Gunung Tangkuban Perahu - Farm House Lembang (BLD) \r\nMenikmati makan pagi di Hotel + Gunung Tangkuban Perahu merupakan tempat wisata yang memiliki pemandangan alam yang sangat indah dan suhunya yang dingin + mengetahui sejarah tentang gunung tangkuban perahu + melihat kawasan hutan gunung yang sangat ekstrim udaranya + mempunyai 3 kawah utama + Lunch / Makan siang + Farm House Lembang merupakan wisata yang bertemakan eropa menjadikan farmhouse lembang wisata nusantara namun bercitarasakan eropa + melihat pemandangan yang indah + dapat mencicipi makanan dan minuman + melihat dan berpoto di rumah hobbit + mengabadikan perasaan cinta di gembok cinta + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.  \r\n\r\nD3: Kawah Putih Ciwidey - Situ Patenggang (BLD) \r\nMenikmati makan pagi di Hotel + Kawah Putih Ciwidey adalah sebuah danau yang terbentuk akibat dari letusan Gunung Patuha tanahnya berwarna putih akibat dari percampuran unsur berlerang + pengambilan gambar film, melukis,foto pengantin + melihat danau yang dapat berubah warna + Lunch / Makan siang + Situ Patenggang merupakan salah satu situ atau danau yang memiliki keindahan alam. + Mengetahui sejarang tentang Situ Patenggang + membeli cinderamata + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.  \r\n\r\nD4: Transfer Out - Bandara (B) Makan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.', 100000, 1),
(3, '3.	Bandung Relax, 4 Days 3 Nights', 'Bandung Relax, 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Bandung - Check In Hotel\r\nTiba di Bandara Husen Sastranegara disambut oleh guide kami kemudian diantarkan untuk check in hotel dan Free Program.\r\n\r\nD2: Kebun Strawberry Ciwidey - Kebun Teh Ranca Bali (BLD)\r\nMenikmati makan pagi di Hotel + Kebun Strawberry Ciwidey memiliki ciri Buah Strawberry yang relatih lebih besar,segar dengan warna yang merah menyala,dengan kontur rasa manis dan sedikit rasa asam. + bisa mengambil dan memetik langsung + bisa memakannya secara langsung + Lunch / Makan siang + Kebun Teh Ranca Bali merupakan Perkebunan yang sangat indah dan menawan berada pada posisi yang lebih rendah dari pinggiran jalan serta susunannya yang rapat + melihat keindahan perkebunan teh + melihat pohon-pohon teh yang indah dan menawan + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD3: Gunung Putri Lembang - Air Panas Ciater (BLD)\r\nMenikmati makan pagi di Hotel + Gunung Putri Lembang merupakan tempat wisata yang selain menyajikan suasana dan pemandangan alam. + melihat keindahan pegunungan putri lembang + melihat keindahan pohon-pohon yang bengkok bahkan melengkung + Lunch / Makan siang + Air Panas Ciater merupakan pemandian air panas yang mengalir dari sebuah sumber kawah + bisa untuk bersantai sambil berendam + menikmati keindahan alam + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD4: Transfer Out - Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.\r\n', 1250000, 1),
(4, '4. Bandung Amazing, 4 Days 3 Nights', 'Bandung Amazing, 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Bandung - Check In Hotel\r\nTiba di Bandara Husen Sastranegara disambut oleh guide kami kemudian diantarkan untuk check in hotel dan Free Program \r\n\r\nD2: The Lodge Earthound Adventur Park - De Ranch (BLD)\r\nMenikmati makan pagi di Hotel + The Lodge Earthound Adventur Park merupakan tempat wisata yang sangat indah dan bisa melihat hehijauan pohon-pohon pinus dan bisa menghirup udara yang segar + bisa berpoto dalam ketinggian + melihat pemandangan yang indah + bisa menunggang kuda + bisa buat bercamping + Lunch / Makan siang + De Ranch memberikan nuansa baru dalam wisata alam dengan menampilkan nuansa peternakan + memiliki suasana peternakan sambil menunggang kuda dengan kostum khas cowboy + menikmati permainan anak-anak + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD3: Trans Studio Bandung - Flooting Market (BLD)\r\nMenikmati makan pagi di Hotel + Trans Studio Bandung adalah taman hiburan keluarga indoor dengan wahana seru, bioskop dan area bermain untuk anak-anak + menikmati wahana Yamaha Racing Coaster + Dunia Anak + Giant Swing + Sky Pirates + Klong Climb + Lunch / Makan siang + Flooting Market merupakan wisata alam yang menawarkan berbagai aneka kuliner dengan konsep pasar terapung + memiliki aneka permainan + melihat taman angsa & taman kelinci + menikmati makanan modern + melihat pemandangan alam yang indah + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD4: Transfer Out - Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.\r\n', 1000000, 1),
(5, '1.	Yogyakarta Spectacular Tour 4 Days 3 Nights', 'Yogyakarta Spectacular Tour 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Yogyakarta - Check In Hotel\r\nTiba di Bandara Internasional Adisutjipto disambut oleh guide kami kemudian diantarkan untuk check in hotel. \r\n\r\nD2: Puncak 4G Gunung Gentong (BLD)\r\nMenikmati makan pagi di Hotel + Puncak 4G Gunung Gentong adalah tempat yang terletak di Gunung Gentong Gedangsari + menikmati perbukitan + menikamati sunrise dan sunset + melihat lenscap hamparan awan putih + spot poto yang menarik + Lunch / Makan siang + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD3: Rumah Bambu Yogyakarta - Taman Pelangi (BLD)\r\nMenikmati makan pagi di Hotel + Rumah Bambu Yogyakarta meupakan salah satu spot foto baru yang sedang hits di yogyakarta + melihat rumah hits yang dibuat dari bambu + spot foto menarik sangat Instagramable + Lunch / Makan siang + Taman Pelangi merupakan tempat wisata malam yang terletak di jalan Ring Road Utara, dan berada dilokasi Museum Monumen Yogyakarta + melihat keindahan warna warni lampu lampion,beraneka ragam model lampion + menikmati wahana yang telah tersedia seperti bercak mini perahu dayung + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD4: Transfer Out - Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.\r\n', 1250000, 2),
(6, '2.	Yogyakarta Reguler Paket 4 Days 3 Nights', 'Yogyakarta Reguler Paket 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Yogyakarta - Check In Hotel\r\nTiba di Bandara Internasional Adisutjipto disambut oleh guide kami kemudian diantarkan untuk check in hotel. \r\n\r\nD2: Hutan Pinus Mangunan Dlingo - Kebun Buah Mangunan Dlingo (BLD)\r\nMenikmati makan pagi di Hotel + Hutan Pinus Mangunan Dlingo adalah salah satu tempat wisata favorite untuk bersantai ditengah huatan pinus yang sejuk dan teduh + melihat keindahan hutan pinus dan merasakan asri & rindangnya pepohonan yang menyejukan dan menenangkan + Lunch / Makan siang + Kebun Buah Mangunan Dlingo adalah tempat wisata favorit di Yogyakarta karena dapat melihat keindahan pantai parangtritis dari kebun buah mangunan + melihat populasi monyet dikebun buah mangunan + melihat proses pembibitan sapi dan bermain wahana + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD3: Curug Pulosari - Goa Pindul (BLD)\r\nMenikmati makan pagi di Hotel + urug Pulosari adalah sebuah air terjun yang airnya bersumber dari aliran air sungai alami + melihat keindahan curug pulosari yang membentuk seperti tirai + bermain air & berenang di curug + Lunch / Makan siang + Goa Pindul adlah obyek wisata alam susur Gua bawah tanah dengan aliran sungai disepanjangnya + menyusuri Goa Pindul dengan menggunakan peralatan khusus + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD4: Transfer Out - Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.\r\n', 750000, 2),
(7, '3.	Yogyakarta Amazing Tour 4 Days 3 Nights', 'Yogyakarta Amazing Tour 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Yogyakarta - Check In Hotel\r\nTiba di Bandara Internasional Adisutjipto disambut oleh guide kami kemudian diantarkan untuk check in hotel. \r\n\r\nD2: Jurang Tembelan Kanigoro - Candi Ratu Boko (BLD)\r\nMenikmati makan pagi di Hotel + Jurang Tembelan Kanigoro merupakan daya tarik wisata alam tebing perbukitan yang dikhususkan sebagai lokasi untuk berfoto + melihat pemandangan jurang tembelan di gardu pandang + Lunch / Makan siang + Candi Ratu Boko adalah sebuah situs peninggalan bersejarah yang berupa reruntuhan bangunan + melihat keindahan sejarah istana peninggalan Tata Boko Raja Mataram + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD3: Pantai Ngandong (BLD)\r\nMenikmati makan pagi di Hotel + Pantai Ngandong adalah salah satu destinasi wisata alam yang berada di gunungkidul + menikmati keindahan pantai pasir putih dan lombak yang relatif tenang + melihat perbukitan batu karas + menaiki perahu + Lunch / Makan siang + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD4: Transfer Out - Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.\r\n', 1250000, 2),
(8, '1.	Bali Spectacular Tour 4 Days 3 Nights', 'Bali Spectacular Tour 4 Days 3 Nights\r\n\r\nProgram Tour : \r\nD1: Tiba di Bali – Check In Hotel \r\nTiba di Bandara International Ngurah Rai disambut oleh guide kami kemudian diantarkan untuk check in hotel dan Free Program   \r\n\r\nD2: Museum Foto 3 Dimensi - Bali Safari & Marine Park ( BLD )\r\nMakan pagi di hotel kemudian tour mengunjungi Musieum foto 3 Dimensi siapkan kamera anda. Tour kemudian berlanjut dengan menikmati makan siang mengunjungi Bali Safari & Marine Park yaitu kebun binatang terbesar di Bali disini peserta akan melihat berbagai jenis satwa dari seluruh dunia melihat berbagai pertunjukan diantaranya elephant show , animal show dan Safari Journey juga merupakan salah satu kegiatan yang akan kita lakukan disini, shopping time oleh – oleh bali dan Dinner di Lokal restaurant dan kembali ke hotel.  \r\n\r\nD3: Bali Cruise Tour by Quicksilver Cruise ( BLD ) \r\nMakan pagi di hotel, Berangkat menuju Pelabuhan benoa menyebrang menuju Pulau Nusa Penida.Berangkat dari Pelabuhan Benoa pada pukul 09.00 menggunakan Kapal Quicksilver ,menempuh waktu +/- 45 menit untuk sampai di Nusa Penida. Dipantai peserta dapat bersantai sembari menikmati fasilitas yang sudah termasuk di dalamnya seperti Unlimited Banana Boat , Snorkeling , Mini Submarine , wisata desa dan buffet makan siang . Sore hari peserta akan kembali menuju Bali dilanjutkan dengan shopping time di oleh – oleh Bali, makan malam di Jimbaran dengan menu seafood BBQ dan kembali ke hotel .  \r\n\r\nD4: Transfer Out – Bandara (B) \r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport', 1000000, 3),
(9, '2. Bali Reguler Paket 4 Days 3 Nights', 'Bali Reguler Paket 4 Days 3 Nights\r\n\r\nProgram Tour : \r\nD1: Tiba di Bali - Check In Hotel \r\nTiba di Bandara International Ngurah Rai disambut oleh guide kami kemudian diantarkan untuk check in hotel dan Free Program   \r\n\r\nD2: Tanjung Benoa - Uluwatu Tour (BLD) \r\nMenikmati makan pagi di Hotel + Tanjung Benoa yang merupakan kawasan pantai yang terkenal dengan aneka permainan air / waterportnya ( Watersport by personal account ) + Pandawa Beach + Garuda Wisnu kencana ( Melihat Patung Dewa Wisnu terbesar di Bali ) + Lunch / Makan siang + Pura Uluwatu yaitu Pura yang terletak diatas tebing dan dihuni oleh kera + Dreamland beach untuk melihat keindahan panorama sunset + Dinner / Makan malam di Jimbaran Beach dengan menu khas Seafood BBQ + kembali ke hotel.  \r\n\r\nD3: Bedugul - Tanah Lot Tour (BLD) \r\nMenikmati makan pagi di Hotel + Pura Taman Ayun ( Pura Kerajaan Mengwi ) + Pura Ulundanu Bedugul ( Pura dengan pemandangan indahnya yang terletak di tengah Danau Beratan ) + Lunch / Makan Siang + Joger Oleh2 + Pura Tanah Lot dimana pura ini terletak di atas batu karang di tengah laut dan terkenal dengan panorama sunsetnya + Shopping krisna + Dinner / Makan malam di Local Restaurant dan kembali ke Hotel.  \r\n\r\nD4: Transfer Out - Bandara (B) \r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.', 1200000, 3),
(10, '3. Bali Amazing Tour 4 Days 3 Nights', 'Bali Amazing Tour 4 Days 3 Nights\r\n\r\nProgram Tour : \r\nD1: Tiba di Bali - Tanjung Benoa - Uluwatu Tour (LD) \r\nTiba di Bandara International Ngurah Rai disambut oleh guide kami kemudian diantarkan tour menuju Tanjung Benoa yang merupakan kawasan pantai yang terkenal dengan aneka permainan air / waterportnya ( Watersport by personal account ) + Pandawa Beach + Garuda Wisnu kencana ( Melihat Patung Dewa Wisnu terbesar di Bali ) + Lunch / Makan siang + Pura Uluwatu yaitu Pura yang terletak diatas tebing dan dihuni oleh kera + Dinner / Makan malam di Jimbaran Beach dengan menu khas Seafood BBQ. \r\n\r\nD2: Bali Bird Park - Tanah Lot Tour (BLD)\r\nMenikmati makan pagi di Hotel + mengunjungi Bali Bird Park ( Taman Burung Bali ) anda akan dapat melihat beraneka ragam jenis burung, mulai dari jenis burung dari Papua, Elang Jawa, Elang-ular Bido dan masih banyak lagi burung yang lainnya. Di tempat ini, anda tidak hanya dapat melihat burung, melainkan anda juga dapat melihat proses pengembangbiakan burung, pertunjukan burung ( Bird show ) serta Bioskop 4 Dimensi + Lunch / Makan Siang di local restaurant Shopping time oleh – oleh Bali + Mengunjungi Tanah Lot + Dinner / Makan malam di local restaurant dan kembali ke hotel. \r\n\r\nD3: Taman Nusa - IaM Bali (BLD) \r\nMakan pagi di hotel kemudian tour mengunjungi Taman Nusa merupakan wisata Kebudayaan yang berlokasi di Gianyar Bali. Dilanjutkan dengan makan siang kemudian mengunjungi I Am Bali yaitu wahana photo 3 Dimensi dan Musieum Bajra Sandi , shopping time di oleh – oleh Bali dan makan malam di local restaurant dan kembali ke hotel.\r\n\r\nD4: Transfer Out – Bandara (B) Makan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport', 1300000, 3),
(11, '4. Paket Tour Bali Lovina 4 Days 3 Nights Valid s/d September 2017', 'Paket Tour Bali Lovina 4 Days 3 Nights Valid s/d September 2017\r\n\r\nProgram Tour :\r\nD1: Arrival - Transfer Lovina - Krisna Funtastic Land (LD) \r\n•Arrival di Bandara Estimasi kedatangan Pagi \r\n•Transfer menuju Lovina, Kuta – Lovina akan ditempuh lebih kurang 3 Jam perjalanan \r\n•Mengunjungi Ulundanu beratan bedugul \r\n•Makan siang di local restaurant \r\n•Melanjutkan perjalanan menuju Lovina \r\n•Tiba di Lovina check in Hotel \r\n•Makan malam di local restaurant \r\n•Mengunjungi Krisna Funtastic Land ( Wahana Taman Bermain Baru di Bali, semua permainan by \r\n personal account ) \r\n•Kembali ke hotel \r\n\r\nD2: Dolphin Tour Lovina (BLD) \r\n•Subuh menuju Krisna Watersport di daerah temukus untuk mengikuti Dolphin tour ketengah laut \r\n untuk melihat lumba – lumba di laut lepas dan melihat Terumbu karang menggunakan Glass bottom \r\n Boat. Setelah Dolphin Tour. peserta bisa melanjutkan bermain watersport seperti Banana Boat, \r\n Doghnat Boat, Jetski ( Untuk activitas watersport semua by personal account ( biaya sendiri ). \r\n•Peserta kembali ke Hotel \r\n•Makan pagi di hotel\r\n•Bersantai Menikmati fasilitas hotel \r\n•Check Out dari Lovina \r\n•Makan siang di local restaurant \r\n•Shopping oleh – oleh joger \r\n•Sunset Tanah Lot \r\n•Makan Malam di Local Restaurant \r\n•Check in hotel di Kuta / Denpasar Area \r\n\r\nD3: Transfer Menuju Bandara (B) \r\n•Check out Hotel dan Drop menuju Bandara \r\n•Paket tour berlaku Sampai September 2017 untuk Domestik Market / KITAS Holder dan hanya di \r\n periode low season dan tidak berlaku pada periode High season/Peak. \r\n•Harga paket tour dapat berubah sewaktu – waktu menyesuaikan situasi dan kondisi saat itu \r\n seperti terjadi kenaikan Bahan Bakar, Kenaikan ticket object wisata dll. \r\n•Harga tersebut akan berubah jika mengalami penambahan atau pengurangan peserta. \r\n•Mohon Konfirmasi terlebih dahulu apabila ada permintaan untuk paket tour diatas.\r\n\r\nD4: Transfer Out – Bandara (B) Makan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport', 1250000, 3),
(12, '1.	Lombok Regular Package No 1, 4 Days 3 Nights', 'Lombok Regular Package No 1, 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Lombok - Check in Hotel\r\nSetelah mendarat di Bandara Internasional Lombok, peserta akan dijemput oleh guide kami kemudian diantarkan untuk check in hotel. \r\n\r\nD2: Pesona Desa Bayan Sasak - Taman Narmada Lombok (BLD)\r\nMenikmati makan pagi di Hotel + Pesona Desa Bayan Sasak Desa yang paling tua. Bangunannya menyerupai lumbung padi yang menjadi tempat tinggal masyarakat ini seluruhnya dibuat dari bahan-bahan alami. + Mengenal beragam tradisi di desa bayan sasak + bisa belanja kerajinan tangan + Lunch / Makan Siang + Taman Narmada Lombok merupakan rumah yang berbentuk panggung + memasuki Bale Terang yang berbentuk rumah panggung + melihat Pura Narmada + mengunjungi balai petirtaan yang mata airnya berasal dari gunung rinjani + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD3: Air Terjun Mangku Sakti - Air Terjun Benang Kelambu (BLD)\r\nMenikmati makan pagi di Hotel + Air Terjun Mangku Sakti adalah salah satu air terjun mangku sakti + melihat keindahan ukiran ornamen bebatuan + dapat menyembuhkan berbagai penyakit kulit + menikmati kesegaran air terjun + Lunch / Makan Siang + Air Terjun Benang Kelambu adlah air terjun kelambu yang tidak langsung terhempas kebawah melainkan melewati celah-celah tanaman merambat yang tumbuh lebat di tebing sehingga tampak bagai kelambu + dapat menikmati air terjun yang airnya bersumber dari danau + melihat keindahan perkebunan kopi + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD4: Transfer Out - Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport\r\n', 1700000, 4),
(13, '2.	Lombok Regular Package No 2, 4 Days 3 Nights', 'Lombok Regular Package No 2, 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Lombok - Check in Hotel\r\nSetelah mendarat di Bandara Internasional Lombok, peserta akan dijemput oleh guide kami kemudian diantarkan untuk check in hotel \r\n\r\nD2: Budaya Rumah Adat Dusun Sade - Tanjung Poki (BLD)\r\nMenikmati makan pagi di Hotel + Budaya Rumah Adat Dusun Sade merupakan tempat wisata budaya di lombok tengah + melihat keunikan rumah adat dusun sade + mempelajari kebudayaan dusun sade + Lunch / Makan Siang + Tanjung Poki merupakan tempat wisata yang memiliki keindahan alam yang memukau + memiliki keindahan alam + memiliki hembusan ombak yang indah + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD3: Pantai Seger (BLD)\r\nMenikmati makan pagi di Hotel + Pantai Seger merupakan panati yang mempunyai pasir putih yang masih terjaga + menikmati pantai pasir putih, karang yang masih terjaga dan spot untuk surfing + menaiki perbukitan pantai seger + snorkling + Lunch / Makan Siang + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD4: Transfer Out - Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.\r\n', 1200000, 4),
(14, '3.	Lombok Regular Package No 3, 4 Days 3 Nights', 'Lombok Regular Package No 3, 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Lombok - Check in Hotel\r\nSetelah mendarat di Bandara Internasional Lombok, peserta akan dijemput oleh guide kami kemudian diantarkan untuk check in hotel \r\n\r\nD2: Pura Batu Bolong - Pink Batch (BLD)\r\nMenikmati makan pagi di Hotel + Pura Batu Bolong merupakan sebuah pura kecil yang terdapat didaerah senggigi lombok + melihat pura menggunakan kain ikat kuning + melihat pemandangan pantai senggigi + Lunch / Makan Siang + Pink Batch adalah tempat wisata yang memiliki pasir yang berwarna merahu muda + dapat menikmati pantai pasir yang berwarna kemerahan + memiliki pasir yang lembut + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel. \r\n\r\nD3: Gunung Rinjani (BLD)\r\nMenikmati makan pagi di Hotel + Gunung Rinjani merupakan gunung dengan ketinggian 3.726 yang menjadi pilihan para pendaki + melihat danau segera anak + melihat keindahan alam disekitar gunung rinjani + dapat berendam di air belerang yang hangat + Lunch / Makan Siang + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel. \r\n\r\nD4: Transfer Out - Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.\r\n', 1300000, 4),
(15, '4. Lombok Regular Package No 4, 4 Days 3 Nights', 'Lombok Regular Package No 4, 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Lombok - Check in Hotel\r\nSetelah mendarat di Bandara Internasional Lombok, peserta akan dijemput oleh guide kami kemudian diantarkan untuk check in hotel \r\n\r\nD2: Pulau Gili Gede - Pulau Gili Layar (BLD)\r\nMenikmati makan pagi di Hotel + ulau Gili Gede sebuah pulau kecil yang terletak 500 meter disebelah barat laut pulau lombok pulau ini adalah pulau paling besar + menikmati pulau asri dengan air yang jernih + memiliki panajng maksimum 4 km + Lunch / Makan Siang + Pulau Gili Layar merupakan keindahan dengan hamparan pasir putih sepanjang pantainya + memiliki keindahan yang mempunyai hamparan pasir + bisa berlayar + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel. \r\n\r\nD3: Pura Lingsar - Hutan Lindung Sesaot (BLD)\r\nMenikmati makan pagi di Hotel + Pura Lingsar merupakan simbol kerukunan bahkan keharmonisan antar umat beragama + melihat keindahan umat Islam dan Hindu + melihat keaslian Pura & Selendang kuning + Lunch / Makan Siang + Hutan Lindung Sesaot merupakan sebuah kawasan hutan yang masih alami dan begitu asri + menikmati udar asejuk dan nuansa khas alam + bermain ke kawasan hutan wisata + bermain air disungai air yang jernih + mengikuti kegiatan outbond + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel. \r\n\r\nD4: Transfer Out - Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.\r\n', 1350000, 4),
(16, '1.Solo Excotic 4 Days 3 Nigths', 'Solo Excotic 4 Days 3 Nigths\r\n\r\nProgram Tour :\r\nD1: Tiba di Solo - Check in Hotel\r\nSetelah mendarat di Bandara Internasional Adisumarmo, peserta akan dijemput oleh guide kami kemudian diantarkan untuk check in hotel \r\n\r\nD2: Museum Batik Danar Hadi Solo - Keraton Surakarta Hadiningrat (BLD)\r\nMenikmati makan pagi di Hotel + Museum Batik Danar Hadi Solo adalah museum yang mengoleksi berbagai model batik + melihat batik tradisional yang ada di Solo + Lunch / Makan Siang + Keraton Surakarta Hadiningrat merupakan keraton yang menyimpan berbagai koleksi milik kasunanan keraton ini merupakan contoh arsitektur istana Jawa tradisional yang terbaik + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel. \r\n\r\nD3: Museum Manusia Purba Sangiran - Grojagan Sewu Tawangmangu (BLD)\r\nMenikmati makan pagi di Hotel + Museum Manusia Purba Sangiran Museum ini merupakan museum unik yang memiliki koleksi berupa fosil-fosil manusia purba + Melihat koleksi yang ada di museum + Lunch / Makan Siang + Grojongan Sewu Tawangmangu, disana tour bisa menikmati Pemandangan indah dan udara yang sejuk + melihat air terjun + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel. \r\n\r\nD4: Transfer Out – Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport\r\n', 1200000, 5),
(17, '2.Solo Regular 4 Days 3 Nights', 'Solo Regular 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Solo - Check in Hotel\r\nSetelah mendarat di Bandara Internasional Adisumarmo, peserta akan dijemput oleh guide kami kemudian diantarkan untuk check in hotel. \r\n\r\nD2: Kebun Binatang Taru Jurug - Taman Sriwedari (BLD)\r\nMenikmati makan pagi di Hotel + Kebun Binatang Taru Jurug merupakan salah satu tempat wisata edukasi, berupa kebun binatang + melihat burung langka seperti burung merak hijau, harimau Sumatera iguana dll + melihat konservasi tumbuh-tumbuhan + Lunch / Makan Siang + Taman Sriwedari adalah sebuah kompleks taman di Kecamatan Lawiyan, Kota Surakarta, taman Sriwedari menjadi tempat diselenggarakannya tradisi hiburan + menikmati  kebudayaan Jawa asli + melihat suguhan souvenir dan mainan daerah atau alat-alat menari dan pewayangan + melihat rumah Joglo, pertunjukan wayang + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD3: Benteng Vastenburg - Taman Bale Kambang (BLD)\r\nMenikmati makan pagi di Hotel + Benteng Vastenburg adalah Benteng peninggalan Belanda yang terletak dikawasan Gladak + melihat benteng Peninggalan Belanda + Lunch / Makan Siang + Taman Bale Kambang adalah taman yang dibangun oleh KGPAA Mangkunegara untuk kedua putrinya oleh karena itu patung ini diletakan di dalam taman + melihat pemandangan asri dan pepohonan hutan kota peninggalan Sri Paduka Mangkunegoro + melihat acara Bak dan Ing Balekambang (lebaran di Balekambang) + bermain di taman reptil dan bermain wahana perahu bebek + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD4: Transfer Out – Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport\r\n', 1000000, 5),
(18, '1.	Medan Amazing Tour 4 Days 3 Nights', 'Medan Amazing Tour 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Medan - Check In Hotel\r\nTiba di Bandara Internasional Kualanamu disambut oleh guide kami kemudian diantarkan untuk check in hotel. \r\n\r\nD2: Menara Pandang Tele - Tjong A-Fie Mansion (BLD)\r\nMenikmati makan pagi di Hotel + Menara Pandang Tele adalah menara yang tingginya terdiri dari 3 tingkat dan masing-masing tingkatnya memiliki jarak pandang yang berbeda + melihat penorama Danau Toba + melihat barisan pegunungan yang menjulang + melihat penorama alam yang sangat indah + Lunch / Makan siang + Tjong A-Fie Mansion adalah rumah 2 lantai + mengetahui budaya lokal + mempunyai sejarah yang mengundang penasaran bagi wisatawan + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD3: Mangrove Kampung Nipah - Tanah Karo (BLD)\r\nMenikmati makan pagi di Hotel + Mangrove Kampung Nipah merupakan objek wisata yang sangat indah + menikmati tempat rekreasi + memiliki objek wisata yang indah + melihat pantai menggunakan perahu boat + Lunch / Makan siang + Tanah Karo adalah tempat wisata romantis yang akan memberikan pengalaman wisata yang berbeda dari biasanya + dapat mengabadikan momen dengan berfoto di depan gedung Sinabung + memiliki pemandangan yang indah + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD4: Transfer Out - Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.\r\n', 750000, 6),
(19, '2.	Wonderfull Of Medan 4 Days 3 Nights', 'Wonderfull Of Medan 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Medan - Check In Hotel\r\nTiba di Bandara Internasional Kualanamu disambut oleh guide kami kemudian diantarkan untuk check in hotel. \r\n\r\nD2: Wisata Danau Toba - Sipinsur (BLD)\r\nMenikmati makan pagi di Hotel + Wisata Danau Toba adalah sebuah danau alam besar tekto-vulkanik yang menempati kaldera dari sebuah super vulkam. + Pulang Samosir mengunjungi Tamok dan Amborita menggunakan kapal Motor + Melihat keindahan Danau Toba + berastagi didataran tinggi karo + Lunch / Makan siang + Sipinsur merupakan salah satu objek wisata yang yang menyajikan panorama wisata pemandangan alam Danou Toba. + melihat sungguhan pemandangan alam yang indah + bisa melihat pemandanga Danau Toba + terdapat permainan anak-anak + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD3: Air Terjun Sipiso-piso - Arum Jeram Sungai Bingei (BLD)\r\nMenikmati makan pagi di Hotel + Air Terjun Sipiso-piso merupakan salah satu tempat di Pulau Sumatera yang memiliki keindahan dan kesejukan + dapat melihat pemandangan Danau Toba dari Air Terjun Sipiso-piso + melihat pemandangna yang indah + melihat pepohonan pinus yang rimbun + Lunch / Makan siang + Arum Jeram Sungai Bingei merupakan Sungai Bingei yang terletak di Desa Sei Bingei, Kabupaten Langkat, Sumatera Utara. Berjarak sekitar 40 km dari kota Medan, dan 20 km dari kota Binjai. Sungai ini relatif tidak besar, berbatuan, dan air nya jernih dengan jeram-jeram yang bervariasi. + melihat keindahan alam + bisa berenang dan loncat dalam bebatuan + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD4: Transfer Out - Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.\r\n', 1250000, 6),
(20, '3.	Medan Regular No 1 4 Days 3 Nights', 'Medan Regular No 1 4 Days 3 Nights\r\n\r\nProgram Tour :\r\nD1: Tiba di Medan - Check In Hotel\r\nTiba di Bandara Internasional Kualanamu disambut oleh guide kami kemudian diantarkan untuk check in hotel. \r\n\r\nD2: The Lehu Garden - Kampung Ladang (BLD)\r\nMenikmati makan pagi di Hotel + The Lehu Garden merupakan tempat yang dipenuhi tanaman - tanaman dan mempunyai bangku - bangku untuk bersantai + melahat kebun atau tanaman yang indah + berenang + merasakan kesejukan udara The Lehu Garden + bisa buat berfoto + Lunch / Makan siang + Kampung Ladang merupakan destinasi yang terletak dijalan tungtungan Deli Serdang dan mempunyai taman yang sangat luas + destinasi untuk Outbound Seru + Tempat Romantis Untuk Foto Prewedding + Kuliner di sekitar Kampung Ladang + Mengenal sejarah di Istana Maimun + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD3: Kota Tarutong - Taman Simalem Resort (BLD)\r\nMenikmati makan pagi di Hotel + Kota Tarutong merupakan pusat wisata keagamaan dan mempunyai keindahan alam yang mempesona dan menarik + dapat melihat beberapa tempat wisata + merasaskan pemandian air soda + melihat taman wisata alam + Lunch / Makan siang + Taman Simalem Resort merupakan pemandangan hutan yang asri dengan vegetasi pohon pinus + melihat pemandangan hutan dengan berbagai banyaknya pohon pinus + bisa buat berfoto + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD4: Transfer Out - Bandara (BLD)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.\r\n', 1000000, 6),
(21, '4.	Medan Regular No 2 4 Days 3 Nigths', 'Medan Regular No 2 4 Days 3 Nigths\r\n\r\nProgram Tour :\r\nD1: Tiba di Medan - Check In Hotel\r\nTiba di Bandara Internasional Kualanamu disambut oleh guide kami kemudian diantarkan untuk check in hotel. \r\n\r\nD2: Merci Barn - Graha Santa Maria Annai Velangkanni (BLD)\r\nMenikmati makan pagi di Hotel + Merci Barn merupakan kantor pemasaran oleh pengembang untuk rumah contoh dengan model rumah bergaya Eropa + melihat keunikan rumah Merci Barn + bisa buat berfoto + melihat bunga - bunga yang indah + Lunch / Makan siang + Graha Santa Maria Annai Velangkanni merupakan salah satu objek wisata rohanni di medan + dapat melihat keunikan mirip dengan kuil Hindhu + berfoto + melihat bangunan yang sangat indah + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD3: Istana Maimun - Maha Vihara Adhi (BLD)\r\nMenikmati makan pagi di Hotel Istana Maimun merupakan istana terindah di Indonesia + melihat keindahan Istana Maimun + memilki Arsitektur yang Unik + melihat bangunan - bangunan yang ada di Istana Maimun + melihat keindahan - keindahan kerajaan + Lunch / Makan siang + Maha Vihara Adhi merupakan tempat peribadatan yang tenang anggun serta asri + melihat gedung - gedung yan aga Maha Vihara Adhi + bisa sebagai tempat beribadah umat Budha + melihat taman avolokistevara + melihat kolam ikan dengan warna warninya yang cantik + Shopping atau berbelanja + Dinner / Makan malam di Restaurant dan kembali ke Hotel.\r\n\r\nD4: Transfer Out - Bandara (B)\r\nMakan pagi di hotel. Acara bebas sampai pk 12.00 (waktu check out hotel). Transfer out ke Airport.\r\n', 1200000, 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `apps_reservasi`
--

CREATE TABLE IF NOT EXISTS `apps_reservasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nama_Depan` varchar(50) NOT NULL,
  `Nama_Belakang` varchar(100) NOT NULL,
  `Waktu_Berangkat` varchar(10) NOT NULL,
  `Waktu_Pulang` varchar(10) NOT NULL,
  `Paket` varchar(100) NOT NULL,
  `Jumlah_Pax` int(11) NOT NULL,
  `Dibuat_Pada` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `apps_reservasi`
--

INSERT INTO `apps_reservasi` (`id`, `Nama_Depan`, `Nama_Belakang`, `Waktu_Berangkat`, `Waktu_Pulang`, `Paket`, `Jumlah_Pax`, `Dibuat_Pada`) VALUES
(1, 'Admin', 'Admin', '09/12/2017', '09/14/2017', '100000.0', 6, '2017-09-14 12:11:23'),
(2, 'Admin', 'Baru', '09/11/2017', '09/15/2017', '100000.0', 2, '2017-09-14 12:12:44'),
(3, 'Admin', 'Ketiga', '09/11/2017', '09/14/2017', '100000.0', 2, '2017-09-14 13:36:33'),
(4, 'Admin', 'Keempat', '09/11/2017', '09/13/2017', '100000.0', 11, '2017-09-14 13:39:47'),
(5, 'Admn5', 'admin@gmail.com', '09/11/2017', '09/13/2017', '100000.0', 2, '2017-09-14 14:03:32'),
(6, 'Admin6', 'admin@gmail.com', '09/12/2017', '09/14/2017', '1250000.0', 8, '2017-09-14 14:26:11'),
(7, 'Ade', 'Irma', '09/04/2017', '09/06/2017', '100000.0', 8, '2017-09-15 02:43:02'),
(8, 'ls', 'hgj', '09/13/2017', '09/19/2017', '1250000.0', 10, '2017-09-18 06:37:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `apps_userprofile`
--

CREATE TABLE IF NOT EXISTS `apps_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `website` varchar(200) NOT NULL,
  `phone` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `apps_userprofile`
--

INSERT INTO `apps_userprofile` (`id`, `description`, `city`, `website`, `phone`, `user_id`) VALUES
(1, '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add reservasi', 1, 'add_reservasi'),
(2, 'Can change reservasi', 1, 'change_reservasi'),
(3, 'Can delete reservasi', 1, 'delete_reservasi'),
(4, 'Can add pengguna', 2, 'add_pengguna'),
(5, 'Can change pengguna', 2, 'change_pengguna'),
(6, 'Can delete pengguna', 2, 'delete_pengguna'),
(7, 'Can add user profile', 3, 'add_userprofile'),
(8, 'Can change user profile', 3, 'change_userprofile'),
(9, 'Can delete user profile', 3, 'delete_userprofile'),
(10, 'Can add destinasi', 4, 'add_destinasi'),
(11, 'Can change destinasi', 4, 'change_destinasi'),
(12, 'Can delete destinasi', 4, 'delete_destinasi'),
(13, 'Can add log entry', 5, 'add_logentry'),
(14, 'Can change log entry', 5, 'change_logentry'),
(15, 'Can delete log entry', 5, 'delete_logentry'),
(16, 'Can add group', 6, 'add_group'),
(17, 'Can change group', 6, 'change_group'),
(18, 'Can delete group', 6, 'delete_group'),
(19, 'Can add permission', 7, 'add_permission'),
(20, 'Can change permission', 7, 'change_permission'),
(21, 'Can delete permission', 7, 'delete_permission'),
(22, 'Can add user', 8, 'add_user'),
(23, 'Can change user', 8, 'change_user'),
(24, 'Can delete user', 8, 'delete_user'),
(25, 'Can add content type', 9, 'add_contenttype'),
(26, 'Can change content type', 9, 'change_contenttype'),
(27, 'Can delete content type', 9, 'delete_contenttype'),
(28, 'Can add session', 10, 'add_session'),
(29, 'Can change session', 10, 'change_session'),
(30, 'Can delete session', 10, 'delete_session'),
(31, 'Can add pesan_ tour', 11, 'add_pesan_tour'),
(32, 'Can change pesan_ tour', 11, 'change_pesan_tour'),
(33, 'Can delete pesan_ tour', 11, 'delete_pesan_tour'),
(34, 'Can add kota', 4, 'add_kota'),
(35, 'Can change kota', 4, 'change_kota'),
(36, 'Can delete kota', 4, 'delete_kota'),
(37, 'Can add produk', 1, 'add_produk'),
(38, 'Can change produk', 1, 'change_produk'),
(39, 'Can delete produk', 1, 'delete_produk'),
(40, 'Can add reservasi', 11, 'add_reservasi'),
(41, 'Can change reservasi', 11, 'change_reservasi'),
(42, 'Can delete reservasi', 11, 'delete_reservasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$3NjJvt2vDWSA$OhwlgZJCuAzDpXlyTNzop5lFPOIBSOH0wkP4WqO7Oc0=', '2017-09-18 06:36:04', 0, 'admin', 'admin', 'django', 'admin@gmail.com', 0, 1, '2017-09-14 11:29:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(5, 'admin', 'logentry'),
(4, 'apps', 'kota'),
(2, 'apps', 'pengguna'),
(1, 'apps', 'produk'),
(11, 'apps', 'reservasi'),
(3, 'apps', 'userprofile'),
(6, 'auth', 'group'),
(7, 'auth', 'permission'),
(8, 'auth', 'user'),
(9, 'contenttypes', 'contenttype'),
(10, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-09-14 11:27:38'),
(2, 'auth', '0001_initial', '2017-09-14 11:27:41'),
(3, 'admin', '0001_initial', '2017-09-14 11:27:42'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-09-14 11:27:42'),
(5, 'apps', '0001_initial', '2017-09-14 11:27:43'),
(6, 'contenttypes', '0002_remove_content_type_name', '2017-09-14 11:27:43'),
(7, 'auth', '0002_alter_permission_name_max_length', '2017-09-14 11:27:44'),
(8, 'auth', '0003_alter_user_email_max_length', '2017-09-14 11:27:44'),
(9, 'auth', '0004_alter_user_username_opts', '2017-09-14 11:27:44'),
(10, 'auth', '0005_alter_user_last_login_null', '2017-09-14 11:27:44'),
(11, 'auth', '0006_require_contenttypes_0002', '2017-09-14 11:27:44'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2017-09-14 11:27:44'),
(13, 'auth', '0008_alter_user_username_max_length', '2017-09-14 11:27:45'),
(14, 'sessions', '0001_initial', '2017-09-14 11:27:45'),
(15, 'apps', '0002_pesan_tour', '2017-09-14 11:30:41'),
(16, 'apps', '0003_auto_20170915_1056', '2017-09-15 03:56:52'),
(17, 'apps', '0004_auto_20170915_1058', '2017-09-15 03:58:46'),
(18, 'apps', '0005_auto_20170915_1100', '2017-09-15 04:00:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9ceymw4d9l4ujwam66pjmdljh16uk6xv', 'MTA5M2MwNmNkNWMyOWYxZDI4YTJlZjJmNDQyNDc2ZGZlM2M0MzAyMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjM5MDQzNjJjODM2ODdkNjNlMDY4ZTRhNDA5YzI3MGM1ODM0NzNmYzciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-10-02 06:36:04');

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `apps_pengguna`
--
ALTER TABLE `apps_pengguna`
  ADD CONSTRAINT `apps_pengguna_username_id_f56a5c9c_fk_auth_user_id` FOREIGN KEY (`username_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `apps_produk`
--
ALTER TABLE `apps_produk`
  ADD CONSTRAINT `apps_reservasi_code_paket_id_0645c710_fk_apps_kota_id` FOREIGN KEY (`code_paket_id`) REFERENCES `apps_kota` (`id`);

--
-- Ketidakleluasaan untuk tabel `apps_userprofile`
--
ALTER TABLE `apps_userprofile`
  ADD CONSTRAINT `apps_userprofile_user_id_affa1678_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
