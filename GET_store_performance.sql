/* Find the Store(s) with the Lowest Number of Sales Transactions:
*/
use motorbike_dealer;

SELECT 
    st.store_id,
    COUNT(s.sale_id) AS items_sold,
    SUM(s.price) AS revenues
FROM
    sales s
        JOIN
    stores st ON s.store_id = st.store_id
GROUP BY st.store_id
ORDER BY revenues ASC
;

/* 1. Some stores have sold only once suggesting follow-ups
2. Highest revenues are $81K-$84K
3. The business should investigate if store location is afffecting sales as residents around the stores may not be bike lovers.
	Comparisons should be made between high and low performers
4. Optimize inventory management as the store may have slow-moving stock. Some stock can be re-populated to highperfroming stores. 
5. Dealership can focus its resources towards enhaning store operations and sales strategies

*/
    
