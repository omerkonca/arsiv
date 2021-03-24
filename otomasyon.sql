-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 30 Nis 2016, 23:47:11
-- Sunucu sürümü: 5.6.17
-- PHP Sürümü: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Veritabanı: `otomasyon`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `filmarsivi`
--

CREATE TABLE IF NOT EXISTS `filmarsivi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FilmAdi` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  `YonetmenAdi` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  `Turu` varchar(12) COLLATE utf8mb4_turkish_ci NOT NULL,
  `GosterimTarihi` int(11) NOT NULL,
  `ResimAdresi` longtext COLLATE utf8mb4_turkish_ci NOT NULL,
  `Sozler` longtext COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci AUTO_INCREMENT=9 ;

--
-- Tablo döküm verisi `filmarsivi`
--

INSERT INTO `filmarsivi` (`id`, `FilmAdi`, `YonetmenAdi`, `Turu`, `GosterimTarihi`, `ResimAdresi`, `Sozler`) VALUES
(3, 'Inception', 'Christopher Nolan', 'Bilim Kurgu', 2011, '/resimler/Inception.jpg', 'Bu yapımda sanatçı, çok yetenekli bir hırsız olan "Dom Cobb " \nile karşımızda. Uzmanlık alanı, zihnin en karanlık ve \nsavunmasız olduğu rüya görme anında, bilinçaltının derinliklerindeki \ndeğerli sırları çekip çıkarmak ve onları çalmaktır. Cobb''un bu nadir \ninsanlarda görülebilecek yeteneği, bu ender rastgelinebilecek mahareti, \nonu kurumsal casusluğun tehlikeli yeni dünyasında aranan bir oyuncu yapmıştır. \nAynı zamanda bu durum onu uluslararası bir kaçak yapmış ve sevdiği herşeye \nmalolmuştur. Cobb''a içinde bulunduğu durumdan kurtulmasını sağlayacak \nbir fırsat sunulur. Ona hayatını geri verebilecek son bir iş; tabi eğer \nimkansız başlangıç''ı tamamlayabilirse. Mükemmel soygun yerine, Cobb ve\n takımındaki profesyoneller bu sefer tam tersini yapmak zorundadır; \ngörevleri bir fikri çalmak değil onu yerleştirmektir. Eğer başarırlarsa, \nmükemmel suç bu olacaktır.'),
(5, 'The Prestige', 'Christopher Nolan', 'Fantastik', 2006, '', ''),
(6, 'hhhGladiator', 'Ridley Scott', 'Aksiyon', 2000, '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE IF NOT EXISTS `kullanicilar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  `soyad` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  `kullaniciadi` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sifre` varchar(15) COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci AUTO_INCREMENT=8 ;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `ad`, `soyad`, `kullaniciadi`, `sifre`) VALUES
(1, 'Tu?çe', 'Saritiken', 'admin', '1'),
(2, 'Tuğçe', 'tuğçe', 'tuğçe', 'tuğçe'),
(3, 'Hocam vallaha hızlı giriş', 'smiley', '1', '1'),
(4, 'Meryem', 'Kapka', 'meryem', 'meryem');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `muzikarsivi`
--

CREATE TABLE IF NOT EXISTS `muzikarsivi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `muzikadi` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sanatciadi` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  `albumadi` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  `albumyili` int(11) NOT NULL,
  `Turu` varchar(25) COLLATE utf8mb4_turkish_ci NOT NULL,
  `MuzikAdresi` varchar(45) COLLATE utf8mb4_turkish_ci NOT NULL,
  `ResimAdresi` varchar(45) COLLATE utf8mb4_turkish_ci NOT NULL,
  `Sozler` longtext COLLATE utf8mb4_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci AUTO_INCREMENT=46 ;

--
-- Tablo döküm verisi `muzikarsivi`
--

INSERT INTO `muzikarsivi` (`id`, `muzikadi`, `sanatciadi`, `albumadi`, `albumyili`, `Turu`, `MuzikAdresi`, `ResimAdresi`, `Sozler`) VALUES
(1, 'Emri Olur', 'Imera', 'Single', 2014, 'Pop', 'C:\\FFOutput\\IMERA - Emri olur.wav', '/resimler/Res/maxresdefault.jpg', 'Taş bassın yerime dedi, gönlüne,\r\nEmri olur başım gözüm üstüne,\r\nBakmasın demiş bir daha yüzüme,\r\nEmri olur inansın bu sözüme.\r\nAlmasın demiş adımı diline,\r\nVay ben ölem, atın toprak üstüme.\r\nTaş bassın yerime dedi, gönlüne,\r\nEmri olur başım gözüm üstüne,\r\nBakmasın demiş bir daha yüzüme,\r\nEmri olur inansın bu sözüme.\r\nAlmasın demiş adımı diline,\r\nVay ben ölem, atın toprak üstüme.'),
(41, 'Aşk Bir Kahkaha', 'Sinan Yıldırım', 'Single', 2015, 'Pop', 'C:\\FFOutput\\askbir.wav', '/resimler/Res/1.jpg', 'Taş bassın yerime dedi, gönlüne,\r\nEmri olur başım gözüm üstüne,\r\nBakmasın demiş bir daha yüzüme,\r\nEmri olur inansın bu sözüme.\r\nAlmasın demiş adımı diline,\r\nVay ben ölem, atın toprak üstüme.\r\nTaş bassın yerime dedi, gönlüne,\r\nEmri olur başım gözüm üstüne,\r\nBakmasın demiş bir daha yüzüme,\r\nEmri olur inansın bu sözüme.\r\nAlmasın demiş adımı diline,\r\nVay ben ölem, atın toprak üstüme.'),
(42, 'Aşkla Aynı Değil', 'Oğuzhan Koç', 'Single', 2015, 'Pop', 'C:\\FFOutput\\askla.wav', '/resimler/Res/5.jpg', 'Taş bassın yerime dedi, gönlüne,\r\nEmri olur başım gözüm üstüne,\r\nBakmasın demiş bir daha yüzüme,\r\nEmri olur inansın bu sözüme.\r\nAlmasın demiş adımı diline,\r\nVay ben ölem, atın toprak üstüme.\r\nTaş bassın yerime dedi, gönlüne,\r\nEmri olur başım gözüm üstüne,\r\nBakmasın demiş bir daha yüzüme,\r\nEmri olur inansın bu sözüme.\r\nAlmasın demiş adımı diline,\r\nVay ben ölem, atın toprak üstüme.'),
(43, 'Mesele', 'Serkan Kaya', 'Single', 2014, 'Pop', 'C:\\FFOutput\\mesele.wav', '/resimler/Res/2.jpg', 'Taş bassın yerime dedi, gönlüne,\r\nEmri olur başım gözüm üstüne,\r\nBakmasın demiş bir daha yüzüme,\r\nEmri olur inansın bu sözüme.\r\nAlmasın demiş adımı diline,\r\nVay ben ölem, atın toprak üstüme.\r\nTaş bassın yerime dedi, gönlüne,\r\nEmri olur başım gözüm üstüne,\r\nBakmasın demiş bir daha yüzüme,\r\nEmri olur inansın bu sözüme.\r\nAlmasın demiş adımı diline,\r\nVay ben ölem, atın toprak üstüme.'),
(44, 'Vazgeçtim', 'Yıldız Tilbe', 'Single', 2009, 'Pop', 'C:\\FFOutput\\vaz.wav', '/resimler/Res/4.jpg', 'Taş bassın yerime dedi, gönlüne,\r\nEmri olur başım gözüm üstüne,\r\nBakmasın demiş bir daha yüzüme,\r\nEmri olur inansın bu sözüme.\r\nAlmasın demiş adımı diline,\r\nVay ben ölem, atın toprak üstüme.\r\nTaş bassın yerime dedi, gönlüne,\r\nEmri olur başım gözüm üstüne,\r\nBakmasın demiş bir daha yüzüme,\r\nEmri olur inansın bu sözüme.\r\nAlmasın demiş adımı diline,\r\nVay ben ölem, atın toprak üstüme.'),
(45, 'Nayino', 'Karmate', 'Single', 2012, 'Pop', 'C:\\FFOutput\\nay.wav', '/resimler/Res/3.jpg', 'Taş bassın yerime dedi, gönlüne,\r\nEmri olur başım gözüm üstüne,\r\nBakmasın demiş bir daha yüzüme,\r\nEmri olur inansın bu sözüme.\r\nAlmasın demiş adımı diline,\r\nVay ben ölem, atın toprak üstüme.\r\nTaş bassın yerime dedi, gönlüne,\r\nEmri olur başım gözüm üstüne,\r\nBakmasın demiş bir daha yüzüme,\r\nEmri olur inansın bu sözüme.\r\nAlmasın demiş adımı diline,\r\nVay ben ölem, atın toprak üstüme.');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
