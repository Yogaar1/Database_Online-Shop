--Update data ditabel customer--
UPDATE customer
SET alamat_customer = 'Jalan Raya No. 456'
WHERE Id_Customer = 15;

--Update data ditabel customer order--
UPDATE customer_order
SET status = 'Done'
WHERE Id_order = 7;

--Update data ditabel detail order--
UPDATE detail_order
SET Jumlah = 2, Harga = 70000
WHERE Id_DetailOrder = 15;


--Update data ditabel kategori--
UPDATE kategori
SET Nama_Kategori = 'Hobi dan Mainan'
WHERE Id_Kategori = 7;

--Update data ditabel product--
UPDATE product
SET Id_kategori = 7
WHERE Id_Product = 2;
