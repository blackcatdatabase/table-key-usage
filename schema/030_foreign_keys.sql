-- Auto-generated from schema-map.psd1 on 2025-10-21T02:32:05
-- table: key_usage
ALTER TABLE key_usage ADD CONSTRAINT fk_key_usage_key FOREIGN KEY (key_id) REFERENCES crypto_keys(id) ON DELETE CASCADE;
