CREATE DATABASE OnlineShopping;
USE OnlineShopping;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(15),
    city VARCHAR(50)
);
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Customers (name, email, phone, city) VALUES
('Rahul Sharma','rahul1@gmail.com','9876543210','Delhi'),
('Amit Kumar','amit2@gmail.com','9876543211','Noida'),
('Priya Singh','priya3@gmail.com','9876543212','Gurgaon'),
('Neha Verma','neha4@gmail.com','9876543213','Mumbai'),
('Rohit Gupta','rohit5@gmail.com','9876543214','Pune'),
('Ankit Yadav','ankit6@gmail.com','9876543215','Lucknow'),
('Pooja Mishra','pooja7@gmail.com','9876543216','Patna'),
('Suresh Patel','suresh8@gmail.com','9876543217','Ahmedabad'),
('Kiran Das','kiran9@gmail.com','9876543218','Kolkata'),
('Vikas Jain','vikas10@gmail.com','9876543219','Jaipur'),

('Sneha Kapoor','sneha11@gmail.com','9876543220','Delhi'),
('Ravi Mehta','ravi12@gmail.com','9876543221','Noida'),
('Simran Kaur','simran13@gmail.com','9876543222','Amritsar'),
('Deepak Singh','deepak14@gmail.com','9876543223','Varanasi'),
('Alok Pandey','alok15@gmail.com','9876543224','Kanpur'),
('Nisha Gupta','nisha16@gmail.com','9876543225','Indore'),
('Manish Sharma','manish17@gmail.com','9876543226','Bhopal'),
('Arjun Reddy','arjun18@gmail.com','9876543227','Hyderabad'),
('Meena Iyer','meena19@gmail.com','9876543228','Chennai'),
('Kunal Shah','kunal20@gmail.com','9876543229','Surat'),

('Ritika Roy','ritika21@gmail.com','9876543230','Kolkata'),
('Mohit Agarwal','mohit22@gmail.com','9876543231','Delhi'),
('Shreya Bose','shreya23@gmail.com','9876543232','Kolkata'),
('Nitin Saini','nitin24@gmail.com','9876543233','Jaipur'),
('Sanjay Kumar','sanjay25@gmail.com','9876543234','Patna'),
('Ramesh Gupta','ramesh26@gmail.com','9876543235','Lucknow'),
('Sunita Devi','sunita27@gmail.com','9876543236','Ranchi'),
('Aakash Singh','aakash28@gmail.com','9876543237','Delhi'),
('Divya Sharma','divya29@gmail.com','9876543238','Noida'),
('Pankaj Verma','pankaj30@gmail.com','9876543239','Gurgaon'),

('Anjali Mehta','anjali31@gmail.com','9876543240','Mumbai'),
('Tarun Jain','tarun32@gmail.com','9876543241','Pune'),
('Rahul Das','rahul33@gmail.com','9876543242','Kolkata'),
('Vivek Mishra','vivek34@gmail.com','9876543243','Varanasi'),
('Komal Singh','komal35@gmail.com','9876543244','Patna'),
('Ritu Sharma','ritu36@gmail.com','9876543245','Delhi'),
('Gaurav Kumar','gaurav37@gmail.com','9876543246','Noida'),
('Sahil Khan','sahil38@gmail.com','9876543247','Mumbai'),
('Imran Ali','imran39@gmail.com','9876543248','Hyderabad'),
('Zoya Khan','zoya40@gmail.com','9876543249','Delhi'),

('Neeraj Yadav','neeraj41@gmail.com','9876543250','Lucknow'),
('Aditi Singh','aditi42@gmail.com','9876543251','Jaipur'),
('Harsh Gupta','harsh43@gmail.com','9876543252','Kanpur'),
('Kavita Joshi','kavita44@gmail.com','9876543253','Dehradun'),
('Raj Malhotra','raj45@gmail.com','9876543254','Chandigarh'),
('Preeti Kumari','preeti46@gmail.com','9876543255','Patna'),
('Yash Thakur','yash47@gmail.com','9876543256','Bhopal'),
('Sonali Das','sonali48@gmail.com','9876543257','Kolkata'),
('Abhishek Singh','abhishek49@gmail.com','9876543258','Delhi'),
('Pallavi Gupta','pallavi50@gmail.com','9876543259','Noida');

INSERT INTO Products (product_name, price, stock) VALUES
('Laptop',55000,10),
('Mobile',20000,25),
('Headphones',1500,50),
('Keyboard',800,40),
('Mouse',500,60),
('Monitor',12000,15),
('Printer',7000,8),
('Tablet',15000,20),
('Camera',30000,5),
('Smart Watch',5000,30),

