-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  key_usage

ALTER TABLE key_usage ADD CONSTRAINT fk_key_usage_key FOREIGN KEY (key_id) REFERENCES crypto_keys(id) ON DELETE CASCADE;
