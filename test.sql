-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-09-01 09:37:33
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `test`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `questions`
--

CREATE TABLE `questions` (
  `question_number` int(11) DEFAULT NULL,
  `question_text` varchar(255) DEFAULT NULL,
  `correct_answer` varchar(255) DEFAULT NULL,
  `option_a` varchar(255) DEFAULT NULL,
  `option_b` varchar(255) DEFAULT NULL,
  `option_c` varchar(255) DEFAULT NULL,
  `option_d` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `questions`
--

INSERT INTO `questions` (`question_number`, `question_text`, `correct_answer`, `option_a`, `option_b`, `option_c`, `option_d`) VALUES
(1, 'お酢に卵を殻ごといれると卵はどうなるでしょう?', '正解A', '透明な卵になる', '鏡のようになんでもうつる卵になる', '卵が溶けてなくなる', '卵が石のように堅くなる'),
(2, 'しゃっくりはある調味料をなめると止まります。ある調味料とはなんでしょう?', '正解B', 'お酢', '砂糖', '醤油', '塩'),
(3, '甘くて美味しい羊羹ですが、羊羹はもともとあるものを煮込んだスープのことでした。あるスープとはなんでしょう?', '正解C', '牛の血', '牛乳', '羊の肉', '馬の肉'),
(4, 'おぼうさんが木魚をたたく意味はなんでしょう?', '正解C', 'お経にリズムをつけるため', '亡くなった人が天国にいけるようにと祈るため', '眠くならないようにするため', '悪い霊を寄せ付けないため'),
(5, '白くまの肌の色は何色でしょう?', '正解D', '透明', '白', '肌色', '黒'),
(6, '氷が長持ちする作り方はなんでしょう?', '正解B', '塩をいれた水で氷を作る', '沸騰したお湯をいれて氷を作る', '砂糖をいれた水で氷を作る', 'お酢をいれた水で氷りを作る'),
(7, '有名な作曲家「ベートーベン」の癖はなんだったでしょう?', '正解C', '目をパチパチさせる', '爪をかじる', '念入りに手を洗う', 'くしゃみをしたあとに「大魔王」という'),
(8, 'ドジョウは人間と同じようにあることをします。あることとはどれでしょう?', '正解B', 'あくび', 'おなら', 'まばたき', 'くしゃみ'),
(9, '豚のくるくる巻いてあるしっぽが、あるときは伸びてまっすぐになります。あるときとは、いつでしょう?', '正解C', '走っている時', 'ご飯を食べている時', '眠っている時', 'おしっこをしている時'),
(10, '植物にも人間と同じようにあるものがあります。あるものとはなんでしょう?', '正解A', '血液型', '脳みそ', '心臓', '髪の毛');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
