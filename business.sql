-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 02 2016 г., 04:49
-- Версия сервера: 5.5.45
-- Версия PHP: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
--
-- База данных: `business`
--

-- --------------------------------------------------------

--
-- Структура таблицы `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `page`
--

INSERT INTO `page` (`id`, `url`, `name`, `content`) VALUES
(1, '/', 'Home', ' <div class="post" id="post-5">           \n 	<div class="post-title">              \n 		<div class="post-date"><span>May</span>08</div>          \n 		<h2>A Simple Post</h2>          \n 		<div class="post-title-info">        \n 			<div class="post-title-author">Posted by admin</div>        \n 			<div class="post-title-category">Categorized Under: Post, Simple</div>     \n 			<div class="post-title-comments">Comments: 0</div>      \n 		</div>        \n 	</div>         \n 	<div class="post-entry">         \n 		<div class="post-entry-top">       \n 			<div class="post-entry-bottom">       \n 				<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc ac massa vitae mi ornare suscipit. Vivamus sed elit non eros consectetuer fermentum. Nulla et massa. Vivamus pharetra, leo sit amet mattis bibendum, neque mauris congue massa, id imperdiet arcu arcu at massa. </p>\n 				<ul>    \n 					<li>Quisque ullamcorper ultricies lacus.</li>             \n 					<li>Duis placerat orci ac dui.</li>            \n 					<li>Nullam sed eros a metus mollis venenatis.</li>   \n 				</ul>          \n 				<p>\n 					Integer tincidunt faucibus felis. Fusce congue, est vel vehicula faucibus, mauris nisi cursus orci, vitae suscipit dui arcu sed nisl. Praesent sit amet orci rutrum metus ornare pulvinar. Fusce placerat fringilla tellus. Proin metus. \n 				</p> \n 			</div>   \n 		</div>   \n 	</div>  \n </div>  \n <div class="post" id="post-3">      \n 	<div class="post-title"> \n 		<div class="post-date"><span>May</span>08</div>    \n 		<h2>Post with block quotes</h2>\n 		<div class="post-title-info">    \n 			<div class="post-title-author">Posted by admin</div>  \n 			<div class="post-title-category">Categorized Under: Blockquote, Post</div>     \n 			<div class="post-title-comments">Comments: 4</div>  \n 		</div>      \n 	</div>    \n 	<div class="post-entry">      \n 		<div class="post-entry-top">    \n 			<div class="post-entry-bottom">  \n 				<div id="lipsum">     \n 					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam lobortis velit quis lectus. Nullam sed velit. Etiam nec justo. Curabitur tristique egestas risus. Fusce adipiscing orci vel lacus. Nulla lorem urna, rhoncus vitae, lacinia non</p>\n 					<blockquote>              \n 						<p>Ut in metus. Vestibulum commodo, turpis sed cursus dapibus, est libero condimentum ligula, in elementum turpis nunc vitae magna. Praesent mollis pretium est. In in est non enim dictum aliquet. Morbi fringilla. Nulla facilisi. Cras sem ipsum, vestibulum nec, ornare </p>          \n 					</blockquote>    \n 					<p>Etiam lectus. Proin molestie. Nullam tincidunt porta arcu. In hac habitasse platea dictumst. Nunc commodo, mauris et pharetra eleifend, velit orci egestas mauris, et semper enim neque at nulla. Donec eleifend. Donec vehicula. Phasellus molestie posuere quam. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Cras id orci. </p>            \n 				</div> \n 			</div>  \n 		</div>  \n 	</div>    \n </div>\n <div class="navigation">\n 	<div class="navigation-previous"></div>\n 	<div class="navigation-next"></div>\n </div>\n <div class="clear"></div>'),
(2, '/contacts', 'Contacts', '<h2>Поиск тура</h2>\n\n<table class="page-table">\n    <caption>Туры в Турцию</caption>\n    <tr>\n        <th>Название</th>\n        <th>Уровень отеля</th>\n        <th>Выезд</th>\n        <th>Размещение</th>\n        <th>Питание</th>\n        <th>Вылет</th>\n        <th>Цена</th>\n    </tr>\n    <tr>\n        <td>Fortuna AI (Side)</td>\n        <td>4*</td>\n        <td>23.09.15 ср. на 8дн./7ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Харьков 13:20</td>\n        <td>от 12 595 грн</td>\n    </tr>\n    <tr>\n        <td>Jasmin Side Hotel</td>\n        <td>5*</td>\n        <td>23.09.15 ср. на 8дн./7ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Харьков 13:20</td>\n        <td>от 15 992 грн</td>\n    </tr>\n    <tr>\n        <td>Himeros Life Hotel</td>\n        <td>5+*</td>\n        <td>23.09.15 ср. на 8дн./7ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Харьков 13:20</td>\n        <td>от 19 992 грн</td>\n    </tr>\n</table>\n\n\n<table class="page-table">\n    <caption>Туры в OAE</caption>\n    <tr>\n        <th>Название</th>\n        <th>Уровень отеля</th>\n        <th>Выезд</th>\n        <th>Размещение</th>\n        <th>Питание</th>\n        <th>Вылет</th>\n        <th>Цена</th>\n    </tr>\n    <tr>\n        <td>Ramada Beach</td>\n        <td>4*</td>\n        <td>25.09.15 пт. на 7дн./6ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Киев 13:50</td>\n        <td>от 27 664 грн</td>\n    </tr>\n    <tr>\n        <td>Bin Majid Beach Hotel</td>\n        <td>5*</td>\n        <td>27.09.15 пт. на 7дн./6ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Киев 12:50</td>\n        <td>от 29 344 грн</td>\n    </tr>\n    <tr>\n        <td>Himeros Life Hotel</td>\n        <td>5+*</td>\n        <td>30.09.15 пт. на 7дн./6ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Киев 12:50</td>\n        <td>от 37 734 грн</td>\n    </tr>\n</table>\n\n\n<table class="page-table">\n    <caption>Туры в Шри-Ланку</caption>\n    <tr>\n        <th>Название</th>\n        <th>Уровень отеля</th>\n        <th>Выезд</th>\n        <th>Размещение</th>\n        <th>Питание</th>\n        <th>Вылет</th>\n        <th>Цена</th>\n    </tr>\n    <tr>\n        <td>Club Palm Bay</td>\n        <td>4*</td>\n        <td>25.09.15 пт. на 7дн./6ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Киев 13:50</td>\n        <td>от 29 150 грн</td>\n    </tr>\n    <tr>\n        <td>The Palms</td>\n        <td>5*</td>\n        <td>27.09.15 пт. на 7дн./6ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Киев 12:50</td>\n        <td>от 36 354 грн</td>\n    </tr>\n    <tr>\n        <td>Club Bentota</td>\n        <td>5+*</td>\n        <td>30.09.15 пт. на 7дн./6ноч.</td>\n        <td>DBL (2-х взрослых)</td>\n        <td>AI (Всё включено)</td>\n        <td>Киев 12:50</td>\n        <td>от 44 734 грн</td>\n    </tr>\n</table>');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `pass`) VALUES
(1, 'Mark', '123456'),
(2, 'user', 'user');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
