# MINT CLASSIC CARS ANALYSIS 

![unnamed.png](https://github.com/johnsoninsights/Mint-Classic/blob/main/unnamed.png)

## Project Purpose
This project showcases working with relational databases, data manipulation, and data cleaning using SQL. Additionally I will be using various functions in Excel to visualize and aggregate data using pivot tables. For this project, I will be using a common analysis process used in the data community to help MINT CLASSICS (a model car company) draw insights from thier data and make data-driven decisions.

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
I will be using MySQL Workbench to familiarize myself with the general business and examining the current data. I was provided with a data model and sample data tables to review. I will be isolating and identifying the parts of the data that could be useful in deciding how to reduce inventory. I will be writing queries to answer questions like these:
1. Where are items stored and if they were rearranged, could a warehouse be eliminated?
2. How are inventory numbers related to sales figures? Do the inventory counts seem appropriate for each item?
3. Are we storing items that are not moving? Are any items candidates for being dropped from the product line?

## Project Objectives
1. Explore products currently in inventory.
2. Determine important factors that may influence inventory reorganization/reduction.
3. Provide analytic insights and data-driven recommendations.

## PREPARE
I have been given access to Mint Classics relational database and relational data model.
Link tables:

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
- Shows me the max stock every warehouse can hold using the formula F=P/C or full capacity = products currently in warehouse / current capacity.
- Performs the sum function to add up the current stock of the warehouse.
- Subtracts the full capacity of the warehouse from the current capacity to show me how much space is left.
- JOINS the warehouse and products table to get the data needed.
- GROUPS the data by warehouse.
- ORDERS the data by remaining capacity or how much space is left with the warehouse with the most available space at the top.
  
![total of product lines sold by year.sql](https://github.com/johnsoninsights/Mint-Classic/blob/main/total%20of%20product%20lines%20sold%20by%20year.sql) 



  