('Speaker',2500,35),
('Power Bank',1200,45),
('Charger',700,50),
('USB Cable',300,80),
('Hard Disk',4000,12),
('Pen Drive',600,70),
('Router',2000,18),
('Projector',25000,6),
('TV',40000,9),
('AC',35000,7),

('Fan',2500,20),
('Iron',1500,25),
('Mixer',3000,10),
('Fridge',30000,5),
('Washing Machine',28000,6);

INSERT INTO Orders (customer_id, order_date) VALUES
(1,'2024-01-01'),
(2,'2024-01-02'),
(3,'2024-01-03'),
(4,'2024-01-04'),
(5,'2024-01-05'),
(6,'2024-01-06'),
(7,'2024-01-07'),
(8,'2024-01-08'),
(9,'2024-01-09'),
(10,'2024-01-10'),

(11,'2024-01-11'),
(12,'2024-01-12'),
(13,'2024-01-13'),
(14,'2024-01-14'),
(15,'2024-01-15'),
(16,'2024-01-16'),
(17,'2024-01-17'),
(18,'2024-01-18'),
(19,'2024-01-19'),
(20,'2024-01-20');

INSERT INTO OrderDetails (order_id, product_id, quantity) VALUES
(1,1,1),
(1,3,2),
(2,2,1),
(2,5,2),
(3,4,1),
(3,6,1),
(4,7,1),
(4,2,1),
(5,8,2),
(5,9,1),

(6,10,1),
(6,1,1),
(7,3,2),
(7,5,1),
(8,6,1),
(8,4,2),
(9,2,1),
(9,8,1),
(10,7,1),
(10,9,1),

(11,1,1),
(12,2,2),
(13,3,1),
(14,4,1),
(15,5,2),
(16,6,1),
(17,7,1),
(18,8,2),
(19,9,1),
(20,10,1);
-- Get all customers
SELECT * FROM Customers;

-- Get order details with customer name
SELECT o.order_id, c.name, o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id;

-- Get complete order details (customer + product + quantity)
SELECT o.order_id, c.name, p.product_name, od.quantity
FROM OrderDetails od
JOIN Orders o ON od.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON od.product_id = p.product_id;

-- Find customers whose name starts with 'A'
SELECT * 
FROM Customers
WHERE name LIKE 'A%';

-- Get customers from Delhi
SELECT * 
FROM Customers
WHERE city = 'Delhi';

-- Get products with price greater than 10000
SELECT * 
FROM Products
WHERE price > 10000;

-- Get most expensive product
SELECT * 
FROM Products
ORDER BY price DESC
LIMIT 1;

-- Get orders with customer name
SELECT o.order_id, c.name, o.order_date
FROM Orders o
JOIN Customers c 
ON o.customer_id = c.customer_id;

-- Get product details per order
SELECT od.order_id, p.product_name, od.quantity
FROM OrderDetails od
JOIN Products p 
ON od.product_id = p.product_id;

-- Count total orders per customer
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN Orders o 
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- Total products per order
SELECT order_id, SUM(quantity) AS total_products
FROM OrderDetails
GROUP BY order_id;

-- Total money spent by each customer
SELECT c.name, SUM(p.price * od.quantity) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY c.name;

-- Customer who spent the most money
SELECT c.name, SUM(p.price * od.quantity) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 1;

-- Find customers who never placed any order
SELECT c.name
FROM Customers c
LEFT JOIN Orders o 
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Orders having total quantity > 2
SELECT order_id, SUM(quantity) AS total_qty
FROM OrderDetails
GROUP BY order_id
HAVING total_qty > 2;

-- Customers who ordered more than 1 item
SELECT c.name, SUM(od.quantity) AS total_qty
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY c.name
HAVING total_qty > 1;

-- Most ordered product
SELECT p.product_name, SUM(od.quantity) AS total_qty
FROM Products p
JOIN OrderDetails od 
ON p.product_id = od.product_id
GROUP BY p.product_name
ORDER BY total_qty DESC
LIMIT 1;

-- Find customer Rahul Sharma from Delhi
SELECT * FROM Customers
WHERE city = 'Delhi' AND name = 'Rahul Sharma';

-- Rename column name as customer_name
SELECT name AS customer_name
FROM Customers;

-- Sort products by price (ascending)
SELECT * FROM Products
ORDER BY price ASC;

-- Products costlier than ANY product with stock < 10
SELECT * FROM Products
WHERE price > ANY (SELECT price FROM Products WHERE stock < 10);

-- Products costlier than ALL products with stock < 10
SELECT * FROM Products
WHERE price > ALL (SELECT price FROM Products WHERE stock < 10);

