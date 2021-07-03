SELECT * FROM Customer AS A
JOIN
(SELECT customer_id AS cid, count(*) AS cnt FROM Profile GROUP BY customer_id HAVING cnt > 2) AS B
ON 
A.id = B.cid
WHERE A.creation_date >= DATE_SUB(NOW(),INTERVAL 1 YEAR) 
