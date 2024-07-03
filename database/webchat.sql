-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 03 2024 г., 21:27
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `webchat`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contacts39`
--

CREATE TABLE `contacts39` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `contacts39`
--

INSERT INTO `contacts39` (`user_id`, `name`, `email`) VALUES
(48, 'marat', 'marat@gmail.com'),
(40, 'panama1', 'panama1@gmail.com'),
(43, 'panama4', 'panama4@gmail.com'),
(44, 'panama5', 'panama5@gmail.com'),
(39, 'panama', 'panama@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts40`
--

CREATE TABLE `contacts40` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `contacts40`
--

INSERT INTO `contacts40` (`user_id`, `name`, `email`) VALUES
(40, 'panama1', 'panama1@gmail.com'),
(41, 'panama2', 'panama2@gmail.com'),
(42, 'panama3', 'panama3@gmail.com'),
(43, 'panama4', 'panama4@gmail.com'),
(44, 'panama5', 'panama5@gmail.com'),
(45, 'panama6', 'panama6@gmail.com'),
(39, 'panama', 'panama@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts41`
--

CREATE TABLE `contacts41` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `contacts41`
--

INSERT INTO `contacts41` (`user_id`, `name`, `email`) VALUES
(40, 'panama1', 'panama1@gmail.com'),
(41, 'panama2', 'panama2@gmail.com'),
(39, 'panama', 'panama@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts42`
--

CREATE TABLE `contacts42` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `contacts42`
--

INSERT INTO `contacts42` (`user_id`, `name`, `email`) VALUES
(40, 'panama1', 'panama1@gmail.com'),
(41, 'panama2', 'panama2@gmail.com'),
(39, 'panama', 'panama@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts43`
--

CREATE TABLE `contacts43` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `contacts43`
--

INSERT INTO `contacts43` (`user_id`, `name`, `email`) VALUES
(43, 'panama4', 'panama4@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts44`
--

CREATE TABLE `contacts44` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts45`
--

CREATE TABLE `contacts45` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `contacts45`
--

INSERT INTO `contacts45` (`user_id`, `name`, `email`) VALUES
(46, 'panama7', 'panama7@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts46`
--

CREATE TABLE `contacts46` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `contacts46`
--

INSERT INTO `contacts46` (`user_id`, `name`, `email`) VALUES
(45, 'panama6', 'panama6@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts47`
--

CREATE TABLE `contacts47` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `contacts48`
--

CREATE TABLE `contacts48` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `contacts48`
--

INSERT INTO `contacts48` (`user_id`, `name`, `email`) VALUES
(39, 'panama', 'panama@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `group_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `group_name`) VALUES
(14, '1111'),
(15, '2222'),
(16, 'group');

-- --------------------------------------------------------

--
-- Структура таблицы `group_contacts`
--

CREATE TABLE `group_contacts` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `group_contacts`
--

INSERT INTO `group_contacts` (`user_id`, `name`, `email`, `group_id`, `group_name`) VALUES
(39, 'panama', 'panama@gmail.com', 14, '1111'),
(40, 'panama1', 'panama1@gmail.com', 14, '1111'),
(43, 'panama4', 'panama4@gmail.com', 15, '2222'),
(42, 'panama3', 'panama3@gmail.com', 14, '1111'),
(48, 'marat', 'marat@gmail.com', 16, 'group'),
(39, 'panama', 'panama@gmail.com', 16, 'group'),
(43, 'panama4', 'panama4@gmail.com', 14, '1111'),
(44, 'panama5', 'panama5@gmail.com', 14, '1111'),
(45, 'panama6', 'panama6@gmail.com', 14, '1111');

-- --------------------------------------------------------

--
-- Структура таблицы `group_message`
--

CREATE TABLE `group_message` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` varchar(50) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp(),
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `group_message`
--

INSERT INTO `group_message` (`user_id`, `name`, `message`, `datetime`, `group_id`) VALUES
(39, 'panama', 'привет', '2024-05-12 23:12:08', 14),
(40, 'panama1', 'привет', '2024-05-12 23:24:29', 14),
(39, 'panama', '1111', '2024-05-12 23:25:15', 14),
(42, 'panama3', 'привет', '2024-05-13 15:46:51', 14),
(39, 'panama', 'привет', '2024-06-11 20:47:09', 14),
(39, 'panama', 'привет', '2024-06-11 20:47:19', 14);

-- --------------------------------------------------------

--
-- Структура таблицы `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `from_name` varchar(255) NOT NULL,
  `for_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `message`
--

INSERT INTO `message` (`id`, `from_id`, `from_name`, `for_id`, `message`, `datetime`) VALUES
(18, 39, 'panama', 40, 'привет', '2024-05-11 20:40:42'),
(19, 40, 'panama1', 39, 'И тебе', '2024-05-11 20:41:07'),
(21, 39, 'panama', 40, 'Следующие CSS свойства позволяют контролировать переполнение текста:', '2024-05-11 20:47:59'),
(26, 39, 'panama', 40, 'как дела?', '2024-06-06 13:36:11'),
(27, 40, 'panama1', 39, 'нормально', '2024-06-06 13:37:43'),
(28, 39, 'panama', 40, 'test', '2024-06-06 13:44:14'),
(29, 40, 'panama1', 39, 'добрый вечер', '2024-06-11 19:18:47'),
(30, 39, 'panama', 40, 'добрый', '2024-06-11 19:19:06');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `avatar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`) VALUES
(39, 'panama', 'panama@gmail.com', '12345', '39.jpeg'),
(40, 'panama1', 'panama1@gmail.com', '12345', '40.jpeg'),
(41, 'panama2', 'panama2@gmail.com', '12345', 'default-avatar.jpg'),
(42, 'panama3', 'panama3@gmail.com', '12345', 'default-avatar.jpg'),
(43, 'panama4', 'panama4@gmail.com', '12345', 'default-avatar.jpg'),
(44, 'panama5', 'panama5@gmail.com', '12345', 'default-avatar.jpg'),
(45, 'panama6', 'panama6@gmail.com', '12345', 'default-avatar.jpg'),
(46, 'panama7', 'panama7@gmail.com', '12345', 'default-avatar.jpg'),
(47, 'ivan', 'Ivan@gmail.com', '12345', 'default-avatar.jpg'),
(48, 'marat', 'marat@gmail.com', '12345', '48.jpeg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contacts39`
--
ALTER TABLE `contacts39`
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `contacts40`
--
ALTER TABLE `contacts40`
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `contacts41`
--
ALTER TABLE `contacts41`
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `contacts42`
--
ALTER TABLE `contacts42`
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `contacts43`
--
ALTER TABLE `contacts43`
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `contacts44`
--
ALTER TABLE `contacts44`
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `contacts45`
--
ALTER TABLE `contacts45`
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `contacts46`
--
ALTER TABLE `contacts46`
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `contacts47`
--
ALTER TABLE `contacts47`
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `contacts48`
--
ALTER TABLE `contacts48`
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_name` (`group_name`),
  ADD KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Индексы таблицы `group_contacts`
--
ALTER TABLE `group_contacts`
  ADD KEY `group_id` (`group_id`);

--
-- Индексы таблицы `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
