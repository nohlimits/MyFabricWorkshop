GOLD

CREATE OR ALTER VIEW v_aggregate_sale_by_date_city AS
SELECT * FROM [wwilakehouse_silver].[dbo].[aggregate_sale_by_date_city]
GO

CREATE OR ALTER VIEW v_aggregate_sale_by_date_employee AS 
SELECT * FROM [wwilakehouse_silver].[dbo].[aggregate_sale_by_date_employee]
GO

CREATE OR ALTER VIEW v_dimension_city AS
SELECT * FROM [wwilakehouse_silver].[dbo].[v_dimension_city]
GO

CREATE OR ALTER VIEW v_dimension_customer AS
SELECT * FROM [wwilakehouse_silver].[dbo].[v_dimension_customer]
GO

CREATE OR ALTER VIEW v_dimension_date AS
SELECT * FROM [wwilakehouse_silver].[dbo].[v_dimension_date]
GO

CREATE OR ALTER VIEW v_dimension_employee AS
SELECT * FROM [wwilakehouse_silver].[dbo].[v_dimension_employee]
GO

CREATE OR ALTER VIEW v_dimension_stock_item AS
SELECT * FROM [wwilakehouse_silver].[dbo].[v_dimension_stock_item]
GO

CREATE OR ALTER VIEW v_fact_sales AS
SELECT * FROM [wwilakehouse_silver].[dbo].[v_fact_sales]
GO
