--memasukan data ketabel Customer--

INSERT INTO Customer (Id_Customer, nama_customer, email, password, alamat_customer)
VALUES
(1, 'John Doe', 'john.doe@email.com', 'johndoe123', '123 Main Street, Cityville'),
(2, 'Alice Johnson', 'alice.j@email.com', 'alice123', '456 Oak Avenue, Townsville'),
(3, 'Bob Smith', 'bob.smith@email.com', 'bobpassword', '789 Pine Road, Villagetown'),
(4, 'Emily Davis', 'emily.d@email.com', 'emily456', '101 Cedar Lane, Hamletville'),
(5, 'Michael Brown', 'michael.b@email.com', 'mbrown789', '202 Maple Street, Boroughburg'),
(6, 'Jessica Miller', 'jessica.m@email.com', 'jessmiller', '303 Elm Court, District City'),
(7, 'Ryan Wilson', 'ryan.w@email.com', 'wilsonryan', '404 Birch Avenue, Township'),
(8, 'Olivia White', 'olivia.white@email.com', 'oliviapass', '505 Pine Lane, Villageburg'),
(9, 'Ethan Taylor', 'ethan.t@email.com', 'ethan1234', '606 Oak Road, Metropolis'),
(10, 'Sophia Anderson', 'sophia.a@email.com', 'sophia567', '707 Cedar Street, Uptown'),
(11, 'Liam Garcia', 'liam.g@email.com', 'liamgarcia', '808 Birch Lane, Downtown'),
(12, 'Ava Martinez', 'ava.m@email.com', 'avapass', '909 Elm Avenue, Suburbia'),
(13, 'Noah Hernandez', 'noah.h@email.com', 'noah456', '123 Pine Street, Hamletville'),
(14, 'Isabella Robinson', 'isabella.r@email.com', 'isabellarob', '456 Oak Court, Villagetown'),
(15, 'Mason Turner', 'mason.t@email.com', 'turnermason', '789 Maple Lane, Cityville');

--memasukan data ke tabel Customer_Order--

INSERT INTO customer_order(Id_order,Id_Customer,tanggal_order,status)
VALUES
(1,2,'2023-11-06','Done'),
(2,5,'2023-11-06','Done'),
(3,3,'2023-11-06','Done'),
(4,1,'2023-11-07','Done'),
(5,8,'2023-11-07','Done'),
(6,6,'2023-11-08','Done'),
(7,4,'2023-11-08','Pending'),
(8,7,'2023-11-08','Done'),
(9,12,'2023-11-08','Pending'),
(10,14,'2023-11-09','On Procces'),
(11,9,'2023-11-09','On Procces'),
(12,10,'2023-11-09','On Procces'),
(13,15,'2023-11-09','On Procces');

--memasukan data ke tabel detail order--
INSERT INTO `detail_order` (Id_DetailOrder, Id_order, Id_Product, Jumlah, Harga)
VALUES
(1, 1, 1, 1, 25000000), 
(2, 2, 3, 1, 5000000), 
(3, 3, 15, 3, 135000),
(4, 4, 18, 1, 12000), 
(5, 5, 6, 2, 500000),
(6, 6, 4, 2, 120000),
(7, 7, 8, 1, 5500000),
(8, 8, 17, 3, 75000),
(9, 9, 3, 2, 10000000),
(10, 10, 9, 3, 24000),
(11, 11, 14, 2, 70000),
(12, 12, 16, 5, 30000), 
(13, 13, 19, 2, 106000);

--memasukan data ke tabel kategori--

INSERT INTO Kategori (Id_Kategori, Nama_Kategori, Deskripsi_Kategori, jumlah_product)
VALUES
(1, 'Elektronik', 'Kategori produk elektronik', NULL),
(2, 'Pakaian dan Aksesoris', 'Kategori pakaian dan aksesoris', NULL),
(3, 'Cosmetics', 'Kategori Cosmetics kecantikan dan perawatan diri', NULL),
(4, 'Kesehatan dan Kebugaran', 'Kategori Kesehatan dan Kebugaran', NULL),
(5, 'Furnitur Rumah Tangga', 'Kategori Furnitur Rumah Tangga', NULL),
(6, 'Makanan dan Minuman', 'Kategori Makanan dan Minuman', NULL),
(7, 'Mainan dan Hobi', 'Kategori Mainan dan Hobi', NULL),
(8, 'Buku atau Media', 'Kategori Buku atau Media', NULL),
(9, 'Otomotif', 'Kategori Otomotif', NULL),
(10, 'Perlengkapan Bayi dan Anak', 'Perlengkapan Bayi dan Anak', NULL);

-- Memasukkan data ke dalam tabel Product--

INSERT INTO Product (Id_Product, nama_product, deskripsi_product, harga, stock_product, Id_Kategori, gambar_product)
VALUES
(1, 'Iphone', 'Iphone new series', 25000000, 30, 1, 'gambar_Iphone.jpg'),
(2, 'Drone DJI Mavic', 'Drone DJI type Mavic', 15000000, 10, 1, 'gambar_Drone.jpg'),
(3, 'TV Panasonic', 'TV Panasonic', 5000000, 20, 1, 'gambar_TVPanasonic.jpg'),
(4, 'Dumble', 'Dumble angkat beban', 60000, 15, 4, 'gambar_Dumble.jpg'),
(5, 'Gitar Electric', 'Gitar Electric', 2180000, 6, 7, 'gambar_GitarElectric.jpg'),
(6, 'Black Denim', 'Celana denim warna hitam', 250000, 20, 2, 'gambar_BlackDenim.jpg'),
(7, 'Coca-cola', 'Coca-cola Besar', 30000, 100, 6, 'gambar_Coca-cola.jpg'),
(8, 'Kamera Canon', 'Kamera DSLR merk canon tipe ', 5500000, 8, 1, 'gambar_KameraCanon.jpg'),
(9, 'Pocari sweet', 'Pocari sweet', 8000, 50, 6, 'gambar_Pocarisweet.jpg'),
(10, 'Roti tawar', 'Roti tawar merk roti sari', 20000, 20, 6, 'gambar_Rotitawar.jpg'),
(11, 'Selai coklat', 'selai coklat merk ovaltine', 35000, 20, 6, 'gambar_Selaicoklat.jpg'),
(12, 'Kemeja Panjang Pria', 'Kemeja lengan panjang untuk pria', 120000, 10, 2, 'gambar_KemejaPanjang.jpg'),
(13, 'Roti Gandum', 'Roti gandum merk roti sari', 50000, 18, 6, 'gambar_RotiGandum.jpg'),
(14, 'Belt', 'ikat pinggang pria', 35000, 6, 2, 'gambar_Belt.jpg'),
(15, 'Beras', 'Beras merk berlian', 45000, 50, 6, 'gambar_Beras.jpg'),
(16, 'Aqua', 'Aqua botol', 6000, 32, 6, 'gambar_Aqua.jpg'),
(17, 'Gula ', 'gula no merk', 25000, 20, 6, 'gambar_Gula.jpg'),
(18, 'telur', 'telur ayam negeri', 12000, 22, 6, 'gambar_telur.jpg'),
(19, 'susu uht', 'susu anak dan balita', 53000, 30, 6, 'gambar_susuuht.jpg'),
(20, 'Kopi', 'kopi hitam', 23000, 100, 6, 'gambar_Kopi.jpg');