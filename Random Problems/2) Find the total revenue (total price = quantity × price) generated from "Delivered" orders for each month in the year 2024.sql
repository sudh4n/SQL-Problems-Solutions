Question:

'''You have a table called Orders with the following columns:

order_id	order_date	customer_id	product	quantity	price	status
1	2024-01-05	101	Laptop	1	50000	Delivered
2	2024-01-10	102	Phone	2	20000	Pending
3	2024-01-15	101	Mouse	3	500	Delivered
4	2024-02-01	103	Tablet	1	15000	Cancelled
5	2024-02-10	102	Laptop	1	48000	Delivered
6	2024-02-15	101	Phone	1	22000	Pending
Question:
Write an SQL query to find the total revenue (total price = quantity × price) generated from "Delivered" orders for each month in the year 2024.

Expected Output Format:
month	            total_revenue
2024-01	          51500
2024-02	          48000'''

Solution:

SELECT 
LEFT(order_date, 7) AS month,  -- Extract YYYY-MM and takes only 7 characters
SUM(quantity * price) AS total_revenue  
FROM 
Orders
WHERE 
status = 'Delivered'  -- only "Delivered" orders
GROUP BY 
month;
