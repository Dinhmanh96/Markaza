-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 13, 2017 lúc 04:48 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `markaza`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id_cmt` int(10) NOT NULL,
  `id_sp` int(10) NOT NULL,
  `name_cmt` text COLLATE utf8_vietnamese_ci NOT NULL,
  `text_cmt` text COLLATE utf8_vietnamese_ci NOT NULL,
  `time_cmt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id_cmt`, `id_sp`, `name_cmt`, `text_cmt`, `time_cmt`) VALUES
(2, 57, 'Nguyễn Đình Mạnh', 'Sản phẩm tuyệt', '2017-04-07 00:00:00'),
(27, 57, 'Phạm Duy Quân', 'Đóng gói sản phẩm tốt.', '2017-04-07 00:00:00'),
(41, 170, 'Mạnh', 'Sản phẩm tốt', '2017-04-07 10:53:13'),
(42, 105, 'Quân', 'Tốt!', '2017-04-07 11:45:15'),
(45, 72, 'Trần Nguyên Nghĩa', 'Sản phẩm hợp giá tiền!', '2017-04-07 19:33:43'),
(46, 65, 'Trà Thị Ngọc', 'Máy nhìn ngoài đẹp hơn trong ảnh, dùng pin bền mà giá tiền lại hợp lý. Cảm ơn MarKaza!', '2017-04-07 22:03:03'),
(47, 101, 'QUân', 'DM\r\n', '2017-04-11 09:25:23'),
(48, 76, 'Nguyễn Thị Tuyết', 'Máy tính này dùng phù hợp với mình, giá tốt mà chất lượng không thua kém mấy thương hiệu lớn nào cả.', '2017-04-11 17:15:55'),
(49, 80, 'Lê Văn Hải', 'Máy dùng rất mượt và đẹp. Nên mua!', '2017-04-11 20:41:44'),
(50, 67, 'Mai Thị Ân', 'Máy dùng rất thích!', '2017-04-12 17:37:41'),
(51, 72, 'Linh', 'Sản phẩm đẹp quá!', '2017-04-15 19:54:49'),
(52, 105, 'Mạnh', 'Áo mặc rất đẹp!', '2017-04-19 00:38:14'),
(53, 58, 'a', 'a', '2017-04-19 22:45:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dmn`
--

