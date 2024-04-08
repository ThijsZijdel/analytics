CREATE TABLE `website` (
  `website_id` int unsigned NOT NULL AUTO_INCREMENT,
  `website_uuid` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `share_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `website_website_uuid_key` (`website_uuid`),
  UNIQUE KEY `website_share_id_key` (`share_id`),
  KEY `website_user_id_idx` (`user_id`),
  KEY `website_website_uuid_idx` (`website_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
