CREATE PROCEDURE GetAllCust
AS
	WITH tab AS (

	Select C.CustomerName, O.CustomerID, O.OrderDate, ROW_NUMBER() OVER (PARTITION BY O.CustomerID ORDER BY  O.CustomerID) AS 'RN'
	from [Sales].[Customers] C
	Left Join [Sales].[Orders] O ON O.CustomerID = C.CustomerID
	Where OrderDate = '12/31/15'
	)
	Select CustomerName, CustomerID, OrderDate from tab
	Where RN = 1;

	

