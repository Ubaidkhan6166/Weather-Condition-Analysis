USE [westren country financial data]
GO

SELECT [Segment]
      ,[Country]
      ,[Product]
      ,[Discount_Band]
      ,[Units_Sold]
      ,[Manufacturing_Price]
      ,[Sale_Price]
      ,[Gross_Sales]
      ,[Discounts]
      ,[Sales]
      ,[COGS]
      ,[Profit]
      ,[Date]
      ,[Month_Number]
      ,[Month_Name]
      ,[Year]
  FROM [dbo].[western country financial data CVS]

GO

create PROCEDURE PROCEDUREOFWCFDATA 
@segment nvarchar(50),
@country nvarchar(50),
@product nvarchar(50),
@discount_band nvarchar(50),
@unit_sold money,
@manufacturing_price money,
@sale_price money,
@gross_sales money,
@sales money,
@profit nvarchar,
@salescount money output
as
begin
select @segment = count(sales) from [western country financial data CVS] where sales =@sales
end



