CREATE TABLE `session` (
  `session_id` int unsigned NOT NULL AUTO_INCREMENT,
  `session_uuid` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `hostname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `screen` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(35) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_session_uuid_key` (`session_uuid`),
  KEY `session_created_at_idx` (`created_at`),
  KEY `session_website_id_idx` (`website_id`),
  KEY `session_session_uuid_idx` (`session_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=37973 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
