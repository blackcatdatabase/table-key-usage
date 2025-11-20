<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – key_usage

Daily counters of key operations.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| key_id | BIGINT | NO | — | Key (FK crypto_keys.id). |  |
| usage_date | DATE | NO | — |  |  |
| encrypt_count | INTEGER | NO | 0 | Encrypt operations count. |  |
| decrypt_count | INTEGER | NO | 0 | Decrypt operations count. |  |
| verify_count | INTEGER | NO | 0 | Verify operations count. |  |
| last_used_at | TIMESTAMPTZ(6) | YES | — | Last usage timestamp (UTC). |  |