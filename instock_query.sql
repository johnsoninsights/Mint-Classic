SELECT sum(quantityInStock), productLine
 FROM mintclassics.products 
group by productLine 
order by sum(quantityInStock) DESC;

/* this is the query run to find much od each product line is currently held in stock /*