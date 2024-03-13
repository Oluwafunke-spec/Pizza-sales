USE Customer
GO

SELECT * FROM pizza_sales;

-- 1. TOTAL PIZZAS SOLD BY CATEGORY 

SELECT 
		pizza_category, 
	COUNT(*) AS	Total_pizzas_sold
FROM 
		pizza_sales
GROUP BY 
		pizza_category;

-- 2. TOP 3 INGREDIENTS ORDERED 

SELECT 
	TOP 3 pizza_ingredients, 
	SUM(quantity) AS Total_ordered
FROM		
		pizza_sales
GROUP BY	
		pizza_ingredients
ORDER BY	
		total_ordered DESC;


-- 3. AVERAGE UNIT PRICE BY SIZE */

SELECT 
		pizza_size, 
	AVG(unit_price) AS Average_Unit_Price
FROM		
		pizza_sales
GROUP BY	
		pizza_size;


-- 4. TOTAL REVENUE BY DATE */

SELECT 
		order_date, 
	SUM(total_price) AS	Total_Revenue
FROM		
		pizza_sales
GROUP BY	
		order_date;


/* 5. MULTIPLE ORDERS OF THE SAME PIZZA */
SELECT 
		pizza_name, 
	COUNT(*) AS	Order_Count
FROM 
		pizza_sales
GROUP BY 
		pizza_name
HAVING 
	COUNT(*)> 1;

/* 6. DAY OF THE WEEK REVENUE */
SELECT 
	DATENAME(DW, order_date) AS Weekday, 
	SUM(total_price) AS Total_Revenue
FROM 
		pizza_sales
GROUP BY 
		order_date;

/* 7. CONCATENATING PIZZA NAME AND SIZE */

SELECT 
	CONCAT(pizza_name, ' - ', pizza_size) AS pizza_description
FROM 
		pizza_sales;




