# MINT CLASSIC CARS ANALYSIS 

![unnamed.png](https://github.com/johnsoninsights/Mint-Classic/blob/main/unnamed.png)

## Project Purpose
This project showcases working with **relational databases**, **data manipulation**, and **data cleaning using SQL**. Additionally I will be using various functions in **Excel** to visualize and aggregate data using pivot tables. For this project, I will be using the following analysis process to help MINT CLASSICS (a model car company) draw insights from thier data and make data-driven decisions.

- ASK
- PREPARE
- PROCESS
- ANALYZE
- SHARE
- ACT

## The Client
Mint Classics Company, a retailer of classic model cars and other vehicles, is looking at closing one of their storage facilities. To support a data-based business decision, they are looking for suggestions and recommendations for reorganizing or reducing inventory, while still maintaining timely service to their customers.

## Company Products Overview
Mint Classics offers the following product lines of model cars:
- Classic Cars
- Vintage Cars
- Motorcycles
- Planes
- Trucks and Buses
- Ships
- Trains

## ASK
I will be using MySQL Workbench to familiarize myself with the general business and examining the current data. I was provided with a data model and sample data tables to review. I will be isolating and identifying the parts of the data that could be useful in deciding how to reduce inventory. **I will be writing queries to answer questions like these:**
1. Where are items stored and if they were rearranged, **could a warehouse be eliminated?**
2. How are inventory numbers related to sales figures? Do the inventory counts seem appropriate for each item?
3. Are we storing items that are not moving? **Are any items candidates for being dropped from the product line?**

## Project Objectives
1. Explore products currently in inventory.
2. Determine important factors that may influence inventory reorganization/reduction.
3. Provide analytic insights and data-driven recommendations.

## PREPARE
I have been given access to Mint Classics relational database and relational data model.
Link tables: 
- [mintclassic_customers.csv](https://github.com/johnsoninsights/Mint-Classic/blob/main/mintclassic_customers.csv)
- [mintclassic_employees.csv](https://github.com/johnsoninsights/Mint-Classic/blob/main/mintclassic_employees.csv)
- [mintclassic_offices.csv](https://github.com/johnsoninsights/Mint-Classic/blob/main/mintclassic_offices.csv)
- [mintclassic_orderdetails.csv](https://github.com/johnsoninsights/Mint-Classic/blob/main/mintclassic_orderdetails.csv)
- [mintclassic_orders.csv](https://github.com/johnsoninsights/Mint-Classic/blob/main/mintclassic_orders.csv)
- [mintclassic_payments.csv](https://github.com/johnsoninsights/Mint-Classic/blob/main/mintclassic_payments.csv)
- [mintclassic_productlines.csv](https://github.com/johnsoninsights/Mint-Classic/blob/main/mintclassic_productlines.csv)
- [mintclassic_products.csv](https://github.com/johnsoninsights/Mint-Classic/blob/main/mintclassic_products.csv)
- [mintclassic_warehouses.csv](https://github.com/johnsoninsights/Mint-Classic/blob/main/mintclassic_warehouses.csv)

            
After examining the data, I decided that the following tables will be of the most use to me to answer the questions at hand:
- orderdetails
- orders
- productlines
- products
- warehouses

## PROCESS
To address the question regarding warehouse storage, I needed the answer to 4 things from the data:
1. What is the max stock each warehouse can carry? 'the capacity'
2. What is the current stock each warehouse is at? 'current stock on hand'
3. What is the remaining capacity of each warehouse? 'space available for more storage'

In answering these questions, I'm hoping to find a warehouse that is being underutilized and if the stock of another would be able to be consolidated into one with the space available.

To do this, I will need to perform multiple SQL functions to gather the appropriate data needed and in the format I want.

To find this data, I ran the following query that accomplishes the following:
- Shows me the max stock every warehouse can hold using the formula **F=P/C or full capacity = products currently in warehouse / current capacity.**
- Performs the **sum function** to add up the current stock of the warehouse.
- Subtracts the full capacity of the warehouse from the current capacity to show me how much space is left.
- **JOINS** the warehouse and products table to get the data needed.
- **GROUPS** the data by warehouse.
- **ORDERS** the data by remaining capacity or how much space is left with the warehouse with the most available space at the top.
  
![warehouse_min_max.sql](https://github.com/johnsoninsights/Mint-Classic/blob/main/warehouse_min_max.sql)  **<--SQL CODE**

![warehouese_query_results](https://github.com/johnsoninsights/Mint-Classic/blob/main/wharehouse_query_results.png) 

To next addres the questions reagrding stock and product lines. I will be running a query to give me a breakdown by year of the prodcut lines. I want to seew how many orders were made for each product line each year , how many pieces those orders equate to (individual pieces sold), and the big question HOW MUCH REVENUE DID EACH PRODCUT LINE BRING IN?
below is the QUERY i ran. 

![productline_revenue.sql](https://github.com/johnsoninsights/Mint-Classic/blob/main/productline_revenue.sql) **<--SQL CODE**

![productline_revenue.png](https://github.com/johnsoninsights/Mint-Classic/blob/main/productline_revenue.png) 

I also felt it would be helpful to have a quick summary of **how much of each prodcut line is currently in stock** and **how much of that product line has beeen ordered.** I ran the follwoing querys to pull that information from the dataset. 

![instock_querey.sql](https://github.com/johnsoninsights/Mint-Classic/blob/main/instock_query.sql) **<-- SQL CODE**

![quantityordered_querey.sql](https://github.com/johnsoninsights/Mint-Classic/blob/main/quatityordered_query.sql) **<-- SQL CODE**

![quickquery_results.png](https://github.com/johnsoninsights/Mint-Classic/blob/main/quickquery_results.png) 

![quickquery_reulsts2.png](https://github.com/johnsoninsights/Mint-Classic/blob/main/quickquery_results2.png)

## ANALYZE
After gathering all the data needed to answer the questions asked of me, I made the following observations that will be crucial in my analysis:

1. **Warehouse C and B are the largest warehouses available** to the company and are also the most underutilized, standing at 50% and 67% full.
2. If current stock is properly organized, **the 'current stock' of both warehouse A and D could be consolidated into the 'remaining capacity' of C and B**, closing not only one warehouse but two.
3. The **'Trains' product line has underperformed** for the duration of the sample dataset given to me and would be a good candidate for a possible cancellation of this line.
4. The **'Classic Cars' and 'Vintage Cars' lines have been the most profitable**, so continuing to cater to these customers and market these models would be wise.

## SHARE
To share my findings with my stakeholders, I created a few visualizations to illustrate the main points of my analysis.  
The following chart clearly shows that the current products of Warehouse A&D can be consilidated into The availble space of Warehouses C&B

![warehouse_consolidation.png](https://github.com/johnsoninsights/Mint-Classic/blob/main/warehouse_consolidation.png)

Next i created a chart to show how the 'Trains' product line has underperformed over the course of the data given to me, and how well the 'classic cars' line had performed. The conclusioins can clearly be made based off of the bar chart and acompaning piviot table. 

![productline_barchart](https://github.com/johnsoninsights/Mint-Classic/blob/main/productline_barchart.png) 

## ACT
Based on the analysis I performed, I would make the following data-driven recommendations to optimize the company's allocation of resources:

1. **Close Warehouse D**: It currently houses the three most unpopular product lines, and its contents can be moved to a more underutilized warehouse like Warehouse C, which is currently only 50% full.
2. **Shut down the 'Trains' product line**: It has underperformed for the entire duration of the dataset and is not worth the cost to continue to store and ship the product.
3. **Promote and market the 'Classic Car' product line**: This line accounts for more than 67% of the revenue for the company over the past three years.

If you have made it this far in my analysis thank you so much for taking a look at my work. It means alot! Please reach out if you havae thoughts or recommendations. Im always open for feedback from more experienced analyst. Thanks again for your time.

  