-- Names starting with S
SELECT * 
FROM Customers
WHERE name LIKE 'S%';

-- Names ending with 'a'
SELECT * 
FROM Customers
WHERE name LIKE '%a';

-- Names containing 'it'
SELECT * 
FROM Customers
WHERE name LIKE '%it%';

-- Products cheaper than 5000
SELECT * 
FROM Products
WHERE price < 5000;

-- Products sorted by price descending
SELECT * 
FROM Products
ORDER BY price DESC;

-- Count total customers
SELECT COUNT(*) AS total_customers
FROM Customers;

-- Average product price
SELECT AVG(price) AS avg_price
FROM Products;

-- Maximum product price
SELECT MAX(price) AS max_price
FROM Products;

-- Minimum product price
SELECT MIN(price) AS min_price
FROM Products;

-- Total stock available
SELECT SUM(stock) AS total_stock
FROM Products;

-- Orders sorted by total quantity (descending)
SELECT order_id, SUM(quantity)
FROM OrderDetails
GROUP BY order_id
ORDER BY SUM(quantity) DESC;

-- Total quantity per product
SELECT product_id, SUM(quantity)
FROM OrderDetails
GROUP BY product_id;

-- Products sorted by total quantity sold
SELECT product_id, SUM(quantity)
FROM OrderDetails
GROUP BY product_id
ORDER BY SUM(quantity) DESC;

-- Number of orders per customer
SELECT customer_id, COUNT(order_id)
FROM Orders
GROUP BY customer_id;

-- Customers sorted by number of orders
SELECT customer_id, COUNT(order_id)
FROM Orders
GROUP BY customer_id
ORDER BY COUNT(order_id) DESC;

-- Average quantity per order
SELECT order_id, AVG(quantity)
FROM OrderDetails
GROUP BY order_id;

-- Maximum quantity in each order
SELECT order_id, MAX(quantity)
FROM OrderDetails
GROUP BY order_id;

-- Minimum quantity in each order
SELECT order_id, MIN(quantity)
FROM OrderDetails
GROUP BY order_id;

-- Average quantity per product
SELECT product_id, AVG(quantity)
FROM OrderDetails
GROUP BY product_id;

-- Maximum quantity per product
SELECT product_id, MAX(quantity)
FROM OrderDetails
GROUP BY product_id;

-- Minimum quantity per product
SELECT product_id, MIN(quantity)
FROM OrderDetails
GROUP BY product_id;

-- Number of customers per city
SELECT city, COUNT(customer_id)
FROM Customers
GROUP BY city;

-- Cities sorted by number of customers
SELECT city, COUNT(customer_id)
FROM Customers
GROUP BY city
ORDER BY COUNT(customer_id) DESC;

-- Cities having more than 2 customers
SELECT city, COUNT(customer_id)
FROM Customers
GROUP BY city
HAVING COUNT(customer_id) > 2;


-- 1 Get customers who placed orders after 2024-01-05
SELECT * FROM Orders WHERE order_date > '2024-01-05';

-- 2 Get customers who placed orders before a specific date
SELECT * FROM Orders WHERE order_date < '2024-01-05';

-- 3 Get customers who placed orders between two dates
SELECT * FROM Orders 
WHERE order_date BETWEEN '2024-01-01' AND '2024-01-10';

-- 4 Get distinct cities
SELECT DISTINCT city FROM Customers;

-- 5 Count number of cities
SELECT COUNT(DISTINCT city) FROM Customers;

-- 6 Get customers sorted by name
SELECT * FROM Customers ORDER BY name;

-- 7 Get orders sorted by latest first
SELECT * FROM Orders ORDER BY order_date DESC;

-- 8 Get products with stock between 5 and 20
SELECT * FROM Products WHERE stock BETWEEN 5 AND 20;

-- 9 Get products with price not between 5000 and 20000
SELECT * FROM Products WHERE price NOT BETWEEN 5000 AND 20000;

-- 10 Get customers whose name length > 5
SELECT * FROM Customers WHERE LENGTH(name) > 5;

-- 11 Get customers whose name contains space
SELECT * FROM Customers WHERE name LIKE '% %';

-- 12 Get customers whose name has exactly 5 characters
SELECT * FROM Customers WHERE LENGTH(name) = 5;

-- 13 Get first 5 customers
SELECT * FROM Customers LIMIT 5;

-- 14 Skip first 5 and get next 5 customers
SELECT * FROM Customers LIMIT 5 OFFSET 5;

-- 15 Get total number of orders
SELECT COUNT(*) FROM Orders;

-- 16 Get total number of products
SELECT COUNT(*) FROM Products;

