-- Base de départ
USE[MonEntreprise]
GO
SELECT*
FROM [MonEntreprise].[dbo].[Telco-Customer-Churn];
SELECT[gender]
FROM [MonEntreprise].[dbo].[Telco-Customer-Churn];






-- Understand who your customers are 

USE [MonEntreprise]
GO

SELECT 
    Churn,
    AVG(CAST(MonthlyCharges AS FLOAT)) AS AvgCharge,
    MIN(CAST(MonthlyCharges AS FLOAT)) AS MinCharge,
    MAX(CAST(MonthlyCharges AS FLOAT)) AS MaxCharge
FROM [dbo].[Telco-Customer-Churn]
GROUP BY Churn;


-- With churn insight

USE [MonEntreprise]
GO

SELECT 
    gender,
    Churn,
    COUNT(*) AS Total
FROM [MonEntreprise].[dbo].[Telco-Customer-Churn]
GROUP BY gender, Churn;

-- 2. Account Information Analysis
-- Identify risky customer profiles
USE [MonEntreprise]
GO

SELECT 
    CASE 
        WHEN tenure < 12 THEN 'New'
        WHEN tenure < 24 THEN 'Mid-term'
        ELSE 'Loyal'
    END AS CustomerType,
    Churn,
    COUNT(*) AS Total
FROM [MonEntreprise].[dbo].[Telco-Customer-Churn]
GROUP BY 
    CASE 
        WHEN tenure < 12 THEN 'New'
        WHEN tenure < 24 THEN 'Mid-term'
        ELSE 'Loyal'
    END,
    Churn;


-- Contract type impact

USE [MonEntreprise]
GO

SELECT 
    Contract,
    Churn,
    COUNT(*) AS Total
FROM [MonEntreprise].[dbo].[Telco-Customer-Churn]
GROUP BY Contract, Churn
ORDER BY Contract;



-- Payment method impact

USE [MonEntreprise]
GO

SELECT 
    PaymentMethod,
    Churn,
    COUNT(*) AS Total
FROM [MonEntreprise].[dbo].[Telco-Customer-Churn]
GROUP BY PaymentMethod, Churn;


-- Charges analysis

USE [MonEntreprise]
GO

SELECT
    Churn,
    AVG(CAST(MonthlyCharges AS FLOAT)) AS AvgMonthly,
    AVG(CAST(TotalCharges AS FLOAT)) AS AvgTotal
FROM [dbo].[Telco-Customer-Churn]
WHERE 
    TRY_CAST(TotalCharges AS FLOAT) IS NOT NULL
    AND TRY_CAST(MonthlyCharges AS FLOAT) IS NOT NULL
GROUP BY Churn;


-- 3. Services Analysis
-- Internet service
USE [MonEntreprise]
GO

SELECT 
    InternetService,
    Churn,
    COUNT(*) AS Total
FROM [MonEntreprise].[dbo].[Telco-Customer-Churn]
GROUP BY InternetService, Churn;

-- Add-on services

USE [MonEntreprise]
GO

SELECT 
    OnlineSecurity,
    TechSupport,
    Churn,
    COUNT(*) AS Total
FROM [MonEntreprise].[dbo].[Telco-Customer-Churn]
GROUP BY OnlineSecurity, TechSupport, Churn; 


-- Phone service
USE [MonEntreprise]
GO

SELECT 
    PhoneService,
    MultipleLines,
    Churn,
    COUNT(*) AS Total
FROM [MonEntreprise].[dbo].[Telco-Customer-Churn]
GROUP BY PhoneService, MultipleLines, Churn;