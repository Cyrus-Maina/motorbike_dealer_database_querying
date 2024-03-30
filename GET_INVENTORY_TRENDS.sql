/* Find the Motorbike Models with the Highest Quantity in Inventory Across All Stores:
*/
use motorbike_dealer;

SELECT 
    YEAR(s.sale_date) AS calendar_year,
    m.model_id,
    m.model_name,
    SUM(i.quantity) AS SKUs
FROM
    inventory i
        JOIN
    motorbike_models m ON i.model_id = m.model_id
        JOIN
    sales s ON s.model_id = m.model_id
GROUP BY m.model_id , calendar_year
ORDER BY  calendar_year DESC ,SKUs desc
;

/* RECOMMENDATIONS
1. They can use the results to ensure popular SKUs are efficiently replenished to meet CX satisfaction
2. The results will help identify struggling SKUs which need marketing support to offset the stock. Such stock can be put on a halt
3. They can efficiently capitalize on popular SKUs e.g., models 1,3 and 2 via deals and marketing
4. These inventory data collected over the years will help identify trends and adjust accordingly e.g. the Cruiser has been 
	dipping in stock suggesting a slow-moving trend thus they can be procured less .


*/