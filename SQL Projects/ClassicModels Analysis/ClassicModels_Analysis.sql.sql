--- USING CLASSICMODELS AS DATABASE
USE classicmodels;

--- using the SELECT statement to show all columns from a table
--- 1. what are the columns contained in the customer table?

SELECT *
FROM customers;


--- 2. what are the columns found in the office table
SELECT *
FROM offices;


--- 3.  Retrieve all information from the employees table
SELECT *
FROM employees;


--- using SELECT to show specific columns

--- 1. From the customer table, your line manager has asked you to show the following columns: customer name, city, state and country
SELECT customername, city, state, country
FROM customers;


--- 2. Retrieve lastname, firstname and jobtitle from the employees table
SELECT lastname, firstname, jobtitle
FROM employees;


--- 3. As a Data Analyst, you got an email from your Line Manager notifying you of Management’s intention to 
--- communicate new policy to customers and need you to pull the contactlastname, contactfirstname, 
--- phone and addressline1 of all customers. Write a query to produce the required result.

SELECT contactlastname, contactfirstname, phone, addressline1
FROM customers;


---- WHERE CLAUSE: it is used to filter your output based on a given condittion.
--- it is used with the following operators (=, <,>, <>, <=,>=, BETWEEN, IN, LIKE etc).
--- the WHERE clause comes immediately after the FROM statement.


--- WHERE with = operator

---- QUESTIONS----

--- 1. Find all employees whose job titles are Sales Rep
SELECT employeenumber, lastname, firstname, jobtitle
FROM employees
WHERE jobtitle = 'Sales Rep';


--- 2. Find all payments that were made in January 16, 2003
--- in sql, dates are written in the format: YYYY-MM-DD


SELECT customernumber, checknumber, paymentdate, amount
FROM payments
WHERE paymentdate = '2003-01-16';


--- 3. Find all employees whose job titles are not Sales Rep
SELECT employeenumber, lastname, firstname, jobtitle
FROM employees
WHERE jobtitle <> 'Sales Rep';


--- 4. Find all employees whose job titles are Sales Rep
SELECT employeenumber, lastname, firstname, jobtitle
FROM employees
WHERE jobtitle = 'Sales Rep';


--- 5. Write a SQL code that shows all products that were produced using Motor cycles as product line.
SELECT productcode, productname, productline
FROM products
WHERE productline = 'Motorcycles';


--- WHERE with >, >=, <, <= 

--- 1.  Find the amount greater than $20,000. and your output should show customernumber, paymentdate and amount

SELECT customernumber, paymentdate, amount
FROM payments
WHERE amount > 20000;


--- 2. Pull all the details of customers with credit limit below $50,000
SELECT customername, creditlimit
FROM customers
WHERE creditlimit < 50000;


--- 3. find all payments that were made from 1st Jan 2004 and above.

SELECT customernumber, paymentdate, amount
FROM payments
WHERE paymentdate >= 2004-01-01;



--- 4. Find all payments made on or before January 1, 2004
SELECT customernumber, paymentdate, amount
FROM payments
WHERE paymentdate <= '2004-01-01';



---  WORK
--- 1. Pull all the details of employees with office code below 6
SELECT employeenumber, lastname, firstname, officecode
FROM employees
WHERE officecode  < 6;


--- 2. show all details of employees who are not residence of office with code 6 
SELECT employeenumber, lastname, firstname, officecode
FROM employees
WHERE officecode  <> 6;



--- WHERE CLASUE with BEWTEEN operator

--- 1. Write a query to retrieve all employees who are located in offices whose office code is from 1 to 3
SELECT lastname, firstname, officecode
FROM employees
WHERE officecode BETWEEN 1 AND 3;


--- 2. Retrieve products from the "products" table where the buyPrice is between $50 and $100
SELECT productcode, productname, buyprice
FROM products
WHERE buyprice BETWEEN 50 AND 100;


--- NOT BETWEEN
--- 1,2,3,4,5,6,7
--- between 2 and 4 = 2,3,4

--- not between 2 and 4 = 1,5,6,7

--- find the lastname, fistname of staff who are not residing in offices with code 1 and 3

SELECT lastname, firstname, officecode
FROM employees
WHERE officecode NOT BETWEEN 1 AND 3;


--- WORK
--- Find all payments made from Jan 1st 2004 to Jan 1 2005
	SELECT amount, paymentdate
    FROM payments
    WHERE paymentdate BETWEEN '2004-01-01' AND '2005-01-01';



--- WHERE with the AND operator
--- Find employees that are sales rep and occupying office code 1. your output should show lastname, firstname, jobtitle and officecode
SELECT lastname, firstname, jobtitle, officecode 
FROM employees
WHERE jobtitle = 'Sales Rep' 
AND officecode = 1;

