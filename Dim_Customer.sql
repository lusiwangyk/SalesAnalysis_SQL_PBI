SELECT 
  c.CustomerKey,
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.FirstName,
  --,[MiddleName]
  c.LastName,
  c.FirstName + ' ' + c.LastName AS [Full Name],
  --,[NameStyle]
  --,[BirthDate] 
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.Gender WHEN 'F' THEN 'Female'
	   WHEN 'M' THEN 'Male' END AS Gender,
  --,[EmailAddress]
  --,[YearlyIncome] 
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.DateFirstPurchase,
  --,[CommuteDistance]
  g.City AS [Customer City]
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
  LEFT JOIN [dbo].[DimGeography] AS g 
  ON c.GeographyKey = g.GeographyKey
ORDER BY c.CustomerKey ASC

