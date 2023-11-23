-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 23 2023 г., 11:59
-- Версия сервера: 8.0.35
-- Версия PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `basic`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent` int NOT NULL,
  `number` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent`, `number`) VALUES
(1, 'Rock', 0, 1),
(2, 'Pop', 0, 2),
(3, 'Classic', 0, 3),
(5, 'Metal', 1, 1),
(6, 'Alternative', 1, 2),
(7, 'Post', 1, 3),
(8, 'Nu-metal', 5, 1),
(9, 'Black Metal', 5, 2),
(10, 'Death Melal', 5, 3),
(11, 'Core', 5, 4),
(12, 'Deathcore', 11, 1),
(13, 'Metalcore', 11, 2),
(14, 'Grindcore', 11, 2),
(15, 'Post-hardcore', 11, 3),
(16, 'Synth-pop', 2, 1),
(17, 'K-pop', 2, 2),
(18, 'Gunship', 16, 1),
(19, 'Lorna Shore', 12, 1),
(20, 'Melodic Death Metal', 10, 1),
(21, 'In Flames', 20, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
