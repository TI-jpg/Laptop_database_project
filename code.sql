SELECT *
FROM laptopdata;

SELECT distinct TypeName
FROM laptopdata;

Delete
FROM laptopdata
WHERE TypeName IS NULL
OR TypeName='';


ALTER TABLE laptopdata
ADD COLUMN Price$ FLOAT;

UPDATE laptopdata
SET Price$ = CAST(Price AS FLOAT);

ALTER TABLE laptopdata
DROP COLUMN Price;
ALTER TABLE laptopdata
DROP COLUMN Price_float;

SELECT TypeName, ROUND(avg(Price$),2) as Price
FROM laptopdata
group by TypeName;

SELECT Company, ROUND(avg(Price$),2) as Price
FROM laptopdata
group by Company;

SELECT DISTINCT Round(avg(Price$),2) as Price, Case
WHEN Gpu lIKE '%Nvidia%' Then 'dedicated'
Else 'integrated'
END as GPU_type
FROM laptopdata
group by GPU_type;

SELECT Ram, ROUND(avg(Price$),2) as Price
FROM laptopdata
group by Ram
Order by cast(REPLACE(Ram, 'GB', '') AS UNSIGNED);

SELECT Cpu,Gpu, Ram, Case
When Price$ <25000 Then '>25k'
When Price$ <50000 Then '25k-50k'
When Price$ <75000 Then '50k-75K'
When Price$ <100000 Then '75k-100K'
Else '100k+'
End as Price_range
FROM laptopdata;

WIth Avg_Company_Price as (SELECT Company, ROUND(avg(Price$),2) as Price
FROM laptopdata
group by Company)

SELECT Company, Case 
WHEN Price <75000 Then 'low-budjet'
WHEN Price <100000 Then 'mid-budjet'
Else 'Premium'
End as Price_segment
FROM Avg_Company_Price;

SELECT ScreenResolution, Round(avg(Cast(replace(weight,'kg','') as Float)),2) as weight
FROM laptopdata
Group by ScreenResolution;


SELECT  Round(avg(Cast(replace(weight,'kg','') as Float)),2) as Weight, Case
WHEN Gpu lIKE '%Nvidia%' Then 'dedicated'
Else 'integrated'
END as GPU_type
FROM laptopdata
group by GPU_type;

SELECT Company, Round((max(Price$)-min(Price$)) ,2) as Price_distribution
From laptopdata
group by Company
Order by Price_distribution desc;

SELECT Company, count(
Case When TypeName='Gaming' Then 1
When TypeName='Ultrabook' Then 1
END) as Count
From laptopdata
group by Company
Order by Count desc;






