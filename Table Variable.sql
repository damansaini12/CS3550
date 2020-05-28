CREATE PROCEDURE TableVariable
AS	

DECLARE @tv	TABLE

(
	SalespersonPersonID int
)

INSERT INTO @tv 
	
	SELECT TOP 1  O.SalespersonPersonID
		FROM [Sales].[Orders] O
		JOIN [Sales].[OrderLines] OL ON O.OrderID = OL.OrderID
		WHERE YEAR(O.OrderDate) = '2013'
		GROUP BY O.SalespersonPersonID
		ORDER BY SUM(OL.Quantity * OL.UnitPrice) DESC


	Select CT.CustomerName, CT.DeliveryAddressLine1, SUM(OL.Quantity * OL.UnitPrice) AS TOTAL_AMOUNT
	FROM [Sales].[Customers] CT
	JOIN [Sales].[Orders] O ON O.CustomerID = CT.CustomerID
	JOIN [Sales].[OrderLines] OL ON O.OrderID = OL.OrderID
	JOIN @tv T  ON T.SalespersonPersonID = O.SalespersonPersonID
	GROUP BY CT.CustomerName, CT.DeliveryAddressLine1;
	

	
	



