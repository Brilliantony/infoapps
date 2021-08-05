-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2021 pada 11.11
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agent`
--

CREATE TABLE `agent` (
  `id` int(11) NOT NULL,
  `segmen` varchar(200) NOT NULL,
  `login_avaya` varchar(200) NOT NULL,
  `nik_csdm` int(200) DEFAULT NULL,
  `perner` int(200) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `id_site_awal` int(200) NOT NULL,
  `id_TL` int(200) NOT NULL,
  `no_telkomsel` varchar(15) DEFAULT NULL,
  `no_wa` varchar(15) DEFAULT NULL,
  `ket` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agent`
--

INSERT INTO `agent` (`id`, `segmen`, `login_avaya`, `nik_csdm`, `perner`, `nama`, `gender`, `id_site_awal`, `id_TL`, `no_telkomsel`, `no_wa`, `ket`, `created_at`, `updated_at`) VALUES
(1, 'POSTPAID', '480004', 20236825, 168895, 'ROSNENI', 'P', 2, 1, '085241439693', '085241439693', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(2, 'POSTPAID', '480007', 4223, 4223, 'NUR ELFRIDA PULUNGAN', 'P', 3, 1, '081375666566', '081375666566', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(3, 'PREPAID', '480165', 21240144, 180644, 'Andika Pratama Pasaribu', 'L', 1, 1, '081226579716', '081226579716', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(4, 'PREPAID', '480061', 21240043, 180164, 'Bayu Herlambang Putra', 'L', 1, 1, '081238659706', '081238659706', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(5, 'PREPAID', '480126', 21240112, 180205, 'GALIH PRIYONO', 'L', 1, 1, '082313674681', '082226339745', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(6, 'PREPAID', '480108', 21240092, 180180, 'RD RIKI SUHERMAN', 'L', 1, 1, '081213211995', '081213211995', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(7, 'PREPAID', '480132', 21240035, 180161, 'AISYAH NING ARUMSARI', 'P', 1, 1, '081225470035', '083842060502', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(8, 'PREPAID', '480043', 21239985, 180090, 'ANNISA AULIA RAHMAWATI', 'P', 1, 1, '082226037131', '088228896253', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(9, 'PREPAID', '480031', 21239993, 180120, 'DESTRIANA RAHMAWATI', 'P', 1, 1, '081239943003', '081239943003', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(10, 'PREPAID', '480084', 21240110, 180202, 'EKA PUTRI QURNIAZHARI', 'P', 1, 1, '081338630841', '081338630841', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(11, 'PREPAID', '480135', 21240122, 180212, 'FIRDA NUR KHASANAH', 'P', 1, 1, '081225056988', '081225056988', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(12, 'PREPAID', '480098', 21240108, 180198, 'MU\'ARIFATUL FITRIA', 'P', 1, 1, '081235707677', '085704113671', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(13, 'PREPAID', '480107', 21240049, 180167, 'RAHMAWATI', 'P', 1, 1, '085329001227', '085866147984', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(14, 'PREPAID', '480050', 21240015, 180113, 'SALSHABILLA NAFITRI SHAFARILLA', 'P', 1, 1, '085330386965', '085330386965', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(15, 'PREPAID', '480022', 21240020, 180115, 'VIVI ALVIANTI', 'P', 1, 1, '081287101882', '081287101882', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(16, 'POSTPAID', '480143', 19234584, 159144, 'KAHIMMA HAWATI HAMID', 'P', 2, 2, '08396488598', '085396488598', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(17, 'POSTPAID', '480010', 10094152, 27753, 'DESY RIZKY BATUBARA', 'L', 3, 2, '085270255403', '085270255403', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(18, 'POSTPAID', '480011', 18010372, 45351, 'MILDA YUNI ARDITA', 'P', 3, 2, '081376958122', '08117222933', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(19, 'PREPAID', '480053', 21240040, 180166, 'ARIF FIRMANSYAH ISMAIL', 'L', 1, 2, '081313609150', '085156317604', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(20, 'PREPAID', '480125', 21240142, 180204, 'FAJAR ASSIDIQ', 'L', 1, 2, '081393971243', '081393971243', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(21, 'PREPAID', '480102', 21240072, 180145, 'MUSTAQIM AJI NEGORO', 'L', 1, 2, '081333387671', '081333387671', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(22, 'PREPAID', '480181', 21240202, 0, 'Renaldi Fahmi Aji', 'L', 1, 2, '081218319589', '081218319589', 'Batch 3', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(23, 'PREPAID', '480067', 21239981, 180088, 'AISA NOVIANI', 'P', 1, 2, '082137906525', '089630950386', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(24, 'PREPAID', '480072', 21240038, 180154, 'ANINDITYA DWI HAPSARI PUTRI', 'P', 1, 2, '08118199855', '08985558818', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(25, 'PREPAID', '480041', 21239990, 180102, 'CHUSNUL WINHIDAYATI SALASA', 'P', 1, 2, '085290157904', '085290157904', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(26, 'PREPAID', '480021', 21239997, 180084, 'DYAH RETNO ANGGRAENI', 'P', 1, 2, '081357399018', '081357399018', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(27, 'PREPAID', '480063', 21240002, 180085, 'FINA ATHAULA NURJANAH JATMIKO', 'P', 1, 2, '082234504193', '089625364687', '24/06/2021', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(28, 'PREPAID', '480138', 21240123, 180213, 'MIRANDA AMALIA NOVIANI', 'P', 1, 2, '082178914909', '082178914909', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(29, 'PREPAID', '480163', 21240157, 180689, 'Olis Lisnawati', 'p', 1, 2, '081215251636', '083842596055', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(30, 'PREPAID', '480106', 21240011, 180110, 'RAFA ZAHRAH NATASYA', 'P', 1, 2, '085225400254', '085225400254', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(31, 'PREPAID', '480023', 21240014, 180112, 'SALSABILA SILMI DAMAYANTI', 'P', 1, 2, '082136655814', '082136655814', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(32, 'PREPAID', '480185', 21240205, 0, 'Tiara Dewi Lestari', 'P', 1, 2, '081223501218', '081223501218', 'Batch 3', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(33, 'PREPAID', '480131', 21240115, 180209, 'VITALOCA RATU PERMATASARI', 'P', 1, 2, '081331969936', '08119050515', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(34, 'POSTPAID', '480142', 20236614, 165726, 'CALVARIS', 'L', 2, 3, '085298919582', '085298919582', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(35, 'POSTPAID', '480012', 19231161, 152486, 'HASNIDAR', 'P', 2, 3, '081341379403', '089530360407', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(36, 'POSTPAID', '480155', 17010484, 76373, 'HENI ZAHARA', 'P', 3, 3, '085277393847', '08116055721', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(37, 'PREPAID', '480037', 21239984, 180082, 'ANANG MA\'RUF', 'L', 1, 3, '081225519727', '089616279185', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(38, 'PREPAID', '480087', 21240104, 180194, 'FAIZ HERDIAN PUTRO SAKTI', 'L', 1, 3, '081215784564', '088802574849', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(39, 'PREPAID', '480101', 21240071, 180153, 'MUHAMMAD KEMAL ARRAFI', 'L', 1, 3, '081386311128', '085856451675', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(40, 'PREPAID', '480167', 21240152, 180671, 'Naufal Alanggya Wijdan', 'L', 1, 3, '081228382802', '081228382802', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(41, 'PREPAID', '480183', 21240163, 180697, 'Reyhan Mabyna Putra', 'L', 1, 3, '081229564581', '081229564581', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(42, 'PREPAID', '480056', 21239980, 180117, 'ADI NOFITA SURYATI', 'P', 1, 3, '082313249437', '083824345931', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(43, 'PREPAID', '480071', 21240119, 180201, 'ANINDITA MADITIARA', 'P', 1, 3, '081217469228', '081217469228', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(44, 'PREPAID', '480083', 21239999, 180174, 'DYAH AYU SEKAR ARUMSARI', 'P', 1, 3, '081392688400', '081915362098', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(45, 'PREPAID', '480188', 21240194, 180707, 'Elvina Wulan Fitria Suci', 'P', 1, 3, '081384241207', '081384241207', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(46, 'PREPAID', '480090', 21240005, 180123, 'FENNYSIA ASWITA', 'P', 1, 3, '081310655929', '081310655929', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(47, 'PREPAID', '480095', 21240087, 180177, 'LUWISCA FAHIRA', 'P', 1, 3, '08122949978', '08122949978', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(48, 'PREPAID', '480164', 21240156, 180687, 'Maulanie Nur Rachma Novianty', 'P', 1, 3, '082143102911', '082143102911', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(49, 'PREPAID', '480105', 21240091, 180179, 'PUJI RETNO SARI', 'P', 1, 3, '082131777200', '082131777200', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(50, 'PREPAID', '480113', 21240050, 180146, 'ROSMAYATI', 'P', 1, 3, '081226907667', '089606515593', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(51, 'PREPAID', '480049', 21240019, 180114, 'UMI NURJANAH', 'P', 1, 3, '082220633798', '082220633798', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(52, 'POSTPAID', '480154', 18010341, 62650, 'MUHAMMAD FIKRAM', 'L', 3, 4, '082272990280', '082272990280', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(53, 'POSTPAID', '480150', 18011097, 0, 'ELSHA DINI RAHMAD', 'P', 3, 4, '0811609779', '0811609779', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(54, 'PREPAID', '480158', 21240143, 180643, 'Agung Setia Budi', 'L', 1, 4, '081215738709', '081215738709', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(55, 'PREPAID', '480123', 21240033, 180159, 'Agustinus Agustus Ndruru', 'L', 1, 4, '081262850774', '081262850774', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(56, 'PREPAID', '480171', 21240148, 180647, 'Bangkit Prayogi', 'L', 1, 4, '082242804236', '082242804236', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(57, 'PREPAID', '480079', 21240079, 180171, 'DANU AJI SURYA KUSUMA', 'L', 1, 4, '081329887339', '081329887339', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(58, 'PREPAID', '480117', 21240099, 180185, 'SULISTYO DIANTO', 'L', 1, 4, '082223088281', '082223088281', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(59, 'PREPAID', '480194', 21240192, 180703, 'Yonnas Dian Herdianto', 'L', 1, 4, '08133395929', '085746856912', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(60, 'PREPAID', '480033', 21239982, 180089, 'ALLIA SABBITA', 'P', 1, 4, '081215772820', '081215772820', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(61, 'PREPAID', '480060', 21239995, 180121, 'DHENY ASIH PANGASTUTI', 'P', 1, 4, '081327470381', '081327470381', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(62, 'PREPAID', '480088', 21240105, 180195, 'FARISE IRA AMARA', 'P', 1, 4, '081226887639', '083807959552', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(63, 'PREPAID', '480092', 21240046, 180157, 'HERAWATI NUR APRILIA', 'P', 1, 4, '082221575792', '082221575792', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(64, 'PREPAID', '480176', 21240190, 180685, 'Mar\'atus Sholekha', 'P', 1, 4, '082136789093', '085878531415', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(65, 'PREPAID', '480035', 21240010, 180125, 'NADYA ILIYYIN', 'P', 1, 4, '08112517765', '085786877765', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(66, 'PREPAID', '480195', 21240204, 0, 'Qomariah Nurrochmah', 'P', 1, 4, '081225143101', '089648457854', 'Batch 3', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(67, 'PREPAID', '480139', 21240124, 180214, 'RISKA APRILIA SAPUTRI', 'P', 1, 4, '081329010937', '081329010937', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(68, 'PREPAID', '480032', 21240017, 180096, 'SHAVIRA DHANI KARTIKA', 'P', 1, 4, '081227470229', '089524198353', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(69, 'PREPAID', '480121', 21240101, 180187, 'WIWIN AMBARWATI', 'P', 1, 4, '08217133694', '081937775494', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(70, 'POSTPAID', '480145', 20236895, 169688, 'ARJUN', 'L', 2, 5, '082191576484', '082191576484', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(71, 'POSTPAID', '480013', 19232564, 0, 'FEBIYANTI SAMSUL', 'P', 2, 5, '#N/A', '#N/A', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(72, 'POSTPAID', '480006', 18010348, 27646, 'GRATIANA UCINTA TARIGAN', 'P', 3, 5, '081314767561', '08314767561', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(73, 'PREPAID', '480051', 21240036, 180165, 'ALDITO ARMAN', 'L', 1, 5, '082121292233', '082121292233', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(74, 'PREPAID', '480169', 21240146, 180645, 'Angga Sukmana Putra', 'L', 1, 5, '081252137630', '089623557426', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(75, 'PREPAID', '480086', 21240082, 0, 'FAIQ KURNIAWAN', 'L', 1, 5, '082137315747', '082137315747', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(76, 'PREPAID', '480186', 21240161, 180695, 'Hamdy Smith Al Hadar', 'L', 1, 5, '085337718549', '085337718549', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(77, 'PREPAID', '480020', 21240007, 180086, 'MUHAMMAD FITRA AL FAWWAZ', 'L', 1, 5, '082117961021', '087827126104', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(78, 'PREPAID', '480065', 21240074, 180168, 'ADETIYA PUTRIANI', 'P', 1, 5, '081210820330', '089694839647', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(79, 'PREPAID', '480133', 21240116, 180210, 'ANGGIT HARSANTI', 'P', 1, 5, '081214831198', '805641990983', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(80, 'PREPAID', '480038', 21239988, 180100, 'ATNA DIAFAHMA', 'P', 1, 5, '081335970155', '085732776562', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(81, 'PREPAID', '480082', 10093845, 180173, 'DWI AYU DESTIANI', 'P', 1, 5, '081222742127', '081222742127', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(82, 'PREPAID', '480089', 21240045, 180151, 'FEBRINA RECA DELLA', 'P', 1, 5, '081215702922', '081215702922', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(83, 'PREPAID', '480128', 21240048, 180160, 'LAVENIA PARAMITA', 'P', 1, 5, '081252983264', '085850758097', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(84, 'PREPAID', '480130', 21240114, 180208, 'OCRIZA TIARA ANANTAMA', 'P', 1, 5, '082279008702', '082279008702', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(85, 'PREPAID', '480191', 21240199, 180717, 'Rina Faja Taxvia', 'P', 1, 5, '081390779260', '081542901046', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(86, 'PREPAID', '480039', 21240145, 180094, 'RIZKY DWI MERNAWATI', 'P', 1, 5, '081337176677', '081337176677', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(87, 'PREPAID', '480119', 21240100, 180186, 'THOYIBATUL ULYA', 'P', 1, 5, '081225453063', '081225453063', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(88, 'PREPAID', '480140', 21240106, 180197, 'YENNY AULIA', 'P', 1, 5, '082135973955', '085882684354', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(89, 'PREPAID', '480174', 21240160, 180693, 'Yumna Pinkan Zalfana', 'P', 1, 5, '081228125780', '081228125780', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(90, 'POSTPAID', '480144', 18011207, 107474, 'AL FAJAR', 'L', 2, 6, '085332351672', '085332351672', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(91, 'POSTPAID', '480003', 19232560, 155684, 'ANDI AYU CITRA SASMITA SARI', 'P', 2, 6, '085343520527', '085343520527', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(92, 'POSTPAID', '480014', 16009963, 73456, 'FRANSISKA ELISNA', 'P', 3, 6, '082277643933', '082277643933', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(93, 'PREPAID', '480124', 21240111, 180203, 'ALDI YUDHA AGUSTA', 'L', 1, 6, '085259984998', '085259984998', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(94, 'PREPAID', '480170', 21240150, 180659, 'Catur Desta Putra', 'L', 1, 6, '081371024732', '085867557972', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(95, 'PREPAID', '480030', 21239996, 180104, 'DIMAS BANGUN BUDIARTO', 'L', 1, 6, '081316660448', '081316660448', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(96, 'PREPAID', '480100', 21240118, 180200, 'MUHAMMAD ADJI SAYUTI', 'L', 1, 6, '081294021380', '081294021380', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(97, 'PREPAID', '480189', 21240197, 180713, 'Rian nugroho', 'L', 1, 6, '082325301960', '085156343217', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(98, 'PREPAID', '480059', 21240018, 180128, 'TRI BUDI OCTAVIANUS', 'L', 1, 6, '081296756659', '081296756659', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(99, 'PREPAID', '480070', 21239986, 180099, 'ANASTASIA HANI PRASETIO', 'P', 1, 6, '081325211557', '081325211557', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(100, 'PREPAID', '480076', 21240042, 180155, 'ARINA HASBANA ISNAENI', 'P', 1, 6, '081213130123', '082221025466', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(101, 'PREPAID', '480081', 21240044, 180156, 'DINA AMALIA FIRDANI', 'P', 1, 6, '082136162218', '0895600869266', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(102, 'PREPAID', '480047', 21240001, 180108, 'FEBRINA RAMADHANI', 'P', 1, 6, '085267485099', '085267485099', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(103, 'PREPAID', '480175', 21240189, 180681, 'Hutami Budiati', 'P', 1, 6, '081226136120', '087742299500', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(104, 'PREPAID', '480193', 21240201, 180721, 'Indah Anung Diani', 'P', 1, 6, '082314531953', '082314531953', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(105, 'PREPAID', '480127', 21240120, 180206, 'LARAS SEKAR NITI', 'P', 1, 6, '081272731688', '0895357042151', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(106, 'PREPAID', '480129', 21240113, 180207, 'NIZA NOOR ALFIYAH', 'P', 1, 6, '081226886477', '08978259375', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(107, 'PREPAID', '480024', 21240013, 180111, 'RIZKA SEPTIYANI', 'P', 1, 6, '081297388903', '081297388903', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(108, 'PREPAID', '480116', 21240051, 180147, 'SRI RAHAYU', 'P', 1, 6, '082135444864', '082135444864', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(109, 'PREPAID', '480122', 21240109, 180199, 'YAYANG SETIYANI', 'P', 1, 6, '081225878366', '081225878366', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(110, 'POSTPAID', '480141', 19232670, 88367, 'WALIDAH ASAF', 'P', 2, 7, '085342569486', '085342569486', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(111, 'POSTPAID', '480151', 13009297, 0, 'KAMALUDDIN BATUBARA', 'L', 3, 7, '085261276338', '085261276338', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(112, 'POSTPAID', '480153', 15011770, 155148, 'PUTRI MUTIA', 'P', 3, 7, '081263649836', '081263649836', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(113, 'PREPAID', '480028', 21239989, 180101, 'BAYU SAPUTRA IB', 'L', 1, 7, '082279661491', '082279661491', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(114, 'PREPAID', '480137', 21240047, 180162, 'INDRA BIMA PRAKOSO', 'L', 1, 7, '081392304798', '085643222389', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(115, 'PREPAID', '480160', 21240153, 180673, 'Prasetyo Wibowo', 'L', 1, 7, '081227010105', '081227010105', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(116, 'PREPAID', '480173', 21240154, 180675, 'Reyhan Maulana Yafi', 'L', 1, 7, '081225884653', '081225884653', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(117, 'PREPAID', '480198', 21240191, 180701, 'Willy Fatkhu Dahri', 'L', 1, 7, '06282134927861', '06282134927861', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(118, 'PREPAID', '480068', 21240076, 180169, 'AKMALIA ISTINADIA', 'P', 1, 7, '082329543125', '082329543125', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(119, 'PREPAID', '480196', 21240203, 0, 'Anisa Dhe Charlie', 'P', 1, 7, '085383679090', '089656605997', 'Batch 3', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(120, 'PREPAID', '480046', 21239994, 180103, 'DEWI PURWITASARI', 'P', 1, 7, '081225230695', '081553472747', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(121, 'PREPAID', '480044', 21240003, 180092, 'FITRIANA WAHYU SETYANINGSIH', 'P', 1, 7, '082137823374', '08979147462', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(122, 'PREPAID', '480019', 21240008, 180116, 'MUTIARA DAIMATUS SAKINAH', 'P', 1, 7, '082150692850', '082150692850', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(123, 'PREPAID', '480058', 21240012, 180093, 'RAMADANI MIRJA', 'P', 1, 7, '081225017163', '085807141203', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(124, 'PREPAID', '480178', 21240188, 180677, 'Rini Sugianti', 'P', 1, 7, '085214046628', '081572072120', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(125, 'PREPAID', '480055', 21240016, 180095, 'SASTIA ARDIANINGTYAS', 'P', 1, 7, '081392875658', '081392875658', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(126, 'PREPAID', '480045', 21240021, 180097, 'WAHYU HANIFAH', 'P', 1, 7, '082221836950', '082221836950', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(127, 'POSTPAID', '480157', 18010192, 0, 'MISBAL AIRUN', 'L', 3, 8, '081221919040', '081221919040', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(128, 'POSTPAID', '480156', 16011855, 78459, 'CHRISANTAYANA YUNI EVENTI PANJAITAN', 'P', 3, 8, '082163181025', '082163181025', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(129, 'PREPAID', '480057', 21239979, 180081, 'ABDUL MAJID', 'L', 1, 8, '085158219974', '081776724200', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(130, 'PREPAID', '480161', 21240149, 180648, 'Bayu Aji Nugroho', 'L', 1, 8, '085327174288', '085602311088', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(131, 'PREPAID', '480078', 21240103, 180193, 'CHRISTOPER TAMBUNAN', 'L', 1, 8, '081321888358', '081321888358', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(132, 'PREPAID', '480029', 21240006, 180127, 'MUHAMMAD CHOIRUL ANAM', 'L', 1, 8, '081226221434', '085712976626', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(133, 'PREPAID', '480052', 21240037, 180163, 'ALFI RISKIANA', 'P', 1, 8, '082326197506', '082326197506', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(134, 'PREPAID', '480074', 21240078, 180170, 'ANNISA ISNAENI MAULIA', 'P', 1, 8, '081310978680', '085782455527', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(135, 'PREPAID', '480197', 21240200, 180719, 'Auliyail Maknun', 'P', 1, 8, '081338168741', '081578823725', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(136, 'PREPAID', '480080', 21240080, 180172, 'DHEA MAULIDINA ROHMA', 'P', 1, 8, '082310166087', '085604809264', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(137, 'PREPAID', '480027', 21239999, 180106, 'EVA YULIA WAHYU', 'P', 1, 8, '082324241291', '08886549252', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(138, 'PREPAID', '480091', 21240084, 180175, 'HASNA ANGGYA ACHDAN', 'P', 1, 8, '081395711996', '081395711996', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(139, 'PREPAID', '480159', 21240155, 180683, 'Luigy Maurizka Yasmine', 'P', 1, 8, '082135758320', '085600264756', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(140, 'PREPAID', '480040', 21240009, 180124, 'NABILLA RIDIASHARI', 'P', 1, 8, '082322444384', '081901834721', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(141, 'PREPAID', '480109', 21240096, 180181, 'RENY RIZQIYATUS SYAFA\'AH', 'P', 1, 8, '081287933804', '085158849263', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(142, 'PREPAID', '480114', 21240088, 180184, 'SHAFIRA RAMADHANI', 'P', 1, 8, '082225927515', '082225927515', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(143, 'PREPAID', '480120', 21240052, 180149, 'WINDA VIRDYA SITORUS', 'P', 1, 8, '081397131677', '081397131677', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(144, 'POSTPAID', '480149', 14009225, 0, 'SYAIFUL ALAMSYAH', 'L', 3, 9, '082165701119', '082165701119', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(145, 'POSTPAID', '480015', 10093845, 27635, 'EVA OKTALIANA NASRANI', 'P', 3, 9, '081260064721', '081260064721', 'RELOKASI', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(146, 'PREPAID', '480066', 21240034, 180144, 'AHMAD MUFLI AL GHALIB', 'L', 1, 9, '081326357014', '081326357014', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(147, 'PREPAID', '480184', 21240198, 180715, 'Moch Irvan Rifqy', 'L', 1, 9, '081393980871', '0895328762122', 'Batch 3', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(148, 'PREPAID', '480099', 21240070, 180152, 'MUHAMAD ARIFIN', 'L', 1, 9, '081215770302', '085879006506', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(149, 'PREPAID', '480118', 21240073, 180148, 'SUPRIYADI', 'L', 1, 9, '082331080037', '082331080037', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(150, 'PREPAID', '480069', 21239983, 180098, 'ALTRI YOLANDA SARI', 'P', 1, 9, '082188298158', '081366814128', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(151, 'PREPAID', '480062', 21239987, 180091, 'ARIFIA PUTRI HIDAYATI', 'P', 1, 9, '081320085636', '081320085636', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(152, 'PREPAID', '480134', 21240121, 180211, 'DIAN IKA PATICAWA', 'P', 1, 9, '085211651735', '?082133234549?', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(153, 'PREPAID', '480064', 21240000, 180107, 'FEBRIANDA MUTIARA NUR ANNISA', 'P', 1, 9, '082323873974', '082323873974', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(154, 'PREPAID', '480094', 21240085, 180176, 'INGGI RIZKY AMARTYA', 'P', 1, 9, '081389902131', '081389902131', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(155, 'PREPAID', '480103', 21240090, 180178, 'NATYA YOGA PRAHESTI', 'P', 1, 9, '081393941963', '081393941963', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(156, 'PREPAID', '480110', 21240097, 180182, 'RISKI YULI HARYANTI', 'P', 1, 9, '081225798905', '085712475146', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(157, 'PREPAID', '480172', 21240158, 180691, 'Rohayatun Nur Fadilah', 'P', 1, 9, '081390778931', '085868088903', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(158, 'PREPAID', '480190', 21240193, 180705, 'Sonia Tito Sumarsono', 'P', 1, 9, '08227333272', '085603414276', 'Batch 2', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(159, 'PREPAID', '480026', 21240022, 180126, 'WIWIN HARTANTI', 'P', 1, 9, '082223712643', '082223712643', 'Batch 1', '2021-07-24 01:09:24', '2021-07-24 01:09:24'),
(160, 'POSTPAID', '1234567', 123456, 12345, 'antony', 'L', 1, 10, '08124567', '081234567', '1', '2021-07-26 20:18:07', '2021-07-26 20:18:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `agent_awfe`
--

CREATE TABLE `agent_awfe` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username_awfe` varchar(255) NOT NULL,
  `password_awfe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `agent_awfe`
--

INSERT INTO `agent_awfe` (`id`, `nama`, `username_awfe`, `password_awfe`) VALUES
(1, 'Risman Taufik S', '480001@avaya.infomedia.co.id', 'Infomedia123'),
(2, 'Aznia Karim', '480002@avaya.infomedia.co.id', 'Infomedia123'),
(3, 'Andi Ayu Citra Sasmita Sari', '480003@avaya.infomedia.co.id', 'Infomedia123'),
(4, 'Rosneni', '480004@avaya.infomedia.co.id', 'Infomedia123'),
(5, 'Eka Pramudita S', '480005@avaya.infomedia.co.id', 'Infomedia123'),
(6, 'Gratiana Ucinta Tarigan', '480006@avaya.infomedia.co.id', 'Infomedia123'),
(7, 'Nur Elfrida Pulungan', '480007@avaya.infomedia.co.id', 'Infomedia123'),
(8, 'Hairiani', '480008@avaya.infomedia.co.id', 'Infomedia123'),
(9, 'Isneni Ema Nurifa Tanjung', '480009@avaya.infomedia.co.id', 'Infomedia123'),
(10, 'Desy Rizky Batubara', '480010@avaya.infomedia.co.id', 'Infomedia123'),
(11, 'Milda Yuni Ardita', '480011@avaya.infomedia.co.id', 'Infomedia123'),
(12, 'Hasnidar', '480012@avaya.infomedia.co.id', 'Infomedia123'),
(13, 'Febiyanti Samsul', '480013@avaya.infomedia.co.id', 'Infomedia123'),
(14, 'Fransiska Elisna', '480014@avaya.infomedia.co.id', 'Infomedia123'),
(15, 'Eva Oktaliana', '480015@avaya.infomedia.co.id', 'Infomedia123'),
(16, 'Tri Rahayu', '480016@avaya.infomedia.co.id', 'Infomedia123'),
(17, 'Denny Mahayana', '480016@avaya.infomedia.co.id', 'Infomedia123'),
(18, 'Rico Yoseno', '480018@avaya.infomedia.co.id', 'Infomedia123'),
(19, 'Mutiara Daimatus Sakinah', '480019@avaya.infomedia.co.id', 'Infomedia123'),
(20, 'Muhammad Fitra', '480020@avaya.infomedia.co.id', 'Infomedia123'),
(21, 'Dyah Retno', '480021@avaya.infomedia.co.id', 'Infomedia123'),
(22, 'Vivi Alvianti', '480022@avaya.infomedia.co.id', 'Infomedia123'),
(23, 'Salsabila Silmi D.', '480023@avaya.infomedia.co.id', 'Infomedia123'),
(24, 'Rizka Septiyani', '480024@avaya.infomedia.co.id', 'Infomedia123'),
(25, 'Aryan Nasikhul Amin', '480025@avaya.infomedia.co.id', 'Infomedia123'),
(26, 'Wiwin Hartanti', '480026@avaya.infomedia.co.id', 'Infomedia123'),
(27, 'Eva Yulia Wahyu', '480027@avaya.infomedia.co.id', 'Infomedia123'),
(28, 'Bayu Saputra Ib', '480028@avaya.infomedia.co.id', 'Infomedia123'),
(29, 'M Choirul Anam', '480029@avaya.infomedia.co.id', 'Infomedia123'),
(30, 'Dimas bangun budiarto', '480030@avaya.infomedia.co.id', 'Infomedia123'),
(31, 'Destriana Rahmawati', '480031@avaya.infomedia.co.id', 'Infomedia123'),
(32, 'Shavira Dhani K', '480032@avaya.infomedia.co.id', 'Infomedia123'),
(33, 'Allia Sabbita', '480033@avaya.infomedia.co.id', 'Infomedia123'),
(34, 'Danti Eka Ardiani', '480034@avaya.infomedia.co.id', 'Infomedia123'),
(35, 'Nadya Iliyyin', '480035@avaya.infomedia.co.id', 'Infomedia123'),
(36, 'Emma Sinamo', '480036@avaya.infomedia.co.id', 'Infomedia123'),
(37, 'Anang Ma\'ruf', '480037@avaya.infomedia.co.id', 'Infomedia123'),
(38, 'Atna Diafahma', '480038@avaya.infomedia.co.id', 'Infomedia123'),
(39, 'Rizky Dwi mernawati', '480039@avaya.infomedia.co.id', 'Infomedia123'),
(40, 'Nabilla Ridiashari', '480040@avaya.infomedia.co.id', 'Infomedia123'),
(41, 'Chusnul Salasa', '480041@avaya.infomedia.co.id', 'Infomedia123'),
(42, 'Rafa Zahrah Natasya', '480042@avaya.infomedia.co.id', 'Infomedia123'),
(43, 'Annisa Aulia R', '480043@avaya.infomedia.co.id', 'Infomedia123'),
(44, 'Fitriana Wahyu S', '480044@avaya.infomedia.co.id', 'Infomedia123'),
(45, 'Wahyu Hanifah', '480045@avaya.infomedia.co.id', 'Infomedia123'),
(46, 'Dewi Purwitasari', '480046@avaya.infomedia.co.id', 'Infomedia123'),
(47, 'Febrina Ramadhani', '480047@avaya.infomedia.co.id', 'Infomedia123'),
(48, 'Umi Nurjanah', '480049@avaya.infomedia.co.id', 'Infomedia123'),
(49, 'Salshabilla nafitri', '480050@avaya.infomedia.co.id', 'Infomedia123'),
(50, 'Aldito Arman', '480051@avaya.infomedia.co.id', 'Infomedia123'),
(51, 'Alfi Riskiana', '480052@avaya.infomedia.co.id', 'Infomedia123'),
(52, 'Arif Firmansyah', '480053@avaya.infomedia.co.id', 'Infomedia123'),
(53, 'Fastin Yaniar', '480054@avaya.infomedia.co.id', 'Infomedia123'),
(54, 'Sastia Ardianingtyas', '480055@avaya.infomedia.co.id', 'Infomedia123'),
(55, 'Adi Nofita Suryati', '480056@avaya.infomedia.co.id', 'Infomedia123'),
(56, 'Abdul Majid', '480057@avaya.infomedia.co.id', 'Infomedia123'),
(57, 'Ramadani Mirja', '480058@avaya.infomedia.co.id', 'Infomedia123'),
(58, 'Tri Budi Octavianus', '480059@avaya.infomedia.co.id', 'Infomedia123'),
(59, 'Dheny Asih Pangastuti', '480060@avaya.infomedia.co.id', 'Infomedia123'),
(60, 'Bayu Herlambang Putra', '480061@avaya.infomedia.co.id', 'Infomedia123'),
(61, 'Arifia Putri Hidayati', '480062@avaya.infomedia.co.id', 'Infomedia123'),
(62, 'Finaa Athaula', '480063@avaya.infomedia.co.id', 'Infomedia123'),
(63, 'Febrianda Mutiara', '480064@avaya.infomedia.co.id', 'Infomedia123'),
(64, 'Adetiya Putriani', '480065@avaya.infomedia.co.id', 'Avaya123!'),
(65, 'Ahmad Mufli Al Ghalib', '480066@avaya.infomedia.co.id', 'Avaya123!'),
(66, 'Aisa Noviani', '480067@avaya.infomedia.co.id', 'Avaya123!'),
(67, 'Akmalia Istinadia', '480068@avaya.infomedia.co.id', 'Avaya123!'),
(68, 'Altri Yolanda Sari', '480069@avaya.infomedia.co.id', 'Avaya123!'),
(69, 'Anastasia Hani', '480070@avaya.infomedia.co.id', 'Avaya123!'),
(70, 'Anindita Maditiara', '480071@avaya.infomedia.co.id', 'Avaya123!'),
(71, 'Aninditya Dwi', '480072@avaya.infomedia.co.id', 'Avaya123!'),
(72, 'Annisa Gusniar', '480073@avaya.infomedia.co.id', 'Avaya123!'),
(73, 'Annisa Isnaeni Maulia', '480074@avaya.infomedia.co.id', 'Avaya123!'),
(74, 'Annisaa Rahmawati', '480075@avaya.infomedia.co.id', 'Avaya123!'),
(75, 'Arina Hasbana Isnaeni', '480076@avaya.infomedia.co.id', 'Avaya123!'),
(76, 'Aufa Eka Putri Lestari', '480077@avaya.infomedia.co.id', 'Avaya123!'),
(77, 'Christoper Tambunan', '480078@avaya.infomedia.co.id', 'Avaya123!'),
(78, 'Danu Aji Surya Kusuma', '480079@avaya.infomedia.co.id', 'Avaya123!'),
(79, 'Dhea Maulidina Rohma', '480080@avaya.infomedia.co.id', 'Avaya123!'),
(80, 'Dina Amalia Firdani', '480081@avaya.infomedia.co.id', 'Avaya123!'),
(81, 'Dwi Ayu Destiani', '480082@avaya.infomedia.co.id', 'Avaya123!'),
(82, 'Dyah Ayu Sekar Arumsari', '480083@avaya.infomedia.co.id', 'Avaya123!'),
(83, 'Eka Putri Qurniazhari', '480084@avaya.infomedia.co.id', 'Avaya123!'),
(84, 'Erik Prasetyo', '480085@avaya.infomedia.co.id', 'Avaya123!'),
(85, 'Faiqkurniawan', '480086@avaya.infomedia.co.id', 'Avaya123!'),
(86, 'Faiz Herdian Putro Sakti', '480087@avaya.infomedia.co.id', 'Avaya123!'),
(87, 'Farise Ira Amara', '480088@avaya.infomedia.co.id', 'Avaya123!'),
(88, 'Febrina Reca Della', '480089@avaya.infomedia.co.id', 'Avaya123!'),
(89, 'Fennysia Aswita', '480090@avaya.infomedia.co.id', 'Avaya123!'),
(90, 'Hasna Anggya Achdan', '480091@avaya.infomedia.co.id', 'Avaya123!'),
(91, 'Herawati Nur Aprilia', '480092@avaya.infomedia.co.id', 'Avaya123!'),
(92, 'Herga Rahma Putranto', '480093@avaya.infomedia.co.id', 'Avaya123!'),
(93, 'Inggi Rizky Amartya', '480094@avaya.infomedia.co.id', 'Avaya123!'),
(94, 'Luwisca Fahira', '480095@avaya.infomedia.co.id', 'Avaya123!'),
(95, 'M. Fahmi Fakhrezi', '480096@avaya.infomedia.co.id', 'Avaya123!'),
(96, 'Miftah Farid', '480097@avaya.infomedia.co.id', 'Avaya123!'),
(97, 'Muarifatul Fitria', '480098@avaya.infomedia.co.id', 'Avaya123!'),
(98, 'Muhamad Arifin', '480099@avaya.infomedia.co.id', 'Avaya123!'),
(99, 'Muhammad Adji Sayuti', '480100@avaya.infomedia.co.id', 'Avaya123!'),
(100, 'Muhammad Kemal Arrafi', '480101@avaya.infomedia.co.id', 'Avaya123!'),
(101, 'Mustaqim Aji Negoro', '480102@avaya.infomedia.co.id', 'Avaya123!'),
(102, 'Natya Yoga Prahesti', '480103@avaya.infomedia.co.id', 'Avaya123!'),
(103, 'Nur Annisa', '480104@avaya.infomedia.co.id', 'Avaya123!'),
(104, 'Puji Retno Sari', '480105@avaya.infomedia.co.id', 'Avaya123!'),
(105, 'Rafa Zahrah Natssya', '480106@avaya.infomedia.co.id', 'Avaya123!'),
(106, 'Rahmawati', '480107@avaya.infomedia.co.id', 'Avaya123!'),
(107, 'Rd Riki Suherman', '480108@avaya.infomedia.co.id', 'Avaya123!'),
(108, 'Reny Rizqiyatus Syafa?Ah', '480109@avaya.infomedia.co.id', 'Avaya123!'),
(109, 'Riski Yuli Haryanti', '480110@avaya.infomedia.co.id', 'Avaya123!'),
(110, 'Rizki Fajar Yulianto', '480111@avaya.infomedia.co.id', 'Avaya123!'),
(111, 'Rizqi Yannuar Ramadhan', '480112@avaya.infomedia.co.id', 'Avaya123!'),
(112, 'Rosmayati', '480113@avaya.infomedia.co.id', 'Avaya123!'),
(113, 'Shafira Ramadhani', '480114@avaya.infomedia.co.id', 'Avaya123!'),
(114, 'Siti Asyiah', '480115@avaya.infomedia.co.id', 'Avaya123!'),
(115, 'Sri Rahayu', '480116@avaya.infomedia.co.id', 'Avaya123!'),
(116, 'Sulistyo Dianto', '480117@avaya.infomedia.co.id', 'Avaya123!'),
(117, 'Supriyadi', '480118@avaya.infomedia.co.id', 'Avaya123!'),
(118, 'Thoyibatul Ulya', '480119@avaya.infomedia.co.id', 'Avaya123!'),
(119, 'Winda Virdya Sitorus', '480120@avaya.infomedia.co.id', 'Avaya123!'),
(120, 'Wiwin Ambarwati', '480121@avaya.infomedia.co.id', 'Avaya123!'),
(121, 'Yayang Setiyani', '480122@avaya.infomedia.co.id', 'Avaya123!'),
(122, 'Agustinus Agustus Ndruru', '480123@avaya.infomedia.co.id', 'Avaya123!'),
(123, 'Aldi Yudha Agusta', '480124@avaya.infomedia.co.id', 'Avaya123!'),
(124, 'Fajar Assidiq', '480125@avaya.infomedia.co.id', 'Avaya123!'),
(125, 'Galih Priyono', '480126@avaya.infomedia.co.id', 'Avaya123!'),
(126, 'Laras Sekar Niti', '480127@avaya.infomedia.co.id', 'Avaya123!'),
(127, 'Lavenia Paramita', '480128@avaya.infomedia.co.id', 'Avaya123!'),
(128, 'Niza Noor Alfiyah', '480129@avaya.infomedia.co.id', 'Avaya123!'),
(129, 'Ocriza Tiara Anantama', '480130@avaya.infomedia.co.id', 'Avaya123!'),
(130, 'Vitaloca Ratu Permatasari', '480131@avaya.infomedia.co.id', 'Avaya123!'),
(131, 'Aisyah Ning Arumsari', '480132@avaya.infomedia.co.id', 'Avaya123!'),
(132, 'Anggit Harsanti', '480133@avaya.infomedia.co.id', 'Avaya123!'),
(133, 'Dian Ika Paticawa', '480134@avaya.infomedia.co.id', 'Avaya123!'),
(134, 'Firda Nur Khasanah', '480135@avaya.infomedia.co.id', 'Avaya123!'),
(135, 'Fithra Ayu Ratnawati', '480136@avaya.infomedia.co.id', 'Avaya123!'),
(136, 'Indra Bima Prakoso', '480137@avaya.infomedia.co.id', 'Avaya123!'),
(137, 'Miranda Amalia Noviani', '480138@avaya.infomedia.co.id', 'Avaya123!'),
(138, 'Riska Aprilia Saputri', '480139@avaya.infomedia.co.id', 'Avaya123!'),
(139, 'Yenny Aulia', '480140@avaya.infomedia.co.id', 'Avaya123!'),
(140, 'Walidah Asaf', '480141@avaya.infomedia.co.id', 'Avaya123!'),
(141, 'Calvaris', '480142@avaya.infomedia.co.id', 'Avaya123!'),
(142, 'Kahimma Hawati Hamid', '480143@avaya.infomedia.co.id', 'Avaya123!'),
(143, 'Al Fajar', '480144@avaya.infomedia.co.id', 'Avaya123!'),
(144, 'Arjun', '480145@avaya.infomedia.co.id', 'Avaya123!'),
(145, 'Rahmi', '480146@avaya.infomedia.co.id', 'Avaya123!'),
(146, 'Muh. Izar Fadli', '480147@avaya.infomedia.co.id', 'Avaya123!'),
(147, 'Randy Achmad', '480148@avaya.infomedia.co.id', 'Avaya123!'),
(148, 'Syaiful Alamsyah', '480149@avaya.infomedia.co.id', 'Avaya123!'),
(149, 'Elsha Dini Rahmad', '480150@avaya.infomedia.co.id', 'Avaya123!'),
(150, 'Kamaluddin Batubara', '480151@avaya.infomedia.co.id', 'Avaya123!'),
(151, 'Barnabas Tarigan', '480152@avaya.infomedia.co.id', 'Avaya123!'),
(152, 'Putri Mutia', '480153@avaya.infomedia.co.id', 'Avaya123!'),
(153, 'Muhammad Fikram', '480154@avaya.infomedia.co.id', 'Avaya123!'),
(154, 'Heni Zahara', '480155@avaya.infomedia.co.id', 'Avaya123!'),
(155, 'Chrisantayana Yuni Eventi Panjaitan', '480156@avaya.infomedia.co.id', 'Avaya123!'),
(156, 'Misbal Airun', '480157@avaya.infomedia.co.id', 'Avaya123!'),
(157, 'Agung Setia Budi', '480158@avaya.infomedia.co.id', 'Avaya123!'),
(158, 'Luigy Maurizka Yasmine', '480159@avaya.infomedia.co.id', 'Avaya123!'),
(159, 'Prasetyo Wibowo', '480160@avaya.infomedia.co.id', 'Avaya123!'),
(160, 'Bayu Aji Nugroho', '480161@avaya.infomedia.co.id', 'Avaya123!'),
(161, 'Ade Ayu Komalasari', '480162@avaya.infomedia.co.id', 'Avaya123!'),
(162, 'Olis Lisnawati', '480163@avaya.infomedia.co.id', 'Avaya123!'),
(163, 'Maulanie Nur Rachma Novianty', '480164@avaya.infomedia.co.id', 'Avaya123!'),
(164, 'Andika Pratama Pasaribu', '480165@avaya.infomedia.co.id', 'Avaya123!'),
(165, 'Fahrizal', '480166@avaya.infomedia.co.id', 'Avaya123!'),
(166, 'Naufal Alanggya Wijdan', '480167@avaya.infomedia.co.id', 'Avaya123!'),
(167, 'Bagus Sudrajat', '480168@avaya.infomedia.co.id', 'Avaya123!'),
(168, 'Angga Sukmana Putra', '480169@avaya.infomedia.co.id', 'Avaya123!'),
(169, 'Catur Desta Putra', '480170@avaya.infomedia.co.id', 'Avaya123!'),
(170, 'Bangkit Prayogi', '480171@avaya.infomedia.co.id', 'Avaya123!'),
(171, 'Rohayatun Nur Fadilah', '480172@avaya.infomedia.co.id', 'Avaya123!'),
(172, 'Reyhan Maulana Yafi', '480173@avaya.infomedia.co.id', 'Avaya123!'),
(173, 'Yumna Pinkan Zalfana', '480174@avaya.infomedia.co.id', 'Avaya123!'),
(174, 'Hutami Budiati', '480175@avaya.infomedia.co.id', 'Avaya123!'),
(175, 'Mar\'atus Sholekha', '480176@avaya.infomedia.co.id', 'Avaya123!'),
(176, 'Muhammad Ilham Nurrahman', '480177@avaya.infomedia.co.id', 'Avaya123!'),
(177, 'Rini Sugianti', '480178@avaya.infomedia.co.id', 'Avaya123!'),
(178, 'Tiara Kusuma Indrayanto', '480179@avaya.infomedia.co.id', 'Avaya123!'),
(179, 'Kuncoro Rahmad Widodo', '480180@avaya.infomedia.co.id', 'Avaya123!'),
(180, 'Renaldi Fahmi Aji', '480181@avaya.infomedia.co.id', 'Avaya123!'),
(181, 'Siti Irofah', '480182@avaya.infomedia.co.id', 'Avaya123!'),
(182, 'Reyhan Mabyna Putra', '480183@avaya.infomedia.co.id', 'Avaya123!'),
(183, 'Moch Irvan Rifqy', '480184@avaya.infomedia.co.id', 'Avaya123!'),
(184, 'Tiara Dewi Lestari', '480185@avaya.infomedia.co.id', 'Avaya123!'),
(185, 'Hamdy Smith Al Hadar', '480186@avaya.infomedia.co.id', 'Avaya123!'),
(186, 'Rickie Parningotan Pakpahan', '480187@avaya.infomedia.co.id', 'Avaya123!'),
(187, 'Elvina Wulan Fitria Suci', '480188@avaya.infomedia.co.id', 'Avaya123!'),
(188, 'Rian nugroho', '480189@avaya.infomedia.co.id', 'Avaya123!'),
(189, 'Sonia Tito Sumarsono', '480190@avaya.infomedia.co.id', 'Avaya123!'),
(190, 'Rina Faja Taxvia', '480191@avaya.infomedia.co.id', 'Avaya123!'),
(191, 'Citra Ayu Widianingsih', '480192@avaya.infomedia.co.id', 'Avaya123!'),
(192, 'Indah Anung Diani', '480193@avaya.infomedia.co.id', 'Avaya123!'),
(193, 'Yonnas Dian Herdianto', '480194@avaya.infomedia.co.id', 'Avaya123!'),
(194, 'Qomariah Nurrochmah', '480195@avaya.infomedia.co.id', 'Avaya123!'),
(195, 'Anisa Dhe Charlie', '480196@avaya.infomedia.co.id', 'Avaya123!'),
(196, 'Auliyail Maknun', '480197@avaya.infomedia.co.id', 'Avaya123!'),
(197, 'Willy Fatkhu Dahri', '480198@avaya.infomedia.co.id', 'Avaya123!'),
(198, 'Jessi Febriliyana', '480199@avaya.infomedia.co.id', 'Avaya123!'),
(199, 'Indah Kurniasih', '480200@avaya.infomedia.co.id', 'Avaya123!'),
(200, 'Alodia Okta Azzahra', '480201@avaya.infomedia.co.id', 'Avaya123!'),
(201, 'Briant Armiadi', '480202@avaya.infomedia.co.id', 'Avaya123!'),
(202, 'Cakra Gusti Aditya Delianto', '480203@avaya.infomedia.co.id', 'Avaya123!'),
(203, 'Febry Irianto Nugroho', '480204@avaya.infomedia.co.id', 'Avaya123!'),
(204, 'Ken Rama Satya Adi', '480205@avaya.infomedia.co.id', 'Avaya123!'),
(205, 'Laily Triana Putri', '480206@avaya.infomedia.co.id', 'Avaya123!'),
(206, 'Moh. Zaenal Affani', '480207@avaya.infomedia.co.id', 'Avaya123!'),
(207, 'Muhammad Deny H', '480208@avaya.infomedia.co.id', 'Avaya123!'),
(208, 'Muhammad Hilda Al Iqbal', '480209@avaya.infomedia.co.id', 'Avaya123!'),
(209, 'Muhammad Izzuddin', '4802010@avaya.infomedia.co.id', 'Avaya123!'),
(210, 'Muhammad Zaki Mubarok', '480211@avaya.infomedia.co.id', 'Avaya123!'),
(211, 'Novia Lanjela', '480212@avaya.infomedia.co.id', 'Avaya123!'),
(212, 'Nurma Fatmawati', '480213@avaya.infomedia.co.id', 'Avaya123!'),
(213, 'Raditinia Martya Candra Dewi', '480214@avaya.infomedia.co.id', 'Avaya123!'),
(214, 'Rohmat Subagiyo', '480215@avaya.infomedia.co.id', 'Avaya123!'),
(215, 'Rudi Kristiyanto', '480216@avaya.infomedia.co.id', 'Avaya123!'),
(216, 'Shohib Afham', '480217@avaya.infomedia.co.id', 'Avaya123!'),
(217, 'Umam Ihsanil Ummah', '480218@avaya.infomedia.co.id', 'Avaya123!'),
(218, 'Wahyu Eko Setiawan', '480219@avaya.infomedia.co.id', 'Avaya123!');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `site_awal`
--

CREATE TABLE `site_awal` (
  `id` int(11) NOT NULL,
  `nama_site` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `site_awal`
--

INSERT INTO `site_awal` (`id`, `nama_site`, `created_at`, `updated_at`) VALUES
(1, 'Semarang', '2021-07-24 01:15:15', '2021-07-24 01:15:15'),
(2, 'Makasar', '2021-07-24 01:15:15', '2021-07-24 01:15:15'),
(3, 'Medan', '2021-07-24 01:15:15', '2021-07-24 01:15:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tl`
--

CREATE TABLE `tl` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nik_csdm` int(11) NOT NULL,
  `jml_postpaid_agent` int(11) DEFAULT NULL,
  `jml_prepaid_agent` int(11) DEFAULT NULL,
  `jml_gender_agent_L` int(11) DEFAULT NULL,
  `jml_gender_agent_P` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tl`
--

INSERT INTO `tl` (`id`, `nama`, `nik_csdm`, `jml_postpaid_agent`, `jml_prepaid_agent`, `jml_gender_agent_L`, `jml_gender_agent_P`, `total`, `created_at`, `updated_at`) VALUES
(1, 'Aryan Nasikhul Amin', 21240025, 2, 13, 4, 11, 15, '2021-07-24 01:16:36', '2021-07-24 01:16:36'),
(2, 'DEWI MAULINA ARISANTI', 10093979, 3, 15, 5, 13, 18, '2021-07-24 01:16:36', '2021-07-24 01:16:36'),
(3, 'Muh Izar Fadli\r\n', 15008015, 3, 15, 6, 12, 18, '2021-07-24 01:16:36', '2021-07-24 01:16:36'),
(4, 'Randy Achmad\r\n', 18008810, 2, 16, 7, 11, 18, '2021-07-24 01:16:36', '2021-07-24 01:16:36'),
(5, 'Rico Yoseno\r\n', 21240026, 3, 17, 6, 14, 20, '2021-07-24 01:16:36', '2021-07-24 01:16:36'),
(6, 'Roy Putra Kurniawan', 10009615, 3, 17, 7, 13, 20, '2021-07-24 01:16:36', '2021-07-24 01:16:36'),
(7, 'SONDANG LAMSIHAR SILITONGA\r\n', 10010604, 3, 14, 6, 11, 17, '2021-07-24 01:16:36', '2021-07-24 01:16:36'),
(8, 'TRI RAHAYU\r\n', 19231891, 2, 15, 5, 12, 17, '2021-07-24 01:16:36', '2021-07-24 01:16:36'),
(9, 'Upik Susanti\r\n', 3924, 2, 14, 5, 11, 16, '2021-07-24 01:16:36', '2021-07-24 01:16:36'),
(10, 'brilly', 8812, 1, 0, 1, 0, 1, '2021-07-26 19:59:34', '2021-07-26 20:18:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_verified_at` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `updated_at` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Brilly', 'brilly@gmail.com', '2021-07-21 06:24:36', '$2y$10$hwhXrvUnYjTebzv.KNbwD.MefLhqoOjop53JeRvC1tXrr4JjYjbeK', '2021-07-21 06:24:37', '2021-07-21 06:24:37');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agent`
--
ALTER TABLE `agent`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `agent_awfe`
--
ALTER TABLE `agent_awfe`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `site_awal`
--
ALTER TABLE `site_awal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tl`
--
ALTER TABLE `tl`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agent`
--
ALTER TABLE `agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT untuk tabel `agent_awfe`
--
ALTER TABLE `agent_awfe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `site_awal`
--
ALTER TABLE `site_awal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tl`
--
ALTER TABLE `tl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
