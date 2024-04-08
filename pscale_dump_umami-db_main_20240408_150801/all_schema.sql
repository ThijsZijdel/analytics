CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `account` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `account_uuid` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `account_username_key` (`username`),
  UNIQUE KEY `account_account_uuid_key` (`account_uuid`),
  KEY `account_account_uuid_idx` (`account_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
CREATE TABLE `event_data` (
  `event_data_id` int unsigned NOT NULL AUTO_INCREMENT,
  `event_id` int unsigned NOT NULL,
  `event_data` json NOT NULL,
  PRIMARY KEY (`event_data_id`),
  UNIQUE KEY `event_data_event_id_key` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
