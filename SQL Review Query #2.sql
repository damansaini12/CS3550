--1. There is no row with NUll InvoiceLineID

	--SELECT *
	--FROM Sales.Invoices I
	--Left Outer JOIN Sales.InvoiceLines IL ON IL.InvoiceID = I.InvoiceID
	--WHERE IL.InvoiceLineID IS NULL;

--2 DONE

	SELECT TOP 1 O.CustomerPurchaseOrderNumber, Count(IL.InvoiceID) AS total_IL_Items
		FROM [Sales].[Orders] O 
		JOIN [Sales].[Invoices] I ON O.CustomerID = I.CustomerID
		JOIN [Sales].[InvoiceLines] IL ON I.InvoiceID = IL.InvoiceID
		group by O.CustomerPurchaseOrderNumber
		ORDER BY Count(IL.InvoiceID) DESC;

--3 DONE

	--SELECT IL.TaxRate
	--	FROM [Sales].[InvoiceLines] IL
	--	JOIN [Sales].[Invoices] I ON IL.InvoiceID = I.InvoiceID
	--	GROUP BY IL.TaxRate;

--4 DONE 
	
	--SELECT TOP 1  O.SalespersonPersonID, SUM(OL.Quantity * OL.UnitPrice) AS TOTAL_AMOUNT
	--	FROM [Sales].[Orders] O
	--	JOIN [Sales].[OrderLines] OL ON O.OrderID = OL.OrderID
	--	WHERE YEAR(O.OrderDate) = '2013'
	--	GROUP BY O.SalespersonPersonID
	--	ORDER BY TOTAL_AMOUNT DESC;

--5 DONE 
	

	--SELECT MONTH(I.InvoiceDate) AS Month, 
	--		YEAR(I.InvoiceDate) as Year, 
	--		COUNT(I.InvoiceID) as NUM_OF_iNVOICES,
	--		SUM(IL.UnitPrice * IL.Quantity) as totalAmount,  
	--		SUM(IL.TaxRate * IL.UnitPrice * IL.Quantity) as TOTAL_TAX,
	--		sum(IL.Quantity) as	totalQuantity 
	--	FROM SALES.Invoices I
	--	JOIN Sales.InvoiceLines IL on IL.InvoiceID = I.InvoiceID 
	--	WHERE MONTH(InvoiceDate) between 1 and 3 and 
	--	YEAR(InvoiceDate) = 2013 
	--	GROUP BY MONTH(I.InvoiceDate), YEAR(I.InvoiceDate);

