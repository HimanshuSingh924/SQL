# Write your MySQL query statement below
#HimanshuSingh924

select class
from Courses
GROUP BY class
HAVING COUNT(*) >= 5;