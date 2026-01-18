<p align="center"> <img src="https://lh3.googleusercontent.com/d/1-TrhdCX8Geg0MPz6wW44Gst2bRhawRC3" width="300" alt="TRPL Logo"> </p> <h1 align="center">🐾 Sistem Transaksi Penjualan Pet Shop & Care</h1> <p align="center"> <b>Database Management System untuk Pengelolaan Penjualan dan Layanan Pet Shop</b><br> Proyek Ujian Akhir Semester <i>Sistem Basis Data</i> </p>
📌 Deskripsi Proyek

Sistem Transaksi Penjualan Pet Shop & Care merupakan implementasi basis data relasional yang dirancang untuk mendukung operasional penjualan produk dan layanan perawatan hewan secara efisien. Sistem ini mengelola data barang, data supplier, informasi kasir, serta pencatatan transaksi penjualan secara terperinci dengan mekanisme pengelolaan stok yang terkontrol.

Proyek ini menerapkan berbagai konsep penting dalam basis data, mulai dari normalisasi data (1NF hingga 3NF), perancangan ERD, hingga implementasi query SQL tingkat lanjut seperti JOIN, agregasi, subquery, view, dan Transaction Control Language (TCL).

👥 Profil Kelompok

Dokumentasi dan pengembangan database ini disusun oleh kelompok TRPL25A1:

Hafidh Ridlo Nur Akbar
🆔 NIM: 250119008

Koujiro Inotsume
🆔 NIM: 250119014

Program Studi Teknologi Rekayasa Perangkat Lunak
Universitas Duta Bangsa Surakarta

🛠️ Struktur Database

Database petshop_db terdiri dari beberapa tabel utama yang saling berelasi untuk mendukung proses bisnis Pet Shop & Care.

🔹 Master Data

barang: Menyimpan data produk dan layanan (nama barang, jenis, harga, dan stok).

supplier: Menyimpan data pemasok barang.

kasir: Menyimpan data petugas kasir yang melayani transaksi.

🔹 Transaksi

transaksi: Menyimpan data utama transaksi (tanggal, kasir, total tagihan, pembayaran, dan kembalian).

detail_transaksi: Menyimpan rincian barang atau layanan yang dibeli pada setiap transaksi.

🚀 Fitur Query Utama

Implementasi SQL pada sistem ini mencakup berbagai fungsionalitas untuk pengolahan dan analisis data.

📦 Manajemen Inventaris & Penjualan

Pemantauan Stok Barang: Menggunakan ORDER BY dan LIMIT untuk melihat barang dengan stok terbanyak atau terendah.

Pencarian Produk: Menggunakan operator LIKE untuk mencari barang berdasarkan nama atau kategori tertentu.

Fungsi Agregasi: Menghitung total stok, rata-rata harga, serta harga barang termurah dan termahal.

💰 Keamanan & Integritas Transaksi

Transaction Control (TCL): Penerapan START TRANSACTION, COMMIT, dan ROLLBACK untuk memastikan transaksi penjualan berjalan aman dan konsisten.

Perhitungan Otomatis: Menghitung subtotal dan total pembayaran menggunakan operasi aritmatika dan alias pada query SQL.

🔍 Relasi & Analisis Data

Laporan Transaksi Lengkap: Menggunakan INNER JOIN antar tabel transaksi, detail_transaksi, barang, dan kasir.

Analisis Data Tambahan: Menggunakan LEFT JOIN dan RIGHT JOIN untuk menganalisis keterkaitan data supplier dan barang.

📝 Cara Menjalankan

Pastikan MySQL Server atau XAMPP (Apache & MySQL) dalam keadaan aktif.

Clone repositori ini atau salin skrip SQL yang tersedia.

Jalankan perintah:

CREATE DATABASE petshop_db;


Aktifkan database:

USE petshop_db;


Impor struktur tabel dan data dari file .sql yang tersedia pada repositori.

📄 Lisensi & Referensi

Proyek ini dibuat untuk kepentingan akademik dalam rangka Ujian Akhir Semester
Program Studi Teknologi Rekayasa Perangkat Lunak
Universitas Duta Bangsa Surakarta.

Referensi:

Oracle MySQL 8.0 Reference Manual

Materi Jurnal Kuliah Pemrograman Basis Data (2025)
