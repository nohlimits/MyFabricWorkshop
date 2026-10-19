USE [wwilakehouse];


GO
CREATE SCHEMA [gold];


GO
CREATE OR ALTER VIEW gold.v_aggregate_sale_by_date_city
AS
SELECT *
FROM   [wwilakehouse].[silver].[aggregate_sale_by_date_city];


GO
CREATE OR ALTER VIEW gold.v_aggregate_sale_by_date_employee
AS
SELECT *
FROM   [wwilakehouse].[silver].[aggregate_sale_by_date_employee];


GO
CREATE OR ALTER VIEW gold.v_dimension_city
AS
SELECT *
FROM   [wwilakehouse].[silver].[v_dimension_city];


GO
CREATE OR ALTER VIEW gold.v_dimension_customer
AS
SELECT *
FROM   [wwilakehouse].[silver].[v_dimension_customer];


GO
CREATE OR ALTER VIEW gold.v_dimension_date
AS
SELECT *
FROM   [wwilakehouse].[silver].[v_dimension_date];


GO
CREATE OR ALTER VIEW gold.v_dimension_employee
AS
SELECT *
FROM   [wwilakehouse].[silver].[v_dimension_employee];


GO
CREATE OR ALTER VIEW gold.v_dimension_stock_item
AS
SELECT *
FROM   [wwilakehouse].[silver].[v_dimension_stock_item];


GO
CREATE OR ALTER VIEW gold.v_fact_sales
AS
SELECT *
FROM   [wwilakehouse].[silver].[v_fact_sales];