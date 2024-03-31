/*Identify the Stores with the Highest Average Sale Price:
*/
use motorbike_dealer;

SELECT 
    store_id, AVG(price) AS average_sale_price
FROM
    sales
GROUP BY store_id
ORDER BY average_sale_price DESC
LIMIT 5
;

/*
1. The insights reflect a high-end product assortment from the stores. These reflects customer preferences and will help optimize
startegies to retain them by personalized sales and aftercare
2. These insights will help evaluate the brand image positioning and plan for adjustment to  enhance customer experience in these stores
3. These stores will serve as a benchmark for other stores and used to analyze competition
4. The insights inform price strategy. The business will evaluate premium pricing success and adjust as neccessary
    
    
