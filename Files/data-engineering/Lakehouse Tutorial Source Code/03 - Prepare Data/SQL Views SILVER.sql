USE [wwilakehouse];


GO
CREATE OR ALTER VIEW silver.v_dimension_city
AS
SELECT *
FROM   [wwilakehouse].[bronze].[dimension_city];


GO
CREATE OR ALTER VIEW silver.v_dimension_customer
AS
SELECT *
FROM   [wwilakehouse].[bronze].[dimension_customer];


GO
CREATE OR ALTER VIEW silver.v_dimension_date
AS
SELECT *
FROM   [wwilakehouse].[bronze].[dimension_date];


GO
CREATE OR ALTER VIEW silver.v_dimension_employee
AS
SELECT *
FROM   [wwilakehouse].[bronze].[dimension_employee];


GO
CREATE OR ALTER VIEW silver.v_dimension_stock_item
AS
SELECT *
FROM   [wwilakehouse].[bronze].[dimension_stock_item];


GO
CREATE OR ALTER VIEW silver.v_fact_sales
AS
SELECT *
FROM   [wwilakehouse].[bronze].[fact_sale];