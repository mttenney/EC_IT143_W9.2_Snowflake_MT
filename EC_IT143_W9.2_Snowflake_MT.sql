USE SnowflakeClimateRecords
/*****************************************************************************************************************
NAME:    Snowflake, Arizona Climate History
PURPOSE: The purpose of this script is to answer the questions had by some of the key stakeholders from the community 
(three questions I made up, and one from a fellow student).

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/19/2022   MTENNEY       1. Built this script for EC IT440

RUNTIME: 
Xm Xs

NOTES: 
 
******************************************************************************************************************/

--Q1 from Snowflake/Taylor Chamber of Commerce Executive Director Charlotte Hatch: We are considering our next year's
--town activities. Will you provide information showing the correlation between the months of 2015? Show the three
--months with highest total rainfall and the three months with the lowest temperature.
--We are hoping to avoid the most unpleasant times of the year to be outside as a community.

--A1 Below:


--Find the three months with the lowest temperature in each year from 2010 through 2015
	SELECT TOP 3 *
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM AvgMinTemps) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MinTemps FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt
	Where Years = 2010
	Group BY Years, MinTemps, Months
	Order BY Years, MinTemps;


	SELECT TOP 3 *
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM AvgMinTemps) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MinTemps FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt
	Where Years = 2011
	Group BY Years, MinTemps, Months
	Order BY Years, MinTemps;


	SELECT TOP 3 *
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM AvgMinTemps) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MinTemps FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt
	Where Years = 2012
	Group BY Years, MinTemps, Months
	Order BY Years, MinTemps;


	SELECT TOP 3 *
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM AvgMinTemps) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MinTemps FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt
	Where Years = 2013
	Group BY Years, MinTemps, Months
	Order BY Years, MinTemps;


	SELECT TOP 3 *
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM AvgMinTemps) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MinTemps FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt
	Where Years = 2014
	Group BY Years, MinTemps, Months
	Order BY Years, MinTemps;


	SELECT TOP 3 *
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM AvgMinTemps) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MinTemps FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt
	Where Years = 2015

	Group BY Years, MinTemps, Months
	Order BY Years, MinTemps;
	GO


	--Find 3 months with highest rainfall from each year from 2010 through 2015


	SELECT TOP 3 *
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM MaxPrecips) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MaxPrecips FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt
	Where Years = 2010
	Group BY MaxPrecips,Years, Months
	Order BY Years, MaxPrecips DESC;


	SELECT TOP 3 *
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM MaxPrecips) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MaxPrecips FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt
	Where Years = 2011
	Group BY MaxPrecips,Years, Months
	Order BY Years, MaxPrecips DESC;


		SELECT TOP 3 *
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM MaxPrecips) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MaxPrecips FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt
	Where Years = 2012
	Group BY MaxPrecips,Years, Months
	Order BY Years, MaxPrecips DESC;


	SELECT TOP 3 *
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM MaxPrecips) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MaxPrecips FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt
	Where Years = 2013
	Group BY MaxPrecips,Years, Months
	Order BY Years, MaxPrecips DESC;


		SELECT TOP 3 *
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM MaxPrecips) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MaxPrecips FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt
	Where Years = 2014
	Group BY MaxPrecips,Years, Months
	Order BY Years, MaxPrecips DESC;


	SELECT TOP 3 *
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM MaxPrecips) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MaxPrecips FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt
	Where Years = 2015
	Group BY MaxPrecips,Years, Months
	Order BY Years, MaxPrecips DESC;

	
	
--Q2 from fellow student Adam Hodacsek: The question I have for the first data set... During what years were the highest
--recorded and lowest recorded temperatures and precipitation amounts?

--A2 will be slightly less info because I have no minimum precipitation data. So I will have SQL return years with
--the highest maximum average and lowest minimum average temperatures, and the year with maximum precipitation amounts.

