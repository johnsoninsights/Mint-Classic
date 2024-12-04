SELECT sum(quantityOrdered) , productLine
FROM mintclassics.orderdetails 
join mintclassics.products on products.productCode = orderdetails.productCode 
group by productLine 
order by sum(quantityOrdered) DESC;

/* This is the query run to find the amount of orders made per procuct line /* 
