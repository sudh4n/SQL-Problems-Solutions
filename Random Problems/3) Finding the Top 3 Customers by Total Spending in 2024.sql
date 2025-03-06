Question:

'''Problem Statement:
You are given a table called Sales with the following schema:

Column Name	Data Type	Description
sale_id	INT (PK)	Unique ID for each sale
product_id	INT	ID of the product sold
customer_id	INT	ID of the customer who made the purchase
sale_date	DATE	Date of the sale
amount	DECIMAL(10,2)	Sale amount in USD

Table: Sales
  
sale_id	product_id	customer_id	sale_date	amount
1	101	102	2024-01-15	1500.50
2	105	201	2024-02-10	2000.00
3	103	305	2024-03-05	1800.30
4	101	102	2024-04-12	1200.00
5	107	201	2024-05-20	2500.75
6	110	102	2024-06-25	2300.00
7	102	305	2024-07-18	2000.00
8	104	409	2024-08-22	1400.00
9	108	201	2024-09-30	500.00
10	109	502	2024-10-05	800.00
  
Expected Output:
customer_id	total_spent
102	5000.50
201	4500.75
305	3800.30'''

Solution:

SELECT customer_id, SUM(amount) AS total_spent
FROM Sales
WHERE sale_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 3;
