
# OCD Data Analysis and PowerBI Dashboard

## Project Overview

This project analyzes patient demographics and health records related to Obsessive-Compulsive Disorder (OCD) using the [Kaggle dataset](https://www.kaggle.com/datasets/ohinhaque/ocd-patient-dataset-demographics-and-clinical-data/). The goal is to identify patterns and trends in OCD patients and display insights via an interactive dashboard created with PowerBI. The project utilizes MySQL for data extraction and PowerBI for visual representation.

### Key Features
- **Patient Data Analysis**: Investigated the dataset to identify trends in OCD patient demographics, obsession scores, and other health statistics.
- **SQL Queries**: Utilized MySQL queries to process and analyze the data, using built-in functions like `CASE`, `AVG`, and `COUNT` to calculate gender distributions, average obsession scores, and other metrics.
- **PowerBI Dashboard**: Designed an interactive dashboard with various visualizations, such as donut charts, stacked column charts, and clustered bar/column charts, to present the insights effectively.

## Kaggle Dataset

The dataset used in this project can be found on Kaggle:
- [OCD Patient Dataset - Demographics and Clinical Data](https://www.kaggle.com/datasets/ohinhaque/ocd-patient-dataset-demographics-and-clinical-data/)

### Data Dictionary

The dataset includes some the following columns, which provide demographic and clinical details about the patients:

1. **Patient ID**: Unique identifier for each patient.
2. **Gender**: Gender of the patient (Male/Female).
3. **Age**: Age of the patient.
4. **Ethnicity**: Ethnic background of the patient.
5. **Y-BOCS Score (Obsessions)**: A clinical score indicating the severity of obsessive thoughts.
6. **Y-BOCS Score (Compulsions)**: A clinical score indicating the severity of compulsive behaviors.
7. **Treatment Type**: Type of treatment the patient has received (e.g., medication, therapy).
8. **Diagnosis Date**: The date the patient was diagnosed with OCD.

These columns are used for demographic analysis and clinical insights into OCD patient patterns.

## Project Files

1. **OCDQuery.sql**:  
   This file contains the MySQL queries used for data extraction and analysis. Key operations include:
   - Calculating patient demographics by gender and ethnicity.
   - Computing the average obsession scores for different patient groups.
   - Aggregating data and calculating percentages based on gender distributions.

2. **PowerBi Health Analytics Dashboard.pdf**:  
   This Jupyter notebook provides additional analysis that complements the primary analysis. It includes exploratory data analysis, visualizations, and other insights relevant to the project’s goals.

3. **Other Excel/CSV files **
   These excel files contain data that as generated from the SQL queries.

## Requirements
- **MySQL**: For executing SQL queries and data analysis.
- **PowerBI**: For designing and implementing the interactive dashboar


## Conclusion

This project provides valuable insights into OCD patient demographics and obsession scores, helping to identify patterns in the data. The interactive dashboard created with PowerBI enables users to easily visualize and interpret the findings.

