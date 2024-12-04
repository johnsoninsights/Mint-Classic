SELECT 
    YEAR(orders.orderDate) AS year, 
    products.productLine, 
    COUNT(*) AS total_orders_made,
    sum(quantityOrdered) as individual_pieces_sold, 
    sum(buyPrice) as revenue
FROM 
    mintclassics.orders
JOIN 
    mintclassics.orderdetails ON orderdetails.orderNumber = orders.orderNumber
JOIN 
    mintclassics.products ON products.productCode = orderdetails.productCode
GROUP BY 
    YEAR(orders.orderDate), 
    products.productLine
ORDER BY 
    year, 
    products.productLine;
/* 
Explanation
SELECT YEAR(orders.orderDate) AS year, products.productLine, COUNT(*) AS total_sold: Selects the year, product line, and counts the total number of sales for each product line per year.

FROM mintclassics.orders: Specifies the primary table.

JOIN mintclassics.orderdetails ON orderdetails.orderNumber = orders.orderNumber: Joins the orderdetails table with the orders table based on the orderNumber.

JOIN mintclassics.products ON products.productCode = orderdetails.productCode: Joins the products table with the orderdetails table based on the productCode.

GROUP BY YEAR(orders.orderDate), products.productLine: Groups the results by year and product line.

ORDER BY year, products.productLine: Orders the results by year and product line for better readability. 
/* 
