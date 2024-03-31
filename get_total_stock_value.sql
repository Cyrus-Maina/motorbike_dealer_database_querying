/*Calculate the Total Inventory Value for Each Motorbike Model Across All Stores:
*/
use motorbike_dealer;

SELECT 
    m.model_name,
    i.model_id,
    SUM(i.quantity) AS total_stock,
    SUM(i.quantity * s.price) AS total_stock_value
FROM
    inventory i
        JOIN
    sales s ON i.model_id = s.model_id
        JOIN
    motorbike_models m ON m.model_id = s.model_id
GROUP BY i.model_id
ORDER BY total_stock_value DESC
;
    
/* 1. The results will help forecast sales and strategize how to maximize on that and communicate the decisions to all the stores.
2. Models with high stock value reflect high sales and the business may strategize on capitalizing on them in addition to
	optimize procurement to ensure they are replenished in a timely manner to meet customer satisfaction and reduce logistics cost
3. The results will inform pricing with a desired profit margin and competitive edge in mind
*/


*/