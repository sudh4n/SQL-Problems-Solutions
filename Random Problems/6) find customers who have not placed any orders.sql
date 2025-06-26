"""Tables:
Customers

customer_id	customer_name
1	Alice
2	Bob
3	Charlie

Orders

order_id	customer_id	amount
101	1	200
102	1	100

✅ Expected Output:
customer_name
Bob
Charlie"""

#Solution

SELECT c.customer_name
FROM Customers c
LEFT JOIN Orders o 
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
