"""You have the following tables:

Customers
customer_id	customer_name
1	Alice
2	Bob
3	Charlie
4	David

Orders
order_id	customer_id	amount
101	1	200
102	1	300
103	2	150
104	1	100
105	3	50

✅ Task:
Write an SQL query to list the names of customers who have placed more than one order, along with the number of orders they placed.

Expected Output:

customer_name	order_count
Alice	3""" 

#Solution

SELECT c.customer_name, COUNT(o.order_id) AS order_count
FROM Customers c
JOIN Orders o 
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.customer_id) > 1;
