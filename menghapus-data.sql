--menghapus data pada tabel customer order berdasarkan status selesai--
DELETE FROM customer_order WHERE status = 'selesai';

--menghapus data dari tabel detail_order yang sesuai dengan data terakhir--
DELETE d1
FROM detail_order d1
JOIN (
    SELECT Id_order, Id_DetailOrder
    FROM detail_order
    ORDER BY Id_DetailOrder DESC
    LIMIT 1
) d2 ON d1.Id_order = d2.Id_order AND d1.Id_DetailOrder = d2.Id_DetailOrder;
