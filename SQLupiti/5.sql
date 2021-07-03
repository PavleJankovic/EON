select username, password FROM Customer AS A
JOIN
Profile AS B
ON A.id = B.customer_id
WHERE TIMESTAMPDIFF(MONTH, A.creation_date, B.creation_date) >= 3
AND TIMESTAMPDIFF(MONTH, A.creation_date, B.creation_date) < 6

 