--- WHERE with OR
--- Find employees that are sales rep or occupying an office whose office code is 1. 
--- Your output should show lastname, firstname, jobtitle and officecode.
SELECT lastname, firstname, jobtitle, officecode 
FROM employees
WHERE jobtitle = 'Sales Rep' 
OR officecode = 1;

--- WORK
--- 1. Find all employees whose office code is 3, job title is sales rep and employee number is 1286
SELECT lastname, firstname, jobtitle, officecode, employeeNumber 
FROM employees
WHERE jobtitle = 'Sales Rep' 
AND officecode = 3
AND employeeNumber = 1286;

--- WHERE with IN Operator
--- 1. As part of the company-wide analysis, we need to identify employees who are located in 
--- offices with office codes 1, 2, 3, 4, or 5 so as to gain insight into the distribution of our 
--- workforce across office locations. You are required to provide the above information

--- 1. 
SELECT lastname, firstname, officecode 
FROM employees
WHERE officecode =1
OR officecode = 2
or officeCode =3
OR officeCode= 4
OR officeCode = 5;

--- 2. 
SELECT lastname, firstname, officecode 
FROM employees
WHERE officecode IN (1,2,3,4,5);


--- 2. Find the employee last name, first name and jobtitle for all employees who are Sales Rep, VP Marketing and President
SELECT lastname, firstname, jobTitle 
FROM employees
WHERE jobTitle IN ('Sales Rep', 'VP Marketing', 'President');


SELECT lastname, firstname, jobTitle 
FROM employees
WHERE jobTitle NOT IN ('Sales Rep', 'VP Marketing', 'President');


--- 3. For financial analysis purposes, we need to obtain data on payments made by a selected group of 
--- customers. Specifically, we are interested in payments made by customers with the following 
--- customer IDs: 103,124,128,131 and 189. Kindly write the SQL query for this.





--- WHERE and the LIKE Operator: The LIKE operator is used with the WHERE clause to search for a specified
--- pattern in a column.

--- the LIKE is used with a widecard (%) to search for specified pattern.
 --- 'Da%' this means that the pattern created starts with 'Da'
 --- '%da' this means that the patterns you are creating ends with 'da'
 --- '%da%' this means that the pattern you are creating has 'da' in it. 
 
 
 
 --- Questions--
--- 1. retrieve lastname, firstname of all employees, whose firstname ends with 'ne'
SELECT lastname, firstname
FROM employees
WHERE firstName
LIKE '%ne';

--- 2. retrieve lastname, firstname of all employees, whose firstname starts with 'P'
SELECT lastname, firstname
FROM employees
WHERE firstName
LIKE 'P%';

--- 3. retrieve lastname, firstname of all employees who have 'o' in their firstname 
SELECT lastname, firstname
FROM employees
WHERE firstName
LIKE '%o%';

--- 4. find all customers who has 't' as the last aphabet in the their contact last name or 'an' in the contact first name.
---	Your output should show only two columns: contactlastname and contactfirstname.
SELECT contactlastname, contactfirstname
FROM customers
WHERE contactLastName LIKE '%t'
OR contactFirstName LIKE '%an%';


---- ORDER BY--- it is used to sort your rows in either in DESCENDING (DESC) or ASCENDING (ASC) form
------- QUESTIONS----
--- 1. Write a query to return contactlastname and contactfirstname, then sort by the CONTACT last name in ascending order
SELECT contactfirstname, contactlastname
FROM customers
ORDER BY contactLastName ASC;

--- 2. Retrieve the orders from the customer with customer number 103 and sorting such orders by order date in descending form
SELECT ordernumber, customernumber, orderdate
FROM orders
WHERE customernumber = 103
ORDER BY orderdate DESC;

--- work ---
--- 3. Show the information about payment with the highest amout displayed first


--- AGGREGATE FUNCTIONS
--- SUM, MIN, MAX, AVG, COUNT, DISTINCT COUNT

--- questions---
--- 1. 	what is the total amount paid by all customers
SELECT SUM(amount) AS total_amount 
FROM payments;

--- 2. show the lowest amount
SELECT MIN(amount) AS lowest_amount
FROM payments;	
 
--- 3. 	what is the highest amount paid?
SELECT MAX(amount) AS highest_amount
FROM payments;	

--- 4.	what is the average (AVG) amount paid
SELECT AVG(amount) AS Avg_amount
FROM payments;

--- 5. how many customers are there in the customer table

SELECT COUNT(customerNumber) AS total_customers
FROM customers;

--- 6. HOW MANY CUSTOMERS MADE PAYMENT
SELECT COUNT(DISTINCT customerNumber) AS N0_of_customer_who_paid
FROM payments;


