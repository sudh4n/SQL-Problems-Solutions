"""Tables:
Customers (same as above)

Orders

order_id	customer_id	amount
101	1	200
102	1	100
103	2	500
104	3	300

✅ Output:
customer_name	total_spent
Bob	500"""

#Solution

SELECT c.customer_name, SUM(o.amount) AS total_spent
FROM Customers c
LEFT JOIN Orders o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent;
