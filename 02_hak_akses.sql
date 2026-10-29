
-- Hak akses backend_dev: CRUD
GRANT USAGE ON SCHEMA "SALAM" TO backend_dev;
GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA "SALAM" TO backend_dev;
GRANT USAGE, SELECT, UPDATE
ON ALL SEQUENCES IN SCHEMA "SALAM" TO backend_dev;

-- Hak akses bi_dev: hanya membaca data
GRANT USAGE ON SCHEMA "SALAM" TO bi_dev;
GRANT SELECT
ON ALL TABLES IN SCHEMA "SALAM" TO bi_dev;

-- Hak akses data_engineer
GRANT data_engineer_owner TO data_engineer;
