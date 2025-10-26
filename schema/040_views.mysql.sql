-- Auto-generated from schema-views-mysql.psd1 (map@38d5403)
-- engine: mysql
-- table:  key_usage
-- Contract view for [key_usage]
CREATE OR REPLACE SQL SECURITY INVOKER VIEW vw_key_usage AS
SELECT
  id,
  key_id,
  usage_date,
  encrypt_count,
  decrypt_count,
  verify_count,
  last_used_at
FROM key_usage;
