-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 18, 2011 at 08:55 AM
-- Server version: 5.1.32
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config`
--

CREATE TABLE IF NOT EXISTS `tbl_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_config`
--

INSERT INTO `tbl_config` (`id`, `code`, `name`, `detail`, `date_added`, `last_modified`) VALUES
(1, 'total_visits', 'Tổng', '200', '2009-11-17 10:59:37', '2010-04-21 01:00:37'),
(2, 'currencyUnit', 'Đơn vị tiền tệ', 'VNĐ', '2009-11-17 10:59:37', '2009-11-17 10:59:37'),
(3, 'adminEmail', 'Email', 'gem.cuong@yahoo.com', '2009-11-17 10:59:37', '2010-04-21 01:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content`
--

CREATE TABLE IF NOT EXISTS `tbl_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=203 ;

--
-- Dumping data for table `tbl_content`
--

INSERT INTO `tbl_content` (`id`, `code`, `name`, `parent`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `lang`, `new`) VALUES
(35, '', 'Contact', 87, '<p align="center"><img height="70" width="208" src="/cuongtung.tk/vantindat/images/Image/hotline.jpg" alt="" /></p>', '<p align="center"><span class="medium_text" id="result_box"><span c="" :="" title="??n"></span></span></p>\r\n<p align="center"><img height="70" width="208" src="/cuongtung.tk/vantindat/images/Image/hotline.jpg" alt="" /></p>', '', '', '', 0, 0, '2008-04-29 22:54:02', '2010-04-20 20:20:55', 'en', 0),
(119, '', 'Introduction', 88, '', '<div align="justify"><font size="2" face="Tahoma"><span class="long_text" id="result_box"><span onmouseout="this.style.backgroundColor=''#fff''" onmouseover="this.style.backgroundColor=''#ebeff9''" title="Ng', '', '', '', 0, 0, '2008-12-05 14:51:10', '2009-11-17 11:02:07', 'en', 0),
(38, '', 'Service', 20, '', '<p align="justify"><span class="text_xanh">Nh?ng nguy&ecirc;n t?c m?i c?a d?ng c? c?t (Ph?n 1) (16-10-2008 07:58:50)</span><em><br />\r\nNg&agrave;nh c&ocirc;ng ngh? c?t g?t ?&atilde; c&oacute; nh?ng b??c ph&aacute;t tri?n nhanh ch&oacute;ng nh?m ?&aacute;p ?ng nhu c?u thay ??i v&agrave; s? d?ng c&aacute;c v?t li?u ph&ocirc;i ch?t l??ng cao h?n. C&aacute;c nh&agrave; m&aacute;y gia c&ocirc;ng c? kh&iacute; c?n ???c th&ocirc;ng tin v? nh?ng ch?ng lo?i d?ng c? c?t, v?i ch?t l??ng t?t t? c&aacute;c nh&agrave; cung c?p kh&aacute;c nhau. </em></p>\r\n<div align="justify"><strong><br />\r\n</strong></div>\r\n<p align="justify"><img height="150" alt="" hspace="8" width="350" align="left" src="http://viettienthanh.net/demo/minh_thang1/images/dungcucat1210081.jpg" />Trong c&ocirc;ng ngh? kim lo?i, kh&ocirc;ng c&oacute; s? l?a ch?n kh&aacute;c ngo&agrave;i vi?c ch?p nh?n nh?ng c&ocirc;ng ngh? hi?n ??i. Nh?ng y&ecirc;u c?u trong gia c&ocirc;ng c?t g?t ?&atilde; c&oacute; t? l&acirc;u v&agrave; ng&agrave;y c&agrave;ng ?&ograve;i h?i ? m?c cao h?n v&agrave; ch? c&ocirc;ng ngh? hi?n ??i m?i c&oacute; kh? n?ng ?&aacute;p ?ng ???c nh?ng y&ecirc;u c?u ?&oacute;. </p>\r\n<p align="justify">Chris Mill, gi&aacute;m ??c d? &aacute;n ph&aacute;t tri?n ng&agrave;nh h&agrave;ng kh&ocirc;ng v?i Sandvik Coromant, ?&atilde; l?y c&ocirc;ng nghi?p h&agrave;ng kh&ocirc;ng l&agrave;m v&iacute; d? minh h?a. ?? ?&aacute;p ?ng ???c nh?ng y&ecirc;u c?u s?n xu?t c?a c&ocirc;ng nghi?p h&agrave;ng kh&ocirc;ng trong 20 n?m, n?ng su?t gia c&ocirc;ng s? c?n t?ng l&ecirc;n ba l?n trong kho?ng th?i gian gi?a b&acirc;y gi? v&agrave; ti?p theo. ?i?u n&agrave;y co? kha? thi hay kh&ocirc;ng? </p>\r\n<p align="justify">&Yacute; ??nh t?ng l&ecirc;n ba l?n n?ng su?t gia c&ocirc;ng s? k&eacute;o theo s? l??ng m&aacute;y c&ocirc;ng c? t?ng l&ecirc;n ba l?n, v?i nh?ng ph??ng th?c gia c&ocirc;ng c? kh&iacute; v?n c&oacute; nh? ng&agrave;y nay. </p>\r\n<p align="justify">&quot;Kh&ocirc;ng h?p l&yacute;&quot;, &ocirc;ng ta n&oacute;i. Vi?c t?ng s? l??ng m&aacute;y c&ocirc;ng c? l&ecirc;n ??ng ngh?a v?i vi?c t?ng s? l???ng nh&acirc;n vi&ecirc;n ?i?u khi?n m&aacute;y l&ecirc;n m?c t??ng t? nh? v?y. Th?t kh&oacute; ?? h&igrave;nh dung, v?i m?t s? l??ng ph??ng ti?n m&aacute;y m&oacute;c ?y c?n b? tr&iacute; s? l??ng nh&acirc;n s? c&oacute; ?? chuy&ecirc;n m&ocirc;n nh? th? n&agrave;o ?? ?i?u khi?n m&aacute;y. </p>\r\n<p align="justify">Kh&ocirc;ng, n?ng su?t t?ng l&ecirc;n s? ??n t? nh?ng c&ocirc;ng ngh? ti&ecirc;n ti?n m&agrave; ? ?&oacute; cho ph&eacute;p v?i c&ugrave;ng m?t l??ng nh&acirc;n vi&ecirc;n nh?ng c&oacute; th? gi&aacute;m s&aacute;t ???c m?t kh?i l???ng c&ocirc;ng vi?c l?n h?n nhi?u. </p>\r\n<p align="justify"><strong>V?y c&ocirc;ng ngh? hi?n ??i nay s? ??n t? ?&acirc;u?</strong> </p>\r\n<p align="justify">M&aacute;y c&ocirc;ng c? ?ang ph&aacute;t tri?n m?nh, ng&agrave;y c&agrave;ng tr? n&ecirc;n nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c h?n. Tuy nhi&ecirc;n, b?n th&acirc;n ph&ocirc;i li&ecirc;?u kh&ocirc;ng ph&aacute;t tri?n theo c&aacute;ch gia t?ng gi?ng nh? v?y, ch&uacute;ng ?ang thay ??i m?t c&aacute;ch c?n b?n. Ng&agrave;y nay ph&ocirc;i gia c&ocirc;ng kh&ocirc;ng ch? c&oacute; y&ecirc;u c?u v? m?c ?? ch&iacute;nh x&aacute;c m&agrave; c&ograve;n ? ch?t l??ng nguy&ecirc;n li?u, do v?y khi nh?n h&agrave;ng, ??n v? s?n xu?t s? g?p ph?i nh?ng v?t li?u m?i th&acirc;?m chi? ch?a h? g??p. ?&oacute; l&agrave; nh?ng v?t li?u bao g?m h?p kim titan, c&aacute;c lo?i h?p kim tr&ecirc;n n?n niken v&agrave; th&eacute;p &eacute;p graphit (CGI), </p>', '', '', '', 0, 0, '2008-04-29 22:55:25', '2008-12-17 09:00:45', 'en', 0),
(40, 'http://www.mail.yahoo.com.vn', 'mail yahoo', 19, '', '', '', '', '', 0, 0, '2008-04-29 22:56:40', '2008-11-27 00:10:42', 'en', 0),
(148, 'http://www.trangvangwebsite.com', 'trang v', 10, '', '', '', 'images/content/link_s148.jpg', '', 2, 0, '2009-06-08 11:06:27', '2009-06-08 11:51:07', 'vn', 0),
(149, 'http://www.thuonggiavietnam.net', 'th??ng gia', 10, '', '', '', 'images/content/link_s149.jpg', '', 3, 0, '2009-06-08 11:07:00', '2009-06-08 11:51:15', 'vn', 0),
(150, 'http://www.trangvangwebsite.com', 'trang v', 10, '', '', '', 'images/content/link_s150.jpg', '', 4, 0, '2009-06-08 11:07:19', '2009-06-08 11:51:21', 'vn', 0),
(154, '', 'Dịch vụ', 9, '', '<p style="margin: 0in 0in 0pt;" class="MsoNormal"><font size="3" face="Times New Roman">&nbsp;&nbsp;&nbsp;<strong> C&oacute; 2 h&igrave;nh thức giao h&agrave;ng: </strong><br />\r\n</font></p>\r\n<p style="margin: 0in 0in 0pt;" class="MsoNormal"><font size="3" face="Times New Roman"><strong>1.</strong>C&oacute; thể mua trực tiếp tại cửa h&agrave;ng, chũng t&ocirc;i sẽ giao h&agrave;ng miễn ph&iacute;<br />\r\n</font></p>\r\n<p style="margin: 0in 0in 0pt;" class="MsoNormal"><font size="3" face="Times New Roman"><strong>2.</strong>C&oacute; thể thanh toan qua t&agrave;i khoản Đ&ocirc;ng &Aacute;, ngay khi thanh to&aacute;n xong, trong v&ograve;ng 24h ch&uacute;ng t&ocirc;i sẽ giao h&agrave;ng<br />\r\n</font></p>\r\n<p style="margin: 0in 0in 0pt;" class="MsoNormal"><font size="3" face="Times New Roman"><br />\r\n</font></p>', '', '', '', 0, 0, '2009-06-08 11:46:05', '2010-04-21 02:00:49', 'vn', 0),
(174, '', 'Tư vấn', 76, '', '<p style="margin: 0in 0in 0pt;" class="MsoNormal"><font size="2">C&oacute; thể li&ecirc;n lạc với ch&uacute;ng t&ocirc;i : <br />\r\n</font></p>\r\n<p><strong>Website:</strong><span> www.cuongtung.tk</span><br />\r\n<strong>Điện thoại:</strong><span> </span>098 5555 903<br />\r\n<strong>Gửi mail:</strong><span>&nbsp; gem.cuong@yahoo.com&nbsp; <strong>hoặc</strong>&nbsp; gvc.cuong@gmail.com<br />\r\n</span></p>', '', '', '', 0, 0, '2009-11-17 11:04:23', '2010-04-21 01:57:20', 'vn', 0),
(175, '', 'Consulting', 77, '', '<p><font size="2" face="Tahoma"><span id="result_box" class="short_text"><span style="BACKGROUND-COLOR: rgb(255,255,255)" title="Th', '', '', '', 0, 0, '2009-11-17 11:04:23', '2009-11-26 09:10:50', 'en', 0),
(159, 'http://www.google.com.vn', 'C', 71, '', '', '', 'images/content/customer_s159.jpg', '', 1, 0, '2009-06-08 12:02:12', '2009-06-12 15:38:55', 'vn', 0),
(160, 'http://www.thuonggiavietnam.net', 'Kh', 71, '', '', '', 'images/content/customer_s160.jpg', '', 2, 0, '2009-06-08 12:02:56', '2009-06-12 15:38:44', 'vn', 0),
(161, 'http://www.trangvangwebsite.com', 'C', 71, '', '', '', 'images/content/customer_s161.jpg', '', 3, 0, '2009-06-08 13:43:52', '2009-06-12 15:37:44', 'vn', 0),
(166, '', 'Ph', 73, '', '<div align="justify">\r\n<table cellspacing="0" cellpadding="0" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <td class="name" align="center"><span><font size="2">D?ch v? k? to&aacute;n </font></span></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? k&ecirc; khai v&agrave; t? v?n thu?</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? T? v?n t&agrave;i ch&iacute;nh Doanh nghi?p </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? thi?t l?p d? &aacute;n ??u t? </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? th?m ??nh d? &aacute;n ??u t? </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? t? v?n ??u t? t&agrave;i ch&iacute;nh</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? thu th?p th&ocirc;ng tin, ph&acirc;n t&iacute;ch v&agrave; ?i?u tra th? tr??ng</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="name" align="center"><font size="2">D?ch v? h? tr? ph&aacute;p l&yacute;</font></td>\r\n        </tr>\r\n        <tr>\r\n            <td class="margin_content"><font size="2">Th&ocirc;ng tin ?ang c?p nh?t ... </font></td>\r\n        </tr>\r\n    </tbody>\r\n</table>\r\n</div>', '', '', '', 0, 0, '0000-00-00 00:00:00', '2009-06-12 15:21:13', 'vn', 0),
(30, '', 'li', 30, '<p align="center"><img height="70" width="208" alt="" src="hotline.jpg" /></p>', '<p align="center"><font size="2" face="Tahoma"><strong>CỬA H&Agrave;NG ĐIỆN M&Aacute;Y-  ĐIỆN LẠNH  CƯỜNG T&Ugrave;NG</strong></font><font size="2" face="Tahoma"> </font></p>\r\n<p align="center">199 tổ 10, KP3, P. Long B&igrave;nh T&acirc;n- Bi&ecirc;n Ho&agrave; - Đồng Nai</p>', '', '', '', 0, 0, '2008-03-29 11:35:26', '2010-04-21 01:41:52', 'vn', 0),
(144, '', 'Tuyển dụng', 70, '', '<p align="justify"><font face="Tahoma" size="2">Thông tin đang cập nhật!.</font></p>', '', '', '', 0, 0, '2009-06-08 10:27:42', '2009-06-08 10:59:55', 'vn', 0),
(125, '', 'Nh', 66, '', '', '', 'images/upload/TakeMeToYourHeart.wma', '', 1, 0, '2008-12-18 09:04:55', '2008-12-18 09:07:50', 'vn', 0),
(126, '', 'Thu?c ngh? t?i Canada', 66, '', '', '', 'images/upload/Mandy_Westlife.wma', '', 2, 0, '2008-12-18 09:08:56', '2008-12-18 09:21:44', 'vn', 0),
(31, '', 'Contact', 31, '', '<font size="3">\r\n<div style="FONT-WEIGHT: bold; COLOR: rgb(24,130,237); TEXT-ALIGN: center"><font size="2">Minh thang Co Ltd.,&nbsp;</font></div>\r\n<div style="COLOR: rgb(24,130,237); TEXT-ALIGN: center"></div>\r\n</font>', '', '', '', 0, 0, '2008-03-29 11:36:06', '2008-12-17 09:10:19', 'en', 0),
(43, 'http://mail.yahoo.com.vn', 'mail yahoo', 26, '', '', '', 'images/content/advleft_s43.gif', '', 0, 0, '2008-05-01 23:50:46', '2008-06-18 14:50:50', 'en', 0),
(44, 'http://www.google.com.vn', 'google', 27, '', '', '', 'images/content/advright_s44.jpg', '', 1, 0, '2008-05-01 23:51:17', '2008-11-27 21:11:34', 'en', 0),
(49, 'thehoipro200x', 'Ho tro ky thuat ', 36, '', '', '', '', '', 0, 0, '2008-06-02 11:30:58', '2009-06-08 11:52:19', 'vn', 0),
(50, 'support', 'Support', 37, '', '', '', '', '', 0, 0, '2008-06-02 11:31:10', '2008-06-02 11:31:27', 'en', 0),
(81, 'gem.cuong', 'Hỗ trợ kỹ thuật', 11, '', '', '', '', '', 0, 0, '2008-10-23 17:05:52', '2010-04-20 15:00:33', 'vn', 0),
(167, '', 'Giới thiệu', 28, '', '<p align="center"><font size="2" face="Tahoma"><strong>CỬA H&Agrave;NG ĐIỆN M&Aacute;Y- ĐIỆN LẠNH  CƯỜNG T&Ugrave;NG</strong></font><font size="2" face="Tahoma"> </font></p>\r\n<p align="center">199 tổ 10, KP3, P. Long B&igrave;nh T&acirc;n- Bi&ecirc;n Ho&agrave; - Đồng Nai</p>', '', '', '', 0, 0, '2009-06-16 15:02:09', '2010-04-21 01:35:39', 'vn', 0),
(173, '', 'Service', 81, '', '<p>Will be update...</p>', '', '', '', 0, 0, '2009-11-17 11:01:32', '2009-11-26 09:08:28', 'en', 0),
(192, 'http://cuongtung.tk/?frame=product_detail&id=184', 'Quản lí', 89, '', '', '', 'images/content/banner_s192.png', '', 0, 0, '2009-12-16 00:00:00', '2011-02-17 22:59:35', 'vn', 0),
(193, 'http://www.cuongtung.tk', 'Management banner', 90, '', '', '', 'images/content/banner_s193.png', '', 0, 0, '2009-12-16 00:00:00', '2011-02-17 22:59:39', 'en', 0),
(176, '', 'Tuyển dụng', 78, '', '<font size="2" face="Tahoma">Th&ocirc;ng tin đang cập nhật<br />\r\n</font>', '', '', '', 0, 0, '2009-11-17 11:04:23', '2011-02-17 23:22:23', 'vn', 0),
(177, '', 'Employment', 79, '', '<font size="2" face="Tahoma"><span id="result_box" class="short_text"><span title="Th&lt;/body"></span></span></font>', '', '', '', 0, 0, '2009-11-17 11:04:23', '2011-02-17 23:22:27', 'en', 0),
(178, '', '', 0, '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0),
(179, 'gem.cuong', 'Suppport online(yahoo)', 11, '', '', '', '', '', 1, 0, '2009-11-17 11:24:05', '2010-04-20 15:00:19', 'vn', 0),
(196, '', 'Bị đánh dã man vì không cưới vợ bé cho chồng', 8, '', '<h4 class="head-noidung"><font color="#000000">&ldquo;Phải cưới vợ b&eacute; cho &ocirc;ng!&rdquo;, đ&oacute; l&agrave; tuy&ecirc;n bố của  &ocirc;ng Trần Văn Q. (SN 1967, tr&uacute; th&ocirc;n Lại Thế, x&atilde; Ph&uacute; Thượng, H. Ph&uacute; Vang,  TT.Huế) đưa ra với vợ m&igrave;nh l&agrave; chị Huỳnh Thị L. (1966). V&agrave; mỗi lần như  thế, chị L. kh&ocirc;ng chấp h&agrave;nh th&igrave; bị chồng đ&aacute;nh đập d&atilde; man.</font></h4>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Trong đơn gửi CA huyện Ph&uacute; Vang, CA x&atilde; Ph&uacute;  Thượng v&agrave; ch&iacute;nh quyền địa phương nhờ can thiệp, chị L. tr&igrave;nh b&agrave;y: chị  v&agrave; Q. kết h&ocirc;n năm 1989. Sau qu&aacute; tr&igrave;nh chung sống, đến nay 2 người đ&atilde; c&oacute;  với nhau 5 con (4 g&aacute;i, 1 trai). Trước đ&acirc;y cuộc sống gia đ&igrave;nh kh&oacute; khăn  th&igrave; rất y&ecirc;n ấm, tuy nhi&ecirc;n từ năm 2008 đến nay, khi điều kiện kinh tế  khấm kh&aacute;, Q. lại trở chứng, thường hắt hủi vợ con v&agrave; quan hệ với một số  phụ nữ kh&aacute;c.</font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Thời gian gần đ&acirc;y, Q. một hai l&agrave;m đơn ly  dị rồi bắt chị L. phải k&yacute;, nếu kh&ocirc;ng k&yacute; th&igrave; bị đ&aacute;nh v&agrave; bị buộc phải &ldquo;đi  cưới vợ b&eacute; cho &ocirc;ng&rdquo;. Kh&ocirc;ng c&ograve;n c&aacute;ch n&agrave;o kh&aacute;c, chị&nbsp; đ&agrave;nh l&agrave;m đơn gửi c&aacute;c  cơ quan chức năng can thiệp. Chị L. cho rằng, từ th&aacute;ng 9/2009 đến nay,  kh&ocirc;ng những chồng m&agrave; mẹ chồng của chị lu&ocirc;n g&acirc;y &aacute;p lực, buộc chị phải đi  cưới &ldquo;vợ b&eacute;&rdquo; cho Q. Chị L. ki&ecirc;n quyết phản đối th&igrave; &ocirc;ng Q. đ&aacute;nh đập, c&oacute;  lần chị phải nhờ CA x&atilde; Ph&uacute; Thượng can thiệp.</font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Gần đ&acirc;y nhất, ng&agrave;y 14/4, Q. n&eacute;m đồ đạc của  vợ con ra ngo&agrave;i đường, kh&oacute;a tr&aacute;i cửa kh&ocirc;ng cho mấy mẹ con L. v&agrave;o nh&agrave; v&igrave;  c&aacute;i tội kh&ocirc;ng k&yacute; đơn ly h&ocirc;n v&agrave; &quot;kh&ocirc;ng đi hỏi vợ b&eacute; cho &ocirc;ng&rdquo;. Tiếp tục  t&igrave;m hiểu sự việc, ch&uacute;ng t&ocirc;i được c&aacute;n bộ Hội Phụ nữ x&atilde; Ph&uacute; Thượng, cho  biết: thời gian gần đ&acirc;y, Q. l&agrave;m nghề thầy c&uacute;ng, thường hay ra ngo&agrave;i v&agrave;  kh&ocirc;ng biết c&uacute;ng b&aacute;i thế n&agrave;o m&agrave; lại chết m&ecirc; chết mệt c&ocirc; V&otilde; Thị T. (SN  1980, tr&uacute; x&atilde; Hương Vinh, H. Hương Tr&agrave;) v&agrave; muốn lấy c&ocirc; ta l&agrave;m vợ.</font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Kh&ocirc;ng những vậy, c&ocirc; T. cũng nhiều lần nhắn  tin h&ugrave; dọa chị L., y&ecirc;u cầu phải &ldquo;đi nơi kh&aacute;c để c&ocirc; ta về l&agrave;m vợ Q.&rdquo;.  Trao đổi với P.V, Trưởng CA x&atilde; Ph&uacute; Thượng Nguyễn Văn Nh&agrave;n cho biết:  &ldquo;Chuyện Q. đ&aacute;nh đập chị L. l&agrave; c&oacute; thật, ch&iacute;nh quyền x&atilde; từng tham gia h&ograve;a  giải, y&ecirc;u cầu Q. chấm dứt h&agrave;nh động đ&aacute;nh đập vợ con v&ocirc; cớ. Ng&agrave;y 14/4,  ngay sau khi nhận được đơn của chị L., CA x&atilde; Ph&uacute; Thượng v&agrave; CA huyện Ph&uacute;  Vang đ&atilde; c&oacute; giấy triệu tập nhưng Q. kh&ocirc;ng đến với l&yacute; do bận... đi c&uacute;ng&rdquo;.</font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Mong rằng, c&aacute;c cơ quan chức năng li&ecirc;n quan  sớm v&agrave;o cuộc để l&agrave;m s&aacute;ng tỏ sự việc.</font></font></p>', '', 'images/content/news_s196.jpg', NULL, 0, 0, '2010-04-20 17:48:32', '2010-04-20 17:48:32', 'vn', 0),
(197, '', 'Triệt hạ đường dây bán dâm bạc triệu', 8, '', '<h4 class="head-noidung"><font color="#000000">Sở hữu những c&ocirc; g&aacute;i tuổi đ&ocirc;i mươi xinh đẹp  thuộc loại bậc nhất th&agrave;nh phố c&ugrave;ng với những kh&aacute;ch l&agrave;ng chơi đại gia,  Maria Linda trở th&agrave;nh t&uacute; b&agrave; đ&igrave;nh đ&aacute;m nhất Berlin, chốn ăn chơi v&agrave; l&agrave;  kinh đ&ocirc; thời trang của Đức.</font></h4>\r\n<p style="text-align: justify;"><strong><font style="font-size: 10pt;"><font style="font-family: Verdana;">Đường d&acirc;y g&aacute;i gọi của t&uacute; b&agrave; Maria Linda</font></font></strong></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Năm 2003, Maria Linda, 27 tuổi l&agrave; một t&uacute;  b&agrave; nổi tiếng ở Berlin. Sau một thời gian l&agrave;m g&aacute;i gọi, c&ocirc; đ&atilde; trở th&agrave;nh t&uacute;  b&agrave; sau khi &ldquo;sở hữu&rdquo; trong tay rất nhiều g&aacute;i mại d&acirc;m xinh đẹp thuộc loại  bậc nhất th&agrave;nh phố Berlin. Những c&ocirc; g&aacute;i n&agrave;y với th&acirc;m ni&ecirc;n l&agrave;m việc cũng  như kinh nghiệm chuy&ecirc;n nghiệp đ&atilde; tận t&igrave;nh phục vụ c&aacute;c qu&yacute; &ocirc;ng. </font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Sự chuy&ecirc;n nghiệp đ&atilde; gi&uacute;p c&aacute;c c&ocirc; g&aacute;i trong  đường d&acirc;y của Maria Linda thu h&uacute;t được rất nhiều c&aacute;c đại gia c&oacute; tiếng  tăm trong giới ăn chơi Berlin. Maria Linda l&agrave; một trong những t&uacute; b&agrave;  th&agrave;nh c&ocirc;ng nhất trong việc dẫn dắt v&agrave; bu&ocirc;n b&aacute;n g&aacute;i mại d&acirc;m. Trong những  năm gần đ&acirc;y, mạng lưới đường d&acirc;y g&aacute;i gọi của Maria Linda ng&agrave;y c&agrave;ng tinh  vi v&agrave; d&agrave;y đặc. C&oacute; rất nhiều th&ocirc;ng tin gửi đến sở cảnh s&aacute;t cũng như c&aacute;c  cơ quan điều tra dể th&ocirc;ng b&aacute;o về đường d&acirc;y n&agrave;y. </font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">C&oacute; rất nhiều người tỏ ra ghen tỵ với Maria  Linda, bởi họ lu&ocirc;n thấy c&ocirc; được sống trong cảnh gi&agrave;u sang, nhung lụa.  Họ cũng kh&ocirc;ng thể biết được c&ocirc; l&agrave;m g&igrave;, bu&ocirc;n g&igrave; để c&oacute; nhiều lợi nhuận đến  như vậy. Cảnh s&aacute;t bắt đầu theo d&otilde;i mọi hoạt động của Maria Linda, một  t&uacute; b&agrave; gi&agrave;u c&oacute; nhờ việc kinh doanh tr&ecirc;n th&acirc;n x&aacute;c phụ nữ.</font></font></p>\r\n<p style="text-align: justify;"><strong><font style="font-size: 10pt;"><font style="font-family: Verdana;">Bộ mặt của t&uacute; b&agrave;</font></font></strong></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Maria Linda sinh ra trong một gia đ&igrave;nh  ngh&egrave;o. C&ocirc; lu&ocirc;n nu&ocirc;i &yacute; ch&iacute; cũng như mơ ước của m&igrave;nh l&agrave; sẽ trở th&agrave;nh một  người gi&agrave;u c&oacute; v&agrave; được sống trong thế giới thượng lưu. Ch&iacute;nh v&igrave; vậy m&agrave;  kh&aacute;t khao l&agrave;m gi&agrave;u c&agrave;ng lớn l&ecirc;n theo độ tuổi của c&ocirc;. Những c&ocirc;ng việc l&agrave;m  ăn b&igrave;nh thường kh&ocirc;ng thể gi&uacute;p c&ocirc; kiếm được nhiều tiền một c&aacute;ch nhanh  ch&oacute;ng, Maria Linda đ&atilde; bắt đầu nghĩ đến c&aacute;ch kiếm tiền kh&aacute;c để c&oacute; thể đạt  được ước mơ của m&igrave;nh. Khao kh&aacute;t kiếm tiền n&ecirc;n việc học h&agrave;nh của c&ocirc; vẫn  c&ograve;n dang dở, c&ocirc; kh&ocirc;ng c&ograve;n quan t&acirc;m đến điều n&agrave;y nữa v&igrave; đấy kh&ocirc;ng phải l&agrave;  mục đ&iacute;ch sống của c&ocirc;.</font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">19 tuổi, Maria Linda đ&atilde; m&ecirc; đắm trong c&aacute;c  cuộc t&igrave;nh, c&ocirc; chỉ quan t&acirc;m đến những người đ&agrave;n &ocirc;ng c&oacute; tiền v&agrave; c&ocirc; đ&atilde; trở  th&agrave;nh g&aacute;i bao cho c&aacute;c đại gia. </font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Người đ&agrave;n &ocirc;ng đ&atilde; đưa Maria Linda đến với  thế giới thượng lưu l&agrave; Nick Klaus, chủ khu biệt thự Grayhall Mansion 61  tuổi v&agrave; rất gi&agrave;u c&oacute;. Từ khi gặp Nick Klaus, Maria Linda đ&atilde; c&oacute; nhiều mối  quan hệ với c&aacute;c đại gia v&agrave; c&ocirc; đ&atilde; gặp được một t&uacute; b&agrave; l&agrave; Britt Loena. Cuộc  sống cũng như c&ocirc;ng việc của c&ocirc; bước sang một trang mới. C&ocirc; được sống  trong nhung lụa nhưng c&ocirc; vẫn chưa h&agrave;i l&ograve;ng. Sau khi đ&atilde; c&oacute; trong tay một  số t&agrave;i sản của Nick Klaus, c&ocirc; bắt đầu thực hiện những chiến lược của  m&igrave;nh. C&ocirc; bắt đầu nghĩ đến việc kiếm tiền tr&ecirc;n th&acirc;n x&aacute;c của c&aacute;c c&ocirc; g&aacute;i v&igrave;  t&uacute; b&agrave; Britt Loena đang muốn nghỉ hưu. C&ocirc; đ&atilde; nhận lại to&agrave;n bộ sự nghiệp  của đường d&acirc;y g&aacute;i gọi n&agrave;y. Britt Loena tin rằng, Maria Linda l&agrave; người  th&iacute;ch hợp nhất để ph&aacute;t triển &ldquo;sự nghiệp&rdquo; kinh doanh đầy lợi nhuận n&agrave;y.  Britt Loena đ&atilde; chỉ bảo tận t&igrave;nh những m&aacute;nh kh&oacute;e trong c&ocirc;ng việc kinh  doanh. </font></font></p>\r\n<p style="text-align: center;"><font style="font-size: 10pt;"><font style="font-family: Verdana;"><img src="http://img31.24h.com.vn/upload/2-2010/images/2010-04-20/1271726339-gai_goi.jpg" alt="Triệt hạ đường dây bán dâm bạc triệu, An\r\nninh - Hình sự, tú bà, mại dâm, đường dây, bán dâm, khách làng chơi" onclick="return\r\nopenNewImage(this, '''')" class="news-image" /></font></font></p>\r\n<p style="text-align: center;"><font style="font-size: 10pt;"><em><font style="color: rgb(0, 0, 255);"><font style="font-family: Verdana;">Phố  đ&egrave;n đỏ ở Berlin</font></font></em></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Đường d&acirc;y n&agrave;y chỉ thu nạp những c&ocirc; g&aacute;i  xinh đẹp v&agrave; trẻ trung, biết l&agrave;m h&agrave;i l&ograve;ng kh&aacute;ch, nếu kh&ocirc;ng sẽ bị đ&agrave;o thải  v&ocirc; điều kiện. Maria Linda l&agrave; người trực tiếp dụ dỗ, mời gọi những c&ocirc;  g&aacute;i trẻ theo con đường của m&igrave;nh. Trong 2 năm l&agrave;m nghề kinh doanh g&aacute;i mại  d&acirc;m, Maria Linda đ&atilde; kiếm được hơn một triệu Euro. </font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Britt Loena từ khi c&oacute; sự trợ gi&uacute;p của  người phụ t&aacute; mới, lợi nhuận thu được từ việc kinh doanh tr&ecirc;n th&acirc;n x&aacute;c  phụ nữ đ&atilde; tăng cao khiến Britt Loena c&agrave;ng tin tưởng v&agrave;o t&agrave;i năng cũng  như những m&aacute;nh kh&oacute;e của Maria Linda. Mọi c&ocirc;ng việc kinh doanh b&agrave; đ&atilde; giao  cho Maria Linda nhưng Maria Linda chỉ nhận được số tiền c&ocirc;ng &iacute;t ỏi từ  số thu nhập khổng lồ của Britt Loena. Ch&iacute;nh v&igrave; vậy m&agrave; c&ocirc; đ&atilde; t&igrave;m c&aacute;ch  t&aacute;ch khỏi Britt Loena. V&igrave; c&oacute; lợi thế đ&atilde; c&oacute; một thời gian l&agrave;m việc cho  Britt Loena n&ecirc;n Maria Linda đ&atilde; c&oacute; rất nhiều kinh nghiệm dụ dỗ c&aacute;c c&ocirc; g&aacute;i  cũng như thu h&uacute;t được rất nhiều kh&aacute;ch l&agrave;ng chơi. Những kh&aacute;ch h&agrave;ng ng&agrave;y  c&agrave;ng biết đến t&ecirc;n tuổi của Maria Linda v&igrave; chất lượng &ldquo;h&agrave;ng&rdquo; cũng như sự  phục vụ. </font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Họ t&igrave;m thấy sự thỏa m&atilde;n khi đến với c&aacute;c c&ocirc;  g&aacute;i trong đường d&acirc;y của Maria Linda, ch&iacute;nh v&igrave; vậy m&agrave; số tiền họ c&oacute; thể  bỏ ra cho một lần qua đ&ecirc;m với c&aacute;c c&ocirc; g&aacute;i quả l&agrave; kh&ocirc;ng nhỏ. Chưa một  kh&aacute;ch h&agrave;ng n&agrave;o c&oacute; &yacute; kiến hay than phiền g&igrave; về sự nhiệt t&igrave;nh cũng như  kinh nghiệm phục vụ của c&aacute;c c&ocirc; g&aacute;i. Tiếng tăm của t&uacute; b&agrave; Maria Linda ng&agrave;y  c&agrave;ng nổi tiếng, lợi nhuận thu được ng&agrave;y c&agrave;ng nhiều. Đường d&acirc;y g&aacute;i gọi  cao cấp của Maria Linda th&agrave;nh c&ocirc;ng ngay từ những th&aacute;ng đầu th&agrave;nh lập.  Mỗi năm t&uacute; b&agrave; Maria Linda đ&atilde; thu về h&agrave;ng triệu Euro.</font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Trong 6 th&aacute;ng t&aacute;ch ra khỏi c&aacute;i b&oacute;ng của  Britt Loena, Maria Linda đ&atilde; nhiều lần l&agrave;m cho Britt Loena phải căng  thẳng v&agrave; phẫn nộ bởi sự thu phục kh&aacute;ch h&agrave;ng của Maria Linda. Kh&aacute;ch h&agrave;ng  của b&agrave; đ&atilde; lần lượt đến với Maria Linda. Kh&ocirc;ng &iacute;t lần b&agrave; đ&atilde; cho đ&agrave;n em  của m&igrave;nh đến dằn mặt v&agrave; cảnh c&aacute;o Maria Linda nhưng c&ocirc; kh&ocirc;ng hề lo sợ,  bởi Maria Linda c&oacute; khả năng dụ dỗ c&aacute;c c&ocirc; g&aacute;i xinh đẹp. Những c&ocirc; g&aacute;i  trong đường d&acirc;y của Maria Linda&nbsp; phải thực sự xinh đẹp v&agrave; quyến rũ.  Những c&ocirc; g&aacute;i với những th&acirc;n h&igrave;nh bốc lửa, mong ước kiếm được nhiều tiền  nhờ v&agrave;o t&agrave;i sản sẵn c&oacute; của m&igrave;nh đ&atilde; tự t&igrave;m đến với Maria Linda. </font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">C&ocirc; thường xuy&ecirc;n xuất hiện ở c&aacute;c hộp đ&ecirc;m,  qu&aacute;n bar để vui th&uacute; với bạn b&egrave;. Tại những tụ điểm n&agrave;y đ&atilde; c&oacute; rất nhiều  c&aacute;c c&ocirc; g&aacute;i t&igrave;m đến v&agrave; xin gia nhập tổ chức mại d&acirc;m của Maria Linda.  Ch&iacute;nh v&igrave; vậy m&agrave; c&ocirc; đ&atilde; chiến thắng được rất nhiều những tổ chức mại d&acirc;m  kh&aacute;c trong th&agrave;nh phố. L&agrave; một t&uacute; b&agrave; ch&iacute;nh hiệu nhưng Maria Linda vẫn  thường xuy&ecirc;n được tham dự những bữa tiệc sang trọng, cuộc sống của c&ocirc;  thuộc tầng lớp thượng lưu. H&agrave;ng đống tiền trong t&uacute;i, những trang phục,  nữ trang đắt tiền, c&ocirc; đ&atilde; cố gắng để sống v&agrave; khẳng định vị tr&iacute; của m&igrave;nh  trong tầng lớp thượng lưu.</font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Một ưu điểm m&agrave; c&aacute;c c&ocirc; g&aacute;i trong đường d&acirc;y  của Maria Linda phải k&iacute;nh nể đấy l&agrave; việc ăn chia rất s&ograve;ng phẳng với c&aacute;c  c&ocirc;. Maria Linda ngo&agrave;i th&agrave;nh c&ocirc;ng thu phục được rất nhiều c&ocirc; g&aacute;i, c&ocirc; c&ograve;n  biết c&aacute;ch giữ được c&aacute;c c&ocirc; ở lại với m&igrave;nh. C&oacute; mối quan hệ tốt nhờ v&agrave;o  việc đối xử v&agrave; trả tiền cho c&aacute;c c&ocirc; một c&aacute;ch xứng đ&aacute;ng. C&aacute;c c&ocirc; g&aacute;i b&aacute;n  d&acirc;m sẽ được hưởng một nửa số tiền m&agrave; kh&aacute;ch trả v&agrave; to&agrave;n bộ số tiền boa  của kh&aacute;ch. C&aacute;c c&ocirc; g&aacute;i trẻ thực sự y&ecirc;u qu&yacute; t&uacute; b&agrave; trẻ Maria Linda. </font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Danh tiếng của Maria Linda nổi như cồn,  kh&ocirc;ng những chỉ nổi tiếng trong nước Đức m&agrave; c&ocirc; đ&atilde; g&acirc;y được sự ch&uacute; &yacute; của  tầng lớp đại gia tr&ecirc;n khắp thế giới. C&aacute;c c&ocirc; g&aacute;i trong đường d&acirc;y của  Maria Linda c&ograve;n được t&uacute; b&agrave; n&agrave;y gửi sang nước ngo&agrave;i để phục vụ kh&aacute;ch với  gi&aacute; cao ngất ngưởng. C&aacute;c đại gia kh&ocirc;ng ngại khoản tiền họ bỏ ra m&agrave; chỉ  y&ecirc;u cầu đ&uacute;ng mặt h&agrave;ng họ cần v&agrave; tuyệt đối an to&agrave;n. Chi ph&iacute; cho một c&ocirc;  g&aacute;i sang nước ngo&agrave;i phục vụ c&oacute; thể từ 1 triệu đến 1,5 triệu Euro. </font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Một số tiền kh&ocirc;ng nhỏ nhưng c&aacute;c thượng  kh&aacute;ch sẵn s&agrave;ng bỏ ra để phục vụ cho sự thỏa m&atilde;n của m&igrave;nh. C&aacute;c c&ocirc; g&aacute;i b&aacute;n  d&acirc;m trong đường d&acirc;y của Maria Linda c&oacute; một cuộc sống sung t&uacute;c, xa hoa.  Nhiều c&ocirc; g&aacute;i mới lớn thực sự ngưỡng mộ v&agrave; ao ước c&oacute; một cuộc sống như  vậy. C&aacute;c c&ocirc; c&oacute; thể được đi khắp nơi tr&ecirc;n thế giới, được tiền của c&aacute;c đại  gia cung phụng v&agrave; c&oacute; thể được gặp gỡ rất nhiều người nổi tiếng tr&ecirc;n thế  giới.</font></font></p>\r\n<p style="text-align: justify;"><strong><font style="font-size: 10pt;"><font style="font-family: Verdana;">Cảnh s&aacute;t v&agrave;o cuộc cắt đường d&acirc;y g&aacute;i gọi</font></font></strong></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Th&aacute;ng 4 năm 2008, sở cảnh s&aacute;t Berlin v&agrave;  c&aacute;c cơ quan chức năng kh&aacute;c đ&atilde; phối hợp điều tra đường d&acirc;y của t&uacute; b&agrave;  Maria Linda. Một số cảnh s&aacute;t đ&atilde; v&agrave;o vai c&aacute;c đại gia muốn vui vẻ v&agrave; được  c&aacute;c c&ocirc; g&aacute;i xinh đẹp phục vụ. Sau khi thỏa thuận, cảnh s&aacute;t đ&atilde; đồng &yacute; trả  6000 Euro để nhận được 4 c&ocirc; g&aacute;i phục vụ giải tr&iacute; chưa kể c&aacute;c ph&iacute; dịch vụ  kh&aacute;c. Ng&agrave;y 18 th&aacute;ng 06, Maria Linda đ&atilde; đưa 4 c&ocirc; g&aacute;i mại d&acirc;m xinh đẹp  c&ugrave;ng với 13 gam cocain đến đ&uacute;ng địa chỉ kh&aacute;ch h&agrave;ng y&ecirc;u cầu. Mọi hoạt  động của Maria Linda đ&atilde; bị theo d&otilde;i bằng c&aacute;c thiết bị hiện đại. Điều g&igrave;  đến cũng phải đến với t&uacute; b&agrave; Maria Linda v&agrave; đường d&acirc;y g&aacute;i gọi cao cấp của  c&ocirc;. </font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Những hoạt động phi ph&aacute;p kh&ocirc;ng thể cứ nằm  ngo&agrave;i v&ograve;ng ph&aacute;p luật. Sau 2 năm theo d&otilde;i v&agrave; điều tra mọi hoạt động của  t&uacute; b&agrave; Maria Linda v&agrave; đường d&acirc;y của c&ocirc;, cảnh s&aacute;t đ&atilde; bắt Maria Linda c&ugrave;ng  rất nhiều g&aacute;i gọi trong đường d&acirc;y n&agrave;y. Maria Linda đ&atilde; c&oacute; mặt tại phi&ecirc;n  t&ograve;a x&eacute;t xử ng&agrave;y 24 th&aacute;ng 07 năm 2009. Với tội danh tổ chức, bu&ocirc;n b&aacute;n g&aacute;i  mại d&acirc;m, Maria Linda đ&atilde; bị kết &aacute;n 5 năm t&ugrave; giam v&agrave; nộp phạt 200.000  Euro. Đ&acirc;y l&agrave; một phi&ecirc;n t&ograve;a diễn ra rất nhanh v&igrave; mọi bằng chứng đ&atilde; r&otilde;  r&agrave;ng trước t&ograve;a, th&ecirc;m v&agrave;o đ&oacute; l&agrave; sự th&uacute; nhận mọi tội lỗi của Maria Linda.  Maria Linda bị kết tội tổ chức, bu&ocirc;n b&aacute;n g&aacute;i mại d&acirc;m v&agrave; sử dụng ma t&uacute;y.  Việc Maria Linda bị bắt đ&atilde; khiến cả Berlin hoang mang, bởi rất nhiều t&ecirc;n  tuổi nổi tiếng c&oacute; thể bị vạch trần v&igrave; tội mua b&aacute;n d&acirc;m. Đ&acirc;y l&agrave; một trong  những vụ b&ecirc; bối t&igrave;nh dục đ&igrave;nh đ&aacute;m nhất xảy ra ở Đức.</font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Trước t&ograve;a, Maria Linda vẫn khẳng định rằng  đ&acirc;y l&agrave; một c&ocirc;ng việc th&uacute; vị v&agrave; c&ocirc; thấy rất hứng th&uacute;. kh&ocirc;ng biết sẽ l&agrave;m  g&igrave; khi ra t&ugrave;. C&ocirc; vẫn mong được tiếp tục c&ocirc;ng việc n&agrave;y nhưng sẽ hoạt động  dưới một h&igrave;nh thức nh&agrave; chứa được cấp giấy ph&eacute;p.</font></font></p>', '', 'images/content/news_s197.jpg', NULL, 0, 0, '2010-04-20 17:49:15', '2010-04-20 17:49:15', 'vn', 0),
(198, '', 'Đâm trọng thương đại uý công an rồi tự vẫn', 8, '', '<h4 class="head-noidung"><font color="#000000">Sau khi d&ugrave;ng dao, k&eacute;o đ&acirc;m trọng thương đại u&yacute;  c&ocirc;ng an, Huỳnh Ngọc Thắng tự lao đầu v&agrave;o tủ k&iacute;nh, đ&acirc;m v&agrave;o bụng&hellip;</font></h4>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">S&aacute;ng 20/4, C&ocirc;ng an phường H&ograve;a Thuận Đ&ocirc;ng  (quận Hải Ch&acirc;u, Đ&agrave; Nẵng) nhận tin b&aacute;o ở tổ 7 của phường đang xảy ra vụ  c&atilde;i v&atilde; to tiếng giữa Huỳnh Ngọc Thắng (1983, c&ograve;n gọi l&agrave; &quot;cu Quẹo&quot;) với  người th&acirc;n. Trong l&uacute;c đ&ocirc;i co, Thắng đ&atilde; đập ph&aacute; đồ đạc trong nh&agrave;, khiến  người th&acirc;n trong gia đ&igrave;nh bất b&igrave;nh v&agrave; g&acirc;y mất an ninh trật tự tr&ecirc;n địa  b&agrave;n.</font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Nhận được tin b&aacute;o, C&ocirc;ng an phường Ho&agrave;  Thuận Đ&ocirc;ng đ&atilde; cử đại &uacute;y Th&acirc;n Trọng Phước (sinh năm 1963) trực tiếp xuống  hiện trường giải quyết vụ việc. Tuy nhi&ecirc;n, khi anh Phước vừa mới bước  v&agrave;o nh&agrave; th&igrave; Thắng đ&atilde; d&ugrave;ng dao Th&aacute;i Lan v&agrave; k&eacute;o lao v&agrave;o d&acirc;m li&ecirc;n tiếp  nhiều nh&aacute;t v&agrave;o cả hai tay anh Phước. Sau đ&oacute;, đối tượng tiếp tục tự lao  đầu v&agrave;o tủ k&iacute;nh v&agrave; d&ugrave;ng dao, k&eacute;o đ&acirc;m v&agrave;o bụng m&igrave;nh.</font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Ngay sau khi sự việc xảy ra, C&ocirc;ng an  phường Ho&agrave; Thuận Đ&ocirc;ng v&agrave; người d&acirc;n địa phương đ&atilde; nhanh ch&oacute;ng đưa cả đại  u&yacute; Th&acirc;n Trọng Phước v&agrave; đối tượng Huỳnh Ngọc Thắng v&agrave;o Bệnh viện qu&acirc;n y  C17 cấp cứu.</font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">B&aacute;c sĩ Phạm Hồng H&agrave;, Khoa Chấn thương  chỉnh h&igrave;nh (Bệnh viện C17) cho biết, đại u&yacute; Phước nhập viện với 4 nh&aacute;t  dao đ&acirc;m s&acirc;u, trong đ&oacute; một nh&aacute;t xuy&ecirc;n qua gan b&agrave;n tay tr&aacute;i, g&acirc;y đứt b&oacute;  mạch thần kinh quay; một nh&aacute;t đ&acirc;m đứt g&acirc;n gấp ng&oacute;n c&aacute;i tr&aacute;i; hai nh&aacute;t  c&ograve;n lại g&acirc;y đứt g&acirc;n tay lớn phải v&agrave; tổn thương b&oacute; mạch hần kinh trụ tay  phải.</font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Sau hơn 1 giờ được c&aacute;c b&aacute;c sĩ tiến h&agrave;nh  băng &eacute;p, phẫu thuật v&agrave; kh&acirc;u g&acirc;n gấp, đại u&yacute; Phước đ&atilde; tỉnh lại v&agrave; đang  tiếp tục được theo d&otilde;i điều trị. Cũng theo b&aacute;c sĩ H&agrave;, nếu kh&ocirc;ng được xử  l&yacute; kịp thời, c&aacute;c chức năng của hai b&agrave;n tay đại u&yacute; Phước sẽ bị tổn hại  nặng về sau v&agrave; ảnh hưởng đến thần kinh.</font></font></p>\r\n<p style="text-align: justify;"><font style="font-size: 10pt;"><font style="font-family: Verdana;">Theo th&ocirc;ng tin do C&ocirc;ng an phường Ho&agrave; Thuận  Đ&ocirc;ng cung cấp, Huỳnh Ngọc Thắng từng l&agrave; đối tượng h&igrave;nh sự, đ&atilde; bị kết &aacute;n  về tội cướp t&agrave;i sản, m&atilde;n hạn t&ugrave; năm 2004. Hiện lực lượng c&ocirc;ng an đang  theo d&otilde;i sức khỏe của đối tượng n&agrave;y tại Bệnh viện C 17 để tiếp tục điều  tra, xử l&yacute;. </font></font></p>', '', 'images/content/news_s198.jpg', NULL, 0, 0, '2010-04-20 17:49:55', '2010-04-20 17:49:55', 'vn', 0);
INSERT INTO `tbl_content` (`id`, `code`, `name`, `parent`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `lang`, `new`) VALUES
(199, '', 'Đoạn đời buồn thiếu phụ bán hoa', 8, '', '<h4 class="head-noidung"><font color="#000000">Những giọt nước mắt đ&atilde; tu&ocirc;n rơi nhiều tr&ecirc;n gối  v&agrave; c&ograve;n rất l&acirc;u nữa t&acirc;m hồn Thuyết mới được y&ecirc;n b&igrave;nh như ng&agrave;y c&ograve;n son sắt  tuổi xu&acirc;n.</font></h4>\r\n<table cellspacing="0" cellpadding="0" border="0" width="100%">\r\n    <tbody>\r\n        <tr>\r\n            <tr>\r\n                <td align="center" colspan="2">\r\n                <div class="content-noidung">\r\n                <script type="text/javascript">window.onload = function () {resizeNewsImage("news-image", 500);}</script>\r\n                <p style="text-align: justify;">Hơn 10 năm chung sống vợ chồng, chị  chưa từng được chồng thủ thỉ những lời y&ecirc;u thương m&agrave; to&agrave;n những th&ocirc;ng  tin nhất thiệt về tướng số, h&agrave;n vi, b&ugrave;a ph&eacute;p m&agrave; chồng nghe được từ  những&hellip; bợm nhậu. Nhiều đ&ecirc;m, cả ph&ograve;ng trong Trung t&acirc;m Y&ecirc;n B&agrave;i đang y&ecirc;n  giấc th&igrave; nghe c&oacute; tiếng th&eacute;t &ldquo;ma, ma!&rdquo; &ndash; đ&oacute; l&agrave; lời m&ecirc; sảng của chị Nguyễn  Thị Thuyết. Những cơn mơ k&eacute;o d&agrave;i li&ecirc;n tục triền mi&ecirc;n từ những th&aacute;ng  ng&agrave;y sống trong sợ h&atilde;i với những c&acirc;u chuyện c&otilde;i &acirc;m của chồng đến những  lần đi kh&aacute;ch ở qu&aacute;n c&agrave; ph&ecirc; gội đầu tr&aacute; h&igrave;nh. Giờ đ&acirc;y, c&ocirc; đang mơ về một  thế giới b&igrave;nh y&ecirc;n sống vui vẻ c&ugrave;ng hai đứa con c&ograve;n ng&acirc;y dại.</p>\r\n                <p style="text-align: justify;"><strong>Su&yacute;t b&aacute;n con v&igrave; muốn l&agrave;m gi&agrave;u</strong></p>\r\n                <p style="text-align: justify;">Ở l&agrave;ng ch&agrave;i Cổ Đ&ocirc;ng (Ba V&igrave; &ndash; H&agrave; Nội)  quanh năm t&eacute;p c&aacute; nu&ocirc;i nhau kh&ocirc;ng đủ sống, Thuyết phải bỏ học sớm để đi  l&agrave;m nu&ocirc;i c&aacute;c em. Nh&agrave; c&oacute; mấy s&agrave;o ruộng cằn cỗi lu&ocirc;n mất m&ugrave;a do mưa b&atilde;o  li&ecirc;n mi&ecirc;n n&ecirc;n từ khi l&ecirc;n 8 tuổi, Thuyết phải c&ugrave;ng mẹ đi cấy thu&ecirc;, g&aacute;nh  gạch cho c&aacute;c chủ l&ograve; ven s&ocirc;ng. Cơ thể kh&ocirc;ng được ăn đủ chất, lại lu&ocirc;n  phải oằn m&igrave;nh g&aacute;nh nặng tr&ecirc;n đ&ocirc;i vai gầy n&ecirc;n nh&igrave;n Thuyết mới ngo&agrave;i 20  tuổi nhưng nhan sắc v&agrave; l&agrave;n da kh&ocirc;ng được tươi tắn như c&aacute;c bạn c&ugrave;ng trang  lứa.</p>\r\n                <p style="text-align: justify;">B&ecirc;n d&ograve;ng s&ocirc;ng Hồng thơ mộng chốn qu&ecirc;,  Thuyết thầm y&ecirc;u trộm nhớ Hải &ndash; một ch&agrave;ng trai khỏe mạnh c&oacute; mồm m&eacute;p nhưng  hay la c&agrave; qu&aacute;n x&aacute;, c&ograve;n trẻ m&agrave; nghiện thuốc l&aacute; nặng v&agrave; cực kỳ gia  trưởng. Ng&agrave;y đầu mới quen nhau, Thuyết v&agrave; Hải hay ngồi bờ s&ocirc;ng t&acirc;m sự  nhưng sau một cuộc nhậu, Hải m&ograve; mẫm đến nh&agrave; Thuyết chơi rồi l&egrave;m b&egrave;m  những lời kh&oacute; lọt tai: &ldquo;C&aacute;i chỗ ch&uacute;ng ta hay ngồi t&acirc;m sự ấy trước kia c&oacute;  một người đ&agrave;n b&agrave; uất chồng rồi tự tử n&ecirc;n giờ chuyển chỗ mới. Chỗ t&igrave;m  hiểu nhau cũng kh&aacute; quan trọng c&ocirc; Thuyết &agrave;, t&ocirc;i kh&ocirc;ng muốn sau n&agrave;y ch&uacute;ng  ta chia ly như gia đ&igrave;nh c&ocirc; g&aacute;i kia&rdquo;. Nghe người y&ecirc;u lảm nhảm những lời  vừa mơ hồ, vừa kh&oacute; tin, Thuyết gật đầu cho qua rồi nghĩ bụng &ldquo;rượu n&oacute;i  chứ anh ấy c&oacute; n&oacute;i đ&acirc;u&rdquo;. H&ocirc;m sau, Thuyết hỏi h&agrave;ng x&oacute;m th&igrave; kh&ocirc;ng c&oacute; việc  đ&oacute;. C&oacute; lẽ trong l&uacute;c ch&eacute;n tạc ch&eacute;n th&ugrave; với nhau, c&aacute;c bợm nhậu đ&atilde; th&ecirc;u dệt  vụ tự tử đ&oacute; để đ&aacute;nh v&agrave;o c&aacute;i th&oacute;i m&ecirc; t&iacute;n của Hải.</p>\r\n                <p style="text-align: justify;">Nhưng dự cảm của người mẹ đẻ cũng l&agrave;m  Thuyết c&oacute; những x&aacute;o động. B&agrave; cho rằng một người l&uacute;c n&agrave;o cũng tin v&agrave;o  những lời qu&aacute;n x&aacute; chẳng đ&acirc;u v&agrave;o đ&acirc;u như Hải th&igrave; rất hay nổi kh&ugrave;ng v&agrave;  n&oacute;ng nảy. Nếu lấy nhau bữa trước bữa sau cũng xảy ra chuyện cơm chẳng  l&agrave;nh canh chẳng ngọt. Hải qu&yacute; con người Thuyết v&igrave; theo anh d&ugrave; Thuyết c&oacute;  hơi xấu một ch&uacute;t nhưng lại l&agrave; c&ocirc; g&aacute;i ngoan hiền n&ecirc;n Hải ưa. T&iacute;nh từ ng&agrave;y  quen nhau đến l&uacute;c chung một giường nằm, đ&ocirc;i trai g&aacute;i mới trải qua 2  th&aacute;ng t&igrave;m hiểu. Nh&agrave; g&aacute;i muốn c&oacute; th&ecirc;m thời gian để t&igrave;m hiểu xem &ldquo;giống  m&aacute;&rdquo; nh&agrave; Hải rồi mới quyết định cho cưới. Nhưng Thuyết tin v&agrave;o t&igrave;nh y&ecirc;u  với Hải, d&ugrave; c&oacute; kh&oacute; khăn thế n&agrave;o th&igrave; hai người cũng giải quyết được để  đến được với nhau. Đ&aacute;m cưới điền vi&ecirc;n giữa hai họ cũng diễn ra kết th&agrave;nh  trăm năm cho đ&ocirc;i trai g&aacute;i.</p>\r\n                <p style="text-align: justify;">Cưới nhau về nhưng của hồi m&ocirc;n của hai  người chỉ l&agrave; mấy s&agrave;o ruộng n&ecirc;n &iacute;t l&acirc;u sau Hải l&ecirc;n đường v&agrave;o Nam l&agrave;m ăn.  Tuy chỉ bốc v&aacute;c thu&ecirc; cho chủ h&agrave;ng trong đ&oacute; nhưng th&aacute;ng n&agrave;o Hải cũng tằn  tiện gửi tiền về cho vợ nu&ocirc;i con. Qua bức thư viết tay, Thuyết mới thấy  chồng m&igrave;nh l&agrave;m ăn được nhưng t&iacute;nh kh&iacute; ng&agrave;y một thay đổi. L&aacute; thư n&agrave;o cũng  vậy, Hải kể đầu đu&ocirc;i mọi việc diễn ra trong th&aacute;ng nhưng cuối thư Hải  vẫn nhắc lại chuyện xưa: &ldquo;Gi&aacute; m&agrave; ch&uacute;ng ta sinh con trai đầu l&ograve;ng th&igrave; anh  phất l&ecirc;n m&acirc;y. Mấy đứa bạn anh trong n&agrave;y bảo anh phải c&oacute; con trai th&igrave;  c&aacute;c cụ mới ph&ugrave; hộ cho&rdquo;. Thuyết cũng thừa hiểu anh con trai n&agrave;o m&agrave; chả  th&iacute;ch con trai đầu l&ograve;ng. Nhưng đến l&aacute; thư thứ 8 th&igrave; Hải ghi đậm một c&acirc;u:  &ldquo;B&aacute;n con l&ecirc;n ch&ugrave;a đi em, nếu kh&ocirc;ng l&agrave; năm nay anh l&agrave;m ăn thất b&aacute;t đấy.  Ch&uacute;ng m&igrave;nh c&oacute; thể sinh nhiều đứa con kh&aacute;c m&agrave;&rdquo;. Cầm l&aacute; thư, Thuyết vội  v&agrave;ng&nbsp; gọi con đang chơi ngo&agrave;i s&acirc;n v&agrave;o nh&agrave; &ocirc;m kh&oacute;c nức nở. C&ocirc; chỉ n&oacute;i:  &ldquo;Đừng xa mẹ, con nh&eacute;&rdquo; l&agrave;m đứa b&eacute; kh&ocirc;ng hiểu, tưởng mẹ bị sao n&ecirc;n cũng  kh&oacute;c to&aacute;ng l&ecirc;n. Những l&aacute; thư sau kh&ocirc;ng thấy Thuyết bi&ecirc;n lại, Hải đ&acirc;m  nghi n&ecirc;n tức tốc về qu&ecirc; xem r&otilde; thực hư.</p>\r\n                <p style="text-align: justify;">Một cuộc c&atilde;i lộn giữa Thuyết v&agrave; Hải đ&atilde;  l&agrave;m inh ỏi cả x&oacute;m ngh&egrave;o. Trong cơn đỏ mặt, Hải c&agrave;ng cho thấy m&igrave;nh đ&atilde; qu&aacute;  tin lời c&aacute;c b&agrave; xem b&oacute;i tướng đường phố. Chỉ v&igrave; muốn gi&agrave;u sang m&agrave; b&aacute;n cả  đứa con của m&igrave;nh dứt ruột đẻ ra. Thuyết cắn răng chịu đựng nghe những  lời cay nghiệt được Hải xả thẳng v&agrave;o mặt vợ. Thuyết &ocirc;m con van lạy Hải.  B&agrave; con lối x&oacute;m can ngăn v&agrave; c&oacute; lời khuy&ecirc;n n&ecirc;n Hải cũng ngu&ocirc;i cơn giận.  Ngủ lại một đ&ecirc;m với gia đ&igrave;nh, h&ocirc;m sau Hải tức tốc v&agrave;o Nam để &ldquo;khỏi nh&igrave;n  thấy cảnh mẹ con m&agrave; mất lộc l&agrave;m ăn&rdquo;.</p>\r\n                <p style="text-align: justify;"><strong>&ldquo;Kh&ocirc;ng bao giờ đi con đường n&agrave;y  nữa&rdquo;</strong></p>\r\n                <p style="text-align: justify;">Hải tuy m&ecirc; t&iacute;n nhưng vẫn gửi tiền về nh&agrave;  cho vợ con, nhờ thế mẹ con Thuyết cũng đỡ đần phần n&agrave;o. Rồi đứa con  trai cũng ch&agrave;o đời. Hải mừng qu&yacute;nh v&igrave; giờ đ&acirc;y được nở m&agrave;y nở mặt với  h&agrave;ng x&oacute;m. Từ ấy, những trận đ&ograve;n &ldquo;khẩu ngữ&rdquo; của Hải cũng &iacute;t đi. Anh đ&atilde;  khen vợ biết sinh con trai.</p>\r\n                <p style="text-align: justify;">Một buổi chiều đương ngồi chơi với c&aacute;c  con, Thuyết ngẩng mặt l&ecirc;n th&igrave; trước mặt l&agrave; chồng m&igrave;nh. Anh kể rằng do đi  xem b&oacute;i năm nay được lộc l&agrave;m ăn n&ecirc;n Hải dồn hết vốn v&agrave;o mở qu&aacute;n l&agrave;m ăn  với một người bạn. Nhưng sau một thời gian thu gom một số tiền lớn, bạn  l&agrave;m ăn của Hải cao chạy xa bay để lại sau lưng c&aacute;i qu&aacute;n c&agrave; ph&ecirc; v&ocirc; chủ.  Thẫn thờ trước c&ocirc;ng sức bao năm chắt b&oacute;p giờ đội n&oacute;n ra đi. Hải như  người say trong cơn cuồng loạn. Ch&aacute;n đời, Hải lao v&agrave;o những cơn ch&egrave; ch&eacute;n  b&eacute;t nh&egrave; với bạn nhậu. Cứ mỗi lần say, Hải lại thượng cẳng ch&acirc;n, hạ cẳng  tay với Thuyết. Vẫn th&oacute;i quen ng&agrave;y n&agrave;o. Hải vẫn tục tĩu bổ v&agrave;o mặt vợ  những lời mắng nhiếc thậm tệ. Triền mi&ecirc;n suốt 2 th&aacute;ng trời sau ng&agrave;y bị  lừa một vố đau, Hải ng&agrave;y c&agrave;ng b&ecirc; tha hơn. Hải đ&ograve;i ly dị để sống độc th&acirc;n  theo như lời b&agrave; b&oacute;i. B&agrave; b&oacute;i cho biết Hải phải sống độc th&acirc;n nu&ocirc;i con  trai th&igrave; mới c&oacute; cơ may l&agrave;m ăn khấm kh&aacute;. Như dầu đổ th&ecirc;m v&agrave;o lửa m&ecirc; muội,  Hải viết đơn ly dị v&agrave; mặc cho Thuyết hết lời khuy&ecirc;n nhủ h&atilde;y thương lấy  hai đứa trẻ c&ograve;n đang tuổi ăn học. Giờ tan đ&agrave;n xẻ ngh&eacute; th&igrave; ch&uacute;ng sẽ thiếu  t&igrave;nh cảm dạy dỗ của cả bố lẫn mẹ.</p>\r\n                <p style="text-align: justify;">Trước quyết t&acirc;m của Hải, Thuyết đ&agrave;nh k&yacute;.  Cuộc t&igrave;nh 6 năm chung sống cũng đ&atilde; đến hồi kết th&uacute;c. Hải đuổi thẳng  Thuyết ra khỏi nh&agrave;: &ldquo;M&agrave;y về nh&agrave; mẹ đẻ m&agrave;y m&agrave; ăn, tao kh&ocirc;ng c&oacute; hơi nu&ocirc;i  m&agrave;y&rdquo;. Đứa con g&aacute;i th&igrave; theo mẹ, đứa con trai ở lại với bố. Thuyết c&ograve;n trẻ  lại nghĩ m&igrave;nh c&oacute; thể l&agrave;m nhiều việc n&ecirc;n c&ocirc; quyết định xuống H&agrave; Nội l&agrave;m  th&ecirc;m, con g&aacute;i để bố mẹ đẻ nu&ocirc;i. Ở chốn phồn hoa đ&ocirc; thị, thứ g&igrave; Thuyết  cũng lạ lẫm. Ng&agrave;y đầu xuống thủ đ&ocirc;, Thuyết bơ vơ hết ngồi vỉa h&egrave; lại ra  c&ocirc;ng vi&ecirc;n ngồi xem c&oacute; ai thu&ecirc; mướn g&igrave; th&igrave; l&agrave;m. Thuyết gia nhập đội qu&acirc;n  lao động ch&acirc;n tay. Việc g&igrave; c&ocirc; cũng l&agrave;m, cốt l&agrave; cho đủ hơn 20 ng&agrave;n/ng&agrave;y  đủ 2 bữa ăn gi&aacute; rẻ v&agrave; mua chỗ ngủ 5.000 đồng/đ&ecirc;m. Một h&ocirc;m, đương ngồi  đợi người thu&ecirc; l&agrave;m, Thuyết giật m&igrave;nh thon th&oacute;t bởi một c&aacute;i vỗ đ&aacute;nh đ&eacute;t  của ai đ&oacute;. Một b&agrave; trung tuổi m&aacute; phấn m&ocirc;i son đầy mặt rỉ v&agrave;o tai Thuyết:  &ldquo;Về nh&agrave; t&ocirc;i c&oacute; nhiều việc l&agrave;m đấy&rdquo;.</p>\r\n                <p style="text-align: justify;">Theo ch&acirc;n người đ&agrave;n b&agrave; lạ, Thuyết v&agrave;o  một căn nh&agrave; rộng r&atilde;i như một cung điện. B&agrave; ta đặt điều kiện muốn thu&ecirc;  Thuyết gi&uacute;p việc gia đ&igrave;nh với lương th&aacute;ng 1 triệu đồng, ăn ngủ tại nh&agrave;  chủ lu&ocirc;n. Đương l&uacute;c vất vơ giữa chốn đất kh&aacute;ch qu&ecirc; người, Thuyết vội  v&agrave;ng đồng &yacute; m&agrave; kh&ocirc;ng hề y&ecirc;u cầu g&igrave;. Những ng&agrave;y đầu, Thuyết chăm chỉ dậy  sớm nấu ăn s&aacute;ng cho cả nh&agrave; rồi l&agrave;m những việc của một &ocirc;sin. 2 th&aacute;ng đầu,  c&ocirc; gửi 1 triệu về cho bố mẹ để nu&ocirc;i con ăn học. B&agrave; chủ cũng c&oacute; vẻ qu&yacute;  Thuyết v&agrave; hứa hẹn sẽ t&igrave;m tấm chồng kh&iacute;t đ&ocirc;i vừa lứa cho Thuyết. C&ocirc; c&agrave;ng  chăm chỉ gi&uacute;p việc nh&agrave; hơn, chưa c&oacute; ai tốt với Thuyết như b&agrave; chủ. Một  h&ocirc;m, b&agrave; gọi Thuyết l&ecirc;n ph&ograve;ng kh&aacute;ch đang tập trung nhiều người, tr&ecirc;n b&agrave;n  b&agrave;y la liệt tiền, v&agrave;ng, đ&ocirc; la. B&agrave; chủ qu&aacute;t: &ldquo;Thuyết! M&agrave;y c&oacute; lấy c&aacute;i nhẫn  kim cương của tao kh&ocirc;ng? Tao cất trong c&aacute;i hộp n&agrave;y, h&ocirc;m qua lấy ra nh&acirc;n  kỷ niệm 20 năm ng&agrave;y cưới nhưng chẳng thấy, m&agrave;y kh&ocirc;ng lấy th&igrave; ai lấy v&agrave;o  đ&acirc;y nữa?&rdquo;.</p>\r\n                <p style="text-align: justify;">Thuyết n&oacute;i kh&ocirc;ng lấy nhưng trước sức &eacute;p  v&agrave; điệu cười th&eacute;t ra lửa của b&agrave;, Thuyết đ&agrave;nh nghe theo y&ecirc;u cầu của b&agrave;.  Nếu c&ocirc; kh&ocirc;ng chịu nhận đ&atilde; lấy kim cương th&igrave; b&agrave; sẽ gửi giấy về địa phương  loan tin rằng Thuyết đi ở ăn trộm đồ của nh&agrave; chủ. &ldquo;Hổ chết để da, người  chết để tiếng&rdquo;, c&ocirc; kh&ocirc;ng muốn m&igrave;nh &ocirc; nhục bởi th&oacute;i hư đ&oacute;. Thuyết nhắm  mắt k&yacute; bi&ecirc;n nhận &ldquo;đ&atilde; vay&rdquo; của b&agrave; chủ 20 triệu đồng, l&agrave;m kh&ocirc;ng c&ocirc;ng trong  v&ograve;ng 2 năm cho nh&agrave; chủ mới được về qu&ecirc;.</p>\r\n                <p style="text-align: justify;">Đ&oacute; chỉ l&agrave; cớ để b&agrave; đưa Thuyết v&agrave;o v&ograve;ng  xo&aacute;y của thế giới b&aacute;n hoa m&agrave; b&agrave; đang l&agrave;m chủ. Trong suốt nhiều năm ở nh&agrave;  b&agrave;, Thuyết kh&ocirc;ng hề biết b&agrave; chủ l&agrave;m nghề g&igrave;, chỉ biết b&agrave; l&agrave; chủ một  chuỗi c&aacute;c nh&agrave; h&agrave;ng ăn uống. Sau một thời gian đủ để Thuyết qu&ecirc;n dần vụ  &ldquo;đổi trắng thay đen&rdquo;, b&agrave; ta đ&atilde; n&oacute;i thật với Thuyết đang cần g&aacute;i cho  chuỗi nh&agrave; h&agrave;ng tr&aacute; h&igrave;nh của m&igrave;nh. Những năm trước, biết Thuyết đang cần  việc n&ecirc;n b&agrave; vẫn &ldquo;om&rdquo; phục vụ việc nh&agrave; sau đ&oacute; sẽ &ldquo;d&ugrave;ng dần&rdquo;. Đ&atilde; bao th&aacute;ng  nay, Thuyết ong đầu v&igrave; khoản nợ v&ocirc; h&igrave;nh kia n&ecirc;n c&ocirc; nhắm mắt nghe theo  lời dỗ ngon dỗ ngọt của b&agrave; chủ.</p>\r\n                <p style="text-align: justify;">L&agrave;m được &iacute;t tuần th&igrave; c&aacute;i động &ldquo;xay thịt&rdquo;  của b&agrave; chủ Thuyết bị c&ocirc;ng an triệt ph&aacute;. Thuyết c&ugrave;ng hơn chục c&ocirc; g&aacute;i  được đưa v&agrave;o Trung t&acirc;m Gi&aacute;o dục lao động Y&ecirc;n B&agrave;i. Tại đ&acirc;y, thế giới ho&agrave;n  lương đang mở ra trước mắt Thuyết. Nhưng nỗi khốn c&ugrave;ng về người chồng  m&ecirc; mẩn những thần th&aacute;nh c&otilde;i &acirc;m đ&atilde; l&agrave;m tan n&aacute;t một gia đ&igrave;nh khiến Thuyết  kh&ocirc;ng thể vượt qua. V&agrave; đ&ecirc;m đ&ecirc;m, trong b&oacute;ng tối lờ mờ, thỉnh thoảng  Thuyết vẫn bị &aacute;m ảnh bởi những c&acirc;u chuyện ma m&atilde;nh của chồng m&igrave;nh. Những  giọt nước mắt đ&atilde; tu&ocirc;n rơi nhiều tr&ecirc;n gối v&agrave; c&ograve;n rất l&acirc;u nữa t&acirc;m hồn  Thuyết mới được y&ecirc;n b&igrave;nh như ng&agrave;y c&ograve;n son sắt tuổi xu&acirc;n.</p>\r\n                </div>\r\n                <!-- qc ngu canh 1900 --> 										<!-- qc ngu canh 1900 -->\r\n                <div class="nguontin">24H.COM.VN (Theo Cảnh s&aacute;t to&agrave;n cầu)</div>\r\n                </td>\r\n            </tr>\r\n        </tr>\r\n    </tbody>\r\n</table>', '', 'images/content/news_s199.jpg', NULL, 0, 0, '2010-04-20 17:50:36', '2010-04-20 17:50:36', 'vn', 0),
(200, 'http://4teenbp.com', 'Teen Bình Phước', 25, '', '', '', 'images/content/advright_s200.jpg', NULL, 0, 0, '2010-04-20 20:28:11', '2010-04-20 20:28:11', 'vn', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_content_category`
--

