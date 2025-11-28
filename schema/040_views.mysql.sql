-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
-- engine: mysql
-- table:  key_usage

-- Contract view for [key_usage]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_key_usage AS
SELECT
  id,
  key_id,
  usage_date,
  encrypt_count,
  decrypt_count,
  verify_count,
  last_used_at
FROM key_usage;
