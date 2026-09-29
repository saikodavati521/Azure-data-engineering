Azure Data Engineering Pipeline: GitHub to Power BI

 📌 Project Overview

This project demonstrates an **end-to-end Azure Data Engineering pipeline** that ingests data from a GitHub repository, stores raw data in Azure Data Lake Storage Gen2, transforms the data using Azure Databricks, and makes the processed data available for analytics through Azure Synapse Analytics and Power BI.

The pipeline is orchestrated using **Azure Data Factory**, with **Azure Key Vault** for secure credential management, **Logic Apps** for pipeline notifications, **Azure Monitor** for monitoring, and **Self-Hosted Integration Runtime (SHIR)** for connectivity to external/private environments.

Architecture:


🔄 Data Pipeline Flow

1. Data Source – GitHub

Data is maintained in a **GitHub repository** and acts as the primary source for the pipeline.

2. Data Ingestion – Azure Data Factory

Azure Data Factory (ADF) connects to the source and manages the ingestion process. ADF pipelines are used to control the movement and execution of data-processing activities.

3. Raw Data – ADLS Gen2

The ingested data is stored in **Azure Data Lake Storage Gen2** as raw data. This layer preserves the source data before transformation.

4. Data Transformation – Azure Databricks

Azure Databricks** reads the raw data and performs the required data engineering operations such as cleansing, transformation, validation, and processing.

5. Curated Data – ADLS Gen2

After transformation, the processed data is written back to **ADLS Gen2** as curated/processed data, making it ready for downstream analytics.

6. Analytics Layer – Azure Synapse Analytics

The curated data is made available through **Azure Synapse Analytics**, which acts as the analytical/data warehouse layer for reporting and business intelligence.

7. Visualization – Power BI

Power BI connects to the analytical layer and is used to build dashboards, reports, and visualizations from the transformed data.



🔐 Security & Monitoring

Security and operational monitoring are incorporated into the architecture:

* Azure Key Vault is used to securely manage credentials and secrets.
* Databricks Secret Scope provides secure access to required secrets within Databricks.
* Azure Monitor is used to monitor pipeline execution and data pipeline health.
* Logic Apps sends email notifications when pipeline execution succeeds or fails.
* Self-Hosted Integration Runtime (SHIR) supports connectivity to required external or private environments.

---

 🛠️ Technologies Used

* GitHub
* Azure Data Factory
* Azure Data Lake Storage Gen2
* Azure Databricks
* Azure Synapse Analytics
* Power BI
* Azure Key Vault
* Azure Logic Apps
* Azure Monitor
* Self-Hosted Integration Runtime (SHIR)



🎯 Project Objectives

* Build an end-to-end cloud data engineering pipeline.
* Automate data ingestion and orchestration using Azure Data Factory.
* Implement raw and curated data layers using ADLS Gen2.
* Transform and process data using Azure Databricks.
* Prepare data for analytical workloads using Azure Synapse Analytics.
* Connect the processed data to Power BI for reporting and visualization.
* Implement secure secret management and pipeline monitoring.
* Configure automated pipeline success/failure notifications.




 🚀 End-to-End Workflow


GitHub
   ↓
Azure Data Factory
   ↓
ADLS Gen2 – Raw Data
   ↓
Azure Databricks
   ↓
ADLS Gen2 – Curated Data
   ↓
Azure Synapse Analytics
   ↓
Power BI



📊 Outcome

The project provides a complete cloud-based data engineering workflow, taking data from a GitHub source through ingestion, storage, transformation, and analytical processing before delivering the final data to Power BI for visualization.

This architecture demonstrates practical implementation of **Azure data engineering, ETL/ELT, data lake architecture, data transformation, security, orchestration, monitoring, and business intelligence**.
