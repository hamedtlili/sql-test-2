[Telco-Customer-Churnent .md.txt](https://github.com/user-attachments/files/26649071/Telco-Customer-Churnent.md.txt)
#  Telco Customer Churn Analysis

##  Réalisé par
**Tlili Hamed**

---

##  Sujet
Analyse du churn des clients dans une entreprise de télécommunications afin de comprendre pourquoi les clients quittent le service.

---

##  Dataset
Le dataset utilisé est **Telco Customer Churn**.

Il contient :
- Informations personnelles (genre, senior citizen…)
- Services (internet, téléphone…)
- Données financières (`MonthlyCharges`, `TotalCharges`)
- Variable cible : **Churn (Yes / No)**

---

##  Outils utilisés
- SQL Server (SSMS)
- Excel / CSV
- GitHub

---

##  Étapes d’exécution

1. Créer la base de données :
```sql
CREATE DATABASE MonEntreprise;

2.Importer le dataset CSV dans SQL Server

3.Vérifier les données :
SELECT * FROM [dbo].[Telco-Customer-Churn];

4.Lancer les requêtes d’analyse.


 Requêtes SQL principales
 Nombre de clients churn
SELECT Churn, COUNT(*) AS Total
FROM [dbo].[Telco-Customer-Churn]
GROUP BY Churn;

Analyse des charges mensuelles:
SELECT 
    Churn,
    AVG(CAST(MonthlyCharges AS FLOAT)) AS AvgCharge
FROM [dbo].[Telco-Customer-Churn]
GROUP BY Churn;

Analyse par contrat: 
SELECT Contract, Churn, COUNT(*) AS Total
FROM [dbo].[Telco-Customer-Churn]
GROUP BY Contract, Churn;

 Conclusion:
Les clients avec des charges élevées churnent plus
Les contrats mensuels sont plus risqués
Certains services influencent le churn
