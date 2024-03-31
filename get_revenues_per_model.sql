/*Find the Total Sales Amount for Each Motorbike Model (Including Models with Zero Sales)*/

use motorbike_dealer;
SELECT 
    m.model_id,
    m.model_name,
    COUNT(s.sale_id) AS times_sold,
    COALESCE(SUM(s.price)) AS revenues
FROM
    motorbike_models m
        JOIN
    sales s ON m.model_id = s.model_id
    group by model_id
    order by revenues desc
;

/* Model_id 10 is a hot seller, sold 25 times and generated the most revenues, $103,702
All models have bee sold atleast once, the least bought is model_ID 1, a sportbike bought 8 times
 */