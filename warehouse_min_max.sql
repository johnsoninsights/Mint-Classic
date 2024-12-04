SELECT warehouses.warehouseCode, floor(sum(quantityInStock)/warehousePctCap *100) as 'max_stock', sum(quantityInStock) as 'current_Stock', warehousePctCap, floor(sum(quantityInStock)/warehousePctCap *100) - sum(quantityInStock) as remainingCap
FROM mintclassics.products 
join mintclassics.warehouses on warehouses.warehouseCode = products.warehouseCode
group by warehouseCode 
order by remainingCap desc ;

/* this query run show the max stock a warehouse could hold , the current amount held , the current capacity of the ware house , and how much space is currently left in that warehouse /*