--- DISTINCT
SELECT DISTINCT customerNumber
FROM payments;

SELECT *
FROM payments;

--- in a single line of code, from the payment table, return the following: 
--- total amount paid, lowest amount paid, highest amount paid and the average amount





--------------- GROUP BY --------------
--- GROUP BY CLAUSE: this is used to group your result when an aggregate function is used in your 
 --- selet statement, and you want to return more than one columns. 
 --- The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) 
 --- to group the result-set by one or more columns.

 

 --- RULES
 --- 1. the GROUP BY is used when your SELECT statement has more than one columns and an aggregate function
 --- 2. It comes after the WHERE clause in casess where you need to filter based on non-aggregate column
 --- 3. it comes after the FROM clause when your questions does not require filtering base on the WHERE clause.
 --- 4. when grouping, you GROUP BY the none-aggregate columns






----------- QUESTIONS---------

---		1 Write a query to return the number of orders in each status from the order table.
SELECT status, COUNT(orderNumber) AS num_of_orders
FROM orders
GROUP BY status;

--- 303 orders where shipped while only 3 orders were placed on hold



--- 2. Write a query to show the number of times a particular customer made payment.
SELECT customerNumber, COUNT(paymentDate) AS number_of_payment
FROM payments
GROUP BY customernumber;

--- 3.  As part of our ongoing efforts to understand customer behavior and payment patterns, we would like to obtain a 
--- report that showcases the number of times each customer has made a payment. Your result should show the customer
---  with the highest number of payments first

SELECT customerNumber, COUNT(paymentDate) AS number_of_payment
FROM payments
GROUP BY customernumber
ORDER BY number_of_payment DESC;

--- 4. WHAT IS THE TOTAL AMOUNT PAID BY CUSTOMER WITH CUSTOMER NUMBER 103

SELECT customerNumber, SUM(amount) AS total_amount
FROM payments
WHERE customerNumber = 103
GROUP BY customerNumber;

--- 5. As a way to maximize resources, your company has requested that you pull up data showing the number of 
---	products produced using the various product lines.

SELECT productline, count(productcode) AS num_of_product
FROM products
GROUP BY productLine;


--- The HAVING clause is used in conjunction with the GROUP BY clause to filter the results based on aggregate functions. 
--- Unlike the WHERE clause, which filters individual rows, the HAVING clause filters the groups of data after 
--- the GROUP BY operation has been performed. It comes after the GROUP BY

---- DIFFERENE BWT WHERE and HAVING
--- 	1. Find the total payment amount for each customer who made payments totaling more than $58,000.
	SELECT customernumber, SUM(amount) AS total_payment_amount
FROM payments
GROUP BY customernumber
HAVING total_payment_amount > 58000;

--- 	2. In the "orderdetails" table, find the sum of orders with a total revenue greater than $10000, 
---		considering the number of items ordered and the total price of each order? Display the order number, 
--- 	the total order, and the total revenue of the order.
		
SELECT orderNumber, SUM(quantityOrdered) AS total_order, SUM(quantityOrdered * priceEach) AS total_revenue
FROM orderdetails
GROUP BY orderNumber
HAVING total_revenue > 10000;

--- 	3. Write an SQL query to identify products with a total stock value greater than $10,000. Display 
---		the productCode, productName, and the total stock value.

SELECT productCode, productName, SUM(quantityInStock * buyPrice) AS total_stock_value
FROM products
GROUP BY productCode, productName
HAVING total_stock_value > 10000;


--- LIMIT: it reduce the number of rows return.

SELECT *
FROM employees
limit 5;

---- it works better, when it is used with the ORDER BY clause


---- find the first 5 customers with the highest total payment
SELECT customernumber, SUM(amount) AS total_payment
FROM payments
GROUP BY customernumber
ORDER BY total_payment DESC
LIMIT 5;

---- find the first 5 customers with the Lowest total payment

SELECT customernumber, SUM(amount) AS total_payment
FROM payments
GROUP BY customernumber
ORDER BY total_payment ASC
LIMIT 5;



---- DATE FUNCTION: YEAR, QUARTER, MONTH, DAY

SELECT *
FROM payments;

--- A date is made up of YEAR, QUARTER, MONTH AND DAY


--- YEAR

SELECT YEAR(paymentdate) AS year, paymentDate
FROM payments;

--- QUARTER

SELECT QUARTER(paymentdate) AS quarter, paymentDate
FROM payments;

--- MONTH
SELECT MONTHNAME(paymentdate) AS month, paymentdate
FROM payments;

--- DAY
SELECT DAYNAME(paymentdate) AS day
FROM payments;

