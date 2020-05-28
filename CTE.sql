

WITH calculate (totalSales, salesPerson) As (


	SELECT  SUM(FACT.Sale.[Tax Rate] * fACT.SALE.[Unit Price]) , fact.sale.[Salesperson Key] 
		FROM FACT.SALE 
		INNER JOIN Dimension.Customer on Dimension.Customer.[Customer Key] = Fact.sale.[Customer Key] 
		WHERE Dimension.Customer.[Postal Code] = '90374' 
		group by fact.sale.[Salesperson Key]
		)

SELECT totalSales, salesPerson from calculate;

