-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
