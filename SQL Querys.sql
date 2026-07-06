--Querys

--Units sold per purchase

select 
pd.productname as product,
p.quantity as quantity
from purchases p 
inner join products pd on p.productid = pd.productid;

--Warehouse where a product comes from

select
pd.productname as product,
w.warehousename as warehouse
from purchases p 
inner join products pd on p.productid = pd.productid
inner join warehouses w on p.warehouseid = w.warehouseid;

--Total buy per supplier

SELECT 
    s.SupplierName AS "Supplier",
    SUM(p.Quantity * pd.UnitPrice) AS "Total Purchased($)"
FROM purchases p
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID
INNER JOIN Products pd ON p.ProductID = pd.ProductID
WHERE p.MovementType = 'IN' 
GROUP BY s.SupplierID, s.SupplierName
ORDER BY "Total Purchased($)" DESC;

--Total of movements per warehouse
SELECT 
    w.WarehouseName AS "Warehouse",
    w.WarehouseCity AS "City",
    COUNT(p.PurchaseID) AS "Number of movements"
FROM Warehouses w
LEFT JOIN purchases p ON w.WarehouseID = p.WarehouseID
GROUP BY w.WarehouseID, w.WarehouseName, w.WarehouseCity
ORDER BY "Number of movements" DESC;

-- product with the highest purchase volume
SELECT 
    pd.ProductName AS "Product Name",
    SUM(p.Quantity) AS "Total Volume Purchased"
FROM purchases p
INNER JOIN Products pd ON p.ProductID = pd.ProductID
WHERE p.MovementType = 'IN' -- Filtra solo compras (entradas)
GROUP BY pd.ProductID, pd.ProductName
ORDER BY "Total Volume Purchased" DESC
LIMIT 1;