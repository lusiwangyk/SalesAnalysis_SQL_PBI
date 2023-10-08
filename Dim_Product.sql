SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS [Product Code],
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  
  p.[EnglishProductName] AS [Product Name], 
  ps.EnglishProductSubcategoryName AS [Product Subcategory Name],
  pc.EnglishProductCategoryName AS [Product Category Name],
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  
  p.[Color] AS [Product Color],
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  
  p.[Size] AS [Product Size], 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  
  p.[ProductLine] AS [Product Line], 
  p.[DealerPrice] AS [Dealer Price],
  --,[Class]
  --,[Style]
  
  p.[ModelName] AS [Model Name], 
  --,[LargePhoto]
  
  p.[EnglishDescription] AS [Product Description], 
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  
  p.[Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS p 
LEFT JOIN [dbo].[DimProductSubcategory] AS ps 
ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN [dbo].[DimProductCategory] AS pc
ON ps.ProductCategoryKey = pc.ProductCategoryKey 
