# Write your MySQL query statement below
# HimanshuSingh924

-- select
--     customer_number
-- from 
--     Orders
-- GROUP BY
--     customer_number
-- ORDER BY COUNT(order_number) DESC
-- LIMIT 1;

select customer_number
from Orders
GROUP BY customer_number 
HAVING COUNT(*) = (
    select MAX(cnt)
    from (
        select COUNT(*) as cnt
        from Orders
        GROUP BY customer_number
    ) t
);