-- Auto-generated from schema-map-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  key_usage
ALTER TABLE key_usage ADD CONSTRAINT fk_key_usage_key FOREIGN KEY (key_id) REFERENCES crypto_keys(id) ON DELETE CASCADE;
