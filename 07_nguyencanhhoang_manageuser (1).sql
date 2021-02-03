-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th2 03, 2021 lúc 05:34 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `07_nguyencanhhoang_manageuser`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_group`
--

CREATE TABLE `mst_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mst_group`
--

INSERT INTO `mst_group` (`group_id`, `group_name`) VALUES
(1, 'Phòng phát triển sô 1'),
(2, 'Phòng phát triển sô 2'),
(3, 'Nhóm phát triển số 3'),
(4, 'Phòng phát triển sô 4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mst_japan`
--

CREATE TABLE `mst_japan` (
  `code_level` varchar(15) NOT NULL,
  `name_level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `mst_japan`
--

INSERT INTO `mst_japan` (`code_level`, `name_level`) VALUES
('N1', 'Trình độ tiếng nhật cấp 1'),
('N2', 'Trình độ tiếng nhật cấp 2'),
('N3', 'Trình độ tiếng nhật cấp 3'),
('N4', 'Trình độ tiếng nhật cấp 4'),
('N5', 'Trình độ tiếng nhật cấp 5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_detail_user_japan`
--

CREATE TABLE `tbl_detail_user_japan` (
  `detail_user_japan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code_level` varchar(15) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_detail_user_japan`
--

INSERT INTO `tbl_detail_user_japan` (`detail_user_japan_id`, `user_id`, `code_level`, `start_date`, `end_date`, `total`) VALUES
(7, 1, 'N2', '2020-01-01', '2021-01-01', 180),
(8, 2, 'N2', '2020-01-01', '2021-01-01', 180),
(9, 3, 'N2', '2020-01-01', '2021-01-01', 180),
(10, 4, 'N2', '2020-01-01', '2021-01-01', 180),
(11, 5, 'N2', '2020-01-01', '2021-01-01', 180),
(12, 6, 'N2', '2020-01-01', '2021-01-01', 180),
(13, 7, 'N2', '2020-01-01', '2021-01-01', 180),
(14, 8, 'N2', '2020-01-01', '2021-01-01', 180),
(15, 9, 'N2', '2020-01-01', '2021-01-01', 180),
(16, 10, 'N5', '2020-02-20', '2021-12-01', 69),
(17, 11, 'N2', '2020-01-01', '2021-01-01', 180),
(18, 12, 'N2', '2020-01-01', '2021-01-01', 180),
(19, 13, 'N2', '2020-01-01', '2021-01-01', 180),
(20, 14, 'N3', '2020-01-01', '2021-01-01', 180),
(23, 17, 'N2', '2020-01-01', '2021-01-01', 180),
(24, 112, 'N2', '2020-01-01', '2021-01-01', 180),
(27, 24, 'N1', '2020-12-23', '2021-12-23', 180),
(30, 34, 'N3', '2018-12-23', '2021-12-23', 170),
(31, 25, 'N5', '2020-12-24', '2021-12-24', 169),
(32, 117, 'N1', '2020-12-25', '2021-12-25', 169),
(33, 35, 'N5', '2020-12-25', '2021-12-25', 169),
(34, 36, 'N5', '2020-12-25', '2021-12-25', 180),
(35, 19, 'N2', '2020-12-25', '2021-12-25', 178),
(39, 124, 'N1', '2020-12-28', '2021-12-28', 169),
(40, 125, 'N2', '2020-12-28', '2021-12-28', 169),
(41, 126, 'N2', '2020-12-29', '2021-12-29', 180),
(42, 18, 'N5', '2020-12-31', '2021-12-31', 169),
(44, 127, 'N1', '2021-01-04', '2022-01-04', 169),
(45, 128, 'N1', '2021-01-04', '2022-01-04', 180),
(46, 129, 'N3', '2021-01-04', '2022-01-04', 69),
(47, 131, 'N3', '2021-01-05', '2022-01-05', 89),
(50, 136, 'N4', '2021-01-05', '2022-01-05', 111),
(51, 133, 'N5', '2021-01-06', '2022-12-06', 102),
(54, 132, 'N1', '2021-01-06', '2022-09-06', 179),
(55, 138, 'N5', '2021-01-06', '2022-01-06', 180);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `login_name` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `full_name_kana` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `birthday` date NOT NULL,
  `rule` int(1) NOT NULL,
  `salt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `group_id`, `login_name`, `password`, `full_name`, `full_name_kana`, `email`, `tel`, `birthday`, `rule`, `salt`) VALUES
(1, 1, 'admin01', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen Van A', NULL, 'abcxyz@gmail.com', '0943381266', '2020-12-08', 0, 'gdNFTCQRj'),
(3, 1, 'user03', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen Canh H', '', 'abcxxyz@gmail.com', '123-123-123', '2020-12-08', 1, 'gdNFTCQRj'),
(4, 1, 'user4', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen Van B', NULL, 'ooisd34update23344@gmail.com', '012-456-789', '2020-12-08', 1, 'gdNFTCQRj'),
(5, 1, 'user01', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen Van F', NULL, 'hoanasght99@gmail.com', '0466451266', '2020-12-08', 1, 'gdNFTCQRj'),
(6, 1, 'user1', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen Trung A', NULL, 'hoanzxcght99@gmail.com', '0947781266', '2020-12-08', 1, 'gdNFTCQRj'),
(8, 1, 'user3', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen Van A', NULL, 'hosadanght99@gmail.com', '0947781236', '2020-12-08', 1, 'gdNFTCQRj'),
(9, 1, 'user4', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen Dang F', NULL, 'hozxcanght99@gmail.com', '0947781656', '2020-12-08', 1, 'gdNFTCQRj'),
(11, 1, 'user6', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen Dang F', NULL, 'hossazxcanght99@gmail.com', '0123456623', '2020-12-08', 1, 'gdNFTCQRj'),
(13, 1, 'user6asds', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen Trung E', NULL, 'hoszcxvazxght99@gmail.com', '0112216623', '2020-12-08', 1, 'gdNFTCQRj'),
(14, 1, 'er6asds', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen Trung T', '', 'hoszcxvxght99@gmail.com', '1234-567-123', '2020-02-28', 1, 'gdNFTCQRj'),
(15, 1, 'er6asdsds', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen Trung O', NULL, 'hosxght113@gmail.com', '0167212323', '2020-12-08', 1, 'gdNFTCQRj'),
(17, 2, 'er6dxxsds', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen O', NULL, 'sdfxasd113@gmail.com', '0167212543', '2020-12-08', 1, 'gdNFTCQRj'),
(18, 2, 'ccccccc', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen Anh Q', '', 'okokasd113@gmail.com', '000-000-000', '2020-12-08', 1, 'gdNFTCQRj'),
(19, 2, 'asasasdasd', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Le Anh O', '', 'okokassd113@gmail.com', '123-123-123', '2020-12-08', 1, 'gdNFTCQRj'),
(23, 1, 'themoinheee', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Tran A', NULL, 'okosdfassd113@gmail.com', '999-999-999', '2020-12-08', 1, 'gdNFTCQRj'),
(29, 4, 'admin01xxxxxccc', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Tran Anh E', NULL, 'ooisd2@gmail.com', '0413-224-444', '2020-12-08', 1, 'gdNFTCQRj'),
(30, 1, 'bnnnsds', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Nguyen Hong Anh', NULL, 'okssdfd11@gmail.com', '0633-264-777', '2020-12-08', 1, 'gdNFTCQRj'),
(31, 1, 'bnnnns', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Tran Hong Q', NULL, 'okssdd11@gmail.com', '0683-264-707', '2020-12-08', 1, 'gdNFTCQRj'),
(34, 2, 'hoanghoang', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Bui Anh A%[/;_]', '', 'ooisd34update2@gmail.com', '0413-344-445', '1999-12-08', 1, 'gdNFTCQRj'),
(35, 1, 'admin01kokok', 'cd9bf32cf5e39f5eb314784accc3b661693d96be', 'Bui Hong Anh', '', 'okssdf1@gmail.com', '0633-324-777', '2020-12-08', 1, 'gdNFTCQRj'),
(115, 1, 'hoanght99', '7504da95fe0ca1b5087f36ba2471ceaefed418a3', '\\\\_%;-[]', '', 'checkpa23ssnch@gmail.com', '123-123-123', '2002-12-17', 1, '7504da95fe0ca1b5087f36ba2471ceaefed418a3'),
(124, 3, 'testhomnay', '576371f8ec86e73e62713f60b628aa4e5fe23f15', 'Hoangssssss', 'トップトップトップトップ', 'checkpasssssccsnch@gmail.com', '123-123-123', '2020-12-28', 1, '1609128405075'),
(126, 1, 'admin01xxxxx', '4ba088319b1330a249823a80e64167dbff61f490', 'Hoang', '', 'hoanght9999@gmail.com', '123-123-123', '2020-12-29', 1, '1609219005763'),
(128, 2, 'admin01dasdasd', '783165f19526ccad75a4df1879effff6a571d7fd', 'mmmmmmmmm', '', 'checkpassssdsdsnch@gmail.com', '123-1-1', '2021-01-04', 1, '1609736499656'),
(129, 4, 'admin01okok', '47e7baf846591b953b1171a31fd0069ee3ecec79', 'hoangggggxxxxvv', '', 'okokok@gmail.com', '123-123-000', '2000-01-04', 1, '1609736811204'),
(130, 1, 'addnickmoi', 'bd7e6fb22c52f62f892e433efbf20a8376f1e80a', 'addnickmoi', '', 'checkpssssassnch@gmail.com', '123-123-123', '2000-01-05', 1, '1609814589593'),
(131, 1, 'hoanghoang1', 'fccbd661de775bc6a86c952a900d36ae5538977', 'hoangnguyencanh', '', 'hhhhhh@gmail.com', '123-123-123', '2000-01-05', 1, '1609818748960'),
(132, 1, 'sadasdasd', 'fccbd661de775bc6a86c952a900d36ae5538977', 'thaydoi132', 'トップトップトップ', '_Sssdd12s@gmail.com', '123-123-123', '1999-01-05', 1, '1609818748960'),
(133, 1, 'lllllasdd', 'fccbd661de775bc6a86c952a900d36ae5538977', 'xxxxxxxxxxxx', '???', 'updateneww@gmail.com', '123-123-1', '2000-01-05', 1, '7504da95fe0ca1b5087f36ba2471ceaefed418a3'),
(135, 2, 'admin01sdsd', 'f12d7b45810f7f92a117b264a4b824ff8a4fc390', 'aaaaa', '', 'checksdsddsapassnch@gmail.com', '123-123-123', '2008-01-05', 1, '1609821750114'),
(136, 4, 'admin01www', '27cffc8cfe30153bcdd454726103f624fe72f807', 'asdasasd', '', '_@gmail.com', '123-123-123', '1990-01-05', 1, '1609821816887'),
(137, 1, 'admin01xxxx', '38fe0f100e74edc530389ee037bbb8a3fa953ae2', 'adasdasd', '??????', 'xyzxyszxyz@gmail.com', '123-123-12388', '2021-01-06', 1, '1609905908788'),
(138, 1, 'admin01sdsddds', 'fdd4743434503f213916f4c3e69ebeea90e5bb5e', 'aaaasds', '', 'demoorder@gmail.com', '123-123-1', '2017-01-06', 0, '1609907774339');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `mst_group`
--
ALTER TABLE `mst_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Chỉ mục cho bảng `mst_japan`
--
ALTER TABLE `mst_japan`
  ADD PRIMARY KEY (`code_level`);

--
-- Chỉ mục cho bảng `tbl_detail_user_japan`
--
ALTER TABLE `tbl_detail_user_japan`
  ADD PRIMARY KEY (`detail_user_japan_id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `mst_group`
--
ALTER TABLE `mst_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_detail_user_japan`
--
ALTER TABLE `tbl_detail_user_japan`
  MODIFY `detail_user_japan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
