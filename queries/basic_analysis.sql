-- Base de départ
USE[MonEntreprise]
GO
SELECT*
FROM [MonEntreprise].[dbo].[Telco-Customer-Churn];
SELECT[gender]
FROM [MonEntreprise].[dbo].[Telco-Customer-Churn];

USE [MonEntreprise]
GO

-- afficher les 10 premières lignes
SELECT TOP 10 *
FROM [dbo].[Telco-Customer-Churn];

-- nombre total de clients
SELECT COUNT(*) AS TotalClients
FROM [dbo].[Telco-Customer-Churn];

-- clients churn / non churn
SELECT Churn, COUNT(*) AS Total
FROM [dbo].[Telco-Customer-Churn]
GROUP BY Churn;

-- clients par genre
SELECT gender, COUNT(*) AS Total
FROM [dbo].[Telco-Customer-Churn]
GROUP BY gender;

-- clients par type de contrat
SELECT Contract, COUNT(*) AS Total
FROM [dbo].[Telco-Customer-Churn]
GROUP BY Contract;

-- clients avec Fiber optic
SELECT *
FROM [dbo].[Telco-Customer-Churn]
WHERE InternetService = 'Fiber optic';

-- clients qui ont churn
SELECT *
FROM [dbo].[Telco-Customer-Churn]
WHERE Churn = 'Yes';

-- tri par charges mensuelles
SELECT customerID, MonthlyCharges
FROM [dbo].[Telco-Customer-Churn]
ORDER BY CAST(MonthlyCharges AS FLOAT) DESC;

-- moyenne charges mensuelles
SELECT AVG(CAST(MonthlyCharges AS FLOAT)) AS AvgMonthly
FROM [dbo].[Telco-Customer-Churn];

-- clients seniors
SELECT SeniorCitizen, COUNT(*) AS Total
FROM [dbo].[Telco-Customer-Churn]
GROUP BY SeniorCitizen;