--Find Year with Average Max Annual Temp
Select Years, Ann AS [with Maximum and Minimum Average Annual Temperatures between 1897 and 2016]
FROM AvgMaxTemps
WHERE Ann = (Select MAX(Ann) 
			FROM AvgMaxTemps)
UNION --And add data from year with Average Minimum Annual Temp
Select Years, Ann
FROM AvgMinTemps
WHERE Ann = (Select MIN(Ann) 
			FROM AvgMinTemps)
ORDER BY ANN DESC

--Find Year with Max Total Annual Temp
Select Years, Annual AS [with Maximum and Minimum Precipitation between 1897 and 2016]
FROM TotalPrecips
WHERE Annual = (Select MAX(Annual) 
				FROM TotalPrecips)
UNION --And add the year with the min total annual temperature
Select Years, Annual from TotalPrecips
WHERE Annual = (Select MIN(Annual) 
				FROM TotalPrecips)
ORDER BY ANNUAL DESC


--Q3 from the fire chief a the Taylor-Snowflake Fire & Medical Department: Will you please provide us with the following
--information? In preparing for the wildfire-fighting season, we want to know which months of each year between 2012 
--and 2015 had the average highest temperatures and lowest total precipitation, and what those numbers were.  


--Fetch the months of 2012-2015 with the highest average temperature
SELECT TOP 1 Max(MaxTemps) AS [Temperature in Degrees Fahrenheit], Years AS Year, Months AS [Month with Year's Highest Average Temperature]
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM AvgMaxTemps) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MaxTemps FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt

	Where YEARS = 2012
	GROUP BY years, MaxTemps, Months
	Order BY   Max(MaxTemps) DESC,  Years, Months ;


SELECT  TOP 1 Max(MaxTemps) AS [Temperature in Degrees Fahrenheit], Years AS Year, Months AS [Month with Year's Highest Average Temperature]
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM AvgMaxTemps) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MaxTemps FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt

	Where YEARS = 2013
	Group BY Years, MaxTemps, Months
	Order BY Max(MaxTemps) DESC, Years, Months ;


SELECT  TOP 1 Max(MaxTemps) AS [Temperature in Degrees Fahrenheit], Years AS Year, Months AS [Month with Year's Highest Average Temperature]
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM AvgMaxTemps) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MaxTemps FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt

	Where YEARS = 2014
	Group BY Years, MaxTemps, Months
	Order BY Max(MaxTemps) DESC, Years, Months ;
	

		SELECT  TOP 1 Max(MaxTemps) AS [Temperature in Degrees Fahrenheit], Years AS Year, Months AS [Month with Year's Highest Average Temperature]
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM AvgMaxTemps) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MaxTemps FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt

	Where YEARS = 2015
	Group BY Years, MaxTemps, Months
	Order BY Max(MaxTemps) DESC, Years, Months ;



--Fetch the months of 2012-2015 with the lowest precipitation

	SELECT  TOP 1 Min(MinPrecips) AS [Amount of Precipitation in Inches], Years AS Year, Months AS [Month with Year's Lowest Total Precipitation]
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM TotalPrecips) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MinPrecips FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt

	Where YEARS = 2012
	Group BY Years, MinPrecips, Months
	Order BY Max(MinPrecips) ASC,  Years, Months ;


SELECT  TOP 1 Min(MinPrecips) AS [Amount of Precipitation in Inches], Years AS Year, Months AS [Month with Year's Lowest Total Precipitation]
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM TotalPrecips) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MinPrecips FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt

	Where YEARS = 2013
	Group BY Years, MinPrecips, Months
	Order BY Max(MinPrecips) ASC,  Years, Months ;


SELECT  TOP 1 Min(MinPrecips) AS [Amount of Precipitation in Inches], Years AS Year, Months AS [Month with Year's Lowest Total Precipitation]
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM TotalPrecips) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MinPrecips FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt

	Where YEARS = 2014
	Group BY Years, MinPrecips, Months
	Order BY Min(MinPrecips) ASC,  Years, Months 





