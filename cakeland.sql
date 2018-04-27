-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Апр 27 2018 г., 10:33
-- Версия сервера: 5.5.25
-- Версия PHP: 5.2.12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `cakeland`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cake`
--

CREATE TABLE IF NOT EXISTS `cake` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT 'no' COMMENT 'название пироженки',
  `price` int(11) NOT NULL COMMENT 'цена',
  `sostav` varchar(255) NOT NULL DEFAULT 'no' COMMENT 'состав',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `cake`
--

INSERT INTO `cake` (`id`, `name`, `price`, `sostav`) VALUES
(1, 'Торт «Бейлис»', 850, 'Четыре слоя белого бисквита пропитаны кофейным сиропом. Крем масляный кофейный. Желе молочное с ликером "Бейлис". Торт оформлен шоколадным кремом и кофейным гляссажем.'),
(2, 'Торт "Уже можно"', 800, 'Бисквит с фундуком и уваренной в специях грушей. Крем заварной апельсиново-лимонный, желе на красном вине со специями. Поверхность покрыта шоколадным гляссажем и оформлена малазийским хворостом – квикараз.'),
(3, 'Торт "Я худею"', 1000, 'Нежный бисквит, сливочный крем, йогурт, свежие яблоки и ягоды черники'),
(5, 'Торт "Дали с клубникой"', 1000, 'Бисквит с добавлением японского чая "Маття", который придаёт ему насыщенный зелёный цвет. Клубничное желе, клубничное кремё с белым шоколадом. Кокосовый мусс с итальянской меренгой. Торт покрыт гляссажем.   '),
(6, 'Ягодный творожник', 600, 'Основа из песочного печенья. Пирог из творога, сыра «Маскарпоне», с добавлением белого шоколада. Поверхность оформлена сливками и свежей ягодой.'),
(7, 'Торт "Дали с клубникой"', 1000, 'Бисквит с добавлением японского чая "Маття", который придаёт ему насыщенный зелёный цвет. Клубничное желе, клубничное кремё с белым шоколадом. Кокосовый мусс с итальянской меренгой. Торт покрыт гляссажем.   '),
(8, 'Ягодный творожник', 600, 'Основа из песочного печенья. Пирог из творога, сыра «Маскарпоне», с добавлением белого шоколада. Поверхность оформлена сливками и свежей ягодой.'),
(9, 'Торт "Тирамису"', 700, 'Подложка из тонкого рулетного бисквита. Бисквитные палочки, обильно пропитанные кофейным сиропом с ликером. Крем сырный.'),
(10, 'Торт-конфета «Маракуйя в шоколаде»', 600, 'Шоколадный бисквит, обильно пропитанный экзотическим пуншем. Прослойка: ганаш из маракуйи, сливок и молочного шоколада. Поверхность оформлена шоколадным гляссажем.'),
(11, 'Торт "Оригинальный"', 650, 'Сметанный бисквит с добавлением грецкого ореха и мака. Прослоен масляно- сметанным кремом. Сверху заглазирован шоколадной глазурью. Оформление: сливочный крем, курага, орех, мак, чернослив, мармелад.'),
(12, 'Торт "Арктика"', 550, 'Два слоя белого бисквита и один слой безе прослоены кремом из сливок, вареной сгущенкой и грецким орехом. Торт обсыпан кусочками безе.'),
(13, 'Торт “Сюрприз”', 850, 'Семь слоёв тонкого масляного бисквита, воздушно-орехового п/ф, прослоенного сливочно-шоколадным кремом. Оформление: масло, грецкий орех.'),
(14, 'Торт "Соблазн"', 500, 'Слой белого бисквита, на который горкой укладываются заварные эклеры и чернослив, соединенные легким кремом из сухого молока, сливочного масла и сахарной пудры. Торт покрыт белым ганашем и посыпан шоколадной крошкой. Украшен физалисом, красной черешней и ');

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `userid` int(6) NOT NULL COMMENT 'ид пользователя',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `userid`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `orderitem`
--

CREATE TABLE IF NOT EXISTS `orderitem` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `cakeid` int(6) NOT NULL COMMENT 'ид пользователя',
  `orderid` int(6) NOT NULL COMMENT 'ид пользователя',
  PRIMARY KEY (`id`),
  KEY `orderid` (`orderid`),
  KEY `cakeid` (`cakeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `orderitem`
--

INSERT INTO `orderitem` (`id`, `cakeid`, `orderid`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL DEFAULT 'no' COMMENT 'логин',
  `password` varchar(50) NOT NULL DEFAULT 'no' COMMENT 'пароль',
  `admin` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'роль пользователя',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `admin`) VALUES
(1, 'admin', 'admin', 1),
(2, 'ololosha', '12345', 0);

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `Order_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `OrderItem_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `OrderItem_ibfk_2` FOREIGN KEY (`cakeid`) REFERENCES `cake` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
