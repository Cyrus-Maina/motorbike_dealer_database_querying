/*List the Customers Who Have Purchased Motorbikes at Multiple Stores
*/
use motorbike_dealer;
SELECT 
    c.customer_id, COUNT(s.store_id) AS stores_visited
FROM
    sales s
        JOIN
    customers c ON c.customer_id = s.customer_id
GROUP BY c.customer_id
ORDER BY stores_visited DESC
;

/* 1. This insights helps identify customer loyalty and strategize how to retain them through personalized sales whichever store
	they buy from.
2. Customers with high store count(loyalty) may be intrested in cross/upselling services which enhance their
	experience. This increases revenues too.
3. Stores that have attracted many multi-store customers suggest strength worthy of analysis and benchmarking
4. Incentives that promote multi-store shopping can be marketed poised to enhance loyalty and customer satisfaction
*/



*/

