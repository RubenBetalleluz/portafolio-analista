-- Portafolio: consultas SQL sobre las ventas de octubre
-- Tablas: ventas (8 registros) y metas (4 vendedores)

-- 1. Total vendido por vendedor
SELECT vendedor, SUM(cantidad * precio) AS total
FROM ventas
GROUP BY vendedor;

-- 2. Vendedores con ventas mayores a S/ 5,000
SELECT vendedor, SUM(cantidad * precio) AS total
FROM ventas
GROUP BY vendedor
HAVING SUM(cantidad * precio) > 5000;

-- 3. Ventas de laptops por vendedor
SELECT vendedor, SUM(cantidad * precio) AS total
FROM ventas
WHERE producto = 'Laptop'
GROUP BY vendedor;

-- 4. Cumplimiento de meta de cada vendedor, sin perder a quien no vendió
SELECT m.vendedor,
       m.meta,
       COALESCE(SUM(v.cantidad * v.precio), 0) AS total,
       ROUND(COALESCE(SUM(v.cantidad * v.precio), 0) * 100.0 / m.meta, 1) AS cumplimiento
FROM metas m
LEFT JOIN ventas v ON m.vendedor = v.vendedor
GROUP BY m.vendedor, m.meta
ORDER BY cumplimiento DESC;
