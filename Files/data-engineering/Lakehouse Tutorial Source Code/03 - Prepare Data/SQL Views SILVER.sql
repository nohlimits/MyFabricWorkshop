SILVER
CREATE OR ALTER VIEW v_dimension_city AS
SELECT * FROM [wwilakehouse].[dbo].[dimension_city]
GO

CREATE OR ALTER VIEW v_dimension_customer AS
SELECT * FROM [wwilakehouse].[dbo].[dimension_customer]
GO

CREATE OR ALTER VIEW v_dimension_date AS
SELECT * FROM [wwilakehouse].[dbo].[dimension_date]
GO

CREATE OR ALTER VIEW v_dimension_employee AS
SELECT * FROM [wwilakehouse].[dbo].[dimension_employee]
GO

CREATE OR ALTER VIEW v_dimension_stock_item AS
SELECT * FROM [wwilakehouse].[dbo].[dimension_stock_item]
GO

CREATE OR ALTER VIEW v_fact_sales AS
SELECT * FROM [wwilakehouse].[dbo].[fact_sale]
GO