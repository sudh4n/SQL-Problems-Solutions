"""You have two tables:

Customers
customer_id	customer_name
1	           Alice
2	           Bob
3	           Charlie
4	           David

Orders
order_id	customer_id	amount
101	        1	        500
102	        2	        300
103	        1	        200
  
  Expected Output:

customer_name
Charlie
David"""

#Solution
SELECT c.customer_name
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL

