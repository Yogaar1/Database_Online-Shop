-- Create Customer table
CREATE TABLE Customer (
    Id_Customer INT NOT NULL PRIMARY KEY,
    nama_customer VARCHAR(255),
    email VARCHAR(255),
    password VARCHAR(255),
    alamat_customer TEXT
);

-- Create CustomerOrder table
CREATE TABLE Customer_Order (
    Id_order INT NOT NULL PRIMARY KEY,
    Id_Customer INT,
    tanggal_order DATE,
    status VARCHAR(50),
    FOREIGN KEY (Id_Customer) REFERENCES Customer(Id_Customer)
);

-- Create DetailOrder table
CREATE TABLE Detail_Order (
    Id_DetailOrder INT NOT NULL PRIMARY KEY,
    Id_order INT,
    Id_Product INT,
    Jumlah INT,
    Harga DECIMAL(10, 2),
    FOREIGN KEY (Id_order) REFERENCES Customer_Order(Id_order),
    FOREIGN KEY (Id_Product) REFERENCES Product(Id_Product)
);

-- Create Product table
CREATE TABLE Product (
    Id_Product INT NOT NULL PRIMARY KEY,
    nama_product VARCHAR(255),
    deskripsi_product TEXT,
    harga DECIMAL(10, 2),
    stock_product INT,
    Id_Kategori INT,
    gambar_product VARCHAR(255),
    FOREIGN KEY (Id_Kategori) REFERENCES Kategori(Id_Kategori)
);

-- Create Kategori table
CREATE TABLE Kategori (
    Id_Kategori INT NOT NULL PRIMARY KEY,
    Nama_Kategori VARCHAR(255),
    Deskripsi_Kategori TEXT,
    jumlah_product INT
);

SHOW TABLES