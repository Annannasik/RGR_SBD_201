-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 24 2021 г., 08:55
-- Версия сервера: 10.4.22-MariaDB
-- Версия PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cinema`
--

-- --------------------------------------------------------

--
-- Структура таблицы `film`
--

CREATE TABLE `film` (
  `film_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `rating` double NOT NULL,
  `description` text NOT NULL,
  `starring` text NOT NULL,
  `year` varchar(5) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `film`
--

INSERT INTO `film` (`film_id`, `name`, `rating`, `description`, `starring`, `year`, `image`) VALUES
(1, 'Котаник', 9.9, 'драма', 'Леонардо ДиКетрио,Кэт Уинслет,Кэти Бейтс', '1997', 'https://bugaga.ru/uploads/posts/2019-09/thumbs/1569315688_kotiki-v-kino-1.jpg'),
(2, 'Крёстный котец', 9.8, 'криминал', 'Мурлон Брандо, Аль Котино, Джеймс Катан, Ричард С. Кателлано, Дайан Котон', '1972', 'https://bugaga.ru/uploads/posts/2019-09/thumbs/1569315669_kotiki-v-kino-5.jpg'),
(3, 'Мурчание котят', 9.7, 'детектив', 'Энтони Коткинс, Котт Гленн, Кетси Леммонс, Чарльз КэТьер', '1991', 'https://bugaga.ru/uploads/posts/2019-09/thumbs/1569315685_kotiki-v-kino-6.jpg'),
(4, 'Кэтмен', 9.6, 'фантастика', 'Майкл Кітон, Джек Никотсон, Кіт Бейсингер, Кэт Хингл,', '1989', 'https://bugaga.ru/uploads/posts/2019-09/thumbs/1569315686_kotiki-v-kino-8.jpg'),
(5, 'Властелин лотков', 9.5, 'фентези', 'Китстофер Гард, Уильям Муар, Майкл Скоулс, Джон Хёрт, Саймон Чэндлер, Майкл Грэм Котс, ', '1978', 'https://bugaga.ru/uploads/posts/2019-09/thumbs/1569315738_kotiki-v-kino-4.jpg'),
(6, 'Матрица', 9.4, 'фантастика', 'Котану Ривз, Муренс Фишбёрн, Глория Котстер, Джо Коттольяно, Муркус Чонг', '1999', 'https://bugaga.ru/uploads/posts/2019-09/thumbs/1569315734_kotiki-v-kino-3.jpg'),
(7, 'Звездные войны', 9.3, 'фантастика', 'Марк Кэтмилл, Кэтти Фишер, Билли Ди Кэтильямс, Дэвид Праус, Китер Мейхью, Кенни Бейкер', '1980', 'https://bugaga.ru/uploads/posts/2019-09/thumbs/1569315715_kotiki-v-kino-7.jpg'),
(8, '300 кусей', 8.2, 'боевик', 'Джерард Котлер, Майкл Фассбендер, Китсент Риган, Дэвид Унямням, Доминик Уэст, Том Уисдом', '2006', 'https://bugaga.ru/uploads/posts/2019-09/thumbs/1569315751_kotiki-v-kino-2.jpg'),
(9, 'Котцовский клуб', 9, 'драма', 'Эдвард Коттон, Брэд Китт, Мурена Бонем Котер, Мит Лоаф, Зэк Гренье', '1999', 'https://sun9-7.userapi.com/impg/-X9uR4ZFxh86_JDOT0J0JYf4T9ZtJH_0tEMpZw/75Owxxfx6JE.jpg?size=500x668&quality=96&sign=7114c555a20158e61906945ba9f30346&type=album'),
(10, 'Гарфилд', 9.1, 'комедия', 'Брекин Мейер, Дженнифер Лав Хьюитт, Стивен Тоболовски, Билл Мюррей, Ивэн Арнольд', '2004', 'https://www.hdclub.ua/files/film/big/bigi4c1e6f71b6e0b.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `roleuser`
--

CREATE TABLE `roleuser` (
  `role_id` int(11) UNSIGNED NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `roleuser`
--

INSERT INTO `roleuser` (`role_id`, `role`) VALUES
(0, 'user'),
(1, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `usertbl`
--

CREATE TABLE `usertbl` (
  `id` int(11) NOT NULL,
  `roleID` int(11) UNSIGNED NOT NULL,
  `full_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `usertbl`
--

INSERT INTO `usertbl` (`id`, `roleID`, `full_name`, `email`, `username`, `password`) VALUES
(1, 1, 'Анна Степанець', 'annstepanets3105@gmail.com', 'admin', '123'),
(2, 0, 'Анна Степанець', 'annstepanets3105@gmail.com', 'user', '123'),
(11, 0, 'Анна Степанець', 'annstepanets3105@gmail.com', 'test', '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`);

--
-- Индексы таблицы `roleuser`
--
ALTER TABLE `roleuser`
  ADD PRIMARY KEY (`role_id`);

--
-- Индексы таблицы `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `film`
--
ALTER TABLE `film`
  MODIFY `film_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT для таблицы `roleuser`
--
ALTER TABLE `roleuser`
  MODIFY `role_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
