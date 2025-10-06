create database smart_manufacturing;
use smart_manufacturing;
SELECT 
    *
FROM
    smart_operation;
-- Total Production Output
SELECT 
    SUM(`Production Output (Units)`) AS total_throughput
FROM
    smart_operation;
-- Average Defect Rate
SELECT 
    AVG(`Defect Rate (%)`) AS avg_defect_rate
FROM
    smart_operation;
-- Energy Consumption per Unit Produced
SELECT 
    ROUND(SUM(`Energy Consumption (kWh)`) / SUM(`Production Output (Units)`),
            2) AS kwh_per_unit
FROM
    smart_operation;
-- Average Percentage of Recycled Material
SELECT 
    AVG(`Recycled Material (%)`) AS avg_recycled_pct
FROM
    smart_operation;

-- Throughput by Material Category
SELECT 
    `Material Category`,
    SUM(`Production Output (Units)`) AS throughput
FROM
    smart_operation
GROUP BY `Material Category`;

-- Defect Rate by Machine
SELECT 
    `Machine ID`, AVG(`Defect Rate (%)`) AS avg_defect_rate
FROM
    smart_operation
GROUP BY `Machine ID`;