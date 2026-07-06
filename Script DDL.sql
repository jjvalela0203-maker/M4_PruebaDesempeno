--Creation of tables and relationships between them

create type Category as enum ('Herramientas','Consumibles','EPP');

create table Products(
ProductID serial primary key not null,
ProductName varchar(255) not null,
Category Category not null,
UnitPrice int4 not null
);

create table Suppliers(
SupplierID serial primary key not null,
SupplierName varchar(255) not null,
SupplierCity varchar(255) not null
);

create table Warehouses(
WarehouseID serial primary key not null,
WarehouseName varchar(255) not null,
WarehouseCity varchar(255) not null
);

create type Movement as enum ('IN','OUT');

create table Purchases(
PurchaseID serial primary key not null,
SupplierID int4,
constraint fk_supplier
foreign key (SupplierID)
references Suppliers(SupplierID),
WarehouseID int4,
constraint fk_warehouse
foreign key (WarehouseID)
references Warehouses(WarehouseID),
ProductID int4,
constraint fk_products
foreign key (ProductID)
references Products(ProductID),
Quantity int4 not null,
MovementType Movement not null
);


