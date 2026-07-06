# RIWI Suppliers Database

## Project Description

This project consists of the design and implementation of a normalized PostgreSQL database based on a raw Excel dataset provided by RIWI. The original data contained inconsistencies such as duplicated values, different writing formats, and non-standardized information.

The database was created to organize suppliers, products, warehouses, and inventory movements in a structured relational model that allows efficient storage, querying, and maintenance of the information.

---

## Technologies Used

- PostgreSQL
- Docker
- Docker Compose
- DBeaver
- SQL

---

## Database Engine Used

- PostgreSQL 17

The database is executed inside a Docker container and managed using DBeaver.

---

## Database Normalization Process

The original Excel dataset contained several inconsistencies, including:

- Different spellings for cities.
- Different spellings for supplier names.
- Different spellings for warehouse names.
- Inconsistent product prices.
- Repeated information.

To improve data quality, the following normalization steps were applied:

- Standardized city names.
- Standardized supplier names.
- Standardized warehouse names.
- Standardized product prices.
- Separated the information into independent tables to eliminate redundancy.
- Created relationships using primary and foreign keys.

---

## Database Structure

The database is composed of four main tables:

### Products

Stores information about each product.

Fields:

- ProductID
- ProductName
- Category
- UnitPrice

### Suppliers

Stores supplier information.

Fields:

- SupplierID
- SupplierName
- SupplierCity

### Warehouses

Stores warehouse information.

Fields:

- WarehouseID
- WarehouseName
- WarehouseCity

### Purchases

Stores every inventory movement.

Fields:

- PurchaseID
- SupplierID
- WarehouseID
- ProductID
- Quantity
- MovementType

Relationships:

- One Supplier → Many Purchases
- One Warehouse → Many Purchases
- One Product → Many Purchases

---

## Entity Relationship Model (ERM)

The ERM is included in the file:

**MerRiwiSuppliers.pdf**

It represents the relationships between Products, Suppliers, Warehouses, and Purchases.

---

## Instructions to Create the Database

1. Clone the repository.

```bash
git clone https://github.com/jjvalela0203-maker/M4_PruebaDesempeno.git
```

2. Enter the project folder.

```bash
cd M4_PruebaDesempeno
```

3. Start PostgreSQL using Docker Compose.

```bash
docker compose up -d
```

4. Execute the file:

```
Script DDL.sql
```

to create all database objects.

---

## Instructions to Load Data

After creating the database:

1. Execute

```
Script DML.sql
```

2. Verify that the tables contain data.

3. Execute the queries located in

```
SQL Querys.sql
```

---

## SQL Queries Explanation

### Query 1 – Units sold per purchase

Displays the product name and the quantity associated with each purchase.

### Query 2 – Warehouse where a product comes from

Shows the warehouse related to every purchased product.

### Query 3 – Total purchases per supplier

Calculates the total amount purchased from each supplier by multiplying the quantity by the unit price.

### Query 4 – Total movements per warehouse

Counts the number of inventory movements registered for each warehouse.

### Query 5 – Product with the highest purchase volume

Returns the product with the greatest total purchased quantity.

---

## Developer Information

**Full Name:** Juan José Varela

**Clan:** Micaela
