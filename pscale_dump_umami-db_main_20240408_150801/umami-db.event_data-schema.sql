CREATE TABLE `event_data` (
  `event_data_id` int unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int unsigned NOT NULL,
  `event_data` json NOT NULL,
  PRIMARY KEY (`event_data_id`),
  UNIQUE KEY `event_data_event_id_key` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
