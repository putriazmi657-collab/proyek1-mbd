
-- Hak akses backend_dev: CRUD pada tabel yang ada
GRANT USAGE ON SCHEMA "SALAM" TO backend_dev;

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA "SALAM"
TO backend_dev;

GRANT USAGE, SELECT, UPDATE
ON ALL SEQUENCES IN SCHEMA "SALAM"
TO backend_dev;


-- Hak akses bi_dev: hanya membaca data
GRANT USAGE ON SCHEMA "SALAM" TO bi_dev;

GRANT SELECT
ON ALL TABLES IN SCHEMA "SALAM"
TO bi_dev;


-- Role pemilik objek untuk data_engineer
CREATE ROLE data_engineer_owner NOLOGIN;

GRANT data_engineer_owner TO data_engineer;

ALTER SCHEMA "SALAM" OWNER TO data_engineer_owner;

ALTER TABLE "SALAM".mahasiswas
OWNER TO data_engineer_owner;

GRANT USAGE ON SCHEMA "SALAM"
TO data_engineer_owner;

GRANT ALL PRIVILEGES
ON ALL TABLES IN SCHEMA "SALAM"
TO data_engineer_owner;

GRANT ALL PRIVILEGES
ON ALL SEQUENCES IN SCHEMA "SALAM"
TO data_engineer_owner;
