-- Proyecto integrador: Boticas Vida Sana
-- Venta perdida por falta de stock, por botica, en noviembre.
-- Lógica: lo que un producto vende por día con stock,
-- multiplicado por los días que estuvo agotado.

SELECT botica,
       ROUND(SUM(unidades * 1.0 / (30 - dias_sin_stock) * dias_sin_stock * precio), 2) AS venta_perdida
FROM ventas
GROUP BY botica
ORDER BY venta_perdida DESC;

-- Resultado: San Borja 1209.79, Surco 400.00, Miraflores 300.00
-- Nota: el 1.0 evita que SQLite elimine los decimales al dividir enteros.
