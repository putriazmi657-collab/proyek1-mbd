# Proyek 1 Manajemen Basis Data

## Informasi Proyek

- **Nama:** Azmi Putri Kuswandi
- **Mata Kuliah:** Manajemen Basis Data
- **Database:** PostgreSQL 15
- **Tools:** Docker, Docker Compose, pgAdmin 4, dan DBeaver

## Deskripsi

Proyek ini menjalankan PostgreSQL dan pgAdmin menggunakan Docker Compose. PostgreSQL digunakan untuk menyimpan dan mengelola data, sedangkan pgAdmin dan DBeaver digunakan untuk mengakses serta mengelola database.

## Konfigurasi

- PostgreSQL: `localhost:22126`
- pgAdmin: `http://localhost:44126`
- Database: `postgres`
- Schema: `SALAM`
- Tabel: `mahasiswas`

## Struktur Tabel

Tabel `SALAM.mahasiswas` memiliki kolom:

| Kolom | Keterangan |
|---|---|
| `id` | Primary key dan identity |
| `nim` | Wajib diisi dan unik |
| `nama` | Nama mahasiswa |
| `email` | Wajib diisi dan unik |
| `semester` | Check constraint antara 1 sampai 14 |

## Pengguna dan Hak Akses

- `backend_dev`: hak akses SELECT, INSERT, UPDATE, dan DELETE.
- `bi_dev`: hak akses SELECT untuk membaca data.
- `data_engineer`: hak untuk membuat, mengubah, dan menghapus objek database serta mengelola data.

## Menjalankan Proyek

1. Pastikan Docker Desktop berjalan.
2. Siapkan file `.env` berdasarkan `.env.example`.
3. Buka terminal pada folder proyek.
4. Jalankan perintah:

   ```bash
   docker compose up -d
   ```

5. Buka pgAdmin melalui `http://localhost:44126`.
6. Untuk DBeaver, gunakan host `localhost` dan port `22126`.

## Menghentikan Proyek

Untuk menghentikan container tanpa menghapus data database, jalankan:

```bash
docker compose stop
```

## Struktur Repository

- `docker-compose.yml`: konfigurasi container PostgreSQL dan pgAdmin.
- `.env.example`: contoh variabel lingkungan.
- `sql/01_schema_tabel.sql`: script schema dan tabel.
- `sql/02_hak_akses.sql`: konfigurasi hak akses.
- `sql/03_pengujian_role.sql`: dokumentasi pengujian role.

## Catatan Keamanan

File `.env` berisi konfigurasi rahasia dan tidak boleh diunggah ke repositori publik. Gunakan `.env.example` sebagai contoh konfigurasi tanpa password asli.
