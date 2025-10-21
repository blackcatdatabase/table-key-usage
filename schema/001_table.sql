-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: key_usage
CREATE TABLE IF NOT EXISTS key_usage (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  key_id BIGINT UNSIGNED NOT NULL,
  date DATE NOT NULL,
  encrypt_count INT NOT NULL DEFAULT 0,
  decrypt_count INT NOT NULL DEFAULT 0,
  verify_count INT NOT NULL DEFAULT 0,
  last_used_at DATETIME(6) NULL,
  UNIQUE KEY uq_key_usage_key_date (key_id, date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