-- 17 Get total number of order details
SELECT COUNT(*) FROM OrderDetails;

-- 18 Get sum of all product prices
SELECT SUM(price) FROM Products;

-- 19 Get average stock
SELECT AVG(stock) FROM Products;

-- 20 Get highest stock product
SELECT * FROM Products ORDER BY stock DESC LIMIT 1;

-- 21 Get lowest stock product
SELECT * FROM Products ORDER BY stock ASC LIMIT 1;

-- 22 Get customers who have at least one order
SELECT DISTINCT c.* 
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id;

-- 23 Get customers who placed more than 1 order
SELECT customer_id, COUNT(*) 
FROM Orders 
GROUP BY customer_id 
HAVING COUNT(*) > 1;

-- 24 Get orders with more than 1 product
SELECT order_id, COUNT(product_id) 
FROM OrderDetails 
GROUP BY order_id 
HAVING COUNT(product_id) > 1;

-- 25 Get products never ordered
SELECT * FROM Products 
WHERE product_id NOT IN (SELECT product_id FROM OrderDetails);

-- 26 Get customers who ordered Laptop
SELECT DISTINCT c.name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
WHERE od.product_id = 1;

-- 27 Get total revenue generated
SELECT SUM(p.price * od.quantity)
FROM OrderDetails od
JOIN Products p ON od.product_id = p.product_id;

-- 28 Get number of products per order
SELECT order_id, COUNT(*) FROM OrderDetails GROUP BY order_id;

-- 29 Get orders having exactly 2 products
SELECT order_id, COUNT(*) 
FROM OrderDetails 
GROUP BY order_id 
HAVING COUNT(*) = 2;

-- 30 Get customers whose name does not start with A
SELECT * FROM Customers WHERE name NOT LIKE 'A%';

-- 31 Get customers whose name does not contain 'a'
SELECT * FROM Customers WHERE name NOT LIKE '%a%';

-- 32 Get products with even product_id
SELECT * FROM Products WHERE product_id % 2 = 0;

-- 33 Get products with odd product_id
SELECT * FROM Products WHERE product_id % 2 = 1;

-- 34 Get orders placed on even days
SELECT * FROM Orders WHERE DAY(order_date) % 2 = 0;

-- 35 Get orders placed on odd days
SELECT * FROM Orders WHERE DAY(order_date) % 2 = 1;

-- 36 Get top 3 expensive products
SELECT * FROM Products ORDER BY price DESC LIMIT 3;

-- 37 Get top 3 cheapest products
SELECT * FROM Products ORDER BY price ASC LIMIT 3;

-- 38 Get customers sorted by city then name
SELECT * FROM Customers ORDER BY city, name;

-- 39 Get number of orders per date
SELECT order_date, COUNT(*) FROM Orders GROUP BY order_date;

-- 40 Get date having maximum orders
SELECT order_date, COUNT(*) AS total
FROM Orders
GROUP BY order_date
ORDER BY total DESC
LIMIT 1;

-- 41 Get products with stock less than average stock
SELECT * FROM Products 
WHERE stock < (SELECT AVG(stock) FROM Products);

-- 42 Get products with price greater than average price
SELECT * FROM Products 
WHERE price > (SELECT AVG(price) FROM Products);

-- 43 Get customers with longest name
SELECT * FROM Customers 
ORDER BY LENGTH(name) DESC LIMIT 1;

-- 44 Get customers with shortest name
SELECT * FROM Customers 
ORDER BY LENGTH(name) ASC LIMIT 1;

-- 45 Get total quantity sold per date
SELECT o.order_date, SUM(od.quantity)
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY o.order_date;

-- 46 Get product with highest total sales
SELECT product_id, SUM(quantity) 
FROM OrderDetails
GROUP BY product_id
ORDER BY SUM(quantity) DESC
LIMIT 1;

-- 47 Get product with lowest total sales
SELECT product_id, SUM(quantity) 
FROM OrderDetails
GROUP BY product_id
ORDER BY SUM(quantity) ASC
LIMIT 1;

-- 48 Get customers who ordered more than average orders
SELECT customer_id
FROM Orders
GROUP BY customer_id
HAVING COUNT(*) > (SELECT AVG(cnt) FROM (
    SELECT COUNT(*) AS cnt FROM Orders GROUP BY customer_id
) t);

-- 49 Get orders where total quantity is even
SELECT order_id, SUM(quantity)
FROM OrderDetails
GROUP BY order_id
HAVING SUM(quantity) % 2 = 0;

-- 50 Get orders where total quantity is odd
SELECT order_id, SUM(quantity)
FROM OrderDetails
GROUP BY order_id
HAVING SUM(quantity) % 2 = 1;