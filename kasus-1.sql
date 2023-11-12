INSERT INTO customer_order (Id_order, Id_Customer, tanggal_order, status) VALUES (14, 12, '2023-11-11', 'Selesai');

INSERT INTO detail_order (Id_DetailOrder, Id_order, Id_Product, Jumlah, Harga) VALUES
(14, 14, 10, 2, 40000),
(15, 14, 11, 1, 35000),
(16, 14, 13, 1, 50000);