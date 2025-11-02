-- Auto-generated from schema-map-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  key_usage
CREATE TABLE IF NOT EXISTS key_usage (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  key_id BIGINT UNSIGNED NOT NULL,
  usage_date DATE NOT NULL,
  encrypt_count INT NOT NULL DEFAULT 0,
  decrypt_count INT NOT NULL DEFAULT 0,
  verify_count INT NOT NULL DEFAULT 0,
  last_used_at DATETIME(6) NULL,
  UNIQUE KEY uq_key_usage_key_date (key_id, usage_date)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
