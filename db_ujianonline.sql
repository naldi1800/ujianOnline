-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Agu 2023 pada 07.49
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ujianonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `answer`
--

INSERT INTO `answer` (`id`, `id_user`, `id_soal`, `jawaban`) VALUES
(11, 3, 94, '-1000'),
(12, 3, 95, 'B'),
(13, 3, 97, '5'),
(14, 3, 99, 'D'),
(15, 3, 61, 'Good luck for your test'),
(16, 3, 98, '-12'),
(17, 3, 90, 'Telescope'),
(18, 3, 79, 'Bring'),
(19, 3, 58, 'I expect him not to come'),
(20, 3, 84, ' make Diana get every opportunity'),
(21, 3, 78, 'Being away from school'),
(22, 3, 73, 'for a mobile person a laptop is handier than a PC'),
(23, 3, 164, '9'),
(24, 3, 166, '5'),
(25, 3, 163, '3'),
(26, 3, 165, '4'),
(27, 3, 154, '(5)'),
(28, 28, 130, 'Etika'),
(29, 28, 148, '(1) '),
(30, 28, 152, '(3)'),
(31, 28, 125, 'Akhirnya kami ucapkan selamat bertanding semoga kalian berjaya terima kasih.'),
(32, 28, 139, 'angin'),
(33, 28, 118, 'Terima kasih saya ucapkan.'),
(34, 28, 145, 'hasil percobaan	'),
(35, 28, 122, 'penjelasan'),
(36, 28, 149, 'peredaran dan penyalahgunaan narkoba di indonesia'),
(37, 28, 156, '(1)'),
(38, 28, 142, '1'),
(39, 28, 160, 'Berhati-hati'),
(40, 28, 137, 'Harga cilok dipengaruhi tinggi rendahnya bahan baku pembuatan cilok.'),
(41, 28, 116, 'Saya mengucapkan terima kasih atas kehadirannya dalam kegiatan pesantren kilat ini.'),
(42, 28, 159, 'meskipun'),
(43, 28, 144, 'menggunakan kata kerja aktif untuk menggambarkan proses dan aksi'),
(44, 28, 114, '(3)'),
(45, 28, 128, '(2)'),
(46, 28, 126, '(1) dan (4)'),
(47, 28, 155, 'Teks 1 : menanggapi alur | Teks 2 : menanggapi penokohan'),
(48, 28, 158, 'Penggunaan istilah asing yang terlalu banyak mengganggu pemahaman.'),
(49, 28, 120, 'sebagai ketua kelas yang terpilih saya ingin mengajak semua para teman untuk menjaga kerukunan dari kita.'),
(50, 28, 123, 'ucapan penghormatan'),
(51, 28, 146, 'adalah'),
(52, 28, 147, '(4)'),
(53, 28, 143, '2'),
(54, 28, 115, 'rasa syukur'),
(55, 28, 121, 'kalimat keempat'),
(56, 28, 133, 'kedua'),
(57, 28, 162, 'kata Mojosongo seharusnya Mojo Songo'),
(58, 28, 119, 'naskah'),
(59, 28, 138, 'penyakit  | sistem imun | makanan | mineral'),
(60, 28, 150, '2'),
(61, 29, 121, 'kalimat pertama'),
(62, 29, 136, 'Kalimat utama'),
(63, 28, 98, '-8'),
(64, 28, 166, '5'),
(65, 28, 177, '24 cm'),
(66, 28, 178, '100°'),
(67, 28, 163, '5'),
(68, 28, 173, '4 cm'),
(69, 28, 169, '3√3'),
(70, 28, 175, '4 cm'),
(71, 28, 164, '1'),
(72, 28, 171, ' x = –3 atau x = 9'),
(73, 28, 186, '100'),
(74, 28, 170, 'b = 12 | a = 18                                               '),
(75, 28, 174, 'AC=EF'),
(76, 28, 196, '4'),
(77, 28, 181, '9 dan 8'),
(78, 28, 172, 'y = 5 | x = 15'),
(79, 28, 193, '20 orang'),
(80, 28, 185, '2 dan kuadran 4'),
(81, 28, 176, 'Sisi | sudut | sisi'),
(82, 28, 99, '-4'),
(83, 28, 165, '4'),
(84, 28, 187, 'Akar kuadrat dari'),
(85, 28, 95, '100000'),
(86, 28, 191, 'Sudut siku-siku'),
(87, 28, 183, '190'),
(88, 28, 167, '12√2'),
(89, 28, 189, 'Rp95.000'),
(90, 28, 188, '17 cokelat'),
(91, 28, 94, '-1000'),
(92, 28, 180, '220'),
(93, 28, 195, '115'),
(94, 28, 194, '12 hari'),
(95, 28, 179, '10 cm'),
(96, 28, 182, '2.800'),
(97, 28, 184, '3 satuan'),
(98, 28, 97, '5'),
(99, 28, 197, 'Rp 150.000'),
(100, 28, 190, '75 km'),
(101, 28, 192, 'Rp1.700.000'),
(102, 28, 168, '4√3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `level`
--

CREATE TABLE `level` (
  `id_level` int(16) NOT NULL,
  `nama_level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `level`
--

INSERT INTO `level` (`id_level`, `nama_level`) VALUES
(1, 'admin'),
(2, 'guru'),
(3, 'peserta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `limits`
--

CREATE TABLE `limits` (
  `id` int(11) NOT NULL,
  `id_mapel` varchar(10) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(20) NOT NULL,
  `guru_mapel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`kode_mapel`, `nama_mapel`, `guru_mapel`) VALUES
('BIND-135', 'Bahasa Indonesia', ''),
('BING-246', 'Bahasa Inggris', ''),
('MTK-795', 'Matematika', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shuffle`
--

CREATE TABLE `shuffle` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_mapel` varchar(20) NOT NULL,
  `soal` text NOT NULL,
  `submit` int(1) NOT NULL,
  `nilai` double(10,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `shuffle`
--

INSERT INTO `shuffle` (`id`, `id_user`, `id_mapel`, `soal`, `submit`, `nilai`) VALUES
(20, 29, 'BIND-135', '121,136,150,141,147,130,120,113,134,117,119,132,198,161,159,137,145,129,140,151,144,118,142,122,135,115,154,160,125,123,153,158,124,126,127,114,131,157,128,143,155,138,162,116,148,139,146,152,156,133,149', 0, 0.0000),
(21, 29, 'BING-246', '105,75,110,109,91,90,89,59,61,83,92,88,112,77,93,68,108,73,70,86,67,107,104,71,76,81,78,100,65,111,82,106,66,60,58,62,57,79,101,87,74,72,80,69,85,102,84,63,103', 0, 0.0000),
(22, 27, 'BIND-135', '130,153,142,119,146,157,147,160,116,156,115,134,154,140,114,141,118,148,158,137,161,136,151,162,159,126,138,135,132,145,117,139,120,123,133,128,155,113,131,150,122,124,144,127,129,125,121,152,143,149', 0, 0.0000),
(23, 27, 'BING-246', '81,107,89,109,111,59,65,69,73,67,79,88,57,91,76,66,100,90,61,85,108,78,58,92,102,93,87,105,84,60,101,75,110,71,62,72,80,106,112,74,86,68,70,103,77,63,83,82,104', 0, 0.0000),
(24, 30, 'BIND-135', '155,137,122,152,116,162,136,129,135,143,157,150,133,142,113,131,140,124,127,154,126,125,158,117,148,147,146,134,130,120,119,128,159,139,149,141,156,153,121,161,123,114,160,132,144,151,118,145,138,115', 0, 0.0000),
(25, 28, 'BING-246', '75,79,102,88,107,101,59,83,82,112,71,77,63,100,74,69,91,81,61,67,105,108,93,109,110,86,65,58,80,72,85,62,104,66,76,70,106,84,57,92,68,90,78,103,111,60,87,73,89', 0, 0.0000),
(26, 28, 'BIND-135', '130,148,152,125,139,118,145,122,149,156,142,160,137,159,116,144,114,124,128,155,147,126,146,158,120,123,143,115,121,133,150,162,119,138,134,131,136,127,141,135,153,161,132,151,154,117,113,129,140,157', 0, 0.0000),
(30, 28, 'MTK-795', '98,166,177,178,163,173,169,175,164,186,170,174,196,171,181,172,193,185,176,99,165,187,95,191,183,167,189,188,94,180,190,197,97,184,192,182,179,168,194,195', 1, 17.5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id` int(16) NOT NULL,
  `kode_mapel` varchar(20) NOT NULL,
  `nama_peserta` varchar(255) NOT NULL,
  `nilai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_soal`
--

CREATE TABLE `tb_soal` (
  `id_soal` int(16) NOT NULL,
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(20) NOT NULL,
  `guru_mapel` varchar(255) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `jadwal` varchar(20) NOT NULL,
  `durasi` varchar(40) NOT NULL,
  `soal_ujian` text NOT NULL,
  `pilihan_ganda` text NOT NULL,
  `kunci_jawaban` varchar(255) NOT NULL,
  `extension` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_soal`
--

INSERT INTO `tb_soal` (`id_soal`, `kode_mapel`, `nama_mapel`, `guru_mapel`, `tanggal`, `jadwal`, `durasi`, `soal_ujian`, `pilihan_ganda`, `kunci_jawaban`, `extension`) VALUES
(57, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', '<p>Narrator: What is the best response for the man reply?</p>\r\n', 'Hopefully the jam will never end,I wish the jam is going to be worse,I hope the jam end,Dont worry  just let it flow', 'C', 'png'),
(58, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'Narrator: What is the best response for the man reply?', 'I hope he serves us soon,I expect him not to come,How come he is so lazy?,going to a butterfly farm', 'A', 'png'),
(59, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', '<p>To : Students of SMP Nusantara Jaya, To celebrate the school anniversary, we will hold a ceremony on Wednesday, 23 March, and a choir competition right after the ceremony. Each class may send one team consisting of 15 students for the competition. Three winning teams will be awarded cash prizes and trophies. For more info, meet Mrs. Andini.</p>\r\n\r\n<p>Principal According to the text, 23 March is commemorated as...</p>\r\n', 'Choir Day anniversary,The school’s principal birthday,Mr. Andini’s special day,The school anniversary', 'D', ''),
(60, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'BLook at the picture and choose the best wish!', 'Congratulation for getting a perfect score,Congratulation for being 100 years old,Have a wonderful birthday,Good luck for your examination', 'A', 'png'),
(61, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'Look at the picture and choose the best wish!', 'Good luck for your test,Congratulation for your test,You are amazing,You deserve it', 'A', 'png'),
(62, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', '', 'iron,bronze,silver,gold', 'D', 'png'),
(63, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'The best expression to complete the dialogue below ......', 'Good luck,Wish me luck,Good job,Get well soon', 'B', 'png'),
(65, 'BING-246', 'Bahasa Inggris', '', '27-04-2023', '08:00 - 09:30', '0 jam 30 menit', 'Which one is an expression of hope?', 'Congratulations for being the best graduate,I am sure your parents are very proud of you,Keep up the good work,I am so happy to have a friend like you', 'C', 'png'),
(66, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', '<p>Long, long ago, when the gods and goddesses used to mingle in the affairs of mortals, there was a small kingdom on the slope of Mount Wayang in West Java. The King, named Sang Prabu, was a wise man. He had an only daughter, called Princess Teja Nirmala, who was famous for her beauty but she was not married. One day Sang Prabu made up his mind to settle the matter by a show of strength. After that, Prince of Blambangan, named Raden Begawan had won the competition. Unfortunately, the wicked fairy, Princess Segara fell in love with Raden Begawan and used magic power to render him unconscious and he forgot his wedding. When Sang Prabu was searching, Raden Begawan saw him and soon realized that he had been enchanted by the wicked fairy. The fairy could not accept this, so she killed Raden Begawan. When Princess Teja Nirmala heard this, she was very sad. So a nice fairy took her to the Kahyangan.</p>\r\n\r\n<p>Which one of the following statements is false about Sang Prabu?</p>\r\n', 'Sang Prabu was a father of his only daughter, Sang Prabu was a king of a kingdom in West Java,Sang Prabu was taken to Kahyangan by a wicked fairy,Sang Prabu was a wise man', 'C', ''),
(67, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'The underlined expression show .....', 'An agreement,A greeting,A pleasure,A surprise', 'A', 'png'),
(68, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', '<p>Lia : everything is expensive now.</p>\r\n\r\n<p>Tika : I ..... with you. Even for bus, plane, and ship ticket</p>\r\n', 'agree,come,disagree,go', 'A', ''),
(69, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', '', 'I wanted to,I dont agree,I agree with you,I’m afraid I can’t', 'C', 'png'),
(70, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'The suitable expression to complete the dialogue is ….', 'I totally disagree,I cant disagree,I never disagree,I agree with you', 'A', 'png'),
(71, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'From the dialogue, we may assume that ......', 'Diana agree with Maya,Diana disagrees with Maya,Diana has no idea about what Maya said,Diana cant accept the fact', 'B', 'png'),
(72, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'From this dialogue, we can conclude that Ratna expresses………', 'Disagreement,Anger,Danger,Hanger', 'A', 'png'),
(73, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'From this dialogue, we can assume that Kiara expresses …', 'Agreement,Disagreement,Opinion,Satisfaction', 'A', 'png'),
(74, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'Congratulation on your success in speech contest. \r\nThe sentence is included into the expression of ....', 'Compliment,Congratulation,Praise,Surprise', 'B', ''),
(75, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'Complete the dialogue according the situation below!', 'What is that,That’s a very beautiful handycrafts,I’m glad to hear that,You are the winner', 'B', 'png'),
(76, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'By reading the text, the readers will know about ...', 'the benefit of the product,the nutrition facts of the product,how to consume the product safely,the detailed information about the product', 'D', 'png'),
(77, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'It is assumed that the product is a kind of  ...', 'healthy food,junk food,fresh food,fast food', 'A', 'png'),
(78, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'The purpose of the text is to …', 'tell about the food,get facts about jam,describe about choconut,inform about nutrition facts', 'B', 'png'),
(79, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '08:00 - 09:30', '0 jam 30 menit', 'The word “ Ingredients” closest meaning with …', 'things,subject,product,materials', 'D', 'png'),
(80, 'BING-246', 'Bahasa Inggris', '', '05-02-2023', '20:00 - 21:30', '0 jam 30 menit', 'What shoud you do after opening the Chocunut Jam?', 'save the jam.,eat all the jam.,put it into cupboard.,put the jam in the refrigerator.', 'D', 'png'),
(81, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '20:00 - 21:30', '0 jam 30 menit', 'The text informs …', 'facts about paracetamol tablets,how to buy medicine,product of Anidan,selling the product', 'A', 'png'),
(82, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '20:00 - 21:30', '0 jam 30 menit', 'The word “ storage” closest meaning with …', 'keeping,selling,putting,taking', 'A', 'png'),
(83, 'BING-246', 'Bahasa Inggris', '', '05-02-2023', '20:00 - 21:30', '0 jam 30 menit', 'How muchthe volumedoes the product contain?', '150 ml,950 ml,250 ml,211 ml', 'C', 'png'),
(84, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '20:00 - 21:30', '0 jam 30 menit', 'What is the drink taste ?', 'Milk,Sugar,caffein,Water', 'C', 'png'),
(85, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '20:00 - 21:30', '0 jam 30 menit', 'The notice means that', 'We must buy a mask before entering the building,We should wear a mask to service the customers,We must wear a mask and stay 6 feet apart in the area,You should wear a mask if you are experiencing any symptoms of Covid-19', 'C', 'png'),
(86, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '20:00 - 21:30', '0 jam 30 menit', 'The card above is best given in ... .', 'A marriage event ,A graduation occasion	,A house warming celebration,A thanksgiving day', 'B', 'png'),
(87, 'BING-246', 'Bahasa Inggris', '', '25-05-2023', '20:00 - 21:30', '0 jam 30 menit', 'Why was the card written ?', 'To warn him about his future,To congratulate him on his success,To remind him of achieving brighter opportunities,To encourage him to be optimistic in  facing his future', 'B', 'png'),
(88, 'BING-246', 'Bahasa Inggris', '', '31-07-2023', '23:00 - 13:00', '-10 jam', '<p><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">&ldquo;... wishing that brighter <u>opportunities</u> light up&nbsp; your way...&rdquo;.&nbsp; </span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Calibri,sans-serif\">The underlined word is similar in meaning to ... .</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Chances,Ambitions,Troubles,dreams', 'A', 'png'),
(89, 'BING-246', 'Bahasa Inggris', '', '23-07-2023', '20:00 - 21:42', '0 jam 42 menit', '<p>Mother : You know that Mira always takes sleeping lately to solve her problems. &nbsp;&nbsp;</p>\r\n\r\n<p>Father : That&rsquo;s wrong. It can be dangerous for her life if she doesn&rsquo;t change her bad habit.</p>\r\n', 'Sympathy,Possibility,Agreement,Disagreement', 'C', ''),
(90, 'BING-246', 'Bahasa Inggris', '', '24-07-2023', '20:00 - 21:00', '1 jam', '<p>Nabila: I got this thing from my uncle. I forget what it&rsquo;s called, umm, it&rsquo;s round and it&rsquo;s long and it&rsquo;s used for looking at the starts.<br />\r\nDimas: Do you mean a ....?<br />\r\nNabila: Yes! That&rsquo;s it!</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', 'MicroScope,Telescope,Scissor,Glasses', 'B', ''),
(91, 'BING-246', 'Bahasa Inggris', '', '31-07-2023', '20:00 - 21:00', '1 jam', '<p>Salsa: Mom, I am home. What are you cooking? It smells so good.<br />\r\nMrs. Anang: I am making fruit pudding, please chill it first in the ....</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', 'Cupboard,Refrigerator,Microwave,Bowl', 'B', ''),
(92, 'BING-246', 'Bahasa Inggris', '', '31-07-2023', '20:00 - 21:00', '1 jam', '<p>.... many people standing outside the movie theater.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'There is,There are,There,Is there', 'B', ''),
(93, 'BING-246', 'Bahasa Inggris', '', '31-07-2023', '20:00 - 21:00', '1 jam', '<p>My father is a .... he always advise people about legal problems and defend them in court.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Engineer,Carpenter,Lectuter,Lawyer', 'D', ''),
(94, 'MTK-795', 'Matematika', '', '24-07-2023', '22:54 - 22:57', '0 jam 3 menit', '', '-1000,-3,0.5,0.001', 'D', 'png'),
(95, 'MTK-795', 'Matematika', '', '28-06-2023', '14:05 - 23:08', '0 jam 3 menit', '', '10,100,1000,100000', 'C', 'png'),
(97, 'MTK-795', 'Matematika', '', '02-08-2023', '08:34 - 09:34', '1 jam', '', '3,4,5,6', 'D', 'png'),
(98, 'MTK-795', 'Matematika', '', '01-08-2023', '22:08 - 22:07', '0 jam 59 menit', '', '-8,-12,90,81', 'D', 'png'),
(99, 'MTK-795', 'Matematika', '', '11-08-2023', '13:08 - 14:08', '1 jam', '', '-4,-2,-1,2', 'B', 'png'),
(100, 'BING-246', 'Bahasa Inggris', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Paragraph two tells us about ... .</span></span></span></span></p>\r\n', 'Physical Description of a Cheetah.,The way how a cheetah hunts its prey.,What makes a cheetah different from other animals.,The reason why cheetah belongs to rare animals.', 'A', 'png'),
(101, 'BING-246', 'Bahasa Inggris', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">What is the writer&rsquo;s purpose in writing the message ?</span></span></span></span></p>\r\n', 'To get permission from all students to join the project,To invite all members of Literature Club to review a best selling book,To tell all students that he is interested in reviewing books,To inform all students about the cancellation of a meeting', 'B', 'png'),
(102, 'BING-246', 'Bahasa Inggris', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">&ldquo; It is found<strong><u> mainly </u></strong>in the island of Komodo and on other small islands, Rinca, Padar, and Flores.&rdquo;</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:28px\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">The underlined word is equal in meaning to ... .</span></span></span></span></p>\r\n', 'Mostly,Scarcely,Totally,Severely', 'A', 'png'),
(103, 'BING-246', 'Bahasa Inggris', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Why do you think we use turmeric powder in making fried bananas ?</span></span></span></span></p>\r\n', 'To make our fried bananas taste delicious,To make our fried bananas easy to cook,We use it as the substitute of salt,We use it because it is cheap and available everywhere.', 'A', 'png'),
(104, 'BING-246', 'Bahasa Inggris', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">How did the donkey feel when he saw so many watermelons in the field?</span></span></span></span></p>\r\n', 'Sad ,Touched,Surprised,Overjoyed', 'D', 'png'),
(105, 'BING-246', 'Bahasa Inggris', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">The name &ldquo;Green Miles West&rdquo; is ... .</span></span></span></span></p>\r\n', 'A new name that is given to Green Miles California,A new name that is given to the share holders,A new name that deals with California Gardening Association,A new product being advertised by California Association.', 'A', 'png'),
(106, 'BING-246', 'Bahasa Inggris', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Why did the lecturer not let the writer get into the classroom? Because ... .</span></span></span></span></p>\r\n', 'The lecturer had just finished his teaching materials,The writer came late to attend  the lecture on that day,The lecturer was so disappointed with the writer,The writer forgot where he put his motorbike', 'B', 'png'),
(107, 'BING-246', 'Bahasa Inggris', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp; &nbsp; &nbsp; &nbsp; <u>&nbsp;lecturer</u> &ndash; <u>The writer&rsquo;s</u> &ndash;<u> angry </u>&ndash; <u>because </u>&ndash; <u>was</u> &ndash;<u> late</u> &ndash; <u>he</u> &ndash;<u>came</u> &ndash; <u>classroom </u>&ndash; <u>the</u> &ndash; <u>to</u></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:28px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;&nbsp;&nbsp; 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; 4&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 7&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 8&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 11&nbsp;&nbsp; </span></span></strong></span></span></p>\r\n', '2-1-5-3-4-7-8-11-10-9-6,7-5-3-4-2-1-8-11-10-9-6,4-2-1-8-11-10-9-6-7-5-3,7-5-3-4-2-8-1-10-11-6-9', 'A', ''),
(108, 'BING-246', 'Bahasa Inggris', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p><span style=\"font-size:11.0pt\"><span style=\"font-family:&quot;Calibri&quot;,sans-serif\"><span style=\"color:black\">What do you think we should do after reading the warning ?</span></span></span></p>\r\n', 'We should obey the warning in whatever  condition we are,We should pay no attention to such a warning,We should share our cigarettes with other guys,We should enjoy our cigarettes in public places.', 'A', 'png'),
(109, 'BING-246', 'Bahasa Inggris', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&ldquo; When I am down and ,oh my soul, so weary&rdquo;</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&ldquo;When troubles come and my heart burdened me&rdquo;</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">From the lyric we know that the writer ... .</span></span></span></span></p>\r\n', 'is sad,is doubting her or himself,feels  so frustrated about his life,is so pessimistic about his or her life', 'A', 'png'),
(110, 'BING-246', 'Bahasa Inggris', '', '20-08-2023', '21:21 - 22:00', '0 jam 39 menit', '<p>What should you do first on before going to the party ?</p>\r\n', 'but a present and some foods,Write a greeting card for Amelia,Prepare some foods and cheerinesss,Confirm the attedence by email', 'B', 'png'),
(111, 'BING-246', 'Bahasa Inggris', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p>What will the reader do after reading the announcement?</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Prepare the vision for Monroeville,Make some public places at the Downtown,Open the blogspot to get some information,Discuss with the citizens about the town meeting', 'A', 'png'),
(112, 'BING-246', 'Bahasa Inggris', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p>After Reading the text we know...</p>\r\n', 'the information that ginger can be made into a drink ,the difficulty in making a ginger drink ,the steps in enjoying the ginger drink ,the ways to make ginger drink', 'D', 'png'),
(114, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:32 - 22:32', '1 jam', '<p><br />\r\n<em>(1) Halo, nama Saya Severn Suzuki.&nbsp;</em></p>\r\n\r\n<p><em>(2) Saya berbicara mewakili E.C.O (Enviromental Children Organization).&nbsp;</em></p>\r\n\r\n<p><em>(3) Kami adalah kelompok dari Kanada yang terdiri atas anak-anak berusia 12 dan 13 tahun,&nbsp;</em></p>\r\n\r\n<p><em>(4) yang mencoba membuat perbedaan: Vanessa Suttie, Morga, Geiser, Michelle Quiq dan saya sendiri.</em></p>\r\n\r\n<p>Pernyataan yang mengandung sapaan ditandai dengan nomor ....</p>\r\n', '(1),(2),(3),(4)', 'A', ''),
(115, 'BIND-135', 'Bahasa Indonesia', '', '05-08-2023', '17:33 - 18:34', '0 jam 1 menit', '<p>Para hadir yang terhormat,</p>\r\n\r\n<p><em>Izinkan saya mewakili teman-teman menyampaikan kesan selama enam tahun kami&nbsp;</em><em>bersekolah di sini. Selama berada di sini, Bapak dan Ibu Guru telah membimbing kami dengan penuh kesabaran. Kami tidak hanya diajarkan ilmu pengetahuan, tetapi juga keterampilan dan budi pekerti. Mudah-mudahan semua itu dapat menjadi bekal kami dalam menghadapi kehidupan di masa yang akan datang.</em></p>\r\n\r\n<p>Cuplikan pidato di atas berisi ungkapan &hellip; .</p>\r\n', 'rasa syukur,terima kasih,harapan,permintaan maaf', 'C', ''),
(116, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '18:34 - 19:34', '1 jam', '<p><br />\r\nKegiatan pesantren kilat ini merupakan kegiatan rutin di bulan Ramadhan dalam rangka memotivasi para siswa agar berakhlak dan berkepribadian baik. [...]. Apabila dalam penyelenggaraan kegiatan ini banyak kekurangan, panitia mohon maaf.</p>\r\n\r\n<p>Kalimat yang tepat untuk melengkapi teks pidato tersebut adalah ....</p>\r\n', 'Kami atas nama panitia mengucapkan selamat datang untuk melaksanakan pesantren kilat.,Puji syukur kita panjatkan kepada Tuhan yang senantiasa memberikan kenikmatan kepada kita.,Demikian sambutan dari saya selaku ketua panitia sehingga kegiatan ini bermanfaat.,Saya mengucapkan terima kasih atas kehadirannya dalam kegiatan pesantren kilat ini.', 'C', ''),
(117, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:35 - 22:35', '1 jam', '<p>&nbsp;</p>\r\n\r\n<p>Berikut ini adalah hal-hal yang harus ada dalam naskah pidato:</p>\r\n\r\n<p>1. Salam penutup</p>\r\n\r\n<p>2. Isi pidato</p>\r\n\r\n<p>3. Pembuka</p>\r\n\r\n<p>4. Penutup</p>\r\n\r\n<p>5. Salam pembuka</p>\r\n\r\n<p>Tata urutan yang baik dalam naskah pidato adalah ....</p>\r\n\r\n<p>&nbsp;</p>\r\n', '3-5-2-1-4,5-3-2-4-1,3-5-2-4-1,5-3-2-1-4', 'B', ''),
(118, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:35 - 22:35', '1 jam', '<p>Pagi ini kita dapat berkumpul dalam acara peringatan hari Kartini yang jatuh setiap tanggal 21 April. R. A. Kartini merupakan salah seorang pejuang wanita sangat gigih dan memiliki semangat juang yang tinggi. [...]</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kalimat yang tepat untuk menutup pidato di atas adalah ....</p>\r\n', 'Terima kasih kepada Bapak/Ibu wali murid.,Semoga kita dapat meneladani perjuangan R. A. Kartini.,Semoga acara ini berjalan dengan lancar.,Terima kasih saya ucapkan.', 'B', ''),
(119, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:35 - 22:36', '0 jam 1 menit', '<p>&nbsp;</p>\r\n\r\n<p>Seseorang berpidato dengan cara menuliskan pokok-pokok pikiran yang akan disampaikan. Setelah itu, ia menyampaikan masalah yang telah disiapkannya itu dengan kata-katanya sendiri. Orang tersebut berpidato dengan menggunakan metode ....</p>\r\n', 'impromptu,naskah,menghafal,ekstemporan', 'D', ''),
(120, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:37 - 22:37', '1 jam', '<p>Selanjutnya pada kesempatan yang berbahagia ini,&nbsp;<strong><em>sebagai ketua kelas terpilih saya ingin mengajak semua para teman-teman untuk menjaga kerukunan daripada kita</em>.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kalimat yang tepat untuk memperbaiki kalimat bercetak miring di atas adalah ....</p>\r\n', 'sebagai ketua kelas yang terpilih saya ingin mengajak semua teman-teman untuk menjaga kerukunan kita.,sebagai ketua kelas yang terpilih saya ingin mengajak para teman untuk menjaga kerukunan dari kita.,sebagai ketua kelas yang terpilih saya ingin mengajak teman-teman untuk menjaga kerukunan di antara kita.,sebagai ketua kelas yang terpilih saya ingin mengajak semua para teman untuk menjaga kerukunan dari kita.', 'C', ''),
(121, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:39 - 22:39', '1 jam', '<p>1) Betapa sulitnya seorang pecandu rokok untuk menghentikan kebiasaan merokoknya. 2) Seberapa mahalpun harga rokok tidak dapat menghentikan mereka. 3) Di Shanghai, Cina, petani dan perokok menghabiskan uang untuk membeli rokok lebih banyak daripada yang dipakai untuk membeli gandum, daging, dan buah-buahan sebagai kebutuhan utama mereka. 4) Oleh sebab itu, hentikan merokok sebelum candu rokok melekat pada diri Anda.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kalimat di atas yang menunjukkan ajakan adalah ...</p>\r\n', 'kalimat pertama,kalimat kedua,kalimat ketiga,kalimat keempat', 'D', ''),
(122, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:39 - 22:39', '1 jam', '<p><em>Musim kemarau yang panjang pada tahun ini perlu kita waspadai, terutama mengenai kekurangan air dan musibah kebakaran. Jangan sampai peristiwa ini terulang kembali seperti dua tahun yang lalu. Untuk itu, perlu kita jaga keselamatan lingkungan ini.</em></p>\r\n\r\n<p><em>﻿</em>Penggalan pidato tersebut berisi....</p>\r\n', 'penjelasan,permintaan,imbauan,perintah', 'C', ''),
(123, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:40 - 22:40', '1 jam', '<p>Pertama-tama, marilah kita panjatkan puji dan syukur ke hadirat Tuhan Yang Mahakuasa. Atas nikmat dan karunia-Nya, pada kesempatan hari ini, kita bisa berkumpul bersama di tempat ini dalam keadaan sehat tanpa kurang suatu apapun.</p>\r\n\r\n<p>Hal yang disampaikan pada bagian struktur teks pidato tersebut adalah ....</p>\r\n', 'salam pembuka,ucapan penghormatan,ucapan syukur,harapan orator', 'C', ''),
(124, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:42 - 22:42', '1 jam', '<p>&nbsp;</p>\r\n\r\n<p>OSIS SMP Negeri 12 Makassar melaksanakan program penyuluhan dengan tema &quot;Kenakalan Remaja&quot;. Kegiatan ini menghadirkan narasumber dari pihak kepolisian. Sebagai ketua OSIS, Naomi menyampaikan pidatonya.</p>\r\n\r\n<p><strong>Bagian penutup pidato</strong>&nbsp;Naomi yang tepat sesuai dengan ilustrasi tersebut adalah ...</p>\r\n', 'Selamat pagi saya ucapkan kepada sekolah narasumber bapak-ibu guru dan teman-teman yang telah hadir pada acara itu.,Bapak Ibu dan teman-teman marilah kita bersyukur kepada Tuhan yang telah memberikan nikmat kepada kita sehingga kita bisa berkumpul di sini.,Teman-teman yang saya sayangi kegiatan ini bermaksud agar kita mampu menjaga diri dari perbuatan yang tercela dan berbahaya.,Demikian teman-teman sesuai dengan program yang telah kita sepakati bersama mari kita ikuti kegiatan ini sampai selesai. Semoga kita dapat mengambil hikmahnya.', 'D', ''),
(125, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:44 - 22:44', '1 jam', '<p><br />\r\nPertama-tama, marilah kita berdo&rsquo;a semoga pertandingan ini lancar dan sukses. Anak-anak yang kami banggakan, tunjukkanlah ketrampilan, ketangguhan, dan sportivitas kalian sebagai atlit. Di tempat inilah, apa yang kalian miliki dipertaruhkan demi mengejar prestasi. Kalian harus berjuang dengan keras. Hal yang paling penting adalah semangat dan kebersamaan. &hellip;..</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kalimat penutup pidato yang tepat untuk isi pidato tersebut adalah. &hellip;</p>\r\n', 'Tumbuhkanlah semangat dan sportifitas yang tinggi semoga membawa kesuksesan.,Kami percaya dengan usaha keras dan kerja sama yang baik pasti menang.,Bersyukurlah kalian mempunyai semangat yang tinggi untuk mengejar prestasi.,Akhirnya kami ucapkan selamat bertanding semoga kalian berjaya terima kasih.', 'D', ''),
(126, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:44 - 22:44', '1 jam', '<p>Perhatikan kutipan berikut ini!</p>\r\n\r\n<p><em>(1) Hadirin sekalian, apa yang dimaksud dengan apotek hidup? (2) Apotek hidup adalah tumbuh-tumbuhan yang berkhasiat sebagai obat dan ditanam di dalam rumah. (3). Tumbuhan yang dipelihara ini dapat dijadikan obat penyakit tertentu. (4) Misalnya pepaya, daunnya berguna untuk menyembuhkan penyakit malaria.</em></p>\r\n\r\n<p>Kalimat yang mengungkapkan gagasan ditunjukkan nomor ...</p>\r\n', '(1) dan (2),(2) dan (3),(3) dan (4),(1) dan (4)', 'B', ''),
(127, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:44 - 22:45', '0 jam 1 menit', '<p><em>Bacalah teks pidato berikut ini !</em></p>\r\n\r\n<p><em>Siapa yang mesti dituntut untuk dipercaya atas terjadinya polusi ruang jika bukan kita sendiri selaku penghuninya ? bila kita menyadari bahwa menjaga kesehatan lebih utama daripada memulihkannya dan jika kita yakin bahwa kebersihan itu adalah pangkal kesehatan, kita tidak perlu diperintah lagi. Marilah kita berbuat sesuatu yang terbaik bagi kesehatan kita.</em></p>\r\n\r\n<p>Topik kutipan teks pidato tersebut adalah &hellip;.</p>\r\n', 'Menjaga kesehatan lebih utama daripada memulihkan,Upaya pemerintah dalam mengatasi polusi ruang,Kebersihan merupakan titik pangkal kesehatan,Penghuni bertanggungjawab terhadap polusi ruang', 'D', ''),
(128, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:45 - 22:45', '1 jam', '<p><u>Coba pikirkan</u>&nbsp;(1)jutaan hewan yang&nbsp;<u>kehilangan rumahnya (2)&nbsp;</u>setiap hari akibat pohon yang ditebang. Jika<u>&nbsp;daur ulang berkelanjutan (3), kita dapat menyelamatkan (4)&nbsp;</u>banyak hutan yang indah.</p>\r\n\r\n<p>kata-kata yang bermakna persuasif dinyatakan dengan nomor ....</p>\r\n', '(1),(2),(3),(4)', 'D', ''),
(129, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:47 - 22:47', '1 jam', '<p>&nbsp;Cara memersuasi di bawah ini yang menggunakan pendekatan etika adalah&hellip;</p>\r\n', '“Daur ulang adalah langkah yang tepat untuk dilakukan. Dengan membuang-buang sumber daya yang terbatas kita sama saja sedang melakukan tindakan amoral yaitu merampok masa depan para generasi penerus”.,“Coba pikirkan berapa banyak hewan-hewan di luar sana yang kehilangan rumahnya setiap hari karena pohon-pohon selalu ditebang. Dengan menerapkan program daur ulang kita bisa menyelamatkan hutan indah yang menjadi rumah mereka”,“Anda tentu tahu bahwa sumber daya alam yang tersedia sangatlah terbatas. Anda dan saya kita bisa membuatnya bertahan lebih lama dengan menerapkan program daur ulang\".,“Jika anda tidak tahu bagaimana cara memperbaikinya tolong berhenti merusaknya!”.', 'A', ''),
(130, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:48 - 22:48', '1 jam', '<p>&ldquo;Di sini anda adalah delegasi Negara-negara anda. Pengusaha, anggota perhimpunan, wartawan, atau politisi. Akan tetapi, sebenarnya anda adalah ayah, ibu, saudara laki-laki, saudara perempuan, paman, bibi, dan anda semua adalah anak dari seseorang&rdquo;.</p>\r\n\r\n<p>Kalimat di atas merupakan cara&nbsp;memersuasi dengan menggunakan pendekatan &hellip; .</p>\r\n', 'Etika,Logika,Emosi,Persuasi', 'C', ''),
(131, 'BIND-135', 'Bahasa Indonesia', '', '30-08-2023', '21:50 - 22:50', '1 jam', '<p>&nbsp;</p>\r\n\r\n<p>Perhatikan kutipan berikut!</p>\r\n\r\n<p><em>Ujian dan asahan menjadi dua sisi mata uang yang tidak terpisahkan. Bukan hanya beban yang diberikan kepada kita, tetapi kesempatan untuk memperbaiki diri juga diajarkan kepada kita. Tatkala ujian itu terasa semakin berat, asahannya juga semakin meningkat. Itulah proses menjadi bangsa yang tahan banting, yang kokoh, dan yang mampu memenangkan gelanggang pertandingan</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kata nomina yang ada dalam kutipan di atas berjumlah....</p>\r\n', 'Dua,Tiga,Empat,Lima', 'A', ''),
(132, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:50 - 22:50', '1 jam', '<p>Perhatikan kutipan berikut!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Marilah kita wujudkan hidup sehat tanpa asap rokok yang diawali dari diri kita sendiri. Mudah-mudahan di hari bebas tembakau sedunia ini, kita akan lebih menyayangi diri kita sendiri dengan dimulai dari menjaga udara sekitar. Demikian pidato yang dapat disampaikan. Mohon maaf jika ada kata-kata yang kurang berkenan. Wassalamualaikum Wr. Wb.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kata kerja pasif yang ada dalam kutipan di atas, kecuali....</p>\r\n', 'dimulai,disampaikan,di hari,diawali', 'C', ''),
(133, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:51 - 22:51', '1 jam', '<p>Perhatikan kutipan berikut!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Salam sehat dan selamat pagi untuk para guru-guru dan juga para sahabat-sahabat satu perjuangan. Puji syukur kehadirat Allah Swt. atas segala nikmat yang telah diberikan kepada&nbsp;<u>kita</u>&nbsp;berupa kesehatan pada hari ini sehingga pada pagi ini kita dapat berkumpul bersama-sama di sini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kata yang digaris bawah termasuk kata ganti orang....</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'pertama,kedua,ketiga,keempat', 'A', ''),
(134, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:53 - 22:53', '1 jam', '<p><br />\r\nPerhatikan kutipan berikut!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Pencemaran tidak hanya bakteri koli, berbagai limbah yang secara langsung maupun tidak langsung dapat membahayakan kesehatan bagi masyarakat. Sebab pemenuhan kebutuhan rumah tangga, seperti air minum bersumber pada air sungai. Diharapkan bagi&nbsp;<u>mereka&nbsp;</u>yang tinggal di bantaran sungai diharapkan membuat kamar mandi permanen agar tinja sebagai biang bakteri koli tidak merembes ke sungai dan tidak membuang sampah pada aliran sungai.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kata yang digaris bawah termasuk kata ganti orang....</p>\r\n', 'pertama,kedua,ketiga,empat', 'C', ''),
(135, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:53 - 22:53', '1 jam', '<p>Baik buruknya keadaan sekarang semua bergantung dari cara kita menyikapinya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kalimat tersebut adalah contoh penggunaan...</p>\r\n', 'Antonim,Sapaan,Kosakata bidang,Kosakata abstrak', 'A', ''),
(136, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:54 - 22:54', '1 jam', '<p>Banyaknya berita hoax yang beredar di sosial media, sebaiknya kita jangan mudah terprovokasi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kalimat tersebut adalah...</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'Kalimat aktif,Kalimat persuasif,Kalimat abstrak,Kalimat utama', 'B', ''),
(137, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:55 - 22:55', '1 jam', '<p>Kalimat yang menggunakan kata antonim, kecuali...</p>\r\n', 'Harga cilok dipengaruhi tinggi rendahnya bahan baku pembuatan cilok.,Pekerjaan Ayah sehari-hari adalah tanam- menanam sayur.,Kenaikan harga barang dipicu oleh aktivitas jual beli yang memerlukan proses panjang.,Sikap menentukan baik buruknya penilaian orang lain.', 'B', ''),
(138, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:58 - 22:58', '1 jam', '<p>Bacalah kutipan isi pidato berikut!</p>\r\n\r\n<p>Dewasa ini banyak sekali penyakit baru bermunculan karena berkurangnya sistem imun dalam tubuh kita. Jika sistem imun dalam tubuh kita melemah, tubuh mudah sekali terkena penyakit. Selain itu, makan makanan yang kita konsumsi tidak lagi mengandung vitamin dan mineral yang lebih baik.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berdasarkan ciri kebahasaan, istilah bidang ilmu/kosakata pada paragraf tersebut adalah ... .</p>\r\n', 'penyakit | sistem imun | vitamin | mineral,penyakit | sistem | imun | melemah | vitamin,penyakit  | sistem imun | makanan | mineral,penyakit | makanan | konsumsi | mineral', 'A', ''),
(139, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:58 - 22:58', '1 jam', '<p>Yang termasuk kata benda abstrak adalah ... .</p>\r\n', 'buku,angin,api,kegembiraan', 'D', ''),
(140, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:59 - 22:00', '0 jam 1 menit', '<p><br />\r\nKemajuan zaman dan teknologi menjadi pemicu bagi kita untuk (...manfaat...) sebagai peluang (...hasil...) keuntungan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kata berimbuhan yang tepat dalam rumpang kalimat tersebut agar menjadi kalimat aktif yang baik adalah ... .</p>\r\n', 'memanfaatkannya | menghasilkan,dimanfaatkannya | dihasilkan,memanfaat | hasilkan,memanfaatkannya | berhasil', 'A', ''),
(141, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p><br />\r\nContoh kalimat yang tepat dalam pidato persuasif menggunakan kata emotif adalah ... .</p>\r\n', 'Ayo kobarkan semangat kita yang sempat padam di dalam dada!,Ayo pergi dari sini dan jangan pernah kembali lagi!,Ayo duduklah di kursi itu jangan terus berdiri!,Ayo kita mulai saja acara ini supaya tidak berlarut-larut!', 'A', ''),
(142, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:00 - 22:01', '0 jam 1 menit', '<p>Perhatikan kutipan pidato berikut!</p>\r\n\r\n<p>(1) Masalah sampah membuat lingkungan menjadi kotor dan bau. (2) Akan tetapi, saya mengajak hadirin untuk ikut serta mengatasi masalah sampah ini. (3) Hadirin dapat menggunakan kembali dan mendaur ulang sampah. (4) Kedua cara tersebut perlu dilakukan agar lingkungan kita terbebas dari masalah sampah.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kesalahan penggunaan konjungsi dalam kutipan pidato tersebut ditunjukkan oleh kalimat dengan nomor &hellip; .</p>\r\n', '1,2,3,4', 'B', ''),
(143, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:11 - 22:11', '1 jam', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Bacalah paragraf-paragraf berikut dengan cermat!</span></span></span></strong></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Pada kegiatan B penulis mendapatkan hasil bahwa ketika beberapa tetes tinta dimasukan&nbsp; kedalam air, tinta akan bercampur air dalam beberapa menit tanpa diaduk. Tinta bercampur dengan air secara keseluruhan.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Keindahan Pantai Kuta pun sudah terkenal sejak dahulu. Bahkan, para wisatawan mancanegara sudah meramaikan Pantai Kuta sejak awal tahun 1970-an. Hal tersebut tentu saja berdampak positif &nbsp;bagi masyarakat Bali secara umum, terutama terkait dengan kondisi ekonomi masyarakat setempat.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><a href=\"https://hellosehat.com/penyakit/rubella-campak-jerman/\" style=\"color:blue; text-decoration:underline\" target=\"_blank\" title=\"Rubella (Campak Jerman)\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Rubella</span></span></a><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">, atau biasa disebut campak jerman adalah penyakit menular yang disebabkan oleh virus&nbsp;<em>rubella</em>.&nbsp;Gejala rubella yang paling utama adalah demam ringan dan bintik-bintik merah di kulit. Rubella sering terjadi pada bayi dan anak yang belum atau tidak diimunisasi.&nbsp;</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Pemerintah pusat akan mendorong pemerintah daerah di Sulawesi Tengah untuk mengaktifkan kembali aktivitas perekonomian. Selain itu, pemerintah pusat pun akan berupaya memenuhi kebutuhan masyarakat Palu, Donggala, dan Sigi, yaitu jaringan listrik dan komunikasi.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Paragraf yang termasuk teks laporan percobaan ditandai dengan nomor ....</span></span></span></span></span></p>\r\n', '1,2,3,4', 'A', ''),
(144, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '12:13 - 13:13', '1 jam', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"color:black\">Berikut ini ciri kebahasaan teks laporan percobaan sesuai dengan teks tersebut, <u>kecuali</u>....</span></span></span></span></p>\r\n', 'menggunakan kata kerja aktif untuk menggambarkan proses dan aksi,sangat sering menggunakan kata ganti orang,tidak ada urutan waktu yang ada urutan kegiatan,menggunakan kata tugas untuk menjaga kepaduan antarkalimat/paragraf', 'B', 'png'),
(145, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:16 - 22:16', '1 jam', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Teks tersebut merupakan kutipan teks laporan percobaan bagian ....</span></span></span></span></span></p>\r\n', 'kajian pustaka,hasil percobaan	,pembahasan hasil percobaan,prosedur kerja', 'B', 'png'),
(146, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:18 - 22:18', '1 jam', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Kata kerja aktif dalam teks tersebut adalah ....</span></span></span></span></span></p>\r\n', 'adalah,terdapat,berada,memakan', 'D', 'png'),
(147, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:19 - 22:19', '1 jam', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Bacalah kalimat-kalimat berikut dengan cermat!</span></span></span></strong></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Mentega dan minyak mengandung lemak karena saat dioleskan ke kertas buram, kertas tersebut berubah menjadi transparan.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Kita dapat mempunyai slime yang aman digunakan tanpa menggunakan boraks setelah melakukan percobaan ini.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Ragi dikenal sebagai bahan yang umum digunakan dalam fermentasi untuk menghasilkan etanol.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Manfaat percobaan ini adalah </span></span><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">dapat mengetahui perubahan berat kentang yang dimasukan pada larutan gula sebanyak 15% dan 50%, dan pada air biasa.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Kalimat kompleks (majemuk) yang mengandung hubungan penyebaban ditandai nomor .... </span></span></span></span></span></p>\r\n', '(1),(2),(3),(4)', 'A', ''),
(148, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:20 - 22:21', '0 jam 1 menit', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Bacalah paragraf-paragraf berikut dengan cermat!</span></span></span></strong></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Melalui media cetak dan elektronik kita dapat menyaksikan bagaimana para pengedar narkoba membangun jaringan secara intensif. Akibatnya, peredaran narkoba begitu merebak hingga ke daerah-daerah pelosok bahkan sampai ke lembaga pemasyarakatan.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Mungkin banyak di antara hadirin yang belum memahami isu globalisasi. Untuk itu, kali ini saya ingin mengajak hadirin untuk mengingat kembali beberapa pola hidup yang dapat mengakibatkan globalisasi, apa pengaruhnya bagi kita semua, dan bagaimana kita menghadapi pengaruhnya.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Idealnya, biaya pembangunan di suatu negara harusnya dibiayai oleh rakyat di negara tersebut melalui setoran pajak. Inilah mengapa dikatakan pajak sebagai harga diri bangsa. Karena pajak sebagai harga diri bangsa, seharusnya setiap wajib pajak merasa bangga setelah melakukan kewajibannya kepada negara.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Langkah pertama adalah dengan memasukkan air hangat dengan takaran sesuai selera. Selanjutnya, mencelupkan teh gantung ke dalam gelas berisi&nbsp; air hangat. Jangan lupa memasukkan gula secukupnya kemudian aduk hingga larut. Teh siap di sajikan.</span></span></span></span></li>\r\n</ol>\r\n', '(1) ,(2) ,(3) ,(4) ', 'D', ''),
(149, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:21 - 22:21', '1 jam', '<p><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Kutipan teks pidato tersebut bertopik ....</span></span></span></p>\r\n', 'peredaran dan penyalahgunaan narkoba di indonesia,pemberantasan mata rantai peredaran narkoba,antisipasi penyalahgunaan narkoba di kalangan peserta didik,pemberlakuan hukuman bagi pengedar narkoba', 'C', 'png');
INSERT INTO `tb_soal` (`id_soal`, `kode_mapel`, `nama_mapel`, `guru_mapel`, `tanggal`, `jadwal`, `durasi`, `soal_ujian`, `pilihan_ganda`, `kunci_jawaban`, `extension`) VALUES
(150, 'BIND-135', 'Bahasa Indonesia', '', '06-08-2023', '21:24 - 22:24', '1 jam', '<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; margin-left:7px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:37px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">(1)</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:522px\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Kebersihan lingkungan merupakan hal yang sangat penting guna menjaga kesehatan diri sendiri dan lingkungan sekitar. Lingkungan yang sehat akan meminimalisasi penyebaran penyakit dan akan memberikan kenyamanan saat berada di lingkungan tersebut. Hal tersebut berlaku pula untuk lingkup sekolah.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:1px solid black; border-right:none; border-top:none; vertical-align:top; width:37px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">(2)</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:522px\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Kenyamanan lingkungan sekolah menjadi faktor pendorong keberhasilan proses belajar mengajar. Dengan lingkungan sekolah yang nyaman, peserta didik dan guru memiliki kesempatan untuk melaksanakan kegiatan pembelajaran yang aktif, kreatif, efektif, dan menyenangkan. </span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:1px solid black; border-right:none; border-top:none; vertical-align:top; width:37px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">(3)</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:522px\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Maka dari itu, marilah kita sebagai warga sekolah dapat menjaga kebersihan lingkungan sekolah. Mulailah dari diri sendiri, seperti membuang sampah pada tempatnya dan tidak meninggalkan barang-barang di laci karena dapat menjadi sarang nyamuk.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:none; vertical-align:top; width:37px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">(4)</span></span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:522px\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Dengan demikian, menjaga kebersihan lingkungan,khususnya di lingkungan sekolah, merupakan hal yang sangat penting dan bukan hal yang layak ditunda-tunda. Kelasku bersih, prestasi mudah diraih!</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Bagian isi teks pidato persuasif yang berupa pendahuluan yang berisi pendapat atau sudut pandang orator (pernyataan posisi) adalah ditandai dengan nomor ....</span></span></span></span></span></p>\r\n', '1,2,3,4', 'A', ''),
(151, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:27 - 22:27', '1 jam', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\">(1) Malam ini Vina tengah menengadahkan kepalanya, berusaha menyapa bulan. (2) Kendati penantiannya telah habiskan lebih dari separuh kesabarannya, bulan tak kunjung membalas sapanya. (3) Rupanya, awanlah yang menghalangi terangnya bulan. (4) Sebenarnya, malam ini terasa lebih dingin dari malam-malam sebelumnya. (5) Namun, entah mengapa dingin itu tak ia rasakan sedikit pun. (6) Mungkin pikiran tentang kejadian tadi siang yang hilangkan rasa itu.</span></span></span></p>\r\n\r\n<p><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Kalimat ekspresif yang menggambarkan ketidaksabaran tokoh ditandai dengan nomor ....</span></span></span></p>\r\n', '(2),(3),(5),(6)', 'A', ''),
(152, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:29 - 22:29', '1 jam', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Bacalah kalimat-kalimat berikut dengan cermat!</span></span></strong></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Sebagian besar pihak yang menjadi sponsor Asian Para Games 2018 sempat mengira ajang tersebut sama dengan Asian Games. </span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Dalam standar olimpiade saat ini, setiap medali emas yang menjadi hadiah bagi para atlit pemenang mengandung kadar emas sebesar 6 gram yang dicampur dengan perak sebesar 494 gram. </span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Lagu&ldquo;Laskar Pelangi&rdquo; memberikan inspirasi bahwa &rdquo;mimpi&rdquo; bisa menjadi &rdquo;kunci&rdquo; yang bisa digunakan untuk membuka harapan kita untuk &rdquo;menaklukan dunia&rdquo; yang kemudian menjadi penyemangat untuk meraih cita-cita. </span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">BNPB menyemprotkan cairan desinfektan melalui udara dengan metode <em>water&nbsp;boming</em>&nbsp;di titik lokasi gempa likuifaksi, Balaroa dan Sigi, Sulawesi Tengah, Kamis, 18 Oktober 2018. </span></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:28px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Kalimat yang termasuk teks tanggapan ditandai dengan nomor ....</span></span></span></span></span></p>\r\n', '(1),(2),(3),(4)', 'C', ''),
(153, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:31 - 22:31', '1 jam', '<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\">(1) Meskipun lukisan &ldquo;Dini Hari&rdquo; dibuat berdasarkan imajinasi pelukisnya, tetapi pemandangan alam yang dilukiskannya itu seolah-olah benar-benar ada dan bukan imajinasi. (2) Bentuk benda-benda yang dilukiskan tidak beda dengan benda dalam kehidupan nyata.(3) Namun, dari sisi komposisi tampilan lukisan tersebut terasa kurang lengkap. (4) Lukisan hanya menampilkan unsur tumbuhan (pohon pinus dan rerumputan). (5) Unsur-unsur kehidupan yang lain seperti binatang dan manusia tidak ditampilkan. (6) Hal inilah yang menyebabkan lukisan ini terkesan &ldquo;kering&rdquo; atau &ldquo;kurang lengkap&rdquo;.</span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Kalimat berisi kritikan dalam teks tersebut ditandai dengan nomor ....</span></span></span></span></span></p>\r\n', '(1) (2) (3) (4),(2) (3) (4) (5),(3) (4) (5) (6),(4) (5) (6) (1)', 'C', ''),
(154, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:33 - 22:33', '1 jam', '<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; margin-left:7px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:1px solid black; border-right:none; border-top:1px solid black; vertical-align:top; width:36px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">(1)</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:top; width:522px\">\r\n			<p style=\"margin-right:5px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">&ldquo;5 Cm&rdquo;</span></span><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"> adalah </span></span><a href=\"http://id.wikipedia.org/wiki/Film_drama\" style=\"color:blue; text-decoration:underline\" title=\"Film drama\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">film drama</span></span></a><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"> Indonesia yang dirilis pada </span></span><a href=\"http://id.wikipedia.org/wiki/12_Desember\" style=\"color:blue; text-decoration:underline\" title=\"12 Desember\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">12 Desember</span></span></a><a href=\"http://id.wikipedia.org/wiki/2012\" style=\"color:blue; text-decoration:underline\" title=\"2012\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">2012</span></span></a><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">. Film ini merupakan film yang diadaptasi dari sebuah novel dengan </span></span><a href=\"http://id.wikipedia.org/wiki/5_cm_%28novel%29\" style=\"color:blue; text-decoration:underline\" title=\"5 cm (novel)\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">judul yang sama</span></span></a><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"> karya Donny Dhirgantoro. Film yang disutradarai oleh </span></span><a href=\"http://id.wikipedia.org/wiki/Rizal_Mantovani\" style=\"color:blue; text-decoration:underline\" title=\"Rizal Mantovani\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Rizal Mantovani</span></span></a><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"> ini diperankan oleh Fedi Nuril sebagai Genta, Denny Sumargo sebagai Arial, Raline Shah sebagai Riani, Igor Saykoji sebagai Ian, Herjunot Ali sebagai Zafran, dan Pevita Pearce sebagai Adinda. </span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:1px solid black; border-right:none; border-top:none; vertical-align:top; width:36px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">(2)</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:522px\">\r\n			<p style=\"margin-right:5px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Film ini secara garis besar bercerita tentang persahabatan dan nasionalisme. Genta, Arial, Zafran, Riani, dan Ian adalah lima remaja yang telah menjalin persahabatan sepuluh tahun lamanya. Mereka memiliki karakter yang berbeda-beda. Suatu hari mereka berlima merasa jenuh dengan persahabatan mereka. Akhirnya, kelimanya memutuskan untuk berpisah, tidak saling berkomunikasi satu sama lain selama tiga bulan lamanya. </span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:1px solid black; border-right:none; border-top:none; vertical-align:top; width:36px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">(3)</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:522px\">\r\n			<p style=\"margin-right:5px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Selama tiga bulan berpisah mereka diliputi kerinduan. Selama itu pula banyak yang terjadi dalam kehidupan mereka berlima, sesuatu yang mengubah diri mereka masing-masing untuk lebih baik dalam menjalani kehidupan. Setelah tiga bulan berselang mereka berlima pun bertemu kembali dan merayakan pertemuan mereka dengan sebuah perjalanan penuh impian dan tantangan. Sebuah perjalanan hati demi mengibarkan Sang Saka Merah Putih di puncak tertinggi Jawa yaitu di Puncak </span></span><a href=\"https://id.wikipedia.org/wiki/Semeru\" style=\"color:blue; text-decoration:underline\" title=\"Semeru\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Mahameru</span></span></a><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"> pada tanggal 17 Agustus. Sebuah perjalanan penuh perjuangan yang membuat mereka semakin mencintai Indonesia.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:none; border-left:1px solid black; border-right:none; border-top:none; vertical-align:top; width:36px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">(4)</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:none; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:522px\">\r\n			<p style=\"margin-right:5px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Judul film ini unik dan sederhana tetapi memiliki cerita yang sangat menakjubkan. Film ini dengan cerdas merekatkan karakter kuat pada masing-masing tokoh. Hal ini yang membuat &ldquo;5 Cm&rdquo; unggul dari film lain. Biasanya, pada permulaan film kita dibiarkan menebak seperti apa karakter para tokoh. Namun, pada film &ldquo;5 Cm&rdquo; kita tidak dibiarkan menebak sebab karakter tokoh sudah terbaca kuat di bagian awal.&nbsp;</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:none; border-top:none; vertical-align:top; width:36px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">(5)</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:522px\">\r\n			<p style=\"margin-right:5px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Terdapat beberapa perbedaan antara novel dan film &ldquo;5 Cm&rdquo;. Dalam novel jalan cerita digambarkan sangat detail sedangkan dalam film ada beberapa bagian yang dikurangi. Demikian pula dalam penggambaran latar. Pada film Gunung Mahameru dan sekitarnya kurang diekspos secara luas, hanya sebagian yang kita lihat. Hal tersebut sangat jauh berbeda dengan penggambaran latar yang sama pada novel</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Bagian konteks pada teks tersebut ditandai dengan nomor ....</span></span></span></span></span></p>\r\n', '(1),(3),(4),(5)', 'A', ''),
(155, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:33 - 22:33', '1 jam', '<table cellspacing=\"0\" class=\"MsoTableGrid\" style=\"border-collapse:collapse; border:none; margin-left:36px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; width:239px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\"><span style=\"color:black\">Teks 1</span></span></strong></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; width:291px\">\r\n			<p style=\"text-align:center\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\"><span style=\"color:black\">Teks 2</span></span></strong></span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; vertical-align:top; width:239px\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\"><span style=\"color:black\">Pada akhir cerita, alurnya terkesan dipaksakan dengan pembentukan keluarga antarsahabat. Ditambah lagi dengan keturunan yang mempunyai sifat dan karakteristik yang sama dari para orang tuanya. </span></span></span></span></p>\r\n			</td>\r\n			<td style=\"border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:top; width:291px\">\r\n			<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\"><span style=\"color:black\">Arial adalah pria terganteng di antara mereka. Riani adalah gadis berkaca mata, cantik, cerdas dan mengutamakan profesi. Zafran merupakan pria yang berbadan kurus, anak band, senang bersyair. Ia juga seorang tokoh yang gila bola. Genta merupakan leader di antara sahabat-sahabatnya.</span></span></span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:28px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"color:black\">Perbedaan teks 1 dan teks 2 adalah ....</span></span></span></span></p>\r\n', 'Teks 1 : menanggapi alur | Teks 2 : menanggapi penokohan,Teks 1 : Berupa Orietasi | Teks 2 : berupa deskripsi,Teks 1 : mengandung konflik tokoh dengan dirinya sendiri | Teks 2 : mengandung konflik antartokoh,Teks 1 : menjelaskan evaluasi tema | Teks 2 : menjelaskan deskripsi tema ', 'A', ''),
(156, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:39 - 22:39', '1 jam', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Bacalah kalimat-kalimat berikut dengan cermat!</span></span></span></strong></span></span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Baju karya perancang ternama itu memang sangat menawan karena ditunjang oleh bahan yang digunakan, tetapi kreativitas desainnya tergolong biasa-biasa saja.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Produk terbaru smartphone aXue sangat diminati konsumen yang suka dengan barang murahan.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Sebagian besar lirik lagu yang dibawakan Iwan Fals sangat inspiratif karena mengantarkan isu-isu kemanusiaan dan nilai-nilai kebaikan.</span></span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Teknik penggarapan film yang diangkat dari perjalanan hidup tokoh nasional ini patut diacungi jempol, tetapi dari sisi isi cerita tidak berisi sama sekali. </span></span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:28px; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Pujian yang santun terdapat dalam kalimat yang ditandai dengan nomor ....</span></span></span></span></span></p>\r\n', '(1),(2),(3),(4)', 'C', ''),
(157, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:40 - 22:40', '1 jam', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"color:black\">Bacalah kalimat berikut dengan cermat!</span></span></strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\"><span style=\"color:black\">Album yang dikemas dengan dominan warna hitam ini menyuguhkan dua instumen. Pertama adalah &ldquo;Sunset&rdquo; didominasi oleh gitar. Nuansa ini sekilas terdengar ala Kings of Convenience ini. Sementara itu, pada lagu kesembilan kita dibawa mendengarkan dentingan piano yang menenangkan setelah diajak menggoyangkan tubuh pada lagu sebelumnya, &ldquo;Cadilac Model&rdquo;.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"color:black\">Kata-kata yang memerlukan penjelasan tambahan (kata yang dianggap sukar) dalam teks tersebut adalah ....</span></span></span></span></p>\r\n', 'album,nuansa,sunset,Kings of Convenience', 'D', ''),
(158, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:42 - 22:42', '1 jam', '<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Perhatikan kalimat berikut!</span></span></span></strong></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Jika Anda adalah pecinta musik sekaligus penikmat fotografi, di album ini kita bisa menikmati keduanya sekaligus karena Atlesta mengemas lirik-lirik dalam album Sensation itu ke dalam 14 lembar foto menarik. Sayangnya lirik-lirik tersebut tidak semuanya tercetak dengan baik, dengan huruf <em>handwriting</em> yang cukup sulit untuk dibaca.</span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"ltr\" lang=\"IN\" style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Komentar yang sesuai dengan cuplikan teks tanggapan tersebut adalah ....</span></span></span></span></span></p>\r\n', 'Penggunaan istilah asing yang terlalu banyak mengganggu pemahaman.,Banyak ditemukan penulisan huruf kapital dan tanda baca yang tidak tepat.,Menggunakan kalimat yang tidak efektif sehingga sulit dipahami.,Pernyataan banyak menggunakan ungkapan yang sulit diketahui maknanya.', 'D', ''),
(159, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:47 - 22:47', '1 jam', '', 'jika,meskipun,kalau,agar', 'B', 'png'),
(160, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:49 - 22:49', '1 jam', '<p>Kata ulang yang tepat untuk melengkapi kalimat tersebut adalah...</p>\r\n', 'Berhati-hati,hati-hatinya,sehati-hati,berhati-berhati', 'A', 'png'),
(161, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:51 - 22:51', '1 jam', '<p>Perbaikan kata seleksi yang tepat pada kalimat tersebut adalah...</p>\r\n', 'selektif,intensitas,komunitas,sepintas', 'B', 'png'),
(162, 'BIND-135', 'Bahasa Indonesia', '', '20-08-2023', '21:59 - 22:59', '1 jam', '<p>Kesalahan penggunaan ejaan pada kalimat tersebut adalah...</p>\r\n', 'kata kampung seharusnya Kampung ,kata Kelurahan seharusnya kelurahan ,kata Mojosongo seharusnya Mojo Songo,kata Kecamatan seharusnya kecamatan', 'A', 'png'),
(163, 'MTK-795', 'Matematika', '', '20-08-2023', '21:05 - 22:05', '1 jam', '', '2,3,4,5', 'B', 'png'),
(164, 'MTK-795', 'Matematika', '', '20-08-2023', '21:08 - 22:08', '1 jam', '', '1,6,9,10', 'A', 'png'),
(165, 'MTK-795', 'Matematika', '', '20-08-2023', '21:08 - 22:08', '1 jam', '', '3,4,5,6', 'A', 'png'),
(166, 'MTK-795', 'Matematika', '', '20-08-2023', '21:10 - 22:10', '1 jam', '', '-8,-4,5,10', 'C', 'png'),
(167, 'MTK-795', 'Matematika', '', '20-08-2023', '21:00 - 22:00', '1 jam', '', '7√2,7√3,12√2,12√3', 'A', 'png'),
(168, 'MTK-795', 'Matematika', '', '20-08-2023', '21:38 - 22:38', '1 jam', '', '2√3,2√6,4√3,4√6', 'D', 'png'),
(169, 'MTK-795', 'Matematika', '', '20-08-2023', '22:40 - 23:40', '1 jam', '', '3√2,3√3,3√5,3√6', 'B', 'png'),
(170, 'MTK-795', 'Matematika', '', '20-08-2023', '21:41 - 22:41', '1 jam', '<p><span style=\"font-size:12.0pt\">Jumlah &nbsp;dua &nbsp;bilangan &nbsp;adalah &nbsp;30. &nbsp;Jika &nbsp;hasil &nbsp;kali &nbsp;kedua &nbsp;bilangan &nbsp;menghasilkan &nbsp;nilai &nbsp;yang </span><span style=\"font-size:12.0pt\">m</span><span style=\"font-size:12.0pt\">aksimum, misalkan dua bilangan tersebut adalah <em>a</em>, <em>b </em>maka kedua bilangan tersebut adalah &hellip;.</span><br />\r\n<br />\r\n&nbsp;</p>\r\n', 'b = 15 | a = 15                                               ,b = 12 | a = 18                                               ,b = 10 | a = 20,b = 8 | a = 22', 'A', ''),
(171, 'MTK-795', 'Matematika', '', '20-08-2023', '21:42 - 22:42', '1 jam', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Selisih tiga kali kuadrat suatu bilangan dengan tiga belas kali bilangan itu sama dengan negatif 4. Maka bilangan tersebut adalah &hellip;.</span></span><br />\r\n<br />\r\n&nbsp;</p>\r\n', 'x = 1/3 atau x = 4,x = 1/3 atau x = –4,x = 3 atau x = 9, x = –3 atau x = 9', 'A', ''),
(172, 'MTK-795', 'Matematika', '', '20-08-2023', '21:47 - 22:47', '1 jam', '<p><span style=\"font-size:12.0pt\">Selisih dua bilangan adalah 10. Jika hasil kali kedua bilangan menghasilkan nilai yang minimum, misalkan dua bilangan tersebut adalah x, y dengan x &gt; y maka kedua bilangan tersebut adalah &hellip;..</span><br />\r\n<br />\r\n&nbsp;</p>\r\n', 'y = –4 | x = 6                                                  ,y = 4 | x = 14                                                  ,y = –5 | x = 5,y = 5 | x = 15', 'C', ''),
(173, 'MTK-795', 'Matematika', '', '20-08-2023', '21:48 - 22:48', '1 jam', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Panjang SQ adalah ....</span></span><br />\r\n<br />\r\n&nbsp;</p>\r\n', '1 cm,2 cm,3 cm,4 cm', 'B', 'png'),
(174, 'MTK-795', 'Matematika', '', '20-08-2023', '21:54 - 22:54', '1 jam', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Jika segitiga ABC dan DEF kongruen, sisi yang sama panjang adalah ....</span></span></p>\r\n', 'AC=EF,AB=DE,BC=EF,BC=DE', 'D', 'png'),
(175, 'MTK-795', 'Matematika', '', '20-08-2023', '21:54 - 22:54', '1 jam', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Panjang PQ adalah ....</span></span></p>\r\n', '4 cm,6 cm,8 cm,10 cm', 'B', 'png'),
(176, 'MTK-795', 'Matematika', '', '20-08-2023', '21:57 - 22:57', '1 jam', '<p><span style=\"font-size:12.0pt\">Segitiga ABC kongruen dengan segitiga BDE karena memenuhi syarat adalah &hellip;.</span><br />\r\n&nbsp;</p>\r\n', 'Sisi | sisi | sisi,Sisi | sudut | sisi,Sudut | sisi | sudut,Sudut | sudut | sudut', 'C', 'png'),
(177, 'MTK-795', 'Matematika', '', '20-08-2023', '21:00 - 22:00', '1 jam', '<p style=\"margin-left:47px; margin-right:-1px\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Kedua persegipanjang ABCD dan persegipanjang PQRS tersebut adalah sebangun. Panjang PQ&nbsp;</span></span></span></span><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">adalah &hellip;.</span></span></p>\r\n', '18 cm,20 cm,22 cm ,24 cm', 'D', 'png'),
(178, 'MTK-795', 'Matematika', '', '20-08-2023', '21:02 - 22:02', '1 jam', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Nilai <em>x + y = ....</em></span></span></p>\r\n', '260°,180°,130° ,100°', 'A', 'png'),
(179, 'MTK-795', 'Matematika', '', '20-08-2023', '21:04 - 22:04', '1 jam', '<p><span style=\"font-size:12.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Panjang DE adalah &hellip;.</span></span></p>\r\n', '9 cm,10 cm,12 cm,14 cm', 'C', 'png'),
(180, 'MTK-795', 'Matematika', '', '06-08-2023', '18:14 - 18:14', '0 jam', '<p>Tentukan total 10 bilangan ganjil pertama</p>\r\n', '160,120,100,220', 'C', ''),
(181, 'MTK-795', 'Matematika', '', '06-08-2023', '17:15 - 17:15', '0 jam', '<p>Barisan aritmatika memiliki U<sub>3</sub>=U<sub>20</sub>, sementara U<sub>7</sub>=44, tentukan suku pertama dan beda barisan</p>\r\n', '9 dan 8,8 dan 6,5 dan 3,7 dan 8', 'B', ''),
(182, 'MTK-795', 'Matematika', '', '06-08-2023', '17:16 - 17:16', '0 jam', '<p>Berapa jumlah 20 suku pertama dari barisan 6, 13, 20</p>\r\n', '2.800,1.450,3.050,1.500', 'B', ''),
(183, 'MTK-795', 'Matematika', '', '06-08-2023', '17:18 - 17:18', '0 jam', '<p>Suatu gedung memiliki 40 kursi pada baris pertama, baris kedua 48 kursi, untuk baris selanjutnya selalu ditambahkan 8 kursi. Tentukan banyak kursi di baris ke 20</p>\r\n', '192,170,185,190', 'A', ''),
(184, 'MTK-795', 'Matematika', '', '06-08-2023', '18:24 - 17:24', '-1 jam', '<p>Titik A memiliki koordinat (-5,3), tentukan jarak titik A dengan sumbu -y</p>\r\n', '-3 satuan,5 satuan,-5 satuan,3 satuan', 'B', ''),
(185, 'MTK-795', 'Matematika', '', '06-08-2023', '17:26 - 17:26', '0 jam', '<p>Berdasarkan gambar nomor 17, titik A dan F berada di kuadran</p>\r\n', '2 dan kuadran 3,2 dan tidak pada kuadran,2 dan kuadran 1,2 dan kuadran 4', 'D', ''),
(186, 'MTK-795', 'Matematika', '', '06-08-2023', '17:28 - 17:28', '0 jam', '<p>Tentukan f(9), jika fungsinya f(x)= x<sup>2</sup>+4x+4</p>\r\n', '121,102,117,100', 'A', ''),
(187, 'MTK-795', 'Matematika', '', '06-08-2023', '17:29 - 17:29', '0 jam', '<p>Relasi tepat dari himpunan P dan Q</p>\r\n', 'Lebih dari,Akar tiga dari,Kurang dari,Akar kuadrat dari', 'B', ''),
(188, 'MTK-795', 'Matematika', '', '06-08-2023', '17:29 - 17:30', '0 jam 1 menit', '<p>Sebungkus cokelat akan diberikan ke 24 anak, sehingga masing-masing anak memperoleh 8 cokelat. Tentukan cokelat yang didapatkan setiap anak, jika cokelat tersebut diberikan untuk 16 anak</p>\r\n', '12 cokelat,17 cokelat,15 cokelat,20 cokelat', 'A', ''),
(189, 'MTK-795', 'Matematika', '', '06-08-2023', '17:31 - 17:31', '0 jam', '<p>Dua karung beras dibeli seorang pedagang seharga Rp1.050.000, setiap karung beras memiliki bruto 50 kg, dan tara 2%. Rencananya, beras akan dijual secara eceran Rp11.500 per kilogram, tentukan keuntungan yang diperoleh pedagang</p>\r\n', 'Rp60.000,Rp95.000,Rp77.000,Rp86.000', 'C', ''),
(190, 'MTK-795', 'Matematika', '', '06-08-2023', '17:32 - 17:32', '0 jam', '<p>Semarang dan Jepara berjarak 3 cm di peta, sementara skala yang digunakan di peta 1 : 2.500.000. Tentukan jarak sebenarnya Kota Semarang dan Jepara</p>\r\n', '90 km,35 km,70 km,75 km', 'D', ''),
(191, 'MTK-795', 'Matematika', '', '06-08-2023', '17:33 - 17:33', '0 jam', '<p>Kedua jarum jam yang menunjukkan pukul 09.00 membentuk sudut terkecil yang disebut</p>\r\n', 'Sudut siku-siku,Sudut refleks,Sudut lancip,Sudut tumpul', 'A', ''),
(192, 'MTK-795', 'Matematika', '', '06-08-2023', '17:34 - 17:34', '0 jam', '<p>Setelah diskon 30%, harga sepeda menjadi Rp1.260.000, tentukan harga sepeda sebelum diskon</p>\r\n', 'Rp1.400.000,Rp.1.300.000,Rp1.800.000,Rp1.700.000', 'C', ''),
(193, 'MTK-795', 'Matematika', '', '06-08-2023', '17:35 - 17:35', '0 jam', '<p>Proyek direncanakan selesai 20 hari dengan 12 pekerja, tetapi proyek dihentikan dari hari ke-7 sampai ke-13. Tentukan jumlah pekerja tambahan, agar proyek selesai tepat waktu</p>\r\n', '17 orang,12 orang,9 orang,20 orang', 'B', ''),
(194, 'MTK-795', 'Matematika', '', '06-08-2023', '17:36 - 17:36', '0 jam', '<p>Peternak mempunyai persediaan makanan bagi 72 sapi selama 12 hari, jika ditambah 24 sapi lagi, persediaan makanan itu cukup untuk berapa hari</p>\r\n', '9 hari,12 hari,7 hari,6 hari', 'A', ''),
(195, 'MTK-795', 'Matematika', '', '06-08-2023', '17:37 - 17:37', '0 jam', '<p>Modal usaha yang dikeluarkan Pak Arifin Rp1.300.000, serta menetapkan harga sate per porsi Rp12.000. Jika ingin memperoleh keuntungan Rp200.000, maka jumlah minimal porsi sate yang harus dibuat</p>\r\n', '112,125,130,115', 'B', ''),
(196, 'MTK-795', 'Matematika', '', '06-08-2023', '17:38 - 17:38', '0 jam', '<p>Tentukan nilai x-y</p>\r\n', '4,3,0,12', 'C', 'png'),
(197, 'MTK-795', 'Matematika', '', '06-08-2023', '17:40 - 17:40', '0 jam', '<p>Dalam sehari, Pak Rama bisa menjual 140 porsi mie ayam, harga seporsinya Rp8.000. Besar pajak UMKM yang dibayar Pak Rama selama sebulan</p>\r\n', 'Rp336.000,Rp200.000,Rp250.000,Rp 150.000', 'A', ''),
(199, 'BING-246', 'Bahasa Inggris', '', '16-08-2023', '20:09 - 21:09', '1 jam', '<p>From : +0829589400 To : Lita Sorry Honey, I can&rsquo;t keep my promise to go with you to the Mall tonight. I have to meet my friend (Mrs. Cathy) at 07.pm. Please don&rsquo;t be angry. Sender, Mom Who sends the message?</p>\r\n', 'Lita mother,Lita    ,Mrs. Cathy,Mother friend', 'A', ''),
(202, 'BIND-135', 'Bahasa Indonesia', '', '25-08-2023', '18:17 - 19:16', '0 jam 59 menit', '<p>.......Cocok digunakan untuk berekreasi. Udara di sana terasa sejuk. Jalan di pegunungan berliku-liku, agar kendaraan lebih mudah berjalan. Banyak pohon cemara di kanan dan kiri jalan, menambah indahnya daerah pegunungan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kalimat yang sesuai untuk melengkapi awal paragraf di atas adalah ....</p>\r\n', 'Kemarin Aku ke Gunung,Di pegunungan banyak pohon-pohon,Daerah pegunungan memang sangat indah,Keluargaku senang bertamasya ke daerah pegunungan', 'C', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(16) NOT NULL,
  `nomor_induk` varchar(40) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(16) NOT NULL,
  `level` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nomor_induk`, `nama`, `tanggal_lahir`, `email`, `alamat`, `username`, `password`, `level`) VALUES
(25, '', '', '', '', '', 'admin', 'admin', 1),
(26, '', '', '', '', '', 'guru123', '123', 2),
(27, '', '', '', '', '', 'ADJIE', 'ADJIE', 3),
(28, '', '', '', '', '', 'ARVINA', '123123', 3),
(29, '', '', '', '', '', 'DHEA', '123123', 3),
(30, '', '', '', '', '', 'DIANTY', '123123', 3),
(31, '', '', '', '', '', 'HESTIKA', '123123', 3),
(33, '', '', '', '', '', 'DUSTIN', '123123', 3),
(34, '', '', '', '', '', 'FEDYAH', '123123', 3),
(35, '', '', '', '', '', 'KHAERINA', '123123', 3),
(36, '', '', '', '', '', 'MEYLIN', '123123', 3),
(37, '', '', '', '', '', 'ADHIM', '123123', 3),
(38, '', '', '', '', '', 'AHMAD', '123123', 3),
(39, '', '', '', '', '', 'AISYAH', '123123', 3),
(40, '', '', '', '', '', 'AMALIA', '123123', 3),
(41, '', '', '', '', '', 'ANANDA', '123123', 3),
(42, '', '', '', '', '', 'ANDREA', '123123', 3),
(43, '', '', '', '', '', 'ARIFA', '123123', 3),
(44, '', '', '', '', '', 'CANTIKA', '123123', 3),
(45, '', '', '', '', '', 'GADIZA', '123123', 3),
(46, '', '', '', '', '', 'HARIYANTI', '123123', 3),
(47, '', '', '', '', '', 'JAUZA', '123123', 3),
(48, '', '', '', '', '', 'JUMRIATI', '123123', 3),
(49, '', '', '', '', '', 'KADEK', '123123', 3),
(50, '', '', '', '', '', 'KANIA', '123123', 3),
(51, '', '', '', '', '', 'AKBAR', '123123', 3),
(52, '', '', '', '', '', 'SYAHRIZAL', '123123', 3),
(53, '', '', '', '', '', 'SYAM', '123123', 3),
(54, '', '', '', '', '', 'NADRATUN', '123123', 3),
(55, '', '', '', '', '', 'SUCI', '123123', 3),
(56, '', '', '', '', '', 'NURUL', '123123', 3),
(57, '', '', '', '', '', 'ZULKIFRI', '123123', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_soal` (`id_soal`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indeks untuk tabel `limits`
--
ALTER TABLE `limits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`kode_mapel`);

--
-- Indeks untuk tabel `shuffle`
--
ALTER TABLE `shuffle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_mapel` (`id_mapel`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kode_mapel` (`kode_mapel`);

--
-- Indeks untuk tabel `tb_soal`
--
ALTER TABLE `tb_soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `kode_mapel` (`kode_mapel`),
  ADD KEY `kode_mapel_2` (`kode_mapel`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level` (`level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `level`
--
ALTER TABLE `level`
  MODIFY `id_level` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `limits`
--
ALTER TABLE `limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `shuffle`
--
ALTER TABLE `shuffle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_soal`
--
ALTER TABLE `tb_soal`
  MODIFY `id_soal` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`id_soal`) REFERENCES `tb_soal` (`id_soal`),
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `limits`
--
ALTER TABLE `limits`
  ADD CONSTRAINT `limits_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`kode_mapel`),
  ADD CONSTRAINT `limits_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `shuffle`
--
ALTER TABLE `shuffle`
  ADD CONSTRAINT `shuffle_ibfk_1` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`kode_mapel`),
  ADD CONSTRAINT `shuffle_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD CONSTRAINT `tb_nilai_ibfk_1` FOREIGN KEY (`kode_mapel`) REFERENCES `mapel` (`kode_mapel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_soal`
--
ALTER TABLE `tb_soal`
  ADD CONSTRAINT `tb_soal_ibfk_1` FOREIGN KEY (`kode_mapel`) REFERENCES `mapel` (`kode_mapel`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`level`) REFERENCES `level` (`id_level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
