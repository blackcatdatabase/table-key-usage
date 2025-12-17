-- Auto-generated from schema-map-postgres.yaml (map@sha1:621FDD3D99B768B6A8AD92061FB029414184F4B3)
-- engine: postgres
-- table:  key_usage

ALTER TABLE key_usage ADD CONSTRAINT fk_key_usage_key FOREIGN KEY (key_id) REFERENCES crypto_keys(id) ON DELETE CASCADE;
