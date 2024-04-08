CREATE TABLE `pageview` (
  `view_id` int unsigned NOT NULL AUTO_INCREMENT,
  `website_id` int unsigned NOT NULL,
  `session_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrer` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`view_id`),
  KEY `pageview_created_at_idx` (`created_at`),
  KEY `pageview_session_id_idx` (`session_id`),
  KEY `pageview_website_id_created_at_idx` (`website_id`,`created_at`),
  KEY `pageview_website_id_idx` (`website_id`),
  KEY `pageview_website_id_session_id_created_at_idx` (`website_id`,`session_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=116926 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
