-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 6 月 03 日 19:41
-- サーバのバージョン： 10.4.19-MariaDB
-- PHP のバージョン: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacf_L05_15`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `kadai_php`
--

CREATE TABLE `kadai_php` (
  `id` int(12) NOT NULL,
  `name1` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `icon` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `kadai_php`
--

INSERT INTO `kadai_php` (`id`, `name1`, `level`, `created_at`, `updated_at`, `icon`) VALUES
(1, '石橋', 1, '2021-06-03 12:01:59', '2021-06-03 12:01:59', ''),
(2, '吉田', 1, '2021-06-03 12:05:27', '2021-06-03 12:05:27', ''),
(3, '山田', 1, '2021-06-03 15:55:42', '2021-06-03 15:55:42', ''),
(4, '岡田', 1, '2021-06-03 17:28:49', '2021-06-03 17:28:49', ''),
(5, '岡田', 1, '2021-06-03 17:36:22', '2021-06-03 17:36:22', ''),
(6, '岡田', 1, '2021-06-03 17:45:11', '2021-06-03 17:45:11', ''),
(7, '岡田', 1, '2021-06-03 18:02:15', '2021-06-03 18:02:15', 0x4e554c4c),
(8, '中西', 1, '2021-06-03 18:09:32', '2021-06-03 18:09:32', 0x4e554c4c),
(9, '大木', 1, '2021-06-03 23:02:48', '2021-06-03 23:02:48', 0x4e554c4c),
(10, '増田', 1, '2021-06-03 23:50:21', '2021-06-03 23:50:21', 0x4e554c4c),
(11, '横山', 1, '2021-06-04 01:25:30', '2021-06-04 01:25:30', 0x4e554c4c),
(12, '福岡', 1, '2021-06-04 02:25:47', '2021-06-04 02:25:47', 0x4e554c4c);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `kadai_php`
--
ALTER TABLE `kadai_php`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `kadai_php`
--
ALTER TABLE `kadai_php`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
