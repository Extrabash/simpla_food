-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Фев 21 2022 г., 15:44
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `abashy8f_oreh`
--

-- --------------------------------------------------------

--
-- Структура таблицы `s_variants`
--
-- Создание: Фев 20 2022 г., 23:19
-- Последнее обновление: Фев 20 2022 г., 23:36
-- Последняя проверка: Фев 20 2022 г., 23:19
--

DROP TABLE IF EXISTS `s_variants`;
CREATE TABLE `s_variants` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(14,2) NOT NULL DEFAULT '0.00',
  `compare_price` decimal(14,2) DEFAULT NULL,
  `package_weight` decimal(14,2) NOT NULL DEFAULT '1.00' COMMENT 'Вес в упаковке',
  `minimum_amount` mediumint(9) NOT NULL DEFAULT '1' COMMENT 'Минимальное количество',
  `items_per_package` mediumint(9) NOT NULL DEFAULT '1' COMMENT 'Количество в упаковке / Кратность',
  `stock` mediumint(9) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `external_id` varchar(36) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `s_variants`
--
ALTER TABLE `s_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `sku` (`sku`),
  ADD KEY `price` (`price`),
  ADD KEY `stock` (`stock`),
  ADD KEY `position` (`position`),
  ADD KEY `external_id` (`external_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `s_variants`
--
ALTER TABLE `s_variants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
