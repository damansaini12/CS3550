--1 DONE
--Select OrderID, CustomerID, OrderDate 
--	FROM [Sales].[Orders] 
		
--	Order BY OrderDate DESC;


--2 DONE
--Select O.CustomerID, C.CustomerName, C.DeliveryAddressLine1, C.DeliveryAddressLine2, C.DeliveryPostalCode
--	FROM [Sales].[Orders] O 
--	Inner Join
--	[Sales].[Customers] C on C.CustomerID = O.CustomerID
--	Where C.DeliveryPostalCode = '90204';


--3 DONE
--Select O.CustomerPurchaseOrderNumber, O.SalespersonPersonID, C.CreditLimit  From [Sales].[Orders] O
--	Inner Join
--	[Sales].[Customers] C on C.CustomerID = O.CustomerID;

--4 DONE
--Select C.CustomerID, C.CustomerName,  C.CreditLimit 
--	from [Sales].[Customers] C 
--	Where C.CreditLimit = '3000' or C.CreditLimit = '2940' or C.CreditLimit = '2000'
--	Order by C.CreditLimit;

--5 DONE
--Select C.CustomerName 
--	from [Sales].[Customers] C
--	--Where CONTAINS(C.CustomerName, '"*toys*"'); WHY did this line not work?
--	Where C.CustomerName LIKE '%toys%';


--6 DONE
--Select CustomerID, OrderDate
--	From [Sales].[Orders] 
--	Where OrderDate Between '2010-01-01' And '2019-01-01'
	