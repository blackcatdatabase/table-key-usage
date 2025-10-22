-- Auto-generated from schema-map.psd1 (map@6cefe8e)
-- table: key_usage
ALTER TABLE key_usage ADD CONSTRAINT fk_key_usage_key FOREIGN KEY (key_id) REFERENCES crypto_keys(id) ON DELETE CASCADE;
