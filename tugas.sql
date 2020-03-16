-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2020 at 01:48 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailevent`
--

CREATE TABLE `detailevent` (
  `detailID` int(10) NOT NULL,
  `eventID` int(10) NOT NULL,
  `pesertaID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailevent`
--

INSERT INTO `detailevent` (`detailID`, `eventID`, `pesertaID`) VALUES
(2, 3, 4),
(3, 2, 7),
(4, 1, 9),
(5, 2, 20),
(6, 2, 9),
(7, 3, 10),
(8, 3, 11),
(9, 4, 12),
(10, 4, 13),
(11, 3, 15),
(12, 4, 16),
(13, 2, 17),
(14, 1, 18),
(15, 3, 14),
(16, 2, 19),
(17, 2, 21),
(18, 1, 22),
(19, 4, 23),
(20, 1, 30),
(21, 1, 21),
(22, 1, 22),
(23, 4, 21),
(24, 4, 21),
(25, 3, 29),
(26, 1, 28),
(27, 1, 28);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventID` int(10) NOT NULL,
  `namaEvent` varchar(30) NOT NULL,
  `tglEvent` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventID`, `namaEvent`, `tglEvent`) VALUES
(1, 'seminar data mining', '2020-03-01'),
(2, 'seminar cyber security', '2020-02-21'),
(3, 'seminar nasional data forensik', '2020-03-05'),
(4, 'seminar technopreneur', '2020-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `pesertaID` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nohp` varchar(13) NOT NULL,
  `pts` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`pesertaID`, `nama`, `email`, `nohp`, `pts`) VALUES
