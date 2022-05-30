/*DROP DATABASE IF EXISTS e_commerce
CREATE DATABASE e_commerce*/
USE e_commerce

--1. Tính tổng doanh thu và lợi nhuận theo tháng

/*SELECT od.Category,lod.Month_of_Order_Date,SUM(od.Amount) AS Revenue, SUM(od.Profit) AS Profit
INTO Report
FROM [List of Orders - cleaned] AS lod INNER JOIN [Order Details] AS od
ON lod.Order_ID = od.Order_ID
GROUP BY Category,Month_of_Order_Date
ORDER BY Category
SELECT * FROM Report*/

--2. Tháng nào lãi, tháng nào lỗ (Profit > 0 or < 0)
/*ALTER TABLE Report
ADD Benefit varchar(20)*/

/*UPDATE Report
SET Benefit = 'Profitable'
WHERE Profit > 0

UPDATE Report
SET Benefit = 'Loss'
WHERE Profit <= 0

SELECT * FROM Report*/

--3. Tháng nào vượt target

/*ALTER TABLE Report
ADD Target float
ALTER TABLE Report
ADD Target_ID varchar(50)
ALTER TABLE [Sales target]
ADD Target_ID varchar(50)*/

/*UPDATE Report
SET Target_ID = CONCAT(Category,' - ',Month_of_Order_Date)
UPDATE [Sales target]
SET Target_ID = CONCAT(Category,' - ',Month_of_Order_Date)*/

/*SELECT rp.Category, rp.Month_of_Order_Date, rp.Revenue, st.Target
INTO Report2
FROM [Sales target] AS st INNER JOIN Report AS rp
ON st.Target_ID = rp.Target_ID*/

/*ALTER TABLE Report2
ADD Sales_target varchar(20)*/

/*UPDATE Report2
SET Sales_target = 'Achieve'
WHERE Revenue >= Target

UPDATE Report2
SET Sales_target = 'Failed'
WHERE Revenue < Target

SELECT * FROM Report2*/


