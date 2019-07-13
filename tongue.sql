--
-- Database: `tongue`
--

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `id` int(255) NOT NULL,
  `feed` varchar(255) COLLATE utf8_bin NOT NULL,
  `feed_server` varchar(255) COLLATE utf8_bin NOT NULL,
  `in_use` tinyint(1) NOT NULL,
  `dest` varchar(255) COLLATE utf8_bin NOT NULL,
  `http_stat` varchar(255) COLLATE utf8_bin NOT NULL,
  `sent` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `movie_files`
--

CREATE TABLE `movie_files` (
  `id` int(255) NOT NULL,
  `video` varchar(255) COLLATE utf8_bin NOT NULL,
  `path_hash` varchar(255) COLLATE utf8_bin NOT NULL,
  `season_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` int(255) NOT NULL,
  `season_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `show_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int(11) NOT NULL,
  `show_name` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `video_files`
--

CREATE TABLE `video_files` (
  `id` int(255) NOT NULL,
  `video` varchar(255) COLLATE utf8_bin NOT NULL,
  `path_hash` varchar(255) COLLATE utf8_bin NOT NULL,
  `season_id` int(255) NOT NULL,
  `show_id` int(255) NOT NULL,
  `runtime` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `dimensions` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `waiting`
--

CREATE TABLE `waiting` (
  `id` int(255) NOT NULL,
  `table` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `video_id` int(255) NOT NULL,
  `feed` varchar(255) COLLATE utf8_bin NOT NULL,
  `feed_server` varchar(255) COLLATE utf8_bin NOT NULL,
  `seek` varchar(32) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `feed` (`feed`);

--
-- Indexes for table `movie_files`
--
ALTER TABLE `movie_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path_hash` (`path_hash`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_files`
--
ALTER TABLE `video_files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path_hash` (`path_hash`);

--
-- Indexes for table `waiting`
--
ALTER TABLE `waiting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3787;
--
-- AUTO_INCREMENT for table `movie_files`
--
ALTER TABLE `movie_files`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `video_files`
--
ALTER TABLE `video_files`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `waiting`
--
ALTER TABLE `waiting`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