(7, 'Fahmi Yanuar', 'fahmi.yanuar.fy@gmail.com', '085868886802', 'STMIK Elrahma'),
(8, 'Fatikha sari', 'FatikhaDcw31@gmail.com', '082258936882', 'STMIK Elrahma'),
(9, 'Nani maharani', 'Nanim802@gmail.com', '082135668390', 'STMIK Elrahma'),
(10, 'Eka desi ramadani', 'Ekadesi48@gmail.com', '085791096231', 'STMIK Elrahma'),
(11, 'Finka intan', 'Finkaintan09@gmail.com', '085705205487', 'STMIK Elrahma'),
(12, 'enik susilowati', 'eniksusilowati53@gmail.com', '085840418631', 'STMIK Elrahma'),
(13, 'usamah bahfi', 'bahfiusamah@gmail.com', '081252108428', 'STMIK Elrahma'),
(14, 'ahmad mirdasy fauzi hamili', 'fwzyhmyly@gmail.com', '081234680152', 'STMIK Elrahma'),
(15, 'Fadli rohmatin nizam', 'Fadlirohmatin567@gmail.com', '087820410833', 'STMIK Elrahma'),
(16, 'Annisa budi utami', 'annisabudi32@gmail.com', '085713167380', 'STMIK Elrahma'),
(17, 'Setiadi Ramadhan', 'setiadiramazakurai@gmail.com', '089505410347', 'STMIK Elrahma'),
(18, 'Kristiana Riswanti Ramadani', 'titienyk4@gmail.com', '0895392547728', 'STMIK Elrahma'),
(19, 'Denti Lupita Sari', 'dentilupitasari1508@gmail.com', '0823717708697', 'STMIK Elrahma'),
(20, 'Jeni Eka Azantri', 'jeniekasantri@gmail.com', '085602789774', 'STMIK Elrahma'),
(21, 'Wenny Efrica Puspita', 'wennyefrica03@gmail.com', '081228857779', 'STMIK Elrahma'),
(22, 'Mey Fely', 'meyfely149@gmail.com', '082113203615', 'STMIK Elrahma'),
(23, 'Aminur Khoirun Nisa', 'inspirasi.aminur@gmail.com', '082326569590', 'STMIK Elrahma'),
(24, 'Eka Sugiarti', 'ekasugiarti1610@gmail.com', '082282714820', 'STMIK Elrahma'),
(25, 'Ardi Pernando', 'ardyfernando7@gmail.com', '082184007751', 'STMIK Elrahma'),
(26, 'Sujud Ramadhan', 'sujudramadhan1@gmail.com', '081330248560', 'STMIK Elrahma'),
(27, 'erik pratama', 'erikmda75@gmail.com', '082371877530', 'STMIK Elrahma'),
(28, 'Dwi tri anggraheni', 'dwianggraheni2000@gmail.com', '085641395321', 'STMIK Elrahma'),
(29, 'Khairullah naufal', 'naufalsae70@gmail.com', '082236461229', 'STMIK Elrahma'),
(30, 'BUDI MUARIF', 'budimuarifarif@gmail.com', '082329440880', 'STMIK Elrahma'),
(31, 'Muhammad  Nurmakhin', 'Noermaxzmuhammadz123@gmail.com', '082241111941', 'STMIK Elrahma'),
(32, 'Bayu estiawan', 'Bayuam3011@gmail.com', '082289300641', 'STMIK Elrahma'),
(33, 'yulisa ambella', 'ambellayulisa@gmail.com', '085273436924', 'STMIK Elrahma'),
(34, 'Denia bernika evanda', 'denianbernikaevanda123@gmail.com', '081272808708', 'STMIK Elrahma'),
(35, 'Muhammad afkar farras ', 'afkarmuhammad22@gmail.com', '082147890953', 'STMIK Elrahma'),
(36, 'Muhammad Rais Ajhuri', 'mrais1203@gmail.com', '085298563527', 'STMIK Elrahma'),
(37, 'Afrizal Ajuj M.', 'afrizalajuj76@gmail.com', '083156674234', 'STMIK Elrahma'),
(38, 'LUTFI AFRIATUL LATIFAH', 'lutfiafriatul@gmail.com', '087812565269', 'STMIK Elrahma'),
(39, 'Setiyani Nur Khasanah', 'setiyania37@gmail.com', '081392963320', 'STMIK Elrahma'),
(40, 'Dina alfiana', 'dinaalfiana@yahoo.com', '085789927369', 'STMIK Elrahma'),
(41, 'Galih Budi Prakoso', 'galihprakoso932@gmail.com', '08995119514', 'STMIK Elrahma'),
(42, 'Bastian Wicaksono Aji', 'zeroray23@gmail.com', '089650849265', 'STMIK Elrahma'),
(43, 'Sidiq Nur Sholeh', 'sidiqnursoleh@gmail.com', '085295178237', 'STMIK Elrahma'),
(44, 'Hilal Hamdi Hafit', 'hilalbow011@gmail.com', '085240171940', 'STMIK Elrahma'),
(45, 'Muhammad fiqri asra', 'saqifiqas@gmail.com', '0895801211144', 'STMIK Elrahma'),
(46, 'Andrias ari ardiyanto ', 'andriasari4@gmail.com', '082264641055', 'STMIK Elrahma'),
(47, 'yulistiana', 'yulistianachalax@gmail.com', '085764510526', 'STMIK Elrahma'),
(48, 'Ahmad Miftahul Ulum', 'ahmadmiftahululum29@gmail.com', '082383208008', 'STMIK Elrahma'),
(49, 'Nur Rahmanudin', 'nurrahmanudin08@gmail.com', '082255918605', 'STMIK Elrahma'),
(50, 'Muhammad Marwan', 'kakeksipoh@gmail.com', '082313084618', 'STMIK Elrahma'),
(51, 'Vetliyanti MavikaSari', 'vetliyantimavika@gmail.com', '082269147805', 'STMIK Elrahma'),
(52, 'ahmad fadillah', 'ahmadfadila926@gmail.com', '081367319683', 'STMIK Elrahma'),
(53, 'Tri widayati', 'triwidayaty@gmail.com', '082143739701', 'STMIK Elrahma'),
(54, 'Galuh Lafita Putri', 'galuhjogja1@gmail.com', '085742987394', 'STMIK Elrahma');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailevent`
--
ALTER TABLE `detailevent`
  ADD PRIMARY KEY (`detailID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`pesertaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `pesertaID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
