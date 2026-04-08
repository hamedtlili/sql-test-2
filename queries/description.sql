-- Base de départ
USE[MonEntreprise]
GO
SELECT*
FROM [MonEntreprise].[dbo].[Telco-Customer-Churn];
SELECT[gender]
FROM [MonEntreprise].[dbo].[Telco-Customer-Churn];


-- afficher les 10 premières lignes
SELECT TOP 10 *
FROM [dbo].[Telco-Customer-Churn];

-- nombre total de clients
SELECT COUNT(*) AS total_clients
FROM [dbo].[Telco-Customer-Churn];

-- colonnes du dataset
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Telco-Customer-Churn';

-- valeurs gender
SELECT gender, COUNT(*) 
FROM [dbo].[Telco-Customer-Churn]
GROUP BY gender;

-- valeurs churn
SELECT Churn, COUNT(*)
FROM [dbo].[Telco-Customer-Churn]
GROUP BY Churn;
