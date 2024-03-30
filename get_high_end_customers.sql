/* Identify the Customers Who Purchased Motorbikes with a Price Above the Average Price
*/
use motorbike_dealer;

SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    s.price as amount_spent
FROM
    customers c
        JOIN
    sales s ON c.customer_id = s.customer_id
WHERE
    s.price > (select AVG(price)from sales)
;
/*	1. these are customers who have spent more than the average price of the motorbike sales.
	2. They may represent a higher CLV group necessary for targeted marketing,premium customer support and exclusive deals
    3. The dealership may also get insights from these customers to identify cross and up-selling opportunities that
    complement these high end bikes.
    4. They can also optimize their CRM with these customers via follow-ups and personalizatio
*/
    
