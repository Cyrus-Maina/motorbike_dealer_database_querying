/*List the Motorbike Models That Have Not Been Sold Yet:
*/
use motorbike_dealer;

SELECT 
    m.model_id, m.model_name, m.manufacturer
FROM
    motorbike_models m
        LEFT JOIN
    sales s ON m.model_id = s.model_id
WHERE
    s.sale_id IS NULL
;

/*
The insights help us identify dead stock and address them accordingly.
All the models have been sold atleast once
*/

    
