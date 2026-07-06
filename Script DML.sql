-- Insertions

insert into Products (productname, category, unitprice)
values
('Disco de Corte 4.5','Herramients',11000),
('Electrodo E6013','Consumibles', 35000),
('Guantes de Nitrilo','EPP', 15000),
('Casco Industrial','EPP', 10000 );

insert into Suppliers (suppliername, suppliercity)
values
('Aceros del Norte S.A.S', 'Cartagena'),
('Industriales SAS','Barranquilla'),
('Suministros Global SAS', 'Santa Marta');

insert into warehouses (warehousename, warehousecity)
values
('Bodega Costa','Santa Marta'),
('Centro Logistico Norte','Cartagena'),
('Bodega Central','Barranquilla');

insert into Purchases (supplierid, warehouseid, productid, quantity, movementtype)
values
(1,2,3, 147, 'IN'),
(2, 1, 4, 50, 'OUT'),
(3, 3, 1, 200, 'IN'),
(1, 2, 2, 85, 'OUT')

--Updates

update suppliers s
set suppliername = 'Dotaciones Industriales SAS'
where s.supplierid = 2;

--Deletes

delete products p
where p.unitprice < 10000;