CREATE TABLE IF NOT EXISTS `tbl_content_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=91 ;

--
-- Dumping data for table `tbl_content_category`
--

INSERT INTO `tbl_content_category` (`id`, `code`, `name`, `parent`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `lang`) VALUES
(1, '', 'Danh mục gốc', 0, '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', '2009-11-16 16:55:27', ''),
(8, 'vn_news', 'Tin tức - Sự kiện', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(9, 'vn_service', 'Dịch vụ', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2008-04-30 00:45:54', 'vn'),
(10, 'vn_link', 'Liên kết', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2008-04-30 00:45:43', 'vn'),
(11, 'vn_yahoo', 'Hỗ trợ trực tuyến(yahoo)', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2008-06-02 11:24:28', 'vn'),
(3, 'en', 'English', 1, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(2, 'vn', 'Việt Nam', 1, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(75, 'en_advbottom', 'Bottom advertise', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(76, 'vn_consulting', 'Tư vấn', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(77, 'en_consulting', 'Consulting', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(24, 'vn_advleft', 'Quảng cáo', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(25, 'vn_advright', 'Quảng cáo', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(28, 'vn_intro', 'Giới thiệu', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(30, 'vn_contact', 'Liên hệ', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(74, 'vn_advbottom', 'Quảng cáo', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(78, 'vn_employment', 'Tuyển dụng', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(79, 'en_employment', 'Employment', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(80, 'en_news', 'News & Event', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(81, 'en_service', 'Service', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(82, 'en_yahoo', 'Support online(Yahoo)', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(83, 'vn_skype', 'Hỗ trợ tực tuyến(Skype)', 2, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'vn'),
(84, 'en_skype', 'Support online(Skype)', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(85, 'en_advleft', 'Left Advertise', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(86, 'en_advright', 'Right Advertise', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(87, 'en_contact', 'Contact', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(88, 'en_intro', 'Introduction', 3, '', '', '', '', '', 0, 0, '2009-11-16 16:55:27', '2009-11-16 16:55:27', 'en'),
(89, 'vn_banner', 'Quản lí', 2, '', '', '', '', '', 0, 0, '2009-12-16 00:00:00', '2009-12-16 00:00:00', 'vn'),
(90, 'en_banner', 'Management banner', 3, '', '', '', '', '', 0, 0, '2009-12-16 00:00:00', '2009-12-16 00:00:00', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inchsize`
--

