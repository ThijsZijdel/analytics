CREATE TABLE `event` (
  `event_id` int unsigned NOT NULL AUTO_INCREMENT,
  `website_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_uuid` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `event_event_uuid_key` (`event_uuid`),
  KEY `event_created_at_idx` (`created_at`),
  KEY `event_session_id_idx` (`session_id`),
  KEY `event_website_id_idx` (`website_id`),
  KEY `event_event_uuid_idx` (`event_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
