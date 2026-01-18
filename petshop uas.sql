create database kasir_petshop;
use kasir_petshop;

-- DDL
CREATE TABLE kasir (
    id_kasir INT AUTO_INCREMENT PRIMARY KEY,
    nama_kasir VARCHAR(100) NOT NULL
);

CREATE TABLE supplier (
    id_supplier INT AUTO_INCREMENT PRIMARY KEY,
    nama_supplier VARCHAR(100),
    kontak VARCHAR(50)
);

CREATE TABLE barang (
    kode_barang INT AUTO_INCREMENT PRIMARY KEY,
    nama_barang VARCHAR(100),
    jenis_barang VARCHAR(50),
    harga INT,
    stok INT,
    id_supplier INT,
    FOREIGN KEY (id_supplier) REFERENCES supplier(id_supplier)
);

CREATE TABLE transaksi (
    id_transaksi INT AUTO_INCREMENT PRIMARY KEY,
    no_struk VARCHAR(20),
    tanggal DATE,
    id_kasir INT,
    total_tagihan INT,
    total_bayar INT,
    total_kembalian INT,
    FOREIGN KEY (id_kasir) REFERENCES kasir(id_kasir)
);

CREATE TABLE detail_transaksi (
    id_detail INT AUTO_INCREMENT PRIMARY KEY,
    id_transaksi INT,
    kode_barang INT,
    jumlah INT,
    harga INT,
    subtotal INT,
    FOREIGN KEY (id_transaksi) REFERENCES transaksi(id_transaksi),
    FOREIGN KEY (kode_barang) REFERENCES barang(kode_barang)
);

-- DML
INSERT INTO kasir (nama_kasir)
VALUES ('Andi');

INSERT INTO supplier (nama_supplier, kontak)
VALUES ('PT Pet Food', '08123456789');

INSERT INTO barang (nama_barang, jenis_barang, harga, stok, id_supplier)
VALUES 
('Ori Cat Pouch', 'Makanan', 20000, 50, 1),
('Cat Grooming', 'Jasa', 22000, 20, 1);

INSERT INTO transaksi (no_struk, tanggal, id_kasir, total_tagihan, total_bayar, total_kembalian)
VALUES ('TRX001', '2026-01-10', 1, 62000, 100000, 38000);

INSERT INTO detail_transaksi (id_transaksi, kode_barang, jumlah, harga, subtotal)
VALUES 
(1, 1, 2, 20000, 40000),
(1, 2, 1, 22000, 22000);

-- DQL
SELECT t.no_struk, b.nama_barang, dt.jumlah, dt.subtotal
FROM transaksi t
JOIN detail_transaksi dt ON t.id_transaksi = dt.id_transaksi
JOIN barang b ON dt.kode_barang = b.kode_barang;

SELECT t.no_struk, SUM(dt.subtotal) AS total_penjualan
FROM transaksi t
JOIN detail_transaksi dt ON t.id_transaksi = dt.id_transaksi
GROUP BY t.no_struk;

SELECT t.no_struk, SUM(dt.subtotal) AS total_penjualan
FROM transaksi t
JOIN detail_transaksi dt ON t.id_transaksi = dt.id_transaksi
GROUP BY t.no_struk
HAVING SUM(dt.subtotal) > 50000;

SELECT nama_barang, harga
FROM barang
WHERE harga > (
    SELECT AVG(harga) FROM barang
);

CREATE VIEW view_laporan_transaksi AS
SELECT t.no_struk, t.tanggal, b.nama_barang, dt.jumlah, dt.subtotal
FROM transaksi t
JOIN detail_transaksi dt ON t.id_transaksi = dt.id_transaksi
JOIN barang b ON dt.kode_barang = b.kode_barang;

START TRANSACTION;

UPDATE barang
SET stok = stok - 2
WHERE kode_barang = 1;

COMMIT;






















