
-- 1. Pengujian hak akses backend_dev
RESET ROLE;
SET ROLE backend_dev;

SELECT * FROM "SALAM".mahasiswas;

-- CRUD berhasil diuji pada tabel percobaan uji_backend.

RESET ROLE;

-- 2. Pengujian hak akses bi_dev
SET ROLE bi_dev;

-- SELECT berhasil menampilkan 3 data mahasiswa.
SELECT * FROM "SALAM".mahasiswas;

-- Pemeriksaan hak akses bi_dev.
SELECT
    has_table_privilege('bi_dev', '"SALAM".mahasiswas', 'SELECT') AS boleh_select,
    has_table_privilege('bi_dev', '"SALAM".mahasiswas', 'INSERT') AS boleh_insert,
    has_table_privilege('bi_dev', '"SALAM".mahasiswas', 'UPDATE') AS boleh_update,
    has_table_privilege('bi_dev', '"SALAM".mahasiswas', 'DELETE') AS boleh_delete;

RESET ROLE;

-- 3. Pengujian hak akses data_engineer
SET ROLE data_engineer;

-- CREATE TABLE, ALTER TABLE, dan DROP TABLE
-- berhasil diuji pada tabel percobaan uji_engineer.

RESET ROLE;