SELECT  TOP 1 Min(MinPrecips) AS [Amount of Precipitation in Inches], Years AS Year, Months AS [Month with Year's Lowest Total Precipitation]
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM TotalPrecips) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MinPrecips FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt

	Where YEARS = 2015
	Group BY Years, MinPrecips, Months
	Order BY Min(MinPrecips) ASC,  Years, Months ;

--	Select * from TotalPrecips

--Q4 from Terry Cooper, the Public Works Superintendent: During our next monthly project planning meeting, will you
--give us historical data that tells us the average maximum temperatures, the average minimum temperatures, and total
--precipitation for each month of 2015, so that we can organize our projects and get weather-sensitive activities done
--during better weather. Please abbreviate the months with their max and min avg temperatures and total precipitation.


WITH unpAMT (Year, Month, [Avg Max Temp (in Fahrenheit)])
AS (
SELECT Years AS Year, Months AS Month, AvgMaxTemps AS [Avg Max Temp (in Fahrenheit)]
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM AvgMaxTemps) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(AvgMaxTemps FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
		) AS unpvt
	Where Years = 2015
	--Order By AvgMaxTemps Desc

	),
	
unpAminT (Year, Month, [Avg Min Temp (in Fahrenheit)])
AS (
	SELECT Years AS Year, Months AS Month, AvgMinTemps AS [Avg Min Temp (in Fahrenheit)]
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM AvgMinTemps) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(AvgMinTemps FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
		) AS unpvt
	Where Years = 2015
--	ORDER BY AvgMinTemps Asc
	),
	
unpTP (Year, Month, [Amount of Precipitation in Inches])
AS (
	SELECT Years AS Year, Months AS Month, Precips AS [Amount of Precipitation in Inches]
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM TotalPrecips) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(Precips FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
		) AS unpvt
	Where Years = 2015
	--Order BY Precips Desc
	)

SELECT COALESCE(unpTP.Year, unpAMT.Year, unpAminT.Year) AS Year, COALESCE(unpTP.Month, unpAMT.Month, unpAminT.Month) AS Month, [Avg Min Temp (in Fahrenheit)], [Avg Max Temp (in Fahrenheit)], [Amount of Precipitation in Inches]
FROM unpAMinT

INNER JOIN unpAMT ON unpAminT.Year = unpAMT.Year AND unpAminT.Month = unpAMT.Month
INNER JOIN unpTP ON unpAminT.Year = unpTP.Year AND unpAminT.Month = unpTP.Month
	Where unpAMT.Year = 2015
	--Group BY [Monthly Average Temperatures]--MinTemps, year, months
	Order BY [Avg Min Temp (in Fahrenheit)]

	

	

	/*Select * from AvgMinTemps

	Select * from AvgMaxTemps
	
	Select * from TotalPrecips*/

	/*SELECT  TOP 1 Min(MinPrecips) AS [Amount of Precipitation in Inches], Years AS Year, Months AS [Month with Year's Lowest Total Precipitation]
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM TotalPrecips) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MinPrecips FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt

	Where YEARS = 2014
	Group BY Years, MinPrecips, Months
	Order BY Min(MinPrecips) ASC,  Years, Months ;

	

SELECT  TOP 1 Min(MinPrecips) AS [Amount of Precipitation in Inches], Years AS Year, Months AS [Month with Year's Lowest Total Precipitation]
	FROM 
		(SELECT Years, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec 
		FROM TotalPrecips) p
--unpivot the table in order to rearrange columns into rows so the correct information can be extracted
	UNPIVOT
		(MinPrecips FOR Months IN
			(Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec) 
	) AS unpvt

	Where YEARS = 2015
	Group BY Years, MinPrecips, Months
	Order BY Min(MinPrecips) ASC,  Years, Months ;*/
