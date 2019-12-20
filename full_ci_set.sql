-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2018 at 01:28 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bigbox`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('163140639fa1c23b6f77eb2535d32b81dcd4c3cb', '::1', 1528715409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383731353334393b),
('480e11f083508184b66b19b4af5a14ac79935b17', '::1', 1528715083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383731343738383b),
('5d87c35477f9d8aa7b94cd1c3754d933fe1acd86', '::1', 1528716155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383731363132323b),
('689c510c99fd86730adc5dc8a59349b4659319ed', '::1', 1528715584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383731353431343b),
('6ac1f2fa190c087b54b4486b83b6fe41a5182d3a', '::1', 1528715044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383731343738333b),
('e91c4fb08708879cf77c1c4cfa80780ae9b2d04c', '::1', 1528716216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383731363231313b),
('ede2f52bbd02e1a2f4936787ec37d2b28f5b6ad0', '::1', 1528716100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383731353831333b);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=856 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `uri`, `method`, `params`, `api_key`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(853, 'api/Example/users', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:10:"User-Agent";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";s:13:"Postman-Token";s:36:"5817437a-5d77-fad6-39f3-90147bfc805d";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.9";s:6:"Cookie";s:51:"ci_session=ede2f52bbd02e1a2f4936787ec37d2b28f5b6ad0";}', '', '::1', 1528716100, 0.184122, '1', 200),
(854, 'api/Example/users', 'get', 'a:10:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:13:"Cache-Control";s:8:"no-cache";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:10:"User-Agent";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";s:13:"Postman-Token";s:36:"f8498d01-7d94-c3c2-ab0d-26aaeec93e55";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.9";s:6:"Cookie";s:51:"ci_session=ede2f52bbd02e1a2f4936787ec37d2b28f5b6ad0";}', '', '::1', 1528716122, 0.258472, '1', 200),
(855, 'api/Example/users', 'post', 'a:12:{s:4:"Host";s:9:"localhost";s:10:"Connection";s:10:"keep-alive";s:14:"Content-Length";s:1:"0";s:10:"User-Agent";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36";s:13:"Cache-Control";s:8:"no-cache";s:6:"Origin";s:51:"chrome-extension://fhbjgbiflinjbdggehcddcbncdddomop";s:13:"Postman-Token";s:36:"5bdf7e1e-8344-388c-973a-5730f717e91d";s:12:"Content-Type";s:33:"application/x-www-form-urlencoded";s:6:"Accept";s:3:"*/*";s:15:"Accept-Encoding";s:17:"gzip, deflate, br";s:15:"Accept-Language";s:14:"en-US,en;q=0.9";s:6:"Cookie";s:51:"ci_session=5d87c35477f9d8aa7b94cd1c3754d933fe1acd86";}', '', '::1', 1528716155, 0.212349, '1', 201);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=856;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
