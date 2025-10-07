# SalesDB Project

## Overview
This project demonstrates how to create a **SQL Server database**, create a **table**, and insert data manually using SQL `INSERT` statements. It also includes queries to verify the data.

---

## Database
**Database Name:** `SalesDB`

---

## Table
**Table Name:** `SalesData`  

| Column Name | Data Type       | Description                     |
|-------------|----------------|---------------------------------|
| ID          | INT IDENTITY    | Primary key, auto-incremented  |
| Product     | NVARCHAR(100)   | Name of the product             |
| Category    | NVARCHAR(100)   | Product category                |
| Price       | DECIMAL(10,2)   | Product price                   |
| Quantity    | INT             | Quantity sold                   |
| SaleDate    | DATE            | Date of sale                    |

---

## SQL Script

### 1. Create Database and Table

```sql
IF DB_ID('SalesDB') IS NULL
BEGIN
    CREATE DATABASE SalesDB;
END
GO

USE SalesDB;
GO

IF OBJECT_ID('dbo.SalesData', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.SalesData (
        ID INT IDENTITY(1,1) PRIMARY KEY,
        Product NVARCHAR(100),
        Category NVARCHAR(100),
        Price DECIMAL(10,2),
        Quantity INT,
        SaleDate DATE
    );
END
GO
