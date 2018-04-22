-- phpMyAdmin SQL Dump
-- version 4.8.0-dev
-- https://www.phpmyadmin.net/
--
-- Хост: 192.168.30.23
-- Время создания: Окт 23 2017 г., 15:51
-- Версия сервера: 8.0.2-dmr
-- Версия PHP: 7.0.19-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Cakeland`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Abonent`
--

CREATE TABLE `Cake` (
  `id` int(2) NOT NULL COMMENT 'ид пироженки',
  `name` varchar(50) NOT NULL DEFAULT 'no' COMMENT 'название пироженки',
  `price` int NOT NULL COMMENT 'цена',
  `sostav` varchar(255) NOT NULL DEFAULT 'no' COMMENT 'состав'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Abonent`
--

INSERT INTO `Cake` (`id`, `name`, `price`,`sostav`) VALUES
(1, 'Наполеон',100, 'тесто'),
(2, 'Уже можно',450,'сливки,коньяк,тесто,горячие мулаты на подачу'),
(3,'Я худею',300,
'200 г запеченных мюсли на фруктозе,
 1 кг крупных красивых яблок,
 2 столовые ложки какао,
 1 столовая ложка фруктозы');
-- --------------------------------------------------------

--
-- Структура таблицы `Admin`
--

CREATE TABLE `User` (
  `id` int(2) NOT NULL COMMENT 'ид пользователя',
  `login` varchar(50) NOT NULL DEFAULT 'no' COMMENT 'логин',
  `password` varchar(50) NOT NULL DEFAULT 'no' COMMENT 'пароль',
   `admin` boolean NOT NULL DEFAULT false COMMENT 'роль пользователя'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Admin`
--

INSERT INTO `User` (`id`, `login`, `password`,`admin`) VALUES
(1, 'admin', 'admin', true),
(2, 'ololosha', '12345', false);
-- --------------------------------------------------------

--
-- Структура таблицы `PhoneNumber`
--

CREATE TABLE `Order` (
  `id` int(6) NOT NULL COMMENT 'ид заказа',
  `userid` int(6) NOT NULL COMMENT 'ид пользователя'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `PhoneNumber`
--

INSERT INTO `Order` (`id`, `userid`) VALUES
(1, 1),
(2, 2);


CREATE TABLE `OrderItem` (
  `id` int(6) NOT NULL COMMENT 'ид заказа',
  `cakeid` int(6) NOT NULL COMMENT 'ид пользователя',
  `orderid` int(6) NOT NULL COMMENT 'ид пользователя'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `OrderItem` (`id`, `cakeid`,`orderid`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Abonent`
--
ALTER TABLE `Cake`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Admin`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `PhoneNumber`
--
ALTER TABLE `Order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);


ALTER TABLE `OrderItem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderid` (`orderid`),
  ADD KEY `cakeid` (`cakeid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Abonent`
--
ALTER TABLE `Cake`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Admin`
--
ALTER TABLE `User`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `PhoneNumber`
--
ALTER TABLE `Order`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


ALTER TABLE `OrderItem`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `PhoneNumber`
--
ALTER TABLE `Order`
  ADD CONSTRAINT `Order_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `User` (`id`);

ALTER TABLE `OrderItem`
  ADD CONSTRAINT `OrderItem_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `Order` (`id`),
  ADD CONSTRAINT `OrderItem_ibfk_2` FOREIGN KEY (`cakeid`) REFERENCES `Cake` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
