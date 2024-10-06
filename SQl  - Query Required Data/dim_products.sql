-- SQL Query to categorize products based on their price

SELECT 
    ProductID,  
    ProductName,  
    Price,  

    CASE 
        WHEN Price < 100 THEN 'Low'  
        WHEN Price BETWEEN 100 AND 300 THEN 'Medium' 
        ELSE 'High'  
    END AS PriceCategory  

FROM dbo.products
ORDER BY PriceCategory  ;  