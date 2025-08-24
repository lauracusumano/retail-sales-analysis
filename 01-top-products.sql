SELECT 
    Region,
	ROUND(SUM(Sales), 2) as Total_Sales,
	ROUND (SUM(Profit), 2) as Total_Profit, 
	ROUND ((SUM(Profit) / SUM(Sales)) * 100, 2) as Profit_Margin_Percent
FROM "superstore csv"
GROUP BY Region
ORDER BY Total_Sales DESC;