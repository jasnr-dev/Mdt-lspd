CREATE TABLE IF NOT EXISTS qf_mdt_vehicle_notes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plate VARCHAR(10) NOT NULL,
    date INT NOT NULL,
    note TEXT NOT NULL,
    officer VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS qf_mdt_citizen_notes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    identifier VARCHAR(255) NOT NULL,
    date INT NOT NULL,
    reason TEXT NOT NULL,
    officer VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS qf_mdt_fines (
    id INT AUTO_INCREMENT PRIMARY KEY,
    identifier VARCHAR(255) NOT NULL,
    reason TEXT NOT NULL,
    fine INT NOT NULL,
    date INT NOT NULL,
    officer VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS qf_mdt_jails (
    id INT AUTO_INCREMENT PRIMARY KEY,
    identifier VARCHAR(255) NOT NULL,
    reason TEXT NOT NULL,
    fine INT NOT NULL,
    jail INT NOT NULL,
    date INT NOT NULL,
    officer VARCHAR(255) NOT NULL
);


CREATE TABLE IF NOT EXISTS qf_mdt_annoucements (
    id INT AUTO_INCREMENT PRIMARY KEY,
    annid INT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Struktura tabeli dla tabeli `qf_mdt_annoucements`
--

CREATE TABLE IF NOT EXISTS `qf_mdt_annoucements` (
  `id` int(11) NOT NULL,
  `annid` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `qf_mdt_citizen_notes`
--

CREATE TABLE IF NOT EXISTS `qf_mdt_citizen_notes` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  `reason` text NOT NULL,
  `officer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `qf_mdt_fines`
--

CREATE TABLE IF NOT EXISTS `qf_mdt_fines` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `fine` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `officer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `qf_mdt_jails`
--

CREATE TABLE IF NOT EXISTS `qf_mdt_jails` (
  `id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `fine` int(11) NOT NULL,
  `jail` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `officer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `qf_mdt_vehicle_notes`
--

CREATE TABLE IF NOT EXISTS `qf_mdt_vehicle_notes` (
  `id` int(11) NOT NULL,
  `plate` varchar(10) NOT NULL,
  `date` int(11) NOT NULL,
  `note` text NOT NULL,
  `officer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_time_rank_police`
--

CREATE TABLE IF NOT EXISTS `user_time_rank_police` (
  `id` int(11) NOT NULL,
  `time` varchar(9) NOT NULL COMMENT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS qf_mdt_notes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    annid INT,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
