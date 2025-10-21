<!-- Auto-generated from schema-map.psd1 @ 1e83bb6 (2025-10-21T10:18:36+02:00) -->
# Definition – key_usage

Daily counters of key operations.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT UNSIGNED | — | — | Surrogate primary key. |  |
| key_id | BIGINT UNSIGNED | NO | — | Key (FK crypto_keys.id). |  |
| date | DATE | NO | — | UTC date (yyyy-mm-dd). |  |
| encrypt_count | INT | NO | 0 | Encrypt operations count. |  |
| decrypt_count | INT | NO | 0 | Decrypt operations count. |  |
| verify_count | INT | NO | 0 | Verify operations count. |  |
| last_used_at | DATETIME(6) | YES | — | Last usage timestamp (UTC). |  |
