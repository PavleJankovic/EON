 SELECT customer_id, profile_name, year_of_birth FROM Profile  AS A
JOIN 
	(SELECT customer_id AS custid, COUNT(*) AS cnt FROM Profile GROUP BY customer_id HAVING cnt > 1) AS B
	ON A.customer_id = B.custid
WHERE A.year_of_birth <= (YEAR(CURDATE()) - 65)
