use superstore;

SELECT * FROM samplesuperstore;

-- Which Category is Best Selling and Most Profitable?
SELECT Category, 
ROUND(SUM((Sales-Discount)*Quantity),2) sales_by_cat, ROUND(SUM(Profit),2) profit_by_cat
FROM samplesuperstore
GROUP BY 1
ORDER BY 1,2,3;

-- What are the Best Selling and Most Profitable Sub-Category
SELECT Sub_Category, ROUND(SUM((Sales-Discount)*Quantity),2) sales_by_subcat, ROUND(SUM(Profit),2) profit_by_subcat
FROM samplesuperstore
GROUP BY 1
ORDER BY 1,2,3;

-- Which is the Top Selling Sub-Category
SELECT Sub_Category, ROUND(SUM((Sales-Discount)*Quantity),2) Top_Sales
FROM samplesuperstore
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

-- Which Customer Segment is Most Profitable?
SELECT Segment, ROUND(sum(Profit),2) profit
FROM samplesuperstore
GROUP BY 1
ORDER BY 2 DESC;

-- Which is the Preferred Ship Mode?
SELECT Ship_Mode, COUNT(*)
FROM samplesuperstore
GROUP BY 1
ORDER BY 2 DESC; 

-- Which Region is the Most Profitable?
SELECT Region, ROUND(sum(Profit),2) profit
FROM samplesuperstore
GROUP BY 1
ORDER BY 2 DESC;

-- Which City has the Highest Number of Sales?
SELECT distinct City, ROUND(SUM((Sales-Discount)*Quantity),2) Top_Sales
FROM samplesuperstore
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;