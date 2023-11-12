SELECT
  p.Id_Product,
  p.nama_product,
  COUNT(*) AS jumlah_pembelian
FROM
  detail_order d
JOIN
  product p ON d.Id_Product = p.Id_Product
GROUP BY
  p.Id_Product, p.nama_product
ORDER BY
  jumlah_pembelian DESC
LIMIT 3;