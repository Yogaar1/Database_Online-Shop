SELECT
  k.Id_Kategori,
  k.Nama_Kategori,
  COUNT(p.Id_Product) AS jumlah_barang
FROM
  product p
JOIN
  kategori k ON p.Id_Kategori = k.Id_Kategori
GROUP BY
  k.Id_Kategori, k.Nama_Kategori
ORDER BY
  jumlah_barang DESC
LIMIT 1;