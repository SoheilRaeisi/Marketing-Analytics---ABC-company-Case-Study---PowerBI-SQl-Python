-- SQL statement to join dim_customers with dim_geography to enrich customer data with geographic information

SELECT 
    c.CustomerID,  
    c.CustomerName,  
    c.Email,  
    c.Gender,  
	c.Age,  

	CASE 
		WHEN c.age > 13 AND c.age <= 24 THEN 'Gen Alpha'
		WHEN c.age > 24 AND age <= 39 THEN 'Gen Z'
		WHEN c.age > 39 AND age <= 50 THEN 'Millennials'
		WHEN c.age > 50 AND age <= 64 THEN 'Gen X'
		WHEN c.age > 64 AND age <= 80 THEN 'Baby Boomers'
		ELSE 'Silent Generation'
	END AS generation,
    
    g.Country,  
    g.City  
FROM dbo.customers c  
LEFT JOIN dbo.geography g  ON c.GeographyID = g.GeographyID;