
SELECT username, password FROM Customer AS A
JOIN
(SELECT customer_id, avatar_id, COUNT(*) AS cnt FROM Profile GROUP BY customer_id, avatar_id HAVING cnt >=2 ) AS B
ON A.id = B.customer_id

 
