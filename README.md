# Proyek 1 Manajemen Basis Data

## Informasi Proyek
- **Nama:** Azmi Putri Kuswandi
- **Mata Kuliah:** Manajemen Basis Data
- **Database:** PostgreSQL 15
- **Tools:** Docker, Docker Compose, pgAdmin 4, DBeaver

## Deskripsi
Proyek ini menjalankan PostgreSQL dan pgAdmin menggunakan Docker Compose. PostgreSQL digunakan untuk mengelola database, sedangkan pgAdmin digunakan untuk mengakses dan mengelola database melalui antarmuka web.

## Konfigurasi
- PostgreSQL: port `22126`
- pgAdmin: port `44126`
- Database: `postgres`
- Schema: `SALAM`
- Tabel: `mahasiswas`

## Struktur Tabel
Tabel `SALAM.mahasiswas` memiliki kolom:
- `id`: primary key dan identity
- `nim`: unique
- `nama`
- `email`: unique
- `semester`: dibatasi dengan check constraint antara 1 sampai 14

## Pengguna dan Hak Akses
- `backend_dev`: hak akses CRUD tabel.
- `bi_dev`: hak akses membaca data.
- `data_engineer`: hak akses untuk membuat, mengubah, dan menghapus objek database serta mengelola data.

## Menjalankan Proyek
1. Pastikan Docker Desktop berjalan.
2. Buka terminal pada folder proyek.
3. Jalankan `docker compose up -d`.
4. Buka pgAdmin melalui `http://localhost:44126`.

## Catatan Keamanan
File `.env` berisi konfigurasi rahasia dan tidak boleh diunggah ke repositori publik. Gunakan `.env.example` sebagai contoh konfigurasi tanpa password asli.
