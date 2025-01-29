Question:

You are given a database table called Orders, which keeps track of customer purchases. Write an SQL query to find the top 3 customers who have spent the most money on orders.

Table: Orders
OrderID	CustomerID	OrderDate	TotalAmount
1	       101	      2024-01-10	250
2	       102	      2024-01-12	300
3	       101	      2024-01-15	150
4	    103	          2024-01-18	500
5	104	              2024-01-20	700
6	102	              2024-01-25	400
7	103	              2024-01-28	100
8	101	              2024-01-30	200
Expected Output:
A list of the top 3 customers (by CustomerID) who have spent the highest TotalAmount across all their orders.

Example Output:
CustomerID	TotalSpent
104	        700
103	        600
102	        700


Solution:

SELECT CustomerID, SUM(TotalAmount) AS TotalSpent
FROM Orders
GROUP BY CustomerID
ORDER BY TotalSpent DESC
LIMIT 3;