--- in a single line of code, from the payment table, extract year, quarter, month and day from the paymentdate
SELECT YEAR(paymentdate) AS year, QUARTER(paymentdate) AS Qtr,
		MONTHNAME(paymentdate) AS month, DAYNAME(paymentdate) AS day
FROM payments;        


--- Count the number of orders placed in each month of the year 2004

SELECT COUNT(orderNumber) AS num_of_orders, YEAR(orderDate) AS year, MONTHNAME(orderDate) AS month
FROM orders
GROUP BY year, month
HAVING  year = 2004; 


SELECT COUNT(orderNumber) AS num_of_orders, YEAR(orderDate) AS year, MONTHNAME(orderDate) AS month
FROM orders
WHERE YEAR(orderDate) = 2004
GROUP BY year, month;


--- Find the total order  for orders placed on a Friday

SELECT COUNT(ordernumber) AS total_orders, DAYNAME(orderdate) AS day
FROM orders
GROUP BY day
HAVING day = 'Friday';


--- which year has the highest number of orders?
SELECT year(orderdate) AS year, COUNT(ordernumber) AS Num_of_orders
FROM orders
GROUP BY year;


--- which 5 month has the highest order
SELECT MONTHNAME(orderdate) AS MONTH, COUNT(ordernumber) AS Num_of_orders
FROM orders
GROUP BY MONTH
ORDER BY Num_of_orders DESC
LIMIT 5;
--- the month wihth the higehst order is 


--- List the months when each order was placed 
SELECT monthname(orderdate) AS month, year(orderdate) AS YEAR, ordernumber
FROM orders;


--- ALIASING A TABLE: it means giving a table a new name. this name does not affect the original name in the database

SELECT SUM(amount) AS total_amount
FROM payments;


SELECT amount
from payments AS pay;


---- JOIN
--- SQL JOIN: used to combine rows from two or more tables based on a related column between them.
--- JOINs can only be achieve with the help of Primary Key (PK) and Foreign Key (FK).
--- TYPES OF JOIN: INNER JOIN, , LEFT JOIN, FULL JOIN, RIGHT JOIN etc.

--- INNER JOIN: This retrieves only the matching rows between two or more tables based on a specified condition. 
--- RIGHT JOIN: This JOIN returns all rows from the right (or second) table and only the matching rows from the left (or first) table. 
--- LEFT JOIN: This JOIN returns all rows from the left (or first) table and the matching rows from the right (or second) table. 
--- FULL JOIN: This JOIN helps to combine all rows from both tables, including matching rows and non-matching rows. 


--- In order to optimize our customer relationship management and streamline our operational processes, 
--- pull up the necessary information; order date, order number and customer names from the classic Model Database. 

--- from the order table, i will select ordernumber and orderdate. the PK is ordernumber and FK customernumber
--- from the customer table, i will select customer name. the PK is customernumber


SELECT O.ordernumber, O. customernumber, O. orderdate, C. customername, C. customernumber
FROM orders AS O
INNER JOIN customers AS C
ON O.customerNumber = C.customerNumber;


--- Your Line Manager wants a holistic view of order 	transactions and product contribution for the 	
--- purpose of making decision as regards sales operation. Write a query to pull the following 
---	information to aid the decision process: order 	number, order date, product name, quantity 	ordered, and price each.

--- from the order table, i will select ordernumber, orderdate. PK ordernumber FK is customernumber
--- from the product table, i will select productname. PK productcode 
--- from the orderdetails table, i will select quantity order and price each. FK is ordernumber and productcode

SELECT O. ordernumber, O. orderdate, P. productname, OD. quantityordered, OD. priceeach
FROM orders AS O
INNER JOIN orderdetails AS OD
ON O. orderNumber = OD.orderNumber
INNER JOIN products AS P
ON P. productCode = OD.productCode;



--- Write an SQL code to help us gain a comprehensive understanding of our customers order history, including 
# those who have not yet placed any orders? This analysis will allow us to identify both active and inactive customers, 
--- facilitating targeted marketing strategies


--- emphasis on customers (customer table) left table
--- orders (order table) right table

--- from the customer table, i will select customernumber, customername, phone, addressline1, city. PK customernumber
--- from the order table, ordernumber, customernumber. PK ordernumber and FK is customernumber


SELECT C. customernumber, C. customername, C. addressline1, C. phone, C. city, O. ordernumber, O. customernumber
FROM CUSTOMERS AS C
RIGHT JOIN ORDERS AS O
ON C.customerNumber = O.customerNumber;


SELECT P. *, YEAR(P.paymentDate) AS year, Monthname(P. paymentdate) AS month, C. customername
FROM payments AS P
INNER JOIN customers AS C
ON P.customerNumber= C.customerNumber;