CREATE TABLE `dmn` (
  `id_dmn` int(10) NOT NULL,
  `id_dmt` int(10) NOT NULL,
  `ten_dmn` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `dmn`
--

INSERT INTO `dmn` (`id_dmn`, `id_dmt`, `ten_dmn`) VALUES
(1, 1, 'Điện thoại'),
(2, 1, 'Máy tính bảng'),
(3, 1, 'Laptop/Pc'),
(4, 1, 'Phụ kiện điện tử'),
(5, 1, 'Tivi/hệ thống âm thanh'),
(6, 1, 'Điện tử nhà bếp'),
(7, 2, 'Sơ mi nam/Áo nam'),
(8, 2, 'Quần Jean'),
(9, 2, 'Phụ kiện thời trang nam'),
(10, 3, 'Áo/Sơ mi nữ'),
(11, 3, 'Quần/váy'),
(12, 3, 'Phụ kiện thời trang nữ'),
(13, 4, 'Thực phẩm chức năng'),
(14, 4, 'Mỹ phẩm'),
(15, 4, 'Phụ kiện làm đẹp'),
(16, 6, 'Học tập'),
(17, 6, 'Đồ chơi'),
(18, 6, 'Thực phẩm/ sữa'),
(19, 7, 'Dụng cụ thể thao'),
(20, 7, 'Phụ kiện thể thao'),
(21, 7, 'Phượt/du lịch'),
(22, 5, 'Gia đình'),
(23, 5, 'Dụng cụ nhà bếp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dmt`
--

CREATE TABLE `dmt` (
  `id_dmt` int(10) NOT NULL,
  `ten_dmt` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `dmt`
--

INSERT INTO `dmt` (`id_dmt`, `ten_dmt`) VALUES
(1, 'Điện tử'),
(2, 'Thời trang nam'),
(3, 'Thời trang nữ'),
(4, 'Sức khỏe & sắc đẹp'),
(5, 'Đồ gia dụng'),
(6, 'Trẻ em & đồ chơi'),
(7, 'Thể thao & du lịch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordercontent`
--

CREATE TABLE `ordercontent` (
  `id_sp` int(11) NOT NULL,
  `sl_sp` int(11) NOT NULL,
  `code_order` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `id_ordercontent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `ordercontent`
--

INSERT INTO `ordercontent` (`id_sp`, `sl_sp`, `code_order`, `id_ordercontent`) VALUES
(89, 1, 'Kf4Df3x0pSkDszr67tkw', 23),
(112, 1, 't1X3PmYj9eGahBGiyW4X', 24),
(167, 3, 'f5fxh2HiQGJRTC3zVWUh', 26),
(73, 9, 'f5fxh2HiQGJRTC3zVWUh', 27),
(61, 1, 'f5fxh2HiQGJRTC3zVWUh', 28),
(72, 10, 'f5fxh2HiQGJRTC3zVWUh', 29),
(102, 1, 'f5fxh2HiQGJRTC3zVWUh', 30),
(144, 1, 'f5fxh2HiQGJRTC3zVWUh', 31),
(134, 1, 'f5fxh2HiQGJRTC3zVWUh', 32),
(137, 1, 'f5fxh2HiQGJRTC3zVWUh', 33),
(89, 1, 'D5ZvxHxLbqnLvTbQYbbQ', 34),
(161, 6, 'D5ZvxHxLbqnLvTbQYbbQ', 35),
(77, 1, 'D5ZvxHxLbqnLvTbQYbbQ', 36),
(160, 1, 'D5ZvxHxLbqnLvTbQYbbQ', 37),
(136, 2, 'D5ZvxHxLbqnLvTbQYbbQ', 38),
(165, 3, 'D5ZvxHxLbqnLvTbQYbbQ', 39),
(166, 1, 'D5ZvxHxLbqnLvTbQYbbQ', 40),
(169, 1, 'D5ZvxHxLbqnLvTbQYbbQ', 41),
(66, 1, 'AUqKgheH3VNkAxr7Vm01', 42),
(100, 5, 'AUqKgheH3VNkAxr7Vm01', 43),
(73, 2, 'AUqKgheH3VNkAxr7Vm01', 44),
(72, 2, '9vCWvb0gooNNVnPwFQrU', 45),
(61, 5, '9vCWvb0gooNNVnPwFQrU', 46),
(65, 1, '9vCWvb0gooNNVnPwFQrU', 47),
(206, 1, '9vCWvb0gooNNVnPwFQrU', 48),
(72, 2, 'du4L0ruvGge6YiKE5m0J', 49),
(57, 1, 'h1N3lOWbvBJUJ0SCt5A7', 50),
(65, 1, 'NQ8R6P1pgq6JnQfO0OM6', 51),
(104, 1, 'MnwSmJHd5MUT5HYSWefD', 54),
(104, 1, 'IsBLWd8o5WTmDK6vycub', 56),
(73, 1, 'tv6aB3hMzdGauc8jWJZF', 57),
(65, 2, 'tv6aB3hMzdGauc8jWJZF', 58),
(73, 1, 'rYmGFePJXWt9VPEqD6bv', 59),
(72, 1, '4HGJzyEVYPpcoJLyp05q', 60),
(61, 1000, '4HGJzyEVYPpcoJLyp05q', 61),
(222, 9, '3snKG0vkTuiMgF8ASIOG', 62),
(249, 1, '6CdKvOqkQYSeAcMjH6QV', 63),
(65, 1, '2yJy2IvPQwKZEOqCbW0P', 64),
(72, 12, 'Il9Uxisuv5Y0BhoMiYXF', 65);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderlist`
--

CREATE TABLE `orderlist` (
  `id_order` int(11) NOT NULL,
  `code_order` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `name_customer` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `mail_customer` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `date_order` datetime NOT NULL,
  `pay` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `confirm` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `orderlist`
--

INSERT INTO `orderlist` (`id_order`, `code_order`, `name_customer`, `mail_customer`, `sdt`, `address`, `date_order`, `pay`, `status`, `confirm`) VALUES
(39, 'Kf4Df3x0pSkDszr67tkw', 'Vũ Đình Quynh', 'dinhmanh770@gmail.com', '0969960196', 'Phương Mai', '2017-04-18 23:28:24', 'Chưa đặt cọc', 'Đã hủy', 'Confirmed'),
(40, 't1X3PmYj9eGahBGiyW4X', 'Vũ Đình Quynh', 'dinhmanh770@gmail.com', '0969960196', 'Phương Mai', '2017-04-18 23:40:14', 'Đã đặt cọc', 'Chưa giao', 'Confirmed'),
(42, 'f5fxh2HiQGJRTC3zVWUh', 'Vũ Đình Quynh', 'dinhmanh770@gmail.com', '0969960196', 'Phương Mai', '2017-04-18 23:50:51', 'Đã đặt cọc', 'Chưa giao', 'Confirmed'),
(43, 'D5ZvxHxLbqnLvTbQYbbQ', 'Nguyễn Đình Mạnh', 'dinhmanh770@gmail.com', '5456765456', 'àtfs', '2017-04-18 23:52:41', 'Đã đặt cọc', 'Đã hủy', 'Confirmed'),
(44, 'AUqKgheH3VNkAxr7Vm01', 'Vũ Đình Quynh', 'dinhmanh770@gmail.com', '01693094248', 'Phương Mai', '2017-04-19 16:34:15', 'Đã đặt cọc', 'Chưa giao', 'Confirmed'),
(45, '9vCWvb0gooNNVnPwFQrU', 'Vũ Đình Quynh', 'dinhmanh770@gmail.com', '01693094248', 'Phương Mai', '2017-04-19 23:35:21', 'Đã đặt cọc', 'Chưa giao', 'Confirmed'),
(46, 'du4L0ruvGge6YiKE5m0J', 'Vũ Đình Quynh', 'dinhmanh96@gmail.com', '01693094248', 'Phương Mai', '2017-04-26 15:15:16', 'Đã đặt cọc', 'Chưa giao', 'Confirmed'),
(47, 'h1N3lOWbvBJUJ0SCt5A7', 'Vũ Đình Quynh', 'dinhmanh770@gmail.com', '01693094248', 'Phương Mai', '2017-04-26 15:24:49', 'Đã đặt cọc', 'Chưa giao', 'Confirmed'),
(48, 'NQ8R6P1pgq6JnQfO0OM6', 'Vũ Đình Quynh', 'dinhmanh770@gmail.com', '01693094248', 'Phương Mai', '2017-04-26 15:26:58', 'Đã đặt cọc', 'Đã hủy', 'Confirmed'),
(51, 'MnwSmJHd5MUT5HYSWefD', 'Vũ Đình Quynh', 'dinhmanh770@gmail.com', '0969960196', 'Phương Mai', '2017-04-26 15:32:36', 'Đã đặt cọc', 'Đã hủy', 'Confirmed'),
(53, 'IsBLWd8o5WTmDK6vycub', 'Vũ Đình Quynh', 'dinhmanh96@gmail.com', '01693094248', 'Phương Mai', '2017-04-26 15:35:28', 'Đã đặt cọc', 'Đã hủy', 'Confirmed'),
(54, 'tv6aB3hMzdGauc8jWJZF', 'Vũ Đình Quynh', 'dinhmanh770@gmail.com', '01693094248', 'Phương Mai', '2017-04-27 13:58:04', 'Đã đặt cọc', 'Đã hủy', 'Confirmed'),
(55, 'rYmGFePJXWt9VPEqD6bv', 'Nguyễn Thị Tuyết', 'dinhmanh770@gmail.com', '01693094248', 'Phương Mai', '2017-04-28 20:48:53', 'Đã đặt cọc', 'Đã hủy', 'Confirmed'),
(56, '4HGJzyEVYPpcoJLyp05q', 'Vũ Đình Quynh', 'dinhmanh770@gmail.com', '01693094248', 'Phương Mai', '2017-04-28 21:00:59', 'Đã đặt cọc', 'Đã hủy', 'Confirmed'),
(57, '3snKG0vkTuiMgF8ASIOG', 'Nguyễn Đình Mạnh', 'dinhmanh770@gmail.com', '0969960196', 'Phương Mai', '2017-05-07 12:32:29', 'Đã đặt cọc', 'Đã hủy', 'Confirmed'),
(58, '6CdKvOqkQYSeAcMjH6QV', 'Vũ Đình Quynh', 'd', '01693094248', 'Phương Mai', '2017-05-08 22:36:52', 'Đã đặt cọc', 'Đã hủy', 'Confirmed'),
(59, '2yJy2IvPQwKZEOqCbW0P', 'Vũ Đình Quynh', 'dinhmanh770@gmail.com', '01693094248', 'Phương Mai', '2017-05-10 12:57:38', 'Chưa đặt cọc', 'Chưa giao', 'Confirmed'),
(60, 'Il9Uxisuv5Y0BhoMiYXF', 'Nguyễn Đình Mạnh', 'dinhmanh770@gmail.com', '01693094248', 'Phương Mai', '2017-05-10 15:29:18', 'Chưa đặt cọc', 'Chưa giao', 'Awaiting confirmation');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id_slide` int(10) NOT NULL,
  `id_dmt_slide` int(10) NOT NULL,
  `id_dmn_slide` int(10) NOT NULL,
  `cs_slide` int(10) NOT NULL,
  `anh_slide` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id_slide`, `id_dmt_slide`, `id_dmn_slide`, `cs_slide`, `anh_slide`) VALUES
(1, 1, 1, 0, 'slide.jpg'),
(2, 1, 1, 0, 'slide1.jpg'),
(3, 1, 1, 0, 'slide2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp`
--

CREATE TABLE `sp` (
  `id_sp` int(10) NOT NULL,
  `id_dmt` int(10) NOT NULL,
  `id_dmn` int(10) NOT NULL,
  `ten_sp` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `chitiet_sp` text COLLATE utf8_vietnamese_ci NOT NULL,
  `gia_sp` int(10) NOT NULL,
  `bh_sp` int(10) NOT NULL,
  `anh_sp` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `th_sp` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `cs_sp` int(10) NOT NULL,
  `baiviet_sp` text COLLATE utf8_vietnamese_ci NOT NULL,
  `view` int(11) NOT NULL,
  `buy` int(11) NOT NULL,
  `sl_sp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sp`
--

INSERT INTO `sp` (`id_sp`, `id_dmt`, `id_dmn`, `ten_sp`, `chitiet_sp`, `gia_sp`, `bh_sp`, `anh_sp`, `th_sp`, `cs_sp`, `baiviet_sp`, `view`, `buy`, `sl_sp`) VALUES
(57, 1, 1, 'Iphone 6s', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 10000000, 12, '8.jpg', 'Apple', 0, '', 19, 1, 15),
(58, 1, 1, 'Galaxy J3 Pro', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 6500000, 6, '2.jpg', 'Samsung', 0, '', 25, 0, 2),
(61, 1, 1, 'LG V10', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 9800000, 12, '17.jpg', 'LG', 0, '', 29, 1006, 1010),
(62, 1, 1, 'LG G5', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 7900000, 12, '5.jpg', 'LG', 0, '', 12, 2, 15),
(63, 1, 1, 'Asus Zenfone 2', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 3900000, 6, '78.jpg', 'Asus', 0, '', 6, 0, 15),
(64, 1, 1, 'Samsung Galaxy Note 5', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 8000000, 12, '39.jpg', 'Samsung', 0, '', 4, 0, 15),
(65, 1, 1, 'Asus Zenfone 3 K101LA', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 5690000, 12, '22.jpg', 'Asus', 0, '', 89, 5, 3),
(66, 1, 1, 'Asus Zenfone 3 Lazer', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 5900000, 12, '58.jpg', 'Asus', 0, '', 10, 1, 16),
(67, 1, 1, 'Xiaomi Redmi Note', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 5500000, 6, '71.jpg', 'Xiaomi', 0, '', 8, 0, 15),
(68, 1, 1, 'Asus Zenfone Go', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 2700000, 6, '27.jpg', 'Asus', 0, '', 0, 0, 15),
(69, 1, 1, 'Sony Experia Z5', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 6500000, 12, '28.jpg', 'Sony', 0, '', 0, 0, 15),
(70, 1, 1, 'Xiaomi Redmi 3s', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 4500000, 12, '31.jpg', 'Xiaomi', 0, '', 4, 0, 15),
(71, 1, 1, 'Iphone 7 plus', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 17800000, 12, '36.jpg', 'Apple', 0, '', 3, 0, 15),
(72, 1, 2, 'Ipad mini 3', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 11000000, 12, '213.jpg', 'Apple', 0, '<blockquote>\r\n<p>Galaxy S8 được dự đo&aacute;n l&agrave; một si&ecirc;u phẩm m&agrave; Samsung sẽ giới thiệu đ&ecirc;n người d&ugrave;ng trong thời gian gần nhất. H&igrave;nh ảnh của sản phẩm mới được h&eacute; lộ, Samsung S8 sẽ sở hữu một thiết kế ấn tượng, hiệu năng cực kỳ mạnh mẽ v&agrave; tiết kiệm năng lượng, camera sắc n&eacute;t c&ugrave;ng m&agrave;n h&igrave;nh &nbsp; &nbsp; &nbsp; &nbsp;Infinity Display, hứa hẹn sẽ trở th&agrave;nh một đối thủ đ&aacute;ng gờm tr&ecirc;n thị trường smartphone năm 2017.</p>\r\n</blockquote>\r\n\r\n<p><img alt=\"Ip7\" src=\"https://cdn1.viettelstore.vn/images/Product/ProductImage/medium/1788113209.jpg\" style=\"height:480px; width:480px\" /></p>\r\n', 94, 15, 0),
(73, 1, 2, 'Ipad mini 2', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 7900000, 12, '218.jpg', 'Apple', 0, '', 26, 13, 4),
(74, 1, 2, 'Sony Experia Tab 5', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 6500000, 12, '214.jpg', 'Sony', 0, '', 1, 0, 15),
(75, 1, 2, 'Máy đọc sách Kindle Fire', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 2900000, 6, '211.jpg', 'Amazon', 0, '', 6, 0, 15),
(76, 1, 2, 'Chuwi Hi8 Pro', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 3900000, 6, '204.jpg', 'Chuwi', 0, '', 7, 0, 15),
(77, 1, 2, 'Suface Pro 3 (128GB)', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 9500000, 12, '216.jpg', 'MicroSoft', 0, '', 8, 1, 16),
(78, 1, 2, 'Chuwi Hi10', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 5500000, 6, '215.jpg', 'Chuwi', 0, '', 0, 0, 15),
(79, 1, 2, 'Acer', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 4500000, 12, '202.jpg', 'Acer', 0, '', 1, 0, 15),
(80, 1, 1, 'Iphone 5s Gold (32GB)', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 5500000, 12, '34.jpg', 'Apple', 0, '', 7, 0, 15),
(81, 1, 1, 'Sony Experia XA', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 4900000, 6, '41.jpg', 'Sony', 0, '', 0, 0, 15),
(82, 1, 1, 'Xiaomi Redmi 5s', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 7900000, 12, '42.jpg', 'Xiaomi', 0, '', 0, 0, 15),
(83, 1, 1, 'Samsung Galaxy J5', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 5700000, 12, '29.jpg', 'Sansung', 0, '', 1, 0, 15),
(84, 1, 1, 'Sony Experia Z4', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 6500000, 12, '30.jpg', 'Sony', 0, '', 1, 0, 15),
(85, 1, 1, 'Iphone 5s White (16GB)', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 5500000, 6, '16.jpg', 'Apple', 0, '', 12, 0, 15),
(86, 1, 1, 'LG G3', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 6800000, 6, '47.jpg', 'LG', 0, '', 3, 0, 15),
(87, 1, 1, 'LG G36', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 7500000, 12, '53.jpg', 'LG', 0, '', 1, 0, 15),
(88, 1, 5, 'Smart Tivi Asanzo 40 inch', 'Ram: 4GB\r\nHDD: 512GB\r\nMàn hình: 14 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 8500000, 12, '700.jpg', 'Asanzo', 0, '', 2, 0, 15),
(89, 1, 5, 'Smart Tivi Samsung 49 inch', 'Ram: 4GB\r\nHDD: 512GB\r\nMàn hình: 14 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 12500000, 12, '706.jpg', 'Samsung', 0, '', 7, 2, 17),
(90, 1, 5, 'Androi Tivi LG 50 inch', 'Ram: 4GB\r\nHDD: 512GB\r\nMàn hình: 14 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 11900000, 6, '717.jpg', 'LG', 0, '', 17, 0, 15),
(91, 1, 3, 'Laptop Acer K101 - 256GB', 'Ram: 4GB\r\nHDD: 512GB\r\nMàn hình: 14 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 11000000, 12, '100.jpg', 'Acer', 0, '', 16, 0, 15),
(93, 1, 3, 'Laptop Dell N5548', 'Ram: 4GB\r\nHDD: 512GB\r\nMàn hình: 14 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 12000000, 12, '119.jpg', 'Dell', 0, '', 2, 0, 15),
(94, 1, 3, 'Laptop Asus KL120A', 'Ram: 4GB\r\nHDD: 512GB\r\nMàn hình: 14 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 13500000, 12, '116.jpg', 'Asus', 0, '', 1, 0, 15),
(96, 1, 3, 'MSI Gameing', 'Ram: 4GB\r\nHDD: 512GB\r\nMàn hình: 14 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 19900000, 12, '110.jpg', 'MSI', 0, '', 5, 0, 15),
(98, 1, 3, 'Macbook Air 12inch - 128GB', 'Ram: 4GB\r\nHDD: 512GB\r\nMàn hình: 14 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 16500000, 12, '131.jpg', 'Apple', 0, '', 0, 0, 15),
(99, 1, 3, 'Laptop Acer XZ-202', 'Ram: 4GB\r\nHDD: 512GB\r\nMàn hình: 14 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 13300000, 12, '120.jpg', 'Acer', 0, '', 1, 0, 15),
(100, 1, 3, 'Laptop Dell XPS 15 inch - 256GB', 'Ram: 4GB\r\nHDD: 512GB\r\nMàn hình: 14 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 22500000, 24, '112.jpg', 'Dell', 0, '', 4, 5, 20),
(101, 1, 3, 'Laptop Dell Insprion N7537', 'Ram: 4GB\r\nHDD: 512GB\r\nMàn hình: 14 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 14900000, 12, '124.jpg', 'Dell', 0, '', 1, 0, 15),
(102, 1, 1, 'Samsung Galaxy J7', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 3590000, 12, '56.jpg', 'Samsung', 0, '', 10, 1, 15),
(103, 2, 7, 'Sơ mi cổ điển', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 180000, 0, '400.jpg', 'Mango', 0, '', 3, 0, 15),
(104, 2, 7, 'Sơ mi dài tay - phong cách trẻ trung', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 150000, 0, '401.jpg', 'Zara', 0, '', 13, 2, 16),
(105, 2, 7, 'Áo sơ mi da', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 190000, 0, '403.jpg', 'Mango', 0, '', 23, 1, 15),
(106, 2, 7, 'Sơ mi Đen-trắng', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 250000, 0, '404.jpg', 'Viettien', 0, '', 0, 0, 15),
(107, 2, 7, 'Sơ mi dài tay - Nâu đậm cá tính', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 210000, 0, '402.jpg', 'Mango', 0, '', 1, 0, 15),
(111, 1, 1, 'LG G5', 'Ram: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nSim: 2 sim, hỗ trợ 4G(LTE)', 11500000, 6, '66.jpg', 'LG', 0, '', 1, 0, 15),
(112, 1, 3, 'HP Palivon', 'Ram: 4GB\r\nHDD: 512GB\r\nMàn hình: 14 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n,...\r\nThiết kế: Nhôm kim lọai', 12400000, 12, '113.jpg', 'HP', 0, '', 57, 2, 15),
(113, 1, 3, 'Dell Vostro V6776', 'Ram: 4GB\r\nHDD: 512GB\r\nMàn hình: 14 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n,...', 13500000, 6, '115.jpg', 'Dell', 0, '', 119, 0, 15),
(114, 3, 10, 'Sơ mi nữ họa tiết đen trắng', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg', 189000, 0, '502.jpg', 'MAY', 0, '', 0, 0, 15),
(115, 3, 10, 'Áo sơ mi len kẻ sọc', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 320000, 0, '503.jpg', 'Zara', 0, '', 9, 0, 15),
(116, 3, 10, 'Sơ mi gió nữ - nâu hồng', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 325000, 0, '504.jpg', 'Mango', 0, '', 14, 0, 15),
(117, 3, 10, 'Sơ mi trẻ trung - Họa tiết đen phối trắng', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 450000, 0, '505.jpg', 'Gucci', 0, '', 2, 0, 15),
(118, 3, 10, 'Áo sơ mi hồng - nơ dải', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 380000, 0, '506.jpg', 'JetTock', 0, '', 2, 0, 15),
(119, 3, 10, 'Sơ mi nữ - cổ tròn (đỏ cam)', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 310000, 0, '507.jpg', 'MAY', 0, '', 1, 0, 15),
(120, 3, 10, 'Sơ mi thêu họa tiết đẹp - Màu sáng', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 430000, 0, '509.jpg', 'CHANEL', 0, '', 2, 0, 15),
(121, 3, 10, 'Sơ mi trắng - cổ xẻ', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 330000, 0, '510.jpg', 'PRADA', 0, '', 1, 0, 15),
(122, 3, 10, 'Sơ mi trắng - chấm bi đen', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 300000, 0, '512.jpg', 'D&G', 0, '', 3, 0, 15),
(123, 3, 10, 'Sơ mi buông thẳng', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 340000, 0, '513.jpg', 'Zara', 0, '', 1, 0, 15),
(124, 3, 10, 'Sơ mi nữ họa tiết đen trắng', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 430000, 0, '514.jpg', 'Zara', 0, '', 2, 0, 15),
(125, 2, 7, 'Sơ mi bò - xanh dương', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 420000, 0, '409.jpg', 'NEM', 0, '', 0, 0, 15),
(126, 2, 7, 'Bomber - sữa trắng', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 350000, 0, '410.jpg', 'NEM', 0, '', 3, 0, 15),
(127, 2, 7, 'Sơ mi nam - phối 2 tông màu', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 300000, 0, '407.jpg', 'Zara', 0, '', 0, 0, 15),
(128, 2, 7, 'Sơ mi trắng - họa tiết đơn giản', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 55-67kg\r\nKiểu dáng trẻ trung', 450000, 0, '412.jpg', 'D&G', 0, '', 1, 0, 15),
(129, 2, 7, 'Mangto nam - đỏ thẫm', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 300000, 0, '408.jpg', 'NEM', 0, '', 0, 0, 15),
(130, 2, 7, 'Sơ mi trắng phối kẻ sọc', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 310000, 0, '413.jpg', 'Mango', 0, '', 0, 0, 15),
(131, 2, 7, 'Sơ mi trắng', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 130000, 0, '415.jpg', 'Zara', 0, '', 0, 0, 15),
(132, 2, 7, 'Sơ mi đen - sang trọng', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 250000, 0, '414.jpg', 'NEM', 0, '', 1, 0, 15),
(133, 2, 7, 'Set Áo bò  -áo cộc tay', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 450000, 0, '425.jpg', 'NEM', 0, '', 4, 0, 15),
(134, 2, 7, 'Bộ áo khoác nỉ - đen', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 300000, 0, '421.jpg', 'D&G', 0, '', 2, 1, 15),
(135, 2, 7, 'Sơ mi xanh - DT06', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 350000, 0, '416.jpg', 'Zara', 0, '', 0, 0, 15),
(136, 2, 7, 'Sơ mi trắng - họa tiết đơn giản', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 260000, 0, '417.jpg', 'Mango', 0, '', 3, 2, 17),
(137, 2, 7, 'Sơ mi xanh sáng - trơn', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 230000, 0, '419.jpg', 'BOSS', 0, '', 3, 1, 15),
(138, 2, 7, 'Sơ mi trắng - trơn', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 310000, 0, '422.jpg', 'BOSS', 0, '', 1, 0, 15),
(139, 2, 7, 'Áo gió nam - đen', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 150000, 0, '423.jpg', 'The North Face', 0, '', 0, 0, 15),
(140, 2, 7, 'Áo gió thể thao - đen', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 320000, 0, '424.jpg', 'UNIQUINO', 0, '', 0, 0, 15),
(141, 2, 7, 'Áo khoác Mangto - Xám đen', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 700000, 0, '443.jpg', 'Mango', 0, '', 0, 0, 15),
(142, 2, 7, 'Bomber - xám', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 240000, 0, '436.jpg', 'MAY', 0, '', 0, 0, 15),
(143, 3, 11, 'Váy xanh - trẻ trung', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 420000, 0, '1000.jpg', 'MAY', 0, '', 0, 0, 15),
(144, 3, 11, 'Áo dài cách tân - họa tiết thêu', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 450000, 0, '1001.jpg', 'NEM', 0, '', 5, 1, 15),
(145, 3, 11, 'Váy đen  - hở tay - trơn', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 480000, 0, '1002.jpg', 'Zara', 0, '', 0, 0, 16),
(146, 3, 11, 'Váy xèo - họa tiết xám đen', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 320000, 0, '1003.jpg', 'Zara', 0, '', 0, 0, 15),
(147, 3, 11, 'Đầm trắng - trẻ trung', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 310000, 0, '1004.jpg', 'Zara', 0, '', 0, 0, 15),
(148, 3, 11, 'Váy Zip bó thân - Trắng sữa', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 480000, 0, '1005.jpg', 'Zara', 0, '', 0, 0, 15),
(149, 3, 11, 'Váy cổ tim - Đen hồng', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 550000, 0, '1007.jpg', 'NEM', 0, '', 2, 0, 15),
(150, 3, 11, 'Váy gen đỏ', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 350000, 0, '1008.jpg', 'Zara', 0, '', 0, 0, 15),
(151, 3, 11, 'Áo dài cách tân - họa tiết thêu - Đen', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 259000, 0, '1009.jpg', 'D&G', 0, '', 0, 0, 15),
(152, 3, 11, 'Váy dài - Màu sắc tươi trẻ', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 380000, 0, '1010.jpg', 'Mango', 0, '', 0, 0, 15),
(153, 3, 11, 'Đầm ngắn - Trắng hồng', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 290000, 0, '1011.jpg', 'NEM', 0, '', 0, 0, 15),
(154, 3, 11, 'Váy hoa - xòa chân', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 420000, 0, '1012.jpg', 'NEM', 0, '', 0, 0, 15),
(155, 3, 11, 'Váy trơn - cổ lọ', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 400000, 0, '1013.jpg', 'D&G', 0, '', 0, 0, 15),
(156, 3, 11, 'Váy bò - xanh dương đậm', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 370000, 0, '1014.jpg', 'MAY', 0, '', 1, 0, 15),
(157, 3, 12, 'Đồng hồ thời trang - bản to - vàng', 'Mặt kính lồi chống trầy xước\r\nĐường kính: 40mm\r\nHai kim mạ crom\r\nChất liệu: Dây thép không rỉ\r\nKiểu dáng sang trọng\r\nMáy Automatic', 700000, 6, '300.jpg', 'SEIKO', 0, '', 0, 0, 15),
(158, 3, 12, 'Đồng hồ nhỏ - Vàng - Trắng', 'Mặt kính lồi chống trầy xước\r\nĐường kính: 40mm\r\nHai kim mạ crom\r\nChất liệu: Dây thép không rỉ\r\nKiểu dáng sang trọng\r\nMáy Automatic', 450000, 2, '301.jpg', 'CASIO', 0, '', 1, 0, 15),
(159, 3, 12, 'Bông tai bạc - dáng kim mảnh', 'Chất liệu: Bạc nguyên chất\r\nKiểu dáng đẹp trẻ trung\r\nChống han rỉ, mòn\r\nĐánh trắng miễn phĩ\r\nGiảm 10% khi mua cùng vòng\r\nĐổi trả miễn phí nếu không thích', 699000, 6, '307.jpg', 'PNJ', 0, '', 2, 0, 15),
(160, 4, 14, 'Kem chống nắng - vàng kem', 'Hương liệu: Hoa trà cúc\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng của Pháp\r\nBộ sản phẩm sang trọng\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo hương thơm bền lâu', 650000, 0, '600.jpg', 'Dior', 0, '', 16, 1, 16),
(161, 4, 14, 'Bộ mỹ phẩm - Chanel', 'Hương liệu: Hoa trà cúc\r\nThể tích: 300ml\r\nThương hiệu của Pháp\r\nBộ sản phẩm sang trọng\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo hương thơm bền lâu', 790000, 0, '602.jpg', 'CHANEL', 0, '', 22, 6, 21),
(162, 4, 14, 'Kem làm trắng  - Nhập khẩu Đức', 'Hương liệu: Hoa trà cúc\r\nThể tích: 300ml\r\nThương hiệu của Pháp\r\nBộ sản phẩm sang trọng\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo hương thơm bền lâu', 450000, 0, '601.jpg', 'CHANEL', 0, '', 6, 0, 15),
(163, 6, 16, 'Bộ sách tập tô cho bé', 'Sách do Nhà xuất bản Giáo dục xuất bản\r\nMàu sắc bắt mắt với trẻ\r\nTranh sư tập phong phú\r\nTạo sự sáng tạo cho trẻ', 320000, 0, '40827_9i5g7084hy.jpg', 'Nhà xuất bản Giáo dục', 0, '', 2, 0, 15),
(164, 6, 16, ' Bộ sáp màu tập vẽ', 'Do Thiên Long phân phối\r\nMàu sắc bắt mắt với trẻ\r\nTranh sư tập phong phú\r\nTạo sự sáng tạo cho trẻ', 170000, 0, '1466064343179_3317275.jpg', 'Thiên Long', 0, '', 0, 0, 15),
(165, 6, 17, 'Bộ xếp hình Robot', 'Màu sắc bắt mắt với trẻ\r\nBộ sư tập phong phú\r\nTạo sự sáng tạo cho trẻ', 150000, 0, '1472034990024_1213344.jpg', 'Mỹ', 0, '', 8, 3, 18),
(166, 6, 18, 'Sữa cho bé tập ăn', 'Sữa bột nguyên chất\r\nNhập khẩu từ Úc\r\nSản xuất dây truyền hiện đại\r\nKích thích tiêu hóa cho bé\r\nGiúp trẻ phát triển IQ', 550000, 0, '18285_cns_714_20150716_8936036773088_1_chon.jpg', 'DUTCH LADY', 0, '', 19, 1, 16),
(167, 6, 18, 'Sữa Alpha Gold', 'Sữa bột nguyên chất\r\nNhập khẩu từ Úc\r\nSản xuất dây truyền hiện đại\r\nKích thích tiêu hóa cho bé\r\nGiúp trẻ phát triển IQ', 780000, 0, '1450089074144_2020518.jpg', 'Alpha Gold', 0, '', 22, 3, 15),
(168, 7, 19, 'Tạ tay 5kg - đỏ', 'Sản phẩm chắc chắn\r\nTập thể dục cảm giác thoải mái\r\nChất liệu bền với thời gian\r\nKết hợp tập với nhiều dụng cụ khác', 150000, 2, '06771_ta04123_2_chon.jpg', 'GYM', 0, '', 16, 0, 15),
(169, 7, 19, 'Bóng da -Trắng', 'Sản phẩm chắc chắn\r\nTập thể dục cảm giác thoải mái\r\nChất liệu bền với thời gian\r\nKết hợp tập với nhiều dụng cụ khác', 430001, 0, '38277_i8twwgsblb.jpg', 'ADIDAS', 0, '', 10, 1, 16),
(170, 1, 2, 'Ipad mini 3 retina', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 11500000, 12, '201.jpg', 'Apple', 0, '', 17, 0, 15),
(171, 1, 2, 'MID K107', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 6700000, 6, '205.jpg', 'MID', 0, '', 1, 0, 15),
(172, 1, 2, 'Saface 2', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 7500000, 12, '206.jpg', 'Microsoft', 0, '', 5, 0, 15),
(173, 1, 2, 'Sony Tablet 5', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 6000000, 12, '207.jpg', 'Sony', 0, '', 0, 0, 15),
(174, 1, 1, 'Asus Memopad 8', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 4500000, 12, '208.jpg', 'Asus', 0, '', 1, 0, 15),
(175, 1, 2, 'Sony Tablet 3', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 5400000, 6, '219.jpg', 'Sony', 0, '', 0, 0, 15),
(176, 1, 1, 'Ipad 1', 'Sim: 2 sim, hỗ trợ 4G(LTE)\r\nRam: 3GB\r\nBộ nhớ trong: 32GB\r\nMàn hình: 5.5 inch\r\nĐộ phân giải: Full HD\r\nPin: 4100mAh\r\nCamera: Trước (5Mpx), Sau (21Mpx)\r\nBảo mật vân tay', 3500000, 6, '220.jpg', 'Apple', 0, '', 0, 0, 15),
(177, 1, 4, 'Cáp OTG', 'Dùng cho smartphone\r\nThích hợp hđh Android\r\nTốc độ truyền tải cao\r\nBền dẻo với thời gian\r\nNhỏ gọn dễ mang theo', 15000, 0, '1400.jpg', 'OEM', 0, '', 3, 0, 15),
(178, 1, 4, 'Tai nghe Bluetooth', 'Tai nghe nhỏ gọn\r\nPin: 400mAh\r\nChống ồn 90%\r\nKháng nước IP69\r\nKhoảng cách: 10m\r\nTương thích cả Android và IOS', 170000, 2, '1401.jpg', 'OEM', 0, '', 2, 0, 15),
(179, 1, 4, 'Cáp sạc Usb mini', 'Cáp dẻo và bền\r\nHỗ trợ sạc nhanh\r\nThích hợp với mọi cốc sạc\r\nMàu đen sang trọng\r\nTruyền tải dòng điện lớn', 35000, 1, '1403.jpg', 'Xiaomi', 0, '', 0, 0, 15),
(180, 1, 4, 'Cáp sạc Usb mini', 'Cáp dẻo và bền\r\nHỗ trợ sạc nhanh\r\nThích hợp với mọi cốc sạc\r\nMàu đen sang trọng\r\nTruyền tải dòng điện lớn', 40000, 2, '1404.jpg', 'Xiaomi', 0, '', 1, 0, 15),
(181, 1, 4, 'Pin sạc dự phòng 10000mAh', 'Dung lượng: 10000mAh\r\nHỗ trợ sạc nhanh cho Smartphone\r\nMàu sắc sang trọng hiện đại\r\nKiểu dáng gọn nhẹ, dễ cầm mang theo\r\nCó 2 cổng sạc một lúc\r\nĐầu vào usb mini', 370000, 6, '1405.jpg', 'Jobao', 0, '', 0, 0, 15),
(182, 1, 4, 'Thẻ nhớ 32GB, tốc độ cao.', 'Thẻ nhớ chất lượng cao\r\nTốc độ đọc ghi: 40MB/s - 65MB/s\r\nBảo hàng 6 tháng\r\nThương hiệu uy tín, tin cậy\r\nThích hợp cho Smartphone, máy ảnh du lịch\r\nChống nước, bịu, bẩn cao', 300000, 6, '1406.jpg', 'Sandisk', 0, '', 0, 0, 15),
(183, 1, 4, 'Thẻ nhớ 16GB Transcend', 'Thẻ nhớ chất lượng cao\r\nTốc độ đọc ghi: 40MB/s - 65MB/s\r\nBảo hàng 6 tháng\r\nThương hiệu uy tín, tin cậy\r\nThích hợp cho Smartphone, máy ảnh du lịch\r\nChống nước, bịu, bẩn cao', 220000, 12, '1408.jpg', 'Transcend', 0, '', 0, 0, 15),
(184, 1, 4, 'Bao da Ipad min 3', 'Bao da mềm dẻo\r\nMàu sắc đa dạng, trẻ trung\r\nBảo vệ thiết bị an toàn tuyệt đối\r\nCảm giác cầm thoải mái', 150000, 2, '1409.jpg', 'OEM', 0, '', 0, 0, 15),
(185, 1, 4, 'Pin sạc dự phòng Xiaomi Gen 2', 'Dung lượng: 10000mAh\r\nHỗ trợ sạc nhanh cho Smartphone\r\nMàu sắc sang trọng hiện đại\r\nKiểu dáng gọn nhẹ, dễ cầm mang theo\r\nCó 2 cổng sạc một lúc\r\nĐầu vào usb mini', 269000, 12, '1410.jpg', '', 0, '', 0, 0, 15),
(186, 1, 4, 'Pin sạc dự phòng Anker', 'Dung lượng: 10000mAh\r\nHỗ trợ sạc nhanh cho Smartphone\r\nMàu sắc sang trọng hiện đại\r\nKiểu dáng gọn nhẹ, dễ cầm mang theo\r\nCó 2 cổng sạc một lúc\r\nĐầu vào usb mini', 350000, 6, '1411.jpg', 'Anker', 0, '', 1, 0, 15),
(187, 1, 4, 'Pin sạc dự phòng Xiaomi Gen 2 (Trắng)', 'Dung lượng: 10000mAh\r\nHỗ trợ sạc nhanh cho Smartphone\r\nMàu sắc sang trọng hiện đại\r\nKiểu dáng gọn nhẹ, dễ cầm mang theo\r\nCó 2 cổng sạc một lúc\r\nĐầu vào usb mini', 269000, 12, '1412.jpg', 'Xiaomi', 0, '', 0, 0, 15),
(188, 1, 4, 'Pin sạc dự phòng Xiaomi', 'Dung lượng: 5000mAh\r\nHỗ trợ sạc nhanh cho Smartphone\r\nMàu sắc sang trọng hiện đại\r\nKiểu dáng gọn nhẹ, dễ cầm mang theo\r\nCó 2 cổng sạc một lúc\r\nĐầu vào usb mini', 250000, 3, '1413.jpg', 'Xiaomi', 0, '', 1, 0, 15),
(189, 1, 4, 'Cốc sạc Smartphone', 'Cốc đẹp và bền\r\nHỗ trợ sạc nhanh\r\nThích hợp với mọi dây sạc\r\nMàu đen sang trọng\r\nTruyền tải dòng điện lớn', 15000, 3, '1415.jpg', 'OEM', 0, '', 0, 0, 15),
(190, 1, 4, 'Bộ sạc pin (Cốc và dây) chính hãng', 'Cáp dẻo và bền\r\nHỗ trợ sạc nhanh\r\nThích hợp với mọi cốc sạc\r\nMàu đen sang trọng\r\nTruyền tải dòng điện lớn', 350000, 6, '1416.jpg', 'OEM', 0, '', 0, 0, 15),
(191, 1, 4, 'Tripod dành cho điện thoại', 'Chiều cao 50cm-150cm\r\nHỗ trợ các loại máy ảnh du lịch, điệnt thoại\r\nChất liệu: Nhôm nhẹ và bền\r\nKèm túi đựng chân khi đi du lịch', 150000, 6, '1417.jpg', 'Benro', 0, '', 0, 0, 15),
(192, 1, 4, 'Cốc sạc Smartphone', 'Cốc đẹp và bền\r\nHỗ trợ sạc nhanh\r\nThích hợp với mọi dây sạc\r\nMàu đen sang trọng\r\nTruyền tải dòng điện lớn', 145000, 2, '1418.jpg', 'Hi-end', 0, '', 0, 0, 15),
(193, 1, 4, 'Pin sạc dự phòng 10800mAh - Trắng', 'Dung lượng: 10000mAh\r\nHỗ trợ sạc nhanh cho Smartphone\r\nMàu sắc sang trọng hiện đại\r\nKiểu dáng gọn nhẹ, dễ cầm mang theo\r\nCó 2 cổng sạc một lúc\r\nĐầu vào usb mini', 235000, 6, '1420.jpg', 'Anker', 0, '', 1, 0, 15),
(194, 1, 4, 'Cáp sạc Pisen', 'Cáp dẻo và bền\r\nHỗ trợ sạc nhanh\r\nThích hợp với mọi cốc sạc\r\nMàu đen sang trọng\r\nTruyền tải dòng điện lớn', 80000, 2, '1421.jpg', 'Pisen', 0, '', 0, 0, 15),
(195, 1, 4, 'Pin sạc dự phòng Remax', 'Dung lượng: 10000mAh\r\nHỗ trợ sạc nhanh cho Smartphone\r\nMàu sắc sang trọng hiện đại\r\nKiểu dáng gọn nhẹ, dễ cầm mang theo\r\nCó 2 cổng sạc một lúc\r\nĐầu vào usb mini', 270000, 12, '1423.jpg', 'Remax', 0, '', 1, 0, 15),
(196, 1, 4, 'Pin sạc dự phòng Remax - Trắng', 'Dung lượng: 10000mAh\r\nHỗ trợ sạc nhanh cho Smartphone\r\nMàu sắc sang trọng hiện đại\r\nKiểu dáng gọn nhẹ, dễ cầm mang theo\r\nCó 2 cổng sạc một lúc\r\nĐầu vào usb mini', 270000, 12, '1422.jpg', 'Remax', 0, '', 0, 0, 15),
(197, 1, 5, 'Tivi LED LD', 'Màn hình: 50 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 12500000, 12, '701.jpg', 'LG', 0, '', 0, 0, 15),
(198, 1, 5, 'Smart Tivi Xiaomi - 49 inch', 'Màn hình: 50 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 10700000, 6, '702.jpg', 'Xiaomi', 0, '', 0, 0, 15),
(199, 1, 5, 'Smart Tivi LG - 49 inch', 'Màn hình: 50 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 11000000, 6, '703.jpg', 'LG', 0, '', 1, 0, 15),
(200, 1, 1, 'Smart Tivi Asanzo - 49 inch', 'Màn hình: 50 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 9900000, 12, '704.jpg', 'Asanzo', 0, '', 0, 0, 15),
(201, 1, 5, 'Androi Tivi Sony - 50 inch', 'Màn hình: 50 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 13090000, 12, '705.jpg', 'Sony', 0, '', 6, 0, 15),
(202, 1, 5, 'Smart Tivi Panasonic - 49 inch', 'Màn hình: 50 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 12400000, 6, '707.jpg', 'Panasonic', 0, '', 1, 0, 15),
(203, 1, 5, 'Androi Tivi Xiaomi - 50 inch', 'Màn hình: 50 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 11300000, 6, '708.jpg', 'Xiaomi', 0, '', 0, 0, 15),
(204, 1, 5, 'Smart Tivi Asanzo - 49 inch', 'Màn hình: 50 inch\r\nĐộ phân giải: 1366x768\r\nCard AMD Readon M7\r\nPin: 4 cell (42Wh)\r\nKết nối: Wifi 802.11n, Bluetooth\r\nÂm thanh: Công nghệ Sonimas-tic', 13200000, 12, '709.jpg', 'Asanzo', 0, '', 1, 0, 15),
(205, 2, 8, 'Quần Jean - Xanh', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 270000, 0, '1600.jpg', 'Zara', 0, '', 0, 0, 15),
(206, 2, 8, 'Quần Jean - Xanh thẫm', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 290000, 0, '1601.jpg', 'Mango', 0, '', 2, 1, 15),
(207, 2, 8, 'Quần kaki đen', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 180000, 0, '1609.jpg', 'Zara', 0, '', 0, 0, 15),
(208, 2, 8, 'Quần Jean - Xanh - Trẻ trung', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 300000, 0, '1626.jpg', 'Gucci', 0, '', 1, 0, 15),
(209, 2, 8, 'Quần Jean - Đen', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 270000, 0, '1602.jpg', 'D&G', 0, '', 0, 0, 15),
(210, 2, 8, 'Quần Jean - Xanh', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 240000, 0, '1603.jpg', 'D&G', 0, '', 0, 0, 15),
(211, 2, 8, 'Quần Jean - Xanh đậm', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 289000, 0, '1604.jpg', 'Mango', 0, '', 0, 0, 15),
(212, 2, 8, 'Quần Jean - Xanh nhạt', 'Chất liệu: 100% Cotton\r\nBền màu khi giặt máy\r\nHàng mới 100%\r\nPhù hợp với người 45-57kg\r\nKiểu dáng trẻ trung', 320000, 0, '1605.jpg', 'Zara', 0, '', 1, 0, 15),
(213, 1, 6, 'Tủ lạnh Inventer Toshiba', 'Kích thước: 150x59x65cm\r\nCông suất: 300W\r\nKiểu dáng: Đứng\r\nCông nghệ làm mát: Inventer\r\nMàu sắc phù hợp không gian nhà bếp\r\nLàm lạnh nhanh và đều', 8700000, 12, '900.jpg', 'Toshiba', 0, '', 0, 0, 15),
(214, 1, 6, 'Tủ lạnh Inventer Panasonic', 'Kích thước: 150x59x65cm\r\nCông suất: 300W\r\nKiểu dáng: Đứng\r\nCông nghệ làm mát: Inventer\r\nMàu sắc phù hợp không gian nhà bếp\r\nLàm lạnh nhanh và đều', 12500000, 6, '901.jpg', 'Panasonic', 0, '', 1, 0, 15),
(215, 1, 6, 'Tủ lạnh Sanyo', 'Kích thước: 150x59x65cm\r\nCông suất: 300W\r\nKiểu dáng: Đứng\r\nCông nghệ làm mát: Inventer\r\nMàu sắc phù hợp không gian nhà bếp\r\nLàm lạnh nhanh và đều', 8700000, 12, '902.jpg', 'Sanyo', 0, '', 0, 0, 15),
(216, 1, 6, 'Tủ lạnh Panasonic', 'Kích thước: 150x59x65cm\r\nCông suất: 300W\r\nKiểu dáng: Đứng\r\nCông nghệ làm mát: Inventer\r\nMàu sắc phù hợp không gian nhà bếp\r\nLàm lạnh nhanh và đều', 8900000, 12, '903.jpg', 'Panasonic', 0, '', 0, 0, 15),
(217, 1, 6, 'Tủ lạnh Panasonic -Đen bóng', 'Kích thước: 150x59x65cm\r\nCông suất: 300W\r\nKiểu dáng: Đứng\r\nCông nghệ làm mát: Inventer\r\nMàu sắc phù hợp không gian nhà bếp\r\nLàm lạnh nhanh và đều', 10000000, 6, '904.jpg', 'Panasonic', 0, '', 0, 0, 15),
(218, 1, 6, 'Tủ lạnh Sanyo - Đen bóng', 'Kích thước: 150x59x65cm\r\nCông suất: 300W\r\nKiểu dáng: Đứng\r\nCông nghệ làm mát: Inventer\r\nMàu sắc phù hợp không gian nhà bếp\r\nLàm lạnh nhanh và đều', 10500000, 12, '905.jpg', 'Sanyo', 0, '', 0, 0, 15),
(219, 1, 6, 'Tủ lạnh Electronic - Trắng', 'Kích thước: 150x59x65cm\r\nCông suất: 300W\r\nKiểu dáng: Đứng\r\nCông nghệ làm mát: Inventer\r\nMàu sắc phù hợp không gian nhà bếp\r\nLàm lạnh nhanh và đều', 9000000, 12, '906.jpg', 'Electronic', 0, '', 0, 0, 15),
(220, 1, 6, 'Tủ lạnh Electronic mini - Trắng', 'Kích thước: 150x59x65cm\r\nCông suất: 300W\r\nKiểu dáng: Đứng\r\nCông nghệ làm mát: Inventer\r\nMàu sắc phù hợp không gian nhà bếp\r\nLàm lạnh nhanh và đều', 4900000, 12, '910.jpg', 'Electronic', 0, '', 1, 0, 15),
(221, 2, 9, 'Đồn hồ công nghệ - Sony', 'Mặt kính lồi chống trầy xước\r\nĐường kính: 40mm\r\nHai kim mạ crom\r\nChất liệu: Dây thép không rỉ\r\nKiểu dáng sang trọng\r\nMáy Automatic', 2100000, 12, '317.jpg', 'Sony', 0, '', 1, 0, 15),
(222, 2, 9, 'Đồng hồ cơ - Rolex', 'Mặt kính lồi chống trầy xước\r\nĐường kính: 40mm\r\nHai kim mạ crom\r\nChất liệu: Dây thép không rỉ\r\nKiểu dáng sang trọng\r\nMáy Automatic', 3500000, 12, '314.jpg', 'Rolex', 0, '', 3, 9, 15),
(223, 2, 9, 'Đồn hồ kim - Bản nhỏ xanh', 'Mặt kính lồi chống trầy xước\r\nĐường kính: 40mm\r\nHai kim mạ crom\r\nChất liệu: Dây thép không rỉ\r\nKiểu dáng sang trọng\r\nMáy Automatic', 1200000, 6, '354.jpg', 'InWatch', 0, '', 0, 0, 15),
(224, 2, 9, 'Kính đen siêu dẻo', 'Mặt kính lồi chống trầy xước\r\nĐường kính: 40mm\r\nHai kim mạ crom\r\nChất liệu: Dây thép không rỉ\r\nKiểu dáng sang trọng\r\nMáy Automatic', 150000, 3, '1700.jpg', 'GlassTrue', 0, '', 0, 0, 15),
(225, 2, 9, 'Kính phân cực', 'Mặt kính lồi chống trầy xước\r\nĐường kính: 40mm\r\nHai kim mạ crom\r\nChất liệu: Dây thép không rỉ\r\nKiểu dáng sang trọng\r\nMáy Automatic', 159000, 3, '1717.jpg', 'GlassTrue', 0, '', 0, 0, 15),
(226, 2, 9, 'Kính đeo mũ bảo hiểm', 'Mặt kính lồi chống trầy xước\r\nĐường kính: 40mm\r\nHai kim mạ crom\r\nChất liệu: Dây thép không rỉ\r\nKiểu dáng sang trọng\r\nMáy Automatic', 100000, 2, '1714.jpg', 'GlassTrue', 0, '', 0, 0, 15),
(227, 2, 9, 'Kính đen đẳng cấp cho nam', 'Mặt kính lồi chống trầy xước\r\nĐường kính: 40mm\r\nHai kim mạ crom\r\nChất liệu: Dây thép không rỉ\r\nKiểu dáng sang trọng\r\nMáy Automatic', 230000, 3, '1701.jpg', 'GlassTrue', 0, '', 0, 0, 15),
(228, 2, 9, 'Kính gọng vàng', 'Mặt kính lồi chống trầy xước\r\nĐường kính: 40mm\r\nHai kim mạ crom\r\nChất liệu: Dây thép không rỉ\r\nKiểu dáng sang trọng\r\nMáy Automatic', 140000, 3, '1702.jpg', 'GlassTrue', 0, '', 0, 0, 15),
(229, 2, 9, 'Kính đen gọng mạ Crom', 'Mặt kính lồi chống trầy xước\r\nĐường kính: 40mm\r\nHai kim mạ crom\r\nChất liệu: Dây thép không rỉ\r\nKiểu dáng sang trọng\r\nMáy Automatic', 240000, 3, '1703.jpg', 'GlassTrue', 0, '', 1, 0, 15),
(230, 2, 9, 'Kính thời trang nam', 'Mặt kính lồi chống trầy xước\r\nĐường kính: 40mm\r\nHai kim mạ crom\r\nChất liệu: Dây thép không rỉ\r\nKiểu dáng sang trọng\r\nMáy Automatic', 270000, 3, '1706.jpg', 'GlassTrue', 0, '', 3, 0, 15),
(231, 3, 12, 'Bông tai thời trang', 'Chất liệu: Bạc nguyên chất\r\nKiểu dáng đẹp trẻ trung\r\nChống han rỉ, mòn\r\nĐánh trắng miễn phĩ\r\nGiảm 10% khi mua cùng vòng\r\nĐổi trả miễn phí nếu không thích', 320000, 2, '303.jpg', 'Lixend', 0, '', 0, 0, 15),
(232, 3, 12, 'Đồng hồ nữ - Đỏ', 'Chất liệu: Bạc nguyên chất\r\nKiểu dáng đẹp trẻ trung\r\nChống han rỉ, mòn\r\nĐánh trắng miễn phĩ\r\nGiảm 10% khi mua cùng vòng\r\nĐổi trả miễn phí nếu không thích', 250000, 3, '304.jpg', 'KazaGlass', 0, '', 1, 0, 15),
(233, 3, 12, 'Đồng hồ nữ - Trắng bạc', 'Chất liệu: Bạc nguyên chất\r\nKiểu dáng đẹp trẻ trung\r\nChống han rỉ, mòn\r\nĐánh trắng miễn phĩ\r\nGiảm 10% khi mua cùng vòng\r\nĐổi trả miễn phí nếu không thích', 300000, 4, '306.jpg', 'KazaGlass', 0, '', 0, 0, 15),
(234, 3, 12, 'Bông tai thời trang - Đính ngọc trai', 'Chất liệu: Bạc nguyên chất\r\nKiểu dáng đẹp trẻ trung\r\nChống han rỉ, mòn\r\nĐánh trắng miễn phĩ\r\nGiảm 10% khi mua cùng vòng\r\nĐổi trả miễn phí nếu không thích', 450000, 6, '307.jpg', 'Benro', 0, '', 0, 0, 15),
(235, 3, 12, 'Bông tai trái tim -Bạc đính đá', '', 290000, 12, '308.jpg', 'Benro', 0, '<p>Chất liệu: Bạc nguy&ecirc;n chất<br />\r\nKiểu d&aacute;ng đẹp trẻ trung<br />\r\nChống han rỉ, m&ograve;n<br />\r\nĐ&aacute;nh trắng miễn phĩ<br />\r\nGiảm 10% khi mua c&ugrave;ng v&ograve;ng<br />\r\nĐổi trả miễn ph&iacute; nếu kh&ocirc;ng th&iacute;ch</p>\r\n', 0, 0, 15),
(236, 3, 12, 'Bông tai thời trang nhỏ gọn', 'Chất liệu: Bạc nguyên chất\r\nKiểu dáng đẹp trẻ trung\r\nChống han rỉ, mòn\r\nĐánh trắng miễn phĩ\r\nGiảm 10% khi mua cùng vòng\r\nĐổi trả miễn phí nếu không thích', 250000, 3, '309.jpg', 'KazaGlass', 0, '', 0, 0, 15),
(237, 3, 12, 'Đồng hồ nữ - dây da', 'Chất liệu: Bạc nguyên chất\r\nKiểu dáng đẹp trẻ trung\r\nChống han rỉ, mòn\r\nĐánh trắng miễn phĩ\r\nGiảm 10% khi mua cùng vòng\r\nĐổi trả miễn phí nếu không thích', 265000, 2, '310.jpg', 'Remax', 0, '', 1, 0, 15),
(238, 4, 13, 'Thuốc giảm đau cơ', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 320000, 3, '1800.jpg', 'Anpha', 0, '', 0, 0, 15),
(239, 4, 13, 'Thuốc giảm cân', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 280000, 2, '1801.jpg', 'Benro', 0, '', 0, 0, 15),
(240, 4, 13, 'Thực phẩm bổ sung Canxi', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 190000, 2, '1802.jpg', 'Boganic', 0, '', 0, 0, 15),
(241, 4, 13, 'Trà thảo dược', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 320000, 2, '1803.jpg', 'Entree-Life', 0, '', 0, 0, 15),
(242, 4, 13, 'Vi sụn cá mập', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 370000, 12, '1804.jpg', 'Anpha', 0, '', 3, 0, 15),
(243, 4, 13, 'Kem tan mỡ', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 170000, 2, '1805.jpg', 'Ongo', 0, '', 0, 0, 15),
(244, 4, 13, 'Thảo dược hoa cúc', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 230000, 2, '1807.jpg', 'Anpha', 0, '', 0, 0, 15),
(245, 4, 13, 'Trà nấm ninh chi', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 250000, 2, '1808.jpg', 'Anpha', 0, '', 0, 0, 15),
(246, 4, 13, 'Viên trị tàng nhang', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 250000, 5, '1809.png', 'Ankani', 0, '', 1, 0, 15),
(247, 4, 13, 'Thuốc kích thích Colagen', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 320000, 2, '1810.jpg', 'KazaGlass', 0, '', 0, 0, 15),
(248, 4, 13, 'Trà đen tăng cường đề kháng', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 310000, 2, '1811.png', 'Ankani', 0, '', 0, 0, 15),
(249, 4, 13, 'Thực phẩm bổ sung Vitamin', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 210000, 2, '1812.jpg', 'Navinda', 0, '', 2, 1, 18),
(250, 4, 13, 'Thuốc bổ mắt', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 450000, 3, '1813.jpg', 'Ataxivi', 0, '', 5, 0, 15),
(251, 4, 13, 'Trà xanh - chống lão hóa (10 gói)', 'Sản phẩm chức năng độc quyền\r\nThể tích: 300ml\r\nThương hiệu nổi tiếng\r\nCó tác dụng sau vài ngày uống\r\nMẫu mã kiểu dáng lọ bắt mắt\r\nĐảm bảo không có tác dụng phụ', 120000, 0, '1815.jpg', 'Anpha', 0, '', 16, 0, 15);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `number_test` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `test`
--

INSERT INTO `test` (`id`, `number_test`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhvien`
--

CREATE TABLE `thanhvien` (
  `id_thanhvien` int(10) NOT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `ten_thanhvien` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `email_thanhvien` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sdt_thanhvien` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `dc_thanhvien` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `quyen_thanhvien` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `thanhvien`
--

INSERT INTO `thanhvien` (`id_thanhvien`, `password`, `ten_thanhvien`, `email_thanhvien`, `sdt_thanhvien`, `dc_thanhvien`, `quyen_thanhvien`) VALUES
(13, '827ccb0eea8a706c4c34a16891f84e7b', 'Nguyễn Đình Mạnh', 'dinhmanh96@gmail.com', '0969960196', 'Nam Sách', 1),
(14, 'e10adc3949ba59abbe56e057f20f883e', 'Mai Thị Ân', 'maithian@gmail.com', '0962426989', 'Thanh Hà', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_cmt`);

--
-- Chỉ mục cho bảng `dmn`
--
ALTER TABLE `dmn`
  ADD PRIMARY KEY (`id_dmn`);

--
-- Chỉ mục cho bảng `dmt`
--
ALTER TABLE `dmt`
  ADD PRIMARY KEY (`id_dmt`);

--
-- Chỉ mục cho bảng `ordercontent`
--
ALTER TABLE `ordercontent`
  ADD PRIMARY KEY (`id_ordercontent`);

--
-- Chỉ mục cho bảng `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`id_order`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- Chỉ mục cho bảng `sp`
--
ALTER TABLE `sp`
  ADD PRIMARY KEY (`id_sp`);

--
-- Chỉ mục cho bảng `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  ADD PRIMARY KEY (`id_thanhvien`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id_cmt` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT cho bảng `dmn`
--
ALTER TABLE `dmn`
  MODIFY `id_dmn` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT cho bảng `dmt`
--
ALTER TABLE `dmt`
  MODIFY `id_dmt` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `ordercontent`
--
ALTER TABLE `ordercontent`
  MODIFY `id_ordercontent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT cho bảng `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `sp`
--
ALTER TABLE `sp`
  MODIFY `id_sp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT cho bảng `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `thanhvien`
--
ALTER TABLE `thanhvien`
  MODIFY `id_thanhvien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
