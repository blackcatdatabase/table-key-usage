# key_usage

Daily counters of key operations.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| date |  | YES |  | UTC date (yyyy-mm-dd). |
| decrypt_count | INT | NO | 0 | Decrypt operations count. |
| encrypt_count | INT | NO | 0 | Encrypt operations count. |
| id | BIGINT | NO |  | Surrogate primary key. |
| key_id | BIGINT | NO |  | Key (FK crypto_keys.id). |
| last_used_at | DATETIME(6) | YES |  | Last usage timestamp (UTC). |
| verify_count | INT | NO | 0 | Verify operations count. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| uq_key_usage_key_date | key_id, usage_date |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| uq_key_usage_key_date | key_id,usage_date | UNIQUE KEY uq_key_usage_key_date (key_id, usage_date) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_key_usage_key | key_id | crypto_keys(id) | ON DELETE CASCADE |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| uq_key_usage_key_date | key_id, usage_date |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| uq_key_usage_key_date | key_id,usage_date | CONSTRAINT uq_key_usage_key_date UNIQUE (key_id, usage_date) |

Foreign keys:
| Name | Columns | References | Actions |
| --- | --- | --- | --- |
| fk_key_usage_key | key_id | crypto_keys(id) | ON DELETE CASCADE |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_key_usage | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_key_usage | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
