CREATE PROCEDURE [dbo].[sp_InsertItemsSales]
	@IdSales int,
	@IdProducts int,
	@Price Numeric(18,0),
	@Quantity int
AS
	SET NOCOUNT ON
	INSERT INTO item_sales (Id_sales,Id_product,price,Quantity)
	VALUES (@IdSales, @IdProducts, @Price, @Quantity)

	select distinct @@IDENTITY as Sales_Id from sales