CREATE TABLE IF NOT EXISTS `tbl_inchsize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inchsize` varchar(255) NOT NULL,
  `sort` int(5) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `lang` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_inchsize`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacturer`
--

CREATE TABLE IF NOT EXISTS `tbl_manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(255) DEFAULT NULL,
  `sort` int(5) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `lang` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tbl_manufacturer`
--


-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE IF NOT EXISTS `tbl_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sex` int(3) DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`id`, `name`, `sex`, `company`, `address`, `city`, `country`, `tel`, `fax`, `email`, `website`, `uid`, `pwd`, `status`, `date_added`, `last_modified`) VALUES
(13, 'Giáp Văn Cường', 0, 'học sinh', 'biên hoà- đồng nai', 'biên hoà', 'Vietnam', '0985555903', '', 'gem.cuong@yahoo.com', '', 'gcuong', 'gamemini', 0, '2010-04-21 00:42:56', '2010-04-21 00:42:56'),
(11, 'Nguyễn Kim Kiên', 0, '', 'Đồng Xoài', 'Bình Phước', 'Vietnam', '0973411483', '', 'nguyenkimkien@gmail.com', '', 'kien', '870924', 0, '2010-04-20 17:39:59', '2010-04-21 01:04:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `member_id` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `code`, `member_id`, `date_added`, `last_modified`) VALUES
(32, '0', 13, '2010-04-21 00:43:20', '0000-00-00 00:00:00'),
(31, '0', 11, '2010-04-20 20:48:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`, `status`) VALUES
(15, 20, 29, 20, 0, 0),
(16, 21, 27, 5, 0, 0),
(17, 21, 31, 6, 0, 0),
(18, 21, 29, 7, 0, 0),
(19, 22, 29, 30, 0, 0),
(20, 22, 32, 20, 0, 0),
(21, 22, 28, 10, 0, 0),
(22, 23, 28, 1, 0, 0),
(23, 23, 27, 1, 0, 0),
(24, 23, 29, 1, 0, 0),
(25, 24, 125, 1, 0, 0),
(26, 25, 127, 5, 0, 0),
(27, 26, 127, 5, 0, 0),
(28, 26, 150, 1, 0, 0),
(29, 27, 152, 10, 0, 0),
(30, 28, 152, 10, 100, 0),
(31, 28, 153, 4, 150, 0),
(32, 29, 185, 1, 1.65e+007, 0),
(33, 30, 208, 1, 80000, 0),
(34, 31, 209, 1, 250000, 0),
(35, 32, 210, 1, 3.59e+006, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `inchsize` int(5) DEFAULT NULL,
  `manufacturer` int(5) DEFAULT NULL,
  `subject` double DEFAULT '0',
  `detail_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price` double DEFAULT '0',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=211 ;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `code`, `name`, `parent`, `inchsize`, `manufacturer`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `price`, `lang`) VALUES
(209, '', 'Loa SU-21', 164, -1, -1, 0, 'Chức năng :<strong style="color: rgb(255, 0, 0);"><span id="lblFileName"><br />\r\n</span></strong>\r\n<ol>\r\n    <li>C&oacute; m&agrave;n h&igrave;nh  </li>\r\n    <li> Loa ngo&agrave;i d&ugrave;ng cho c&aacute;c m&aacute;y nghe nhạc MP3, MP4,  laptop, DISCMAN, M&aacute;y điện thoại c&oacute; ch&acirc;n cắm tai nghe 3.5mm...  </li>\r\n    <li> Cho &acirc;m thanh to v&agrave; r&otilde; r&agrave;ng </li>\r\n    <li> Nghe nhạc ri&ecirc;ng tư, mang theo  khi đi d&atilde; ngoại... </li>\r\n    <li>C&oacute; n&uacute;m vặn Volume  </li>\r\n    <li>Bắt s&oacute;ng FM  Kiểu d&aacute;ng thời trang</li>\r\n    <li>Phụ kiện : c&aacute;p sạc, giắc kết nối, ch&acirc;n phụ  2.5mm , c&aacute;p điện thoại .v.v.v.</li>\r\n    <li>C&ocirc;ng suất 6W</li>\r\n    <li>Dải tần&nbsp;  150-18000HZ</li>\r\n</ol>\r\nNguồn v&agrave;o 5.0V, pin sạc <br />\r\nBảo h&agrave;nh 1 th&aacute;ng<br />\r\n<br />\r\n<br />\r\n<font size="3">Hướng dẫn sử dụng </font><br />\r\n<div align="left"> <font color="black"><font size="2">- Sử dụng sạc nokia ch&acirc;n nhỏ</font></font><br />\r\n<font size="3"><font color="black">- <font size="2">Kh&aacute;ch h&agrave;ng c&oacute; thể  sạc</font> </font></font>qua m&aacute;y t&iacute;nh , qua điện 220V th&ocirc;ng wa sạc của  Mp3, Mp4<br />\r\n<font size="2"><font color="black">- Thời gian sạc Loa l&agrave; từ 3h &ndash; 5h</font></font></div>\r\n<p><br />\r\n<u><font size="3"><font color="black">Ch&uacute; &yacute; :</font></font></u><br />\r\n<font size="2"><font color="black">- Kh&ocirc;ng n&ecirc;n sử dụng Loa trong l&uacute;c sạc  Loa ( Chai Pin )</font></font><br />\r\n<font size="2"><font color="black">- Kh&ocirc;ng n&ecirc;n sạc Loa qua đ&ecirc;m hoặc sạc  Loa qu&aacute; 5h</font></font> </p>\r\n- H&atilde;y sạc loa đ&uacute;ng c&aacute;ch để bảo vệ loa v&agrave; ch&iacute;nh m&igrave;nh', '', 'images/product/product_s209.jpg', 'images/product/product_l209.jpg', 0, 0, '2010-04-20 19:31:05', '2010-04-21 02:08:30', 250000, 'vn'),
(210, '', 'TV Samsung CS-29A751', 162, -1, -1, 0, '<div id="tab-1" class="ui-tabs-panel" style="display: block;"><font size="3"><u><strong>T&iacute;nh năng:</strong></u></font><br />\r\n<ul class="pulist">\r\n    <li class="plist">M&agrave;n h&igrave;nh si&ecirc;u phẳng mỏng 29&quot; SlimFit </li>\r\n    <li class="plist">Kiểu d&aacute;ng TV LCD</li>\r\n    <li class="plist">C&ocirc;ng nghệ DNIe&trade;: DNIe Jr </li>\r\n    <li class="plist">Giảm nhiễu kỹ thuật số</li>\r\n    <li class="plist">Hiệu ứng &acirc;m thanh turbo plus</li>\r\n    <li class="plist">C&ocirc;ng suất loa 2 x 10W</li>\r\n    <li class="plist">Ng&otilde; kết nối AV, Component(Y/Pb/Pr)</li>\r\n    <li class="plist">Trọng lượng: 22kg&nbsp; </li>\r\n    <li class="plist">Xuất xứ: H&agrave;n Quốc</li>\r\n    <li class="plist">Lắp r&aacute;p: Việt Nam</li>\r\n    <li class="plist">Bảo h&agrave;nh 24 th&aacute;ng</li>\r\n</ul>\r\n</div>', '', 'images/product/product_s210.jpg', 'images/product/product_l210.jpg', 0, 0, '2010-04-20 20:43:59', '2010-04-20 20:43:59', 3590000, 'vn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

CREATE TABLE IF NOT EXISTS `tbl_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=167 ;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`id`, `code`, `name`, `parent`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `lang`) VALUES
(1, '', 'Danh mục gốc', 0, '', '', '', '', '', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(2, 'vn', 'Việt Nam', 1, '', '', '', '', '', 0, 0, '2008-03-24 08:36:30', '2008-03-27 10:29:34', 'vn'),
(160, '', 'Tủ Lạnh', 2, '', '', '', NULL, NULL, 1, 0, '2010-04-20 15:49:53', '2010-04-20 15:49:53', 'vn'),
(161, '', 'Máy Giặt', 2, '', '', '', NULL, NULL, 2, 0, '2010-04-20 15:50:13', '2010-04-20 15:50:13', 'vn'),
(125, 'en', 'English', 1, '', '', '', '', '', 0, 0, '2009-11-16 09:56:08', '2009-11-16 09:56:08', 'en'),
(162, '', 'Ti Vi', 2, '', '', '', NULL, NULL, 3, 0, '2010-04-20 15:50:26', '2010-04-20 15:50:26', 'vn'),
(163, '', 'Đầu Máy', 2, '', '', '', NULL, NULL, 4, 0, '2010-04-20 15:50:52', '2010-04-20 15:50:52', 'vn'),
(164, '', 'Loa', 2, '', '', '', NULL, NULL, 5, 0, '2010-04-20 15:51:02', '2010-04-20 15:51:02', 'vn'),
(166, '', 'USB', 2, '', '', '', NULL, NULL, 6, 0, '2010-04-20 15:51:47', '2011-02-17 23:00:19', 'vn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_new`
--

CREATE TABLE IF NOT EXISTS `tbl_product_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `tbl_product_new`
--

INSERT INTO `tbl_product_new` (`id`, `product_id`, `sort`, `status`, `date_added`, `last_modified`, `lang`) VALUES
(40, 210, 0, 0, '2010-04-21 02:06:35', '2010-04-21 02:06:35', 'vn'),
(38, 209, 0, 0, '2010-04-20 20:16:35', '2010-04-20 20:16:35', 'vn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_special`
--

CREATE TABLE IF NOT EXISTS `tbl_product_special` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `tbl_product_special`
--

INSERT INTO `tbl_product_special` (`id`, `product_id`, `sort`, `status`, `date_added`, `last_modified`, `lang`) VALUES
(56, 209, 0, 0, '2010-04-21 00:47:15', '2011-02-17 23:12:46', 'vn'),
(55, 210, 0, 0, '2010-04-21 00:47:15', '2010-04-21 00:47:15', 'vn');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `uid`, `pwd`) VALUES
(1, 'admin', '495f49ba4108685bc49dd46c983990e3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_visitor`
--

CREATE TABLE IF NOT EXISTS `tbl_visitor` (
  `session_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `activity` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member` enum('y','n') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'n',
  `ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_visitor`
--

INSERT INTO `tbl_visitor` (`session_id`, `activity`, `member`, `ip_address`, `url`, `user_agent`) VALUES
('24o98b11ku1lgbrddb28j2orn6', '2011-02-18 08:54:57', 'n', '127.0.0.1', '', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13');
