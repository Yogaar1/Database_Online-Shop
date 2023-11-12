SELECT
  co.Id_Customer,
  AVG(do.Harga) AS rata_rata_transaksi
FROM
  detail_order do
JOIN
  customer_order co ON do.Id_Order = co.Id_Order
WHERE
  co.tanggal_order >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY
  co.Id_Customer;

--penjelasan--
--disini mengambil rata-rata transaksi dari tabel detail_order dengan kolom id_order, tanggal dan harga. id_order terhubung dengan tabel customer_order maka menggunakan metode join, lalu menggunakan kondisi where untuk memfilter transaksi dalam 1 bulan dan mengelompokkan nya berdasarkan Id_Customer dengan GROUP BY--