SELECT
    order_id,
    SUM(amount) as total_amount
FROM {{ ref('stg_stripe__payment') }}
GROUP BY 1
HAVING sum(amount) < 0