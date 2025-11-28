-- Auto-generated from schema-map-mysql.psd1 (map@mtime:2025-11-27T15:13:14Z)
-- engine: mysql
-- table:  key_usage

ALTER TABLE key_usage ADD CONSTRAINT fk_key_usage_key FOREIGN KEY (key_id) REFERENCES crypto_keys(id) ON DELETE CASCADE;
