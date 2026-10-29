
-- Menguji akses baca backend_dev
SET ROLE backend_dev;
SELECT * FROM "SALAM".mahasiswas;
RESET ROLE;

-- Menguji akses baca bi_dev
SET ROLE bi_dev;
SELECT * FROM "SALAM".mahasiswas;
RESET ROLE;

-- Menguji akses baca data_engineer
SET ROLE data_engineer;
SELECT * FROM "SALAM".mahasiswas;
RESET ROLE;
