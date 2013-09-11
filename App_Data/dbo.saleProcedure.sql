CREATE PROCEDURE [dbo].[sp_InsertSales]
	@Date datetime,
	@Price Numeric(18,0),
	@UserId int
AS
	SET NOCOUNT ON
	INSERT INTO sales (Date_sales, price_item, Id_user)
	VALUES (@Date, @Price, @UserId)

	select distinct @@IDENTITY as Sales_Id from sales

