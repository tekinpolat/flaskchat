-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 09, 2019 at 02:35 AM
-- Server version: 5.7.27
-- PHP Version: 7.2.19-0ubuntu0.19.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask_chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `message` text COLLATE utf8_turkish_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `pub_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_id`, `to_id`, `message`, `status`, `pub_date`) VALUES
(1, 1, 3, 'Merhaba', '1', '2019-09-01 20:28:54'),
(2, 1, 3, 'Nasılsınız?', '1', '2019-09-01 20:29:11'),
(3, 3, 1, 'Merhabalar', '1', '2019-09-01 20:29:23'),
(4, 1, 3, 'Hi', '1', '2019-09-01 21:44:40'),
(5, 1, 3, 'For example, to set a ‘username’ session variable use the statement −', '1', '2019-09-01 21:49:58'),
(6, 1, 3, 'The column names are considered to be the metadata.', '1', '2019-09-01 21:50:56'),
(7, 1, 3, 'new message', '1', '2019-09-01 21:51:37'),
(8, 1, 3, 'is it possible to use the session variable the other way round: ie', '1', '2019-09-01 21:52:43'),
(9, 3, 1, 'They are obtained from the', '1', '2019-09-01 21:57:05'),
(10, 1, 3, 'Left aligned text on all viewport sizes.', '1', '2019-09-01 22:00:07'),
(11, 3, 5, 'hi', '1', '2019-09-01 22:08:18'),
(12, 3, 1, 'Here, we have used datetime.now() to get current date and time. Then, we used strftime() method to create a string representing date and time in another format.', '1', '2019-09-01 22:08:52'),
(13, 1, 3, 'representing date and time in another format.', '1', '2019-09-01 22:10:59'),
(14, 3, 1, 'The description attribute of the cursor returns information about each of the result columns of a query.', '1', '2019-09-01 22:11:16'),
(15, 3, 1, 'used strftime() method to create a', '1', '2019-09-02 00:55:48'),
(16, 3, 1, 'hi', '1', '2019-09-02 00:56:40'),
(17, 3, 1, 'Merhabalar', '1', '2019-09-02 00:58:37'),
(18, 3, 1, 'I use session like this with fla', '1', '2019-09-02 00:59:44'),
(19, 1, 3, 'Here, we have used datetime.now() to get current date and time. Then, we used strftime() method to create a string representing date and time in another format.', '1', '2019-09-02 01:00:24'),
(20, 1, 3, 'print(\"{0:>3} {1:>10}\".format(desc[0][0], desc[1][0]))', '1', '2019-09-02 01:01:42'),
(21, 1, 3, 'Displays more information about hardware memory e.g. Total and Free memory', '1', '2019-09-02 01:03:45'),
(22, 3, 1, 'Displays more information about CPU e.g model, model name, cores, vendor id', '1', '2019-09-02 01:07:10'),
(23, 3, 1, 'hi', '1', '2019-09-02 01:07:36'),
(24, 3, 1, 'Merhabalar', '1', '2019-09-02 01:08:09'),
(25, 1, 3, 'Hülya KOÇ | hulya.koc@gmail.com', '1', '2019-09-02 01:09:02'),
(26, 3, 1, 'dt_string = now.strftime(\"%d/%m/%Y %H:%M:%S\") print(\"date and time =\", dt_string)', '1', '2019-09-02 01:09:35'),
(27, 1, 3, '<div class=\"alert alert-primary\" role=\"alert\">   A simple primary alert—check it out! </div>', '1', '2019-09-02 01:10:38'),
(28, 1, 3, 'hi', '1', '2019-09-02 01:11:52'),
(29, 1, 2, 'MERHABALAR', '1', '2019-09-02 01:12:47'),
(30, 1, 3, '$(\'form#emit\').submit(function(event) {         socket.emit(\'my event\', {data: $(\'#emit_data\').val()});         return false;     });', '1', '2019-09-02 01:21:24'),
(31, 1, 3, '$(\'form#emit\').submit(function(event) {         socket.emit(\'my event\', {data: $(\'#emit_data\').val()});         return false;     });', '1', '2019-09-02 01:21:36'),
(32, 3, 1, 'We use a placeholder identified by the %s marker. Before the SQL statement is executed, the values are bound to their placeholders.', '1', '2019-09-02 15:33:02'),
(33, 3, 1, 'hi', '1', '2019-09-02 15:36:57'),
(34, 3, 1, 'hi', '1', '2019-09-02 15:37:02'),
(35, 3, 1, 'The important fact is that in all cases the application uses the same interface, the different transport mechanisms are abstracted behind a common API, so using SocketIO y', '1', '2019-09-02 15:37:53'),
(36, 1, 3, 'connection using one of the older solutions, the best one available for each given client.', '1', '2019-09-02 15:39:09'),
(37, 3, 2, 'hi', '1', '2019-09-02 15:41:08'),
(38, 3, 2, 'Merhabalar', '1', '2019-09-02 15:42:28'),
(39, 3, 1, 'Merhabalar', '1', '2019-09-02 15:42:36'),
(40, 3, 2, 'mrh', '1', '2019-09-02 15:43:34'),
(41, 3, 2, 'Elif KAYACA | elif.kayaci@gmail.com', '1', '2019-09-02 15:44:51'),
(42, 3, 2, 'cur.execute(\"SELECT * FROM cities WHERE id=%s\", myid)', '1', '2019-09-02 15:45:53'),
(43, 3, 2, 'ÇELİK', '1', '2019-09-02 15:47:13'),
(44, 1, 3, 'Hi', '1', '2019-09-02 15:51:16'),
(45, 1, 3, 'MRH', '1', '2019-09-02 15:52:26'),
(46, 1, 3, 'In the example, we get the row with the specified Id.', '1', '2019-09-02 15:53:13'),
(47, 1, 3, 'your application, and that for every browser the most efficient method available will be used.', '1', '2019-09-02 15:54:05'),
(48, 1, 3, 'What about Flask-Sockets?', '1', '2019-09-02 15:54:53'),
(49, 1, 3, 'A while ago Kenneth Reitz published Flask-Sockets, another extension for Flask that makes the use of WebSocket accessible to Flask applications.', '1', '2019-09-02 15:55:55'),
(50, 3, 1, 'connect to your application, and that for every browser the most efficient method available will be used.', '1', '2019-09-02 15:56:31'),
(51, 3, 1, 'We use a placeholder identified by the %s marker. Before the SQL statement is executed, the values are bound to their placeholders.', '1', '2019-09-02 15:57:19'),
(52, 3, 1, 'Mrh', '1', '2019-09-02 15:57:34'),
(53, 3, 1, 'Hi', '1', '2019-09-02 15:57:50'),
(54, 1, 3, 'A while ago Kenneth Reitz published Flask-Sockets, another extension for Flask that makes the use of WebSocket accessible to Flask applications.  The main difference between Flask-Sockets and Flask-SocketIO is that the former wraps the native WebSocket protocol (through the use of the gevent-websocket project), so it can only be used by the most modern browsers that have native support. Flask-SocketIO transparently downgrades itself for older browsers.', '1', '2019-09-02 16:01:03'),
(55, 3, 1, 'PyMySQL affected rows  The rowcount is a read-only cursor attribute which specifies the number of rows that was produced by the the last SELECT, UPDATE, or INSERT statement.', '1', '2019-09-02 16:28:28'),
(56, 3, 1, '$ ./prepared_statement.py  4 Warsaw 1748000', '1', '2019-09-02 16:29:00'),
(57, 3, 1, 'The extension is initialized in the usual way, but to simplify the start up of the server a custom run() method is provided by the extension. This method starts gevent, the only supported web server. Using gunicorn with a gevent worker should also work. The run() method takes optional host and port arguments, but by default it will listen on localhost:5000 like Flask\'s development web server.  The only traditional route in this application is /, which serves index.html, a web document that contains the client implementation of this example.  To receive WebSocket messages from the client the application defines event handlers using the socketio.on decorator.  The first argument to the decorator is the event name. Event names \'connect\', \'disconnect\', \'message\' and \'json\' are special events generated by SocketIO. Any other event names are considered custom events.', '1', '2019-09-02 16:30:02'),
(58, 3, 1, '#!/usr/bin/python3 # -*- coding: utf-8 -*-  import pymysql  con = pymysql.connect(\'localhost\', \'user17\',    \'s$cret\', \'mydb\')  with con:      cur = con.cursor()     cur.execute(\"SELECT * FROM cities WHERE id IN (1, 2, 3)\")      # rows = cur.fetchall()      # for row in rows:     #     print(\"{0} {1} {2}\".format(row[0], row[1], row[2]))      print(\"The query affected {} rows\".format(cur.rowcount))', '1', '2019-09-02 16:30:48'),
(59, 1, 3, 'The important fact is that in all cases the application uses the same interface, the different transport mechanisms are abstracted behind a common API, so using SocketIO you can be pretty much sure that any browser out there will be able to connect to your application, and that for every browser the most efficient method available will be used.', '1', '2019-09-04 01:35:16'),
(60, 1, 3, 'hi', '1', '2019-09-04 02:08:58'),
(61, 1, 3, 'Mrh', '1', '2019-09-04 02:09:04'),
(62, 1, 3, 'A while ago Kenneth Reitz published Flask-Sockets, another extension for Flask that makes the use of WebSocket accessible to Flask applications.', '1', '2019-09-04 02:11:29'),
(63, 1, 3, 'The main difference between Flask-Sockets and Flask-SocketIO is that the former wraps the native WebSocket protocol (through the use of the gevent-websocket project), so it can only be used by the most modern browsers that have native support. Flask-SocketIO transparently downgrades itself for older browsers.', '1', '2019-09-04 02:12:50'),
(64, 1, 3, 'We use a placeholder identified by the %s marker. Before the SQL statement is executed, the values are bound to their placeholders.', '1', '2019-09-04 02:13:35'),
(65, 1, 3, 'The rowcount is a read-only cursor attribute which specifies the number of rows that was produced by the the last SELECT, UPDATE, or INSERT statement.', '1', '2019-09-04 02:14:03'),
(66, 1, 3, 'We build a message that shows the number of affected rows.', '1', '2019-09-04 02:14:54'),
(67, 1, 3, 'much sure that any browser out there will be able to connect to your application, and that for every browser the most efficient method available will be used.', '1', '2019-09-04 02:15:04'),
(68, 1, 3, 'much sure that any browser out there will be able to connect to your application, and that for every browser the most efficient method available will be used.', '1', '2019-09-04 02:15:18'),
(69, 1, 3, 'much sure that any browser out there will be able to connect to your application, and that for every browser the most efficient method available will be used.', '1', '2019-09-04 02:15:19'),
(70, 1, 3, 'much sure that any browser out there will be able to connect to your application, and that for every browser the most efficient method available will be used.', '1', '2019-09-04 02:15:20'),
(71, 1, 3, 'much sure that any browser out there will be able to connect to your application, and that for every browser the most efficient method available will be used.', '1', '2019-09-04 02:15:21'),
(72, 1, 3, 'much sure that any browser out there will be able to connect to your application, and that for every browser the most efficient method available will be used.', '1', '2019-09-04 02:15:22'),
(73, 1, 3, 'much sure that any browser out there will be able to connect to your application, and that for every browser the most efficient method available will be used.', '1', '2019-09-04 02:15:23'),
(74, 1, 3, 'much sure that any browser out there will be able to connect to your application, and that for every browser the most efficient method available will be used.', '1', '2019-09-04 02:15:24'),
(75, 1, 3, 'hi', '1', '2019-09-04 02:16:27'),
(76, 1, 3, 'hi', '0', '2019-09-04 02:18:45'),
(77, 1, 3, 'hi', '0', '2019-09-04 02:18:48'),
(78, 1, 3, 'merhabalar', '0', '2019-09-04 02:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'Tekin POLAT', 'tekin.polat@ogr.dpu.edu.tr', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5'),
(2, 'Ahmet ÇAKICI', 'ahmet.cakici@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5'),
(3, 'Gamze ÇELİK', 'gamze.celik@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5'),
(4, 'Elif KAYACA', 'elif.kayaci@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5'),
(5, 'Hülya KOÇ', 'hulya.koc@gmail.com', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
